// *********************************************************************************
// Project Name : OCT
// Create Time  : 2019/12/28 
// File Name    : psum_out_router.v
// Module Name  : psum_out_router
// Abstract     :
// editor		: sublime text 3
// *********************************************************************************
// Modification History:
// Date         By              Version                 Change Description
// -----------------------------------------------------------------------
// 2019/12/28    Yicheng Lu         1.0                     Original
//  
// *********************************************************************************
`timescale 1ns/1ps


module psum_out_router
#(
	parameter  DATA_WIDTH = 16,
    parameter  ID_WIDTH   = 8
)
(
input                                           clk,
input                                           rst_n,
input                                           config_state,             // start load config parameter
input                                           ce,                       // used to load id

input             [ID_WIDTH-1:0]                source_id,
input             [ID_WIDTH-1:0]                dest_id,

input             [DATA_WIDTH-1:0]				data_from_pe,
input                                           data_from_pe_en,
input                                           psum_out_start_in,
output wire                                     psum_out_start_out,

output wire        [DATA_WIDTH-1:0]				data_to_bus,     
output wire                                     data_to_bus_en


);
wire id_equal;
reg  [ID_WIDTH-1:0]    stored_id;
assign id_equal = (stored_id==source_id);

always @(posedge clk or negedge rst_n) begin
  if (!rst_n) begin
    // reset
    stored_id <= 0;
  end
  else if (config_state && ce) begin
    stored_id <= dest_id;
  end
end

assign data_to_bus_en = id_equal?data_from_pe_en:0;
assign data_to_bus = id_equal?data_from_pe:0;
assign psum_out_start_out = id_equal?psum_out_start_in:0;
endmodule

