-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.0 Build 263 08/02/2012 Service Pack 2 SJ Web Edition"

-- DATE "01/30/2013 21:58:27"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	semaphore IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	traffic_sensor : IN std_logic;
	trafic_light_ctl : OUT std_logic_vector(5 DOWNTO 0)
	);
END semaphore;

-- Design Ports Information
-- reset	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trafic_light_ctl[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trafic_light_ctl[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trafic_light_ctl[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trafic_light_ctl[3]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trafic_light_ctl[4]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trafic_light_ctl[5]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- traffic_sensor	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF semaphore IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_traffic_sensor : std_logic;
SIGNAL ww_trafic_light_ctl : std_logic_vector(5 DOWNTO 0);
SIGNAL \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~6_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~30_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~38_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~61\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~62_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[31]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[19]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~4_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[15]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[3]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~8_combout\ : std_logic;
SIGNAL \state[3]~7_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[0]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[2]~q\ : std_logic;
SIGNAL \timer_ctl_ports|internal_counter~0_combout\ : std_logic;
SIGNAL \timer_ctl_ports|internal_counter~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \traffic_sensor~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \trafic_light_ctl[0]~output_o\ : std_logic;
SIGNAL \trafic_light_ctl[1]~output_o\ : std_logic;
SIGNAL \trafic_light_ctl[2]~output_o\ : std_logic;
SIGNAL \trafic_light_ctl[3]~output_o\ : std_logic;
SIGNAL \trafic_light_ctl[4]~output_o\ : std_logic;
SIGNAL \trafic_light_ctl[5]~output_o\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~0_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[0]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~1\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~2_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter~0_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[1]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~3\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~4_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[2]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~5\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~7\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~8_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[4]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~9\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~11\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~13\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~14_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[7]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~15\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~16_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[8]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~17\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~18_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[9]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~19\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~20_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[10]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~21\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~23\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~24_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[12]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~25\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~27\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~28_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[14]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~29\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~31\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~32_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[16]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~33\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~34_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[17]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~35\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~36_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[18]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~37\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~39\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~40_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[20]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~41\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~43\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~45\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~46_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[23]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~47\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~48_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[24]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~49\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~50_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[25]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~51\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~52_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[26]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~53\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~54_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[27]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~55\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~56_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[28]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~57\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~59\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~60_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[30]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~58_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[29]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~0_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~2_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~44_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[22]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~42_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[21]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~3_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~26_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[13]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~5_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~22_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[11]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~6_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~10_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[5]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~12_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[6]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~7_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~9_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~10_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|clock_tmp~0_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|clock_tmp~feeder_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|clock_tmp~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \state[2]~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \state[4]~10_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \timer_ctl_ports|Add0~0_combout\ : std_logic;
SIGNAL \state[5]~11_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \state[2]~5_combout\ : std_logic;
SIGNAL \timer_reset~15_combout\ : std_logic;
SIGNAL \timer_reset~16_combout\ : std_logic;
SIGNAL \timer_reset~7_combout\ : std_logic;
SIGNAL \timer_reset~14_combout\ : std_logic;
SIGNAL \timer_reset~10_combout\ : std_logic;
SIGNAL \timer_reset~13_combout\ : std_logic;
SIGNAL \timer_reset~11_combout\ : std_logic;
SIGNAL \timer_reset~12_combout\ : std_logic;
SIGNAL \timer_reset~q\ : std_logic;
SIGNAL \timer_ctl_ports|Add0~1\ : std_logic;
SIGNAL \timer_ctl_ports|Add0~2_combout\ : std_logic;
SIGNAL \timer_ctl_ports|short_interval_tmp~0_combout\ : std_logic;
SIGNAL \timer_ctl_ports|internal_counter~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[1]~q\ : std_logic;
SIGNAL \timer_ctl_ports|Add0~3\ : std_logic;
SIGNAL \timer_ctl_ports|Add0~5\ : std_logic;
SIGNAL \timer_ctl_ports|Add0~6_combout\ : std_logic;
SIGNAL \timer_ctl_ports|Add0~4_combout\ : std_logic;
SIGNAL \timer_ctl_ports|long_interval_tmp~0_combout\ : std_logic;
SIGNAL \timer_ctl_ports|long_interval_tmp~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|long_interval~q\ : std_logic;
SIGNAL \state[4]~0_combout\ : std_logic;
SIGNAL \timer_ctl_ports|short_interval_tmp~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|short_interval_tmp~2_combout\ : std_logic;
SIGNAL \timer_ctl_ports|short_interval~q\ : std_logic;
SIGNAL \state[4]~1_combout\ : std_logic;
SIGNAL \state[4]~2_combout\ : std_logic;
SIGNAL \state[4]~3_combout\ : std_logic;
SIGNAL \state[2]~4_combout\ : std_logic;
SIGNAL \state[3]~8_combout\ : std_logic;
SIGNAL \state[3]~9_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \trafic_light_ctl[0]~reg0feeder_combout\ : std_logic;
SIGNAL \trafic_light_ctl[0]~reg0_q\ : std_logic;
SIGNAL \trafic_light_ctl[1]~reg0feeder_combout\ : std_logic;
SIGNAL \trafic_light_ctl[1]~reg0_q\ : std_logic;
SIGNAL \trafic_light_ctl[2]~reg0feeder_combout\ : std_logic;
SIGNAL \trafic_light_ctl[2]~reg0_q\ : std_logic;
SIGNAL \trafic_light_ctl[3]~reg0feeder_combout\ : std_logic;
SIGNAL \trafic_light_ctl[3]~reg0_q\ : std_logic;
SIGNAL \trafic_light_ctl[4]~reg0feeder_combout\ : std_logic;
SIGNAL \trafic_light_ctl[4]~reg0_q\ : std_logic;
SIGNAL \trafic_light_ctl[5]~reg0feeder_combout\ : std_logic;
SIGNAL \trafic_light_ctl[5]~reg0_q\ : std_logic;
SIGNAL state : std_logic_vector(5 DOWNTO 0);
SIGNAL ALT_INV_state : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_trafic_light_ctl[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_trafic_light_ctl[2]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_traffic_sensor <= traffic_sensor;
trafic_light_ctl <= ww_trafic_light_ctl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \timer_ctl_ports|clk_converter_ports|clock_tmp~q\);
ALT_INV_state(4) <= NOT state(4);
ALT_INV_state(3) <= NOT state(3);
\ALT_INV_trafic_light_ctl[3]~reg0_q\ <= NOT \trafic_light_ctl[3]~reg0_q\;
\ALT_INV_trafic_light_ctl[2]~reg0_q\ <= NOT \trafic_light_ctl[2]~reg0_q\;
ALT_INV_state(0) <= NOT state(0);

-- Location: LCCOMB_X5_Y3_N6
\timer_ctl_ports|clk_converter_ports|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~6_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[3]~q\ & (!\timer_ctl_ports|clk_converter_ports|Add0~5\)) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[3]~q\ & 
-- ((\timer_ctl_ports|clk_converter_ports|Add0~5\) # (GND)))
-- \timer_ctl_ports|clk_converter_ports|Add0~7\ = CARRY((!\timer_ctl_ports|clk_converter_ports|Add0~5\) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[3]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~5\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~6_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~7\);

-- Location: LCCOMB_X5_Y3_N30
\timer_ctl_ports|clk_converter_ports|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~30_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[15]~q\ & (!\timer_ctl_ports|clk_converter_ports|Add0~29\)) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[15]~q\ & 
-- ((\timer_ctl_ports|clk_converter_ports|Add0~29\) # (GND)))
-- \timer_ctl_ports|clk_converter_ports|Add0~31\ = CARRY((!\timer_ctl_ports|clk_converter_ports|Add0~29\) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[15]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~29\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~30_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~31\);

-- Location: LCCOMB_X5_Y2_N6
\timer_ctl_ports|clk_converter_ports|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~38_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[19]~q\ & (!\timer_ctl_ports|clk_converter_ports|Add0~37\)) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[19]~q\ & 
-- ((\timer_ctl_ports|clk_converter_ports|Add0~37\) # (GND)))
-- \timer_ctl_ports|clk_converter_ports|Add0~39\ = CARRY((!\timer_ctl_ports|clk_converter_ports|Add0~37\) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[19]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~37\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~38_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~39\);

-- Location: LCCOMB_X5_Y2_N28
\timer_ctl_ports|clk_converter_ports|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~60_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[30]~q\ & (\timer_ctl_ports|clk_converter_ports|Add0~59\ $ (GND))) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[30]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|Add0~59\ & VCC))
-- \timer_ctl_ports|clk_converter_ports|Add0~61\ = CARRY((\timer_ctl_ports|clk_converter_ports|counter_clk:counter[30]~q\ & !\timer_ctl_ports|clk_converter_ports|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[30]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~59\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~60_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~61\);

-- Location: LCCOMB_X5_Y2_N30
\timer_ctl_ports|clk_converter_ports|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~62_combout\ = \timer_ctl_ports|clk_converter_ports|counter_clk:counter[31]~q\ $ (\timer_ctl_ports|clk_converter_ports|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[31]~q\,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~61\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~62_combout\);

-- Location: FF_X5_Y2_N31
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[31]~q\);

