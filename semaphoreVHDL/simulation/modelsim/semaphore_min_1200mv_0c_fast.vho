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

-- DATE "02/05/2013 15:55:13"

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
	show_state : OUT std_logic_vector(1 DOWNTO 0);
	trafic_light_ctl : OUT std_logic_vector(5 DOWNTO 0)
	);
END semaphore;

-- Design Ports Information
-- reset	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_state[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_state[1]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trafic_light_ctl[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trafic_light_ctl[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trafic_light_ctl[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trafic_light_ctl[3]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trafic_light_ctl[4]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trafic_light_ctl[5]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- traffic_sensor	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_show_state : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_trafic_light_ctl : std_logic_vector(5 DOWNTO 0);
SIGNAL \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~0_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~1\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~2_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~3\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~4_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~5\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~6_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~7\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~8_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~9\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~10_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~11\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~12_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~13\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~14_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~15\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~16_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~17\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~18_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~19\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~20_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~21\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~22_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~23\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~24_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~25\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~26_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~27\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~28_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~29\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~30_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~31\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~32_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~33\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~34_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~35\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~36_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~37\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~38_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~39\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~40_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~41\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~42_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~43\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~44_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~45\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~46_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~47\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~48_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~49\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~50_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~51\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~52_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~53\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~54_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~55\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~56_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~57\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~58_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~59\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~60_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~61\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Add0~62_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[13]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[15]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[19]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[21]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[22]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[27]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[28]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[29]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[30]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[31]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[13]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[15]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[19]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[21]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[22]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[26]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[27]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[27]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[28]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[28]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[29]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[29]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[30]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[30]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[31]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[31]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[30]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[29]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[28]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~0_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[27]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[26]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[25]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[24]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[23]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[22]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[21]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[20]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~2_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[19]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[18]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[17]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[16]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~3_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~4_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[15]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[13]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[14]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[12]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~5_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[11]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[10]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~6_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[9]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[8]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~7_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[7]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[6]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[5]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[4]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~8_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[1]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[3]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[2]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter_clk:counter[0]~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~9_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|Equal0~10_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|clock_tmp~0_combout\ : std_logic;
SIGNAL \always:state_holder[5]~0_combout\ : std_logic;
SIGNAL \always:state_holder[2]~0_combout\ : std_logic;
SIGNAL \always:state_holder[3]~0_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter~0_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter~2_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter~3_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter~4_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter~5_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|counter~6_combout\ : std_logic;
SIGNAL \timer_ctl_ports|long_interval_tmp~4_combout\ : std_logic;
SIGNAL \timer_ctl_ports|short_interval_tmp~0_combout\ : std_logic;
SIGNAL \always~1_combout\ : std_logic;
SIGNAL \always~3_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \traffic_sensor~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \show_state[0]~output_o\ : std_logic;
SIGNAL \show_state[1]~output_o\ : std_logic;
SIGNAL \trafic_light_ctl[0]~output_o\ : std_logic;
SIGNAL \trafic_light_ctl[1]~output_o\ : std_logic;
SIGNAL \trafic_light_ctl[2]~output_o\ : std_logic;
SIGNAL \trafic_light_ctl[3]~output_o\ : std_logic;
SIGNAL \trafic_light_ctl[4]~output_o\ : std_logic;
SIGNAL \trafic_light_ctl[5]~output_o\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|clock_tmp~feeder_combout\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|clock_tmp~q\ : std_logic;
SIGNAL \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \show_state[0]~reg0feeder_combout\ : std_logic;
SIGNAL \show_state[0]~reg0_q\ : std_logic;
SIGNAL \show_state[1]~reg0feeder_combout\ : std_logic;
SIGNAL \show_state[1]~reg0_q\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \always~0_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[0]~1_combout\ : std_logic;
SIGNAL \always~2_combout\ : std_logic;
SIGNAL \always~4_combout\ : std_logic;
SIGNAL \timer_reset~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[2]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[3]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[4]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[4]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[4]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[5]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[6]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[6]~q\ : std_logic;
SIGNAL \timer_ctl_ports|long_interval_tmp~0_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[3]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[3]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[5]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[5]~q\ : std_logic;
SIGNAL \timer_ctl_ports|LessThan0~0_combout\ : std_logic;
SIGNAL \timer_ctl_ports|LessThan0~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[6]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[7]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[7]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[7]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[8]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[8]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[8]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[9]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[9]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[9]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[10]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[10]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[10]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[11]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[12]~2_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[12]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[12]~3\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[13]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[14]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[14]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[14]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[15]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[16]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[16]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[16]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[17]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[18]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[18]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[18]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[19]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[20]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[20]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[20]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[21]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[22]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[23]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[23]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[23]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[24]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[24]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[24]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[25]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[25]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[25]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[26]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[26]~q\ : std_logic;
SIGNAL \timer_ctl_ports|long_interval_tmp~6_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[17]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[17]~feeder_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[17]~q\ : std_logic;
SIGNAL \timer_ctl_ports|long_interval_tmp~3_combout\ : std_logic;
SIGNAL \timer_ctl_ports|long_interval_tmp~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[11]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[11]~q\ : std_logic;
SIGNAL \timer_ctl_ports|long_interval_tmp~2_combout\ : std_logic;
SIGNAL \timer_ctl_ports|long_interval_tmp~5_combout\ : std_logic;
SIGNAL \timer_ctl_ports|long_interval_tmp~7_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[12]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[0]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[0]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[1]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[1]~q\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[1]~2\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[2]~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|always:internal_counter[2]~q\ : std_logic;
SIGNAL \timer_ctl_ports|short_interval_tmp~1_combout\ : std_logic;
SIGNAL \timer_ctl_ports|long_interval_tmp~8_combout\ : std_logic;
SIGNAL \timer_ctl_ports|short_interval_tmp~2_combout\ : std_logic;
SIGNAL \timer_ctl_ports|short_interval~q\ : std_logic;
SIGNAL \timer_ctl_ports|long_interval_tmp~9_combout\ : std_logic;
SIGNAL \timer_ctl_ports|long_interval~q\ : std_logic;
SIGNAL \always:state_holder[5]~1_combout\ : std_logic;
SIGNAL \always:state_holder[4]~0_combout\ : std_logic;
SIGNAL \always:state_holder[5]~2_combout\ : std_logic;
SIGNAL \always:state_holder[2]~1_combout\ : std_logic;
SIGNAL \always:state_holder[2]~q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \always:state_holder[1]~q\ : std_logic;
SIGNAL \always:state_holder[4]~1_combout\ : std_logic;
SIGNAL \always:state_holder[4]~2_combout\ : std_logic;
SIGNAL \always:state_holder[4]~q\ : std_logic;
SIGNAL \always:state_holder[5]~3_combout\ : std_logic;
SIGNAL \always:state_holder[5]~q\ : std_logic;
SIGNAL \always:state_holder[3]~1_combout\ : std_logic;
SIGNAL \always:state_holder[3]~2_combout\ : std_logic;
SIGNAL \always:state_holder[3]~q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \always:state_holder[0]~q\ : std_logic;
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
SIGNAL \ALT_INV_always:state_holder[0]~q\ : std_logic;
SIGNAL \ALT_INV_always:state_holder[4]~q\ : std_logic;
SIGNAL \ALT_INV_always:state_holder[3]~q\ : std_logic;
SIGNAL \ALT_INV_trafic_light_ctl[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_trafic_light_ctl[2]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_traffic_sensor <= traffic_sensor;
show_state <= ww_show_state;
trafic_light_ctl <= ww_trafic_light_ctl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \timer_ctl_ports|clk_converter_ports|clock_tmp~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_always:state_holder[0]~q\ <= NOT \always:state_holder[0]~q\;
\ALT_INV_always:state_holder[4]~q\ <= NOT \always:state_holder[4]~q\;
\ALT_INV_always:state_holder[3]~q\ <= NOT \always:state_holder[3]~q\;
\ALT_INV_trafic_light_ctl[3]~reg0_q\ <= NOT \trafic_light_ctl[3]~reg0_q\;
\ALT_INV_trafic_light_ctl[2]~reg0_q\ <= NOT \trafic_light_ctl[2]~reg0_q\;

-- Location: LCCOMB_X14_Y11_N0
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

-- Location: LCCOMB_X14_Y11_N2
\timer_ctl_ports|clk_converter_ports|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~2_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[1]~q\ & (!\timer_ctl_ports|clk_converter_ports|Add0~1\)) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[1]~q\ & 
-- ((\timer_ctl_ports|clk_converter_ports|Add0~1\) # (GND)))
-- \timer_ctl_ports|clk_converter_ports|Add0~3\ = CARRY((!\timer_ctl_ports|clk_converter_ports|Add0~1\) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[1]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~1\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~2_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~3\);

-- Location: LCCOMB_X14_Y11_N4
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

-- Location: LCCOMB_X14_Y11_N6
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

-- Location: LCCOMB_X14_Y11_N8
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

-- Location: LCCOMB_X14_Y11_N10
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

-- Location: LCCOMB_X14_Y11_N12
\timer_ctl_ports|clk_converter_ports|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~12_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[6]~q\ & (\timer_ctl_ports|clk_converter_ports|Add0~11\ $ (GND))) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[6]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|Add0~11\ & VCC))
-- \timer_ctl_ports|clk_converter_ports|Add0~13\ = CARRY((\timer_ctl_ports|clk_converter_ports|counter_clk:counter[6]~q\ & !\timer_ctl_ports|clk_converter_ports|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[6]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~11\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~12_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~13\);

-- Location: LCCOMB_X14_Y11_N14
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

-- Location: LCCOMB_X14_Y11_N16
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

-- Location: LCCOMB_X14_Y11_N18
\timer_ctl_ports|clk_converter_ports|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~18_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[9]~q\ & (!\timer_ctl_ports|clk_converter_ports|Add0~17\)) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[9]~q\ & 
-- ((\timer_ctl_ports|clk_converter_ports|Add0~17\) # (GND)))
-- \timer_ctl_ports|clk_converter_ports|Add0~19\ = CARRY((!\timer_ctl_ports|clk_converter_ports|Add0~17\) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[9]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~17\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~18_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~19\);

-- Location: LCCOMB_X14_Y11_N20
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

-- Location: LCCOMB_X14_Y11_N22
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

-- Location: LCCOMB_X14_Y11_N24
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

-- Location: LCCOMB_X14_Y11_N26
\timer_ctl_ports|clk_converter_ports|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~26_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[13]~q\ & (!\timer_ctl_ports|clk_converter_ports|Add0~25\)) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[13]~q\ & 
-- ((\timer_ctl_ports|clk_converter_ports|Add0~25\) # (GND)))
-- \timer_ctl_ports|clk_converter_ports|Add0~27\ = CARRY((!\timer_ctl_ports|clk_converter_ports|Add0~25\) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[13]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~25\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~26_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~27\);

-- Location: LCCOMB_X14_Y11_N28
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

-- Location: LCCOMB_X14_Y11_N30
\timer_ctl_ports|clk_converter_ports|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Add0~30_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[15]~q\ & (!\timer_ctl_ports|clk_converter_ports|Add0~29\)) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[15]~q\ & 
-- ((\timer_ctl_ports|clk_converter_ports|Add0~29\) # (GND)))
-- \timer_ctl_ports|clk_converter_ports|Add0~31\ = CARRY((!\timer_ctl_ports|clk_converter_ports|Add0~29\) # (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[15]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|clk_converter_ports|Add0~29\,
	combout => \timer_ctl_ports|clk_converter_ports|Add0~30_combout\,
	cout => \timer_ctl_ports|clk_converter_ports|Add0~31\);

-- Location: LCCOMB_X14_Y10_N0
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

-- Location: LCCOMB_X14_Y10_N2
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

-- Location: LCCOMB_X14_Y10_N4
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

-- Location: LCCOMB_X14_Y10_N6
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

-- Location: LCCOMB_X14_Y10_N8
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

-- Location: LCCOMB_X14_Y10_N10
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

-- Location: LCCOMB_X14_Y10_N12
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

-- Location: LCCOMB_X14_Y10_N14
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

-- Location: LCCOMB_X14_Y10_N16
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

-- Location: LCCOMB_X14_Y10_N18
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

-- Location: LCCOMB_X14_Y10_N20
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

-- Location: LCCOMB_X14_Y10_N22
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

-- Location: LCCOMB_X14_Y10_N24
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

-- Location: LCCOMB_X14_Y10_N26
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

-- Location: LCCOMB_X14_Y10_N28
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

-- Location: LCCOMB_X14_Y10_N30
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

-- Location: FF_X23_Y19_N27
\timer_ctl_ports|always:internal_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[13]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[13]~q\);

-- Location: FF_X23_Y19_N31
\timer_ctl_ports|always:internal_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[15]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[15]~q\);

-- Location: FF_X23_Y18_N7
\timer_ctl_ports|always:internal_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[19]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[19]~q\);

