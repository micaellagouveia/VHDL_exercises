library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity Lista2Ex2_sub_3bits is
Port ( 
   a : in STD_LOGIC_VECTOR(2 downto 0);
   b : in STD_LOGIC_VECTOR(2 downto 0);
   r : out STD_LOGIC_VECTOR(2 downto 0);
   cout : out STD_LOGIC
);

end Lista2Ex2_sub_3bits;

architecture Behavioral of Lista2Ex2_sub_3bits is

Component Lista2Ex2_meio_sub is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           r : out STD_LOGIC;
           cout : out STD_LOGIC);
end component;

signal s_cout1: STD_LOGIC;
signal s_cout2: STD_LOGIC;

begin

sub_1: Lista2Ex2_meio_sub port map ( a(0), b(0), r(0), cout);
sub_2: Lista2Ex2_meio_sub port map ( a(1), b(1), r(1), s_cout1);
sub_3: LIsta2Ex2_meio_sub port map ( a(2), b(2), r(2), s_cout2);

end Behavioral;
