library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lista1Ex5 is
Port(
  a : in STD_LOGIC;	
  b : in STD_LOGIC;
  c : in STD_LOGIC;
  d : out STD_LOGIC
);
end Lista1Ex5;

architecture Behavioral of Lista1Ex5 is

signal s_a_and_b_and_c : STD_LOGIC;
signal s_not_c : STD_LOGIC;
signal s_not_b : STD_LOGIC;

begin

s_a_and_b_and_c <= a and b and c;
s_a_and_not_c <= a and (not (c));
s_a_and_not_b <= a and (not (b));

d <= s_a_and_b_and_c or s_a_and_not_c or s_a_and_not_b;

end Behavioral;
