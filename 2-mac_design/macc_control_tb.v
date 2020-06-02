// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : macc_control_tb.v
// Author        : 
// Created On    : 2020-04-15 19:14
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------



`timescale 1ns/1ps

`include "/home/IC/Desktop/0-onchiptrain/Constant.v"




module macc_control_tb();

  parameter DATA_WIDTH     = 16;
  parameter IFPAD_WIDTH    = 4;
  parameter WPAD_WIDTH     = 8;
  parameter OFPAD_WIDTH    = 4;
  parameter OUT_DATA_WIDTH = 36; // 2*data_width + ifpad_width
  parameter MAX_CLIP_WIDTH = 5;
  parameter MAX_SHIFT_WIDTH = 4;

  reg clk;
  reg rst;
 // Control Paramerters
  reg     [IFPAD_WIDTH-1:0]     Para_1Dconv_len;   // 1-D conv length 
  reg     [OFPAD_WIDTH-1:0]     Para_filter_num;   // conv filter number
  reg     [MAX_CLIP_WIDTH-1:0]  Para_clip_num_max; //the max number of clip (0~19)
  reg     [MAX_SHIFT_WIDTH-1:0] Para_shift_num_max;//the max number of shift (0~9)

  // FSM behavior control signals
  reg                            mode; // 1: clip and shift conv mode; 0: normal 1-D conv
  reg                            mac_begin;
  reg                            acc_begin;
  wire                           interrupt;
  wire                           restore;
  // Date input signals
  reg      [DATA_WIDTH-1:0]      external_psum; // external psum input 
  reg      [DATA_WIDTH-1:0]      internal_psum; // internal psum input (psum_pad[c])
  reg      [DATA_WIDTH-1:0]      ifmap_in;      // ifmap input 
  reg      [DATA_WIDTH-1:0]      weight_in;
  // output status flag signals
  wire                       first_clip_flag;  // first clip flag, psum accumulate with itself when high
  wire                       mac_finish_flag;  // mac finish flag 
  wire                       acc_finish_flag; 
  wire                       mul_enable_flag;   // conv begin flag , to control the weight and ifmap pad address
  wire                       psum_initial_flag;
  wire                       acc_enable_flag;   // accumulate start flag
  wire                       psum_store_flag;  // psum store begin flag (both conv and acc) 
  wire [1:0]                 accumulate_mode;
  //output cnt signals
  wire  [IFPAD_WIDTH-1:0]    cnt_a;  // 1-D conv cnt
  wire  [OFPAD_WIDTH-1:0]    cnt_b;  // output channel cnt    
  wire [MAX_SHIFT_WIDTH-1:0] cnt_shift;    // shift conv num cnt
  wire [MAX_CLIP_WIDTH-1:0]  cnt_clip;  // clip num cnt  // MAC output 
  
  // MAC output 
  wire     [OUT_DATA_WIDTH-1:0]  accum_out;




  reg [`ADDRESSWIDTH_F_PAD-1:0] ifmap_addr;
  reg [`ADDRESSWIDTH_W_PAD-1:0] weight_addr;


 reg  [`ADDRESSWIDTH_W_PAD-1:0]weight_num;
 reg  [`ADDRESSWIDTH_F_PAD-1:0]pixel_num;
 reg  fmap_load_start;
 reg  [`fmap_bus_width-1:0]pe_fmap_in;
 reg  fmap_in_en;

 reg  [`ADDRESSWIDTH_F_PAD-1:0]load_one_cloumn_num;
 reg                      load_full_cloumn;
 wire fmap_fifo_full;
 wire [DATA_WIDTH-1:0]fmap_out;
 wire fmap_ready_to_pe;
 wire  [`ADDRESSWIDTH_F_PAD-1:0]     pixel_point;
 wire load_one_cloumn_finish;
 reg  fmap_bus_ready;
 wire fmap_pe_ready;
 assign ifmap_in = fmap_out;
 assign fmap_pe_ready = !fmap_fifo_full;
 always@(*)begin
   fmap_in_en = fmap_pe_ready & fmap_bus_ready;
 end

   load_fmap  #(
     .DATA_WIDTH        (DATA_WIDTH))
   load_fmap_0(
     .clk(clk),
     .rst(rst),
     .fmap_load_start(fmap_load_start),
     .fmap_in(pe_fmap_in),
     .fmap_in_en(fmap_in_en),
     .load_full_cloumn(load_full_cloumn),
     .weight_num(weight_num),
     .pixel_num(pixel_num),
     .load_one_cloumn_num(load_one_cloumn_num),
     .raddra_ifmap(ifmap_addr),
     .fifo_full(fmap_fifo_full),
     .fmap_out(fmap_out),
     .fmap_ready_to_pe(fmap_ready_to_pe),
     .pixel_point(pixel_point),
     .load_one_cloumn_finish(load_one_cloumn_finish),
     .pad_data_ready(Fpad_data_ready),
     .pad_full(Fpad_full)
    );


// weight pad  
 reg  weight_load_start;
 reg  signed [`weight_bus_width-1:0]pe_weight_in;
 reg  weight_in_en;

 wire weight_fifo_full;
 wire signed [DATA_WIDTH-1:0]weight_out;

    wire weight_pe_ready;
    reg weight_bus_ready;


 initial begin
   weight_load_start = 0;
   pe_weight_in = 0;
   weight_num = 36;
   pixel_num = 12;
   weight_bus_ready = 0;

   fmap_load_start = 0;
   pe_fmap_in = 0;
   fmap_bus_ready = 0;
   load_full_cloumn = 1;
   load_one_cloumn_num = 4;
   
 end

  load_weight #(
     .DATA_WIDTH        (DATA_WIDTH))
  load_weight_0(
     .clk(clk),
     .rst(rst),
     .weight_load_start(weight_load_start),
     .weight_in(pe_weight_in),
     .weight_in_en(weight_in_en),
     .weight_num(weight_num),
     .pixel_num(pixel_num),
     .raddra_filter(weight_addr),
     .fifo_full(weight_fifo_full),
     .weight_out(weight_out),
     .pad_data_ready(Wpad_data_ready),
     .pad_full(Wpad_full)
    );

 
 assign weight_pe_ready = !weight_fifo_full;
