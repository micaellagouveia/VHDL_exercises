library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.NUMERIC_STD.ALL;


entity meio_som is
    Port ( 
	a : in STD_LOGIC;
	b : in STD_LOGIC;
	cout : out STD_LOGIC;
	s : out STD_LOGIC
);
end meio_som;

architecture Behavioral of meio_som is

begin

s <= a xor b;
cout <= a and b;

end Behavioral;