-- Location: FF_X5_Y2_N7
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[19]~q\);

-- Location: LCCOMB_X4_Y2_N16
\timer_ctl_ports|clk_converter_ports|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~4_combout\ = (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[17]~q\ & (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[16]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[19]~q\ & !\timer_ctl_ports|clk_converter_ports|counter_clk:counter[18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[17]~q\,
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[16]~q\,
	datac => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[19]~q\,
	datad => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[18]~q\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~4_combout\);

-- Location: FF_X5_Y3_N31
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[15]~q\);

-- Location: FF_X5_Y3_N7
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[3]~q\);

-- Location: LCCOMB_X4_Y3_N6
\timer_ctl_ports|clk_converter_ports|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~8_combout\ = (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[1]~q\ & (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[3]~q\ & (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[0]~q\ 
-- & !\timer_ctl_ports|clk_converter_ports|counter_clk:counter[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[1]~q\,
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[3]~q\,
	datac => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[0]~q\,
	datad => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[2]~q\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~8_combout\);

-- Location: LCCOMB_X47_Y33_N28
\state[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[3]~7_combout\ = (state(1)) # ((!\state[2]~5_combout\ & state(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state[2]~5_combout\,
	datac => state(3),
	datad => state(1),
	combout => \state[3]~7_combout\);

-- Location: FF_X46_Y33_N27
\timer_ctl_ports|always:internal_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|internal_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[0]~q\);

-- Location: FF_X46_Y33_N23
\timer_ctl_ports|always:internal_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|internal_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[2]~q\);

-- Location: LCCOMB_X46_Y33_N26
\timer_ctl_ports|internal_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|internal_counter~0_combout\ = (\timer_ctl_ports|Add0~0_combout\ & (!\timer_ctl_ports|Add0~6_combout\ & \timer_ctl_ports|short_interval_tmp~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|Add0~0_combout\,
	datac => \timer_ctl_ports|Add0~6_combout\,
	datad => \timer_ctl_ports|short_interval_tmp~0_combout\,
	combout => \timer_ctl_ports|internal_counter~0_combout\);

-- Location: LCCOMB_X46_Y33_N22
\timer_ctl_ports|internal_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|internal_counter~2_combout\ = (\timer_ctl_ports|Add0~4_combout\ & (!\timer_ctl_ports|Add0~6_combout\ & \timer_ctl_ports|short_interval_tmp~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|Add0~4_combout\,
	datac => \timer_ctl_ports|Add0~6_combout\,
	datad => \timer_ctl_ports|short_interval_tmp~0_combout\,
	combout => \timer_ctl_ports|internal_counter~2_combout\);

-- Location: IOIBUF_X53_Y14_N1
\traffic_sensor~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_traffic_sensor,
	o => \traffic_sensor~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOOBUF_X38_Y34_N16
\trafic_light_ctl[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trafic_light_ctl[0]~reg0_q\,
	devoe => ww_devoe,
	o => \trafic_light_ctl[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\trafic_light_ctl[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trafic_light_ctl[1]~reg0_q\,
	devoe => ww_devoe,
	o => \trafic_light_ctl[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\trafic_light_ctl[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_trafic_light_ctl[2]~reg0_q\,
	devoe => ww_devoe,
	o => \trafic_light_ctl[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\trafic_light_ctl[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_trafic_light_ctl[3]~reg0_q\,
	devoe => ww_devoe,
	o => \trafic_light_ctl[3]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\trafic_light_ctl[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trafic_light_ctl[4]~reg0_q\,
	devoe => ww_devoe,
	o => \trafic_light_ctl[4]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\trafic_light_ctl[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trafic_light_ctl[5]~reg0_q\,
	devoe => ww_devoe,
	o => \trafic_light_ctl[5]~output_o\);

-- Location: LCCOMB_X5_Y3_N0
\timer_ctl_ports|clk_converter_ports|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~0_combout\ = \timer_ctl_ports|clk_converter_ports|counter_clk:counter[0]~q\ $ (VCC)
-- \timer_ctl_ports|clk_converter_ports|Add0~1\ = CARRY(\timer_ctl_ports|clk_converter_ports|counter_clk:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[0]~q\,
	datad => VCC,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~0_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~1\);

-- Location: FF_X5_Y3_N1
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[0]~q\);

-- Location: LCCOMB_X5_Y3_N2
\timer_ctl_ports|clk_converter_ports|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~2_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[1]~q\ & (!\timer_ctl_ports|clk_converter_ports|Add0~1\)) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[1]~q\ & 
-- ((\timer_ctl_ports|clk_converter_ports|Add0~1\) # (GND)))
-- \timer_ctl_ports|clk_converter_ports|Add0~3\ = CARRY((!\timer_ctl_ports|clk_converter_ports|Add0~1\) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[1]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~1\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~2_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~3\);

-- Location: LCCOMB_X4_Y3_N26
\timer_ctl_ports|clk_converter_ports|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|counter~0_combout\ = (\timer_ctl_ports|clk_converter_ports|Add0~2_combout\ & !\timer_ctl_ports|clk_converter_ports|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_ctl_ports|clk_converter_ports|Add0~2_combout\,
	datad => \timer_ctl_ports|clk_converter_ports|Equal0~10_combout\,
	combout => \timer_ctl_ports|clk_converter_ports|counter~0_combout\);

-- Location: FF_X5_Y3_N3
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \timer_ctl_ports|clk_converter_ports|counter~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[1]~q\);

-- Location: LCCOMB_X5_Y3_N4
\timer_ctl_ports|clk_converter_ports|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~4_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[2]~q\ & (\timer_ctl_ports|clk_converter_ports|Add0~3\ $ (GND))) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[2]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|Add0~3\ & VCC))
-- \timer_ctl_ports|clk_converter_ports|Add0~5\ = CARRY((\timer_ctl_ports|clk_converter_ports|counter_clk:counter[2]~q\ & !\timer_ctl_ports|clk_converter_ports|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[2]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~3\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~4_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~5\);

-- Location: FF_X5_Y3_N5
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[2]~q\);

-- Location: LCCOMB_X5_Y3_N8
\timer_ctl_ports|clk_converter_ports|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~8_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[4]~q\ & (\timer_ctl_ports|clk_converter_ports|Add0~7\ $ (GND))) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[4]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|Add0~7\ & VCC))
-- \timer_ctl_ports|clk_converter_ports|Add0~9\ = CARRY((\timer_ctl_ports|clk_converter_ports|counter_clk:counter[4]~q\ & !\timer_ctl_ports|clk_converter_ports|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[4]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~7\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~8_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~9\);

-- Location: FF_X5_Y3_N9
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[4]~q\);

-- Location: LCCOMB_X5_Y3_N10
\timer_ctl_ports|clk_converter_ports|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~10_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[5]~q\ & (!\timer_ctl_ports|clk_converter_ports|Add0~9\)) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[5]~q\ & 
-- ((\timer_ctl_ports|clk_converter_ports|Add0~9\) # (GND)))
-- \timer_ctl_ports|clk_converter_ports|Add0~11\ = CARRY((!\timer_ctl_ports|clk_converter_ports|Add0~9\) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[5]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~9\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~10_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~11\);

-- Location: LCCOMB_X5_Y3_N12
\timer_ctl_ports|clk_converter_ports|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~12_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[6]~q\ & (\timer_ctl_ports|clk_converter_ports|Add0~11\ $ (GND))) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[6]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|Add0~11\ & VCC))
-- \timer_ctl_ports|clk_converter_ports|Add0~13\ = CARRY((\timer_ctl_ports|clk_converter_ports|counter_clk:counter[6]~q\ & !\timer_ctl_ports|clk_converter_ports|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[6]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~11\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~12_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~13\);

-- Location: LCCOMB_X5_Y3_N14
\timer_ctl_ports|clk_converter_ports|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~14_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[7]~q\ & (!\timer_ctl_ports|clk_converter_ports|Add0~13\)) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[7]~q\ & 
-- ((\timer_ctl_ports|clk_converter_ports|Add0~13\) # (GND)))
-- \timer_ctl_ports|clk_converter_ports|Add0~15\ = CARRY((!\timer_ctl_ports|clk_converter_ports|Add0~13\) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[7]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~13\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~14_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~15\);

-- Location: FF_X5_Y3_N15
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[7]~q\);

