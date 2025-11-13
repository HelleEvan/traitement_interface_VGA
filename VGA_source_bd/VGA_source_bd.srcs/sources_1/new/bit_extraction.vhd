----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2025 15:10:26
-- Design Name: 
-- Module Name: bit_extraction - Behavioral
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

entity bit_extraction is
    Port ( DIN : in STD_LOGIC_VECTOR (7 downto 0);
           Sel_ActVideo : in STD_LOGIC;
           DOUT : out STD_LOGIC_VECTOR (3 downto 0));
end bit_extraction;

architecture Behavioral of bit_extraction is

begin
    select_entry:process(Sel_ActVideo, DIN)
    begin
        if Sel_ActVideo ='1' then
            DOUT <= DIN(7 downto 4);
        else
            DOUT <="0000";
        end if;
    end process;
end Behavioral;
