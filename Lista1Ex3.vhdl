library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lista1Ex3 is
Port(
  a : in STD_LOGIC;	
  b : in STD_LOGIC;
  c : out STD_LOGIC
);
end Lista1Ex3;

architecture Behavioral of Lista1Ex3 is

begin

c <= a or (not(a) and b);

end Behavioral;
