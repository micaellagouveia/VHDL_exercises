library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity sub_1bit is
Port ( 
  a : in STD_LOGIC;
  b : in STD_LOGIC;
  b_in : in STD_LOGIC;
  r : out STD_LOGIC;
  b_out: out STD_LOGIC;

);

end sub_1bit;

architecture Behavioral of sub_1bit is

begin

r <= a xor b xor b_in;
b_out <= b_in and (not(a xor b)) or ((not a)and b);


end Behavioral;
