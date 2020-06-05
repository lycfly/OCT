// *********************************************************************************
// Project Name : OCT
// Create Time  : 2019/9/28 
// File Name    : load_fmap.v
// Module Name  : load_fmap
// Abstract     :
// editor		: sublime text 3
// *********************************************************************************
// Modification History:
// Date         By              Version                 Change Description
// -----------------------------------------------------------------------
// 2019/9/28    Yicheng Lu         1.0                     Original
//  
// *********************************************************************************
`timescale 1ns/1ps


module load_fmap
#(
  parameter  DATA_WIDTH              = 16,
  parameter  PARA_WIDTH              = 8,
  parameter  PE_FIFO_SIZE            = 2,
  parameter  ADDRESSWIDTH_F_PAD      = 8,
  parameter  ADDRESSWIDTH_W_PAD      = 8
)
(
input                                      clk, 
input                                      rst_n,


input                                      fmap_load_start,
input             [DATA_WIDTH-1:0]         fmap_in,
input                                      fmap_in_en,
input                                      load_full_cloumn,

input             [ADDRESSWIDTH_W_PAD-1:0] weight_num,             //# of weight
input             [ADDRESSWIDTH_F_PAD-1:0] pixel_num,              //# of pixel
input             [ADDRESSWIDTH_F_PAD-1:0] load_one_cloumn_num,    //# of one cloumn
input             [ADDRESSWIDTH_F_PAD-1:0] raddra_ifmap,           //input fmap read address

output                                     fifo_full,
output            [DATA_WIDTH-1:0]         fmap_out,                // output fmap port
output reg                                 fmap_ready_to_pe,
output wire       [ADDRESSWIDTH_F_PAD-1:0] pixel_point,             // point to the start of the first column
output reg                                 load_one_cloumn_finish,
output                                     pad_data_ready,
output                                     pad_full
    );


parameter FIFO2RAM_RATIO = DATA_WIDTH/DATA_WIDTH; // bus data width/fifo data width (no use)
   // if necessary, change this fifo to asys-fifo
   wire [DATA_WIDTH-1:0] fifo_rd_data;
   reg 	     fifo_rd_en;                                 // fifo read en
   wire 	 empty;

   fifo
     #(.DEPTH_WIDTH (PE_FIFO_SIZE),
       .DATA_WIDTH (DATA_WIDTH))
   fifo_fmap
     (
      .clk       (clk),
      .rst_n     (rst_n),

      .wr_en_i   (fmap_in_en),
      .wr_data_i (fmap_in),
      .full_o    (fifo_full),
      //.almost_full (),

      .rd_en_i   (fifo_rd_en),
      .rd_data_o (fifo_rd_data),
      .empty_o   (empty));



localparam [31:0]  RATIO_W = $clog2(FIFO2RAM_RATIO);

reg                                    wea_ifmap;         // input weight write enable
reg           [ADDRESSWIDTH_F_PAD-1:0] waddra_ifmap;      // input weight read address
reg           [ADDRESSWIDTH_F_PAD-1:0] waddra_ifmap_delay1;      // input weight read address

wire          [DATA_WIDTH-1:0]         ram_fmap_in;
always @(posedge clk or negedge rst_n) begin
  if(!rst_n) begin
    waddra_ifmap_delay1 <= 0;
  end else begin
    waddra_ifmap_delay1<=waddra_ifmap;  // because the data write need 2 period, so the address need to delay 1 period
  end
end
/************  scratch pad  ,  feature   ***********/
reg    [DATA_WIDTH-1:0] feature_out_reg;
reg     [DATA_WIDTH-1: 0]   feature_pad[(1<<ADDRESSWIDTH_F_PAD)-1:0];
always @ (posedge clk) begin
  if(wea_ifmap) begin
    feature_pad[waddra_ifmap_delay1] <= ram_fmap_in;
  end
  feature_out_reg <= feature_pad[raddra_ifmap];
end
assign fmap_out = feature_out_reg;
assign ram_fmap_in = fifo_rd_data;
/*
// FSM of ifmap loading
reg [2:0] current_state;
reg [2:0] next_state;



always@(posedge clk or posedge rst_n) begin
  if(rst_n) current_state <= 0;
  else current_state <= next_state;
end

always@(*) begin
 next_state = INITIAL;
 case(current_state)
   INITIAL: if(fmap_load_start) next_state = WAIT;
            else                next_state = INITIAL;
   WAIT:    if(!empty && !load_one_cloumn_finish) next_state = LOAD_FROM_FIFO;
            else                                  next_state = WAIT;
   LOAD_FROM_FIFO: 

 end
*/
reg load_full_cloumn_flg;    // =1 when load_full_cloumn is high
reg load_data_finish_flag;
reg loading_one_column_flg;
reg [ADDRESSWIDTH_F_PAD-1:0]pixel_point_;

reg [1:0] FSM;
parameter INITIAL        = 2'b00;
parameter WAIT           = 2'b01;
parameter LOAD_FROM_FIFO = 2'b11;
wire [ADDRESSWIDTH_F_PAD:0]next_pixel_point;
assign next_pixel_point = pixel_point_ + load_one_cloumn_num;
wire [ADDRESSWIDTH_F_PAD-1:0] flag_pixel_point =  load_full_cloumn_flg?next_pixel_point:pixel_point_;
wire one_column_flag = waddra_ifmap == flag_pixel_point-1;
wire all_column_flag = waddra_ifmap == pixel_num -1;

wire [1:0] control_bits = {all_column_flag,load_full_cloumn_flg};


////////////////////////////////////////////
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		// reset
		FSM              <= 0;
		wea_ifmap        <= 0;
		waddra_ifmap     <= 0;
		fifo_rd_en       <= 0;
		fmap_ready_to_pe <= 0;
		pixel_point_           <= 0;
		load_one_cloumn_finish <= 0;
		load_full_cloumn_flg   <= 1;
        loading_one_column_flg <= 0;
        load_data_finish_flag <= 0;
      end
	else begin
		 case(FSM)
		 INITIAL: begin
		 	fmap_ready_to_pe <= 0;	
		    load_one_cloumn_finish <= 0; 
		    wea_ifmap <= 0;
		    fifo_rd_en <= 0;
	 		if (fmap_load_start)begin
                load_data_finish_flag <= 0;
 	        	if(load_full_cloumn)begin
 	        	    load_full_cloumn_flg <= 1;
                    loading_one_column_flg <= 0;
 	        		pixel_point_ <= 0;
 	        		waddra_ifmap <= 0;
                  end
 	        	else begin
 	        	    load_full_cloumn_flg <= 0;
                    loading_one_column_flg <= 1;
 	        		waddra_ifmap <= pixel_point_;
                    pixel_point_ <= next_pixel_point;
                  end
 	        	FSM <= WAIT;
              end
 	        else begin
                load_data_finish_flag <= load_data_finish_flag;
 	        	FSM <= INITIAL;
              end
            end
		 WAIT: begin
		    fmap_ready_to_pe <= 0;	
		    load_one_cloumn_finish <= 0; 
	 	    if (!empty && ((load_one_cloumn_num==1)|!load_one_cloumn_finish))begin
    			fifo_rd_en <= 1;
    			wea_ifmap <= 0;
    			FSM <= LOAD_FROM_FIFO;
    		end 
		 	
		 	else begin
		 		FSM <= WAIT;
		 		fifo_rd_en <= 0;
		 		wea_ifmap <= 0;
              end
            end
        LOAD_FROM_FIFO: begin
        	fifo_rd_en <= 0;
            wea_ifmap <= 1;
        	waddra_ifmap <= waddra_ifmap + 1;
            if(one_column_flag) begin
              load_one_cloumn_finish <= 1;
              loading_one_column_flg <= 0;
              case(control_bits)
              2'b11,2'b10:
                    begin
                      fmap_ready_to_pe <= 1;
        	          FSM <= INITIAL;
        	          pixel_point_ <= 0;
                      load_data_finish_flag <= 1;
                    end
              2'b01: begin
        	    	  fmap_ready_to_pe <= 0;
        	    	  FSM <= WAIT;
	        		  pixel_point_ <= next_pixel_point;
                    end
              2'b00:begin
	        		  fmap_ready_to_pe <= 1;
	        	      FSM <= INITIAL;
	        	      pixel_point_ <= pixel_point_;
                    end
              default:;
              endcase
            end
        	else begin
        		load_one_cloumn_finish <= 0;
        		fmap_ready_to_pe <= 0; 
        		FSM <= WAIT;
              end
          end
        default;
		endcase
      end
    end
wire [ADDRESSWIDTH_F_PAD-1:0] addr_gap = waddra_ifmap-raddra_ifmap;
wire addr_closed = (addr_gap<3) & (raddra_ifmap!=0);    
assign pixel_point = load_full_cloumn_flg?0:pixel_point_;

assign  pad_data_ready = load_full_cloumn_flg?(waddra_ifmap > 3):1;
assign  pad_full = load_full_cloumn_flg?(addr_closed)&(~load_data_finish_flag):(loading_one_column_flg&addr_gap<2);

                     

endmodule
