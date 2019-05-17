library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lista1Ex4 is
Port(
  a : in STD_LOGIC;	
  b : in STD_LOGIC;
  c : in STD_LOGIC;
  d : out STD_LOGIC
);
end Lista1Ex4;

architecture Behavioral of Lista1Ex4 is

begin

d <= (a or b) and (a or c);

end Behavioral;
