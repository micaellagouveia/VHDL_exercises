library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity sub_3bits is
Port ( 
  a : in STD_LOGIC_VECTOR(2 downto 0);
  b : in STD_LOGIC_VECTOR(2 downto 0);
  b_in : in STD_LOGIC;
  r : out STD_LOGIC_VECTOR(2 downto 0);
  b_out: out STD_LOGIC;

);

end sub_3bits;

architecture Behavioral of sub_3bits is

component sub_1bit is
Port ( 
  a : in STD_LOGIC;
  b : in STD_LOGIC;
  b_in : in STD_LOGIC;
  r : out STD_LOGIC;
  b_out: out STD_LOGIC;

);
end component;

signal s_b_out1 : STD_LOGIC;
signal s_b_out2 : STD_LOGIC;

begin

sub1: sub_1bit port map (a(0), b(0), b_in, r(0), s_b_out1);
sub2: sub_1bit port map (a(1), b(1), s_b_out1, r(1), s_b_out2);
sub3: sub_1bit port map (a(2), b(2), s_b_out2, r(2), b_out);



end Behavioral;
