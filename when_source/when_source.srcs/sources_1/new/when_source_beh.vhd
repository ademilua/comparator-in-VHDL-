----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.09.2018 14:47:36
-- Design Name: 
-- Module Name: when_source_beh - Behavioral
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

entity when_source_beh is
    Port ( a0 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           b0 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           eq : out STD_LOGIC;
           gr : out STD_LOGIC;
           ls : out STD_LOGIC);
end when_source_beh;

architecture Behavioral of when_source_beh is

begin

eq <='1' when ((a0='0'and a1='0')and(b0='0'and b1='0'))or
              ((a0='0'and a1='1')and(b0='0'and b1='1'))or
              ((a0='1'and a1='0')and(b0='1'and b1='0'))or
              ((a0='1'and a1='1')and(b0='1'and b1='1'))
              else '0';

gr <='1' when ((a0='0'and a1='1')and(b0='0'and b1='0'))or
              ((a0='1'and a1='0')and(b0='0'and b1='0'))or
              ((a0='1'and a1='0')and(b0='0'and b1='1'))or
              ((a0='1'and a1='1')and(b0='0'and b1='0'))or
              ((a0='1'and a1='1')and(b0='0'and b1='1'))or
              ((a0='1'and a1='1')and(b0='1'and b1='0'))
              else'0';
              
ls <='1' when ((a0='0'and a1='0')and(b0='0'and b1='1'))or
              ((a0='0'and a1='0')and(b0='1'and b1='0'))or
              ((a0='0'and a1='0')and(b0='1'and b1='1'))or
              ((a0='0'and a1='1')and(b0='1'and b1='0'))or
              ((a0='0'and a1='1')and(b0='1'and b1='1'))or
              ((a0='1'and a1='0')and(b0='1'and b1='1'))
              else '0';

end Behavioral;
