// -----------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : Router_tb.v
// Author        : Yicheng Lu
// Created On    : 2020-06-04 16:59:11
// Last Modified :
// -----------------------------------------------------------------
// Description:
//
// -----------------------------------------------------------------

`timescale 1ns/1ps

module Router_tb();

parameter DATA_WIDTH = 16;
parameter ID_WIDTH   = 8;

reg                    clk;
reg                    rst_n;
reg                    config_state;
reg                    ce;
reg   [ID_WIDTH-1:0]   source_id;
reg   [ID_WIDTH-1:0]   dest_id;
reg   [DATA_WIDTH-1:0] bus_data_in;
reg                    bus_data_valid;

wire   [DATA_WIDTH-1:0] pe_data_in;
wire                    pe_data_in_en;


always #1 clk = ~clk;
initial begin
  clk = 0;
  config_state = 0;
  ce = 0;
  source_id = 0;
  dest_id = 0;
  bus_data_in = 0;
  bus_data_valid = 0;
  rst_n = 1;
  #4 rst_n = 0; #2 rst_n = 1;
end

Router #(  .DATA_WIDTH ( DATA_WIDTH ),
           .ID_WIDTH   ( ID_WIDTH   ))
U_ROUTER_0
(  .clk            ( clk            ),
   .rst_n          ( rst_n          ),
   .config_state   ( config_state   ),
   .ce             ( ce             ),
   .source_id      ( source_id      ),
   .dest_id        ( dest_id        ),
   .bus_data_in    ( bus_data_in    ),
   .bus_data_valid ( bus_data_valid ),
   .pe_data_in     ( pe_data_in     ),
   .pe_data_in_en  ( pe_data_in_en  ));


initial begin
  $fsdbDumpvars();
  $fsdbDumpMDA();
  $dumpvars();
  #1000 $finish;
end

endmodule

