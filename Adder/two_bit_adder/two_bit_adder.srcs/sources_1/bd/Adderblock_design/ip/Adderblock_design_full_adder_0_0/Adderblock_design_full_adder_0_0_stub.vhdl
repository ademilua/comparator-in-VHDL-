-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Oct 10 18:24:49 2018
-- Host        : ICT-50102K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               p:/Adder/two_bit_adder/two_bit_adder.srcs/sources_1/bd/Adderblock_design/ip/Adderblock_design_full_adder_0_0/Adderblock_design_full_adder_0_0_stub.vhdl
-- Design      : Adderblock_design_full_adder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adderblock_design_full_adder_0_0 is
  Port ( 
    a1 : in STD_LOGIC;
    b1 : in STD_LOGIC;
    carry_in : in STD_LOGIC;
    sum1 : out STD_LOGIC;
    carry_out : out STD_LOGIC
  );

end Adderblock_design_full_adder_0_0;

architecture stub of Adderblock_design_full_adder_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a1,b1,carry_in,sum1,carry_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "full_adder,Vivado 2018.2";
begin
end;
