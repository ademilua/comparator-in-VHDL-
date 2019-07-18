----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.10.2018 18:33:58
-- Design Name: 
-- Module Name: full_adder - Behavioral
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

entity full_adder is
    Port ( a1 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           carry_in : in STD_LOGIC;
           sum1 : out STD_LOGIC;
           carry_out : out STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

begin

carry_out <= (a1 and b1) OR (a1 and carry_in) OR (b1 and carry_in);

sum1 <= (not a1 and not b1 and carry_in) OR (a1 and not b1 and not carry_in) OR (not a1 and b1 and not carry_in) OR (a1 and b1 and carry_in); 

end Behavioral;
