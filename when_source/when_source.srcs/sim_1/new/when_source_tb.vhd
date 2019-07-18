----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.09.2018 14:55:29
-- Design Name: 
-- Module Name: when_source_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity when_source_tb is
--  Port ( );
end when_source_tb;

architecture Behavioral of when_source_tb is

component when_source_beh
 Port ( a0 : in STD_LOGIC;
          a1 : in STD_LOGIC;
          b0 : in STD_LOGIC;
          b1 : in STD_LOGIC;
          eq : out STD_LOGIC;
          gr : out STD_LOGIC;
          ls : out STD_LOGIC);
          end component;
signal a0_tb: STD_LOGIC;
signal a1_tb: STD_LOGIC;
signal b0_tb: STD_LOGIC;
signal b1_tb: STD_LOGIC;
signal eq_tb: STD_LOGIC;
signal gr_tb: STD_LOGIC;
signal ls_tb: STD_LOGIC;

begin
uut: when_source_beh port map 
( a0=>a0_tb,
  a1=>a1_tb,
  b0=>b0_tb,
  b1=>b1_tb,
  eq=>eq_tb,
  gr=>gr_tb,
  ls=>ls_tb);
  
stimulus: process
begin
a0_tb <='0';
a1_tb <='0';
b0_tb <='0';
b1_tb <='0';
wait for 15ns;
a0_tb<='0';
a1_tb<='0';
b0_tb<='0';
b1_tb<='1';
wait for 15 ns;
a0_tb<='0';
a1_tb<='0';
b0_tb<='1';
b1_tb<='0';
wait for 15 ns;
a0_tb<='0';
a1_tb<='0';
b0_tb<='1';
b1_tb<='1';
wait for 15 ns;
a0_tb<='0';
a1_tb<='1';
b0_tb<='0';
b1_tb<='0';
wait for 15 ns;
a0_tb<='0';
a1_tb<='1';
b0_tb<='0';
b1_tb<='1';
wait for 15 ns;
a0_tb<='0';
a1_tb<='1';
b0_tb<='1';
b1_tb<='0';
wait for 15 ns;
a0_tb<='0';
a1_tb<='1';
b0_tb<='1';
b1_tb<='1';
wait for 15 ns;
a0_tb<='1';
a1_tb<='0';
b0_tb<='0';
b1_tb<='0';
wait for 15 ns;
a0_tb<='1';
a1_tb<='0';
b0_tb<='0';
b1_tb<='1';
wait for 15 ns;
a0_tb<='1';
a1_tb<='0';
b0_tb<='1';
b1_tb<='0';
wait for 15 ns;
a0_tb<='1';
a1_tb<='0';
b0_tb<='1';
b1_tb<='1';
wait for 15 ns;
a0_tb<='1';
a1_tb<='1';
b0_tb<='0';
b1_tb<='0';
wait for 15 ns;
a0_tb<='1';
a1_tb<='1';
b0_tb<='0';
b1_tb<='1';
wait for 15 ns;
a0_tb<='1';
a1_tb<='1';
b0_tb<='1';
b1_tb<='0';
wait for 15 ns;
a0_tb<='1';
a1_tb<='1';
b0_tb<='1';
b1_tb<='1';
wait for 15 ns;
wait;
end process;

end Behavioral;