// reg weight_in_en_last;
    always@(*)begin
    	weight_in_en = weight_pe_ready & weight_bus_ready;
      end
 //always@(posedge clk) weight_in_en <= weight_in_en_last;
 assign weight_in = weight_out;

// interrupt and restore generate
wire Wpad_data_ready;
wire Wpad_full;
wire Fpad_data_ready;
wire Fpad_full;

wire both_pads_ready =  Wpad_data_ready & Fpad_data_ready;
//wire both_pads_ready =  Wpad_data_ready;
wire pad_full = Wpad_full|Fpad_full;
//wire pad_full = Wpad_full;
reg pad_full_delay;
                   

reg delay1,delay2,delay3;
wire pad_full_to_restore = pad_full|delay1|delay2|delay3;
 
reg pad_full_to_restore_delay;

assign restore = pad_full_to_restore_delay & (~pad_full_to_restore) & both_pads_ready;
assign interrupt =  (~pad_full_delay ) & pad_full & both_pads_ready;
always@(posedge clk or posedge rst) begin
  if(rst) begin
    pad_full_delay <= 0;
    pad_full_to_restore_delay <= 0;
    {delay1,delay2,delay3} <= 3'b0;
  end else begin
    pad_full_delay <= pad_full;
    pad_full_to_restore_delay <= pad_full_to_restore;
    {delay1,delay2,delay3} <= {interrupt,delay1,delay2};
  end
end





reg [16-1:0] psum_pad[2:0];


initial begin

    clk = 0;
    rst = 0;
    Para_1Dconv_len = 12;   
    Para_filter_num = 3;   
    Para_clip_num_max = 2; 
    Para_shift_num_max = 2;

    #3;rst=1;#2;rst=0;
  end
always #1 clk = ~clk;

wire mac_begin;
reg acc_begin;
reg [16-1:0]input_psum;

// mac_begin logic
reg both_pads_ready_delay;
reg fmap_load_start_delay;

