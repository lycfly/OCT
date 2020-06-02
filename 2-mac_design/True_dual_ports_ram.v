`timescale 1ns / 1ps

`include "/home/IC/Desktop/0-onchiptrain/Constant.v"


module True_dual_ports_ram
  #(
    //-------------------------------------------------------------------------
    parameter   ADDR_WIDTH              =  6, // Addr  Width in bits : 2**ADDR_WIDTH = RAM Depth
    parameter   DATA_WIDTH              =  8, // Data  Width in bits
    parameter   DEPTH                   =  34
    //-------------------------------------------------------------------------
    ) (
       input clk,
       input wea,
     //  input enaA,
       input [ADDR_WIDTH-1:0] addrA,
       input signed [DATA_WIDTH-1:0] dinA,
       output reg [DATA_WIDTH-1:0] doutA,
      
       input web,
    //   input enaB,
       input [ADDR_WIDTH-1:0] addrB,
       input signed [DATA_WIDTH-1:0] dinB,
       output reg [DATA_WIDTH-1:0] doutB
       );
   
`ifdef Xilinx
   (* ram_style = "block" *)
`endif
   // Core Memory  
   reg [DATA_WIDTH-1:0]            ram_block [DEPTH-1:0];
   
   // Port-A Operation
   always @ (posedge clk) begin
   //   if(enaA) begin
         if(wea) begin
            ram_block[addrA] <= dinA[DATA_WIDTH-1:0];
         end
 //     end
   end

   
   always @ (posedge clk) begin
//      if(enaA) begin
         doutA <= ram_block[addrA];
//      end
   end
   
   
   // Port-B Operation:

always @ (posedge clk) begin
//  if(enaB) begin
     if(web) begin
        ram_block[addrB] <= dinB[DATA_WIDTH-1:0];
        //     end
  end
end

   
always @ (posedge clk) begin
//  if(enaB) begin
     doutB <= ram_block[addrB];
     //   end
end

endmodule // bytewrite_tdp_ram_readfirst2