-- Location: LCCOMB_X5_Y3_N16
\timer_ctl_ports|clk_converter_ports|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~16_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[8]~q\ & (\timer_ctl_ports|clk_converter_ports|Add0~15\ $ (GND))) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[8]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|Add0~15\ & VCC))
-- \timer_ctl_ports|clk_converter_ports|Add0~17\ = CARRY((\timer_ctl_ports|clk_converter_ports|counter_clk:counter[8]~q\ & !\timer_ctl_ports|clk_converter_ports|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[8]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~15\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~16_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~17\);

-- Location: FF_X5_Y3_N17
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[8]~q\);

-- Location: LCCOMB_X5_Y3_N18
\timer_ctl_ports|clk_converter_ports|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~18_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[9]~q\ & (!\timer_ctl_ports|clk_converter_ports|Add0~17\)) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[9]~q\ & 
-- ((\timer_ctl_ports|clk_converter_ports|Add0~17\) # (GND)))
-- \timer_ctl_ports|clk_converter_ports|Add0~19\ = CARRY((!\timer_ctl_ports|clk_converter_ports|Add0~17\) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[9]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~17\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~18_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~19\);

-- Location: FF_X5_Y3_N19
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[9]~q\);

-- Location: LCCOMB_X5_Y3_N20
\timer_ctl_ports|clk_converter_ports|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~20_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[10]~q\ & (\timer_ctl_ports|clk_converter_ports|Add0~19\ $ (GND))) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[10]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|Add0~19\ & VCC))
-- \timer_ctl_ports|clk_converter_ports|Add0~21\ = CARRY((\timer_ctl_ports|clk_converter_ports|counter_clk:counter[10]~q\ & !\timer_ctl_ports|clk_converter_ports|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[10]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~19\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~20_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~21\);

-- Location: FF_X5_Y3_N21
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[10]~q\);

-- Location: LCCOMB_X5_Y3_N22
\timer_ctl_ports|clk_converter_ports|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~22_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[11]~q\ & (!\timer_ctl_ports|clk_converter_ports|Add0~21\)) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[11]~q\ & 
-- ((\timer_ctl_ports|clk_converter_ports|Add0~21\) # (GND)))
-- \timer_ctl_ports|clk_converter_ports|Add0~23\ = CARRY((!\timer_ctl_ports|clk_converter_ports|Add0~21\) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[11]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~21\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~22_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~23\);

-- Location: LCCOMB_X5_Y3_N24
\timer_ctl_ports|clk_converter_ports|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~24_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[12]~q\ & (\timer_ctl_ports|clk_converter_ports|Add0~23\ $ (GND))) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[12]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|Add0~23\ & VCC))
-- \timer_ctl_ports|clk_converter_ports|Add0~25\ = CARRY((\timer_ctl_ports|clk_converter_ports|counter_clk:counter[12]~q\ & !\timer_ctl_ports|clk_converter_ports|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[12]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~23\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~24_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~25\);

-- Location: FF_X5_Y3_N25
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[12]~q\);

