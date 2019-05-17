library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity som_3bits is
Port ( 
  a : in STD_LOGIC_VECTOR(2 downto 0);
  b : in STD_LOGIC_VECTOR(2 downto 0);
  cin : in STD_LOGIC;
  r : out STD_LOGIC_VECTOR(2 downto 0);
  cout: out STD_LOGIC

);

end som_3bits;

architecture Behavioral of som_3bits is

component som_1bit is
Port ( 
  a : in STD_LOGIC;
  b : in STD_LOGIC;
  cin : in STD_LOGIC;
  r : out STD_LOGIC;
  cout: out STD_LOGIC;

);
end component;

signal s_cout_1: std_logic;
signal s_cout_2: std_logic;

begin

soma1: som_1bit port map (a(0), b(0), cin, r(0), s_cout_1);
soma2: som_1bit port map (a(1), b(1), s_cout_1, r(1), s_cout_2);
soma1: som_1bit port map (a(2), b(2), s_cout_2, r(2), cout);

end Behavioral;
