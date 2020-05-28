// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : clk_div_tb.v
// Author        : 
// Created On    : 2020-04-01 10:54
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------


`timescale 1ns/1ps

module clk_div_tb(/*autoarg*/);

reg                                   clk_in;
reg                                   rst_n;
wire                                  clk_out;

always #1 clk_in = ~clk_in;

initial begin
  clk_in = 1;
  rst_n = 1;
  #2 rst_n = 0;
  #2 rst_n = 1;

end
initial begin
    $fsdbDumpvars();
    $fsdbDumpMDA();
    $dumpvars();
    #100 $finish;
  end

clk_div #(
    .DIV                            ( 3                             ))
U_CLK_DIV_0(
    .clk_in                         ( clk_in                        ),
    .rst_n                          ( rst_n                         ),
    .clk_out                        ( clk_out                       )
);


endmodule


