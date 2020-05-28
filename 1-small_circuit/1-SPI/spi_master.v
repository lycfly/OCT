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

module spi_master
(
    input               I_clk       , // 全局时钟50MHz
    input               I_rst_n     , // 复位信号，低电平有效
    input               I_en        , //  en信号
    input        [7:0]  I_data_in   , // 要发送的数据
    output  reg  [7:0]  O_data_out  , // 接收到的数据
    output  reg         O_tx_done   , // 发送一个字节完毕标志位
    output  reg         O_rx_done   , // 接收一个字节完毕标志位
    
    // 四线标准SPI信号定义
    input               I_spi_miso  , // SPI串行输入，用来接收从机的数据
    output  reg         O_spi_sck   , // SPI时钟
    output  reg         O_spi_cs    , // SPI片选信号
    output  reg         O_spi_mosi    // SPI输出，用来给从机发送数据          
);

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
    else if(I_en) // en信号打开的情况下
        begin
            O_spi_cs    <=  1'b0    ; // 把片选CS拉低
            R_state     <=  R_state + 1'b1   ;
            case(R_state)
                // 发送
                4'd0:    // 发送第7位
                    begin
                        O_spi_mosi  <=  I_data_in[7]        ;
                        O_spi_sck   <=  1'b0                ;
                        O_tx_done   <=  1'b0                ;
                      end
                4'd2:    // 发送第6位
                    begin
                        O_spi_mosi  <=  I_data_in[6]        ;
                        O_spi_sck   <=  1'b0                ;
                        O_tx_done   <=  1'b0                ;
                      end
                4'd4:    // 发送第5位
                    begin
                        O_spi_mosi  <=  I_data_in[5]        ;
                        O_spi_sck   <=  1'b0                ;
                        O_tx_done   <=  1'b0                ;
                    end 
                4'd6:    // 发送第4位
                    begin
                        O_spi_mosi  <=  I_data_in[4]        ;
                        O_spi_sck   <=  1'b0                ;
                        O_tx_done   <=  1'b0                ;
                    end 
                4'd8:    // 发送第3位
                    begin
                        O_spi_mosi  <=  I_data_in[3]        ;
                        O_spi_sck   <=  1'b0                ;
                        O_tx_done   <=  1'b0                ;
                    end                            
                4'd10:    // 发送第2位
                    begin
                        O_spi_mosi  <=  I_data_in[2]        ;
                        O_spi_sck   <=  1'b0                ;
                        O_tx_done   <=  1'b0                ;
                    end 
                4'd12:    // 发送第1位
                    begin
                        O_spi_mosi  <=  I_data_in[1]        ;
                        O_spi_sck   <=  1'b0                ;
                        O_tx_done   <=  1'b0                ;
                    end 
                4'd14:    // 发送第0位
                    begin
                        O_spi_mosi  <=  I_data_in[0]        ;
                        O_spi_sck   <=  1'b0                ;
                        O_tx_done   <=  1'b1                ;
                      end 

                // 接收
                4'd1:    // 接收第7位
                    begin
                        O_spi_sck       <=  1'b1                ; 
                        O_rx_done       <=  1'b0                ;
                        O_data_out[7]   <=  I_spi_miso          ;   
                      end
                4'd3:    // 接收第6位
                    begin
                        O_spi_sck       <=  1'b1                ;
                        O_rx_done       <=  1'b0                ;
                        O_data_out[6]   <=  I_spi_miso          ; 
                    end
                4'd5:    // 接收第5位
                    begin
                        O_spi_sck       <=  1'b1                ;
                        O_rx_done       <=  1'b0                ;
                        O_data_out[5]   <=  I_spi_miso          ; 
                    end 
                4'd7:    // 接收第4位
                    begin
                        O_spi_sck       <=  1'b1                ;
                        O_rx_done       <=  1'b0                ;
                        O_data_out[4]   <=  I_spi_miso          ; 
                    end 
                4'd9:    // 接收第3位
                    begin
                        O_spi_sck       <=  1'b1                ;
                        O_rx_done       <=  1'b0                ;
                        O_data_out[3]   <=  I_spi_miso          ; 
                    end                            
                4'd11:    // 接收第2位
                    begin
                        O_spi_sck       <=  1'b1                ;
                        O_rx_done       <=  1'b0                ;
                        O_data_out[2]   <=  I_spi_miso          ; 
                    end 
                4'd13:    // 接收第1位
                    begin
                        O_spi_sck       <=  1'b1                ;
                        O_rx_done       <=  1'b0                ;
                        O_data_out[1]   <=  I_spi_miso          ; 
                    end 
                4'd15:    // 接收第0位
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


