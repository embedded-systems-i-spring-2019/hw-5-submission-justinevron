----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 03:22:05 PM
-- Design Name: 
-- Module Name: exercise 6 - Behavioral
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

entity exercise6 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           E : in STD_LOGIC;
           F : in STD_LOGIC;
           G : in STD_LOGIC;
           H : in STD_LOGIC;
           SEL : in STD_LOGIC_VECTOR(2 downto 0);
           DATA : out STD_LOGIC);
end exercise6;

architecture Behavioralif of exercise6 is

begin
process
begin
    if sel = "000" then
        DATA <= A;
    elsif sel = "001" then
        DATA <= B;
    elsif sel = "010" then
        DATA <= C;
    elsif sel = "011" then
        DATA <= D;
    elsif sel = "100" then
        DATA <= E;
    elsif sel = "101" then
        DATA <= F;
    elsif sel = "110" then
        DATA <= G;
    elsif sel = "111" then
        DATA <= H;
    end if;
end process;

end Behavioralif;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

architecture behavioralcase of exercise6 is

begin
process
begin
    case SEL is
    when "000" => DATA <= A;
    when "001" => DATA <= B;
    when "010" => DATA <= C;
    when "011" => DATA <= D;
    when "100" => DATA <= E;
    when "101" => DATA <= F;
    when "110" => DATA <= G;
    when "111" => DATA <= H;
    end case;
end process;
end behavioralcase;
