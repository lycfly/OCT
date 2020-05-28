// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : lcm_gcd.v
// Author        : 
// Created On    : 2020-05-10 22:13
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------



module lcm_gcd
#(
parameter DATAWIDTH=8
)
(
input   [DATAWIDTH-1:0]       A,
input   [DATAWIDTH-1:0]       B,
input                         en,
input                         clk,
input                         rstn,

output  wire [DATAWIDTH*2-1:0]lcm_out,
output  wire [DATAWIDTH-1:0]  gcd_out,
output  wire                  vld_out,
output  wire                  ready
);
reg [DATAWIDTH-1:0]     gcd,a_buf,b_buf;
reg [DATAWIDTH*2-1:0]   lcm,mul_buf;
reg [1:0]               current_state,next_state;
reg done;
parameter IDLE=2'b00,
          SUB  =2'b01,
		  DONE  =2'b10;
        
assign ready=(current_state==IDLE)?1'b1:1'b0;

always@(posedge clk or negedge rstn)
  if(!rstn) current_state <= IDLE;
  else current_state <= next_state;

always@(*) begin
  next_state = 2'bx;
  case(current_state)
    IDLE:if(en)  next_state <= SUB;
         else    next_state <= IDLE;	
    SUB:  if(a_buf!=b_buf) next_state <= SUB;
         else             next_state <= DONE;
    DONE:  next_state <= IDLE;
  endcase
end


  
always@(posedge clk or negedge rstn)
     if(!rstn)begin
		gcd    <= 0;
        lcm    <= 0;
		a_buf  <= 0;
		b_buf  <= 0;	
        mul_buf<= 0;	
        done   <= 0;    
      end
     else begin
	    case(current_state)
        IDLE:begin
            if(en)begin
		       a_buf   <= A;
			   b_buf   <= B;
               mul_buf <= A*B;              
             end
             done <= 0;
           end
	    SUB:if(a_buf != b_buf)begin
		     if(a_buf > b_buf)begin
			    a_buf <= a_buf-b_buf;
				b_buf <= b_buf;
			 end
			 else begin
			    b_buf <= b_buf-a_buf;
				a_buf <= a_buf;			 
              end
           end		
		DONE:begin
            gcd <= b_buf;
            lcm <= mul_buf / b_buf; 
            done <= 1;
          end

		default:next_state<= IDLE;
	    endcase
      end	 

assign gcd_out = gcd;
assign lcm_out = lcm;
assign vld_out = done;

endmodule




