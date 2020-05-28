`define Xilinx   1      
`define LabPC  0      //Lab pc workspace
`define ASIC_SERVER 0 //asic server workspace 
// LabPC and ASIC_SERVER == 0 : other pc
`define MAX_STRING_LENGTH 200


`define ACT_WD 			16
`define Size_para_bits    8

`define PE_pad_size       256
`define PE_fifo_size      2
`define weight_bus_width  16
`define fmap_bus_width  16
`define psum_bus_width  16

`define Feature_pad_size   36
`define Weight_pad_size  200
`define Psum_pad_size  36

`define PE_cloumn_num  10
`define PE_row_num  10
`define PE_num_width 4

`define id_num_width 7
`define weight_glb_size 512
`define feature_glb_size 1024
`define psum_glb_size 1024

`define Width_PE_num 8


`define ADDRESSWIDTH_W_PAD  $clog2(`Weight_pad_size)
`define ADDRESSWIDTH_F_PAD  $clog2(`Feature_pad_size)
`define ADDRESSWIDTH_P_PAD  $clog2(`Psum_pad_size)
 
