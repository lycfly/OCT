// Signed 40-bit streaming accumulator with 16-bit inputs
// File: macc.v
//
//
`timescale 1ns/1ps

module macc  # (
                parameter SIZEIN = 16, SIZEOUT = 40
               )
               (
                input clk, gate, exter, clear,
                input signed  [SIZEIN-1:0]  a, b,
                input signed  [SIZEIN-1:0]  external_psum,
                input signed  [SIZEOUT-1:0]  internal_psum,
                output reg signed [SIZEOUT-1:0] accum_out
               );

reg signed [2*SIZEIN-1:0] mult_result;
reg signed [SIZEOUT-1:0] PinA, PinB;


always@(*) begin
    if (gate)  
// Multiplier
        mult_result = 0;
    else 
        mult_result = a * b ;


//clear psum
    if(clear) PinA = 0;
    else PinA = internal_psum;
// Adder 
    accum_out = PinA + PinB; 
 
  end

always@(posedge clk) begin

// selecter
    if(exter) PinB <= external_psum;
    else PinB <= mult_result;

end


endmodule // macc