-- Location: FF_X23_Y18_N11
\timer_ctl_ports|always:internal_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[21]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[21]~q\);

-- Location: FF_X23_Y18_N13
\timer_ctl_ports|always:internal_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[22]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[22]~q\);

-- Location: FF_X23_Y18_N23
\timer_ctl_ports|always:internal_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[27]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[27]~q\);

-- Location: FF_X23_Y18_N25
\timer_ctl_ports|always:internal_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[28]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[28]~q\);

-- Location: FF_X23_Y18_N27
\timer_ctl_ports|always:internal_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[29]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[29]~q\);

-- Location: FF_X23_Y18_N29
\timer_ctl_ports|always:internal_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[30]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[30]~q\);

-- Location: FF_X23_Y18_N31
\timer_ctl_ports|always:internal_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[31]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[31]~q\);

-- Location: LCCOMB_X23_Y19_N26
\timer_ctl_ports|always:internal_counter[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[13]~1_combout\ = (\timer_ctl_ports|always:internal_counter[13]~q\ & (!\timer_ctl_ports|always:internal_counter[12]~3\)) # (!\timer_ctl_ports|always:internal_counter[13]~q\ & 
-- ((\timer_ctl_ports|always:internal_counter[12]~3\) # (GND)))
-- \timer_ctl_ports|always:internal_counter[13]~2\ = CARRY((!\timer_ctl_ports|always:internal_counter[12]~3\) # (!\timer_ctl_ports|always:internal_counter[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[13]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[12]~3\,
	combout => \timer_ctl_ports|always:internal_counter[13]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[13]~2\);

-- Location: LCCOMB_X23_Y19_N30
\timer_ctl_ports|always:internal_counter[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[15]~1_combout\ = (\timer_ctl_ports|always:internal_counter[15]~q\ & (!\timer_ctl_ports|always:internal_counter[14]~2\)) # (!\timer_ctl_ports|always:internal_counter[15]~q\ & 
-- ((\timer_ctl_ports|always:internal_counter[14]~2\) # (GND)))
-- \timer_ctl_ports|always:internal_counter[15]~2\ = CARRY((!\timer_ctl_ports|always:internal_counter[14]~2\) # (!\timer_ctl_ports|always:internal_counter[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[15]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[14]~2\,
	combout => \timer_ctl_ports|always:internal_counter[15]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[15]~2\);

-- Location: LCCOMB_X23_Y18_N6
\timer_ctl_ports|always:internal_counter[19]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[19]~1_combout\ = (\timer_ctl_ports|always:internal_counter[19]~q\ & (!\timer_ctl_ports|always:internal_counter[18]~2\)) # (!\timer_ctl_ports|always:internal_counter[19]~q\ & 
-- ((\timer_ctl_ports|always:internal_counter[18]~2\) # (GND)))
-- \timer_ctl_ports|always:internal_counter[19]~2\ = CARRY((!\timer_ctl_ports|always:internal_counter[18]~2\) # (!\timer_ctl_ports|always:internal_counter[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[19]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[18]~2\,
	combout => \timer_ctl_ports|always:internal_counter[19]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[19]~2\);

-- Location: LCCOMB_X23_Y18_N10
\timer_ctl_ports|always:internal_counter[21]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[21]~1_combout\ = (\timer_ctl_ports|always:internal_counter[21]~q\ & (!\timer_ctl_ports|always:internal_counter[20]~2\)) # (!\timer_ctl_ports|always:internal_counter[21]~q\ & 
-- ((\timer_ctl_ports|always:internal_counter[20]~2\) # (GND)))
-- \timer_ctl_ports|always:internal_counter[21]~2\ = CARRY((!\timer_ctl_ports|always:internal_counter[20]~2\) # (!\timer_ctl_ports|always:internal_counter[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[21]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[20]~2\,
	combout => \timer_ctl_ports|always:internal_counter[21]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[21]~2\);

-- Location: LCCOMB_X23_Y18_N12
\timer_ctl_ports|always:internal_counter[22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[22]~1_combout\ = (\timer_ctl_ports|always:internal_counter[22]~q\ & (\timer_ctl_ports|always:internal_counter[21]~2\ $ (GND))) # (!\timer_ctl_ports|always:internal_counter[22]~q\ & 
-- (!\timer_ctl_ports|always:internal_counter[21]~2\ & VCC))
-- \timer_ctl_ports|always:internal_counter[22]~2\ = CARRY((\timer_ctl_ports|always:internal_counter[22]~q\ & !\timer_ctl_ports|always:internal_counter[21]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[22]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[21]~2\,
	combout => \timer_ctl_ports|always:internal_counter[22]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[22]~2\);

-- Location: LCCOMB_X23_Y18_N20
\timer_ctl_ports|always:internal_counter[26]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[26]~1_combout\ = (\timer_ctl_ports|always:internal_counter[26]~q\ & (\timer_ctl_ports|always:internal_counter[25]~2\ $ (GND))) # (!\timer_ctl_ports|always:internal_counter[26]~q\ & 
-- (!\timer_ctl_ports|always:internal_counter[25]~2\ & VCC))
-- \timer_ctl_ports|always:internal_counter[26]~2\ = CARRY((\timer_ctl_ports|always:internal_counter[26]~q\ & !\timer_ctl_ports|always:internal_counter[25]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[26]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[25]~2\,
	combout => \timer_ctl_ports|always:internal_counter[26]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[26]~2\);

-- Location: LCCOMB_X23_Y18_N22
\timer_ctl_ports|always:internal_counter[27]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[27]~1_combout\ = (\timer_ctl_ports|always:internal_counter[27]~q\ & (!\timer_ctl_ports|always:internal_counter[26]~2\)) # (!\timer_ctl_ports|always:internal_counter[27]~q\ & 
-- ((\timer_ctl_ports|always:internal_counter[26]~2\) # (GND)))
-- \timer_ctl_ports|always:internal_counter[27]~2\ = CARRY((!\timer_ctl_ports|always:internal_counter[26]~2\) # (!\timer_ctl_ports|always:internal_counter[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[27]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[26]~2\,
	combout => \timer_ctl_ports|always:internal_counter[27]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[27]~2\);

-- Location: LCCOMB_X23_Y18_N24
\timer_ctl_ports|always:internal_counter[28]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[28]~1_combout\ = (\timer_ctl_ports|always:internal_counter[28]~q\ & (\timer_ctl_ports|always:internal_counter[27]~2\ $ (GND))) # (!\timer_ctl_ports|always:internal_counter[28]~q\ & 
-- (!\timer_ctl_ports|always:internal_counter[27]~2\ & VCC))
-- \timer_ctl_ports|always:internal_counter[28]~2\ = CARRY((\timer_ctl_ports|always:internal_counter[28]~q\ & !\timer_ctl_ports|always:internal_counter[27]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[28]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[27]~2\,
	combout => \timer_ctl_ports|always:internal_counter[28]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[28]~2\);

-- Location: LCCOMB_X23_Y18_N26
\timer_ctl_ports|always:internal_counter[29]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[29]~1_combout\ = (\timer_ctl_ports|always:internal_counter[29]~q\ & (!\timer_ctl_ports|always:internal_counter[28]~2\)) # (!\timer_ctl_ports|always:internal_counter[29]~q\ & 
-- ((\timer_ctl_ports|always:internal_counter[28]~2\) # (GND)))
-- \timer_ctl_ports|always:internal_counter[29]~2\ = CARRY((!\timer_ctl_ports|always:internal_counter[28]~2\) # (!\timer_ctl_ports|always:internal_counter[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[29]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[28]~2\,
	combout => \timer_ctl_ports|always:internal_counter[29]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[29]~2\);

-- Location: LCCOMB_X23_Y18_N28
\timer_ctl_ports|always:internal_counter[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[30]~1_combout\ = (\timer_ctl_ports|always:internal_counter[30]~q\ & (\timer_ctl_ports|always:internal_counter[29]~2\ $ (GND))) # (!\timer_ctl_ports|always:internal_counter[30]~q\ & 
-- (!\timer_ctl_ports|always:internal_counter[29]~2\ & VCC))
-- \timer_ctl_ports|always:internal_counter[30]~2\ = CARRY((\timer_ctl_ports|always:internal_counter[30]~q\ & !\timer_ctl_ports|always:internal_counter[29]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[30]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[29]~2\,
	combout => \timer_ctl_ports|always:internal_counter[30]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[30]~2\);

-- Location: LCCOMB_X23_Y18_N30
\timer_ctl_ports|always:internal_counter[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[31]~1_combout\ = \timer_ctl_ports|always:internal_counter[31]~q\ $ (\timer_ctl_ports|always:internal_counter[30]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[31]~q\,
	cin => \timer_ctl_ports|always:internal_counter[30]~2\,
	combout => \timer_ctl_ports|always:internal_counter[31]~1_combout\);

-- Location: FF_X14_Y10_N31
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[31]~q\);

-- Location: FF_X14_Y10_N29
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[30]~q\);

-- Location: FF_X14_Y10_N27
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[29]~q\);

-- Location: FF_X14_Y10_N25
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[28]~q\);

-- Location: LCCOMB_X15_Y10_N4
\timer_ctl_ports|clk_converter_ports|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~0_combout\ = (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[29]~q\ & (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[31]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[30]~q\ & !\timer_ctl_ports|clk_converter_ports|counter_clk:counter[28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[29]~q\,
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[31]~q\,
	datac => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[30]~q\,
	datad => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[28]~q\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~0_combout\);

-- Location: FF_X14_Y10_N23
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[27]~q\);

-- Location: FF_X14_Y10_N21
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[26]~q\);

-- Location: FF_X14_Y10_N19
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[25]~q\);

-- Location: FF_X14_Y10_N17
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[24]~q\);

-- Location: LCCOMB_X15_Y10_N14
\timer_ctl_ports|clk_converter_ports|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~1_combout\ = (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[24]~q\ & (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[25]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[27]~q\ & !\timer_ctl_ports|clk_converter_ports|counter_clk:counter[26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[24]~q\,
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[25]~q\,
	datac => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[27]~q\,
	datad => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[26]~q\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~1_combout\);

-- Location: FF_X14_Y10_N15
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[23]~q\);

-- Location: FF_X14_Y10_N13
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[22]~q\);

-- Location: FF_X14_Y10_N11
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[21]~q\);

-- Location: FF_X14_Y10_N9
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[20]~q\);

-- Location: LCCOMB_X15_Y10_N12
\timer_ctl_ports|clk_converter_ports|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~2_combout\ = (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[23]~q\ & (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[22]~q\ & 
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
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~2_combout\);

-- Location: FF_X14_Y10_N7
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[19]~q\);

-- Location: FF_X14_Y10_N5
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[18]~q\);

-- Location: FF_X14_Y10_N3
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[17]~q\);

-- Location: FF_X14_Y10_N1
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[16]~q\);

