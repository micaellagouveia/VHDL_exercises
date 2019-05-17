library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Subtrator3bits is
Port ( A : in STD_LOGIC_VECTOR(2 DOWNTO 0);
       B : in STD_LOGIC_VECTOR(2 DOWNTO 0);
       borrow_in : in STD_LOGIC;
       sub : out STD_LOGIC_VECTOR(2 DOWNTO 0);
       borrow_out : out STD_LOGIC);
end Subtrator3bits;

architecture Behavioral of Subtrator3bits is

Component SubtratorCompleto is
Port ( A : in STD_LOGIC;
       B : in STD_LOGIC;
       borrow_in : in STD_LOGIC;
       sub : out STD_LOGIC;
       borrow_out : out STD_LOGIC);
end Component;



    signal borrow1, borrow2 : STD_LOGIC;
begin
    sub1 : SubtratorCompleto PORT MAP( A=>A(0), B=>B(0), borrow_in=>borrow_in, sub=>sub(0), borrow_out=>borrow1);
    sub2 : SubtratorCompleto PORT MAP( A=>A(1), B=>B(1), borrow_in=>borrow1, sub=>sub(1), borrow_out=>borrow2);
    sub3 : SubtratorCompleto PORT MAP( A=>A(2), B=>B(2), borrow_in=>borrow2, sub=>sub(2), borrow_out=>borrow_out);--borrow3 se fosse mais bits
    --sub4 : SubtratorCompleto PORT MAP( A=>A(3), B=>B(3), borrow_in=>borrow3, sub=>sub(2), borrow_out=>borrow4);
    --sub5 : SubtratorCompleto PORT MAP( A=>A(4), B=>B(4), borrow_in=>borrow4, sub=>sub(2), borrow_out=>borrow5);
    --sub6 : SubtratorCompleto PORT MAP( A=>A(5), B=>B(5), borrow_in=>borrow5, sub=>sub(2), borrow_out=>borrow_out);
    --PARA MAIS BITS, SO BASTA REPETIR O COMPONENTE
end Behavioral;
