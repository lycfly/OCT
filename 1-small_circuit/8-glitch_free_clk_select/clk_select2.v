// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : clk_select2.v
// Author        : 
// Created On    : 2020-04-03 15:38
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------



`timescale 1ns/1ps

module clk_select2(

input                                   clk1,
input                                   clk2,
input                                   rst_n,
input                                   sel,
output                                  clk_out 
);

reg ff1;
reg ff2;

always @(negedge clk1 or negedge rst_n) begin
    if(!rst_n) ff1 <= 1'b0;
    else begin
        ff1 <= ~ff2 & sel;
      end
    end
always @(negedge clk2 or negedge rst_n) begin
    if(!rst_n) ff2 <= 1'b0;
    else begin
        ff2 <= ~ff1 & ~sel;
      end
    end

assign clk_out = (ff1 & clk1) | (ff2 & clk2); 


endmodule



