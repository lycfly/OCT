// -----------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : pe_tb.v
// Author        : Yicheng Lu
// Created On    : 2020-05-27 16:31:14
// Last Modified :
// -----------------------------------------------------------------
// Description:
//
// -----------------------------------------------------------------

`include "/home/IC/Desktop/0-onchiptrain/OCT/OCT/3-pe_design/fifo.v"
`include "/home/IC/Desktop/0-onchiptrain/OCT/OCT/3-pe_design/load_fmap.v"
`include "/home/IC/Desktop/0-onchiptrain/OCT/OCT/3-pe_design/load_weight.v"
`include "/home/IC/Desktop/0-onchiptrain/OCT/OCT/3-pe_design/macc.v"
`include "/home/IC/Desktop/0-onchiptrain/OCT/OCT/3-pe_design/macc_control.v"
`include "/home/IC/Desktop/0-onchiptrain/OCT/OCT/3-pe_design/pe.v"
`include "/home/IC/Desktop/0-onchiptrain/OCT/OCT/3-pe_design/True_dual_ports_ram.v"



`timescale 1ns/1ps

module pe_mode1_tb();


parameter DATA_WIDTH      = 16;
parameter PSUM_DATA_WIDTH = 48;
parameter ADDR_WIDTH      = 8;
parameter PARA_WIDTH      = 8;
parameter W_PAD_SIZE      = 102;
parameter IF_PAD_SIZE     = 12;
parameter PSUM_PAD_SIZE   = 9;
parameter PE_FIFO_SIZE    = 2;

reg                         clk;
reg                         rst_n;
reg        [PARA_WIDTH-1:0] S;
reg        [PARA_WIDTH-1:0] U;
reg        [PARA_WIDTH-1:0] q;
reg        [PARA_WIDTH-1:0] p;
reg        [PARA_WIDTH-1:0] j;
reg        [PARA_WIDTH-1:0] k;
reg        [PARA_WIDTH-1:0] T;
reg                         start_config;
reg                         start_weight_load;
reg                         start_feature_load;
reg                         start_psum_in_load;
reg                         load_full_cloumn;
reg                         mode;
reg        [DATA_WIDTH-1:0] psum_in;
reg                         psum_in_en;
reg        [DATA_WIDTH-1:0] feature_in;
reg                         feature_in_en;
reg        [DATA_WIDTH-1:0] weight_in;
reg                         weight_in_en;
reg                         start_psum_out;

wire                              mac_finish;
wire                              psum_acc_finish;
wire                              fifo_full_fmap;
wire                              fifo_full_filter;
wire                              shift_finish_flg;
wire                              clip_finish_flg;

wire   [PSUM_DATA_WIDTH-1:0]      psum_out;
wire                              psum_out_en;


always #1 clk = ~clk;
initial begin
  clk = 0;
  S = 12;
  U = 1;
  q = 1;
  p = 3;
  j = 3;
  k = 3;
  T = 34;
  start_config = 0;
  start_weight_load = 0;
  start_feature_load = 0;
  start_psum_in_load = 0; 
  mode = 1;
  psum_in_en = 0;
  feature_in = 0;
  feature_in_en = 0;
  weight_in = 0;
  weight_in_en = 0;
  psum_in = 0;
  start_psum_out = 0;
  rst_n = 1;
  #4 rst_n = 0; #2 rst_n = 1;
  @(posedge clk) start_config = 1;
  @(posedge clk) start_config = 0;
  
end

wire fmap_pe_ready;
wire weight_pe_ready;
reg fmap_bus_ready;
reg weight_bus_ready;

assign fmap_pe_ready = !fifo_full_fmap;
assign weight_pe_ready = !fifo_full_filter;

always@(*) feature_in_en = fmap_pe_ready & fmap_bus_ready;
always@(*) weight_in_en = weight_pe_ready & weight_bus_ready;


task transform_fmap_data; 
   input integer start_idx_f;
   input integer end_idx_f;
   begin
     integer idx_f;
     idx_f = start_idx_f;
     fmap_bus_ready = 1;
     while(idx_f!=end_idx_f) begin      
     @(posedge clk); 
     if(feature_in_en==1)begin
       $display("transform fmap: value = %d",idx_f );
       feature_in  = -idx_f;
       idx_f = idx_f + 1; 
     end
     #2;       
   end
   fmap_bus_ready = 0; 
 end
