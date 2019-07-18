-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Oct 10 18:24:49 2018
-- Host        : ICT-50102K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               p:/Adder/two_bit_adder/two_bit_adder.srcs/sources_1/bd/Adderblock_design/ip/Adderblock_design_full_adder_0_0/Adderblock_design_full_adder_0_0_sim_netlist.vhdl
-- Design      : Adderblock_design_full_adder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Adderblock_design_full_adder_0_0_full_adder is
  port (
    sum1 : out STD_LOGIC;
    carry_out : out STD_LOGIC;
    a1 : in STD_LOGIC;
    b1 : in STD_LOGIC;
    carry_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Adderblock_design_full_adder_0_0_full_adder : entity is "full_adder";
end Adderblock_design_full_adder_0_0_full_adder;

architecture STRUCTURE of Adderblock_design_full_adder_0_0_full_adder is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \carry_out__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sum1__0\ : label is "soft_lutpair0";
begin
\carry_out__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => a1,
      I1 => carry_in,
      I2 => b1,
      O => carry_out
    );
\sum1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a1,
      I1 => b1,
      I2 => carry_in,
      O => sum1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Adderblock_design_full_adder_0_0 is
  port (
    a1 : in STD_LOGIC;
    b1 : in STD_LOGIC;
    carry_in : in STD_LOGIC;
    sum1 : out STD_LOGIC;
    carry_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Adderblock_design_full_adder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Adderblock_design_full_adder_0_0 : entity is "Adderblock_design_full_adder_0_0,full_adder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Adderblock_design_full_adder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Adderblock_design_full_adder_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Adderblock_design_full_adder_0_0 : entity is "full_adder,Vivado 2018.2";
end Adderblock_design_full_adder_0_0;

architecture STRUCTURE of Adderblock_design_full_adder_0_0 is
begin
U0: entity work.Adderblock_design_full_adder_0_0_full_adder
     port map (
      a1 => a1,
      b1 => b1,
      carry_in => carry_in,
      carry_out => carry_out,
      sum1 => sum1
    );
end STRUCTURE;
