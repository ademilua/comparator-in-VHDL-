--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Wed Oct 10 18:23:40 2018
--Host        : ICT-50102K running 64-bit major release  (build 9200)
--Command     : generate_target Adderblock_design.bd
--Design      : Adderblock_design
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Adderblock_design is
  port (
    A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    B0 : in STD_LOGIC;
    B1 : in STD_LOGIC;
    CARRY : out STD_LOGIC;
    SUM0 : out STD_LOGIC;
    SUM1 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Adderblock_design : entity is "Adderblock_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Adderblock_design,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Adderblock_design : entity is "Adderblock_design.hwdef";
end Adderblock_design;

architecture STRUCTURE of Adderblock_design is
  component Adderblock_design_half_adder_0_0 is
  port (
    a0 : in STD_LOGIC;
    b0 : in STD_LOGIC;
    sum0 : out STD_LOGIC;
    carry : out STD_LOGIC
  );
  end component Adderblock_design_half_adder_0_0;
  component Adderblock_design_full_adder_0_0 is
  port (
    a1 : in STD_LOGIC;
    b1 : in STD_LOGIC;
    carry_in : in STD_LOGIC;
    sum1 : out STD_LOGIC;
    carry_out : out STD_LOGIC
  );
  end component Adderblock_design_full_adder_0_0;
  signal a0_0_1 : STD_LOGIC;
  signal a1_0_1 : STD_LOGIC;
  signal b0_0_1 : STD_LOGIC;
  signal b1_0_1 : STD_LOGIC;
  signal full_adder_0_carry_out : STD_LOGIC;
  signal full_adder_0_sum1 : STD_LOGIC;
  signal half_adder_0_carry : STD_LOGIC;
  signal half_adder_0_sum0 : STD_LOGIC;
begin
  CARRY <= full_adder_0_carry_out;
  SUM0 <= half_adder_0_sum0;
  SUM1 <= full_adder_0_sum1;
  a0_0_1 <= A0;
  a1_0_1 <= A1;
  b0_0_1 <= B0;
  b1_0_1 <= B1;
full_adder_0: component Adderblock_design_full_adder_0_0
     port map (
      a1 => a1_0_1,
      b1 => b1_0_1,
      carry_in => half_adder_0_carry,
      carry_out => full_adder_0_carry_out,
      sum1 => full_adder_0_sum1
    );
half_adder_0: component Adderblock_design_half_adder_0_0
     port map (
      a0 => a0_0_1,
      b0 => b0_0_1,
      carry => half_adder_0_carry,
      sum0 => half_adder_0_sum0
    );
end STRUCTURE;
