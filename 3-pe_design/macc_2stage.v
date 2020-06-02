// Signed 40-bit streaming accumulator with 16-bit inputs
// File: macc.v
//
module macc_2stage  # (
                parameter SIZEIN = 16, SIZEOUT = 40
               )
               (
                input clk, gate, exter, clear,
                input signed  [SIZEIN-1:0]  a, b,
                input signed  [SIZEIN-1:0]  external_psum,
                input signed  [SIZEIN-1:0]  internal_psum,
                output reg signed [SIZEOUT-1:0] accum_out
               );

parameter SIZEIN_DIV2 = SIZEIN/2;
reg signed [2*SIZEIN-1:0] mult_result;
reg signed [2*SIZEIN-1:0] PinA, PinB;
wire [SIZEIN-1:0] a_raw,b_raw;
wire [SIZEIN-2:0] a_raw_,b_raw_;
assign a_raw_ = a[SIZEIN-1]?(~a[SIZEIN-2:0]) + 1:a[SIZEIN-2:0];
assign b_raw_ = b[SIZEIN-1]?(~b[SIZEIN-2:0]) + 1:b[SIZEIN-2:0];
assign a_raw = {a[SIZEIN-1],a_raw_};
assign b_raw = {b[SIZEIN-1],b_raw_};

reg [SIZEIN-1:0] part0;
reg [SIZEIN-2:0] part1;
reg [SIZEIN-2:0] part2;
reg [SIZEIN-3:0] part3;
reg sign_bit;
wire [SIZEIN+SIZEIN_DIV2-2:0]add_parts;
assign add_parts = part1 + part2 + {part3,part0[SIZEIN-1:SIZEIN_DIV2]};

reg [2*SIZEIN-1:0]mult_com;
wire [2*SIZEIN-2:0]mult_com_0;
wire [2*SIZEIN-2:0]mult_com_1;
assign mult_com_0 = {add_parts,part0[SIZEIN_DIV2-1:0]};
assign mult_com_1 = sign_bit?(~mult_com_0)+1:mult_com_0;

always@(*) begin
    if (gate)  begin
// Multiplier
        mult_result = 0;
        mult_com = {sign_bit,mult_com_1};
      end else begin
        mult_com = {sign_bit,mult_com_1};
        mult_result = mult_com;
    end
// selecter
    if(exter) PinB <= external_psum;
    else PinB <= mult_result;

//clear psum
    if(clear) PinA = 0;
    else PinA = internal_psum;
// Adder 
    accum_out = PinA + PinB; 
 
  end


always@(posedge clk) begin
  if(!gate) begin
    sign_bit <= a[SIZEIN-1]^b[SIZEIN-1];
    part0 <= a_raw[SIZEIN_DIV2-1:0]*b_raw[SIZEIN_DIV2-1:0];
    part1 <= a_raw[SIZEIN-2:SIZEIN_DIV2]*b_raw[SIZEIN_DIV2-1:0];
    part2 <= a_raw[SIZEIN_DIV2-1:0]*b_raw[SIZEIN-2:SIZEIN_DIV2];
    part3 <= a_raw[SIZEIN-2:SIZEIN_DIV2]*b_raw[SIZEIN-2:SIZEIN_DIV2];
  end else begin
    sign_bit <= 0;
    part0 <= 0;
    part1 <= 0;
    part2 <= 0;
    part3 <= 0;
  end

end


endmodule // macc

