// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : I2S_slave.v
// Author        : 
// Created On    : 2020-05-12 22:32
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------




`timescale 1ns/1ps

module I2S_slave(
	input rstn,
	input clk,
	input WS,
	input DATA,
	
	output reg[15:0] L_DATA,
	output reg[15:0] R_DATA,
	output recv_over
    );
	 
localparam IDLE = 2'b00;
localparam GET_LEFT = 2'b01;
localparam GET_RIGHT = 2'b11;

reg [4:0] cnt;
reg [1:0] state,next_state;

reg WS_reg;
wire WS_en;
always @(negedge clk or negedge rstn) begin
	if(!rstn) WS_reg <= 1'b0;
	else WS_reg <= WS;
end
assign WS_en = (~WS_reg)&WS;  // 通过判断WS上升沿开始接收数据

always @(negedge clk or negedge rstn) begin
	if(!rstn) state <= IDLE;
	else state <= next_state;
end

// cnt计数决定状态转移
always @(*) begin
	case(state)
		IDLE:
			begin
				if(WS_en) next_state = GET_LEFT;
				else next_state = IDLE;
			end
		GET_LEFT:
			begin
				if(cnt == 'd17) next_state = GET_RIGHT;
				else next_state = GET_LEFT;
			end
		GET_RIGHT:
			begin
				if(cnt == 'd17) next_state = IDLE;
				else next_state = GET_RIGHT;
			end
		default: next_state = IDLE;
	endcase
end

always @(negedge clk or negedge rstn) begin
	if(!rstn) cnt <= 'd0;
	else if(WS_en || (state!=IDLE)) begin  // 注意这里从WS_en开始计数
		if(cnt != 'd17)cnt <= cnt + 1'b1;
		else cnt <= 'd0;
	end
	else cnt <= 'd0;
end

// 接收左声道数据
always @(negedge clk or negedge rstn) begin
	if(!rstn) L_DATA <= 'd0;
	else if(WS && (cnt < 'd16)) 
		L_DATA <= {L_DATA[14:0],DATA};  // 左移位
	else L_DATA <= L_DATA;
end

// 接收右声道数据
always @(negedge clk or negedge rstn) begin
	if(!rstn) R_DATA <= 'd0;
	else if(~WS && (cnt < 'd16)) 
		R_DATA <= {R_DATA[14:0],DATA};  // 左移位
	else R_DATA <= R_DATA;
end

assign recv_over = (cnt == 'd15)? 1'b1 : 1'b0;
endmodule


