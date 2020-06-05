`timescale 1ns / 1ps
// *********************************************************************************
// Project Name : OCT
// Create Time  : 2019/10/15 
// File Name    : Router.v
// Module Name  : Router
// Abstract     : Multicast controller
// editor		: sublime text 3
// *********************************************************************************
// Modification History:
// Date         By              Version                 Change Description
// -----------------------------------------------------------------------
// 2019/10/15    Yicheng Lu         1.0                     Original
//  
// *********************************************************************************
`timescale 1ns/1ps

module Router
#(
	parameter DATA_WIDTH=16,
    parameter ID_WIDTH = 8
)
(
input                                           clk,
input                                           rst_n,
input                                           config_state,             //start load config parameter
input                                           ce,

input             [ID_WIDTH-1:0]                source_id,
input             [ID_WIDTH-1:0]                dest_id,
input             [DATA_WIDTH-1:0]				bus_data_in,
input                                           bus_data_valid,

output wire       [DATA_WIDTH-1:0]				pe_data_in,     
output wire                                     pe_data_in_en


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
assign pe_data_in_en = (stored_id==source_id)&bus_data_valid;
assign pe_data_in = pe_data_in_en?bus_data_in:0;

endmodule
