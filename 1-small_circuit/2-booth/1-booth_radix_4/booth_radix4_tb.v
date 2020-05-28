// -----------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : booth_radix4_tb.v
// Author        : Yicheng Lu
// Created On    : 2020-05-14 16:31:41
// Last Modified :
// -----------------------------------------------------------------
// Description:
//
// -----------------------------------------------------------------

`timescale 1ns/1ps

module booth_radix4_tb();
`define TEST_WIDTH 10

parameter WIDTH_M = `TEST_WIDTH;
parameter WIDTH_R = `TEST_WIDTH;

reg                 clk;
reg                 rstn;
reg                 vld_in;
reg   [WIDTH_M-1:0] multiplicand;
reg   [WIDTH_R-1:0] multiplier;

wire   [WIDTH_M+WIDTH_R-1:0] mul_out;
wire                         done;
//输入 ：要定义有符号和符号，输出：无要求
wire signed [2*`TEST_WIDTH-1:0] product;
wire signed [`TEST_WIDTH-1:0]                m1_in;
wire signed [`TEST_WIDTH-1:0]                m2_in;

reg  signed [2*`TEST_WIDTH-1:0] product_ref;
reg  [2*`TEST_WIDTH-1:0] product_ref_u;

assign m1_in = multiplier[`TEST_WIDTH-1:0];
assign m2_in = multiplicand[`TEST_WIDTH-1:0];


always #1 clk = ~clk;
integer i,j;
integer num_good;
initial begin
  clk = 0;
  vld_in = 0;
  multiplicand = 0;
  multiplier = 0;
  num_good = 0;
  rstn = 1;
  #4 rstn = 0; #2 rstn = 1;
  repeat(2) @(posedge clk);
  for (i = 0; i < (1<<`TEST_WIDTH); i = i + 1) begin
    for (j = 0; j < (1<<`TEST_WIDTH); j = j + 1) begin
      vld_in = 1;
      wait (done == 0);
      wait (done == 1);
      product_ref=m1_in*m2_in;
      product_ref_u=m1_in*m2_in;
      if (product_ref != mul_out) begin
        $display("multiplier = %d multiplicand = %d proudct =%d",m1_in,m2_in,mul_out);
        @(posedge clk);
        $stop;
      end
      else begin
        num_good = num_good + 1;
      end
      multiplicand = multiplicand + 1;
    end
    multiplier = multiplier + 1;
  end
  $display("sim done. num good = %d",num_good);
  $finish;

end

booth_radix4 #(  .WIDTH_M ( WIDTH_M ),
                 .WIDTH_R ( WIDTH_R ))
U_BOOTH_RADIX4_0
(  .clk          ( clk          ),
   .rstn         ( rstn         ),
   .vld_in       ( vld_in       ),
   .multiplicand ( multiplicand ),
   .multiplier   ( multiplier   ),
   .mul_out      ( mul_out      ),
   .done         ( done         ));


initial begin
  $fsdbDumpvars();
  $fsdbDumpMDA();
  $dumpvars();
  # 3000 $finish;
end

endmodule

