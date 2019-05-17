library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lista1Ex6 is
Port(
  y : in STD_LOGIC;	
  x : in STD_LOGIC;
  z : in STD_LOGIC;
  cout : out STD_LOGIC
);
end Lista1Ex6;

architecture Behavioral of Lista1Ex6 is

begin

cout <= not(not(x) and not(z) and not(z) and (x or y or not(z)));

end Behavioral;
