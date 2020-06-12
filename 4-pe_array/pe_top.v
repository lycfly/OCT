// +FHDR------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : pe_top.v
// Author        : 
// Created On    : 2020-06-03 10:46
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
//
// -FHDR------------------------------------------------------------
`timescale 1ns/1ps


`include "/home/IC/Desktop/0-onchiptrain/OCT/OCT/3-pe_design/fifo.v"
`include "/home/IC/Desktop/0-onchiptrain/OCT/OCT/3-pe_design/load_fmap.v"
`include "/home/IC/Desktop/0-onchiptrain/OCT/OCT/3-pe_design/load_weight.v"
`include "/home/IC/Desktop/0-onchiptrain/OCT/OCT/3-pe_design/macc.v"
`include "/home/IC/Desktop/0-onchiptrain/OCT/OCT/3-pe_design/macc_control.v"
`include "/home/IC/Desktop/0-onchiptrain/OCT/OCT/3-pe_design/pe.v"
`include "/home/IC/Desktop/0-onchiptrain/OCT/OCT/3-pe_design/True_dual_ports_ram.v"



module pe_top
#( parameter DATA_WIDTH      = 16,
   parameter PSUM_DATA_WIDTH = 48,
   parameter ADDR_WIDTH      = 8,
   parameter PARA_WIDTH      = 8,
   parameter ID_WIDTH        = 8,
   parameter W_PAD_SIZE      = 36,
   parameter IF_PAD_SIZE     = 12,
   parameter PSUM_PAD_SIZE   = 9,
   parameter PE_FIFO_SIZE    = 2
)
(
input                                           clk,
input                                           rst_n,
input             [PARA_WIDTH-1 : 0]            S,                        //8bits
input             [PARA_WIDTH-1 : 0]            U,                        //8bits only support 2^n
input             [PARA_WIDTH-1 : 0]            q,                        // q   number of channel processed by a PE set
input             [PARA_WIDTH-1 : 0]            p,                        // p   number of filters processed by a PE set
input             [PARA_WIDTH-1 : 0]            j,                        // j   the max number of clip (0~19)
input             [PARA_WIDTH-1 : 0]            k,                        // k   the max number of shift (0~9)
input             [PARA_WIDTH-1 : 0]            T,                        // T   one outchannel of weight length when mode == 1

/*input status signal*/
input                                           start_config, 
input                                           config_state,  
input                                           ce,                       // id load ce 

input                                           start_weight_load,        //start weight  load
input                                           start_feature_load,       //start feature load
//input                                           start_psum_in_load,       //start psum_in load
input                                           load_full_cloumn,         
input                                           mode,                     // 1: clip and shift conv mode; 0: normal 1-D conv

input             [ID_WIDTH-1:0]                bus_weight_id,
input             [ID_WIDTH-1:0]                bus_feature_id,
input             [ID_WIDTH-1:0]                bus_inpsum_id,
input             [ID_WIDTH-1:0]                bus_outpsum_id,

input             [ID_WIDTH-1:0]                pe_weight_id,
input             [ID_WIDTH-1:0]                pe_feature_id,
input             [ID_WIDTH-1:0]                pe_inpsum_id,
input             [ID_WIDTH-1:0]                pe_outpsum_id,


input                                           bus_weight_valid,
input             [DATA_WIDTH-1:0]              bus_weight_in,
 
input             [DATA_WIDTH-1:0]	            bus_feature_in,
input                                           bus_feature_valid,
 
input             [DATA_WIDTH-1:0]              bus_psum_in,
input                                           bus_psum_in_valid,
 
input             [PSUM_DATA_WIDTH-1:0]         last_pe_data_in,
input                                           last_pe_data_valid,

input                                           psum_out_start_in,
output wire       [DATA_WIDTH-1:0]              bus_psum_out,
output wire                                     bus_psum_out_valid,

output wire                                     mac_finish,
output wire                                     psum_acc_finish,
output wire                                     pe_ifmap_load_ready,
output wire                                     pe_weight_load_ready,
output wire                                     pe_psum_in_load_ready,
output wire                                     shift_finish_flg,
output wire                                     clip_finish_flg,

output wire                                     psum_out_to_next_pe_valid,
output wire        [PSUM_DATA_WIDTH-1:0]        psum_out_to_next_pe
);

wire       [DATA_WIDTH-1:0]              pe_weight_in;
wire                                     pe_weight_in_en;
wire       [DATA_WIDTH-1:0]              pe_feature_in;
wire                                     pe_feature_in_en;
wire       [PSUM_DATA_WIDTH-1:0]         pe_psum_in;
wire                                     pe_psum_in_en;

Router #(.DATA_WIDTH(DATA_WIDTH),
         .ID_WIDTH  (ID_WIDTH))
