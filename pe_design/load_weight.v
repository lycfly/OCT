`timescale 1ns / 1ps
// *********************************************************************************
// Project Name : OCT
// Create Time  : 2019/9/28 
// File Name    : load_weight.v
// Module Name  : load_weight
// Abstract     :
// editor		: sublime text 3
// *********************************************************************************
// Modification History:
// Date         By              Version                 Change Description
// -----------------------------------------------------------------------
// 2019/9/28    Yicheng Lu         1.0                     Original
//  
// *********************************************************************************


module load_weight
#(
  parameter DATA_WIDTH         = 16,
  parameter PARA_WIDTH         = 8,
  parameter PE_FIFO_SIZE       = 2,  
  parameter ADDRESSWIDTH_F_PAD = 8,
  parameter ADDRESSWIDTH_W_PAD = 8
)
(
input                                       clk,
input                                       rst,

input                                       weight_load_start,
input             [DATA_WIDTH-1:0]          weight_in,
input                                       weight_in_en,
input             [ADDRESSWIDTH_W_PAD-1:0]  weight_num,             //# of weight 
input             [ADDRESSWIDTH_F_PAD-1:0]  pixel_num,              //# of pixel
input             [ADDRESSWIDTH_W_PAD-1:0]  raddra_filter,          // input weights read address         
input             [ADDRESSWIDTH_W_PAD-1:0]  base_address,          // input weights read address
             
output                                      fifo_full,
output            [DATA_WIDTH-1:0]          weight_out,             // output weight port
output                                      pad_data_ready,
output                                      pad_full

    );



parameter FIFO2RAM_RATIO = DATA_WIDTH/DATA_WIDTH;

   wire [DATA_WIDTH-1:0] fifo_rd_data;
   reg 	     fifo_rd_en;                       // fifo read en
   wire 	 empty;

   fifo
     #(.DEPTH_WIDTH (PE_FIFO_SIZE),
       .DATA_WIDTH (DATA_WIDTH))
   fifo_weight
     (
      .clk       (clk),
      .rst       (rst),

      .wr_en_i   (weight_in_en),
      .wr_data_i (weight_in),
      .full_o    (fifo_full),
      //.almost_full (),
      .rd_en_i   (fifo_rd_en),
      .rd_data_o (fifo_rd_data),
      .empty_o   (empty));



localparam [31:0]  RATIO_W = $clog2(FIFO2RAM_RATIO);

reg                                wea_filter;         // input weight write enable
reg           [ADDRESSWIDTH_W_PAD-1:0] waddra_filter;      // input weight read address
reg           [ADDRESSWIDTH_W_PAD-1:0] waddra_filter_delay;      // input weight read address
always @(posedge clk) begin
  waddra_filter_delay <= waddra_filter;
end
wire    [DATA_WIDTH-1:0]     ram_weight_in;

 True_dual_ports_ram  #(
   .ADDR_WIDTH (ADDRESSWIDTH_W_PAD),
   .DATA_WIDTH (DATA_WIDTH        ),
   .DEPTH      (1<<ADDRESSWIDTH_W_PAD))
   weight_scratch_pad(
   .clk(clk),
   .wea(wea_filter),
   .web(),
   .addrA(waddra_filter_delay),
   .addrB(raddra_filter),
   .dinA(ram_weight_in),
   .dinB(),
   .doutA(),
   .doutB(weight_out)
  );

 //reg [RATIO_W-1:0] cnt_i;
 
assign  ram_weight_in = fifo_rd_data[DATA_WIDTH-1:0];

 	//case(cnt_i)
 	//  0: ram_weight_in = fifo_rd_data[DATA_WIDTH-1:0];
  //  1: ram_weight_in = fifo_rd_data[DATA_WIDTH*2-1:DATA_WIDTH*1];
  //  2: ram_weight_in = fifo_rd_data[DATA_WIDTH*3-1:DATA_WIDTH*2];
  //  3: ram_weight_in = fifo_rd_data[DATA_WIDTH*4-1:DATA_WIDTH*3];

 	//endcase
 
 //assign ram_weight_in = fifo_rd_data[DATA_WIDTH*(cnt_i+1)-1:DATA_WIDTH*cnt_i];
reg load_data_finish_flag;

 reg [1:0] FSM;
 parameter INITIAL        = 2'b00;
 parameter WAIT           = 2'b01;
 parameter READ_FIFO      = 2'b11;
 parameter LOAD_FROM_FIFO = 2'b10;

always @(posedge clk or posedge rst) begin
	if (rst) begin
		// reset
		FSM <= 0;
		wea_filter <= 0;
		waddra_filter <= 0;
		fifo_rd_en <= 0;
        load_data_finish_flag <= 0;
//		cnt_i <= 0;
      end
	else begin
	case(FSM)
     INITIAL:begin
        fifo_rd_en <= 0;
        wea_filter <= 0;
        if (weight_load_start) begin
            waddra_filter <= 0;
            load_data_finish_flag <= 0;
            FSM <= WAIT;
          end
        else begin
            waddra_filter <= waddra_filter;
            load_data_finish_flag <= load_data_finish_flag;
            FSM <= INITIAL;
          end
     end
		 WAIT: begin
		 	  if (!empty && waddra_filter< weight_num)begin
      			fifo_rd_en <= 1;
      			wea_filter <= 0;
      			FSM <= LOAD_FROM_FIFO;
        end 
  		 	else begin
  		 		FSM <= WAIT;
  		 		fifo_rd_en <= 0;
  		 		wea_filter <= 0;
              end
          end
		// READ_FIFO:begin
		// 	fifo_rd_en <= 0;
		// 	wea_filter <= 1;
		// 	FSM <= LOAD_FROM_FIFO;
		//end
      LOAD_FROM_FIFO: begin
          fifo_rd_en <= 0;
          wea_filter <= 1;
    
          	 
          if(waddra_filter == weight_num -1) begin
            load_data_finish_flag <= 1;
            FSM <= INITIAL;
          end
          else begin
            load_data_finish_flag <= 0;
            waddra_filter <= waddra_filter + 1;
            FSM <= WAIT;
          end
          	//wea_filter <= 0;
          	
            //end
       end

      default;
		endcase
	end
  end

//wire  [ADDRESSWIDTH_W_PAD-1:0] address_margin;
//assign  address_margin = (waddra_filter - base_address);
assign  pad_data_ready =  (waddra_filter > base_address + 3) ? 1'b1:1'b0;
assign  pad_full = ((waddra_filter!=weight_num-1)&(raddra_filter!=0)&(waddra_filter<raddra_filter+3))&(~load_data_finish_flag);

//assign  pad_full = ((waddra_filter!=weight_num-1)&(raddra_filter!=0)&(waddra_filter<raddra_filter+3))|(~pad_data_ready)&(~load_data_finish_flag);
endmodule
