// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : pe_set.v
// Author        : 
// Created On    : 2020-06-09 14:46
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------




`timescale 1ns/1ps

module pe_set
#(
   parameter DATA_WIDTH      = 16,
   parameter PSUM_DATA_WIDTH = 48,
   parameter ADDR_WIDTH      = 8,
   parameter PARA_WIDTH      = 8,
   parameter ID_WIDTH        = 8,
   parameter W_PAD_SIZE      = 36,
   parameter IF_PAD_SIZE     = 12,
   parameter PSUM_PAD_SIZE   = 9,
   parameter PE_FIFO_SIZE    = 2,
   parameter PE_ARRAY_WIDTH  = 4,
   parameter PE_ROW_NUM      = 6,
   parameter PE_CLOUMN_NUM   = 6
)

(
input                                               clk,
input                                               rst_n,
    
input             [PARA_WIDTH-1 : 0]                S,   //8bits
input             [PARA_WIDTH-1 : 0]                U,   //8bits only support 2^n 
input             [PARA_WIDTH-1 : 0]                q,   // q   number of channel processed by a PE set
input             [PARA_WIDTH-1 : 0]                p,   // p   number of filters processed by a PE set
input             [PARA_WIDTH-1 : 0]                k,   // k   the max number of shift (0~9)
input             [PARA_WIDTH-1 : 0]                T,   // T   one outchannel of weight length when mode == 1    
input                                               start_config,             
input                                               start_weight_load,        
input                                               start_feature_load,
input                                               start_psum_out_load,
input                                               load_full_column,         
input                                               mode,                     

input             [ID_WIDTH-1:0]                    row_bus_weight_id,
input             [ID_WIDTH-1:0]                    row_bus_feature_id,
input             [ID_WIDTH-1:0]                    row_bus_inpsum_id,
input             [ID_WIDTH-1:0]                    row_bus_outpsum_id,
input             [ID_WIDTH-1:0]                    column_bus_weight_id,
input             [ID_WIDTH-1:0]                    column_bus_feature_id,
input             [ID_WIDTH-1:0]                    column_bus_inpsum_id,
input             [ID_WIDTH-1:0]                    column_bus_outpsum_id,

// config id input ports
input             [ID_WIDTH-1:0]                    pe_weight_id,             
input             [ID_WIDTH-1:0]                    pe_feature_id,
input             [ID_WIDTH-1:0]                    pe_inpsum_id,
input             [ID_WIDTH-1:0]                    pe_outpsum_id,

input                                               bus_weight_valid,
input             [DATA_WIDTH-1:0]                  bus_weight_in,
 
input                                               bus_feature_valid,
input             [DATA_WIDTH-1:0]		            bus_feature_in,
 
input                                               bus_psum_in_valid,
input             [DATA_WIDTH-1:0]		            bus_psum_in,

output wire                                         bus_psum_out_valid,
output wire       [DATA_WIDTH-1:0]		            bus_psum_out,
 
output reg    [PE_ARRAY_WIDTH-1:0]                  config_cnt,
output reg                                          config_finish,
output wire                                         weight_in_ready,
output wire                                         ifmap_in_ready,
output wire                                         psum_in_ready

);
localparam PE_NUM = PE_ROW_NUM * PE_CLOUMN_NUM;
// mc id config
reg config_state;
reg [PE_NUM-1:0] config_ce;
reg [PE_ROW_NUM-1:0] row_config_ce;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		// reset
		config_cnt <= 0;
		config_state <= 0;
		config_ce <= 0;
		row_config_ce <= 0;
		config_finish <= 0;
      end
	else begin
		case(config_state)
		0 : begin
			    if(start_config)begin
			    	config_state <= 1;
			    	config_finish <= 0;
			    end else begin
			    	config_state <= 0;
			    	config_finish <= 0;
			    end
              end
		1:  begin
			    if(config_cnt ==  PE_NUM+PE_ROW_NUM) begin
			        config_state  <= 0;
			        config_cnt    <= 0;
			        row_config_ce <= 0;
			        config_ce     <= 0;
			        config_finish <= 1;			    
			    end else if(config_cnt == PE_NUM) begin
			        config_cnt    <= config_cnt + 1;
			        row_config_ce <= 1;
			        config_finish <= 0;
			    end else if(config_cnt > PE_NUM) begin
			        config_cnt    <= config_cnt + 1;
			        row_config_ce <= row_config_ce << 1;
			        config_finish <= 0;
			    end else if(config_cnt == 0) begin
			        config_cnt    <= config_cnt + 1;
			        config_ce     <= 1;
			        config_finish <= 0;
			    end else begin
			        config_cnt    <= config_cnt + 1;
			        config_ce     <= config_ce << 1;
			        config_finish <= 0;
			    end
              end
		endcase
      end
end

//----------------------------------------------------------------
//          Data in wires  (include weight,feature and psum_in) 
//----------------------------------------------------------------

wire [DATA_WIDTH-1:0] row_bus_weight_in  [PE_ROW_NUM-1:0];
wire [PE_ROW_NUM-1:0] row_bus_weight_valid;

wire [DATA_WIDTH-1:0] row_bus_feature_in [PE_ROW_NUM-1:0];
wire [PE_ROW_NUM-1:0] row_bus_feature_valid;

wire [DATA_WIDTH-1:0] row_bus_psum_in    [PE_ROW_NUM-1:0];
wire [PE_ROW_NUM-1:0] row_bus_psum_in_valid;

//----------------------------------------------------------------
//          PE inner noc connect wires 
//----------------------------------------------------------------
wire [PSUM_DATA_WIDTH-1:0] last_pe_data_in           [PE_ROW_NUM-1:0][PE_CLOUMN_NUM-1:0];
wire [PE_ROW_NUM-1:0]      last_pe_data_valid        [PE_CLOUMN_NUM-1:0];

wire [PE_ROW_NUM-1:0]      pe_ifmap_load_ready       [PE_CLOUMN_NUM-1:0];
wire [PE_ROW_NUM-1:0]      pe_weight_load_ready      [PE_CLOUMN_NUM-1:0];
wire [PE_ROW_NUM-1:0]      pe_psum_in_load_ready     [PE_CLOUMN_NUM-1:0];

wire [PSUM_DATA_WIDTH-1:0] psum_out_to_next_pe       [PE_ROW_NUM-1:0][PE_CLOUMN_NUM-1:0];
wire [PE_ROW_NUM-1:0]      psum_out_to_next_pe_valid [PE_CLOUMN_NUM-1:0];

//----------------------------------------------------------------
//          PE psum output signals  
//----------------------------------------------------------------
wire [DATA_WIDTH-1:0] row_bus_psum_out [PE_ROW_NUM-1:0];
wire [PE_ROW_NUM-1:0] row_bus_psum_out_valid;
wire [DATA_WIDTH-1:0] row_bus_psum_out_tmp [PE_ROW_NUM-1:0];
wire [PE_ROW_NUM-1:0] row_bus_psum_out_valid_tmp;

wire [DATA_WIDTH-1:0] row_bus_psum_out_to_mc [PE_ROW_NUM-1:0];
wire [PE_ROW_NUM-1:0] row_bus_psum_out_to_mc_valid;

wire [PE_ROW_NUM-1:0] psum_out_start_row_out;

wire [DATA_WIDTH-1:0] column_bus_psum_out [PE_ROW_NUM-1:0][PE_CLOUMN_NUM-1:0];
wire [PE_ROW_NUM-1:0] column_bus_psum_out_valid[PE_CLOUMN_NUM-1:0];

wire [DATA_WIDTH-1:0] column_bus_psum_out_tmp [PE_ROW_NUM-1:0][PE_CLOUMN_NUM-1:0];
wire [PE_ROW_NUM-1:0] column_bus_psum_out_valid_tmp[PE_CLOUMN_NUM-1:0];

//----------------------------------------------------------------
//          PE ready signal concat  
//----------------------------------------------------------------
// 
wire [PE_ROW_NUM-1:0] ifmap_column_load_ready;
wire [PE_ROW_NUM-1:0] weight_column_load_ready;
wire [PE_ROW_NUM-1:0] psum_in_column_load_ready_to_mc;
wire [PE_ROW_NUM-1:0] psum_in_column_load_ready_to_bus;

wire [PE_ROW_NUM-1:0] ifmap_column_load_ready_tmp  [PE_CLOUMN_NUM-1:0]; // used to describe a & b & c & d...
wire [PE_ROW_NUM-1:0] weight_column_load_ready_tmp [PE_CLOUMN_NUM-1:0];
wire [PE_ROW_NUM-1:0] psum_in_column_load_ready_tmp[PE_CLOUMN_NUM-1:0]; // used to describe a | b | c | d...

wire [PE_ROW_NUM-1:0] ifmap_in_ready_tmp;                             // used to describe a & b & c & d...
wire [PE_ROW_NUM-1:0] weight_in_ready_tmp;
wire [PE_ROW_NUM-1:0] psum_in_ready_tmp;


assign ifmap_in_ready     = ifmap_in_ready_tmp  [PE_ROW_NUM-1]; 
assign weight_in_ready    = weight_in_ready_tmp [PE_ROW_NUM-1];
assign psum_in_ready      = psum_in_ready_tmp   [PE_ROW_NUM-1];
assign bus_psum_out       = row_bus_psum_out_tmp[PE_ROW_NUM-1];
assign bus_psum_out_valid = row_bus_psum_out_valid_tmp[PE_ROW_NUM-1];
// The last row of inner noc should be connected to zero(default) or next column's outputs. 
genvar a;
generate
    for(a=0;a<PE_CLOUMN_NUM;a=a+1) begin:inner_noc_last_row_loop 
        assign last_pe_data_in[PE_ROW_NUM-1][a] = 0;
        assign last_pe_data_valid[PE_ROW_NUM-1][a] = 0;
      end
endgenerate

//----------------------------------------------------------------
//                           PE Array 
//----------------------------------------------------------------
genvar j;
genvar i;
generate
    for(i=0;i<PE_ROW_NUM;i=i+1) begin:row_loop 
        // Three kind of row mc (weight,feature and inpsum)
        Router #(  .DATA_WIDTH ( DATA_WIDTH ),
                   .ID_WIDTH   ( ID_WIDTH   )) 
             weight_row_mc(
		     .clk                  ( clk),
		     .rst_n                ( rst_n),
		     .config_state         ( config_state),
		     .ce                   ( row_config_ce[i]),
             // source and dest id 
		     .source_id            ( row_bus_weight_id),
		     .dest_id              ( pe_weight_id),
             // input bus data out to pe top input ports
		     .bus_data_in          ( bus_weight_in),
		     .bus_data_valid       ( bus_weight_valid),
		     .pe_data_in           ( row_bus_weight_in[i]),
		     .pe_data_in_en        ( row_bus_weight_valid[i])
		    );

		Router #(  .DATA_WIDTH ( DATA_WIDTH ),
                   .ID_WIDTH   ( ID_WIDTH   ))
             ifmap_row_mc(
		     .clk                  ( clk),
		     .rst_n                ( rst_n),
		     .config_state         ( config_state),
		     .ce                   ( row_config_ce[i]),
             // source and dest id                           
		     .source_id            ( row_bus_feature_id),
		     .dest_id              ( pe_feature_id),
             // input bus data out to pe top input ports               
		     .bus_data_in          ( bus_feature_in),
		     .bus_data_valid       ( bus_feature_valid),
		     .pe_data_in           ( row_bus_feature_in[i]),
		     .pe_data_in_en        ( row_bus_feature_valid[i])
		    );

        psum_in_row_router #(  .DATA_WIDTH ( DATA_WIDTH ),
                               .PSUM_DATA_WIDTH(PSUM_DATA_WIDTH),
                               .ID_WIDTH   ( ID_WIDTH   ))
             inpsum_row_mc(
		     .clk                  ( clk),
		     .rst_n                ( rst_n),
		     .config_state         ( config_state),
		     .ce                   ( row_config_ce[i]),
             // source and dest id                           
		     .source_id            ( row_bus_inpsum_id),
		     .dest_id              ( pe_inpsum_id),
             // input bus data and pe psum from bottom out to pe top input ports   
		     .bus_data_in          ( bus_psum_in),
		     .bus_data_valid       ( bus_psum_in_valid),
		     .pe_mac_finish        ( psum_in_column_load_ready_to_mc[i]),   // pe_mac_finish
		     .pe_psum_in           ( row_bus_psum_in[i]),
		     .pe_psum_in_en        ( row_bus_psum_in_valid[i]),
		     .pe_ready             ( psum_in_column_load_ready_to_bus[i])   // pe_ready to bus
		    );

		psum_out_router #(  .DATA_WIDTH ( DATA_WIDTH ),
                            .ID_WIDTH   ( ID_WIDTH   ))
             outpsum_row_mc(
		     .clk                  ( clk),
		     .rst_n                ( rst_n),
		     .config_state         ( config_state),
		     .ce                   ( row_config_ce[i]),
              // source and dest id      
		     .source_id            ( row_bus_outpsum_id),
		     .dest_id              ( pe_outpsum_id),

		     .data_from_pe         ( row_bus_psum_out_to_mc[i]),
		     .data_from_pe_en      ( row_bus_psum_out_to_mc_valid[i]),
		     .psum_out_start_in    ( start_psum_out_load),
		     .psum_out_start_out   ( psum_out_start_row_out[i]),
		     .data_to_bus          ( row_bus_psum_out[i]),
		     .data_to_bus_en       ( row_bus_psum_out_valid[i])
		    );

        //-------------------- data ready signals to bus control ----------------------------//
        // & ： 表示所有PE都准备好bus才能作出反映
        // | ： 表示只要有一个pe准备好就bus就可以作出反映
        if (i==0) begin:Ready_wire_row_link
          assign ifmap_in_ready_tmp        [0] = ifmap_column_load_ready         [0];
          assign weight_in_ready_tmp       [0] = weight_column_load_ready        [0];
          assign psum_in_ready_tmp         [0] = psum_in_column_load_ready_to_bus[0];
          assign row_bus_psum_out_tmp      [0] = row_bus_psum_out                [0];
          assign row_bus_psum_out_valid_tmp[0] = row_bus_psum_out_valid          [0];
        end else begin
          assign ifmap_in_ready_tmp        [i] = ifmap_in_ready_tmp        [i-1]   & ifmap_column_load_ready         [i];
          assign weight_in_ready_tmp       [i] = weight_in_ready_tmp       [i-1]   & weight_column_load_ready        [i];
          assign psum_in_ready_tmp         [i] = psum_in_ready_tmp         [i-1]   | psum_in_column_load_ready_to_bus[i];
          assign row_bus_psum_out_tmp      [i] = row_bus_psum_out_tmp      [i-1]   | row_bus_psum_out                [i];
          assign row_bus_psum_out_valid_tmp[i] = row_bus_psum_out_valid_tmp[i-1]   | row_bus_psum_out_valid          [i];
        end
        // 获取每一行的ready信号整合后的行ready信号
        assign   ifmap_column_load_ready        [i] = ifmap_column_load_ready_tmp  [i][PE_CLOUMN_NUM-1];
        assign   weight_column_load_ready       [i] = weight_column_load_ready_tmp [i][PE_CLOUMN_NUM-1];
        assign   psum_in_column_load_ready_to_mc[i] = psum_in_column_load_ready_tmp[i][PE_CLOUMN_NUM-1];
        assign   row_bus_psum_out_to_mc         [i] = column_bus_psum_out_tmp      [i][PE_CLOUMN_NUM-1];
        assign   row_bus_psum_out_to_mc_valid   [i] = column_bus_psum_out_valid_tmp[i][PE_CLOUMN_NUM-1];

        for(j=0;j<PE_CLOUMN_NUM;j=j+1) begin:column_loop    
            if (i<=PE_ROW_NUM-1)begin: inner_noc_link
	            assign last_pe_data_in   [i][j] = psum_out_to_next_pe      [i+1][j];             // inner noc
	            assign last_pe_data_valid[i][j] = psum_out_to_next_pe_valid[i+1][j];
              end
            if (j==0) begin: Ready_wire_column_link
            	assign ifmap_column_load_ready_tmp[i][0] = pe_ifmap_load_ready[i][0];
            	assign weight_column_load_ready_tmp[i][0] = pe_weight_load_ready[i][0];
               	assign psum_in_column_load_ready_tmp[i][0] = pe_psum_in_load_ready[i][0];
               	assign column_bus_psum_out_tmp[i][0] = column_bus_psum_out[i][0];
               	assign column_bus_psum_out_valid_tmp[i][0] = column_bus_psum_out_valid[i][0];
            end else begin
            	assign ifmap_column_load_ready_tmp[i][j] = ifmap_column_load_ready_tmp[i][j-1] & pe_ifmap_load_ready[i][j];
            	assign weight_column_load_ready_tmp[i][j] = weight_column_load_ready_tmp[i][j-1] & pe_weight_load_ready[i][j];
                assign psum_in_column_load_ready_tmp[i][j] = psum_in_column_load_ready_tmp[i][j-1] | pe_psum_in_load_ready[i][j];
                assign column_bus_psum_out_tmp[i][j] = column_bus_psum_out_tmp[i][j-1] | column_bus_psum_out[i][j];
               	assign column_bus_psum_out_valid_tmp[i][j] = column_bus_psum_out_valid_tmp[i][j-1] | column_bus_psum_out_valid[i][j];
              end

            pe_top #(
                .DATA_WIDTH                     ( DATA_WIDTH        ),
                .PSUM_DATA_WIDTH                ( PSUM_DATA_WIDTH   ),
                .ADDR_WIDTH                     ( ADDR_WIDTH        ),
                .PARA_WIDTH                     ( PARA_WIDTH        ),
                .ID_WIDTH                       ( ID_WIDTH          ),
                .W_PAD_SIZE                     ( W_PAD_SIZE        ),
                .IF_PAD_SIZE                    ( IF_PAD_SIZE       ),
                .PSUM_PAD_SIZE                  ( PSUM_PAD_SIZE     ),
                .PE_FIFO_SIZE                   ( PE_FIFO_SIZE      ))
            U_PE_TOP_0(
                .clk                            ( clk                           ),
                .rst_n                          ( rst_n                         ),
                .S                              ( S                             ),
                .U                              ( U                             ),
                .q                              ( q                             ),
                .p                              ( p                             ),
                .j                              ( j                             ),
                .k                              ( k                             ),
                .T                              ( T                             ),
                .start_config                   ( start_config                  ),
                .config_state                   ( config_state                  ),
                .ce                             ( config_ce[i*PE_ROW_NUM+j]     ),
                .start_weight_load              ( start_weight_load             ),
                .start_feature_load             ( start_feature_load            ),
                .load_full_column               ( load_full_column              ),
                .mode                           ( mode                          ),

                .bus_weight_id                  ( column_bus_weight_id          ),
                .bus_feature_id                 ( column_bus_feature_id         ),
                .bus_inpsum_id                  ( column_bus_inpsum_id          ),
                .bus_outpsum_id                 ( column_bus_outpsum_id         ),
                .pe_weight_id                   ( pe_weight_id                  ),
                .pe_feature_id                  ( pe_feature_id                 ),
                .pe_inpsum_id                   ( pe_inpsum_id                  ),
                .pe_outpsum_id                  ( pe_outpsum_id                 ),

                .bus_weight_in                  ( row_bus_weight_in[i]          ),
                .bus_weight_valid               ( row_bus_weight_valid[i]       ),
                .bus_feature_in                 ( row_bus_feature_in[i]         ),
                .bus_feature_valid              ( row_bus_feature_valid[i]      ),
                .bus_psum_in                    ( row_bus_psum_in[i]            ),
                .bus_psum_in_valid              ( row_bus_psum_in_valid[i]      ),
                .last_pe_data_in                ( last_pe_data_in[i][j]         ),
                .last_pe_data_valid             ( last_pe_data_valid[i][j]      ),

                .psum_out_start_in              ( psum_out_start_row_out[i]     ),
                .bus_psum_out                   ( column_bus_psum_out[i][j]     ),
                .bus_psum_out_valid             ( column_bus_psum_out_valid[i][j]),
                .mac_finish                     (                     ),
                .psum_acc_finish                (                ),
                .pe_ifmap_load_ready            ( pe_ifmap_load_ready[i][j]     ),
                .pe_weight_load_ready           ( pe_weight_load_ready[i][j]    ),
                .pe_psum_in_load_ready          ( pe_psum_in_load_ready[i][j]   ),
                .shift_finish_flg               (               ),
                .clip_finish_flg                (                ),
                .psum_out_to_next_pe_valid      ( psum_out_to_next_pe_valid[i][j]),
                .psum_out_to_next_pe            ( psum_out_to_next_pe[i][j]     )
            );
	
          end
    end
endgenerate
endmodule





