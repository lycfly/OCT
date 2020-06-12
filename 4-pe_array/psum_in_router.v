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

module psum_in_router
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

input             [ID_WIDTH-1:0]                source_id,                
input             [ID_WIDTH-1:0]                dest_id,                   //input psum id width = id width + 1 (acc tag)

input            [DATA_WIDTH-1:0]				bus_data_in,
input                                           bus_data_valid,
input            [PSUM_DATA_WIDTH-1:0]          last_pe_data_in,
input                                           last_pe_data_valid,
input                                           pe_mac_finish,             // pe mac finish signal 

output reg       [PSUM_DATA_WIDTH-1:0]          pe_psum_in,     
output reg                                      pe_psum_in_en,
output wire                                     pe_ready                   // to psum in bus control

);

localparam WIDTH_GAP_NUM = PSUM_DATA_WIDTH-DATA_WIDTH;
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
wire [1:0] flag;

assign id_equal_flag = ({1'b0,stored_id[ID_WIDTH-1:1]}==source_id[ID_WIDTH-1:0]);
assign flag = {id_equal_flag,stored_id[0]};
assign pe_ready = id_equal_flag?pe_mac_finish:0;
// stored_id msb==1,pe psum input = last pe psum out
always @(*) begin
	case(flag)
	2'b00: begin
	           pe_psum_in = 0;
	           pe_psum_in_en = 0;
             end
	2'b01: begin
	           pe_psum_in = last_pe_data_in;
	           pe_psum_in_en = last_pe_data_valid;
           end   
	2'b10: begin
	           pe_psum_in = {{WIDTH_GAP_NUM{bus_data_in[DATA_WIDTH-1]}},bus_data_in};
	           pe_psum_in_en = bus_data_valid;
           end    
	2'b11: begin
	           pe_psum_in = last_pe_data_in;
	           pe_psum_in_en = last_pe_data_valid;
           end
    endcase
end


endmodule
