// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : spi_master_tb.v
// Author        : 
// Created On    : 2020-05-08 20:30
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------




`timescale 1ns/1ps

module spi_master_tb();

reg I_clk;
reg I_rst_n;
reg I_en;
reg  [7:0]I_data_in; 
wire [7:0]O_data_out;
wire O_tx_done;  
wire O_rx_done;

wire I_spi_miso;
wire O_spi_sck;  
wire O_spi_cs;  
wire O_spi_mosi;

always #1 I_clk = ~ I_clk;

assign I_spi_miso = O_spi_mosi;

integer i;
initial begin
  I_clk = 1;
  I_en = 0;
  I_data_in = 0;
  I_rst_n = 1; #2 I_rst_n = 0; #2 I_rst_n = 1;

  #20;
  @(posedge I_clk) begin
      I_en <= 1;
      I_data_in <= 0;
    end
  for(i=1;i<20;i=i+1) begin
    @(negedge O_tx_done) begin
      I_data_in <= i;
    end
  end
  I_en <= 0;
end


spi_master U_SPI_MASTER_0(
    .I_clk                          ( I_clk                         ),
    .I_rst_n                        ( I_rst_n                       ),
    .I_en                           ( I_en                          ),
    .I_data_in                      ( I_data_in                     ),
    .O_data_out                     ( O_data_out                    ),
    .O_tx_done                      ( O_tx_done                     ),
    .O_rx_done                      ( O_rx_done                     ),
    .I_spi_miso                     ( I_spi_miso                    ),
    .O_spi_sck                      ( O_spi_sck                     ),
    .O_spi_cs                       ( O_spi_cs                      ),
    .O_spi_mosi                     ( O_spi_mosi                    )
);

initial begin
    $fsdbDumpvars();
    $fsdbDumpMDA();
    $dumpvars();
    #1000 $finish;
 end

endmodule