weight_cloumn_mc (
     .clk(clk),
     .rst_n(rst_n),
     .config_state(config_state),
     .ce(ce),
     .source_id(bus_weight_id),
     .dest_id(pe_weight_id),
     .bus_data_in(bus_weight_in),
     .bus_data_valid(bus_weight_valid),
     .pe_data_in(pe_weight_in),
     .pe_data_in_en(pe_weight_in_en)
    );
Router #(.DATA_WIDTH(DATA_WIDTH),
         .ID_WIDTH  (ID_WIDTH))
ifmap_cloumn_mc(
     .clk(clk),
     .rst_n(rst_n),
     .config_state(config_state),
     .ce(ce),
     .source_id(bus_feature_id),
     .dest_id(pe_feature_id),
     .bus_data_in(bus_feature_in),
     .bus_data_valid(bus_feature_valid),
     .pe_data_in(pe_feature_in),
     .pe_data_in_en(pe_feature_in_en)
    );

wire pe_mac_finish;
assign pe_mac_finish = mac_finish;

psum_in_router #(.DATA_WIDTH(DATA_WIDTH), 
                 .PSUM_DATA_WIDTH(PSUM_DATA_WIDTH),
                 .ID_WIDTH(ID_WIDTH))
inpsum_cloumn_mc(
     .clk(clk),
     .rst_n(rst_n),
     .config_state(config_state),
     .ce(ce),
     .source_id(bus_inpsum_id),
     .dest_id(pe_inpsum_id),
     .bus_data_in(bus_psum_in),
     .bus_data_valid(bus_psum_in_valid),
     .last_pe_data_in(last_pe_data_in),
     .last_pe_data_valid(last_pe_data_valid),
     .pe_mac_finish(pe_mac_finish),
     .pe_psum_in(pe_psum_in),
     .pe_psum_in_en(pe_psum_in_en),
     .pe_ready(pe_psum_in_load_ready)
    );

// 注：pe到上一级pe的psum位宽不变，但是到bus的psum out需要截位到bus位宽。
wire signed [DATA_WIDTH-1:0] psum_from_pe_after_clip;
wire psum_from_pe_en;
// clip the psum to data width
wire signed [PSUM_DATA_WIDTH-1: 0] psum_from_pe_tmp;
assign psum_from_pe_after_clip = (psum_from_pe_tmp > ((1 << (DATA_WIDTH-1))-1)) ? ((1 << (DATA_WIDTH-1))-1) : ( (psum_from_pe_tmp < -(1 << (DATA_WIDTH-1))) ? -(1 << (DATA_WIDTH-1)) : {psum_from_pe_tmp[PSUM_DATA_WIDTH-1],psum_from_pe_tmp[DATA_WIDTH-2:0]});

assign psum_out_to_next_pe = psum_from_pe_tmp;
assign psum_out_to_next_pe_valid = psum_from_pe_en;

wire start_psum_out;
wire psum_out_start_out;
assign start_psum_out = psum_out_start_out;

psum_out_router #(.DATA_WIDTH(DATA_WIDTH),
                  .ID_WIDTH  (ID_WIDTH))
outpsum_clounn_mc(
     .clk(clk),
     .rst_n(rst_n),
     .config_state(config_state),
     .ce(ce),
     .source_id(bus_outpsum_id),
     .dest_id(pe_outpsum_id),
     .data_from_pe(psum_from_pe_after_clip),
     .data_from_pe_en(psum_from_pe_en),
     .psum_out_start_in(psum_out_start_in),
     .psum_out_start_out(psum_out_start_out),
     .data_to_bus(bus_psum_out),
     .data_to_bus_en(bus_psum_out_valid)
    );

wire                        fifo_full_filter;
wire                        fifo_full_fmap;

assign pe_weight_load_ready = !fifo_full_filter;
assign pe_ifmap_load_ready = !fifo_full_fmap;

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
   .rst_n              ( rst_n              ),
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
   //.start_psum_in_load ( start_psum_in_load ),
   .start_psum_out     ( psum_out_start_out ),   
   .load_full_cloumn   ( load_full_cloumn   ),
   .mode               ( mode               ),

   .psum_in            ( pe_psum_in         ),   
   .psum_in_en         ( pe_psum_in_en      ),
   .feature_in         ( pe_feature_in      ),
   .feature_in_en      ( pe_feature_in_en   ),
   .weight_in          ( pe_weight_in       ),
   .weight_in_en       ( pe_weight_in_en    ),
   .psum_out           ( psum_from_pe_tmp   ),
   .psum_out_en        ( psum_from_pe_en    ),

   .mac_finish         ( mac_finish         ),
   .psum_acc_finish    ( psum_acc_finish    ),
   .fifo_full_fmap     ( fifo_full_fmap     ),
   .fifo_full_filter   ( fifo_full_filter   ),
   .shift_finish_flg   ( shift_finish_flg   ),
   .clip_finish_flg    ( clip_finish_flg    )
  
 );



endmodule

