// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : pe.v
// Author        : 
// Created On    : 2020-05-13 14:20
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------


`timescale 1ns/1ps

module pe
#( parameter DATA_WIDTH      = 16,
   parameter PSUM_DATA_WIDTH = 48,
   parameter ADDR_WIDTH      = 8,
   parameter PARA_WIDTH      = 8,
   parameter W_PAD_SIZE      = 200,
   parameter IF_PAD_SIZE     = 36,
   parameter PSUM_PAD_SIZE   = 36,
   parameter PE_FIFO_SIZE    = 2
 )

(
input                                           clk,
input                                           rst,
//input                               en,
/*config parameters*/
input             [PARA_WIDTH-1 : 0]            S,                        //8bits
input             [PARA_WIDTH-1 : 0]            U,                        //8bits only support 2^n
input             [PARA_WIDTH-1 : 0]            q,                        // q   number of channel processed by a PE set
input             [PARA_WIDTH-1 : 0]            p,                        // p   number of filters processed by a PE set
input             [PARA_WIDTH-1 : 0]            j,                        // j   the max number of clip (0~19)
input             [PARA_WIDTH-1 : 0]            k,                        // k   the max number of shift (0~9)
input             [PARA_WIDTH-1 : 0]            T,                        // T   one outchannel of weight length when mode == 1

/*input status signal*/
input                                           start_config,             //start load config parameter
input                                           start_weight_load,        //start weight  load
input                                           start_feature_load,       //start feature load
input                                           start_psum_in_load,       //start psum_in load
input                                           load_full_cloumn,         //0: pop_one_column_feature and push a new column 1: store columns until full
input                                           mode,                     // 1: clip and shift conv mode; 0: normal 1-D conv
/* input data bus */
input       [DATA_WIDTH-1:0]                    feature_in,
input                                           feature_in_en,
input       [DATA_WIDTH-1:0]	                weight_in,
input                                           weight_in_en,
input       [DATA_WIDTH-1:0]			        psum_in,
input                                           psum_in_en,         //external psum input 

// output status signal */
output reg                                      mac_finish,
output reg                                      psum_acc_finish,
output reg                                      psum_out_valid,
output wire                                     fifo_full_fmap,
output wire                                     fifo_full_filter,
// output data 
output reg        [PSUM_DATA_WIDTH-1:0]         psum_out,
input                                           psum_out_start,            //bus read start
output reg                                      psum_out_en,            //bus read enable
output reg        [PSUM_DATA_WIDTH-1:0]         psum_to_bus
);

parameter ADDRESSWIDTH_W_PAD = $clog2(W_PAD_SIZE);
parameter ADDRESSWIDTH_F_PAD = $clog2(IF_PAD_SIZE);
parameter ADDRESSWIDTH_P_PAD = $clog2(PSUM_PAD_SIZE);

parameter IFPAD_WIDTH     = PARA_WIDTH;
parameter WPAD_WIDTH      = PARA_WIDTH;
parameter OFPAD_WIDTH     = PARA_WIDTH;
parameter MAX_CLIP_WIDTH  = PARA_WIDTH;
parameter MAX_SHIFT_WIDTH = PARA_WIDTH;
parameter OUT_DATA_WIDTH  = PSUM_DATA_WIDTH; // 2*data_width + ifpad_width

reg  [ADDRESSWIDTH_W_PAD-1:0]        weight_num;
reg  [ADDRESSWIDTH_F_PAD-1:0]        pixel_num;
// one outchannel of weight length when mode == 1
reg  [ADDRESSWIDTH_W_PAD-1:0]        weight_1channel_mode_1; 
// Control Paramerters
wire     [IFPAD_WIDTH-1:0]     Para_1Dconv_len;   // 1-D conv length 
reg      [OFPAD_WIDTH-1:0]     Para_filter_num;   // conv filter number
reg     [MAX_CLIP_WIDTH-1:0]  Para_clip_num_max; // the max number of clip (0~19)
reg     [MAX_SHIFT_WIDTH-1:0] Para_shift_num_max;// the max number of shift (0~9)

reg  [ADDRESSWIDTH_F_PAD-1:0]  load_one_cloumn_num;

wire [ADDRESSWIDTH_W_PAD-1:0]Sqp;
wire [ADDRESSWIDTH_F_PAD-1:0]Sq;
wire [ADDRESSWIDTH_F_PAD-1:0]Uq;
assign Uq = U * q;
assign Sq = S * q;
assign Sqp = Sq * p;
assign Para_1Dconv_len = pixel_num;
//----------------------------------------------------------------
//                   Load Config Parameter
//----------------------------------------------------------------
always @(posedge clk) begin
  if (rst) begin
    // reset
    weight_num <= 0;
    pixel_num <= 0;
    load_one_cloumn_num <= 0;
    Para_filter_num <= 0;
    Para_clip_num_max <= 0;
    Para_shift_num_max <= 0;
    weight_1channel_mode_1 <= 0;
  end
  else if (start_config) begin
    if(mode)
      weight_num <= T*p;
    else
      weight_num <= Sqp;
    pixel_num  <= Sq;
    load_one_cloumn_num <= Uq;
    Para_filter_num <= p;
    Para_clip_num_max <= j;
    Para_shift_num_max <= k;
    weight_1channel_mode_1 <= T;
  end
end


//----------------------------------------------------------------
//                   Load Fmap logic
//----------------------------------------------------------------
reg  [ADDRESSWIDTH_F_PAD-1:0]  ifmap_addr;
wire [DATA_WIDTH-1:0]          fmap_out;
wire                           fmap_ready_to_pe;
wire [ADDRESSWIDTH_F_PAD-1:0]  pixel_point;
wire                           load_one_cloumn_finish;
wire                           Fpad_data_ready;
wire                           Fpad_full;


load_fmap #(  
  .DATA_WIDTH ( DATA_WIDTH ),
  .PARA_WIDTH ( PARA_WIDTH ),
  .PE_FIFO_SIZE( PE_FIFO_SIZE ),
  .ADDRESSWIDTH_F_PAD( ADDRESSWIDTH_F_PAD ),
  .ADDRESSWIDTH_W_PAD( ADDRESSWIDTH_W_PAD )
)
U_LOAD_FMAP_0
(  .clk                    ( clk                    ),
   .rst                    ( rst                    ),
   .fmap_load_start        ( start_feature_load     ),
   .fmap_in                ( feature_in             ),
   .fmap_in_en             ( feature_in_en          ),
   .load_full_cloumn       ( load_full_cloumn       ),
   .weight_num             ( weight_num             ),
   .pixel_num              ( pixel_num              ),
   .load_one_cloumn_num    ( load_one_cloumn_num    ),
   .raddra_ifmap           ( ifmap_addr             ),
   .fifo_full              ( fifo_full_fmap         ),
   .fmap_out               ( fmap_out               ),
   .fmap_ready_to_pe       ( fmap_ready_to_pe       ),
   .pixel_point            ( pixel_point            ),
   .load_one_cloumn_finish ( load_one_cloumn_finish ),
   .pad_data_ready         ( Fpad_data_ready        ),
   .pad_full               ( Fpad_full              ));




//----------------------------------------------------------------
//               Load weight Logic
//----------------------------------------------------------------
reg                                    zero_output_flg;
reg         [ADDRESSWIDTH_W_PAD:0]     base_weight_address;
reg         [ADDRESSWIDTH_W_PAD:0]     weight_addr;
wire        [ADDRESSWIDTH_W_PAD-1:0]   weight_addr_true;

wire        [DATA_WIDTH-1:0]           weight_out_from_pad;
wire        [DATA_WIDTH-1:0]           weight_out;
wire                                   Wpad_data_ready;
wire                                   Wpad_full;

assign weight_addr_true = weight_addr[ADDRESSWIDTH_W_PAD] ?  0 : weight_addr[ADDRESSWIDTH_W_PAD-1:0];

assign zero_output_flg = (weight_addr<0 || weight_addr> (weight_num-1)) ? 1'b1:1'b0;

assign weight_out = zero_output_flg? 0:weight_out_from_pad;

load_weight #( 
  .DATA_WIDTH ( DATA_WIDTH ),
  .PARA_WIDTH ( PARA_WIDTH ),
  .PE_FIFO_SIZE( PE_FIFO_SIZE ),
  .ADDRESSWIDTH_F_PAD( ADDRESSWIDTH_F_PAD ),
  .ADDRESSWIDTH_W_PAD( ADDRESSWIDTH_W_PAD )
)
U_LOAD_WEIGHT_0
(  .clk                ( clk                ),
   .rst                ( rst                ),
   .weight_load_start  ( start_weight_load  ),
   .weight_in          ( weight_in          ),
   .weight_in_en       ( weight_in_en       ),
   .weight_num         ( weight_num         ),
   .pixel_num          ( pixel_num          ),
   .raddra_filter      ( weight_addr_true   ),
   .base_address       ( base_weight_address),
   .fifo_full          ( fifo_full_filter   ),
   .weight_out         ( weight_out_from_pad),
   .pad_data_ready     ( Wpad_data_ready    ),
   .pad_full           ( Wpad_full          ));


 

//----------------------------------------------------------------
//                   MAC Control Logic
//----------------------------------------------------------------



// FSM behavior control signals
wire                           mac_begin;
wire                           acc_begin;
wire                           interrupt;
wire                           restore;
// Date input signals
reg      [DATA_WIDTH-1:0]      external_psum; // external psum input 
reg      [DATA_WIDTH-1:0]      internal_psum; // internal psum input (psum_pad[c])
wire     [DATA_WIDTH-1:0]      mac_fmap_in;
wire     [DATA_WIDTH-1:0]      mac_weight_in;

// output status flag signals
wire                       first_clip_flag;   // first clip flag, psum accumulate with itself when high
wire                       mac_finish_flag;   // mac finish flag 
wire                       acc_finish_flag; 
wire                       mul_enable_flag;   // conv begin flag , to control the weight and ifmap pad address
wire                       psum_initial_flag;
wire                       acc_enable_flag;   // accumulate start flag
wire                       psum_store_flag;   // psum store begin flag (both conv and acc) 
wire [1:0]                 accumulate_mode;
//output cnt signals
wire [IFPAD_WIDTH-1:0]     cnt_a;  // 1-D conv cnt
wire [OFPAD_WIDTH-1:0]     cnt_b;  // output channel cnt    
wire [MAX_SHIFT_WIDTH-1:0] cnt_shift;    // shift conv num cnt
wire [MAX_CLIP_WIDTH-1:0]  cnt_clip;  // clip num cnt  // MAC output 

// MAC output 
wire     [OUT_DATA_WIDTH-1:0]  accum_out;
assign mac_fmap_in = fmap_out;
assign mac_weight_in = weight_out;

always @(posedge clk) psum_acc_finish = acc_finish_flag;
wire both_pads_ready =  Wpad_data_ready & Fpad_data_ready;

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
    .both_pads_ready                ( both_pads_ready    ),
 
    .external_psum                  ( external_psum      ),
    .internal_psum                  ( internal_psum      ),
    .ifmap_in                       ( mac_fmap_in        ),
    .weight_in                      ( mac_weight_in      ),
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

//----------------------------------------------------------------
//               Interrupt And Restore Generate
//----------------------------------------------------------------
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

//----------------------------------------------------------------
//               mac begin and acc begin logic
//----------------------------------------------------------------
reg both_pads_ready_delay;
reg fmap_load_start_delay;
wire pads_ready_posedge;
 
assign mac_fmap_in = fmap_out;
assign mac_weight_in = weight_out;

always @(posedge clk or posedge rst) begin
    if(rst) begin
      both_pads_ready_delay <= 0;
      fmap_load_start_delay <= 0;
    end else begin
      both_pads_ready_delay <= both_pads_ready;
      fmap_load_start_delay <= start_feature_load;
    end
  end

assign pads_ready_posedge = ~both_pads_ready_delay&both_pads_ready;

assign mac_begin = pads_ready_posedge | (fmap_load_start_delay&both_pads_ready);

// acc_begin logic
assign acc_begin = start_psum_in_load; 

//----------------------------------------------------------------
//                           Psum Pad
//----------------------------------------------------------------
reg [DATA_WIDTH-1: 0] psum_pad[(1<<ADDRESSWIDTH_P_PAD)-1:0] ;

//--------------------------------------------------------------------------
// determine the value of internal pin of adder accroding to accumulate mode
// 10: acc mode, internal psums are from psum_pad; 
// 01: mul and add mode, internal psums are from accum_out,but when
// mode=1(kernel derivate conv), internal psum is from psum pad.
//--------------------------------------------------------------------------
reg [ADDRESSWIDTH_P_PAD-1:0]c;  // psum pad addr point
reg [ADDRESSWIDTH_P_PAD-1:0]c_delay;

always@(accumulate_mode,accum_out,external_psum,
        c,psum_initial_flag,psum_in)begin
  case(accumulate_mode)
  2'b10: begin                   // acc mode
    internal_psum = psum_pad[c];
    external_psum = psum_in;
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

//----------------------------------------------------------------
//            Weight and Fmap Pad Address Generate
//----------------------------------------------------------------
// cnt_a : inter channel cnt
// cnt_b : outer channel cnt
wire  [ADDRESSWIDTH_W_PAD-1:0] weight_shift_num;
assign weight_shift_num = load_one_cloumn_num*cnt_shift;

always@(posedge clk or posedge rst) begin
  if (rst) begin
    weight_addr <= 0;
    ifmap_addr <= 0;
    base_weight_address <= 0;
  end else begin 
    if(mul_enable_flag) begin
      if(mode) begin
        if(both_pads_ready) begin
          base_weight_address <= cnt_b* weight_1channel_mode_1;
          weight_addr <= cnt_a-weight_shift_num + Para_1Dconv_len*cnt_clip + cnt_b* weight_1channel_mode_1;
        end else begin
          base_weight_address <= base_weight_address;
          weight_addr <= weight_addr;
        end

      end else begin
        base_weight_address <= 0; 
        weight_addr <= cnt_a + cnt_b*Para_1Dconv_len;
      end
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

//----------------------------------------------------------------
//            Psum Pad Control Logic
//----------------------------------------------------------------
always@(posedge clk or posedge rst) begin
  if (rst) begin
    c <= 0;
    c_delay <= 0;
  end
  else begin
    if(mode) begin
      c <= cnt_b + cnt_shift*Para_filter_num;
      if(mac_finish_flag|psum_store_flag) 
        psum_pad[c] <= accum_out;
      else 
        psum_pad[c] <= psum_pad[c];
    end
    else begin
      c_delay <= c;
      c <= cnt_b;
      if(psum_store_flag) psum_pad[c_delay]<=accum_out;
      else psum_pad[c_delay]<=psum_pad[c_delay];
    end
end
end

//----------------------------------------------------------------
//             psum out logic
//----------------------------------------------------------------
reg   [ADDRESSWIDTH_P_PAD-1:0]  psum_read_address;
reg psum_out_ready;
wire psum_transform_start;
wire psum_transform_finish;
assign psum_transform_finish = (psum_read_address==p);
assign psum_transform_start = psum_out_ready&psum_out_start;

always @(posedge clk or posedge rst) begin
	if (rst) begin
		// reset
		psum_out_ready <= 0;
      end
	else if (acc_finish_flag) begin
		psum_out_ready <= 1;
	end else if (psum_transform_finish) begin
		psum_out_ready <= 0;
	end else begin
		psum_out_ready <= psum_out_ready;
      end
    end

always @(posedge clk or posedge rst) begin
	if (rst) begin
		// reset
		psum_read_address <= 0;
		psum_out_en <= 0;
	end
	else if (psum_transform_start&&(!psum_transform_finish)) begin
	    psum_read_address <= psum_read_address + 1;
        psum_to_bus = psum_pad[psum_read_address];
	    psum_out_en <= 1;
	end else begin
		psum_read_address <= 0;
		psum_out_en <= 0;
        psum_to_bus = 0;
      end
    end

endmodule
 


