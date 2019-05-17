library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity som_1bit is
Port ( 
  a : in STD_LOGIC;
  b : in STD_LOGIC;
  cin : in STD_LOGIC;
  r : out STD_LOGIC;
  cout: out STD_LOGIC;

);

end som_1bit;

architecture Behavioral of som_1bit is

begin

r <= a xor b xor c;
cout <= (a and b) or (a and cin) or (b and cin);

end Behavioral;
