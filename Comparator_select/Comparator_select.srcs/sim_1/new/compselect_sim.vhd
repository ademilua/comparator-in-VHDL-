----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.09.2018 22:40:08
-- Design Name: 
-- Module Name: compselect_sim - Behavioral
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

entity comparator_select_tb is
 --Port ( );
end comparator_select_tb;

architecture Behavioral of comparator_select_tb is

component Comparator_select
      Port ( a : in STD_LOGIC_VECTOR(1 downto 0);
             b : in STD_LOGIC_VECTOR(1 downto 0);
            eq_0: out STD_LOGIC;
             gr_0 : out STD_LOGIC;
             ls_0 : out STD_LOGIC);
  end component;
  signal a_tb: STD_LOGIC_VECTOR(1 downto 0);
  signal b_tb: STD_LOGIC_VECTOR(1 downto 0);
  signal eq_0: STD_LOGIC;
  signal gr_0: STD_LOGIC;
  signal ls_0: STD_LOGIC;
begin
  uut: Comparator_select port map ( a   => a_tb,
                                        b    => b_tb,
                                        eq_0 => eq_0,
                                        gr_0 => gr_0,
                                        ls_0  => ls_0);
stimulus: process
	begin	
	
a_tb <= "00" ;
b_tb <= "00";
wait for 20 ns;

a_tb <= "00" ;
b_tb <= "01" ;
wait for 20 ns;

a_tb <= "00" ;
b_tb <= "10" ;
wait for 20 ns;

a_tb <= "00" ;
b_tb <= "11" ;
wait for 20 ns;

a_tb <= "01" ;
b_tb <= "00";
wait for 20 ns;

a_tb <= "01" ;
b_tb <= "01" ;
wait for 20 ns;

a_tb <= "01" ;
b_tb <= "10" ;
wait for 20 ns;

a_tb <= "01" ;
b_tb <= "11" ;
wait for 20 ns;

a_tb <= "10" ;
b_tb <= "00";
wait for 20 ns;

a_tb <= "10" ;
b_tb <= "01" ;
wait for 20 ns;

a_tb <= "10" ;
b_tb <= "10" ;
wait for 20 ns;

a_tb <= "10" ;
b_tb <= "11" ;
wait for 20 ns;

a_tb <= "11" ;
b_tb <= "00";
wait for 20 ns;

a_tb <= "11" ;
b_tb <= "01" ;
wait for 20 ns;

a_tb <= "11" ;
b_tb <= "10" ;
wait for 20 ns;

a_tb <= "11" ;
b_tb <= "11" ;
wait for 20 ns;
wait;
    end process;
end Behavioral;


