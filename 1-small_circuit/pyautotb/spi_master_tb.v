// -----------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : spi_master_tb.v
// Author        : Yicheng Lu
// Created On    : 2020-05-12 16:52:31
// Last Modified :
// -----------------------------------------------------------------
// Description:
//
// -----------------------------------------------------------------

`timescale 1ns/1ps

module spi_master_tb();

parameter WIDTH = 9;
parameter DEPTH = 4'd8;

reg               I_clk;
reg               I_rst_n;
reg               I_en;
reg [(WIDTH-1):0] I_data_in;
reg               I_spi_miso;

wire [7:0] O_data_out;
wire       O_tx_done;
wire       O_rx_done;
wire       O_spi_sck;
wire       O_spi_cs;
wire       O_spi_mosi;


always #1 I_clk = ~I_clk;
initial begin
  I_clk = 0;
  I_en = 0;
  I_data_in = 0;
  I_spi_miso = 0;
  I_rst_n = 1;
  #4 I_rst_n = 0; #2 I_rst_n = 1;
end

spi_master #(  .WIDTH (WIDTH),
               .DEPTH (DEPTH))
U_SPI_MASTER_0
(  .I_clk         (    I_clk    ),
   .I_rst_n       (   I_rst_n   ),
   .I_en          (    I_en     ),
   .I_data_in     (  I_data_in  ),
   .I_spi_miso    ( I_spi_miso  ),
   .O_data_out    ( O_data_out  ),
   .O_tx_done     (  O_tx_done  ),
   .O_rx_done     (  O_rx_done  ),
   .O_spi_sck     (  O_spi_sck  ),
   .O_spi_cs      (  O_spi_cs   ),
   .O_spi_mosi    ( O_spi_mosi  ));


initial begin
  $fsdbDumpvars();
  $fsdbDumpMDA();
  $dumpvars();
  #1000 $finish;
end

endmodule

