// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : clk_select.v
// Author        : 
// Created On    : 2020-04-03 14:32
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------


`timescale 1ns/1ps

module clk_select1(

input                                   clk1,
input                                   clk2,
input                                   rst_n,
input                                   sel,
output                                  clk_out 
);

assign clk_out = sel?clk1:clk2;


endmodule


