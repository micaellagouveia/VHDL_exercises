library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity Lista2Ex3_som_3bits is
Port ( 
  a : in STD_LOGIC_VECTOR(2 downto 0);
  b : in STD_LOGIC_VECTOR(2 downto 0);
  cin_ab : in STD_LOGIC;
  cout_ab : out STD_LOGIC;
  c : in STD_LOGIC_VECTOR(2 downto 0);
  d : in STD_LOGIC_VECTOR(2 downto 0);
  cin_cd : in STD_LOGIC;
  cout_cd : out STD_LOGIC;
  out_ab : out STD_LOGIC_VECTOR(2 downto 0);
  out_cd : out STD_LOGIC_VECTOR(2 downto 0)
);

end Lista2Ex3_som_3bits;

architecture Behavioral of Lista2Ex3_som_3bits is

Component Lista2Ex3 is
    Port ( 
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    cin_ab : in STD_LOGIC;
    cout_ab : out STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    cin_cd : in STD_LOGIC;
    cout_cd : out STD_LOGIC;
    out_ab : out STD_LOGIC;
    out_cd : out STD_LOGIC
     );
end component;

signal s_cin_ab_1: STD_LOGIC;
signal s_cin_ab_2: STD_LOGIC;
signal s_cin_cd_1: STD_LOGIC;
signal s_cin_cd_2: STD_LOGIC;
signal s_answer: STD_LOGIC;
signal s_cout_ab: STD_LOGIC;
signal s_cout_cd: STD_LOGIC;

begin


COMPARADOR: process(s_cout_ab, s_cout_cd)

begin

  if (s_cout_ab = s_cout_cd)
    then s_answer <= '1';

  else
    s_answer <= '0';

  end if

end process

som_1: Lista2Ex2_meio_sub port map ( a(0), b(0), cin_ab, s_cin_ab_1, c(0), d(0), cin_cd, s_cin_cd_1, out_ab(0), out_cd(0));
som_2: Lista2Ex2_meio_sub port map ( a(1), b(1), s_cin_ab_1, s_cin_ab_2, c(1), d(1), s_cin_cd_1, s_cin_cd_2, out_ab(1), out_cd(1));
som_3: LIsta2Ex2_meio_sub port map ( a(2), b(2), s_cin_ab_2, cout_ab, c(2), d(2), s_cin_cd_2, cout_cd, out_ab(2), out_cd(2));

s_cout_ab <= cout_ab;
s_cout_cd <= cout_cd;

end Behavioral;
