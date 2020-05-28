// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : zuse.v
// Author        : 
// Created On    : 2020-04-01 17:49
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------

`timescale 1ns/1ps

module zuse(/*autoarg*/);

reg clk;
always #0.5 clk = ~clk;
reg a;
initial begin
    clk = 0;
    a <= 0;
    #1 a = 1;
    #2 a = 0;
  end

  
initial begin
    $fsdbDumpvars();
    $fsdbDumpMDA();
    $dumpvars();
    #1000 $finish;
 end
endmodule


