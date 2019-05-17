library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SubtratorCompleto is
Port ( A : in STD_LOGIC;
       B : in STD_LOGIC;
       borrow_in : in STD_LOGIC;
       sub : out STD_LOGIC;
       borrow_out : out STD_LOGIC);
end SubtratorCompleto;

architecture Behavioral of SubtratorCompleto is

Component MeioSubtrator is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           sub : out STD_LOGIC;
           borrow_out : out STD_LOGIC);
end Component;



    signal sig1, sig2, sig3 : STD_LOGIC;
begin
    meio1 : MeioSubtrator PORT MAP( A=>A, B=>B, sub=>sig1, borrow_out=>sig2);
    meio2 : MeioSubtrator PORT MAP( A=>sig1, B=>borrow_in, sub=>sub, borrow_out=>sig3); --SUB = (A XOR B) XOR borrow_in
    borrow_out <= sig2 OR sig3; 
    --SUB = (A XOR B) XOR borrow_in
    --BORROW_OUT = (A NXOR B) AND borrow_in   OR   (NOT A) AND B
end Behavioral;