-- Location: LCCOMB_X5_Y3_N26
\timer_ctl_ports|clk_converter_ports|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~26_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[13]~q\ & (!\timer_ctl_ports|clk_converter_ports|Add0~25\)) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[13]~q\ & 
-- ((\timer_ctl_ports|clk_converter_ports|Add0~25\) # (GND)))
-- \timer_ctl_ports|clk_converter_ports|Add0~27\ = CARRY((!\timer_ctl_ports|clk_converter_ports|Add0~25\) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[13]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~25\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~26_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~27\);

-- Location: LCCOMB_X5_Y3_N28
\timer_ctl_ports|clk_converter_ports|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~28_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[14]~q\ & (\timer_ctl_ports|clk_converter_ports|Add0~27\ $ (GND))) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[14]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|Add0~27\ & VCC))
-- \timer_ctl_ports|clk_converter_ports|Add0~29\ = CARRY((\timer_ctl_ports|clk_converter_ports|counter_clk:counter[14]~q\ & !\timer_ctl_ports|clk_converter_ports|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[14]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~27\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~28_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~29\);

-- Location: FF_X5_Y3_N29
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[14]~q\);

-- Location: LCCOMB_X5_Y2_N0
\timer_ctl_ports|clk_converter_ports|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~32_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[16]~q\ & (\timer_ctl_ports|clk_converter_ports|Add0~31\ $ (GND))) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[16]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|Add0~31\ & VCC))
-- \timer_ctl_ports|clk_converter_ports|Add0~33\ = CARRY((\timer_ctl_ports|clk_converter_ports|counter_clk:counter[16]~q\ & !\timer_ctl_ports|clk_converter_ports|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[16]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~31\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~32_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~33\);

-- Location: FF_X5_Y2_N1
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[16]~q\);

-- Location: LCCOMB_X5_Y2_N2
\timer_ctl_ports|clk_converter_ports|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~34_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[17]~q\ & (!\timer_ctl_ports|clk_converter_ports|Add0~33\)) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[17]~q\ & 
-- ((\timer_ctl_ports|clk_converter_ports|Add0~33\) # (GND)))
-- \timer_ctl_ports|clk_converter_ports|Add0~35\ = CARRY((!\timer_ctl_ports|clk_converter_ports|Add0~33\) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[17]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~33\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~34_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~35\);

-- Location: FF_X5_Y2_N3
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[17]~q\);

-- Location: LCCOMB_X5_Y2_N4
\timer_ctl_ports|clk_converter_ports|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~36_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[18]~q\ & (\timer_ctl_ports|clk_converter_ports|Add0~35\ $ (GND))) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[18]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|Add0~35\ & VCC))
-- \timer_ctl_ports|clk_converter_ports|Add0~37\ = CARRY((\timer_ctl_ports|clk_converter_ports|counter_clk:counter[18]~q\ & !\timer_ctl_ports|clk_converter_ports|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[18]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~35\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~36_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~37\);

-- Location: FF_X5_Y2_N5
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[18]~q\);

-- Location: LCCOMB_X5_Y2_N8
\timer_ctl_ports|clk_converter_ports|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~40_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[20]~q\ & (\timer_ctl_ports|clk_converter_ports|Add0~39\ $ (GND))) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[20]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|Add0~39\ & VCC))
-- \timer_ctl_ports|clk_converter_ports|Add0~41\ = CARRY((\timer_ctl_ports|clk_converter_ports|counter_clk:counter[20]~q\ & !\timer_ctl_ports|clk_converter_ports|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[20]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~39\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~40_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~41\);

-- Location: FF_X5_Y2_N9
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[20]~q\);

-- Location: LCCOMB_X5_Y2_N10
\timer_ctl_ports|clk_converter_ports|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~42_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[21]~q\ & (!\timer_ctl_ports|clk_converter_ports|Add0~41\)) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[21]~q\ & 
-- ((\timer_ctl_ports|clk_converter_ports|Add0~41\) # (GND)))
-- \timer_ctl_ports|clk_converter_ports|Add0~43\ = CARRY((!\timer_ctl_ports|clk_converter_ports|Add0~41\) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[21]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~41\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~42_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~43\);

-- Location: LCCOMB_X5_Y2_N12
\timer_ctl_ports|clk_converter_ports|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~44_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[22]~q\ & (\timer_ctl_ports|clk_converter_ports|Add0~43\ $ (GND))) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[22]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|Add0~43\ & VCC))
-- \timer_ctl_ports|clk_converter_ports|Add0~45\ = CARRY((\timer_ctl_ports|clk_converter_ports|counter_clk:counter[22]~q\ & !\timer_ctl_ports|clk_converter_ports|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[22]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~43\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~44_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~45\);

-- Location: LCCOMB_X5_Y2_N14
\timer_ctl_ports|clk_converter_ports|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~46_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[23]~q\ & (!\timer_ctl_ports|clk_converter_ports|Add0~45\)) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[23]~q\ & 
-- ((\timer_ctl_ports|clk_converter_ports|Add0~45\) # (GND)))
-- \timer_ctl_ports|clk_converter_ports|Add0~47\ = CARRY((!\timer_ctl_ports|clk_converter_ports|Add0~45\) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[23]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~45\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~46_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~47\);

-- Location: FF_X5_Y2_N15
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[23]~q\);

-- Location: LCCOMB_X5_Y2_N16
\timer_ctl_ports|clk_converter_ports|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~48_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[24]~q\ & (\timer_ctl_ports|clk_converter_ports|Add0~47\ $ (GND))) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[24]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|Add0~47\ & VCC))
-- \timer_ctl_ports|clk_converter_ports|Add0~49\ = CARRY((\timer_ctl_ports|clk_converter_ports|counter_clk:counter[24]~q\ & !\timer_ctl_ports|clk_converter_ports|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[24]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~47\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~48_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~49\);

-- Location: FF_X5_Y2_N17
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[24]~q\);

-- Location: LCCOMB_X5_Y2_N18
\timer_ctl_ports|clk_converter_ports|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~50_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[25]~q\ & (!\timer_ctl_ports|clk_converter_ports|Add0~49\)) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[25]~q\ & 
-- ((\timer_ctl_ports|clk_converter_ports|Add0~49\) # (GND)))
-- \timer_ctl_ports|clk_converter_ports|Add0~51\ = CARRY((!\timer_ctl_ports|clk_converter_ports|Add0~49\) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[25]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~49\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~50_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~51\);

-- Location: FF_X5_Y2_N19
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[25]~q\);