always @(posedge clk or posedge rst) begin
    if(rst) begin
      both_pads_ready_delay <= 0;
      fmap_load_start_delay <= 0;
    end else begin
      both_pads_ready_delay <= both_pads_ready;
      fmap_load_start_delay <= fmap_load_start;
    end
  end

wire pads_ready_posedge = ~both_pads_ready_delay&both_pads_ready;

assign mac_begin = pads_ready_posedge | (fmap_load_start_delay&both_pads_ready);

integer i,j;
initial begin
   j = 1;
   #11;
   fmap_load_start <= 1;
   #2  fmap_load_start <= 0;

   fmap_bus_ready = 1;
   
   while(1) begin
        @(posedge clk);
        if(fmap_in_en) begin
          pe_fmap_in = j;
          j = j + 1;
        end
        if(j==7) begin
          fmap_bus_ready = 0;
          break;
        end
      end
   #40
   fmap_bus_ready = 1;
   while(1) begin
        @(posedge clk);
        if(fmap_in_en) begin
          pe_fmap_in = j;
          j = j + 1;
        end
        if(j==13) begin
          fmap_bus_ready = 0;
          break;
        end
      end
   
   #600 
    fmap_load_start <= 1;
    load_full_cloumn <= 0;
    //mac_begin <= 1;
    #2  fmap_load_start <= 0;
    //mac_begin <= 0;
    fmap_bus_ready = 1;
    while(1) begin
        @(posedge clk);
        if(fmap_in_en) begin
          pe_fmap_in = j;
          j = j + 1;
        end
        if(j==15) begin
          fmap_bus_ready = 0;
          break;
        end
      end
    #20
     fmap_bus_ready = 1;
    while(1) begin
        @(posedge clk);
        if(fmap_in_en) begin
          pe_fmap_in = j;
          j = j + 1;
        end
        if(j==17) begin
          fmap_bus_ready = 0;
          break;
        end
      end
    end
initial begin
  
end
initial begin
    #29;
    //mac_begin <= 1;
    #2;
    
    //mac_begin <= 0;
  end

initial begin
    i = 1;
    //mac_begin = 0;
    acc_begin = 0;
    input_psum = 0;
   
    mode = 0;
    #11;
    
    weight_load_start = 1;
    #2  weight_load_start = 0;
    
    weight_bus_ready = 1;
       
    while(1) begin
        @(posedge clk);
        if(weight_in_en) begin
          pe_weight_in = i;
          i = i + 1;
        end
        if(i==10) begin
          weight_bus_ready = 0;
          break;
        end
      end
 
  

    #182
    //mac_begin <= 1;
    #2
    //mac_begin <= 0;

   
    #200
    acc_begin <= 1;
    #2
    acc_begin <= 0;

   /* #300
    mac_begin <= 1;
    #2
    mac_begin <= 0;
   */
    $display("finished!");
  end
  initial begin
    @(posedge acc_enable_flag) input_psum <= 1;
    #2 input_psum <= input_psum + 1;
    #2 input_psum <= input_psum + 1;

  end

  initial begin
    #100;
    weight_bus_ready = 1;
    while(1) begin
        @(posedge clk);
        if(weight_in_en) begin
          pe_weight_in = i;
          i = i + 1;
        end
        if(i==37) begin
          weight_bus_ready = 0;
          break;
        end
      end
  end
/* 
 initial begin
   # 174
   @ (posedge clk) interrupt <= 1;
   #2 interrupt <= 0;
   #4 restore <= 1;
   #2 restore <= 0;

   #4 interrupt <= 1;
   #2 interrupt <= 0;
   #4 restore <= 1;
   #2 restore <= 0;

 end
*/


reg [15:0]c;  // psum pad addr point
reg [15:0]c_delay;

