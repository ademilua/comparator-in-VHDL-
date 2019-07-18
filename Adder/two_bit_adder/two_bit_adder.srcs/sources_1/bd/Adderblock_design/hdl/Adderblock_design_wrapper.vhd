--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Wed Oct 10 18:23:40 2018
--Host        : ICT-50102K running 64-bit major release  (build 9200)
--Command     : generate_target Adderblock_design_wrapper.bd
--Design      : Adderblock_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Adderblock_design_wrapper is
  port (
    A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    B0 : in STD_LOGIC;
    B1 : in STD_LOGIC;
    CARRY : out STD_LOGIC;
    SUM0 : out STD_LOGIC;
    SUM1 : out STD_LOGIC
  );
end Adderblock_design_wrapper;

architecture STRUCTURE of Adderblock_design_wrapper is
  component Adderblock_design is
  port (
    A0 : in STD_LOGIC;
    B0 : in STD_LOGIC;
    SUM0 : out STD_LOGIC;
    A1 : in STD_LOGIC;
    B1 : in STD_LOGIC;
    SUM1 : out STD_LOGIC;
    CARRY : out STD_LOGIC
  );
  end component Adderblock_design;
begin
Adderblock_design_i: component Adderblock_design
     port map (
      A0 => A0,
      A1 => A1,
      B0 => B0,
      B1 => B1,
      CARRY => CARRY,
      SUM0 => SUM0,
      SUM1 => SUM1
    );
end STRUCTURE;
