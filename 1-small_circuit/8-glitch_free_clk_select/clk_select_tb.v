// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : clk_div_tb.v
// Author        : 
// Created On    : 2020-04-01 10:54
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------
`timescale 1ns/1ps
module clk_select_tb;
reg                                   clk1;
reg                                   clk2;
reg                                   rst_n;
reg                                   sel;
wire                                  clk_comb;
wire                                  clk_reg1;
wire                                  clk_reg2;



initial begin
  clk1 = 1;
  clk2 = 1;
  fork 
    forever #1 clk1 = ~clk1;
    begin
      #1.2;
      clk2 = 1;
      forever #5 clk2 = ~clk2;
    end
  join_none
  
  rst_n = 1;
  sel = 0;
  #2 rst_n = 0;
  #10 rst_n = 1;
  
  #21.7 sel = 1;
end
initial begin
    $fsdbDumpvars();
    $fsdbDumpMDA();
    $dumpvars();
    #100 $finish;
  end

clk_select1 U_CLK_SEL_0(
    .clk1                         ( clk1                        ),
    .clk2                         ( clk2                        ),
    .clk_out                      ( clk_comb                    ),
    .sel                          ( sel                         ),
    .rst_n                        ( rst_n                       )
);

clk_select2 U_CLK_SEL_1(
    .clk1                         ( clk1                        ),
    .clk2                         ( clk2                        ),
    .clk_out                      ( clk_reg1                    ),
    .sel                          ( sel                         ),
    .rst_n                        ( rst_n                       )
);

clk_select3 U_CLK_SEL_2(
    .clk1                         ( clk1                        ),
    .clk2                         ( clk2                        ),
    .clk_out                      ( clk_reg2                    ),
    .sel                          ( sel                         ),
    .rst_n                        ( rst_n                       )
);
endmodule



