// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : two_bit_input_seq_detector_v2.v
// Author        : 
// Created On    : 2020-06-02 11:25
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------




`timescale 1ns/1ps

module two_bit_input_seq_detector_v2
(
input                                   clk,
input                                   rst_n,
input        [1:0]                      data,
output                                  success
);

parameter DETECTOR = 7'b1011001;
reg [7:0] fifo;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
      fifo <= 8'b0;
    end else begin
      fifo <= {fifo[5:0],data};
    end
end

assign success = (fifo[7:1]==DETECTOR || fifo[6:0]==DETECTOR) ? 1:0;

endmodule


