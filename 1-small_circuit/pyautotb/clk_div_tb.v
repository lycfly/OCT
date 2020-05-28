// -----------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : clk_div_tb.v
// Author        : Yicheng Lu
// Created On    : 2020-05-12 23:15:08
// Last Modified :
// -----------------------------------------------------------------
// Description:
//
// -----------------------------------------------------------------

`timescale 1ns/1ps

module clk_div_tb();

parameter DIV = 3;

reg   clk_in;
reg   rst_n;

wire   clk_out;


always #1 clk_in = ~clk_in;
initial begin
  clk_in = 0;
  rst_n = 1;
  #4 rst_n = 0; #2 rst_n = 1;
end

clk_div #(  .DIV (DIV))
U_CLK_DIV_0
(  .clk_in  (clk_in ),
   .rst_n   ( rst_n ),
   .clk_out (clk_out));


initial begin
  $fsdbDumpvars();
  $fsdbDumpMDA();
  $dumpvars();
  #1000 $finish;
end

endmodule

