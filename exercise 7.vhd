----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 03:22:05 PM
-- Design Name: 
-- Module Name: exercise 7 - Behavioral
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

entity exercise7 is
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           DATA : out STD_LOGIC_VECTOR (7 downto 0));
end exercise7;

architecture Behavioralif of exercise7 is

begin
process
begin
    if S = "000" then
        DATA <= "00000001";
    elsif S = "001" then
        DATA <= "00000010";
    elsif S = "010" then
        DATA <= "00000100";
    elsif S = "011" then
        DATA <= "00001000";
    elsif S = "100" then
        DATA <= "00010000";
    elsif S = "101" then
        DATA <= "00100000";
    elsif S = "110" then
        DATA <= "01000000";
    elsif S = "111" then
        DATA <= "10000000";
    end if;
end process;

end Behavioralif;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

architecture behavioralcase of exercise7 is

begin
process
begin
    case S is
    when "000" => DATA <= "00000001";
    when "001" => DATA <= "00000010";
    when "010" => DATA <= "00000100";
    when "011" => DATA <= "00001000";
    when "100" => DATA <= "00010000";
    when "101" => DATA <= "00100000";
    when "110" => DATA <= "01000000";
    when "111" => DATA <= "10000000";
    end case;
end process;
end behavioralcase;
