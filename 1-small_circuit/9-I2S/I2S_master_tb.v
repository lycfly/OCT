// -----------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : I2S_master_tb.v
// Author        : Yicheng Lu
// Created On    : 2020-05-12 22:30:33
// Last Modified :
// -----------------------------------------------------------------
// Description:
//
// -----------------------------------------------------------------

`timescale 1ns/1ps

module I2S_master_tb;

	// Inputs
	reg clk_in;
	reg [15:0] data_in;
	reg rstn;
	reg enable;

	// Outputs
	wire DATA;
	wire WS;
	wire clk;
	wire send_over;
	
	wire [15:0] L_DATA;
   wire [15:0] R_DATA;
	wire recv_over;

	// Instantiate the Unit Under Test (UUT)
	I2S_master u_I2S_master (
		.clk_in(clk_in), 
		.data_in(data_in), 
		.rstn(rstn), 
		.enable(enable), 
		.DATA(DATA), 
		.WS(WS), 
		.clk(clk), 
		.send_over(send_over)
	);
	
	I2S_slave u_I2S_slave(
		.rstn(rstn),
	   .clk(clk),
		.WS(WS),
		.DATA(DATA),
	
		.L_DATA(L_DATA),
		.R_DATA(R_DATA),
		.recv_over(recv_over)
    );

	initial begin
		// Initialize Inputs
		clk_in = 0;
		data_in = 0;
		rstn = 0;
		enable = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
		@(negedge clk);
		rstn = 1;
		enable = 1;
		data_in = 16'b1010_0101_1010_0101;
		
		@(negedge send_over);
		data_in = 16'b0101_1010_0101_1010;
        
		// Add stimulus here

	end
	
	always #20 clk_in = ~clk_in;
      
initial begin
    $fsdbDumpvars();
    $fsdbDumpMDA();
    $dumpvars();
    #4000 $finish;
 end
endmodule