/*************************************************************************
 determine the value of internal pin of adder accroding to accumulate mode
 10: acc mode, internal psums are from psum_pad; 
 01: mul and add mode, internal psums are from accum_out,but when
 mode=1(kernel derivate conv), internal psum is from psum pad.
*************************************************************************/
always@(accumulate_mode,accum_out,external_psum,
        c,psum_initial_flag,input_psum)begin
  case(accumulate_mode)
  2'b10: begin                   // acc mode
    internal_psum = psum_pad[c];
    external_psum = input_psum;
  end
  2'b01: begin                   // mul and acc mode
    if(psum_initial_flag) begin
      internal_psum = psum_pad[c];
      external_psum = 0;
    end else begin
      internal_psum = accum_out;
      external_psum = 0;
    end
  end
  // avoid synthesis latch
  2'b00:  {internal_psum,external_psum} = 0;
  2'b11:  {internal_psum,external_psum} = 0;
  default:{internal_psum,external_psum} = 0;
  endcase  
end


 always@(posedge clk or posedge rst) begin
    if (rst) begin
       weight_addr <= 0;
       ifmap_addr <= 0;
    end else begin 
      if(mul_enable_flag) begin
        weight_addr <= cnt_a + cnt_b*Para_1Dconv_len;
        
        if (cnt_a >= pixel_num-pixel_point) begin
          ifmap_addr <= cnt_a + pixel_point-pixel_num;
        end else begin
          ifmap_addr  <= pixel_point + cnt_a;
        end
      end else begin
        weight_addr <= weight_addr;
        ifmap_addr <= ifmap_addr;
      end
    end
  end
  
 always@(posedge clk or posedge rst) begin
    if (rst) begin
      c <= 0;
      c_delay <= 0;
    end
    else begin
      if(mode) begin
        c <= cnt_b + cnt_shift*Para_filter_num;
        if(mac_finish_flag|psum_store_flag) 
          psum_pad[c] <=  accum_out;
        else psum_pad[c]<=psum_pad[c];
      end
    else begin
        c_delay <= c;
        c <= cnt_b;
        if(psum_store_flag) psum_pad[c_delay]<=accum_out;
        else psum_pad[c_delay]<=psum_pad[c_delay];
      end

  end
end

macc_control #(
    .DATA_WIDTH                     ( DATA_WIDTH        ),
    .IFPAD_WIDTH                    ( IFPAD_WIDTH       ),
    .WPAD_WIDTH                     ( WPAD_WIDTH        ),
    .OFPAD_WIDTH                    ( OFPAD_WIDTH       ),
    .OUT_DATA_WIDTH                 ( OUT_DATA_WIDTH    ),
    .MAX_CLIP_WIDTH                 ( MAX_CLIP_WIDTH    ),
    .MAX_SHIFT_WIDTH                ( MAX_SHIFT_WIDTH   ))
U_MACC_CONTROL_0(
    .clk                            ( clk                ),
    .rst                            ( rst               ),
   
    .Para_1Dconv_len                ( Para_1Dconv_len    ),
    .Para_filter_num                ( Para_filter_num    ),
    .Para_clip_num_max              ( Para_clip_num_max  ),
    .Para_shift_num_max             ( Para_shift_num_max ),

    .mode                           ( mode               ),
    .mac_begin                      ( mac_begin          ),
    .acc_begin                      ( acc_begin          ),
    .interrupt                      ( interrupt          ),
    .restore                        ( restore            ),//weight_restore
    
    .external_psum                  ( external_psum      ),
    .internal_psum                  ( internal_psum      ),
    .ifmap_in                       ( ifmap_in           ),
    .weight_in                      ( weight_in          ),
    .first_clip_flag                ( first_clip_flag    ),
    .mac_finish_flag                ( mac_finish_flag    ),
    .acc_finish_flag                ( acc_finish_flag    ),
    .mul_enable_flag                ( mul_enable_flag    ),
    .psum_initial_flag              ( psum_initial_flag  ),
    .acc_enable_flag                ( acc_enable_flag    ),
    .psum_store_flag                ( psum_store_flag    ),
    .accumulate_mode                ( accumulate_mode    ),
    .cnt_a                          ( cnt_a              ),
    .cnt_b                          ( cnt_b              ),
    .cnt_shift                      ( cnt_shift          ),
    .cnt_clip                       ( cnt_clip           ),
    .accum_out                      ( accum_out          )
);
initial begin
    $fsdbDumpvars();
    $fsdbDumpMDA();
    $dumpvars();
    #1000 $finish;
 end
endmodule


