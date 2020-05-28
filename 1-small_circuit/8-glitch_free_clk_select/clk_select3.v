// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : clk_select3.v
// Author        : 
// Created On    : 2020-04-03 16:10
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------




`timescale 1ns/1ps

module clk_select3(

input                                   clk1,
input                                   clk2,
input                                   rst_n,
input                                   sel,
output                                  clk_out 
);

reg ff1,ff1_d;
reg ff2,ff2_d;

always @(negedge clk1 or negedge rst_n) begin
    if(!rst_n)  {ff1,ff1_d} <= 2'b00;
    else begin
        ff1_d <= ~ff2 & sel;
        ff1 <= ff1_d;
      end
    end
always @(negedge clk2 or negedge rst_n) begin
    if(!rst_n) {ff2,ff2_d} <= 2'b00;
    else begin
        ff2_d <= ~ff1 & ~sel;
        ff2 <= ff2_d;        
      end
    end

assign clk_out = (ff1 & clk1) | (ff2 & clk2); 


endmodule