endtask

task transform_weight_data; 
   input integer start_idx_w;
   input integer end_idx_w;
   begin
     integer idx_w;
     idx_w = start_idx_w;
     weight_bus_ready = 1;
     while(idx_w!=end_idx_w) begin      
     @(posedge clk); 
     if(weight_in_en==1)begin
       $display("transform weight: value = %d",idx_w );
       weight_in  = idx_w;
       idx_w = idx_w + 1; 
     end
     #2;       
   end
   weight_bus_ready = 0; 
 end
endtask
initial begin
   fork 
     begin
       fmap_bus_ready = 0;
       #11;
       @(posedge clk);
       load_full_cloumn <= 1;
       start_feature_load <= 1;
       #2  start_feature_load <= 0;
       // 开始传输feature
       transform_fmap_data(1,7);
       #40
       transform_fmap_data(7,13);
     end
     
     begin
       weight_bus_ready = 0; 
       #11;
       start_weight_load <= 1;
       #2  start_weight_load <= 0;

       transform_weight_data(1,10);    
       #60;
       transform_weight_data(10,37);
       transform_weight_data(37,103);
     end
   join
   
   wait(shift_finish_flg==1);
   @(posedge clk);
   load_full_cloumn <= 1;
   start_feature_load <= 1;
   #2  start_feature_load <= 0;
   // 开始传输第二段feature
   transform_fmap_data(13,25);

   wait(shift_finish_flg==1);
   @(posedge clk);
   load_full_cloumn <= 1;
   start_feature_load <= 1;
   #2  start_feature_load <= 0;
   // 开始传输第三段feature
   transform_fmap_data(25,37);
   
    wait(clip_finish_flg ==1);
    @(posedge clk);
    start_psum_out <= 1;
    #2 start_psum_out <= 0;
 end

 


pe #(  .DATA_WIDTH      ( DATA_WIDTH      ),
       .PSUM_DATA_WIDTH ( PSUM_DATA_WIDTH ),
       .ADDR_WIDTH      ( ADDR_WIDTH      ),
       .PARA_WIDTH      ( PARA_WIDTH      ),
       .W_PAD_SIZE      ( W_PAD_SIZE      ),
       .IF_PAD_SIZE     ( IF_PAD_SIZE     ),
       .PSUM_PAD_SIZE   ( PSUM_PAD_SIZE   ),
       .PE_FIFO_SIZE    ( PE_FIFO_SIZE    ))
U_PE_0
(  .clk                ( clk                ),
   .rst_n              ( rst_n                ),
   .S                  ( S                  ),
   .U                  ( U                  ),
   .q                  ( q                  ),
   .p                  ( p                  ),
   .j                  ( j                  ),
   .k                  ( k                  ),
   .T                  ( T                  ),   
   .start_config       ( start_config       ),
   .start_weight_load  ( start_weight_load  ),
   .start_feature_load ( start_feature_load ),
   .start_psum_in_load ( start_psum_in_load ),
   .load_full_cloumn   ( load_full_cloumn   ),
   .mode               ( mode               ),
   .psum_in_en         ( psum_in_en         ),
   .feature_in         ( feature_in         ),
   .feature_in_en      ( feature_in_en      ),
   .weight_in          ( weight_in          ),
   .weight_in_en       ( weight_in_en       ),
   .psum_in            ( psum_in            ),
   .start_psum_out     ( start_psum_out     ),
   .mac_finish         ( mac_finish         ),
   .psum_acc_finish    ( psum_acc_finish    ),
   .fifo_full_fmap     ( fifo_full_fmap     ),
   .fifo_full_filter   ( fifo_full_filter   ),
   .shift_finish_flg   ( shift_finish_flg   ),
   .clip_finish_flg    ( clip_finish_flg    ),
   .psum_out           ( psum_out           ),
   .psum_out_en        ( psum_out_en        ));


initial begin
  $fsdbDumpvars();
  $fsdbDumpMDA();
  $dumpvars();
  #2000 $finish;
end

endmodule


