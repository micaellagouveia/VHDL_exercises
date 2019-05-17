library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SomadorrCompleto is
Port ( a : in STD_LOGIC;
       b : in STD_LOGIC;
       cin : in STD_LOGIC;
       som : out STD_LOGIC;
       cout : out STD_LOGIC);
end SomadorCompleto;

architecture Behavioral of SomadorCompleto is

Component MeioSomador is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           som : out STD_LOGIC;
           cout : out STD_LOGIC);
end Component;

    signal s_som: STD_LOGIC;
    signal s_cout1: STD_LOGIC;
    signal s_cout2: STD_LOGIC;

begin
    meio1 : MeioSomador port map( a, b, s_som, s_cout1);
    meio2 : MeioSomador port map( s_cin, cin, som,s_cout2); -- som = (a xor b) xor cin

    cout <= s_cout1 or s_cout2; 

    --som = a xor b xor cin;
    --cout = (a xor b) and cin or (a and b);

end Behavioral;
