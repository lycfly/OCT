// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : div_fsm_tb.v
// Author        : 
// Created On    : 2020-05-10 20:13
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------




`timescale 1ns/1ps

module div_fsm_tb();

parameter DATAWIDTH = 16;

reg  clk;
reg  rstn;       
reg  en;    
wire ready;     
reg  [DATAWIDTH-1:0]    dividend; 
reg  [DATAWIDTH-1:0]    divisor;
wire [DATAWIDTH-1:0]    quotient;
wire [DATAWIDTH-1:0]    remainder;
wire                    vld_out;

wire [DATAWIDTH-1:0]    quotient_ref; // true result
wire [DATAWIDTH-1:0]    remainder_ref; 
assign quotient_ref = dividend/divisor;
assign remainder_ref = dividend%divisor;

always #1 clk = ~clk;

integer i;
initial begin
  clk = 1;
  rstn = 1;
  en = 0;
  #2 rstn = 0; #2 rstn = 1;
  repeat(2) @(posedge clk);

  for(i=0;i<10;i=i+1) begin
    en <= 1;
    dividend <= $urandom()%1000;
    divisor  <= $urandom()%100;
    wait (ready == 1);
    wait (vld_out == 1);
  end


end


initial begin
    $fsdbDumpvars();
    $fsdbDumpMDA();
    $dumpvars();
    #1000 $finish;
 end

div_fsm #(
    .DATAWIDTH                      ( DATAWIDTH  ))
U_DIV_FSM_0(
    .clk                            ( clk        ),
    .rstn                           ( rstn       ),
    .en                             ( en         ),
    .ready                          ( ready      ),
    .dividend                       ( dividend   ),
    .divisor                        ( divisor    ),
    .quotient                       ( quotient   ),
    .remainder                      ( remainder  ),
    .vld_out                        ( vld_out    )
);


endmodule


