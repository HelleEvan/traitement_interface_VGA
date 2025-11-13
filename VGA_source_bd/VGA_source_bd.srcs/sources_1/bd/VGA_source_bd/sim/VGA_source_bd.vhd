--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Thu Nov 13 14:13:12 2025
--Host        : PT-PC-E0215W running 64-bit major release  (build 9200)
--Command     : generate_target VGA_source_bd.bd
--Design      : VGA_source_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity VGA_source_bd is
  port (
    B : out STD_LOGIC_VECTOR ( 3 downto 0 );
    G : out STD_LOGIC_VECTOR ( 3 downto 0 );
    R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    hsync_out_0 : out STD_LOGIC;
    reset_n : in STD_LOGIC;
    vsync_out_0 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of VGA_source_bd : entity is "VGA_source_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=VGA_source_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=11,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of VGA_source_bd : entity is "VGA_source_bd.hwdef";
end VGA_source_bd;

architecture STRUCTURE of VGA_source_bd is
  component VGA_source_bd_clk_wiz_0_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component VGA_source_bd_clk_wiz_0_0;
  component VGA_source_bd_c_counter_binary_0_1 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component VGA_source_bd_c_counter_binary_0_1;
  component VGA_source_bd_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component VGA_source_bd_proc_sys_reset_0_0;
  component VGA_source_bd_v_tc_0_0 is
  port (
    clk : in STD_LOGIC;
    clken : in STD_LOGIC;
    gen_clken : in STD_LOGIC;
    hsync_out : out STD_LOGIC;
    hblank_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    vblank_out : out STD_LOGIC;
    active_video_out : out STD_LOGIC;
    resetn : in STD_LOGIC;
    fsync_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component VGA_source_bd_v_tc_0_0;
  component VGA_source_bd_bit_extraction_0_0 is
  port (
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Sel_ActVideo : in STD_LOGIC;
    DOUT : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component VGA_source_bd_bit_extraction_0_0;
  component VGA_source_bd_v_vid_in_axi4s_0_0 is
  port (
    vid_io_in_clk : in STD_LOGIC;
    vid_io_in_ce : in STD_LOGIC;
    vid_io_in_reset : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_hblank : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_field_id : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    fid : out STD_LOGIC;
    vtd_active_video : out STD_LOGIC;
    vtd_vblank : out STD_LOGIC;
    vtd_hblank : out STD_LOGIC;
    vtd_vsync : out STD_LOGIC;
    vtd_hsync : out STD_LOGIC;
    vtd_field_id : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    axis_enable : in STD_LOGIC
  );
  end component VGA_source_bd_v_vid_in_axi4s_0_0;
  component VGA_source_bd_v_tc_1_0 is
  port (
    clk : in STD_LOGIC;
    clken : in STD_LOGIC;
    det_clken : in STD_LOGIC;
    gen_clken : in STD_LOGIC;
    hsync_in : in STD_LOGIC;
    hblank_in : in STD_LOGIC;
    vsync_in : in STD_LOGIC;
    vblank_in : in STD_LOGIC;
    active_video_in : in STD_LOGIC;
    hsync_out : out STD_LOGIC;
    hblank_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    vblank_out : out STD_LOGIC;
    active_video_out : out STD_LOGIC;
    resetn : in STD_LOGIC;
    fsync_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component VGA_source_bd_v_tc_1_0;
  component VGA_source_bd_v_axi4s_vid_out_0_0 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    fid : in STD_LOGIC;
    vid_io_out_clk : in STD_LOGIC;
    vid_io_out_ce : in STD_LOGIC;
    vid_io_out_reset : in STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_hsync : out STD_LOGIC;
    vid_vblank : out STD_LOGIC;
    vid_hblank : out STD_LOGIC;
    vid_field_id : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vtg_vsync : in STD_LOGIC;
    vtg_hsync : in STD_LOGIC;
    vtg_vblank : in STD_LOGIC;
    vtg_hblank : in STD_LOGIC;
    vtg_active_video : in STD_LOGIC;
    vtg_field_id : in STD_LOGIC;
    vtg_ce : out STD_LOGIC;
    locked : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    fifo_read_level : out STD_LOGIC_VECTOR ( 11 downto 0 );
    status : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component VGA_source_bd_v_axi4s_vid_out_0_0;
  component VGA_source_bd_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component VGA_source_bd_xlconstant_0_0;
  component VGA_source_bd_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component VGA_source_bd_xlconstant_0_1;
  component VGA_source_bd_proc_sys_reset_1_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component VGA_source_bd_proc_sys_reset_1_0;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Net2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Net3 : STD_LOGIC;
  signal bit_extraction_0_DOUT : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal const_GND_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_n_1 : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_active_video : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal v_axi4s_vid_out_0_vid_hsync : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_vsync : STD_LOGIC;
  signal v_axi4s_vid_out_0_vtg_ce : STD_LOGIC;
  signal v_tc_0_active_video_out : STD_LOGIC;
  signal v_tc_0_hblank_out : STD_LOGIC;
  signal v_tc_0_hsync_out : STD_LOGIC;
  signal v_tc_0_vblank_out : STD_LOGIC;
  signal v_tc_0_vsync_out : STD_LOGIC;
  signal v_tc_1_vtiming_out_ACTIVE_VIDEO : STD_LOGIC;
  signal v_tc_1_vtiming_out_HBLANK : STD_LOGIC;
  signal v_tc_1_vtiming_out_HSYNC : STD_LOGIC;
  signal v_tc_1_vtiming_out_VBLANK : STD_LOGIC;
  signal v_tc_1_vtiming_out_VSYNC : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal v_vid_in_axi4s_0_video_out_TLAST : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TREADY : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TUSER : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TVALID : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_HBLANK : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_HSYNC : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_VBLANK : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_VSYNC : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_v_axi4s_vid_out_0_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_field_id_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_hblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_vblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_fifo_read_level_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_v_axi4s_vid_out_0_status_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_v_tc_0_fsync_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_v_tc_1_fsync_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_v_vid_in_axi4s_0_fid_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_field_id_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN VGA_source_bd_clk_in1_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of reset_n : signal is "xilinx.com:signal:reset:1.0 RST.RESET_N RST";
  attribute X_INTERFACE_PARAMETER of reset_n : signal is "XIL_INTERFACENAME RST.RESET_N, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  B(3 downto 0) <= bit_extraction_0_DOUT(3 downto 0);
  G(3 downto 0) <= bit_extraction_0_DOUT(3 downto 0);
  R(3 downto 0) <= bit_extraction_0_DOUT(3 downto 0);
  clk_1 <= clk;
  hsync_out_0 <= v_axi4s_vid_out_0_vid_hsync;
  reset_n_1 <= reset_n;
  vsync_out_0 <= v_axi4s_vid_out_0_vid_vsync;
bit_extraction_0: component VGA_source_bd_bit_extraction_0_0
     port map (
      DIN(7 downto 0) => v_axi4s_vid_out_0_vid_data(7 downto 0),
      DOUT(3 downto 0) => bit_extraction_0_DOUT(3 downto 0),
      Sel_ActVideo => v_axi4s_vid_out_0_vid_active_video
    );
c_counter_binary_0: component VGA_source_bd_c_counter_binary_0_1
     port map (
      CE => v_tc_0_active_video_out,
      CLK => Net,
      Q(7 downto 0) => c_counter_binary_0_Q(7 downto 0),
      SCLR => v_tc_0_hsync_out
    );
clk_wiz_0: component VGA_source_bd_clk_wiz_0_0
     port map (
      clk_in1 => clk_1,
      clk_out1 => Net3,
      clk_out2 => Net,
      locked => clk_wiz_0_locked,
      resetn => reset_n_1
    );
const_GND: component VGA_source_bd_xlconstant_0_1
     port map (
      dout(0) => const_GND_dout(0)
    );
const_VDD: component VGA_source_bd_xlconstant_0_0
     port map (
      dout(0) => Net1(0)
    );
proc_sys_reset_0: component VGA_source_bd_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => reset_n_1,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => Net3
    );
proc_sys_reset_1: component VGA_source_bd_proc_sys_reset_1_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => reset_n_1,
      interconnect_aresetn(0) => NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => Net2(0),
      peripheral_reset(0) => NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => Net
    );
v_axi4s_vid_out_0: component VGA_source_bd_v_axi4s_vid_out_0_0
     port map (
      aclk => Net3,
      aclken => '1',
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      fid => '0',
      fifo_read_level(11 downto 0) => NLW_v_axi4s_vid_out_0_fifo_read_level_UNCONNECTED(11 downto 0),
      locked => NLW_v_axi4s_vid_out_0_locked_UNCONNECTED,
      overflow => NLW_v_axi4s_vid_out_0_overflow_UNCONNECTED,
      s_axis_video_tdata(7 downto 0) => v_vid_in_axi4s_0_video_out_TDATA(7 downto 0),
      s_axis_video_tlast => v_vid_in_axi4s_0_video_out_TLAST,
      s_axis_video_tready => v_vid_in_axi4s_0_video_out_TREADY,
      s_axis_video_tuser => v_vid_in_axi4s_0_video_out_TUSER,
      s_axis_video_tvalid => v_vid_in_axi4s_0_video_out_TVALID,
      status(31 downto 0) => NLW_v_axi4s_vid_out_0_status_UNCONNECTED(31 downto 0),
      underflow => NLW_v_axi4s_vid_out_0_underflow_UNCONNECTED,
      vid_active_video => v_axi4s_vid_out_0_vid_active_video,
      vid_data(7 downto 0) => v_axi4s_vid_out_0_vid_data(7 downto 0),
      vid_field_id => NLW_v_axi4s_vid_out_0_vid_field_id_UNCONNECTED,
      vid_hblank => NLW_v_axi4s_vid_out_0_vid_hblank_UNCONNECTED,
      vid_hsync => v_axi4s_vid_out_0_vid_hsync,
      vid_io_out_ce => Net1(0),
      vid_io_out_clk => Net,
      vid_io_out_reset => const_GND_dout(0),
      vid_vblank => NLW_v_axi4s_vid_out_0_vid_vblank_UNCONNECTED,
      vid_vsync => v_axi4s_vid_out_0_vid_vsync,
      vtg_active_video => v_tc_1_vtiming_out_ACTIVE_VIDEO,
      vtg_ce => v_axi4s_vid_out_0_vtg_ce,
      vtg_field_id => '0',
      vtg_hblank => v_tc_1_vtiming_out_HBLANK,
      vtg_hsync => v_tc_1_vtiming_out_HSYNC,
      vtg_vblank => v_tc_1_vtiming_out_VBLANK,
      vtg_vsync => v_tc_1_vtiming_out_VSYNC
    );
v_tc_0: component VGA_source_bd_v_tc_0_0
     port map (
      active_video_out => v_tc_0_active_video_out,
      clk => Net,
      clken => '1',
      fsync_out(0) => NLW_v_tc_0_fsync_out_UNCONNECTED(0),
      gen_clken => '1',
      hblank_out => v_tc_0_hblank_out,
      hsync_out => v_tc_0_hsync_out,
      resetn => Net2(0),
      vblank_out => v_tc_0_vblank_out,
      vsync_out => v_tc_0_vsync_out
    );
v_tc_1: component VGA_source_bd_v_tc_1_0
     port map (
      active_video_in => v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO,
      active_video_out => v_tc_1_vtiming_out_ACTIVE_VIDEO,
      clk => Net,
      clken => Net1(0),
      det_clken => Net1(0),
      fsync_out(0) => NLW_v_tc_1_fsync_out_UNCONNECTED(0),
      gen_clken => v_axi4s_vid_out_0_vtg_ce,
      hblank_in => v_vid_in_axi4s_0_vtiming_out_HBLANK,
      hblank_out => v_tc_1_vtiming_out_HBLANK,
      hsync_in => v_vid_in_axi4s_0_vtiming_out_HSYNC,
      hsync_out => v_tc_1_vtiming_out_HSYNC,
      resetn => Net2(0),
      vblank_in => v_vid_in_axi4s_0_vtiming_out_VBLANK,
      vblank_out => v_tc_1_vtiming_out_VBLANK,
      vsync_in => v_vid_in_axi4s_0_vtiming_out_VSYNC,
      vsync_out => v_tc_1_vtiming_out_VSYNC
    );
v_vid_in_axi4s_0: component VGA_source_bd_v_vid_in_axi4s_0_0
     port map (
      aclk => Net3,
      aclken => Net1(0),
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      axis_enable => '1',
      fid => NLW_v_vid_in_axi4s_0_fid_UNCONNECTED,
      m_axis_video_tdata(7 downto 0) => v_vid_in_axi4s_0_video_out_TDATA(7 downto 0),
      m_axis_video_tlast => v_vid_in_axi4s_0_video_out_TLAST,
      m_axis_video_tready => v_vid_in_axi4s_0_video_out_TREADY,
      m_axis_video_tuser => v_vid_in_axi4s_0_video_out_TUSER,
      m_axis_video_tvalid => v_vid_in_axi4s_0_video_out_TVALID,
      overflow => NLW_v_vid_in_axi4s_0_overflow_UNCONNECTED,
      underflow => NLW_v_vid_in_axi4s_0_underflow_UNCONNECTED,
      vid_active_video => v_tc_0_active_video_out,
      vid_data(7 downto 0) => c_counter_binary_0_Q(7 downto 0),
      vid_field_id => '0',
      vid_hblank => v_tc_0_hblank_out,
      vid_hsync => v_tc_0_hsync_out,
      vid_io_in_ce => Net1(0),
      vid_io_in_clk => Net,
      vid_io_in_reset => const_GND_dout(0),
      vid_vblank => v_tc_0_vblank_out,
      vid_vsync => v_tc_0_vsync_out,
      vtd_active_video => v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO,
      vtd_field_id => NLW_v_vid_in_axi4s_0_vtd_field_id_UNCONNECTED,
      vtd_hblank => v_vid_in_axi4s_0_vtiming_out_HBLANK,
      vtd_hsync => v_vid_in_axi4s_0_vtiming_out_HSYNC,
      vtd_vblank => v_vid_in_axi4s_0_vtiming_out_VBLANK,
      vtd_vsync => v_vid_in_axi4s_0_vtiming_out_VSYNC
    );
end STRUCTURE;