-- Location: LCCOMB_X15_Y10_N6
\timer_ctl_ports|clk_converter_ports|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~3_combout\ = (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[16]~q\ & (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[19]~q\ & 
-- (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[18]~q\ & !\timer_ctl_ports|clk_converter_ports|counter_clk:counter[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[16]~q\,
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[19]~q\,
	datac => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[18]~q\,
	datad => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[17]~q\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~3_combout\);

-- Location: LCCOMB_X15_Y10_N0
\timer_ctl_ports|clk_converter_ports|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~4_combout\ = (\timer_ctl_ports|clk_converter_ports|Equal0~2_combout\ & (\timer_ctl_ports|clk_converter_ports|Equal0~0_combout\ & (\timer_ctl_ports|clk_converter_ports|Equal0~1_combout\ & 
-- \timer_ctl_ports|clk_converter_ports|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|Equal0~2_combout\,
	datab => \timer_ctl_ports|clk_converter_ports|Equal0~0_combout\,
	datac => \timer_ctl_ports|clk_converter_ports|Equal0~1_combout\,
	datad => \timer_ctl_ports|clk_converter_ports|Equal0~3_combout\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~4_combout\);

-- Location: FF_X15_Y11_N15
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[15]~q\);

-- Location: FF_X15_Y11_N23
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[13]~q\);

-- Location: FF_X14_Y11_N29
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[14]~q\);

-- Location: FF_X14_Y11_N25
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[12]~q\);

-- Location: LCCOMB_X15_Y11_N30
\timer_ctl_ports|clk_converter_ports|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~5_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[13]~q\ & (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[14]~q\ & 
-- (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[15]~q\ & !\timer_ctl_ports|clk_converter_ports|counter_clk:counter[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[13]~q\,
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[14]~q\,
	datac => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[15]~q\,
	datad => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[12]~q\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~5_combout\);

-- Location: FF_X14_Y11_N23
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[11]~q\);

-- Location: FF_X14_Y11_N21
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[10]~q\);

-- Location: LCCOMB_X15_Y11_N16
\timer_ctl_ports|clk_converter_ports|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~6_combout\ = (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[10]~q\ & !\timer_ctl_ports|clk_converter_ports|counter_clk:counter[11]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[10]~q\,
	datad => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[11]~q\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~6_combout\);

-- Location: FF_X15_Y11_N21
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[9]~q\);

-- Location: FF_X14_Y11_N17
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[8]~q\);

-- Location: LCCOMB_X15_Y11_N4
\timer_ctl_ports|clk_converter_ports|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~7_combout\ = (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[8]~q\ & (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[9]~q\ & (\timer_ctl_ports|clk_converter_ports|Equal0~5_combout\ & 
-- \timer_ctl_ports|clk_converter_ports|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[8]~q\,
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[9]~q\,
	datac => \timer_ctl_ports|clk_converter_ports|Equal0~5_combout\,
	datad => \timer_ctl_ports|clk_converter_ports|Equal0~6_combout\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~7_combout\);

-- Location: FF_X15_Y11_N27
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[7]~q\);

-- Location: FF_X15_Y11_N29
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[6]~q\);

-- Location: FF_X14_Y11_N11
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[5]~q\);

-- Location: FF_X14_Y11_N9
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[4]~q\);

-- Location: LCCOMB_X15_Y11_N24
\timer_ctl_ports|clk_converter_ports|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~8_combout\ = (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[5]~q\ & (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[6]~q\ & (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[7]~q\ & 
-- !\timer_ctl_ports|clk_converter_ports|counter_clk:counter[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[5]~q\,
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[6]~q\,
	datac => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[7]~q\,
	datad => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[4]~q\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~8_combout\);

-- Location: FF_X14_Y11_N27
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer_ctl_ports|clk_converter_ports|counter~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[1]~q\);

-- Location: FF_X14_Y11_N7
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[3]~q\);

-- Location: FF_X14_Y11_N5
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[2]~q\);

-- Location: FF_X14_Y11_N19
\timer_ctl_ports|clk_converter_ports|counter_clk:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer_ctl_ports|clk_converter_ports|counter~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[0]~q\);

