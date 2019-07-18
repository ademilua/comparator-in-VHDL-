-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Oct 10 17:31:55 2018
-- Host        : ICT-50102K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               P:/Adder/two_bit_adder/two_bit_adder.srcs/sources_1/bd/Adderblock_design/ip/Adderblock_design_half_adder_0_0/Adderblock_design_half_adder_0_0_sim_netlist.vhdl
-- Design      : Adderblock_design_half_adder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Adderblock_design_half_adder_0_0 is
  port (
    a0 : in STD_LOGIC;
    b0 : in STD_LOGIC;
    sum0 : out STD_LOGIC;
    carry : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Adderblock_design_half_adder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Adderblock_design_half_adder_0_0 : entity is "Adderblock_design_half_adder_0_0,half_adder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Adderblock_design_half_adder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Adderblock_design_half_adder_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Adderblock_design_half_adder_0_0 : entity is "half_adder,Vivado 2018.2";
end Adderblock_design_half_adder_0_0;

architecture STRUCTURE of Adderblock_design_half_adder_0_0 is
begin
carry_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => a0,
      I1 => b0,
      O => carry
    );
sum0_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b0,
      I1 => a0,
      O => sum0
    );
end STRUCTURE;