-- Location: LCCOMB_X5_Y2_N20
\timer_ctl_ports|clk_converter_ports|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~52_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[26]~q\ & (\timer_ctl_ports|clk_converter_ports|Add0~51\ $ (GND))) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[26]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|Add0~51\ & VCC))
-- \timer_ctl_ports|clk_converter_ports|Add0~53\ = CARRY((\timer_ctl_ports|clk_converter_ports|counter_clk:counter[26]~q\ & !\timer_ctl_ports|clk_converter_ports|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[26]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~51\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~52_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~53\);

-- Location: FF_X5_Y2_N21
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[26]~q\);

-- Location: LCCOMB_X5_Y2_N22
\timer_ctl_ports|clk_converter_ports|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~54_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[27]~q\ & (!\timer_ctl_ports|clk_converter_ports|Add0~53\)) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[27]~q\ & 
-- ((\timer_ctl_ports|clk_converter_ports|Add0~53\) # (GND)))
-- \timer_ctl_ports|clk_converter_ports|Add0~55\ = CARRY((!\timer_ctl_ports|clk_converter_ports|Add0~53\) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[27]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~53\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~54_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~55\);

-- Location: FF_X5_Y2_N23
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[27]~q\);

-- Location: LCCOMB_X5_Y2_N24
\timer_ctl_ports|clk_converter_ports|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~56_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[28]~q\ & (\timer_ctl_ports|clk_converter_ports|Add0~55\ $ (GND))) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[28]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|Add0~55\ & VCC))
-- \timer_ctl_ports|clk_converter_ports|Add0~57\ = CARRY((\timer_ctl_ports|clk_converter_ports|counter_clk:counter[28]~q\ & !\timer_ctl_ports|clk_converter_ports|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[28]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~55\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~56_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~57\);

-- Location: FF_X5_Y2_N25
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[28]~q\);

-- Location: LCCOMB_X5_Y2_N26
\timer_ctl_ports|clk_converter_ports|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~58_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[29]~q\ & (!\timer_ctl_ports|clk_converter_ports|Add0~57\)) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[29]~q\ & 
-- ((\timer_ctl_ports|clk_converter_ports|Add0~57\) # (GND)))
-- \timer_ctl_ports|clk_converter_ports|Add0~59\ = CARRY((!\timer_ctl_ports|clk_converter_ports|Add0~57\) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[29]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~57\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~58_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~59\);

-- Location: FF_X5_Y2_N29
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[30]~q\);

-- Location: FF_X5_Y2_N27
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[29]~q\);

