library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lista1Ex2 is
Port(
  a : in STD_LOGIC;	
  b : in STD_LOGIC;
  c : out STD_LOGIC
);
end Lista1Ex2;

architecture Behavioral of Lista1Ex2 is

begin

c <= a and (a or b);

end Behavioral;
