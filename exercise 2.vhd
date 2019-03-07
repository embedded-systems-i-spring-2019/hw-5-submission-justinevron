----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 03:22:05 PM
-- Design Name: 
-- Module Name: exercise 2 - Behavioral
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

entity exercise2 is
    Port ( A_1 : in STD_LOGIC;
           A_2 : in STD_LOGIC;
           B_1 : in STD_LOGIC;
           B_2 : in STD_LOGIC;
           D_1 : in STD_LOGIC;
           E_OUT : out STD_LOGIC);
end exercise2;

architecture Behavioralif of exercise2 is
signal A, B, C: std_logic;
begin
process
begin
    if A_1 = '1' AND A_2 = '1' then
        A <= '1';
    else
        A <= '0';
    end if;
    if B_1 = '1' or B_2 = '1' then
        B <= '1';
    else
        B <= '0';
    end if;
    if B_2 = '1' and D_1 = '0' then
        C <= '1';
    else
        C <= '0';
    end if;
    if A = '1' or B = '1' or C = '1' then
        E_out <= '1';
     else
        E_out <= '0';
     end if;
end process;

end Behavioralif;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

architecture Behavioralcase of exercise2 is
signal E: std_logic_vector(4 downto 0);
begin
    E <= A_1 & A_2 &B_1 & B_2 & not(D_1);
process
begin
    case E is
    when "11---" => E_out <= '1';
    when "--10-" => E_out <= '1';
    when "--01-" => E_out <= '1';
    when "---11" => E_out <= '1';
    when others  => E_out <= '0';
    end case;
end process;

end Behavioralcase;