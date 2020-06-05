`timescale 1ns/1ps

// Fifo
module fifo
  #(
    parameter DEPTH_WIDTH = 1,
    parameter DATA_WIDTH = 1,
    parameter ENABLE_BYPASS = 1  //allow read and write same address
    )
   (
    input         clk,
    input         rst_n,

    input [DATA_WIDTH-1:0]  wr_data_i,
    input         wr_en_i,

    output wire [DATA_WIDTH-1:0] rd_data_o,
    input         rd_en_i,
    output wire      full_o,
    //output wire      almost_full,
    output wire      empty_o
    );

   localparam DW = (DATA_WIDTH  < 1) ? 1 : DATA_WIDTH;
   localparam AW = (DEPTH_WIDTH < 1) ? 1 : DEPTH_WIDTH;


   reg [AW:0] write_pointer;
   reg [AW:0] read_pointer;
   wire almost_full;
   wire full_o_tmp;
   assign full_o = almost_full;
   wire          empty_int = (write_pointer[AW] ==
            read_pointer[AW]);
   wire          full_or_empty = (write_pointer[AW-1:0] ==
          read_pointer[AW-1:0]);
   
   assign full_o_tmp  = full_or_empty & !empty_int;
   assign empty_o = full_or_empty & empty_int;
   assign almost_full = (write_pointer[AW-1:0]+1 ==read_pointer[AW-1:0])|full_o_tmp;
   always @(posedge clk) begin
      if (wr_en_i)
  write_pointer <= write_pointer + 1'd1;

      if (rd_en_i)
  read_pointer <= read_pointer + 1'd1;

      if (!rst_n) begin
   read_pointer  <= 0;
   write_pointer <= 0;
      end
   end


  reg [DW-1:0]     mem[(1<<AW)-1:0];
  reg [DW-1:0]     rdata;

generate
if (ENABLE_BYPASS) begin : bypass_gen
   reg [DW-1:0]     din_r;
   reg          bypass;

   assign rd_data_o = bypass ? din_r : rdata;

   always @(posedge clk)
     if (rd_en_i)
       din_r <= wr_data_i;

   always @(posedge clk)
     if (write_pointer[AW-1:0] == read_pointer[AW-1:0] && wr_en_i && rd_en_i)
       bypass <= 1;
     else if (rd_en_i)
       bypass <= 0;
end else begin
   assign rd_data_o = rdata;
end
endgenerate

   always @(posedge clk) begin
      if (wr_en_i)
  mem[write_pointer[AW-1:0]] <= wr_data_i;
      if (rd_en_i)
  rdata <= mem[read_pointer[AW-1:0]];
   end

endmodule
