----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.11.2025 14:17:40
-- Design Name: 
-- Module Name: tb_AXI4_stream - Behavioral
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

entity tb_AXI4_stream is
 Port ( 
 reset_n : in std_logic;
 clk : in std_logic;
 R : out std_logic_vector(3 downto 0 );
 G : out std_logic_vector(3 downto 0 );
 B : out std_logic_vector(3 downto 0 );
 hsync_out_0 : out std_logic;
 vsync_out_0 : out std_logic
 );
end tb_AXI4_stream;

architecture Behavioral of tb_AXI4_stream is

    signal clk_s : std_logic;
    signal reset_n_s : std_logic;

begin
    process
    begin
        clk_s <= '0';
        wait for 15 ns;
        clk_s <= '1';
        wait for 15 ns;
    end process;
TB : process
    begin
        wait for 100 ns;
        reset_n_s <='1';
        wait;
    end process;
end Behavioral;
