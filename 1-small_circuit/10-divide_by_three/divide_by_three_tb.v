// -----------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : divide_by_three_tb.v
// Author        : Yicheng Lu
// Created On    : 2020-05-19 18:13:08
// Last Modified :
// -----------------------------------------------------------------
// Description:
//
// -----------------------------------------------------------------

`timescale 1ns/1ps

module divide_by_three_tb();

parameter DATAWIDTH = 16;

reg                   clk;
reg                   rst_n;
reg                   vld_in;
reg   [DATAWIDTH-1:0] data_in;

wire   [DATAWIDTH-1:0] quotient;
wire   [1:0]           reminder;
wire   [1:0]           vld_out;

reg   [DATAWIDTH-1:0] quotient_ref;
reg   [1:0]           reminder_ref;


always #1 clk = ~clk;
initial begin
  clk = 0;
  vld_in = 0;
  data_in = 0;
  rst_n = 1;
  #4 rst_n = 0; #2 rst_n = 1;
  
  repeat(10) begin
    @(posedge clk);
    vld_in <= 1;
    data_in = $urandom()%100;
    quotient_ref = data_in/3;
    reminder_ref = data_in%3;
    @(posedge clk);
    vld_in <= 0;
    wait(vld_out==1);
  end
end

divide_by_three #(  .DATAWIDTH ( DATAWIDTH ))
U_DIVIDE_BY_THREE_0
(  .clk      ( clk      ),
   .rst_n    ( rst_n    ),
   .vld_in   ( vld_in   ),
   .data_in  ( data_in  ),
   .quotient ( quotient ),
   .reminder ( reminder ),
   .vld_out  ( vld_out  ));


initial begin
  $fsdbDumpvars();
  $fsdbDumpMDA();
  $dumpvars();
  #1000 $finish;
end

endmodule

