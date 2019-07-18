// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Oct 10 17:31:55 2018
// Host        : ICT-50102K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               P:/Adder/two_bit_adder/two_bit_adder.srcs/sources_1/bd/Adderblock_design/ip/Adderblock_design_half_adder_0_0/Adderblock_design_half_adder_0_0_stub.v
// Design      : Adderblock_design_half_adder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "half_adder,Vivado 2018.2" *)
module Adderblock_design_half_adder_0_0(a0, b0, sum0, carry)
/* synthesis syn_black_box black_box_pad_pin="a0,b0,sum0,carry" */;
  input a0;
  input b0;
  output sum0;
  output carry;
endmodule
