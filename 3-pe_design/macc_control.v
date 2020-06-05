// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : macc_control.v
// Author        : 
// Created On    : 2020-04-13 12:03
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------



`timescale 1ns/1ps


module macc_control
#(
  parameter DATA_WIDTH     = 16,
  parameter IFPAD_WIDTH    = 4,
  parameter WPAD_WIDTH     = 8,
  parameter OFPAD_WIDTH    = 4,
  parameter OUT_DATA_WIDTH = 36, // 2*data_width + ifpad_width
  parameter MAX_CLIP_WIDTH = 5,
  parameter MAX_SHIFT_WIDTH = 4
  
)
(
  input                            clk,
  input                            rst_n,

  // Control Paramerters
  input      [IFPAD_WIDTH-1:0]     Para_1Dconv_len,   // 1-D conv length 
  input      [OFPAD_WIDTH-1:0]     Para_filter_num,   // conv filter number
  input      [MAX_CLIP_WIDTH-1:0]  Para_clip_num_max, //the max number of clip (0~19)
  input      [MAX_SHIFT_WIDTH-1:0] Para_shift_num_max,//the max number of shift (0~9)

  // FSM behavior control signals
  input                            mode,              // 1: clip and shift conv mode; 0: normal 1-D conv
  input                            mac_begin,         // mac and add begin signal 
  input                            acc_begin,         // accumulate external psum begin signal 
  input                            interrupt,         // mul interrupt signal
  input                            restore,           // restore signal (at least 2 circle after interrupt)
  input                            both_pads_ready,
  // Date input signals
  input      [DATA_WIDTH-1:0]      external_psum,     // external psum input 
  input      [OUT_DATA_WIDTH-1:0]  internal_psum,     // internal psum input (psum_pad[c])
  input      [DATA_WIDTH-1:0]      ifmap_in,          // ifmap input 
  input      [DATA_WIDTH-1:0]      weight_in,         // weight input 
 
  // output status flag signals
  output reg                       first_clip_flag,   // first clip flag, psum accumulate with itself when high
  output reg                       mac_finish_flag,   // mac finish flag 
  output wire                      acc_finish_flag,
  output wire                      mul_enable_flag,   // conv begin flag , to control the weight and ifmap pad address
  output reg                       psum_initial_flag, // initial the acc start value with the last psum
  output wire                      acc_enable_flag,   // accumulate start flag
  output wire                      psum_store_flag,   // psum store begin flag (both conv and acc) 
  output wire                      shift_finish_flag,
  output wire                      clip_finish_flag,
  output wire [1:0]                accumulate_mode,   // to control the input of adder pinA and pinB at different mode
  output wire                      interrupt_state_flag,
  //output cnt signals
  output wire [IFPAD_WIDTH-1:0]    cnt_a,             // 1-D conv cnt
  output wire [OFPAD_WIDTH-1:0]    cnt_b,             // output channel cnt    
  output wire [MAX_SHIFT_WIDTH-1:0]cnt_shift,         // shift conv num cnt
  output wire [MAX_CLIP_WIDTH-1:0] cnt_clip,          // clip num cnt  // MAC output 
  
  // output mac result
  output     [OUT_DATA_WIDTH-1:0]  accum_out          // mac unit output

);


wire mac_begin_;  // control the MAC FSM
reg shift_begin;  // clip shift conv start signal
assign mac_begin_ = mac_begin | shift_begin; // shift_begin only valid when mode=1


reg [DATA_WIDTH-1:0] ma;   // Multiplier input pin
reg [DATA_WIDTH-1:0] mb;   // Multiplier input pin
reg [DATA_WIDTH-1:0] external_psum_mac; // external psum input pin
reg [OUT_DATA_WIDTH-1:0] internal_psum_mac; // internal psum input pin

reg [IFPAD_WIDTH-1:0]a;    // 1-D conv cnt
reg [OFPAD_WIDTH-1:0]b;    // output channel cnt
assign cnt_a = a;          // output pin of cnt a
assign cnt_b = b;          // output pin of cnt b

// state signals 
reg mac_finish,mac_finish1; // mac and add finish signal 
reg acc_finish;             // accumulate external psum finish signal
reg mac_all_finish;         // all filters mac finish signal
reg interrupt_store;        // when mul and add are interrupted,use this flag to store psum
reg interrupt_store_delay;  // when mul and add are interrupted,use this flag to store psum
wire interrupt_store_flag;  // interrupt_store flag output to control the initial value of mac
assign interrupt_store_flag = interrupt_store&(~interrupt_store_delay);

reg interrupt_state;        // =1 when interrupt is high,=0 when mac_finish
reg restore_state;          // =1 when restore is high,=0 when mac_finish,used to make psum initial signal

always@(posedge clk or negedge rst_n) begin
  if(!rst_n) begin
    {interrupt_state,restore_state} <= {1'b0,1'b0};
  end else begin
    if(mac_finish_flag) {interrupt_state,restore_state} <= {1'b0,1'b0};
    else if(interrupt) {interrupt_state,restore_state} <= {1'b1,1'b0};
    else if(restore) {interrupt_state,restore_state} <= {1'b0,1'b1};
    else {interrupt_state,restore_state} <= {interrupt_state,restore_state};
  end
end
assign interrupt_state_flag = interrupt_state;


// MAC app signal delay
reg clear,clear_delay1,clear_delay2;
reg gate,gate_delay1,gate_delay2;
reg exter,exter_delay1,exter_delay2;

// Start signals and delay
reg mul_start,mul_start1,mul_start2;
reg acc_start,acc_start1,acc_start2;

assign acc_enable_flag = acc_start|acc_start1|acc_start2;
assign mul_enable_flag = mul_start;                                    //  conv begin flag 
assign psum_store_flag = mac_finish_flag | acc_start2 | interrupt_store_flag; // psum store begin flag (both conv and acc) 
assign acc_finish_flag = acc_finish;
// delay logic
always@(posedge clk or negedge rst_n) begin
  if(!rst_n) begin
    {gate,gate_delay1,gate_delay2}    <= {1'b1,1'b1,1'b1};
    {clear,clear_delay1,clear_delay2} <= {1'b1,1'b1,1'b1};
    {exter,exter_delay1,exter_delay2} <= {1'b0,1'b0,1'b0};
    {mul_start,mul_start1,mul_start2} <= {1'b0,1'b0,1'b0};
    {acc_start,acc_start1,acc_start2} <= {1'b0,1'b0,1'b0};
    //mac_finish1 <= 1'b0;
    mac_finish_flag <= 1'b0;
    interrupt_store_delay <= 1'b0;
  end else begin 
    {gate_delay1,gate_delay2} <= {gate,gate_delay1};
    {clear_delay1,clear_delay2} <= {clear,clear_delay1};
    {exter_delay1,exter_delay2} <= {exter,exter_delay1};
    {mul_start1,mul_start2} <= {mul_start,mul_start1};
    {acc_start1,acc_start2} <= {acc_start,acc_start1};
    //mac_finish1 <= mac_finish;
    mac_finish_flag <= mac_finish;
    interrupt_store_delay <= interrupt_store;

  end
end
//---------------------------------------------------------------
//                    MUL AND ADDER CONTROL
//---------------------------------------------------------------
parameter IDLE      = 3'b000;   
parameter MUL_RUN   = 3'b001;  // MAC start
parameter MUL_WAIT  = 3'b011;  // MAC finish and wait for psum to be stored
parameter MUL_END   = 3'b010;  // MAC end 
parameter MUL_CYC   = 3'b110;  // MAC cycle, cycle from psum_0 to psum_m (all output channels)
parameter MUL_NOP   = 3'b111;
parameter ACC_RUN   = 3'b101;  // Accumulate the current psum and the psum from last calculation (psum_in)
parameter ACC_END   = 3'b100;  // Accumulate finish

reg [2:0] mac_curr_state;
reg [2:0] mac_next_state;
reg [2:0] mac_cyc_delay_cnt;
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) mac_curr_state <= IDLE;
    else mac_curr_state <= mac_next_state;
  end
always@(*) begin
    mac_next_state = IDLE;
    case(mac_curr_state)
    IDLE:    if({mac_begin_,acc_begin}==2'b10)      mac_next_state = MUL_RUN; 
             else if({mac_begin_,acc_begin}==2'b01) mac_next_state = ACC_RUN;
             else                              mac_next_state = IDLE;
    MUL_RUN: if(a==Para_1Dconv_len-1) mac_next_state = MUL_WAIT;  
             else if(interrupt)       mac_next_state = MUL_WAIT; 
             else                     mac_next_state = MUL_RUN;
    MUL_WAIT:mac_next_state = MUL_END; 

    MUL_END: if(restore) mac_next_state = MUL_RUN;  
             else if(interrupt_state) mac_next_state = MUL_END;  
             else                     mac_next_state = MUL_CYC;
             
    MUL_CYC: if (b==Para_filter_num-1) mac_next_state = IDLE;
             else if(mode)             mac_next_state = MUL_NOP;
             else                      mac_next_state = MUL_RUN;
    MUL_NOP: if(mode && mac_cyc_delay_cnt < 1) mac_next_state = MUL_NOP;
             else if (both_pads_ready)         mac_next_state = MUL_RUN;
             else                              mac_next_state = MUL_NOP;
    ACC_RUN: if(a==Para_filter_num-1) mac_next_state = ACC_END; 
             else                     mac_next_state = ACC_RUN;
    ACC_END: mac_next_state = IDLE; 
    default: mac_next_state = IDLE; 
    endcase
  end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        a          <= 0;
        b          <= 0;
        clear      <= 1;
        gate       <= 1;
        exter      <= 0;
        mul_start  <= 0;
        mac_finish <= 0;
        mac_all_finish <= 0;
        acc_start  <= 0;
        acc_finish <= 0;
        interrupt_store <= 0;
        mac_cyc_delay_cnt <= 0;
    end else begin
        case(mac_curr_state)
        IDLE: begin
           a <= 0;
           b <= 0;
           mac_cyc_delay_cnt <= 0;
           {clear,gate,exter,mac_finish,mac_all_finish,
             acc_finish,interrupt_store} <= {1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0};
           {mul_start,acc_start} <= {mac_begin_,1'b0};
         end
        MUL_RUN: begin 
            mac_cyc_delay_cnt <= 0;
            if(a==Para_1Dconv_len-1 || (interrupt )) a <= a;
            else                     a <= a + 1;
            {clear, gate, exter}    <= {1'b0, 1'b0, 1'b0};
            {mac_finish, mul_start} <= {1'b0, 1'b1};
            {acc_finish, acc_start} <= {1'b0, 1'b0};
            interrupt_store <= 0;
          end
        MUL_WAIT: begin
            a <= a; 
            {clear, gate, exter}    <= {1'b0, 1'b0, 1'b0};
            {mac_finish, mul_start} <= {1'b0, 1'b1};
            {acc_finish, acc_start} <= {1'b0, 1'b0};
            interrupt_store <= 0;
          end
        MUL_END: begin
            a <= a;
          
            {clear, gate, exter}    <= {1'b1, 1'b1, 1'b0};
            if(interrupt_state) {mac_finish, interrupt_store} <= {1'b0, 1'b1};
            else {mac_finish, interrupt_store} <= {1'b1, 1'b0};
            if(restore) mul_start <= 1'b1;
            else mul_start <= 1'b0;
            {acc_finish, acc_start} <= {1'b0, 1'b0};
        end
        MUL_CYC: begin
            a <= 0;           
            if(b==Para_filter_num-1)begin
              b <= 0;
              {mul_start,mac_all_finish} <=  {1'b0,1'b1};
            end else begin
              b <= b + 1; 
              if(mode) {mul_start,mac_all_finish} <=  {1'b0,1'b0};
              else  {mul_start,mac_all_finish} <=  {1'b1,1'b0};
            end
            
            mac_finish <= 1'b0;
            {clear, gate, exter}    <= {1'b1, 1'b1, 1'b0};
            {acc_finish, acc_start} <= {1'b0, 1'b0};
            interrupt_store <= 0;
          end
        MUL_NOP: begin
            if(mode) 
              if(mac_cyc_delay_cnt == 1) begin
                mac_cyc_delay_cnt <= mac_cyc_delay_cnt;
                {mul_start,mac_all_finish} <=  {1'b1,1'b0};
              end else begin
                mac_cyc_delay_cnt <= mac_cyc_delay_cnt + 1;
                {mul_start,mac_all_finish} <=  {1'b0,1'b0};
              end
            else
              mac_cyc_delay_cnt <= 0;
          end
        ACC_RUN: begin
            if(a==Para_filter_num-1) a <= a;
            else                     a <= a + 1;
            b <= a;
            {clear, gate, exter}    <= {1'b0, 1'b1, 1'b1};
            {mac_finish, mul_start} <= {1'b0, 1'b0};
            {acc_finish, acc_start} <= {1'b0, 1'b1};
          end
        ACC_END: begin
            a <= a;
            b <= b;
            {clear, gate, exter}    <= {1'b1, 1'b1, 1'b0};
            {mac_finish, mul_start} <= {1'b0, 1'b0};
            {acc_finish, acc_start} <= {1'b1, 1'b0};
          end

       default;
     endcase
   end
 end

 // generate psum initial flag, because the clips (except for the first clip) 
 // need the last mul and acc result to initial the accumulate base value, 
 // psum_initial_flag indicate that the internal pin of adder can be assigned
 // to the last psum value.
reg mul_start3;
wire psum_initial_flag_1;
always@(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
       psum_initial_flag <= 0;
       mul_start3 <= 0;
    end else begin 
      psum_initial_flag <= psum_initial_flag_1;
      mul_start3 <= mul_start2;
    end
  end
assign psum_initial_flag_1 = mul_start2&(~mul_start3)&((~first_clip_flag)|restore_state);

assign accumulate_mode = {acc_enable_flag,mul_start2}; // to control the input of adder pinA and pinB at different mode

// MAC input signal control
  always@(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        ma <= 0;
	    mb <= 0;
        external_psum_mac <= 0;
        internal_psum_mac <= 0;        
      end
    else begin
    if(mul_start2) begin      //Mul and add start
       ma <= weight_in;
	   mb <= ifmap_in; 
       internal_psum_mac <= internal_psum; // accum_out

    end else if(acc_enable_flag) begin  // Acc of external_psum start
       ma <= ma;
	   mb <= mb; 
       external_psum_mac <= external_psum; // load external psum
       //if(acc_start1)begin
        internal_psum_mac <= internal_psum; // internal_psum is psum_pad[c]
        //end

    end else begin
       ma <= ma;
	   mb <= mb; 
       internal_psum_mac <= 0;
       external_psum_mac <= 0;
     end
   end
 end

reg [MAX_SHIFT_WIDTH-1:0] shift_cnt;    // shift conv num cnt
reg [MAX_CLIP_WIDTH-1:0] clip_num_cnt;  // clip num cnt
assign cnt_shift = shift_cnt;
assign cnt_clip = clip_num_cnt;

reg shift_mac_finish; // finish signal of every shift 1-D conv 
reg shift_mac_finish_all; // finish signal of all clips(the whole line) 1-D conv

assign shift_finish_flag = shift_mac_finish;
assign clip_finish_flag = shift_mac_finish_all;

 always@(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      clip_num_cnt <= 0;
      shift_mac_finish_all <= 0;
    end else begin
      if(mode) begin
        if(shift_mac_finish) begin
          if(clip_num_cnt == Para_clip_num_max-1)begin
             shift_mac_finish_all <= 1;
             clip_num_cnt <= 0;
          end else begin
             shift_mac_finish_all <= 0;
             clip_num_cnt <= clip_num_cnt + 1;
           end
        end else begin
          shift_mac_finish_all <= 0;
          clip_num_cnt <= clip_num_cnt;
        end
      end
      else begin
        shift_mac_finish_all <= 0;
        clip_num_cnt <= 0;
      end
    end
  end



 always@(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      shift_cnt <= 0;
      shift_begin <= 0;
    end
    else begin
      if(mode)begin
        if(mac_all_finish) begin
          if (shift_cnt == Para_shift_num_max-1) begin
            shift_cnt <= 0;
            shift_begin <= 0;
          end else begin
            shift_cnt <= shift_cnt + 1;
            shift_begin <= 1;
          end

        end else begin
            shift_cnt <= shift_cnt;
            shift_begin <= 0;
          end

        end
    else begin
      shift_begin <= 0;
      shift_cnt <= 0;
    end

  end
end


//reg first_clip_state;

 always@(posedge clk or negedge rst_n) begin
    if ( !rst_n) begin
      first_clip_flag <= 0;
      shift_mac_finish <= 0;
    end
    else begin
      if (shift_cnt == Para_shift_num_max-1 && mac_all_finish) shift_mac_finish <= 1;
      else shift_mac_finish <= 0;
      if(mac_begin & (clip_num_cnt==0)) first_clip_flag <= 1;
      else if(clip_num_cnt==1) first_clip_flag<= 0;
      else first_clip_flag <= first_clip_flag;
    end
end

//assign first_clip_flag = mac_begin & (clip_num_cnt==0);

macc #(
    .SIZEIN                         ( DATA_WIDTH                    ),
    .SIZEOUT                        ( OUT_DATA_WIDTH                ))
U_MACC_0(
    .clk                            ( clk                           ),
    .gate                           ( gate_delay2                   ),
    .exter                          ( exter_delay1                  ),
    .clear                          ( clear_delay2                  ),
    .a                              ( ma                            ),
    .b                              ( mb                            ),
    .external_psum                  ( external_psum_mac             ),
    .internal_psum                  ( internal_psum_mac             ),
    .accum_out                      ( accum_out                     )
);
endmodule



