// -----------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : 2bit_input_seq_detector_tb.v
// Author        : Yicheng Lu
// Created On    : 2020-06-01 23:57:02
// Last Modified :
// -----------------------------------------------------------------
// Description:
//
// -----------------------------------------------------------------

`timescale 1ns/1ps

module two_bit_input_seq_detector_tb();


reg         clk;
reg         rst_n;
reg   [1:0] data;

wire     success;
reg [127:0] seq;


always #1 clk = ~clk;
initial begin
  clk = 0;
  data = 0;
  rst_n = 1;
  #4 rst_n = 0; #2 rst_n = 1;

  seq = 0;
  while(1) begin
    @(posedge clk) begin 
      data <= $random%4;
      seq <= (seq<<2) + data;
    end
  end

end



two_bit_input_seq_detector U_2BIT_INPUT_SEQ_DETECTOR_0
(  .clk     ( clk     ),
   .rst_n   ( rst_n   ),
   .data    ( data    ),
   .success ( success ));


initial begin
  $fsdbDumpvars();
  $fsdbDumpMDA();
  $dumpvars();
  #1000 $finish;
end

endmodule

