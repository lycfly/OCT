// -----------------------------------------------------------------
//                 Copyright (c) 2020 .
//                       ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : pe_top_tb.v
// Author        : Yicheng Lu
// Created On    : 2020-06-03 22:11:49
// Last Modified :
// -----------------------------------------------------------------
// Description:
//
// -----------------------------------------------------------------

`include "/home/IC/Desktop/0-onchiptrain/OCT/OCT/4-pe_array/pe_top.v"
`include "/home/IC/Desktop/0-onchiptrain/OCT/OCT/4-pe_array/psum_in_router.v"
`include "/home/IC/Desktop/0-onchiptrain/OCT/OCT/4-pe_array/psum_out_router.v"
`include "/home/IC/Desktop/0-onchiptrain/OCT/OCT/4-pe_array/Router.v"


`timescale 1ns/1ps


module pe_top_tb();

parameter DATA_WIDTH      = 16;
parameter PSUM_DATA_WIDTH = 48;
parameter ADDR_WIDTH      = 8;
parameter PARA_WIDTH      = 8;
parameter ID_WIDTH        = 8;
parameter W_PAD_SIZE      = 102;
parameter IF_PAD_SIZE     = 36;
parameter PSUM_PAD_SIZE   = 9;
parameter PE_FIFO_SIZE    = 2;

reg                    clk;
reg                    rst_n;
reg   [PARA_WIDTH-1:0] S;
reg   [PARA_WIDTH-1:0] U;
reg   [PARA_WIDTH-1:0] q;
reg   [PARA_WIDTH-1:0] p;
reg   [PARA_WIDTH-1:0] j;
reg   [PARA_WIDTH-1:0] k;
reg   [PARA_WIDTH-1:0] T;
reg                    start_config;
reg                    config_state;
reg                    ce;

reg                    start_weight_load;
reg                    start_feature_load;
//reg                    start_psum_in_load;
reg                    load_full_cloumn;
reg                    mode;

reg   [ID_WIDTH-1:0]   bus_weight_id;
reg   [ID_WIDTH-1:0]   bus_feature_id;
reg   [ID_WIDTH-1:0]   bus_inpsum_id;
reg   [ID_WIDTH-1:0]   bus_outpsum_id;

reg   [ID_WIDTH-1:0]   pe_weight_id;
reg   [ID_WIDTH-1:0]   pe_feature_id;
reg   [ID_WIDTH-1:0]   pe_inpsum_id;
reg   [ID_WIDTH-1:0]   pe_outpsum_id;

reg   [DATA_WIDTH-1:0] bus_weight_in;
reg                    bus_weight_valid;
reg   [DATA_WIDTH-1:0] bus_feature_in;
reg                    bus_feature_valid;
reg   [DATA_WIDTH-1:0] bus_psum_in;
reg                    bus_psum_in_valid;
reg   [PSUM_DATA_WIDTH-1:0] last_pe_data_in;
reg                    last_pe_data_valid;
reg                    psum_out_start_in;

wire   [DATA_WIDTH-1:0] bus_psum_out;
wire                    bus_psum_out_valid;
wire                    mac_finish;
wire                    psum_acc_finish;
wire                    pe_ifmap_load_ready;
wire                    pe_weight_load_ready;
wire                    pe_psum_in_load_ready;
wire                    shift_finish_flg;
wire                    clip_finish_flg;
wire                    psum_out_to_next_pe_valid;
wire   [PSUM_DATA_WIDTH-1:0] psum_out_to_next_pe;


always #1 clk = ~clk;
initial begin
  clk = 0;
  S = 3;
  U = 1;
  q = 4;
  p = 3;
  j = 3;
  k = 3;
  T = 34;
  start_config = 0;
  config_state = 0;
  ce = 0;
  start_weight_load = 0;
  start_feature_load = 0;
  //start_psum_in_load = 0;
  load_full_cloumn = 0;
  mode = 0;
  bus_weight_id = 0;
  bus_feature_id = 0;
  bus_inpsum_id = 0;
  bus_outpsum_id = 0;
  pe_weight_id = 0;
  pe_feature_id = 0;
  pe_inpsum_id = 0;
  pe_outpsum_id = 0;
  
  bus_weight_in = 0;
  bus_feature_in = 0;
  bus_psum_in = 0;
  bus_psum_in_valid = 0;
  last_pe_data_in = 0;
  last_pe_data_valid = 0;
  psum_out_start_in = 0;
  rst_n = 1;
  #4 rst_n = 0; #2 rst_n = 1;
  #6;
  @(posedge clk) start_config = 1;
  @(posedge clk) start_config = 0;
  @(posedge clk) begin
    bus_weight_id = 1;
    bus_feature_id = 1;
    bus_inpsum_id = 1;
    bus_outpsum_id = 1;
    pe_weight_id = 1;
    pe_feature_id = 1;
    pe_inpsum_id = 1;
    pe_outpsum_id = 1;
  end  
end
//---------------------------------------------------------------
//                   Config logic
//---------------------------------------------------------------
reg    [8-1:0]   config_cnt;
reg              config_finish;

always @(posedge clk or negedge rst_n) begin
  if (!rst_n) begin
    config_cnt <= 0;
    config_state <= 0;
    config_finish <= 0;
    ce <= 0;
  end
  else begin
    case(config_state)
      0 : begin
        if(start_config)begin
          config_state <= 1;
          config_finish <= 0;
        end else begin
          config_state <= 0;
          config_finish <= 0;
        end
      end
      1:  begin
        if(config_cnt ==  1) begin
          config_state  <= 0;
          config_cnt    <= 0;
          config_finish <= 1;
          ce <= 0;                
        end else begin
          config_cnt    <= config_cnt + 1;
          ce     <= 1;
          config_finish <= 0;
        end
      end
    endcase
  end
end
//---------------------------------------------------------------
//             weight and feature glb model
//---------------------------------------------------------------
reg [DATA_WIDTH-1:0] weight_glb[W_PAD_SIZE-1:0];
reg [DATA_WIDTH-1:0] feature_glb[IF_PAD_SIZE-1:0];
integer ii;
// initial the content of weight and feature glb; start with 1;
initial begin
  for(ii=0;ii<IF_PAD_SIZE;ii=ii+1) begin
    feature_glb[ii] = ii+1;
  end
  for(ii=0;ii<W_PAD_SIZE;ii=ii+1) begin
    weight_glb[ii] = ii+1;
  end
end
parameter W_ADDR_WIDTH = $clog2(W_PAD_SIZE);
parameter F_ADDR_WIDTH = $clog2(IF_PAD_SIZE);

reg [W_ADDR_WIDTH-1:0] weight_glb_address;
reg [F_ADDR_WIDTH-1:0] feature_glb_address;
reg [DATA_WIDTH-1:0] weight_from_glb;
reg [DATA_WIDTH-1:0] feature_from_glb;

reg weight_read_en;
reg feature_read_en;
always @(posedge clk or negedge rst_n) begin
  if(!rst_n) begin
    weight_from_glb <= 0;
  end else if(weight_read_en) begin
    weight_from_glb <= weight_glb[weight_glb_address];
  end else begin
  end
end

always @(posedge clk or negedge rst_n) begin
  if(!rst_n) begin
    feature_from_glb <= 0;
  end else if(feature_read_en) begin
    feature_from_glb <= feature_glb[feature_glb_address];
  end else begin
  end
end

//---------------------------------------------------------------
//            pe input data enable signal generate
//---------------------------------------------------------------
reg fmap_bus_ready;
reg weight_bus_ready;

reg feature_read_en_delay;
reg weight_read_en_delay;
always@(posedge clk) begin
  feature_read_en_delay <= feature_read_en;
  weight_read_en_delay <= weight_read_en;
end

always@(*) bus_feature_valid =  feature_read_en_delay;
always@(*) bus_weight_valid =  weight_read_en_delay;

// pe input assign to glb output
always@(*) bus_weight_in = weight_from_glb;
always@(*) bus_feature_in = feature_from_glb;


integer idx_f;
task transform_fmap_data; 
  input integer start_idx_f;
  input integer end_idx_f;
  begin

    idx_f = start_idx_f;
    fmap_bus_ready <= 1;      
    while(idx_f!=end_idx_f) begin      
    @(posedge clk) begin
      if(pe_ifmap_load_ready) begin
        feature_read_en <= 1; 
        $display("transform fmap: value = %d",idx_f );
        feature_glb_address  <= idx_f;
        idx_f <= idx_f + 1; 
      end
      else begin
        feature_read_en <= 0; 
        feature_glb_address <= feature_glb_address;
        idx_f <= idx_f;
        fmap_bus_ready <= fmap_bus_ready; 
      end
    end

    #2;       
  end
  feature_read_en <= 0; 
  fmap_bus_ready <= 0; 
end
endtask

integer idx_w;
task transform_weight_data; 
   input integer start_idx_w;
   input integer end_idx_w;
   begin
    
     idx_w = start_idx_w;
     weight_bus_ready <= 1; 
     while(idx_w!=end_idx_w) begin      
    @(posedge clk) begin
      if(pe_weight_load_ready) begin
         weight_read_en <= 1;
      
        $display("transform weight: value = %d",idx_w );
        weight_glb_address  <= idx_w;
        idx_w <= idx_w + 1; 
      end 
      else begin
        weight_read_en <= 0;
        weight_glb_address <= weight_glb_address;
        idx_w <= idx_w;
        weight_bus_ready <= weight_bus_ready; 
      end
    end
    #2;       
  end
  weight_read_en <= 0;
  weight_bus_ready <= 0; 
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
      transform_fmap_data(0,8);
      #40
      transform_fmap_data(8,12);
      
      // test load one column feature function
      #150 
      start_feature_load <= 1;
      load_full_cloumn <= 0;
      //mac_begin <= 1;
      #2  start_feature_load <= 0;
      //mac_begin <= 0;
      transform_fmap_data(12,14);
      #20
      transform_fmap_data(14,16); 
    end
    begin
      weight_bus_ready = 0; 
      #11;
      start_weight_load <= 1;
      #2  start_weight_load <= 0;

      transform_weight_data(0,9);    
      #20;
      transform_weight_data(9,36);
      
      // test psum accumulate function
      #60;
      last_pe_data_valid <= 1;
      #2 last_pe_data_valid <= 1;
      last_pe_data_valid <= 1;

      #2 last_pe_data_in <= 1;
      #2 last_pe_data_in <= last_pe_data_in + 1;
      #2 last_pe_data_in <= last_pe_data_in + 1;
      last_pe_data_valid <= 0;

      #10; 
      @(posedge clk);
      psum_out_start_in <= 1;
      #2 psum_out_start_in <= 0;
    end
  join
  # 200; 
  @(posedge clk);
  psum_out_start_in <= 1;
  #2 psum_out_start_in <= 0;

// mode 1 test
   
   #20;
   S = 12;
   U = 1;
   q = 1;
   p = 3;
   j = 3;
   k = 3;
   T = 34;
   mode = 1;
   @(posedge clk) start_config = 1;
   @(posedge clk) start_config = 0;
    @(posedge clk) begin
    bus_weight_id = 1;
    bus_feature_id = 1;
    bus_inpsum_id = 1;
    bus_outpsum_id = 1;
    pe_weight_id = 1;
    pe_feature_id = 1;
    pe_inpsum_id = 1;
    pe_outpsum_id = 1;
  end 
  #2; 
   fork 
     begin
       fmap_bus_ready = 0;
       #11;
       @(posedge clk);
       load_full_cloumn <= 1;
       start_feature_load <= 1;
       #2  start_feature_load <= 0;
       // 开始传输feature
       transform_fmap_data(0,7);
       #40
       transform_fmap_data(7,12);
     end
     
     begin
       weight_bus_ready = 0; 
       #11;
       start_weight_load <= 1;
       #2  start_weight_load <= 0;

       transform_weight_data(0,10);    
       #60;
       transform_weight_data(10,37);
       transform_weight_data(37,102);
     end
   join
   
   wait(shift_finish_flg==1);
     @(posedge clk);
    last_pe_data_valid <= 1;
    #2 last_pe_data_valid <= 1;

    last_pe_data_valid <= 1;
    #2 last_pe_data_in <= 1;
    repeat(8) begin
      #2 last_pe_data_in <= last_pe_data_in + 1;
    end
    last_pe_data_valid <= 0;
   @(posedge clk);
   load_full_cloumn <= 1;
   start_feature_load <= 1;
   #2  start_feature_load <= 0;
   // 开始传输第二段feature
   transform_fmap_data(12,25);

   wait(shift_finish_flg==1);
   @(posedge clk);
   load_full_cloumn <= 1;
   start_feature_load <= 1;
   #2  start_feature_load <= 0;
   // 开始传输第三段feature
   transform_fmap_data(25,36);
   
    wait(clip_finish_flg ==1);
  

    @(posedge clk);
    psum_out_start_in <= 1;
    #2 psum_out_start_in <= 0;
  end

pe_top #(  .DATA_WIDTH      ( DATA_WIDTH      ),
           .PSUM_DATA_WIDTH ( PSUM_DATA_WIDTH ),
           .ADDR_WIDTH      ( ADDR_WIDTH      ),
           .PARA_WIDTH      ( PARA_WIDTH      ),
           .ID_WIDTH        ( ID_WIDTH        ),
           .W_PAD_SIZE      ( W_PAD_SIZE      ),
           .IF_PAD_SIZE     ( IF_PAD_SIZE     ),
           .PSUM_PAD_SIZE   ( PSUM_PAD_SIZE   ),
           .PE_FIFO_SIZE    ( PE_FIFO_SIZE    ))
U_PE_TOP_0
(  .clk                       ( clk                       ),
   .rst_n                     ( rst_n                     ),
   .S                         ( S                         ),
   .U                         ( U                         ),
   .q                         ( q                         ),
   .p                         ( p                         ),
   .j                         ( j                         ),
   .k                         ( k                         ),
   .T                         ( T                         ),
   .start_config              ( start_config              ),
   .config_state              ( config_state              ),
   .ce                        ( ce                        ),
   .start_weight_load         ( start_weight_load         ),
   .start_feature_load        ( start_feature_load        ),
   //.start_psum_in_load        ( start_psum_in_load        ),
   .load_full_cloumn          ( load_full_cloumn          ),
   .mode                      ( mode                      ),
   .bus_weight_id             ( bus_weight_id             ),
   .bus_feature_id            ( bus_feature_id            ),
   .bus_inpsum_id             ( bus_inpsum_id             ),
   .bus_outpsum_id            ( bus_outpsum_id            ),
   .pe_weight_id              ( pe_weight_id              ),
   .pe_feature_id             ( pe_feature_id             ),
   .pe_inpsum_id              ( pe_inpsum_id              ),
   .pe_outpsum_id             ( pe_outpsum_id             ),
   .bus_weight_valid          ( bus_weight_valid          ),
   .bus_weight_in             ( bus_weight_in       ),
   .bus_feature_in            ( bus_feature_in      ),
   .bus_feature_valid         ( bus_feature_valid         ),
   .bus_psum_in               ( bus_psum_in               ),
   .bus_psum_in_valid         ( bus_psum_in_valid         ),
   .last_pe_data_in           ( last_pe_data_in           ),
   .last_pe_data_valid        ( last_pe_data_valid        ),
   .psum_out_start_in         ( psum_out_start_in         ),
   .bus_psum_out              ( bus_psum_out              ),
   .bus_psum_out_valid        ( bus_psum_out_valid        ),
   .mac_finish                ( mac_finish                ),
   .psum_acc_finish           ( psum_acc_finish           ),
   .pe_ifmap_load_ready       ( pe_ifmap_load_ready       ),
   .pe_weight_load_ready      ( pe_weight_load_ready      ),
   .pe_psum_in_load_ready     ( pe_psum_in_load_ready     ),
   .shift_finish_flg          ( shift_finish_flg          ),
   .clip_finish_flg           ( clip_finish_flg           ),
   .psum_out_to_next_pe_valid ( psum_out_to_next_pe_valid ),
   .psum_out_to_next_pe       ( psum_out_to_next_pe       ));


initial begin
  $fsdbDumpvars();
  $fsdbDumpMDA();
  $dumpvars();
  #2000 $finish;
end

endmodule

