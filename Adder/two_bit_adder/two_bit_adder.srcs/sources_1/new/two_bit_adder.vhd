----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.10.2018 18:43:19
-- Design Name: 
-- Module Name: two_bit_adder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity two_bit_adder is
    Port ( A0 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           CARRY_OUT : out STD_LOGIC;
           SUM0 : out STD_LOGIC;
           SUM1 : out STD_LOGIC);
end two_bit_adder;

architecture Behavioral of two_bit_adder is
component half_adder

    Port ( a0 : in STD_LOGIC;
           b0 : in STD_LOGIC;
           carry :out STD_LOGIC;
           sum0 :out STD_LOGIC);
    end component;

    component full_adder

    Port(a1 :in STD_LOGIC;
         b1 :in STD_LOGIC;
         carry_in :in STD_LOGIC;
         sum1 :out STD_LOGIC;
         carry_out :out STD_LOGIC);
    end component;


signal join_adders : std_logic;

begin
      C1: component half_adder port map (a0=>A0, b0=>B0, carry=>join_adders, sum0=>SUM0); 
      C2: component full_adder port map(a1=>A1, b1=>B1, carry_in=>join_adders, carry_out=>CARRY_OUT, sum1=>SUM1);

end Behavioral;

