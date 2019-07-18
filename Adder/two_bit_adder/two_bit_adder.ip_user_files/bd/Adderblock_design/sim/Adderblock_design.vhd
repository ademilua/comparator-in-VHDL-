--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Wed Oct 10 16:57:44 2018
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
    B0 : in STD_LOGIC;
    C_0 : out STD_LOGIC;
    C_I : in STD_LOGIC;
    SUM : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Adderblock_design : entity is "Adderblock_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Adderblock_design,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
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
  component Adderblock_design_half_adder_1_0 is
  port (
    a0 : in STD_LOGIC;
    b0 : in STD_LOGIC;
    sum0 : out STD_LOGIC;
    carry : out STD_LOGIC
  );
  end component Adderblock_design_half_adder_1_0;
  component Adderblock_design_half_adder_2_0 is
  port (
    a0 : in STD_LOGIC;
    b0 : in STD_LOGIC;
    sum0 : out STD_LOGIC;
    carry : out STD_LOGIC
  );
  end component Adderblock_design_half_adder_2_0;
  signal a0_0_1 : STD_LOGIC;
  signal b0_0_1 : STD_LOGIC;
  signal b0_0_2 : STD_LOGIC;
  signal half_adder_0_carry : STD_LOGIC;
  signal half_adder_0_sum0 : STD_LOGIC;
  signal half_adder_1_carry : STD_LOGIC;
  signal half_adder_1_sum0 : STD_LOGIC;
  signal half_adder_2_sum0 : STD_LOGIC;
  signal NLW_half_adder_2_carry_UNCONNECTED : STD_LOGIC;
begin
  C_0 <= half_adder_2_sum0;
  SUM <= half_adder_1_sum0;
  a0_0_1 <= A0;
  b0_0_1 <= B0;
  b0_0_2 <= C_I;
half_adder_0: component Adderblock_design_half_adder_0_0
     port map (
      a0 => a0_0_1,
      b0 => b0_0_1,
      carry => half_adder_0_carry,
      sum0 => half_adder_0_sum0
    );
half_adder_1: component Adderblock_design_half_adder_1_0
     port map (
      a0 => half_adder_0_sum0,
      b0 => b0_0_2,
      carry => half_adder_1_carry,
      sum0 => half_adder_1_sum0
    );
half_adder_2: component Adderblock_design_half_adder_2_0
     port map (
      a0 => half_adder_0_carry,
      b0 => half_adder_1_carry,
      carry => NLW_half_adder_2_carry_UNCONNECTED,
      sum0 => half_adder_2_sum0
    );
end STRUCTURE;
