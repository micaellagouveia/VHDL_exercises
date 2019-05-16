library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity Lista2Ex3 is
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

end Lista2Ex3;

architecture Behavioral of Lista2Ex3 is

begin

out_ab <= a xor b xor cin_ab;
out_cd <= c xor d xor cin_cd;

cout_ab <= (a and b) xor (a and cin_ab) xor (b and cin_ab);
cout_cd <= (c and d) xor (c and cin_cd) xor (d and cin_cd);


end Behavioral;