-- Location: LCCOMB_X4_Y2_N4
\timer_ctl_ports|clk_converter_ports|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~0_combout\ = (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[31]~q\ & (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[30]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[28]~q\ & !\timer_ctl_ports|clk_converter_ports|counter_clk:counter[29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[31]~q\,
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[30]~q\,
	datac => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[28]~q\,
	datad => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[29]~q\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y2_N2
\timer_ctl_ports|clk_converter_ports|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~1_combout\ = (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[24]~q\ & !\timer_ctl_ports|clk_converter_ports|counter_clk:counter[25]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[24]~q\,
	datad => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[25]~q\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~1_combout\);

-- Location: LCCOMB_X4_Y2_N0
\timer_ctl_ports|clk_converter_ports|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~2_combout\ = (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[26]~q\ & (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[27]~q\ & (\timer_ctl_ports|clk_converter_ports|Equal0~0_combout\ & 
-- \timer_ctl_ports|clk_converter_ports|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[26]~q\,
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[27]~q\,
	datac => \timer_ctl_ports|clk_converter_ports|Equal0~0_combout\,
	datad => \timer_ctl_ports|clk_converter_ports|Equal0~1_combout\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~2_combout\);

-- Location: FF_X5_Y2_N13
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[22]~q\);

-- Location: FF_X5_Y2_N11
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[21]~q\);

-- Location: LCCOMB_X4_Y2_N6
\timer_ctl_ports|clk_converter_ports|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~3_combout\ = (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[23]~q\ & (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[22]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[21]~q\ & !\timer_ctl_ports|clk_converter_ports|counter_clk:counter[20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[23]~q\,
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[22]~q\,
	datac => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[21]~q\,
	datad => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[20]~q\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~3_combout\);

-- Location: FF_X5_Y3_N27
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[13]~q\);

-- Location: LCCOMB_X4_Y3_N0
\timer_ctl_ports|clk_converter_ports|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~5_combout\ = (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[15]~q\ & (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[14]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[13]~q\ & !\timer_ctl_ports|clk_converter_ports|counter_clk:counter[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[15]~q\,
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[14]~q\,
	datac => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[13]~q\,
	datad => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[12]~q\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~5_combout\);

-- Location: FF_X5_Y3_N23
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[11]~q\);

-- Location: LCCOMB_X4_Y3_N14
\timer_ctl_ports|clk_converter_ports|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~6_combout\ = (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[10]~q\ & (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[9]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[11]~q\ & !\timer_ctl_ports|clk_converter_ports|counter_clk:counter[8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[10]~q\,
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[9]~q\,
	datac => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[11]~q\,
	datad => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[8]~q\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~6_combout\);

-- Location: FF_X5_Y3_N11
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[5]~q\);

-- Location: FF_X5_Y3_N13
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[6]~q\);

-- Location: LCCOMB_X4_Y3_N18
\timer_ctl_ports|clk_converter_ports|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~7_combout\ = (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[7]~q\ & (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[5]~q\ & (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[4]~q\ 
-- & !\timer_ctl_ports|clk_converter_ports|counter_clk:counter[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[7]~q\,
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[5]~q\,
	datac => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[4]~q\,
	datad => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[6]~q\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~7_combout\);

-- Location: LCCOMB_X4_Y3_N20
\timer_ctl_ports|clk_converter_ports|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~9_combout\ = (\timer_ctl_ports|clk_converter_ports|Equal0~8_combout\ & (\timer_ctl_ports|clk_converter_ports|Equal0~5_combout\ & (\timer_ctl_ports|clk_converter_ports|Equal0~6_combout\ & 
-- \timer_ctl_ports|clk_converter_ports|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|Equal0~8_combout\,
	datab => \timer_ctl_ports|clk_converter_ports|Equal0~5_combout\,
	datac => \timer_ctl_ports|clk_converter_ports|Equal0~6_combout\,
	datad => \timer_ctl_ports|clk_converter_ports|Equal0~7_combout\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~9_combout\);

-- Location: LCCOMB_X4_Y3_N12
\timer_ctl_ports|clk_converter_ports|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~10_combout\ = (\timer_ctl_ports|clk_converter_ports|Equal0~4_combout\ & (\timer_ctl_ports|clk_converter_ports|Equal0~2_combout\ & (\timer_ctl_ports|clk_converter_ports|Equal0~3_combout\ & 
-- \timer_ctl_ports|clk_converter_ports|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|Equal0~4_combout\,
	datab => \timer_ctl_ports|clk_converter_ports|Equal0~2_combout\,
	datac => \timer_ctl_ports|clk_converter_ports|Equal0~3_combout\,
	datad => \timer_ctl_ports|clk_converter_ports|Equal0~9_combout\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~10_combout\);

-- Location: LCCOMB_X4_Y3_N4
\timer_ctl_ports|clk_converter_ports|clock_tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|clock_tmp~0_combout\ = (!\timer_ctl_ports|clk_converter_ports|clock_tmp~q\ & \timer_ctl_ports|clk_converter_ports|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_ctl_ports|clk_converter_ports|clock_tmp~q\,
	datad => \timer_ctl_ports|clk_converter_ports|Equal0~10_combout\,
	combout => \timer_ctl_ports|clk_converter_ports|clock_tmp~0_combout\);

-- Location: LCCOMB_X4_Y3_N30
\timer_ctl_ports|clk_converter_ports|clock_tmp~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|clock_tmp~feeder_combout\ = \timer_ctl_ports|clk_converter_ports|clock_tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|clock_tmp~0_combout\,
	combout => \timer_ctl_ports|clk_converter_ports|clock_tmp~feeder_combout\);

-- Location: FF_X4_Y3_N31
\timer_ctl_ports|clk_converter_ports|clock_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ctl_ports|clk_converter_ports|clock_tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|clock_tmp~q\);

-- Location: CLKCTRL_G3
\timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\);

-- Location: LCCOMB_X48_Y33_N16
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (state(3) & !state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(3),
	datad => state(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X47_Y33_N18
\state[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[2]~6_combout\ = (\state[2]~4_combout\ & (\state[2]~5_combout\ & ((\Equal1~0_combout\)))) # (!\state[2]~4_combout\ & (((state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[2]~5_combout\,
	datab => \state[2]~4_combout\,
	datac => state(2),
	datad => \Equal1~0_combout\,
	combout => \state[2]~6_combout\);

-- Location: FF_X47_Y33_N19
\state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \state[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(2));

-- Location: LCCOMB_X48_Y33_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!state(5) & (!state(2) & !state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(5),
	datab => state(2),
	datad => state(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X48_Y33_N2
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!state(3) & (!state(1) & (\Equal0~0_combout\ & !state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(1),
	datac => \Equal0~0_combout\,
	datad => state(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X47_Y33_N6
\state[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[4]~10_combout\ = (\state[2]~4_combout\ & ((\Equal0~1_combout\))) # (!\state[2]~4_combout\ & (state(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state[2]~4_combout\,
	datac => state(4),
	datad => \Equal0~1_combout\,
	combout => \state[4]~10_combout\);

-- Location: FF_X47_Y33_N7
\state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \state[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(4));

-- Location: LCCOMB_X48_Y33_N28
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (state(5) & (state(2) & (!state(1) & !state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(5),
	datab => state(2),
	datac => state(1),
	datad => state(4),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X48_Y33_N30
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X48_Y33_N29
\state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \Mux4~0_combout\,
	asdata => \~GND~combout\,
	sclr => ALT_INV_state(3),
	sload => ALT_INV_state(0),
	ena => \state[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(1));

-- Location: LCCOMB_X46_Y33_N8
\timer_ctl_ports|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|Add0~0_combout\ = \timer_ctl_ports|always:internal_counter[0]~q\ $ (VCC)
-- \timer_ctl_ports|Add0~1\ = CARRY(\timer_ctl_ports|always:internal_counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[0]~q\,
	datad => VCC,
	combout => \timer_ctl_ports|Add0~0_combout\,
	cout => \timer_ctl_ports|Add0~1\);

-- Location: LCCOMB_X47_Y33_N12
\state[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[5]~11_combout\ = (\state[2]~4_combout\ & (\state[2]~5_combout\ & ((\Equal1~0_combout\)))) # (!\state[2]~4_combout\ & (((state(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[2]~5_combout\,
	datab => \state[2]~4_combout\,
	datac => state(5),
	datad => \Equal1~0_combout\,
	combout => \state[5]~11_combout\);

-- Location: FF_X47_Y33_N13
\state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \state[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(5));

-- Location: LCCOMB_X47_Y33_N30
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!state(4) & (state(2) & state(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => state(2),
	datad => state(5),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X47_Y33_N2
\state[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[2]~5_combout\ = (state(4) & (!state(0) & (!state(2) & !state(5)))) # (!state(4) & (state(0) & (state(2) & state(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => state(0),
	datac => state(2),
	datad => state(5),
	combout => \state[2]~5_combout\);

-- Location: LCCOMB_X47_Y33_N10
\timer_reset~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_reset~15_combout\ = (state(1) & ((state(0)) # ((!\Equal2~0_combout\)))) # (!state(1) & (((!\state[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datac => \Equal2~0_combout\,
	datad => \state[2]~5_combout\,
	combout => \timer_reset~15_combout\);

-- Location: LCCOMB_X48_Y33_N8
\timer_reset~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_reset~16_combout\ = (\timer_reset~q\ & ((\timer_reset~15_combout\) # (!state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => \timer_reset~q\,
	datad => \timer_reset~15_combout\,
	combout => \timer_reset~16_combout\);

-- Location: LCCOMB_X48_Y33_N12
\timer_reset~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_reset~7_combout\ = (state(5) & (state(1) & (!state(4) & state(2)))) # (!state(5) & (!state(1) & (state(4) & !state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(5),
	datab => state(1),
	datac => state(4),
	datad => state(2),
	combout => \timer_reset~7_combout\);

-- Location: LCCOMB_X48_Y33_N18
\timer_reset~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_reset~14_combout\ = (state(3) & (!state(0) & \timer_reset~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(0),
	datad => \timer_reset~7_combout\,
	combout => \timer_reset~14_combout\);

-- Location: LCCOMB_X48_Y33_N14
\timer_reset~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_reset~10_combout\ = (state(5) & (!state(4) & state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(5),
	datab => state(4),
	datad => state(0),
	combout => \timer_reset~10_combout\);

-- Location: LCCOMB_X48_Y33_N26
\timer_reset~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_reset~13_combout\ = (state(3) & (!state(1) & (\timer_reset~10_combout\ & state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(1),
	datac => \timer_reset~10_combout\,
	datad => state(2),
	combout => \timer_reset~13_combout\);

-- Location: LCCOMB_X48_Y33_N20
\timer_reset~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_reset~11_combout\ = (\timer_ctl_ports|long_interval~q\ & (((\timer_reset~13_combout\) # (\Equal0~1_combout\)))) # (!\timer_ctl_ports|long_interval~q\ & (\timer_reset~14_combout\ & ((!\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|long_interval~q\,
	datab => \timer_reset~14_combout\,
	datac => \timer_reset~13_combout\,
	datad => \Equal0~1_combout\,
	combout => \timer_reset~11_combout\);

-- Location: LCCOMB_X48_Y33_N0
\timer_reset~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_reset~12_combout\ = (\timer_ctl_ports|short_interval~q\ & ((\timer_reset~11_combout\) # ((!\Equal0~1_combout\ & \timer_reset~16_combout\)))) # (!\timer_ctl_ports|short_interval~q\ & (!\Equal0~1_combout\ & (\timer_reset~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|short_interval~q\,
	datab => \Equal0~1_combout\,
	datac => \timer_reset~16_combout\,
	datad => \timer_reset~11_combout\,
	combout => \timer_reset~12_combout\);

-- Location: FF_X48_Y33_N1
timer_reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_reset~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_reset~q\);

-- Location: LCCOMB_X46_Y33_N10
\timer_ctl_ports|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|Add0~2_combout\ = (\timer_ctl_ports|always:internal_counter[1]~q\ & (!\timer_ctl_ports|Add0~1\)) # (!\timer_ctl_ports|always:internal_counter[1]~q\ & ((\timer_ctl_ports|Add0~1\) # (GND)))
-- \timer_ctl_ports|Add0~3\ = CARRY((!\timer_ctl_ports|Add0~1\) # (!\timer_ctl_ports|always:internal_counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[1]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|Add0~1\,
	combout => \timer_ctl_ports|Add0~2_combout\,
	cout => \timer_ctl_ports|Add0~3\);

-- Location: LCCOMB_X46_Y33_N20
\timer_ctl_ports|short_interval_tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|short_interval_tmp~0_combout\ = (!\timer_reset~q\ & (((!\timer_ctl_ports|Add0~2_combout\) # (!\timer_ctl_ports|Add0~0_combout\)) # (!\timer_ctl_ports|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|Add0~4_combout\,
	datab => \timer_reset~q\,
	datac => \timer_ctl_ports|Add0~0_combout\,
	datad => \timer_ctl_ports|Add0~2_combout\,
	combout => \timer_ctl_ports|short_interval_tmp~0_combout\);

-- Location: LCCOMB_X46_Y33_N4
\timer_ctl_ports|internal_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|internal_counter~1_combout\ = (\timer_ctl_ports|Add0~2_combout\ & (!\timer_ctl_ports|Add0~6_combout\ & \timer_ctl_ports|short_interval_tmp~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|Add0~2_combout\,
	datac => \timer_ctl_ports|Add0~6_combout\,
	datad => \timer_ctl_ports|short_interval_tmp~0_combout\,
	combout => \timer_ctl_ports|internal_counter~1_combout\);

-- Location: FF_X46_Y33_N5
\timer_ctl_ports|always:internal_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|internal_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[1]~q\);

-- Location: LCCOMB_X46_Y33_N12
\timer_ctl_ports|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|Add0~4_combout\ = (\timer_ctl_ports|always:internal_counter[2]~q\ & (\timer_ctl_ports|Add0~3\ $ (GND))) # (!\timer_ctl_ports|always:internal_counter[2]~q\ & (!\timer_ctl_ports|Add0~3\ & VCC))
-- \timer_ctl_ports|Add0~5\ = CARRY((\timer_ctl_ports|always:internal_counter[2]~q\ & !\timer_ctl_ports|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[2]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|Add0~3\,
	combout => \timer_ctl_ports|Add0~4_combout\,
	cout => \timer_ctl_ports|Add0~5\);

-- Location: LCCOMB_X46_Y33_N14
\timer_ctl_ports|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|Add0~6_combout\ = \timer_ctl_ports|Add0~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \timer_ctl_ports|Add0~5\,
	combout => \timer_ctl_ports|Add0~6_combout\);

-- Location: LCCOMB_X46_Y33_N6
\timer_ctl_ports|long_interval_tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|long_interval_tmp~0_combout\ = (\timer_ctl_ports|Add0~2_combout\ & (!\timer_ctl_ports|Add0~0_combout\ & (!\timer_ctl_ports|Add0~6_combout\ & \timer_ctl_ports|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|Add0~2_combout\,
	datab => \timer_ctl_ports|Add0~0_combout\,
	datac => \timer_ctl_ports|Add0~6_combout\,
	datad => \timer_ctl_ports|Add0~4_combout\,
	combout => \timer_ctl_ports|long_interval_tmp~0_combout\);

-- Location: LCCOMB_X47_Y33_N26
\timer_ctl_ports|long_interval_tmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|long_interval_tmp~1_combout\ = (!\timer_ctl_ports|Add0~6_combout\ & (\timer_ctl_ports|short_interval_tmp~0_combout\ & ((\timer_ctl_ports|long_interval_tmp~0_combout\) # (\timer_ctl_ports|long_interval~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|Add0~6_combout\,
	datab => \timer_ctl_ports|long_interval_tmp~0_combout\,
	datac => \timer_ctl_ports|long_interval~q\,
	datad => \timer_ctl_ports|short_interval_tmp~0_combout\,
	combout => \timer_ctl_ports|long_interval_tmp~1_combout\);

-- Location: FF_X47_Y33_N27
\timer_ctl_ports|long_interval\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|long_interval_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|long_interval~q\);

-- Location: LCCOMB_X47_Y33_N8
\state[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[4]~0_combout\ = (state(3) & (((state(4))))) # (!state(3) & (!state(4) & ((\traffic_sensor~input_o\) # (!\timer_ctl_ports|long_interval~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \traffic_sensor~input_o\,
	datab => state(3),
	datac => \timer_ctl_ports|long_interval~q\,
	datad => state(4),
	combout => \state[4]~0_combout\);

-- Location: LCCOMB_X46_Y33_N16
\timer_ctl_ports|short_interval_tmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|short_interval_tmp~1_combout\ = (\timer_ctl_ports|Add0~2_combout\ & ((\timer_ctl_ports|short_interval~q\ & ((\timer_ctl_ports|Add0~0_combout\) # (!\timer_ctl_ports|Add0~4_combout\))) # (!\timer_ctl_ports|short_interval~q\ & 
-- (\timer_ctl_ports|Add0~0_combout\ & !\timer_ctl_ports|Add0~4_combout\)))) # (!\timer_ctl_ports|Add0~2_combout\ & (\timer_ctl_ports|short_interval~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|Add0~2_combout\,
	datab => \timer_ctl_ports|short_interval~q\,
	datac => \timer_ctl_ports|Add0~0_combout\,
	datad => \timer_ctl_ports|Add0~4_combout\,
	combout => \timer_ctl_ports|short_interval_tmp~1_combout\);

-- Location: LCCOMB_X47_Y33_N22
\timer_ctl_ports|short_interval_tmp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|short_interval_tmp~2_combout\ = (!\timer_ctl_ports|Add0~6_combout\ & (\timer_ctl_ports|short_interval_tmp~1_combout\ & \timer_ctl_ports|short_interval_tmp~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|Add0~6_combout\,
	datac => \timer_ctl_ports|short_interval_tmp~1_combout\,
	datad => \timer_ctl_ports|short_interval_tmp~0_combout\,
	combout => \timer_ctl_ports|short_interval_tmp~2_combout\);

-- Location: FF_X47_Y33_N23
\timer_ctl_ports|short_interval\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|short_interval_tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|short_interval~q\);

-- Location: LCCOMB_X47_Y33_N20
\state[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[4]~1_combout\ = (!state(5) & (!state(2) & ((!state(4)) # (!\timer_ctl_ports|short_interval~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(5),
	datab => state(2),
	datac => \timer_ctl_ports|short_interval~q\,
	datad => state(4),
	combout => \state[4]~1_combout\);

-- Location: LCCOMB_X47_Y33_N14
\state[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[4]~2_combout\ = (!state(0) & (!state(1) & (\state[4]~0_combout\ & \state[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datac => \state[4]~0_combout\,
	datad => \state[4]~1_combout\,
	combout => \state[4]~2_combout\);

-- Location: LCCOMB_X47_Y33_N0
\state[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[4]~3_combout\ = (state(0) & (!\timer_ctl_ports|long_interval~q\ & ((!state(1))))) # (!state(0) & (((!\timer_ctl_ports|short_interval~q\ & state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|long_interval~q\,
	datab => state(0),
	datac => \timer_ctl_ports|short_interval~q\,
	datad => state(1),
	combout => \state[4]~3_combout\);

-- Location: LCCOMB_X47_Y33_N4
\state[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[2]~4_combout\ = (!\state[4]~2_combout\ & (((!\state[4]~3_combout\) # (!state(3))) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => state(3),
	datac => \state[4]~2_combout\,
	datad => \state[4]~3_combout\,
	combout => \state[2]~4_combout\);

-- Location: LCCOMB_X48_Y33_N22
\state[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[3]~8_combout\ = (!state(5) & (!state(0) & (!state(2) & !state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(5),
	datab => state(0),
	datac => state(2),
	datad => state(4),
	combout => \state[3]~8_combout\);

-- Location: LCCOMB_X47_Y33_N16
\state[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[3]~9_combout\ = (\state[2]~4_combout\ & (!\state[3]~7_combout\ & ((state(3)) # (\state[3]~8_combout\)))) # (!\state[2]~4_combout\ & (((state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[3]~7_combout\,
	datab => \state[2]~4_combout\,
	datac => state(3),
	datad => \state[3]~8_combout\,
	combout => \state[3]~9_combout\);

-- Location: FF_X47_Y33_N17
\state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \state[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(3));

-- Location: LCCOMB_X47_Y33_N24
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!state(2) & (state(3) & (!state(0) & !state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(3),
	datac => state(0),
	datad => state(1),
	combout => \Mux5~0_combout\);

-- Location: FF_X47_Y33_N25
\state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \Mux5~0_combout\,
	asdata => \~GND~combout\,
	sclr => ALT_INV_state(4),
	sload => state(5),
	ena => \state[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(0));

-- Location: LCCOMB_X46_Y33_N0
\trafic_light_ctl[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafic_light_ctl[0]~reg0feeder_combout\ = state(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => state(0),
	combout => \trafic_light_ctl[0]~reg0feeder_combout\);

-- Location: FF_X46_Y33_N1
\trafic_light_ctl[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \trafic_light_ctl[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafic_light_ctl[0]~reg0_q\);

-- Location: LCCOMB_X48_Y33_N6
\trafic_light_ctl[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafic_light_ctl[1]~reg0feeder_combout\ = state(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => state(1),
	combout => \trafic_light_ctl[1]~reg0feeder_combout\);

-- Location: FF_X48_Y33_N7
\trafic_light_ctl[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \trafic_light_ctl[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafic_light_ctl[1]~reg0_q\);

-- Location: LCCOMB_X48_Y33_N24
\trafic_light_ctl[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafic_light_ctl[2]~reg0feeder_combout\ = state(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => state(2),
	combout => \trafic_light_ctl[2]~reg0feeder_combout\);

-- Location: FF_X48_Y33_N25
\trafic_light_ctl[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \trafic_light_ctl[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafic_light_ctl[2]~reg0_q\);

-- Location: LCCOMB_X48_Y33_N10
\trafic_light_ctl[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafic_light_ctl[3]~reg0feeder_combout\ = state(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(3),
	combout => \trafic_light_ctl[3]~reg0feeder_combout\);

-- Location: FF_X48_Y33_N11
\trafic_light_ctl[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \trafic_light_ctl[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafic_light_ctl[3]~reg0_q\);

-- Location: LCCOMB_X46_Y33_N30
\trafic_light_ctl[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafic_light_ctl[4]~reg0feeder_combout\ = state(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => state(4),
	combout => \trafic_light_ctl[4]~reg0feeder_combout\);

-- Location: FF_X46_Y33_N31
\trafic_light_ctl[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \trafic_light_ctl[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafic_light_ctl[4]~reg0_q\);

-- Location: LCCOMB_X46_Y33_N24
\trafic_light_ctl[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafic_light_ctl[5]~reg0feeder_combout\ = state(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(5),
	combout => \trafic_light_ctl[5]~reg0feeder_combout\);

-- Location: FF_X46_Y33_N25
\trafic_light_ctl[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \trafic_light_ctl[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafic_light_ctl[5]~reg0_q\);

-- Location: IOIBUF_X0_Y16_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

ww_trafic_light_ctl(0) <= \trafic_light_ctl[0]~output_o\;

ww_trafic_light_ctl(1) <= \trafic_light_ctl[1]~output_o\;

ww_trafic_light_ctl(2) <= \trafic_light_ctl[2]~output_o\;

ww_trafic_light_ctl(3) <= \trafic_light_ctl[3]~output_o\;

ww_trafic_light_ctl(4) <= \trafic_light_ctl[4]~output_o\;

ww_trafic_light_ctl(5) <= \trafic_light_ctl[5]~output_o\;
END structure;


