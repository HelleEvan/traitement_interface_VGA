library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity inverter_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXIS
		C_S00_AXIS_TDATA_WIDTH	: integer	:= 8;

		-- Parameters of Axi Master Bus Interface M00_AXIS
		C_M00_AXIS_TDATA_WIDTH	: integer	:= 8;
		C_M00_AXIS_START_COUNT	: integer	:= 1
	);
	port (
		-- Users to add ports here
        VidOrig_nVideoInv : in std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXIS
		s00_axis_aclk	: in std_logic;
		s00_axis_aresetn	: in std_logic;
		s00_axis_tready	: out std_logic; -- sur valid du slave
		s00_axis_tdata	: in std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0); --data
		s00_axis_tstrb	: in std_logic_vector((C_S00_AXIS_TDATA_WIDTH/8)-1 downto 0); -- sur Tstrb
		s00_axis_tlast	: in std_logic; -- last 
		s00_axis_tvalid	: in std_logic; -- su tvalid

		-- Ports of Axi Master Bus Interface M00_AXIS
		m00_axis_aclk	: in std_logic;
		m00_axis_aresetn	: in std_logic;
		m00_axis_tvalid	: out std_logic;
		m00_axis_tdata	: out std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
		m00_axis_tstrb	: out std_logic_vector((C_M00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m00_axis_tlast	: out std_logic;
		m00_axis_tready	: in std_logic -- doit être à 1
	);
end inverter_v1_0;

architecture arch_imp of inverter_v1_0 is
    SIGNAL clk_s : std_logic;
    SIGNAL reset_s : std_logic;

    begin
        -- Add user logic here
        clk_s <= s00_axis_aclk;
        reset_s <= m00_axis_aclk;
        --m00_axis_tdata <= s00_axis_tdata; --donnée sur donnée
        m00_axis_tstrb <= s00_axis_tstrb; -- user sur user
        m00_axis_tlast <= s00_axis_tlast; -- tlast sur tlast
        s00_axis_tready <= s00_axis_tvalid;
        m00_axis_tvalid <= s00_axis_tvalid;
        --inverseur
        process (VidOrig_nVideoInv, s00_axis_tdata )
        begin
            if VidOrig_nVideoInv ='1' then 
                m00_axis_tdata <= NOT s00_axis_tdata;
            else 
                m00_axis_tdata <= s00_axis_tdata;
            end if;
        end process;
        
        -- User logic ends

end arch_imp;
