----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.09.2018 13:54:14
-- Design Name: 
-- Module Name: BooleanComp_Source_beh - Behavioral
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

entity BooleanComp_Source_beh is
    Port ( a0 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           b0 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           eq : out STD_LOGIC;
           gr : out STD_LOGIC;
           ls : out STD_LOGIC);
end BooleanComp_Source_beh;

architecture Behavioral of BooleanComp_Source_beh is

begin
--eq_0 is 1 if a0=b0 and a1 =0 and b1 =0.
  eq <= (not a0 and  not a1 and not b0 and not b1) or (not a0 and a1 and not b0 and b1) or (a0 and not a1 and b0 and not b1) or (a0 and b0 and a1 and b1);   
  -- gr_0 is 1 if a0>b0 or if a0=b0 and a1 =1.   
  gr <=  (not a0 and a1 and not b0 and not b1) or (a0 and not a1 and not b0 and not b1) or (a0 and not a1 and not b0 and b1) or(a0 and a1 and not b0 and not b1) or (a0 and a1 and not b0 and b1)or (a0 and a1 and b0 and not b1); 
  -- ls_0 is 1 if a0<b0 or if a0=b0 and b1 =1.
  ls <= (not a0 and not a1 and not b0 and b1) or (not a0 and not a1 and b0 and not b1) or (not a0 and not a1 and b0 and b1) or (not a0 and a1 and b0 and not b1) or (not a0 and a1 and b0 and b1) or (a0 and not a1 and  b0 and b1);

end Behavioral;
