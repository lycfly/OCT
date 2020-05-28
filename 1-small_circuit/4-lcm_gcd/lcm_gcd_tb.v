// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : lcm_gcd_tb.v
// Author        : 
// Created On    : 2020-05-10 22:36
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------




`timescale 1ns/1ps



module lcm_gcd_tb();

parameter DATAWIDTH = 8;
reg   [DATAWIDTH-1:0]       A;
reg   [DATAWIDTH-1:0]       B;
reg                         en;
reg                         clk;
reg                         rstn;

wire [DATAWIDTH*2-1:0]      lcm_out;
wire [DATAWIDTH-1:0]        gcd_out;
wire                        vld_out;
wire                        ready;


reg [DATAWIDTH*2-1:0]      lcm_ref;
reg [DATAWIDTH-1:0]        gcd_ref;

always #1 clk = ~clk;

function automatic integer gcd(input integer A,input integer B);
    if(A>B) 
      return gcd(B,A-B);
    else if (A<B) 
      return gcd(A,B-A);
    else 
      return A;
endfunction


integer i;
initial begin
  clk = 1;
  rstn = 1;
  en = 0;
  #2 rstn = 0; #2 rstn = 1;
  repeat(2) @(posedge clk);

  for(i=0;i<20;i=i+1) begin
    en <= 1;
    A <= $urandom()%20+1; // no zero input
    B <= $urandom()%20+1;
    gcd_ref = gcd(A,B);
    lcm_ref = A*B/gcd_ref;
    @(posedge vld_out);
   end

end


initial begin
    $fsdbDumpvars();
    $fsdbDumpMDA();
    $dumpvars();
    #1000 $finish;
  end


lcm_gcd #(
    .DATAWIDTH                      ( DATAWIDTH                     ))
U_LCM_GCD_0(
    .A                              ( A                             ),
    .B                              ( B                             ),
    .en                             ( en                            ),
    .clk                            ( clk                           ),
    .rstn                           ( rstn                          ),
    .lcm_out                        ( lcm_out                       ),
    .gcd_out                        ( gcd_out                       ),
    .vld_out                        ( vld_out                       ),
    .ready                          ( ready                         )
);



endmodule


