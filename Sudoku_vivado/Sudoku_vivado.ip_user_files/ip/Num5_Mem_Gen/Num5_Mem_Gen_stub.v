// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 11 13:53:52 2022
// Host        : LAPTOP-YUXUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/yuxun/Desktop/LDL_FinalProject_Sudoku/Sudoku_vivado/Sudoku_vivado.gen/sources_1/ip/Num5_Mem_Gen/Num5_Mem_Gen_stub.v
// Design      : Num5_Mem_Gen
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *)
module Num5_Mem_Gen(clka, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[11:0],dina[0:0],douta[0:0]" */;
  input clka;
  input [0:0]wea;
  input [11:0]addra;
  input [0:0]dina;
  output [0:0]douta;
endmodule
