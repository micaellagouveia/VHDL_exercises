----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.05.2019 19:32:13
-- Design Name: 
-- Module Name: MeioSubtrator - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MeioSubtrator is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           sub : out STD_LOGIC;
           borrow_out : out STD_LOGIC);
end MeioSubtrator;

architecture Behavioral of MeioSubtrator is

begin
sub <= A XOR B;
borrow_out <= (NOT A) AND B;

end Behavioral;
