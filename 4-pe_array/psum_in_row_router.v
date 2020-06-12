// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : psum_in_row_router.v
// Author        : 
// Created On    : 2020-06-12 10:10
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------



module psum_in_row_router
#(
	parameter  DATA_WIDTH      = 16,
    parameter  PSUM_DATA_WIDTH = 48,
    parameter  ID_WIDTH        = 8
)
(
input                                           clk,
input                                           rst_n,
input                                           config_state,             //start load config parameter
input                                           ce,

input                  [ID_WIDTH-1:0]           source_id,                
input                  [ID_WIDTH-1:0]           dest_id,                   //input psum id width = id width + 1 (acc tag)

input            [DATA_WIDTH-1:0]				bus_data_in,
input                                           bus_data_valid,
input                                           pe_mac_finish,             // pe mac finish signal 

output wire      [DATA_WIDTH-1:0]				pe_psum_in,     
output wire                                     pe_psum_in_en,
output wire                                     pe_ready                   // to psum in bus control
);

reg  [ID_WIDTH-1:0]    stored_id;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		// reset
		stored_id <= 0;
	end
	else if (config_state && ce) begin
		stored_id <= dest_id;
	end
end
wire id_equal_flag;

assign id_equal_flag = (stored_id==source_id);
assign pe_ready = id_equal_flag?pe_mac_finish:0;
assign pe_psum_in = id_equal_flag?bus_data_in:0;
assign pe_psum_in_en = id_equal_flag?bus_data_valid:0;

endmodule
