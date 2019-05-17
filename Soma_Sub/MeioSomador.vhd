library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MeioSomador is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           som : out STD_LOGIC;
           c_out : out STD_LOGIC);
end MeioSomador;

architecture Behavioral of MeioSomador is

begin

som <= a xor b;
cout <= a and b;

end Behavioral;
