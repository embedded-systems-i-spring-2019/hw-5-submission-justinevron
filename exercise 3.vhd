----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 03:22:05 PM
-- Design Name: 
-- Module Name: exercise 3 - Behavioral
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

entity exercise3 is
    Port ( A_1 : in STD_LOGIC;
           A_2 : in STD_LOGIC;
           B_1 : in STD_LOGIC;
           D_1 : in STD_LOGIC;
           B_2 : in STD_LOGIC;
           E_OUT : out STD_LOGIC);
end exercise3;

architecture Behavioral of exercise3 is
signal E: std_logic_vector(4 downto 0);
begin
 E <= A_1 & A_2 &B_1 & B_2 & not(D_1);
 E_out <= '1' when E = "11---" else
          '1' when E = "--10-" else
          '1' when E = "--01-" else
          '1' when E = "---11" else
          '0';

end Behavioral;
