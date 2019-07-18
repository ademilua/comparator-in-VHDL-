library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparator_select is
    Port ( a : in STD_LOGIC_VECTOR(1 downto 0);
           b : in STD_LOGIC_VECTOR(1 downto 0);
           eq_0 : out STD_LOGIC;
           gr_0 : out STD_LOGIC;
           ls_0 : out STD_LOGIC);
end Comparator_select;

architecture Selected of Comparator_select is

begin
with a & b
select
eq_0 <= '1' when "0000" | "0101" |"1010" |"1111" , '0' when others;

with a & b
select
gr_0 <= '1' when "0100" | "1000" |"1001" | "1100"|"1101" | "1110" , '0' when others; 

with a & b
select
ls_0 <= '1' when "0001" | "0010" | "0011"|"0110" |"0111" | "1011" ,  '0'  when others; 


end Selected;
