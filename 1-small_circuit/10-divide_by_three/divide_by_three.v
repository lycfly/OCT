// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : divide_by_three.v
// Author        : 
// Created On    : 2020-05-19 16:35
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------




`timescale 1ns/1ps

module divide_by_three
#(
parameter DATAWIDTH = 16
)(
input                                   clk,
input                                   rst_n,
input                                   vld_in,
input             [DATAWIDTH-1:0]       data_in,
output  reg       [DATAWIDTH-1:0]       quotient, 
output  reg       [1:0]                 reminder,
output  reg                             vld_out
);


reg [1:0]current_state;
reg [1:0]next_state;

reg [$clog2(DATAWIDTH):0] cnt;
reg [DATAWIDTH-1:0] data_reg;

parameter IDLE = 2'b11;

always @(posedge clk or negedge rst_n) 
  if(!rst_n) current_state <= IDLE;
  else current_state <= next_state;


always @(*) 
  case(current_state)
    IDLE:  if(vld_in) next_state = 2'b0;
           else       next_state = IDLE;

    2'b00: if (cnt == DATAWIDTH)          next_state = IDLE; // cnt = 16 not 15, for the calc of remainder
           else if(data_reg[DATAWIDTH-1]) next_state = 2'b1;
           else                           next_state = 2'b0;

    2'b01: if (cnt == DATAWIDTH)          next_state = IDLE;
           else if(data_reg[DATAWIDTH-1]) next_state = 2'b0;
           else                          next_state = 2'b10;

    2'b10: if (cnt == DATAWIDTH)          next_state = IDLE;
           else if(data_reg[DATAWIDTH-1]) next_state = 2'b10;
           else                          next_state = 2'b1;
    default: next_state = IDLE;
endcase

always @(posedge clk or negedge rst_n) 
  if(!rst_n) begin
    {cnt,data_reg,reminder,quotient,vld_out} <= 0;
  end else begin
    case(current_state)
      IDLE: begin
              {vld_out,cnt} <= 0;
              if(vld_in) data_reg <= data_in;
              else data_reg <= data_reg;
            end
      2'b00,2'b01,2'b10: begin
        if(cnt == DATAWIDTH-1) begin
          cnt <= cnt + 1;        // without this,remainder will be next_state=IDLE=2'b11'
          reminder <= next_state;
          vld_out <= 1;
        end else begin
          cnt <= cnt + 1; 
          vld_out <= 0;
          data_reg <= {data_reg[DATAWIDTH-2:0],1'b0};
        end
        if(data_reg[DATAWIDTH-1]) 
          quotient <= {quotient[DATAWIDTH-2:0],current_state[1]|current_state[0]};
        else 
          quotient <= {quotient[DATAWIDTH-2:0],current_state[1]};
      end
    endcase
  end


  
endmodule


