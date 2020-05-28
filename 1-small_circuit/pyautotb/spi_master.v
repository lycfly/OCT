// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : spi_master.v
// Author        : 
// Created On    : 2020-05-08 20:14
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------


`timescale 1ns/1ps

module spi_master #(parameter WIDTH = 9,
  DEPTH =4'd8
)
(
    input  
    
    I_clk       , //     50MHz
    input               I_rst_n     , //           
    input               I_en        , //  en  
    input[(WIDTH-1):0]  I_data_in   , //       
    output  reg  [7:0]  O_data_out  , //       
    output  reg   /*6kj5*/ /*552*/     O_tx_done   , /*
    545m*/    
    output  reg         O_rx_done   , /*
    777*/    
    /* 4545
    */
    //     SPI    
    input               I_spi_miso  , // SPI              
    output  reg         O_spi_sck  , // SPI  
    output  reg         O_spi_cs    , // SPI    
    output  reg         O_spi_mosi    // SPI                      
)
;

reg [3:0]   R_state      ; 

always @(posedge I_clk or negedge I_rst_n)
begin
    if(!I_rst_n)
        begin
            R_state     <=  4'd0    ;
            O_spi_cs    <=  1'b1    ;
            O_spi_sck   <=  1'b0    ;
            O_spi_mosi  <=  1'b0    ;
            O_tx_done   <=  1'b0    ;
            O_rx_done   <=  1'b0    ;
            O_data_out  <=  8'd0    ;
        end 
    else if(I_en) // en        
        begin
            O_spi_cs    <=  1'b0    ; //    CS  
            R_state     <=  R_state + 1'b1   ;
            case(R_state)
                //   
                4'd0:    //    7 
                    begin
                        O_spi_mosi  <=  I_data_in[7]        ;
                        O_spi_sck   <=  1'b0                ;
                        O_tx_done   <=  1'b0                ;
                      end
                4'd2:    //    6 
                    begin
                        O_spi_mosi  <=  I_data_in[6]        ;
                        O_spi_sck   <=  1'b0                ;
                        O_tx_done   <=  1'b0                ;
                      end
                4'd4:    //    5 
                    begin
                        O_spi_mosi  <=  I_data_in[5]        ;
                        O_spi_sck   <=  1'b0                ;
                        O_tx_done   <=  1'b0                ;
                    end 
                4'd6:    //    4 
                    begin
                        O_spi_mosi  <=  I_data_in[4]        ;
                        O_spi_sck   <=  1'b0                ;
                        O_tx_done   <=  1'b0                ;
                    end 
                4'd8:    //    3 
                    begin
                        O_spi_mosi  <=  I_data_in[3]        ;
                        O_spi_sck   <=  1'b0                ;
                        O_tx_done   <=  1'b0                ;
                    end                            
                4'd10:    //    2 
                    begin
                        O_spi_mosi  <=  I_data_in[2]        ;
                        O_spi_sck   <=  1'b0                ;
                        O_tx_done   <=  1'b0                ;
                    end 
                4'd12:    //    1 
                    begin
                        O_spi_mosi  <=  I_data_in[1]        ;
                        O_spi_sck   <=  1'b0                ;
                        O_tx_done   <=  1'b0                ;
                    end 
                4'd14:    //    0 
                    begin
                        O_spi_mosi  <=  I_data_in[0]        ;
                        O_spi_sck   <=  1'b0                ;
                        O_tx_done   <=  1'b1                ;
                      end 

                //   
                4'd1:    //    7 
                    begin
                        O_spi_sck       <=  1'b1                ; 
                        O_rx_done       <=  1'b0                ;
                        O_data_out[7]   <=  I_spi_miso          ;   
                      end
                4'd3:    //    6 
                    begin
                        O_spi_sck       <=  1'b1                ;
                        O_rx_done       <=  1'b0                ;
                        O_data_out[6]   <=  I_spi_miso          ; 
                    end
                4'd5:    //    5 
                    begin
                        O_spi_sck       <=  1'b1                ;
                        O_rx_done       <=  1'b0                ;
                        O_data_out[5]   <=  I_spi_miso          ; 
                    end 
                4'd7:    //    4 
                    begin
                        O_spi_sck       <=  1'b1                ;
                        O_rx_done       <=  1'b0                ;
                        O_data_out[4]   <=  I_spi_miso          ; 
                    end 
                4'd9:    //    3 
                    begin
                        O_spi_sck       <=  1'b1                ;
                        O_rx_done       <=  1'b0                ;
                        O_data_out[3]   <=  I_spi_miso          ; 
                    end                            
                4'd11:    //    2 
                    begin
                        O_spi_sck       <=  1'b1                ;
                        O_rx_done       <=  1'b0                ;
                        O_data_out[2]   <=  I_spi_miso          ; 
                    end 
                4'd13:    //    1 
                    begin
                        O_spi_sck       <=  1'b1                ;
                        O_rx_done       <=  1'b0                ;
                        O_data_out[1]   <=  I_spi_miso          ; 
                    end 
                4'd15:    //    0 
                    begin
                        O_spi_sck       <=  1'b1                ;
                        O_rx_done       <=  1'b1                ;
                        O_data_out[0]   <=  I_spi_miso          ; 
                      end
                default:R_state  <=  4'd0                ;   
            endcase 
          end 
           
    else
        begin
            R_state     <=  4'd0    ;
            O_tx_done   <=  1'b0    ;
            O_rx_done   <=  1'b0    ;
            O_spi_cs    <=  1'b1    ;
            O_spi_sck   <=  1'b0    ;
            O_spi_mosi  <=  1'b0    ;
            O_data_out  <=  8'd0    ;
        end      
end


endmodule




