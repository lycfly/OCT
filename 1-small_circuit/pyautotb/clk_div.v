// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : clk_div.v
// Author        : 
// Created On    : 2020-04-01 10:44
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------

`timescale 1ns/1ps

module clk_div(clk_in,rst_n,clk_out);

  parameter DIV = 3;


input                                   clk_in;
input                                   rst_n;

output                                 clk_out;


parameter WIDTH = $clog2(DIV);
parameter HALF_DIV = (DIV-1)/2;
reg [WIDTH-1:0] cnt;
reg clk_div1;
reg clk_div2;
assign clk_out = clk_div1 | clk_div2;


always@(posedge clk_in or negedge rst_n) begin
  if (!rst_n) begin
    cnt <= 0;
  end else begin
    if(cnt == DIV-1) cnt <= 0;
    else cnt <= cnt + 1;
  end
end

always@(posedge clk_in or negedge rst_n) begin
  if (!rst_n) begin
    clk_div1 <= 0;
  end else begin
    if(cnt==HALF_DIV-1) begin
      clk_div1 <= 0;
    end
    else if(cnt == DIV-1)begin
      clk_div1 <= 1;
    end 
    else begin
      clk_div1 <= clk_div1;
    end
  end
end

always@(negedge clk_in or negedge rst_n) begin
  if (!rst_n) begin
    clk_div2 <= 0;
  end else begin
    if(cnt==HALF_DIV-1) begin
      clk_div2 <= 0;
    end
    else if(cnt == DIV-1)begin
      clk_div2 <= 1;
    end 
    else begin
      clk_div2 <= clk_div2;
    end
  end
end
endmodule