-- Location: LCCOMB_X15_Y11_N6
\timer_ctl_ports|clk_converter_ports|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~9_combout\ = (\timer_ctl_ports|clk_converter_ports|counter_clk:counter[1]~q\ & (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[3]~q\ & (!\timer_ctl_ports|clk_converter_ports|counter_clk:counter[2]~q\ 
-- & !\timer_ctl_ports|clk_converter_ports|counter_clk:counter[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[1]~q\,
	datab => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[3]~q\,
	datac => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[2]~q\,
	datad => \timer_ctl_ports|clk_converter_ports|counter_clk:counter[0]~q\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~9_combout\);

-- Location: LCCOMB_X15_Y11_N18
\timer_ctl_ports|clk_converter_ports|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|Equal0~10_combout\ = (\timer_ctl_ports|clk_converter_ports|Equal0~9_combout\ & (\timer_ctl_ports|clk_converter_ports|Equal0~8_combout\ & (\timer_ctl_ports|clk_converter_ports|Equal0~7_combout\ & 
-- \timer_ctl_ports|clk_converter_ports|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|Equal0~9_combout\,
	datab => \timer_ctl_ports|clk_converter_ports|Equal0~8_combout\,
	datac => \timer_ctl_ports|clk_converter_ports|Equal0~7_combout\,
	datad => \timer_ctl_ports|clk_converter_ports|Equal0~4_combout\,
	combout => \timer_ctl_ports|clk_converter_ports|Equal0~10_combout\);

-- Location: LCCOMB_X15_Y11_N12
\timer_ctl_ports|clk_converter_ports|clock_tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|clock_tmp~0_combout\ = \timer_ctl_ports|clk_converter_ports|clock_tmp~q\ $ (\timer_ctl_ports|clk_converter_ports|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_ctl_ports|clk_converter_ports|clock_tmp~q\,
	datad => \timer_ctl_ports|clk_converter_ports|Equal0~10_combout\,
	combout => \timer_ctl_ports|clk_converter_ports|clock_tmp~0_combout\);

-- Location: LCCOMB_X25_Y19_N26
\always:state_holder[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always:state_holder[5]~0_combout\ = (\always:state_holder[0]~q\ & (((!\timer_ctl_ports|long_interval~q\ & !\always:state_holder[1]~q\)))) # (!\always:state_holder[0]~q\ & (!\timer_ctl_ports|short_interval~q\ & ((\always:state_holder[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|short_interval~q\,
	datab => \always:state_holder[0]~q\,
	datac => \timer_ctl_ports|long_interval~q\,
	datad => \always:state_holder[1]~q\,
	combout => \always:state_holder[5]~0_combout\);

-- Location: LCCOMB_X26_Y19_N20
\always:state_holder[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always:state_holder[2]~0_combout\ = (\always:state_holder[2]~q\ & (\always:state_holder[5]~q\ & (!\always:state_holder[4]~q\ & \always:state_holder[0]~q\))) # (!\always:state_holder[2]~q\ & (!\always:state_holder[5]~q\ & (\always:state_holder[4]~q\ & 
-- !\always:state_holder[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always:state_holder[2]~q\,
	datab => \always:state_holder[5]~q\,
	datac => \always:state_holder[4]~q\,
	datad => \always:state_holder[0]~q\,
	combout => \always:state_holder[2]~0_combout\);

-- Location: LCCOMB_X25_Y19_N6
\always:state_holder[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always:state_holder[3]~0_combout\ = (\always:state_holder[5]~2_combout\ & ((\always:state_holder[1]~q\) # ((\always:state_holder[3]~q\ & !\always:state_holder[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always:state_holder[3]~q\,
	datab => \always:state_holder[1]~q\,
	datac => \always:state_holder[2]~0_combout\,
	datad => \always:state_holder[5]~2_combout\,
	combout => \always:state_holder[3]~0_combout\);

-- Location: LCCOMB_X15_Y11_N14
\timer_ctl_ports|clk_converter_ports|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|counter~0_combout\ = (!\timer_ctl_ports|clk_converter_ports|Equal0~10_combout\ & \timer_ctl_ports|clk_converter_ports|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|Equal0~10_combout\,
	datad => \timer_ctl_ports|clk_converter_ports|Add0~30_combout\,
	combout => \timer_ctl_ports|clk_converter_ports|counter~0_combout\);

-- Location: LCCOMB_X15_Y11_N22
\timer_ctl_ports|clk_converter_ports|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|counter~1_combout\ = (\timer_ctl_ports|clk_converter_ports|Add0~26_combout\ & !\timer_ctl_ports|clk_converter_ports|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_ctl_ports|clk_converter_ports|Add0~26_combout\,
	datad => \timer_ctl_ports|clk_converter_ports|Equal0~10_combout\,
	combout => \timer_ctl_ports|clk_converter_ports|counter~1_combout\);

-- Location: LCCOMB_X15_Y11_N20
\timer_ctl_ports|clk_converter_ports|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|counter~2_combout\ = (\timer_ctl_ports|clk_converter_ports|Add0~18_combout\ & !\timer_ctl_ports|clk_converter_ports|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_ctl_ports|clk_converter_ports|Add0~18_combout\,
	datad => \timer_ctl_ports|clk_converter_ports|Equal0~10_combout\,
	combout => \timer_ctl_ports|clk_converter_ports|counter~2_combout\);

-- Location: LCCOMB_X15_Y11_N26
\timer_ctl_ports|clk_converter_ports|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|counter~3_combout\ = (!\timer_ctl_ports|clk_converter_ports|Equal0~10_combout\ & \timer_ctl_ports|clk_converter_ports|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|Equal0~10_combout\,
	datad => \timer_ctl_ports|clk_converter_ports|Add0~14_combout\,
	combout => \timer_ctl_ports|clk_converter_ports|counter~3_combout\);

-- Location: LCCOMB_X15_Y11_N28
\timer_ctl_ports|clk_converter_ports|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|counter~4_combout\ = (!\timer_ctl_ports|clk_converter_ports|Equal0~10_combout\ & \timer_ctl_ports|clk_converter_ports|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|clk_converter_ports|Equal0~10_combout\,
	datad => \timer_ctl_ports|clk_converter_ports|Add0~12_combout\,
	combout => \timer_ctl_ports|clk_converter_ports|counter~4_combout\);

-- Location: LCCOMB_X15_Y11_N8
\timer_ctl_ports|clk_converter_ports|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|counter~5_combout\ = (\timer_ctl_ports|clk_converter_ports|Add0~2_combout\ & !\timer_ctl_ports|clk_converter_ports|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|Add0~2_combout\,
	datad => \timer_ctl_ports|clk_converter_ports|Equal0~10_combout\,
	combout => \timer_ctl_ports|clk_converter_ports|counter~5_combout\);

-- Location: LCCOMB_X15_Y11_N10
\timer_ctl_ports|clk_converter_ports|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|counter~6_combout\ = (\timer_ctl_ports|clk_converter_ports|Add0~0_combout\ & !\timer_ctl_ports|clk_converter_ports|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_ctl_ports|clk_converter_ports|Add0~0_combout\,
	datad => \timer_ctl_ports|clk_converter_ports|Equal0~10_combout\,
	combout => \timer_ctl_ports|clk_converter_ports|counter~6_combout\);

-- Location: LCCOMB_X24_Y18_N22
\timer_ctl_ports|long_interval_tmp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|long_interval_tmp~4_combout\ = (!\timer_ctl_ports|always:internal_counter[21]~q\ & (!\timer_ctl_ports|always:internal_counter[19]~q\ & (!\timer_ctl_ports|always:internal_counter[22]~q\ & !\timer_ctl_ports|always:internal_counter[20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[21]~q\,
	datab => \timer_ctl_ports|always:internal_counter[19]~q\,
	datac => \timer_ctl_ports|always:internal_counter[22]~q\,
	datad => \timer_ctl_ports|always:internal_counter[20]~q\,
	combout => \timer_ctl_ports|long_interval_tmp~4_combout\);

-- Location: LCCOMB_X24_Y18_N30
\timer_ctl_ports|short_interval_tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|short_interval_tmp~0_combout\ = (!\timer_ctl_ports|always:internal_counter[29]~q\ & (!\timer_ctl_ports|always:internal_counter[28]~q\ & (!\timer_ctl_ports|always:internal_counter[31]~q\ & 
-- !\timer_ctl_ports|always:internal_counter[30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[29]~q\,
	datab => \timer_ctl_ports|always:internal_counter[28]~q\,
	datac => \timer_ctl_ports|always:internal_counter[31]~q\,
	datad => \timer_ctl_ports|always:internal_counter[30]~q\,
	combout => \timer_ctl_ports|short_interval_tmp~0_combout\);

-- Location: LCCOMB_X25_Y19_N22
\always~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always~1_combout\ = (\timer_ctl_ports|long_interval~q\ & (!\always:state_holder[3]~q\ & (!\always:state_holder[4]~q\ & \traffic_sensor~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|long_interval~q\,
	datab => \always:state_holder[3]~q\,
	datac => \always:state_holder[4]~q\,
	datad => \traffic_sensor~input_o\,
	combout => \always~1_combout\);

-- Location: LCCOMB_X25_Y19_N30
\always~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \always~3_combout\ = (\always:state_holder[0]~q\ & (\timer_ctl_ports|long_interval~q\ & ((!\always:state_holder[1]~q\)))) # (!\always:state_holder[0]~q\ & (((\timer_ctl_ports|short_interval~q\ & \always:state_holder[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|long_interval~q\,
	datab => \always:state_holder[0]~q\,
	datac => \timer_ctl_ports|short_interval~q\,
	datad => \always:state_holder[1]~q\,
	combout => \always~3_combout\);

-- Location: IOIBUF_X25_Y34_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

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

-- Location: CLKCTRL_G14
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOOBUF_X40_Y34_N2
\show_state[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_state[0]~reg0_q\,
	devoe => ww_devoe,
	o => \show_state[0]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\show_state[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_state[1]~reg0_q\,
	devoe => ww_devoe,
	o => \show_state[1]~output_o\);

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

-- Location: LCCOMB_X15_Y11_N0
\timer_ctl_ports|clk_converter_ports|clock_tmp~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|clk_converter_ports|clock_tmp~feeder_combout\ = \timer_ctl_ports|clk_converter_ports|clock_tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|clk_converter_ports|clock_tmp~0_combout\,
	combout => \timer_ctl_ports|clk_converter_ports|clock_tmp~feeder_combout\);

-- Location: FF_X15_Y11_N1
\timer_ctl_ports|clk_converter_ports|clock_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_ctl_ports|clk_converter_ports|clock_tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|clk_converter_ports|clock_tmp~q\);

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X26_Y33_N24
\show_state[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \show_state[0]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \show_state[0]~reg0feeder_combout\);

-- Location: FF_X26_Y33_N25
\show_state[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \show_state[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \show_state[0]~reg0_q\);

-- Location: LCCOMB_X1_Y25_N16
\show_state[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \show_state[1]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \show_state[1]~reg0feeder_combout\);

-- Location: FF_X1_Y25_N17
\show_state[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \show_state[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \show_state[1]~reg0_q\);

-- Location: LCCOMB_X26_Y19_N22
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (!\always:state_holder[1]~q\ & \always:state_holder[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \always:state_holder[1]~q\,
	datad => \always:state_holder[3]~q\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X25_Y19_N18
\always~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always~0_combout\ = (\always:state_holder[5]~q\ & (\always:state_holder[2]~q\ & (!\always:state_holder[4]~q\ & \always:state_holder[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always:state_holder[5]~q\,
	datab => \always:state_holder[2]~q\,
	datac => \always:state_holder[4]~q\,
	datad => \always:state_holder[3]~q\,
	combout => \always~0_combout\);

-- Location: LCCOMB_X23_Y19_N0
\timer_ctl_ports|always:internal_counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[0]~1_combout\ = \timer_ctl_ports|always:internal_counter[0]~q\ $ (VCC)
-- \timer_ctl_ports|always:internal_counter[0]~2\ = CARRY(\timer_ctl_ports|always:internal_counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[0]~q\,
	datad => VCC,
	combout => \timer_ctl_ports|always:internal_counter[0]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[0]~2\);

-- Location: LCCOMB_X25_Y19_N12
\always~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \always~2_combout\ = (\always~1_combout\) # ((\always:state_holder[4]~q\ & (\timer_ctl_ports|short_interval~q\ & \always:state_holder[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always~1_combout\,
	datab => \always:state_holder[4]~q\,
	datac => \timer_ctl_ports|short_interval~q\,
	datad => \always:state_holder[3]~q\,
	combout => \always~2_combout\);

-- Location: LCCOMB_X25_Y19_N28
\always~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \always~4_combout\ = (\always~3_combout\ & ((\always~0_combout\) # ((\always:state_holder[4]~1_combout\ & \always~2_combout\)))) # (!\always~3_combout\ & (((\always:state_holder[4]~1_combout\ & \always~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always~3_combout\,
	datab => \always~0_combout\,
	datac => \always:state_holder[4]~1_combout\,
	datad => \always~2_combout\,
	combout => \always~4_combout\);

-- Location: FF_X25_Y19_N29
timer_reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \always~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_reset~q\);

-- Location: LCCOMB_X23_Y19_N4
\timer_ctl_ports|always:internal_counter[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[2]~1_combout\ = (\timer_ctl_ports|always:internal_counter[2]~q\ & (\timer_ctl_ports|always:internal_counter[1]~2\ $ (GND))) # (!\timer_ctl_ports|always:internal_counter[2]~q\ & 
-- (!\timer_ctl_ports|always:internal_counter[1]~2\ & VCC))
-- \timer_ctl_ports|always:internal_counter[2]~2\ = CARRY((\timer_ctl_ports|always:internal_counter[2]~q\ & !\timer_ctl_ports|always:internal_counter[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[2]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[1]~2\,
	combout => \timer_ctl_ports|always:internal_counter[2]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[2]~2\);

-- Location: LCCOMB_X23_Y19_N6
\timer_ctl_ports|always:internal_counter[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[3]~1_combout\ = (\timer_ctl_ports|always:internal_counter[3]~q\ & (!\timer_ctl_ports|always:internal_counter[2]~2\)) # (!\timer_ctl_ports|always:internal_counter[3]~q\ & 
-- ((\timer_ctl_ports|always:internal_counter[2]~2\) # (GND)))
-- \timer_ctl_ports|always:internal_counter[3]~2\ = CARRY((!\timer_ctl_ports|always:internal_counter[2]~2\) # (!\timer_ctl_ports|always:internal_counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[3]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[2]~2\,
	combout => \timer_ctl_ports|always:internal_counter[3]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[3]~2\);

-- Location: LCCOMB_X23_Y19_N8
\timer_ctl_ports|always:internal_counter[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[4]~1_combout\ = (\timer_ctl_ports|always:internal_counter[4]~q\ & (\timer_ctl_ports|always:internal_counter[3]~2\ $ (GND))) # (!\timer_ctl_ports|always:internal_counter[4]~q\ & 
-- (!\timer_ctl_ports|always:internal_counter[3]~2\ & VCC))
-- \timer_ctl_ports|always:internal_counter[4]~2\ = CARRY((\timer_ctl_ports|always:internal_counter[4]~q\ & !\timer_ctl_ports|always:internal_counter[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[4]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[3]~2\,
	combout => \timer_ctl_ports|always:internal_counter[4]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[4]~2\);

-- Location: FF_X23_Y19_N9
\timer_ctl_ports|always:internal_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[4]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[4]~q\);

-- Location: LCCOMB_X23_Y19_N10
\timer_ctl_ports|always:internal_counter[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[5]~1_combout\ = (\timer_ctl_ports|always:internal_counter[5]~q\ & (!\timer_ctl_ports|always:internal_counter[4]~2\)) # (!\timer_ctl_ports|always:internal_counter[5]~q\ & 
-- ((\timer_ctl_ports|always:internal_counter[4]~2\) # (GND)))
-- \timer_ctl_ports|always:internal_counter[5]~2\ = CARRY((!\timer_ctl_ports|always:internal_counter[4]~2\) # (!\timer_ctl_ports|always:internal_counter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[5]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[4]~2\,
	combout => \timer_ctl_ports|always:internal_counter[5]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[5]~2\);

-- Location: LCCOMB_X23_Y19_N12
\timer_ctl_ports|always:internal_counter[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[6]~1_combout\ = (\timer_ctl_ports|always:internal_counter[6]~q\ & (\timer_ctl_ports|always:internal_counter[5]~2\ $ (GND))) # (!\timer_ctl_ports|always:internal_counter[6]~q\ & 
-- (!\timer_ctl_ports|always:internal_counter[5]~2\ & VCC))
-- \timer_ctl_ports|always:internal_counter[6]~2\ = CARRY((\timer_ctl_ports|always:internal_counter[6]~q\ & !\timer_ctl_ports|always:internal_counter[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[6]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[5]~2\,
	combout => \timer_ctl_ports|always:internal_counter[6]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[6]~2\);

-- Location: FF_X23_Y19_N13
\timer_ctl_ports|always:internal_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[6]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[6]~q\);

-- Location: LCCOMB_X24_Y18_N26
\timer_ctl_ports|long_interval_tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|long_interval_tmp~0_combout\ = (!\timer_ctl_ports|always:internal_counter[1]~q\ & (!\timer_ctl_ports|always:internal_counter[0]~q\ & !\timer_ctl_ports|always:internal_counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[1]~q\,
	datac => \timer_ctl_ports|always:internal_counter[0]~q\,
	datad => \timer_ctl_ports|always:internal_counter[2]~q\,
	combout => \timer_ctl_ports|long_interval_tmp~0_combout\);

-- Location: FF_X23_Y19_N7
\timer_ctl_ports|always:internal_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[3]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[3]~q\);

-- Location: FF_X23_Y19_N11
\timer_ctl_ports|always:internal_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[5]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[5]~q\);

-- Location: LCCOMB_X24_Y19_N28
\timer_ctl_ports|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|LessThan0~0_combout\ = (\timer_ctl_ports|always:internal_counter[4]~q\ & (\timer_ctl_ports|always:internal_counter[3]~q\ & \timer_ctl_ports|always:internal_counter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[4]~q\,
	datac => \timer_ctl_ports|always:internal_counter[3]~q\,
	datad => \timer_ctl_ports|always:internal_counter[5]~q\,
	combout => \timer_ctl_ports|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y18_N4
\timer_ctl_ports|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|LessThan0~1_combout\ = ((\timer_ctl_ports|always:internal_counter[6]~q\ & (!\timer_ctl_ports|long_interval_tmp~0_combout\ & \timer_ctl_ports|LessThan0~0_combout\))) # (!\timer_ctl_ports|short_interval_tmp~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|short_interval_tmp~0_combout\,
	datab => \timer_ctl_ports|always:internal_counter[6]~q\,
	datac => \timer_ctl_ports|long_interval_tmp~0_combout\,
	datad => \timer_ctl_ports|LessThan0~0_combout\,
	combout => \timer_ctl_ports|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y19_N14
\timer_ctl_ports|always:internal_counter[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[7]~1_combout\ = (\timer_ctl_ports|always:internal_counter[7]~q\ & (!\timer_ctl_ports|always:internal_counter[6]~2\)) # (!\timer_ctl_ports|always:internal_counter[7]~q\ & 
-- ((\timer_ctl_ports|always:internal_counter[6]~2\) # (GND)))
-- \timer_ctl_ports|always:internal_counter[7]~2\ = CARRY((!\timer_ctl_ports|always:internal_counter[6]~2\) # (!\timer_ctl_ports|always:internal_counter[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[7]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[6]~2\,
	combout => \timer_ctl_ports|always:internal_counter[7]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[7]~2\);

-- Location: FF_X23_Y19_N15
\timer_ctl_ports|always:internal_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[7]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[7]~q\);

-- Location: LCCOMB_X23_Y19_N16
\timer_ctl_ports|always:internal_counter[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[8]~1_combout\ = (\timer_ctl_ports|always:internal_counter[8]~q\ & (\timer_ctl_ports|always:internal_counter[7]~2\ $ (GND))) # (!\timer_ctl_ports|always:internal_counter[8]~q\ & 
-- (!\timer_ctl_ports|always:internal_counter[7]~2\ & VCC))
-- \timer_ctl_ports|always:internal_counter[8]~2\ = CARRY((\timer_ctl_ports|always:internal_counter[8]~q\ & !\timer_ctl_ports|always:internal_counter[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[8]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[7]~2\,
	combout => \timer_ctl_ports|always:internal_counter[8]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[8]~2\);

-- Location: FF_X23_Y19_N17
\timer_ctl_ports|always:internal_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[8]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[8]~q\);

-- Location: LCCOMB_X23_Y19_N18
\timer_ctl_ports|always:internal_counter[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[9]~1_combout\ = (\timer_ctl_ports|always:internal_counter[9]~q\ & (!\timer_ctl_ports|always:internal_counter[8]~2\)) # (!\timer_ctl_ports|always:internal_counter[9]~q\ & 
-- ((\timer_ctl_ports|always:internal_counter[8]~2\) # (GND)))
-- \timer_ctl_ports|always:internal_counter[9]~2\ = CARRY((!\timer_ctl_ports|always:internal_counter[8]~2\) # (!\timer_ctl_ports|always:internal_counter[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[9]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[8]~2\,
	combout => \timer_ctl_ports|always:internal_counter[9]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[9]~2\);

-- Location: FF_X23_Y19_N19
\timer_ctl_ports|always:internal_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[9]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[9]~q\);

-- Location: LCCOMB_X23_Y19_N20
\timer_ctl_ports|always:internal_counter[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[10]~1_combout\ = (\timer_ctl_ports|always:internal_counter[10]~q\ & (\timer_ctl_ports|always:internal_counter[9]~2\ $ (GND))) # (!\timer_ctl_ports|always:internal_counter[10]~q\ & 
-- (!\timer_ctl_ports|always:internal_counter[9]~2\ & VCC))
-- \timer_ctl_ports|always:internal_counter[10]~2\ = CARRY((\timer_ctl_ports|always:internal_counter[10]~q\ & !\timer_ctl_ports|always:internal_counter[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[10]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[9]~2\,
	combout => \timer_ctl_ports|always:internal_counter[10]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[10]~2\);

-- Location: FF_X23_Y19_N21
\timer_ctl_ports|always:internal_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[10]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[10]~q\);

-- Location: LCCOMB_X23_Y19_N22
\timer_ctl_ports|always:internal_counter[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[11]~1_combout\ = (\timer_ctl_ports|always:internal_counter[11]~q\ & (!\timer_ctl_ports|always:internal_counter[10]~2\)) # (!\timer_ctl_ports|always:internal_counter[11]~q\ & 
-- ((\timer_ctl_ports|always:internal_counter[10]~2\) # (GND)))
-- \timer_ctl_ports|always:internal_counter[11]~2\ = CARRY((!\timer_ctl_ports|always:internal_counter[10]~2\) # (!\timer_ctl_ports|always:internal_counter[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[11]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[10]~2\,
	combout => \timer_ctl_ports|always:internal_counter[11]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[11]~2\);

-- Location: LCCOMB_X23_Y19_N24
\timer_ctl_ports|always:internal_counter[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[12]~2_combout\ = (\timer_ctl_ports|always:internal_counter[12]~q\ & (\timer_ctl_ports|always:internal_counter[11]~2\ $ (GND))) # (!\timer_ctl_ports|always:internal_counter[12]~q\ & 
-- (!\timer_ctl_ports|always:internal_counter[11]~2\ & VCC))
-- \timer_ctl_ports|always:internal_counter[12]~3\ = CARRY((\timer_ctl_ports|always:internal_counter[12]~q\ & !\timer_ctl_ports|always:internal_counter[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[12]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[11]~2\,
	combout => \timer_ctl_ports|always:internal_counter[12]~2_combout\,
	cout => \timer_ctl_ports|always:internal_counter[12]~3\);

-- Location: FF_X23_Y19_N25
\timer_ctl_ports|always:internal_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[12]~2_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[12]~q\);

-- Location: LCCOMB_X23_Y19_N28
\timer_ctl_ports|always:internal_counter[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[14]~1_combout\ = (\timer_ctl_ports|always:internal_counter[14]~q\ & (\timer_ctl_ports|always:internal_counter[13]~2\ $ (GND))) # (!\timer_ctl_ports|always:internal_counter[14]~q\ & 
-- (!\timer_ctl_ports|always:internal_counter[13]~2\ & VCC))
-- \timer_ctl_ports|always:internal_counter[14]~2\ = CARRY((\timer_ctl_ports|always:internal_counter[14]~q\ & !\timer_ctl_ports|always:internal_counter[13]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[14]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[13]~2\,
	combout => \timer_ctl_ports|always:internal_counter[14]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[14]~2\);

-- Location: FF_X23_Y19_N29
\timer_ctl_ports|always:internal_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[14]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[14]~q\);

-- Location: LCCOMB_X23_Y18_N0
\timer_ctl_ports|always:internal_counter[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[16]~1_combout\ = (\timer_ctl_ports|always:internal_counter[16]~q\ & (\timer_ctl_ports|always:internal_counter[15]~2\ $ (GND))) # (!\timer_ctl_ports|always:internal_counter[16]~q\ & 
-- (!\timer_ctl_ports|always:internal_counter[15]~2\ & VCC))
-- \timer_ctl_ports|always:internal_counter[16]~2\ = CARRY((\timer_ctl_ports|always:internal_counter[16]~q\ & !\timer_ctl_ports|always:internal_counter[15]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[16]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[15]~2\,
	combout => \timer_ctl_ports|always:internal_counter[16]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[16]~2\);

-- Location: FF_X23_Y18_N1
\timer_ctl_ports|always:internal_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[16]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[16]~q\);

-- Location: LCCOMB_X23_Y18_N2
\timer_ctl_ports|always:internal_counter[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[17]~1_combout\ = (\timer_ctl_ports|always:internal_counter[17]~q\ & (!\timer_ctl_ports|always:internal_counter[16]~2\)) # (!\timer_ctl_ports|always:internal_counter[17]~q\ & 
-- ((\timer_ctl_ports|always:internal_counter[16]~2\) # (GND)))
-- \timer_ctl_ports|always:internal_counter[17]~2\ = CARRY((!\timer_ctl_ports|always:internal_counter[16]~2\) # (!\timer_ctl_ports|always:internal_counter[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[17]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[16]~2\,
	combout => \timer_ctl_ports|always:internal_counter[17]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[17]~2\);

-- Location: LCCOMB_X23_Y18_N4
\timer_ctl_ports|always:internal_counter[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[18]~1_combout\ = (\timer_ctl_ports|always:internal_counter[18]~q\ & (\timer_ctl_ports|always:internal_counter[17]~2\ $ (GND))) # (!\timer_ctl_ports|always:internal_counter[18]~q\ & 
-- (!\timer_ctl_ports|always:internal_counter[17]~2\ & VCC))
-- \timer_ctl_ports|always:internal_counter[18]~2\ = CARRY((\timer_ctl_ports|always:internal_counter[18]~q\ & !\timer_ctl_ports|always:internal_counter[17]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[18]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[17]~2\,
	combout => \timer_ctl_ports|always:internal_counter[18]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[18]~2\);

-- Location: FF_X23_Y18_N5
\timer_ctl_ports|always:internal_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[18]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[18]~q\);

-- Location: LCCOMB_X23_Y18_N8
\timer_ctl_ports|always:internal_counter[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[20]~1_combout\ = (\timer_ctl_ports|always:internal_counter[20]~q\ & (\timer_ctl_ports|always:internal_counter[19]~2\ $ (GND))) # (!\timer_ctl_ports|always:internal_counter[20]~q\ & 
-- (!\timer_ctl_ports|always:internal_counter[19]~2\ & VCC))
-- \timer_ctl_ports|always:internal_counter[20]~2\ = CARRY((\timer_ctl_ports|always:internal_counter[20]~q\ & !\timer_ctl_ports|always:internal_counter[19]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[20]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[19]~2\,
	combout => \timer_ctl_ports|always:internal_counter[20]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[20]~2\);

-- Location: FF_X23_Y18_N9
\timer_ctl_ports|always:internal_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[20]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[20]~q\);

-- Location: LCCOMB_X23_Y18_N14
\timer_ctl_ports|always:internal_counter[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[23]~1_combout\ = (\timer_ctl_ports|always:internal_counter[23]~q\ & (!\timer_ctl_ports|always:internal_counter[22]~2\)) # (!\timer_ctl_ports|always:internal_counter[23]~q\ & 
-- ((\timer_ctl_ports|always:internal_counter[22]~2\) # (GND)))
-- \timer_ctl_ports|always:internal_counter[23]~2\ = CARRY((!\timer_ctl_ports|always:internal_counter[22]~2\) # (!\timer_ctl_ports|always:internal_counter[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[23]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[22]~2\,
	combout => \timer_ctl_ports|always:internal_counter[23]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[23]~2\);

-- Location: FF_X23_Y18_N15
\timer_ctl_ports|always:internal_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[23]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[23]~q\);

-- Location: LCCOMB_X23_Y18_N16
\timer_ctl_ports|always:internal_counter[24]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[24]~1_combout\ = (\timer_ctl_ports|always:internal_counter[24]~q\ & (\timer_ctl_ports|always:internal_counter[23]~2\ $ (GND))) # (!\timer_ctl_ports|always:internal_counter[24]~q\ & 
-- (!\timer_ctl_ports|always:internal_counter[23]~2\ & VCC))
-- \timer_ctl_ports|always:internal_counter[24]~2\ = CARRY((\timer_ctl_ports|always:internal_counter[24]~q\ & !\timer_ctl_ports|always:internal_counter[23]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[24]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[23]~2\,
	combout => \timer_ctl_ports|always:internal_counter[24]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[24]~2\);

-- Location: FF_X23_Y18_N17
\timer_ctl_ports|always:internal_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[24]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[24]~q\);

-- Location: LCCOMB_X23_Y18_N18
\timer_ctl_ports|always:internal_counter[25]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[25]~1_combout\ = (\timer_ctl_ports|always:internal_counter[25]~q\ & (!\timer_ctl_ports|always:internal_counter[24]~2\)) # (!\timer_ctl_ports|always:internal_counter[25]~q\ & 
-- ((\timer_ctl_ports|always:internal_counter[24]~2\) # (GND)))
-- \timer_ctl_ports|always:internal_counter[25]~2\ = CARRY((!\timer_ctl_ports|always:internal_counter[24]~2\) # (!\timer_ctl_ports|always:internal_counter[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[25]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[24]~2\,
	combout => \timer_ctl_ports|always:internal_counter[25]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[25]~2\);

-- Location: FF_X23_Y18_N19
\timer_ctl_ports|always:internal_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[25]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[25]~q\);

-- Location: FF_X23_Y18_N21
\timer_ctl_ports|always:internal_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[26]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[26]~q\);

-- Location: LCCOMB_X24_Y18_N14
\timer_ctl_ports|long_interval_tmp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|long_interval_tmp~6_combout\ = (!\timer_ctl_ports|always:internal_counter[23]~q\ & (!\timer_ctl_ports|always:internal_counter[25]~q\ & (!\timer_ctl_ports|always:internal_counter[24]~q\ & !\timer_ctl_ports|always:internal_counter[26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[23]~q\,
	datab => \timer_ctl_ports|always:internal_counter[25]~q\,
	datac => \timer_ctl_ports|always:internal_counter[24]~q\,
	datad => \timer_ctl_ports|always:internal_counter[26]~q\,
	combout => \timer_ctl_ports|long_interval_tmp~6_combout\);

-- Location: LCCOMB_X24_Y18_N20
\timer_ctl_ports|always:internal_counter[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[17]~feeder_combout\ = \timer_ctl_ports|always:internal_counter[17]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \timer_ctl_ports|always:internal_counter[17]~1_combout\,
	combout => \timer_ctl_ports|always:internal_counter[17]~feeder_combout\);

-- Location: FF_X24_Y18_N21
\timer_ctl_ports|always:internal_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[17]~feeder_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[17]~q\);

-- Location: LCCOMB_X24_Y18_N28
\timer_ctl_ports|long_interval_tmp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|long_interval_tmp~3_combout\ = (!\timer_ctl_ports|always:internal_counter[15]~q\ & (!\timer_ctl_ports|always:internal_counter[17]~q\ & (!\timer_ctl_ports|always:internal_counter[18]~q\ & !\timer_ctl_ports|always:internal_counter[16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[15]~q\,
	datab => \timer_ctl_ports|always:internal_counter[17]~q\,
	datac => \timer_ctl_ports|always:internal_counter[18]~q\,
	datad => \timer_ctl_ports|always:internal_counter[16]~q\,
	combout => \timer_ctl_ports|long_interval_tmp~3_combout\);

-- Location: LCCOMB_X24_Y18_N8
\timer_ctl_ports|long_interval_tmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|long_interval_tmp~1_combout\ = (!\timer_ctl_ports|always:internal_counter[7]~q\ & (!\timer_ctl_ports|always:internal_counter[8]~q\ & (!\timer_ctl_ports|always:internal_counter[10]~q\ & !\timer_ctl_ports|always:internal_counter[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[7]~q\,
	datab => \timer_ctl_ports|always:internal_counter[8]~q\,
	datac => \timer_ctl_ports|always:internal_counter[10]~q\,
	datad => \timer_ctl_ports|always:internal_counter[9]~q\,
	combout => \timer_ctl_ports|long_interval_tmp~1_combout\);

-- Location: FF_X23_Y19_N23
\timer_ctl_ports|always:internal_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[11]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[11]~q\);

-- Location: LCCOMB_X24_Y18_N18
\timer_ctl_ports|long_interval_tmp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|long_interval_tmp~2_combout\ = (!\timer_ctl_ports|always:internal_counter[13]~q\ & (!\timer_ctl_ports|always:internal_counter[14]~q\ & (!\timer_ctl_ports|always:internal_counter[12]~q\ & !\timer_ctl_ports|always:internal_counter[11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[13]~q\,
	datab => \timer_ctl_ports|always:internal_counter[14]~q\,
	datac => \timer_ctl_ports|always:internal_counter[12]~q\,
	datad => \timer_ctl_ports|always:internal_counter[11]~q\,
	combout => \timer_ctl_ports|long_interval_tmp~2_combout\);

-- Location: LCCOMB_X24_Y18_N24
\timer_ctl_ports|long_interval_tmp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|long_interval_tmp~5_combout\ = (\timer_ctl_ports|long_interval_tmp~4_combout\ & (\timer_ctl_ports|long_interval_tmp~3_combout\ & (\timer_ctl_ports|long_interval_tmp~1_combout\ & \timer_ctl_ports|long_interval_tmp~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|long_interval_tmp~4_combout\,
	datab => \timer_ctl_ports|long_interval_tmp~3_combout\,
	datac => \timer_ctl_ports|long_interval_tmp~1_combout\,
	datad => \timer_ctl_ports|long_interval_tmp~2_combout\,
	combout => \timer_ctl_ports|long_interval_tmp~5_combout\);

-- Location: LCCOMB_X24_Y18_N12
\timer_ctl_ports|long_interval_tmp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|long_interval_tmp~7_combout\ = (!\timer_ctl_ports|always:internal_counter[27]~q\ & (\timer_ctl_ports|long_interval_tmp~6_combout\ & \timer_ctl_ports|long_interval_tmp~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[27]~q\,
	datac => \timer_ctl_ports|long_interval_tmp~6_combout\,
	datad => \timer_ctl_ports|long_interval_tmp~5_combout\,
	combout => \timer_ctl_ports|long_interval_tmp~7_combout\);

-- Location: LCCOMB_X24_Y18_N10
\timer_ctl_ports|always:internal_counter[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[12]~1_combout\ = (\timer_reset~q\) # ((!\timer_ctl_ports|LessThan0~1_combout\ & \timer_ctl_ports|long_interval_tmp~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~q\,
	datac => \timer_ctl_ports|LessThan0~1_combout\,
	datad => \timer_ctl_ports|long_interval_tmp~7_combout\,
	combout => \timer_ctl_ports|always:internal_counter[12]~1_combout\);

-- Location: FF_X23_Y19_N1
\timer_ctl_ports|always:internal_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[0]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[0]~q\);

-- Location: LCCOMB_X23_Y19_N2
\timer_ctl_ports|always:internal_counter[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|always:internal_counter[1]~1_combout\ = (\timer_ctl_ports|always:internal_counter[1]~q\ & (!\timer_ctl_ports|always:internal_counter[0]~2\)) # (!\timer_ctl_ports|always:internal_counter[1]~q\ & 
-- ((\timer_ctl_ports|always:internal_counter[0]~2\) # (GND)))
-- \timer_ctl_ports|always:internal_counter[1]~2\ = CARRY((!\timer_ctl_ports|always:internal_counter[0]~2\) # (!\timer_ctl_ports|always:internal_counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|always:internal_counter[1]~q\,
	datad => VCC,
	cin => \timer_ctl_ports|always:internal_counter[0]~2\,
	combout => \timer_ctl_ports|always:internal_counter[1]~1_combout\,
	cout => \timer_ctl_ports|always:internal_counter[1]~2\);

-- Location: FF_X23_Y19_N3
\timer_ctl_ports|always:internal_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[1]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[1]~q\);

-- Location: FF_X23_Y19_N5
\timer_ctl_ports|always:internal_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|always:internal_counter[2]~1_combout\,
	sclr => \timer_reset~q\,
	ena => \timer_ctl_ports|always:internal_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|always:internal_counter[2]~q\);

-- Location: LCCOMB_X24_Y18_N16
\timer_ctl_ports|short_interval_tmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|short_interval_tmp~1_combout\ = (!\timer_ctl_ports|always:internal_counter[1]~q\ & (\timer_ctl_ports|always:internal_counter[2]~q\ & (!\timer_ctl_ports|always:internal_counter[0]~q\ & !\timer_ctl_ports|always:internal_counter[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|always:internal_counter[1]~q\,
	datab => \timer_ctl_ports|always:internal_counter[2]~q\,
	datac => \timer_ctl_ports|always:internal_counter[0]~q\,
	datad => \timer_ctl_ports|always:internal_counter[6]~q\,
	combout => \timer_ctl_ports|short_interval_tmp~1_combout\);

-- Location: LCCOMB_X24_Y18_N6
\timer_ctl_ports|long_interval_tmp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|long_interval_tmp~8_combout\ = (!\timer_ctl_ports|LessThan0~1_combout\ & (\timer_ctl_ports|long_interval_tmp~7_combout\ & \timer_ctl_ports|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_ctl_ports|LessThan0~1_combout\,
	datac => \timer_ctl_ports|long_interval_tmp~7_combout\,
	datad => \timer_ctl_ports|LessThan0~0_combout\,
	combout => \timer_ctl_ports|long_interval_tmp~8_combout\);

-- Location: LCCOMB_X24_Y18_N2
\timer_ctl_ports|short_interval_tmp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|short_interval_tmp~2_combout\ = (\timer_ctl_ports|short_interval~q\) # ((\timer_ctl_ports|short_interval_tmp~0_combout\ & (\timer_ctl_ports|short_interval_tmp~1_combout\ & \timer_ctl_ports|long_interval_tmp~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|short_interval_tmp~0_combout\,
	datab => \timer_ctl_ports|short_interval_tmp~1_combout\,
	datac => \timer_ctl_ports|short_interval~q\,
	datad => \timer_ctl_ports|long_interval_tmp~8_combout\,
	combout => \timer_ctl_ports|short_interval_tmp~2_combout\);

-- Location: FF_X24_Y18_N3
\timer_ctl_ports|short_interval\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|short_interval_tmp~2_combout\,
	sclr => \timer_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|short_interval~q\);

-- Location: LCCOMB_X24_Y18_N0
\timer_ctl_ports|long_interval_tmp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_ctl_ports|long_interval_tmp~9_combout\ = (\timer_ctl_ports|long_interval~q\) # ((\timer_ctl_ports|long_interval_tmp~0_combout\ & (\timer_ctl_ports|always:internal_counter[6]~q\ & \timer_ctl_ports|long_interval_tmp~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ctl_ports|long_interval_tmp~0_combout\,
	datab => \timer_ctl_ports|always:internal_counter[6]~q\,
	datac => \timer_ctl_ports|long_interval~q\,
	datad => \timer_ctl_ports|long_interval_tmp~8_combout\,
	combout => \timer_ctl_ports|long_interval_tmp~9_combout\);

-- Location: FF_X24_Y18_N1
\timer_ctl_ports|long_interval\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \timer_ctl_ports|long_interval_tmp~9_combout\,
	sclr => \timer_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ctl_ports|long_interval~q\);

-- Location: LCCOMB_X25_Y19_N20
\always:state_holder[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always:state_holder[5]~1_combout\ = (!\always:state_holder[4]~q\ & (!\always:state_holder[3]~q\ & ((\traffic_sensor~input_o\) # (!\timer_ctl_ports|long_interval~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \traffic_sensor~input_o\,
	datab => \always:state_holder[4]~q\,
	datac => \timer_ctl_ports|long_interval~q\,
	datad => \always:state_holder[3]~q\,
	combout => \always:state_holder[5]~1_combout\);

-- Location: LCCOMB_X25_Y19_N10
\always:state_holder[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always:state_holder[4]~0_combout\ = (\always:state_holder[5]~1_combout\) # ((\always:state_holder[3]~q\ & (\always:state_holder[4]~q\ & !\timer_ctl_ports|short_interval~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always:state_holder[3]~q\,
	datab => \always:state_holder[4]~q\,
	datac => \timer_ctl_ports|short_interval~q\,
	datad => \always:state_holder[5]~1_combout\,
	combout => \always:state_holder[4]~0_combout\);

-- Location: LCCOMB_X25_Y19_N0
\always:state_holder[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \always:state_holder[5]~2_combout\ = (\always:state_holder[5]~0_combout\ & (!\always~0_combout\ & ((!\always:state_holder[4]~0_combout\) # (!\always:state_holder[4]~1_combout\)))) # (!\always:state_holder[5]~0_combout\ & 
-- (((!\always:state_holder[4]~0_combout\) # (!\always:state_holder[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always:state_holder[5]~0_combout\,
	datab => \always~0_combout\,
	datac => \always:state_holder[4]~1_combout\,
	datad => \always:state_holder[4]~0_combout\,
	combout => \always:state_holder[5]~2_combout\);

-- Location: LCCOMB_X25_Y19_N2
\always:state_holder[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always:state_holder[2]~1_combout\ = (\always:state_holder[5]~2_combout\ & (\always:state_holder[2]~0_combout\ & (\Mux5~1_combout\))) # (!\always:state_holder[5]~2_combout\ & (((\always:state_holder[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always:state_holder[2]~0_combout\,
	datab => \Mux5~1_combout\,
	datac => \always:state_holder[2]~q\,
	datad => \always:state_holder[5]~2_combout\,
	combout => \always:state_holder[2]~1_combout\);

-- Location: FF_X25_Y19_N3
\always:state_holder[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \always:state_holder[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \always:state_holder[2]~q\);

-- Location: LCCOMB_X25_Y19_N16
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\always:state_holder[5]~q\ & (!\always:state_holder[4]~q\ & (!\always:state_holder[1]~q\ & \always:state_holder[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always:state_holder[5]~q\,
	datab => \always:state_holder[4]~q\,
	datac => \always:state_holder[1]~q\,
	datad => \always:state_holder[2]~q\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X26_Y19_N8
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

-- Location: FF_X25_Y19_N17
\always:state_holder[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \Mux4~0_combout\,
	asdata => \~GND~combout\,
	sclr => \ALT_INV_always:state_holder[3]~q\,
	sload => \ALT_INV_always:state_holder[0]~q\,
	ena => \always:state_holder[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \always:state_holder[1]~q\);

-- Location: LCCOMB_X25_Y19_N4
\always:state_holder[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always:state_holder[4]~1_combout\ = (!\always:state_holder[5]~q\ & (!\always:state_holder[1]~q\ & (!\always:state_holder[0]~q\ & !\always:state_holder[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always:state_holder[5]~q\,
	datab => \always:state_holder[1]~q\,
	datac => \always:state_holder[0]~q\,
	datad => \always:state_holder[2]~q\,
	combout => \always:state_holder[4]~1_combout\);

-- Location: LCCOMB_X25_Y19_N14
\always:state_holder[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \always:state_holder[4]~2_combout\ = (\always:state_holder[4]~q\ & (((!\always:state_holder[5]~2_combout\)))) # (!\always:state_holder[4]~q\ & (!\always:state_holder[3]~q\ & (\always:state_holder[4]~1_combout\ & \always:state_holder[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always:state_holder[3]~q\,
	datab => \always:state_holder[4]~1_combout\,
	datac => \always:state_holder[4]~q\,
	datad => \always:state_holder[5]~2_combout\,
	combout => \always:state_holder[4]~2_combout\);

-- Location: FF_X25_Y19_N15
\always:state_holder[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \always:state_holder[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \always:state_holder[4]~q\);

-- Location: LCCOMB_X25_Y19_N8
\always:state_holder[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \always:state_holder[5]~3_combout\ = (\always:state_holder[5]~2_combout\ & (\always:state_holder[2]~0_combout\ & (\Mux5~1_combout\))) # (!\always:state_holder[5]~2_combout\ & (((\always:state_holder[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always:state_holder[2]~0_combout\,
	datab => \Mux5~1_combout\,
	datac => \always:state_holder[5]~q\,
	datad => \always:state_holder[5]~2_combout\,
	combout => \always:state_holder[5]~3_combout\);

-- Location: FF_X25_Y19_N9
\always:state_holder[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \always:state_holder[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \always:state_holder[5]~q\);

-- Location: LCCOMB_X26_Y19_N18
\always:state_holder[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always:state_holder[3]~1_combout\ = (\always:state_holder[0]~q\) # ((\always:state_holder[4]~q\) # ((\always:state_holder[5]~q\) # (\always:state_holder[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always:state_holder[0]~q\,
	datab => \always:state_holder[4]~q\,
	datac => \always:state_holder[5]~q\,
	datad => \always:state_holder[2]~q\,
	combout => \always:state_holder[3]~1_combout\);

-- Location: LCCOMB_X25_Y19_N24
\always:state_holder[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \always:state_holder[3]~2_combout\ = (!\always:state_holder[3]~0_combout\ & ((\always:state_holder[3]~q\) # ((!\always:state_holder[3]~1_combout\ & \always:state_holder[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always:state_holder[3]~0_combout\,
	datab => \always:state_holder[3]~1_combout\,
	datac => \always:state_holder[3]~q\,
	datad => \always:state_holder[5]~2_combout\,
	combout => \always:state_holder[3]~2_combout\);

-- Location: FF_X25_Y19_N25
\always:state_holder[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \always:state_holder[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \always:state_holder[3]~q\);

-- Location: LCCOMB_X26_Y19_N12
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\always:state_holder[1]~q\ & (\always:state_holder[3]~q\ & (!\always:state_holder[0]~q\ & !\always:state_holder[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always:state_holder[1]~q\,
	datab => \always:state_holder[3]~q\,
	datac => \always:state_holder[0]~q\,
	datad => \always:state_holder[2]~q\,
	combout => \Mux5~0_combout\);

-- Location: FF_X26_Y19_N13
\always:state_holder[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ctl_ports|clk_converter_ports|clock_tmp~clkctrl_outclk\,
	d => \Mux5~0_combout\,
	asdata => \~GND~combout\,
	sclr => \ALT_INV_always:state_holder[4]~q\,
	sload => \always:state_holder[5]~q\,
	ena => \always:state_holder[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \always:state_holder[0]~q\);

-- Location: LCCOMB_X26_Y19_N6
\trafic_light_ctl[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafic_light_ctl[0]~reg0feeder_combout\ = \always:state_holder[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \always:state_holder[0]~q\,
	combout => \trafic_light_ctl[0]~reg0feeder_combout\);

-- Location: FF_X26_Y19_N7
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

-- Location: LCCOMB_X26_Y19_N28
\trafic_light_ctl[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafic_light_ctl[1]~reg0feeder_combout\ = \always:state_holder[1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \always:state_holder[1]~q\,
	combout => \trafic_light_ctl[1]~reg0feeder_combout\);

-- Location: FF_X26_Y19_N29
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

-- Location: LCCOMB_X26_Y19_N14
\trafic_light_ctl[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafic_light_ctl[2]~reg0feeder_combout\ = \always:state_holder[2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \always:state_holder[2]~q\,
	combout => \trafic_light_ctl[2]~reg0feeder_combout\);

-- Location: FF_X26_Y19_N15
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

-- Location: LCCOMB_X26_Y19_N0
\trafic_light_ctl[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafic_light_ctl[3]~reg0feeder_combout\ = \always:state_holder[3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \always:state_holder[3]~q\,
	combout => \trafic_light_ctl[3]~reg0feeder_combout\);

-- Location: FF_X26_Y19_N1
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

-- Location: LCCOMB_X26_Y19_N10
\trafic_light_ctl[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafic_light_ctl[4]~reg0feeder_combout\ = \always:state_holder[4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \always:state_holder[4]~q\,
	combout => \trafic_light_ctl[4]~reg0feeder_combout\);

-- Location: FF_X26_Y19_N11
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

-- Location: LCCOMB_X26_Y19_N4
\trafic_light_ctl[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafic_light_ctl[5]~reg0feeder_combout\ = \always:state_holder[5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \always:state_holder[5]~q\,
	combout => \trafic_light_ctl[5]~reg0feeder_combout\);

-- Location: FF_X26_Y19_N5
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

ww_show_state(0) <= \show_state[0]~output_o\;

ww_show_state(1) <= \show_state[1]~output_o\;

ww_trafic_light_ctl(0) <= \trafic_light_ctl[0]~output_o\;

ww_trafic_light_ctl(1) <= \trafic_light_ctl[1]~output_o\;

ww_trafic_light_ctl(2) <= \trafic_light_ctl[2]~output_o\;

ww_trafic_light_ctl(3) <= \trafic_light_ctl[3]~output_o\;

ww_trafic_light_ctl(4) <= \trafic_light_ctl[4]~output_o\;

ww_trafic_light_ctl(5) <= \trafic_light_ctl[5]~output_o\;
END structure;


