-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Oct 10 17:31:55 2018
-- Host        : ICT-50102K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               P:/Adder/two_bit_adder/two_bit_adder.srcs/sources_1/bd/Adderblock_design/ip/Adderblock_design_half_adder_0_0/Adderblock_design_half_adder_0_0_stub.vhdl
-- Design      : Adderblock_design_half_adder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adderblock_design_half_adder_0_0 is
  Port ( 
    a0 : in STD_LOGIC;
    b0 : in STD_LOGIC;
    sum0 : out STD_LOGIC;
    carry : out STD_LOGIC
  );

end Adderblock_design_half_adder_0_0;

architecture stub of Adderblock_design_half_adder_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a0,b0,sum0,carry";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "half_adder,Vivado 2018.2";
begin
end;
