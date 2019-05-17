library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity Lista3Ex1 is
Port ( 
  a : in STD_LOGIC;
  b : in STD_LOGIC;
  e : in STD_LOGIC_VECTOR(3 downto 0);
  s : out STD_LOGIC
);

end Lista3Ex1;

architecture Behavioral of Lista3Ex1 is

signal s1: STD_LOGIC;
signal s2: STD_LOGIC;
signal s3: STD_LOGIC;
signal s4: STD_LOGIC;

begin

s1 <= e(0) and not(a) and not(b);
s2 <= e(1) and not(a) and b;
s3 <= e(2) and a and not(b);
s4 <= e(3) and a and b;

s <= s1 or s2 or s3 or s4;




end Behavioral;
