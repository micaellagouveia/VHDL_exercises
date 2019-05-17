library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lista2Ex2_meio_sub is
Port(
  a : in STD_LOGIC;	
  b : in STD_LOGIC;
  s : out STD_LOGIC;
  cout : out STD_LOGIC
);
end Lista2Ex2_meio_sub;

architecture Behavioral of Lista2Ex2_meio_sub is

begin

s <= a xor b;
cout <= not(a) and b;

end Behavioral;
