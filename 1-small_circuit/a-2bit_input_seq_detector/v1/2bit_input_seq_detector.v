// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : 2bit_input_seq_detector.v
// Author        : 
// Created On    : 2020-06-01 22:35
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------




`timescale 1ns/1ps

module two_bit_input_seq_detector
(
input                                   clk,
input                                   rst_n,
input        [1:0]                      data,
output reg                              success
);

reg [2:0] current_state;
reg [2:0] next_state;

parameter S0      =  3'b000,
          S1      =  3'b001,
          S10     =  3'b011,
          S101    =  3'b010,
          S1011   =  3'b110,
          S10110  =  3'b111,
          S101100 =  3'b101;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) current_state <= 3'b0;
    else current_state <= next_state;
  end

always @(*) 
  case(current_state)
    S0,S101100: 
            case(data)
              2'b00: next_state = S0;
              2'b01: next_state = S1;
              2'b10: next_state = S10;
              2'b11: next_state = S1;
            endcase
    S1:     case(data)
              2'b00: next_state = S0;
              2'b01: next_state = S101;
              2'b10: next_state = S10;
              2'b11: next_state = S1;
            endcase
    S10,S10110:
            case(data)
              2'b00: next_state = S0;
              2'b01: next_state = S1;
              2'b10: next_state = S10;
              2'b11: next_state = S1011;
            endcase   
    S101:   case(data)
              2'b00: next_state = S0;
              2'b01: next_state = S101;
              2'b10: next_state = S10110;
              2'b11: next_state = S1;
            endcase
    S1011:  case(data)
              2'b00: next_state = S101100;
              2'b01: next_state = S101;
              2'b10: next_state = S10;
              2'b11: next_state = S1;
            endcase
    default:         next_state = S0;
  endcase

  
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
      success <= 0;
    end else begin
      case(current_state)
        S0,S1,S10,S101,S1011:        success <= 0;
        S10110 : if(data == 2'b01)   success <= 1;
                 else                success <= 0;
        S101100: if(data[1] == 1'b1) success <= 1;
                 else                success <= 0;
        default:                     success <= 0;
      endcase
    end
  end

endmodule


