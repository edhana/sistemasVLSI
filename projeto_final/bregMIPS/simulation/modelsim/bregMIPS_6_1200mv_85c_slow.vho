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

-- DATE "02/21/2013 15:02:02"

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

ENTITY 	bregMIPS IS
    PORT (
	clk : IN std_logic;
	rd : IN std_logic;
	wr : IN std_logic;
	add1 : IN std_logic_vector(4 DOWNTO 0);
	add2 : IN std_logic_vector(4 DOWNTO 0);
	wadd : IN std_logic_vector(4 DOWNTO 0);
	wdata : IN std_logic_vector(31 DOWNTO 0);
	r1 : OUT std_logic_vector(31 DOWNTO 0);
	r2 : OUT std_logic_vector(31 DOWNTO 0)
	);
END bregMIPS;

-- Design Ports Information
-- add1[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add2[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[1]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[3]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[4]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[5]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[7]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[8]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[9]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[10]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[11]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[12]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[13]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[14]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[15]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[16]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[17]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[18]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[19]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[20]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[21]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[22]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[23]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[24]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[25]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[26]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[27]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[28]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[29]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[30]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[31]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[0]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[8]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[9]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[10]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[11]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[12]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[13]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[14]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[15]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[16]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[17]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[18]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[19]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[20]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[21]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[22]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[23]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[24]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[25]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[26]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[27]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[28]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[29]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[30]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[31]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add1[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add1[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add1[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add1[2]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add2[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add2[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add2[0]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add2[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[0]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wadd[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wadd[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wadd[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wadd[4]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wadd[0]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[3]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[5]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[6]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[8]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[9]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[10]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[11]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[12]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[13]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[14]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[15]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[16]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[17]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[18]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[19]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[20]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[21]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[22]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[23]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[24]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[25]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[26]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[27]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[28]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[29]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[30]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wdata[31]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bregMIPS IS
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
SIGNAL ww_rd : std_logic;
SIGNAL ww_wr : std_logic;
SIGNAL ww_add1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_add2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_wadd : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_wdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_r1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_r2 : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \registers[2][0]~q\ : std_logic;
SIGNAL \registers[1][0]~q\ : std_logic;
SIGNAL \r1~12_combout\ : std_logic;
SIGNAL \r1~17_combout\ : std_logic;
SIGNAL \registers[12][2]~q\ : std_logic;
SIGNAL \registers[6][2]~q\ : std_logic;
SIGNAL \r1~30_combout\ : std_logic;
SIGNAL \r1~31_combout\ : std_logic;
SIGNAL \registers[1][2]~q\ : std_logic;
SIGNAL \r1~35_combout\ : std_logic;
SIGNAL \registers[10][3]~q\ : std_logic;
SIGNAL \registers[9][3]~q\ : std_logic;
SIGNAL \registers[8][3]~q\ : std_logic;
SIGNAL \r1~37_combout\ : std_logic;
SIGNAL \registers[11][3]~q\ : std_logic;
SIGNAL \r1~38_combout\ : std_logic;
SIGNAL \registers[6][3]~q\ : std_logic;
SIGNAL \registers[4][3]~q\ : std_logic;
SIGNAL \r1~40_combout\ : std_logic;
SIGNAL \r1~41_combout\ : std_logic;
SIGNAL \r1~42_combout\ : std_logic;
SIGNAL \registers[10][4]~q\ : std_logic;
SIGNAL \registers[8][4]~q\ : std_logic;
SIGNAL \r1~47_combout\ : std_logic;
SIGNAL \registers[13][5]~q\ : std_logic;
SIGNAL \registers[14][5]~q\ : std_logic;
SIGNAL \registers[12][5]~q\ : std_logic;
SIGNAL \r1~55_combout\ : std_logic;
SIGNAL \registers[15][5]~q\ : std_logic;
SIGNAL \r1~56_combout\ : std_logic;
SIGNAL \r1~57_combout\ : std_logic;
SIGNAL \registers[7][5]~q\ : std_logic;
SIGNAL \registers[13][6]~q\ : std_logic;
SIGNAL \registers[12][6]~q\ : std_logic;
SIGNAL \r1~65_combout\ : std_logic;
SIGNAL \registers[10][6]~q\ : std_logic;
SIGNAL \registers[8][6]~q\ : std_logic;
SIGNAL \r1~67_combout\ : std_logic;
SIGNAL \r1~68_combout\ : std_logic;
SIGNAL \registers[2][6]~q\ : std_logic;
SIGNAL \r1~72_combout\ : std_logic;
SIGNAL \registers[12][7]~q\ : std_logic;
SIGNAL \registers[15][7]~q\ : std_logic;
SIGNAL \registers[9][7]~q\ : std_logic;
SIGNAL \registers[8][7]~q\ : std_logic;
SIGNAL \r1~77_combout\ : std_logic;
SIGNAL \r1~78_combout\ : std_logic;
SIGNAL \registers[6][7]~q\ : std_logic;
SIGNAL \registers[4][7]~q\ : std_logic;
SIGNAL \r1~80_combout\ : std_logic;
SIGNAL \r1~81_combout\ : std_logic;
SIGNAL \r1~82_combout\ : std_logic;
SIGNAL \registers[13][8]~q\ : std_logic;
SIGNAL \registers[12][8]~q\ : std_logic;
SIGNAL \r1~85_combout\ : std_logic;
SIGNAL \r1~86_combout\ : std_logic;
SIGNAL \registers[11][8]~q\ : std_logic;
SIGNAL \registers[6][8]~q\ : std_logic;
SIGNAL \r1~90_combout\ : std_logic;
SIGNAL \r1~91_combout\ : std_logic;
SIGNAL \registers[13][9]~q\ : std_logic;
SIGNAL \registers[14][9]~q\ : std_logic;
SIGNAL \registers[12][9]~q\ : std_logic;
SIGNAL \r1~95_combout\ : std_logic;
SIGNAL \registers[15][9]~q\ : std_logic;
SIGNAL \r1~96_combout\ : std_logic;
SIGNAL \r1~97_combout\ : std_logic;
SIGNAL \registers[5][9]~q\ : std_logic;
SIGNAL \registers[6][9]~q\ : std_logic;
SIGNAL \registers[4][9]~q\ : std_logic;
SIGNAL \r1~100_combout\ : std_logic;
SIGNAL \registers[7][9]~q\ : std_logic;
SIGNAL \r1~101_combout\ : std_logic;
SIGNAL \registers[1][9]~q\ : std_logic;
SIGNAL \r1~102_combout\ : std_logic;
SIGNAL \registers[13][10]~q\ : std_logic;
SIGNAL \registers[12][10]~q\ : std_logic;
SIGNAL \r1~105_combout\ : std_logic;
SIGNAL \registers[10][10]~q\ : std_logic;
SIGNAL \registers[8][10]~q\ : std_logic;
SIGNAL \r1~107_combout\ : std_logic;
SIGNAL \r1~108_combout\ : std_logic;
SIGNAL \r1~112_combout\ : std_logic;
SIGNAL \registers[15][11]~q\ : std_logic;
SIGNAL \registers[10][11]~q\ : std_logic;
SIGNAL \r1~117_combout\ : std_logic;
SIGNAL \r1~118_combout\ : std_logic;
SIGNAL \registers[14][12]~q\ : std_logic;
SIGNAL \r1~125_combout\ : std_logic;
SIGNAL \r1~126_combout\ : std_logic;
SIGNAL \registers[10][12]~q\ : std_logic;
SIGNAL \registers[8][12]~q\ : std_logic;
SIGNAL \r1~127_combout\ : std_logic;
SIGNAL \registers[5][12]~q\ : std_logic;
SIGNAL \registers[4][12]~q\ : std_logic;
SIGNAL \r1~130_combout\ : std_logic;
SIGNAL \r1~132_combout\ : std_logic;
SIGNAL \registers[14][13]~q\ : std_logic;
SIGNAL \registers[12][13]~q\ : std_logic;
SIGNAL \r1~135_combout\ : std_logic;
SIGNAL \registers[6][13]~q\ : std_logic;
SIGNAL \r1~140_combout\ : std_logic;
SIGNAL \r1~141_combout\ : std_logic;
SIGNAL \r1~142_combout\ : std_logic;
SIGNAL \registers[13][14]~q\ : std_logic;
SIGNAL \registers[12][14]~q\ : std_logic;
SIGNAL \r1~145_combout\ : std_logic;
SIGNAL \r1~146_combout\ : std_logic;
SIGNAL \registers[2][14]~q\ : std_logic;
SIGNAL \registers[1][14]~q\ : std_logic;
SIGNAL \r1~152_combout\ : std_logic;
SIGNAL \registers[9][15]~q\ : std_logic;
SIGNAL \registers[8][15]~q\ : std_logic;
SIGNAL \r1~157_combout\ : std_logic;
SIGNAL \r1~158_combout\ : std_logic;
SIGNAL \r1~160_combout\ : std_logic;
SIGNAL \r1~161_combout\ : std_logic;
SIGNAL \r1~162_combout\ : std_logic;
SIGNAL \registers[13][16]~q\ : std_logic;
SIGNAL \registers[12][16]~q\ : std_logic;
SIGNAL \r1~165_combout\ : std_logic;
SIGNAL \r1~166_combout\ : std_logic;
SIGNAL \registers[6][16]~q\ : std_logic;
SIGNAL \registers[5][16]~q\ : std_logic;
SIGNAL \r1~170_combout\ : std_logic;
SIGNAL \r1~171_combout\ : std_logic;
SIGNAL \registers[13][17]~q\ : std_logic;
SIGNAL \r1~175_combout\ : std_logic;
SIGNAL \r1~176_combout\ : std_logic;
SIGNAL \registers[6][17]~q\ : std_logic;
SIGNAL \r1~180_combout\ : std_logic;
SIGNAL \r1~181_combout\ : std_logic;
SIGNAL \registers[1][17]~q\ : std_logic;
SIGNAL \r1~182_combout\ : std_logic;
SIGNAL \registers[13][18]~q\ : std_logic;
SIGNAL \registers[12][18]~q\ : std_logic;
SIGNAL \r1~185_combout\ : std_logic;
SIGNAL \registers[9][18]~q\ : std_logic;
SIGNAL \registers[10][18]~q\ : std_logic;
SIGNAL \r1~187_combout\ : std_logic;
SIGNAL \r1~188_combout\ : std_logic;
SIGNAL \registers[5][18]~q\ : std_logic;
SIGNAL \r1~190_combout\ : std_logic;
SIGNAL \registers[12][19]~q\ : std_logic;
SIGNAL \registers[5][19]~q\ : std_logic;
SIGNAL \registers[6][19]~q\ : std_logic;
SIGNAL \registers[4][19]~q\ : std_logic;
SIGNAL \r1~200_combout\ : std_logic;
SIGNAL \registers[7][19]~q\ : std_logic;
SIGNAL \r1~201_combout\ : std_logic;
SIGNAL \r1~202_combout\ : std_logic;
SIGNAL \registers[13][20]~q\ : std_logic;
SIGNAL \registers[12][20]~q\ : std_logic;
SIGNAL \r1~205_combout\ : std_logic;
SIGNAL \registers[6][20]~q\ : std_logic;
SIGNAL \registers[5][20]~q\ : std_logic;
SIGNAL \registers[4][20]~q\ : std_logic;
SIGNAL \r1~210_combout\ : std_logic;
SIGNAL \registers[7][20]~q\ : std_logic;
SIGNAL \r1~211_combout\ : std_logic;
SIGNAL \registers[9][21]~q\ : std_logic;
SIGNAL \registers[8][21]~q\ : std_logic;
SIGNAL \r1~217_combout\ : std_logic;
SIGNAL \r1~218_combout\ : std_logic;
SIGNAL \registers[5][21]~q\ : std_logic;
SIGNAL \registers[6][21]~q\ : std_logic;
SIGNAL \registers[4][21]~q\ : std_logic;
SIGNAL \r1~220_combout\ : std_logic;
SIGNAL \registers[7][21]~q\ : std_logic;
SIGNAL \r1~221_combout\ : std_logic;
SIGNAL \registers[8][23]~q\ : std_logic;
SIGNAL \registers[5][23]~q\ : std_logic;
SIGNAL \registers[6][23]~q\ : std_logic;
SIGNAL \registers[4][23]~q\ : std_logic;
SIGNAL \r1~240_combout\ : std_logic;
SIGNAL \registers[7][23]~q\ : std_logic;
SIGNAL \r1~241_combout\ : std_logic;
SIGNAL \r1~245_combout\ : std_logic;
SIGNAL \r1~247_combout\ : std_logic;
SIGNAL \registers[5][24]~q\ : std_logic;
SIGNAL \registers[4][24]~q\ : std_logic;
SIGNAL \r1~250_combout\ : std_logic;
SIGNAL \registers[9][25]~q\ : std_logic;
SIGNAL \registers[8][25]~q\ : std_logic;
SIGNAL \r1~257_combout\ : std_logic;
SIGNAL \r1~258_combout\ : std_logic;
SIGNAL \registers[6][25]~q\ : std_logic;
SIGNAL \registers[4][25]~q\ : std_logic;
SIGNAL \r1~260_combout\ : std_logic;
SIGNAL \r1~261_combout\ : std_logic;
SIGNAL \r1~262_combout\ : std_logic;
SIGNAL \r1~267_combout\ : std_logic;
SIGNAL \r1~268_combout\ : std_logic;
SIGNAL \r1~270_combout\ : std_logic;
SIGNAL \r1~271_combout\ : std_logic;
SIGNAL \registers[9][27]~q\ : std_logic;
SIGNAL \registers[8][27]~q\ : std_logic;
SIGNAL \r1~277_combout\ : std_logic;
SIGNAL \registers[4][27]~q\ : std_logic;
SIGNAL \registers[12][28]~q\ : std_logic;
SIGNAL \r1~290_combout\ : std_logic;
SIGNAL \r1~297_combout\ : std_logic;
SIGNAL \r1~298_combout\ : std_logic;
SIGNAL \registers[5][29]~q\ : std_logic;
SIGNAL \registers[6][29]~q\ : std_logic;
SIGNAL \registers[4][29]~q\ : std_logic;
SIGNAL \r1~300_combout\ : std_logic;
SIGNAL \registers[7][29]~q\ : std_logic;
SIGNAL \r1~301_combout\ : std_logic;
SIGNAL \registers[1][29]~q\ : std_logic;
SIGNAL \r1~302_combout\ : std_logic;
SIGNAL \r1~307_combout\ : std_logic;
SIGNAL \r1~308_combout\ : std_logic;
SIGNAL \r1~310_combout\ : std_logic;
SIGNAL \registers[13][31]~q\ : std_logic;
SIGNAL \registers[14][31]~q\ : std_logic;
SIGNAL \registers[12][31]~q\ : std_logic;
SIGNAL \r1~315_combout\ : std_logic;
SIGNAL \registers[15][31]~q\ : std_logic;
SIGNAL \r1~316_combout\ : std_logic;
SIGNAL \r1~317_combout\ : std_logic;
SIGNAL \registers[6][31]~q\ : std_logic;
SIGNAL \registers[4][31]~q\ : std_logic;
SIGNAL \r1~320_combout\ : std_logic;
SIGNAL \r2~12_combout\ : std_logic;
SIGNAL \r2~15_combout\ : std_logic;
SIGNAL \r2~16_combout\ : std_logic;
SIGNAL \r2~20_combout\ : std_logic;
SIGNAL \r2~25_combout\ : std_logic;
SIGNAL \r2~26_combout\ : std_logic;
SIGNAL \r2~32_combout\ : std_logic;
SIGNAL \r2~37_combout\ : std_logic;
SIGNAL \r2~38_combout\ : std_logic;
SIGNAL \r2~40_combout\ : std_logic;
SIGNAL \r2~47_combout\ : std_logic;
SIGNAL \r2~48_combout\ : std_logic;
SIGNAL \r2~50_combout\ : std_logic;
SIGNAL \r2~51_combout\ : std_logic;
SIGNAL \r2~55_combout\ : std_logic;
SIGNAL \r2~56_combout\ : std_logic;
SIGNAL \r2~60_combout\ : std_logic;
SIGNAL \r2~61_combout\ : std_logic;
SIGNAL \r2~62_combout\ : std_logic;
SIGNAL \r2~65_combout\ : std_logic;
SIGNAL \r2~67_combout\ : std_logic;
SIGNAL \r2~70_combout\ : std_logic;
SIGNAL \r2~75_combout\ : std_logic;
SIGNAL \r2~76_combout\ : std_logic;
SIGNAL \r2~77_combout\ : std_logic;
SIGNAL \r2~80_combout\ : std_logic;
SIGNAL \r2~85_combout\ : std_logic;
SIGNAL \r2~87_combout\ : std_logic;
SIGNAL \r2~88_combout\ : std_logic;
SIGNAL \r2~92_combout\ : std_logic;
SIGNAL \r2~95_combout\ : std_logic;
SIGNAL \r2~96_combout\ : std_logic;
SIGNAL \r2~100_combout\ : std_logic;
SIGNAL \r2~101_combout\ : std_logic;
SIGNAL \r2~102_combout\ : std_logic;
SIGNAL \r2~105_combout\ : std_logic;
SIGNAL \r2~106_combout\ : std_logic;
SIGNAL \r2~107_combout\ : std_logic;
SIGNAL \r2~115_combout\ : std_logic;
SIGNAL \r2~116_combout\ : std_logic;
SIGNAL \r2~120_combout\ : std_logic;
SIGNAL \r2~121_combout\ : std_logic;
SIGNAL \r2~122_combout\ : std_logic;
SIGNAL \r2~127_combout\ : std_logic;
SIGNAL \r2~128_combout\ : std_logic;
SIGNAL \r2~130_combout\ : std_logic;
SIGNAL \r2~131_combout\ : std_logic;
SIGNAL \r2~135_combout\ : std_logic;
SIGNAL \r2~145_combout\ : std_logic;
SIGNAL \r2~147_combout\ : std_logic;
SIGNAL \r2~148_combout\ : std_logic;
SIGNAL \r2~150_combout\ : std_logic;
SIGNAL \r2~152_combout\ : std_logic;
SIGNAL \r2~157_combout\ : std_logic;
SIGNAL \r2~165_combout\ : std_logic;
SIGNAL \r2~185_combout\ : std_logic;
SIGNAL \r2~195_combout\ : std_logic;
SIGNAL \r2~196_combout\ : std_logic;
SIGNAL \r2~200_combout\ : std_logic;
SIGNAL \r2~201_combout\ : std_logic;
SIGNAL \r2~205_combout\ : std_logic;
SIGNAL \r2~207_combout\ : std_logic;
SIGNAL \r2~210_combout\ : std_logic;
SIGNAL \r2~211_combout\ : std_logic;
SIGNAL \r2~215_combout\ : std_logic;
SIGNAL \r2~216_combout\ : std_logic;
SIGNAL \r2~217_combout\ : std_logic;
SIGNAL \r2~220_combout\ : std_logic;
SIGNAL \r2~221_combout\ : std_logic;
SIGNAL \r2~222_combout\ : std_logic;
SIGNAL \r2~230_combout\ : std_logic;
SIGNAL \r2~231_combout\ : std_logic;
SIGNAL \r2~235_combout\ : std_logic;
SIGNAL \r2~237_combout\ : std_logic;
SIGNAL \r2~238_combout\ : std_logic;
SIGNAL \r2~240_combout\ : std_logic;
SIGNAL \r2~241_combout\ : std_logic;
SIGNAL \r2~242_combout\ : std_logic;
SIGNAL \r2~250_combout\ : std_logic;
SIGNAL \r2~257_combout\ : std_logic;
SIGNAL \r2~260_combout\ : std_logic;
SIGNAL \r2~265_combout\ : std_logic;
SIGNAL \r2~272_combout\ : std_logic;
SIGNAL \r2~277_combout\ : std_logic;
SIGNAL \r2~278_combout\ : std_logic;
SIGNAL \r2~280_combout\ : std_logic;
SIGNAL \r2~281_combout\ : std_logic;
SIGNAL \r2~282_combout\ : std_logic;
SIGNAL \r2~285_combout\ : std_logic;
SIGNAL \r2~295_combout\ : std_logic;
SIGNAL \r2~296_combout\ : std_logic;
SIGNAL \r2~300_combout\ : std_logic;
SIGNAL \r2~301_combout\ : std_logic;
SIGNAL \r2~302_combout\ : std_logic;
SIGNAL \r2~305_combout\ : std_logic;
SIGNAL \r2~306_combout\ : std_logic;
SIGNAL \r2~315_combout\ : std_logic;
SIGNAL \r2~316_combout\ : std_logic;
SIGNAL \r2~320_combout\ : std_logic;
SIGNAL \add1[4]~input_o\ : std_logic;
SIGNAL \add2[4]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \r1[0]~output_o\ : std_logic;
SIGNAL \r1[1]~output_o\ : std_logic;
SIGNAL \r1[2]~output_o\ : std_logic;
SIGNAL \r1[3]~output_o\ : std_logic;
SIGNAL \r1[4]~output_o\ : std_logic;
SIGNAL \r1[5]~output_o\ : std_logic;
SIGNAL \r1[6]~output_o\ : std_logic;
SIGNAL \r1[7]~output_o\ : std_logic;
SIGNAL \r1[8]~output_o\ : std_logic;
SIGNAL \r1[9]~output_o\ : std_logic;
SIGNAL \r1[10]~output_o\ : std_logic;
SIGNAL \r1[11]~output_o\ : std_logic;
SIGNAL \r1[12]~output_o\ : std_logic;
SIGNAL \r1[13]~output_o\ : std_logic;
SIGNAL \r1[14]~output_o\ : std_logic;
SIGNAL \r1[15]~output_o\ : std_logic;
SIGNAL \r1[16]~output_o\ : std_logic;
SIGNAL \r1[17]~output_o\ : std_logic;
SIGNAL \r1[18]~output_o\ : std_logic;
SIGNAL \r1[19]~output_o\ : std_logic;
SIGNAL \r1[20]~output_o\ : std_logic;
SIGNAL \r1[21]~output_o\ : std_logic;
SIGNAL \r1[22]~output_o\ : std_logic;
SIGNAL \r1[23]~output_o\ : std_logic;
SIGNAL \r1[24]~output_o\ : std_logic;
SIGNAL \r1[25]~output_o\ : std_logic;
SIGNAL \r1[26]~output_o\ : std_logic;
SIGNAL \r1[27]~output_o\ : std_logic;
SIGNAL \r1[28]~output_o\ : std_logic;
SIGNAL \r1[29]~output_o\ : std_logic;
SIGNAL \r1[30]~output_o\ : std_logic;
SIGNAL \r1[31]~output_o\ : std_logic;
SIGNAL \r2[0]~output_o\ : std_logic;
SIGNAL \r2[1]~output_o\ : std_logic;
SIGNAL \r2[2]~output_o\ : std_logic;
SIGNAL \r2[3]~output_o\ : std_logic;
SIGNAL \r2[4]~output_o\ : std_logic;
SIGNAL \r2[5]~output_o\ : std_logic;
SIGNAL \r2[6]~output_o\ : std_logic;
SIGNAL \r2[7]~output_o\ : std_logic;
SIGNAL \r2[8]~output_o\ : std_logic;
SIGNAL \r2[9]~output_o\ : std_logic;
SIGNAL \r2[10]~output_o\ : std_logic;
SIGNAL \r2[11]~output_o\ : std_logic;
SIGNAL \r2[12]~output_o\ : std_logic;
SIGNAL \r2[13]~output_o\ : std_logic;
SIGNAL \r2[14]~output_o\ : std_logic;
SIGNAL \r2[15]~output_o\ : std_logic;
SIGNAL \r2[16]~output_o\ : std_logic;
SIGNAL \r2[17]~output_o\ : std_logic;
SIGNAL \r2[18]~output_o\ : std_logic;
SIGNAL \r2[19]~output_o\ : std_logic;
SIGNAL \r2[20]~output_o\ : std_logic;
SIGNAL \r2[21]~output_o\ : std_logic;
SIGNAL \r2[22]~output_o\ : std_logic;
SIGNAL \r2[23]~output_o\ : std_logic;
SIGNAL \r2[24]~output_o\ : std_logic;
SIGNAL \r2[25]~output_o\ : std_logic;
SIGNAL \r2[26]~output_o\ : std_logic;
SIGNAL \r2[27]~output_o\ : std_logic;
SIGNAL \r2[28]~output_o\ : std_logic;
SIGNAL \r2[29]~output_o\ : std_logic;
SIGNAL \r2[30]~output_o\ : std_logic;
SIGNAL \r2[31]~output_o\ : std_logic;
SIGNAL \add1[2]~input_o\ : std_logic;
SIGNAL \add1[3]~input_o\ : std_logic;
SIGNAL \add1[1]~input_o\ : std_logic;
SIGNAL \r1~5_combout\ : std_logic;
SIGNAL \r1~6_combout\ : std_logic;
SIGNAL \r1~0_combout\ : std_logic;
SIGNAL \add1[0]~input_o\ : std_logic;
SIGNAL \wdata[0]~input_o\ : std_logic;
SIGNAL \wadd[0]~input_o\ : std_logic;
SIGNAL \wadd[4]~input_o\ : std_logic;
SIGNAL \wr~input_o\ : std_logic;
SIGNAL \wadd[3]~input_o\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \wadd[1]~input_o\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \registers[13][0]~q\ : std_logic;
SIGNAL \r1~1_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \registers[14][0]~q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \registers[15][0]~q\ : std_logic;
SIGNAL \r1~2_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \registers[9][0]~q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \registers[10][0]~q\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \registers[8][0]~q\ : std_logic;
SIGNAL \r1~3_combout\ : std_logic;
SIGNAL \r1~4_combout\ : std_logic;
SIGNAL \r1~7_combout\ : std_logic;
SIGNAL \r1~10_combout\ : std_logic;
SIGNAL \wadd[2]~input_o\ : std_logic;
SIGNAL \Decoder0~17_combout\ : std_logic;
SIGNAL \registers[3][0]~q\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \registers[5][0]~q\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \registers[4][0]~q\ : std_logic;
SIGNAL \r1~8_combout\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \registers[6][0]~q\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \registers[7][0]~q\ : std_logic;
SIGNAL \r1~9_combout\ : std_logic;
SIGNAL \r1~13_combout\ : std_logic;
SIGNAL \r1~14_combout\ : std_logic;
SIGNAL \wdata[1]~input_o\ : std_logic;
SIGNAL \registers[10][1]~q\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \registers[11][1]~q\ : std_logic;
SIGNAL \r1~18_combout\ : std_logic;
SIGNAL \registers[15][1]~q\ : std_logic;
SIGNAL \registers[13][1]~q\ : std_logic;
SIGNAL \registers[14][1]~q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \registers[12][1]~q\ : std_logic;
SIGNAL \r1~15_combout\ : std_logic;
SIGNAL \r1~16_combout\ : std_logic;
SIGNAL \r1~19_combout\ : std_logic;
SIGNAL \r1~11_combout\ : std_logic;
SIGNAL \Decoder0~15_combout\ : std_logic;
SIGNAL \registers[2][1]~q\ : std_logic;
SIGNAL \registers[5][1]~q\ : std_logic;
SIGNAL \registers[6][1]~q\ : std_logic;
SIGNAL \registers[4][1]~q\ : std_logic;
SIGNAL \r1~20_combout\ : std_logic;
SIGNAL \r1~21_combout\ : std_logic;
SIGNAL \Decoder0~16_combout\ : std_logic;
SIGNAL \registers[1][1]~q\ : std_logic;
SIGNAL \r1~22_combout\ : std_logic;
SIGNAL \r1~23_combout\ : std_logic;
SIGNAL \r1~24_combout\ : std_logic;
SIGNAL \wdata[2]~input_o\ : std_logic;
SIGNAL \registers[13][2]~q\ : std_logic;
SIGNAL \r1~25_combout\ : std_logic;
SIGNAL \registers[14][2]~q\ : std_logic;
SIGNAL \registers[15][2]~q\ : std_logic;
SIGNAL \r1~26_combout\ : std_logic;
SIGNAL \registers[10][2]~q\ : std_logic;
SIGNAL \registers[8][2]~q\ : std_logic;
SIGNAL \r1~27_combout\ : std_logic;
SIGNAL \registers[9][2]~q\ : std_logic;
SIGNAL \r1~28_combout\ : std_logic;
SIGNAL \r1~29_combout\ : std_logic;
SIGNAL \registers[3][2]~q\ : std_logic;
SIGNAL \registers[2][2]~q\ : std_logic;
SIGNAL \r1~32_combout\ : std_logic;
SIGNAL \r1~33_combout\ : std_logic;
SIGNAL \r1~34_combout\ : std_logic;
SIGNAL \wdata[3]~input_o\ : std_logic;
SIGNAL \registers[13][3]~q\ : std_logic;
SIGNAL \registers[15][3]~q\ : std_logic;
SIGNAL \r1~36_combout\ : std_logic;
SIGNAL \r1~39_combout\ : std_logic;
SIGNAL \registers[3][3]~q\ : std_logic;
SIGNAL \registers[2][3]~q\ : std_logic;
SIGNAL \r1~43_combout\ : std_logic;
SIGNAL \r1~44_combout\ : std_logic;
SIGNAL \wdata[4]~input_o\ : std_logic;
SIGNAL \registers[5][4]~q\ : std_logic;
SIGNAL \registers[4][4]~q\ : std_logic;
SIGNAL \r1~50_combout\ : std_logic;
SIGNAL \registers[6][4]~q\ : std_logic;
SIGNAL \registers[7][4]~q\ : std_logic;
SIGNAL \r1~51_combout\ : std_logic;
SIGNAL \registers[3][4]~q\ : std_logic;
SIGNAL \registers[2][4]~q\ : std_logic;
SIGNAL \r1~52_combout\ : std_logic;
SIGNAL \r1~53_combout\ : std_logic;
SIGNAL \registers[12][4]~q\ : std_logic;
SIGNAL \registers[13][4]~q\ : std_logic;
SIGNAL \r1~45_combout\ : std_logic;
SIGNAL \registers[14][4]~q\ : std_logic;
SIGNAL \r1~46_combout\ : std_logic;
SIGNAL \registers[9][4]~q\ : std_logic;
SIGNAL \registers[11][4]~q\ : std_logic;
SIGNAL \r1~48_combout\ : std_logic;
SIGNAL \r1~49_combout\ : std_logic;
SIGNAL \r1~54_combout\ : std_logic;
SIGNAL \wdata[5]~input_o\ : std_logic;
SIGNAL \registers[10][5]~q\ : std_logic;
SIGNAL \registers[11][5]~q\ : std_logic;
SIGNAL \r1~58_combout\ : std_logic;
SIGNAL \r1~59_combout\ : std_logic;
SIGNAL \registers[1][5]~q\ : std_logic;
SIGNAL \registers[5][5]~q\ : std_logic;
SIGNAL \registers[6][5]~q\ : std_logic;
SIGNAL \registers[4][5]~q\ : std_logic;
SIGNAL \r1~60_combout\ : std_logic;
SIGNAL \r1~61_combout\ : std_logic;
SIGNAL \r1~62_combout\ : std_logic;
SIGNAL \registers[2][5]~q\ : std_logic;
SIGNAL \r1~63_combout\ : std_logic;
SIGNAL \r1~64_combout\ : std_logic;
SIGNAL \wdata[6]~input_o\ : std_logic;
SIGNAL \registers[14][6]~q\ : std_logic;
SIGNAL \registers[15][6]~q\ : std_logic;
SIGNAL \r1~66_combout\ : std_logic;
SIGNAL \r1~69_combout\ : std_logic;
SIGNAL \registers[3][6]~q\ : std_logic;
SIGNAL \registers[7][6]~q\ : std_logic;
SIGNAL \registers[6][6]~q\ : std_logic;
SIGNAL \registers[4][6]~q\ : std_logic;
SIGNAL \registers[5][6]~q\ : std_logic;
SIGNAL \r1~70_combout\ : std_logic;
SIGNAL \r1~71_combout\ : std_logic;
SIGNAL \r1~73_combout\ : std_logic;
SIGNAL \r1~74_combout\ : std_logic;
SIGNAL \wdata[7]~input_o\ : std_logic;
SIGNAL \registers[13][7]~q\ : std_logic;
SIGNAL \registers[14][7]~q\ : std_logic;
SIGNAL \r1~75_combout\ : std_logic;
SIGNAL \r1~76_combout\ : std_logic;
SIGNAL \r1~79_combout\ : std_logic;
SIGNAL \registers[2][7]~q\ : std_logic;
SIGNAL \registers[3][7]~q\ : std_logic;
SIGNAL \r1~83_combout\ : std_logic;
SIGNAL \r1~84_combout\ : std_logic;
SIGNAL \wdata[8]~input_o\ : std_logic;
SIGNAL \registers[10][8]~q\ : std_logic;
SIGNAL \registers[8][8]~q\ : std_logic;
SIGNAL \r1~87_combout\ : std_logic;
SIGNAL \registers[9][8]~q\ : std_logic;
SIGNAL \r1~88_combout\ : std_logic;
SIGNAL \r1~89_combout\ : std_logic;
SIGNAL \registers[3][8]~q\ : std_logic;
SIGNAL \registers[2][8]~q\ : std_logic;
SIGNAL \registers[1][8]~q\ : std_logic;
SIGNAL \r1~92_combout\ : std_logic;
SIGNAL \r1~93_combout\ : std_logic;
SIGNAL \r1~94_combout\ : std_logic;
SIGNAL \wdata[9]~input_o\ : std_logic;
SIGNAL \registers[10][9]~q\ : std_logic;
SIGNAL \registers[11][9]~q\ : std_logic;
SIGNAL \r1~98_combout\ : std_logic;
SIGNAL \r1~99_combout\ : std_logic;
SIGNAL \registers[2][9]~q\ : std_logic;
SIGNAL \registers[3][9]~q\ : std_logic;
SIGNAL \r1~103_combout\ : std_logic;
SIGNAL \r1~104_combout\ : std_logic;
SIGNAL \wdata[10]~input_o\ : std_logic;
SIGNAL \registers[14][10]~q\ : std_logic;
SIGNAL \registers[15][10]~q\ : std_logic;
SIGNAL \r1~106_combout\ : std_logic;
SIGNAL \r1~109_combout\ : std_logic;
SIGNAL \registers[3][10]~q\ : std_logic;
SIGNAL \registers[6][10]~q\ : std_logic;
SIGNAL \registers[4][10]~q\ : std_logic;
SIGNAL \registers[5][10]~q\ : std_logic;
SIGNAL \r1~110_combout\ : std_logic;
SIGNAL \r1~111_combout\ : std_logic;
SIGNAL \r1~113_combout\ : std_logic;
SIGNAL \r1~114_combout\ : std_logic;
SIGNAL \wdata[11]~input_o\ : std_logic;
SIGNAL \registers[7][11]~q\ : std_logic;
SIGNAL \registers[5][11]~q\ : std_logic;
SIGNAL \registers[6][11]~q\ : std_logic;
SIGNAL \registers[4][11]~q\ : std_logic;
SIGNAL \r1~120_combout\ : std_logic;
SIGNAL \r1~121_combout\ : std_logic;
SIGNAL \registers[1][11]~q\ : std_logic;
SIGNAL \r1~122_combout\ : std_logic;
SIGNAL \registers[2][11]~q\ : std_logic;
SIGNAL \registers[3][11]~q\ : std_logic;
SIGNAL \r1~123_combout\ : std_logic;
SIGNAL \registers[14][11]~q\ : std_logic;
SIGNAL \registers[12][11]~q\ : std_logic;
SIGNAL \r1~115_combout\ : std_logic;
SIGNAL \registers[13][11]~q\ : std_logic;
SIGNAL \r1~116_combout\ : std_logic;
SIGNAL \r1~119_combout\ : std_logic;
SIGNAL \r1~124_combout\ : std_logic;
SIGNAL \wdata[12]~input_o\ : std_logic;
SIGNAL \registers[11][12]~q\ : std_logic;
SIGNAL \registers[9][12]~q\ : std_logic;
SIGNAL \r1~128_combout\ : std_logic;
SIGNAL \r1~129_combout\ : std_logic;
SIGNAL \registers[6][12]~q\ : std_logic;
SIGNAL \registers[7][12]~q\ : std_logic;
SIGNAL \r1~131_combout\ : std_logic;
SIGNAL \registers[3][12]~q\ : std_logic;
SIGNAL \r1~133_combout\ : std_logic;
SIGNAL \r1~134_combout\ : std_logic;
SIGNAL \wdata[13]~input_o\ : std_logic;
SIGNAL \registers[3][13]~q\ : std_logic;
SIGNAL \registers[2][13]~q\ : std_logic;
SIGNAL \r1~143_combout\ : std_logic;
SIGNAL \registers[13][13]~q\ : std_logic;
SIGNAL \registers[15][13]~q\ : std_logic;
SIGNAL \r1~136_combout\ : std_logic;
SIGNAL \registers[10][13]~q\ : std_logic;
SIGNAL \registers[9][13]~q\ : std_logic;
SIGNAL \r1~137_combout\ : std_logic;
SIGNAL \r1~138_combout\ : std_logic;
SIGNAL \r1~139_combout\ : std_logic;
SIGNAL \r1~144_combout\ : std_logic;
SIGNAL \wdata[14]~input_o\ : std_logic;
SIGNAL \registers[10][14]~q\ : std_logic;
SIGNAL \registers[8][14]~q\ : std_logic;
SIGNAL \r1~147_combout\ : std_logic;
SIGNAL \registers[9][14]~q\ : std_logic;
SIGNAL \registers[11][14]~q\ : std_logic;
SIGNAL \r1~148_combout\ : std_logic;
SIGNAL \r1~149_combout\ : std_logic;
SIGNAL \registers[6][14]~q\ : std_logic;
SIGNAL \registers[5][14]~q\ : std_logic;
SIGNAL \registers[4][14]~q\ : std_logic;
SIGNAL \r1~150_combout\ : std_logic;
SIGNAL \r1~151_combout\ : std_logic;
SIGNAL \registers[3][14]~q\ : std_logic;
SIGNAL \r1~153_combout\ : std_logic;
SIGNAL \r1~154_combout\ : std_logic;
SIGNAL \wdata[15]~input_o\ : std_logic;
SIGNAL \registers[15][15]~q\ : std_logic;
SIGNAL \registers[13][15]~q\ : std_logic;
SIGNAL \registers[14][15]~q\ : std_logic;
SIGNAL \registers[12][15]~q\ : std_logic;
SIGNAL \r1~155_combout\ : std_logic;
SIGNAL \r1~156_combout\ : std_logic;
SIGNAL \r1~159_combout\ : std_logic;
SIGNAL \registers[3][15]~q\ : std_logic;
SIGNAL \registers[2][15]~q\ : std_logic;
SIGNAL \r1~163_combout\ : std_logic;
SIGNAL \r1~164_combout\ : std_logic;
SIGNAL \wdata[16]~input_o\ : std_logic;
SIGNAL \registers[2][16]~q\ : std_logic;
SIGNAL \registers[1][16]~q\ : std_logic;
SIGNAL \r1~172_combout\ : std_logic;
SIGNAL \registers[3][16]~q\ : std_logic;
SIGNAL \r1~173_combout\ : std_logic;
SIGNAL \registers[8][16]~q\ : std_logic;
SIGNAL \registers[10][16]~q\ : std_logic;
SIGNAL \r1~167_combout\ : std_logic;
SIGNAL \registers[9][16]~q\ : std_logic;
SIGNAL \registers[11][16]~q\ : std_logic;
SIGNAL \r1~168_combout\ : std_logic;
SIGNAL \r1~169_combout\ : std_logic;
SIGNAL \r1~174_combout\ : std_logic;
SIGNAL \wdata[17]~input_o\ : std_logic;
SIGNAL \registers[3][17]~q\ : std_logic;
SIGNAL \registers[2][17]~q\ : std_logic;
SIGNAL \r1~183_combout\ : std_logic;
SIGNAL \registers[9][17]~q\ : std_logic;
SIGNAL \registers[8][17]~q\ : std_logic;
SIGNAL \r1~177_combout\ : std_logic;
SIGNAL \registers[10][17]~q\ : std_logic;
SIGNAL \registers[11][17]~q\ : std_logic;
SIGNAL \r1~178_combout\ : std_logic;
SIGNAL \r1~179_combout\ : std_logic;
SIGNAL \r1~184_combout\ : std_logic;
SIGNAL \wdata[18]~input_o\ : std_logic;
SIGNAL \registers[7][18]~q\ : std_logic;
SIGNAL \registers[6][18]~q\ : std_logic;
SIGNAL \r1~191_combout\ : std_logic;
SIGNAL \registers[3][18]~q\ : std_logic;
SIGNAL \registers[2][18]~q\ : std_logic;
SIGNAL \r1~192_combout\ : std_logic;
SIGNAL \r1~193_combout\ : std_logic;
SIGNAL \registers[14][18]~q\ : std_logic;
SIGNAL \registers[15][18]~q\ : std_logic;
SIGNAL \r1~186_combout\ : std_logic;
SIGNAL \r1~189_combout\ : std_logic;
SIGNAL \r1~194_combout\ : std_logic;
SIGNAL \wdata[19]~input_o\ : std_logic;
SIGNAL \registers[15][19]~q\ : std_logic;
SIGNAL \registers[13][19]~q\ : std_logic;
SIGNAL \registers[14][19]~q\ : std_logic;
SIGNAL \r1~195_combout\ : std_logic;
SIGNAL \r1~196_combout\ : std_logic;
SIGNAL \registers[9][19]~q\ : std_logic;
SIGNAL \r1~197_combout\ : std_logic;
SIGNAL \registers[10][19]~q\ : std_logic;
SIGNAL \registers[11][19]~q\ : std_logic;
SIGNAL \r1~198_combout\ : std_logic;
SIGNAL \r1~199_combout\ : std_logic;
SIGNAL \registers[3][19]~q\ : std_logic;
SIGNAL \registers[2][19]~q\ : std_logic;
SIGNAL \r1~203_combout\ : std_logic;
SIGNAL \r1~204_combout\ : std_logic;
SIGNAL \wdata[20]~input_o\ : std_logic;
SIGNAL \registers[2][20]~q\ : std_logic;
SIGNAL \registers[1][20]~q\ : std_logic;
SIGNAL \r1~212_combout\ : std_logic;
SIGNAL \registers[3][20]~q\ : std_logic;
SIGNAL \r1~213_combout\ : std_logic;
SIGNAL \registers[14][20]~q\ : std_logic;
SIGNAL \registers[15][20]~q\ : std_logic;
SIGNAL \r1~206_combout\ : std_logic;
SIGNAL \registers[9][20]~q\ : std_logic;
SIGNAL \registers[10][20]~q\ : std_logic;
SIGNAL \registers[8][20]~q\ : std_logic;
SIGNAL \r1~207_combout\ : std_logic;
SIGNAL \r1~208_combout\ : std_logic;
SIGNAL \r1~209_combout\ : std_logic;
SIGNAL \r1~214_combout\ : std_logic;
SIGNAL \wdata[21]~input_o\ : std_logic;
SIGNAL \registers[15][21]~q\ : std_logic;
SIGNAL \registers[13][21]~q\ : std_logic;
SIGNAL \registers[14][21]~q\ : std_logic;
SIGNAL \registers[12][21]~q\ : std_logic;
SIGNAL \r1~215_combout\ : std_logic;
SIGNAL \r1~216_combout\ : std_logic;
SIGNAL \r1~219_combout\ : std_logic;
SIGNAL \registers[2][21]~q\ : std_logic;
SIGNAL \registers[1][21]~q\ : std_logic;
SIGNAL \r1~222_combout\ : std_logic;
SIGNAL \r1~223_combout\ : std_logic;
SIGNAL \r1~224_combout\ : std_logic;
SIGNAL \wdata[22]~input_o\ : std_logic;
SIGNAL \registers[10][22]~q\ : std_logic;
SIGNAL \registers[8][22]~q\ : std_logic;
SIGNAL \r1~227_combout\ : std_logic;
SIGNAL \registers[9][22]~q\ : std_logic;
SIGNAL \registers[11][22]~q\ : std_logic;
SIGNAL \r1~228_combout\ : std_logic;
SIGNAL \registers[13][22]~q\ : std_logic;
SIGNAL \registers[12][22]~q\ : std_logic;
SIGNAL \r1~225_combout\ : std_logic;
SIGNAL \registers[14][22]~q\ : std_logic;
SIGNAL \registers[15][22]~q\ : std_logic;
SIGNAL \r1~226_combout\ : std_logic;
SIGNAL \r1~229_combout\ : std_logic;
SIGNAL \registers[2][22]~q\ : std_logic;
SIGNAL \r1~232_combout\ : std_logic;
SIGNAL \registers[3][22]~q\ : std_logic;
SIGNAL \registers[5][22]~q\ : std_logic;
SIGNAL \registers[4][22]~q\ : std_logic;
SIGNAL \r1~230_combout\ : std_logic;
SIGNAL \registers[6][22]~q\ : std_logic;
SIGNAL \registers[7][22]~q\ : std_logic;
SIGNAL \r1~231_combout\ : std_logic;
SIGNAL \r1~233_combout\ : std_logic;
SIGNAL \r1~234_combout\ : std_logic;
SIGNAL \wdata[23]~input_o\ : std_logic;
SIGNAL \registers[1][23]~q\ : std_logic;
SIGNAL \r1~242_combout\ : std_logic;
SIGNAL \registers[2][23]~q\ : std_logic;
SIGNAL \r1~243_combout\ : std_logic;
SIGNAL \registers[14][23]~q\ : std_logic;
SIGNAL \registers[12][23]~q\ : std_logic;
SIGNAL \r1~235_combout\ : std_logic;
SIGNAL \registers[13][23]~q\ : std_logic;
SIGNAL \r1~236_combout\ : std_logic;
SIGNAL \registers[11][23]~q\ : std_logic;
SIGNAL \registers[10][23]~q\ : std_logic;
SIGNAL \registers[9][23]~q\ : std_logic;
SIGNAL \r1~237_combout\ : std_logic;
SIGNAL \r1~238_combout\ : std_logic;
SIGNAL \r1~239_combout\ : std_logic;
SIGNAL \r1~244_combout\ : std_logic;
SIGNAL \wdata[24]~input_o\ : std_logic;
SIGNAL \registers[14][24]~q\ : std_logic;
SIGNAL \registers[15][24]~q\ : std_logic;
SIGNAL \r1~246_combout\ : std_logic;
SIGNAL \registers[9][24]~q\ : std_logic;
SIGNAL \registers[11][24]~q\ : std_logic;
SIGNAL \r1~248_combout\ : std_logic;
SIGNAL \r1~249_combout\ : std_logic;
SIGNAL \registers[1][24]~q\ : std_logic;
SIGNAL \registers[2][24]~q\ : std_logic;
SIGNAL \r1~252_combout\ : std_logic;
SIGNAL \registers[3][24]~q\ : std_logic;
SIGNAL \registers[7][24]~q\ : std_logic;
SIGNAL \registers[6][24]~q\ : std_logic;
SIGNAL \r1~251_combout\ : std_logic;
SIGNAL \r1~253_combout\ : std_logic;
SIGNAL \r1~254_combout\ : std_logic;
SIGNAL \wdata[25]~input_o\ : std_logic;
SIGNAL \registers[2][25]~q\ : std_logic;
SIGNAL \registers[3][25]~q\ : std_logic;
SIGNAL \r1~263_combout\ : std_logic;
SIGNAL \registers[15][25]~q\ : std_logic;
SIGNAL \registers[13][25]~q\ : std_logic;
SIGNAL \registers[14][25]~q\ : std_logic;
SIGNAL \registers[12][25]~q\ : std_logic;
SIGNAL \r1~255_combout\ : std_logic;
SIGNAL \r1~256_combout\ : std_logic;
SIGNAL \r1~259_combout\ : std_logic;
SIGNAL \r1~264_combout\ : std_logic;
SIGNAL \wdata[26]~input_o\ : std_logic;
SIGNAL \registers[15][26]~q\ : std_logic;
SIGNAL \registers[14][26]~q\ : std_logic;
SIGNAL \registers[13][26]~q\ : std_logic;
SIGNAL \registers[12][26]~q\ : std_logic;
SIGNAL \r1~265_combout\ : std_logic;
SIGNAL \r1~266_combout\ : std_logic;
SIGNAL \r1~269_combout\ : std_logic;
SIGNAL \registers[2][26]~q\ : std_logic;
SIGNAL \registers[1][26]~q\ : std_logic;
SIGNAL \r1~272_combout\ : std_logic;
SIGNAL \registers[3][26]~q\ : std_logic;
SIGNAL \r1~273_combout\ : std_logic;
SIGNAL \r1~274_combout\ : std_logic;
SIGNAL \wdata[27]~input_o\ : std_logic;
SIGNAL \registers[2][27]~q\ : std_logic;
SIGNAL \registers[1][27]~q\ : std_logic;
SIGNAL \registers[7][27]~q\ : std_logic;
SIGNAL \registers[5][27]~q\ : std_logic;
SIGNAL \registers[6][27]~q\ : std_logic;
SIGNAL \r1~280_combout\ : std_logic;
SIGNAL \r1~281_combout\ : std_logic;
SIGNAL \r1~282_combout\ : std_logic;
SIGNAL \r1~283_combout\ : std_logic;
SIGNAL \registers[15][27]~q\ : std_logic;
SIGNAL \registers[13][27]~q\ : std_logic;
SIGNAL \registers[12][27]~q\ : std_logic;
SIGNAL \registers[14][27]~q\ : std_logic;
SIGNAL \r1~275_combout\ : std_logic;
SIGNAL \r1~276_combout\ : std_logic;
SIGNAL \registers[10][27]~q\ : std_logic;
SIGNAL \registers[11][27]~q\ : std_logic;
SIGNAL \r1~278_combout\ : std_logic;
SIGNAL \r1~279_combout\ : std_logic;
SIGNAL \r1~284_combout\ : std_logic;
SIGNAL \wdata[28]~input_o\ : std_logic;
SIGNAL \registers[2][28]~q\ : std_logic;
SIGNAL \registers[1][28]~q\ : std_logic;
SIGNAL \r1~292_combout\ : std_logic;
SIGNAL \registers[3][28]~q\ : std_logic;
SIGNAL \registers[7][28]~q\ : std_logic;
SIGNAL \registers[6][28]~q\ : std_logic;
SIGNAL \r1~291_combout\ : std_logic;
SIGNAL \r1~293_combout\ : std_logic;
SIGNAL \registers[13][28]~q\ : std_logic;
SIGNAL \r1~285_combout\ : std_logic;
SIGNAL \registers[14][28]~q\ : std_logic;
SIGNAL \r1~286_combout\ : std_logic;
SIGNAL \registers[10][28]~q\ : std_logic;
SIGNAL \registers[8][28]~q\ : std_logic;
SIGNAL \r1~287_combout\ : std_logic;
SIGNAL \registers[9][28]~q\ : std_logic;
SIGNAL \r1~288_combout\ : std_logic;
SIGNAL \r1~289_combout\ : std_logic;
SIGNAL \r1~294_combout\ : std_logic;
SIGNAL \wdata[29]~input_o\ : std_logic;
SIGNAL \registers[2][29]~q\ : std_logic;
SIGNAL \registers[3][29]~q\ : std_logic;
SIGNAL \r1~303_combout\ : std_logic;
SIGNAL \registers[14][29]~q\ : std_logic;
SIGNAL \registers[12][29]~q\ : std_logic;
SIGNAL \r1~295_combout\ : std_logic;
SIGNAL \registers[13][29]~q\ : std_logic;
SIGNAL \registers[15][29]~q\ : std_logic;
SIGNAL \r1~296_combout\ : std_logic;
SIGNAL \r1~299_combout\ : std_logic;
SIGNAL \r1~304_combout\ : std_logic;
SIGNAL \wdata[30]~input_o\ : std_logic;
SIGNAL \registers[7][30]~q\ : std_logic;
SIGNAL \registers[6][30]~q\ : std_logic;
SIGNAL \r1~311_combout\ : std_logic;
SIGNAL \registers[3][30]~q\ : std_logic;
SIGNAL \registers[1][30]~q\ : std_logic;
SIGNAL \registers[2][30]~q\ : std_logic;
SIGNAL \r1~312_combout\ : std_logic;
SIGNAL \r1~313_combout\ : std_logic;
SIGNAL \registers[15][30]~q\ : std_logic;
SIGNAL \registers[14][30]~q\ : std_logic;
SIGNAL \registers[13][30]~q\ : std_logic;
SIGNAL \registers[12][30]~q\ : std_logic;
SIGNAL \r1~305_combout\ : std_logic;
SIGNAL \r1~306_combout\ : std_logic;
SIGNAL \r1~309_combout\ : std_logic;
SIGNAL \r1~314_combout\ : std_logic;
SIGNAL \wdata[31]~input_o\ : std_logic;
SIGNAL \registers[10][31]~q\ : std_logic;
SIGNAL \registers[11][31]~q\ : std_logic;
SIGNAL \r1~318_combout\ : std_logic;
SIGNAL \r1~319_combout\ : std_logic;
SIGNAL \registers[1][31]~q\ : std_logic;
SIGNAL \registers[5][31]~q\ : std_logic;
SIGNAL \registers[7][31]~q\ : std_logic;
SIGNAL \r1~321_combout\ : std_logic;
SIGNAL \r1~322_combout\ : std_logic;
SIGNAL \registers[2][31]~q\ : std_logic;
SIGNAL \registers[3][31]~q\ : std_logic;
SIGNAL \r1~323_combout\ : std_logic;
SIGNAL \r1~324_combout\ : std_logic;
SIGNAL \rd~input_o\ : std_logic;
SIGNAL \add2[3]~input_o\ : std_logic;
SIGNAL \add2[0]~input_o\ : std_logic;
SIGNAL \add2[1]~input_o\ : std_logic;
SIGNAL \r2~5_combout\ : std_logic;
SIGNAL \r2~6_combout\ : std_logic;
SIGNAL \add2[2]~input_o\ : std_logic;
SIGNAL \r2~10_combout\ : std_logic;
SIGNAL \r2~8_combout\ : std_logic;
SIGNAL \r2~9_combout\ : std_logic;
SIGNAL \r2~13_combout\ : std_logic;
SIGNAL \registers[12][0]~q\ : std_logic;
SIGNAL \r2~1_combout\ : std_logic;
SIGNAL \r2~2_combout\ : std_logic;
SIGNAL \registers[11][0]~q\ : std_logic;
SIGNAL \r2~3_combout\ : std_logic;
SIGNAL \r2~4_combout\ : std_logic;
SIGNAL \r2~7_combout\ : std_logic;
SIGNAL \r2~0_combout\ : std_logic;
SIGNAL \r2~14_combout\ : std_logic;
SIGNAL \r2~11_combout\ : std_logic;
SIGNAL \registers[3][1]~q\ : std_logic;
SIGNAL \registers[7][1]~q\ : std_logic;
SIGNAL \r2~21_combout\ : std_logic;
SIGNAL \r2~22_combout\ : std_logic;
SIGNAL \r2~23_combout\ : std_logic;
SIGNAL \registers[8][1]~q\ : std_logic;
SIGNAL \registers[9][1]~q\ : std_logic;
SIGNAL \r2~17_combout\ : std_logic;
SIGNAL \r2~18_combout\ : std_logic;
SIGNAL \r2~19_combout\ : std_logic;
SIGNAL \r2~24_combout\ : std_logic;
SIGNAL \registers[7][2]~q\ : std_logic;
SIGNAL \registers[5][2]~q\ : std_logic;
SIGNAL \registers[4][2]~q\ : std_logic;
SIGNAL \r2~30_combout\ : std_logic;
SIGNAL \r2~31_combout\ : std_logic;
SIGNAL \r2~33_combout\ : std_logic;
SIGNAL \registers[11][2]~q\ : std_logic;
SIGNAL \r2~27_combout\ : std_logic;
SIGNAL \r2~28_combout\ : std_logic;
SIGNAL \r2~29_combout\ : std_logic;
SIGNAL \r2~34_combout\ : std_logic;
SIGNAL \registers[7][3]~q\ : std_logic;
SIGNAL \registers[5][3]~q\ : std_logic;
SIGNAL \r2~41_combout\ : std_logic;
SIGNAL \registers[1][3]~q\ : std_logic;
SIGNAL \r2~42_combout\ : std_logic;
SIGNAL \r2~43_combout\ : std_logic;
SIGNAL \registers[12][3]~q\ : std_logic;
SIGNAL \registers[14][3]~q\ : std_logic;
SIGNAL \r2~35_combout\ : std_logic;
SIGNAL \r2~36_combout\ : std_logic;
SIGNAL \r2~39_combout\ : std_logic;
SIGNAL \r2~44_combout\ : std_logic;
SIGNAL \registers[1][4]~q\ : std_logic;
SIGNAL \r2~52_combout\ : std_logic;
SIGNAL \r2~53_combout\ : std_logic;
SIGNAL \registers[15][4]~q\ : std_logic;
SIGNAL \r2~45_combout\ : std_logic;
SIGNAL \r2~46_combout\ : std_logic;
SIGNAL \r2~49_combout\ : std_logic;
SIGNAL \r2~54_combout\ : std_logic;
SIGNAL \registers[9][5]~q\ : std_logic;
SIGNAL \registers[8][5]~q\ : std_logic;
SIGNAL \r2~57_combout\ : std_logic;
SIGNAL \r2~58_combout\ : std_logic;
SIGNAL \r2~59_combout\ : std_logic;
SIGNAL \registers[3][5]~q\ : std_logic;
SIGNAL \r2~63_combout\ : std_logic;
SIGNAL \r2~64_combout\ : std_logic;
SIGNAL \r2~66_combout\ : std_logic;
SIGNAL \registers[9][6]~q\ : std_logic;
SIGNAL \registers[11][6]~q\ : std_logic;
SIGNAL \r2~68_combout\ : std_logic;
SIGNAL \r2~69_combout\ : std_logic;
SIGNAL \registers[1][6]~q\ : std_logic;
SIGNAL \r2~72_combout\ : std_logic;
SIGNAL \r2~71_combout\ : std_logic;
SIGNAL \r2~73_combout\ : std_logic;
SIGNAL \r2~74_combout\ : std_logic;
SIGNAL \registers[10][7]~q\ : std_logic;
SIGNAL \registers[11][7]~q\ : std_logic;
SIGNAL \r2~78_combout\ : std_logic;
SIGNAL \r2~79_combout\ : std_logic;
SIGNAL \registers[5][7]~q\ : std_logic;
SIGNAL \registers[7][7]~q\ : std_logic;
SIGNAL \r2~81_combout\ : std_logic;
SIGNAL \registers[1][7]~q\ : std_logic;
SIGNAL \r2~82_combout\ : std_logic;
SIGNAL \r2~83_combout\ : std_logic;
SIGNAL \r2~84_combout\ : std_logic;
SIGNAL \registers[15][8]~q\ : std_logic;
SIGNAL \registers[14][8]~q\ : std_logic;
SIGNAL \r2~86_combout\ : std_logic;
SIGNAL \r2~89_combout\ : std_logic;
SIGNAL \registers[7][8]~q\ : std_logic;
SIGNAL \registers[4][8]~q\ : std_logic;
SIGNAL \registers[5][8]~q\ : std_logic;
SIGNAL \r2~90_combout\ : std_logic;
SIGNAL \r2~91_combout\ : std_logic;
SIGNAL \r2~93_combout\ : std_logic;
SIGNAL \r2~94_combout\ : std_logic;
SIGNAL \r2~103_combout\ : std_logic;
SIGNAL \registers[9][9]~q\ : std_logic;
SIGNAL \registers[8][9]~q\ : std_logic;
SIGNAL \r2~97_combout\ : std_logic;
SIGNAL \r2~98_combout\ : std_logic;
SIGNAL \r2~99_combout\ : std_logic;
SIGNAL \r2~104_combout\ : std_logic;
SIGNAL \registers[7][10]~q\ : std_logic;
SIGNAL \r2~110_combout\ : std_logic;
SIGNAL \r2~111_combout\ : std_logic;
SIGNAL \registers[1][10]~q\ : std_logic;
SIGNAL \registers[2][10]~q\ : std_logic;
SIGNAL \r2~112_combout\ : std_logic;
SIGNAL \r2~113_combout\ : std_logic;
SIGNAL \registers[11][10]~q\ : std_logic;
SIGNAL \registers[9][10]~q\ : std_logic;
SIGNAL \r2~108_combout\ : std_logic;
SIGNAL \r2~109_combout\ : std_logic;
SIGNAL \r2~114_combout\ : std_logic;
SIGNAL \r2~123_combout\ : std_logic;
SIGNAL \registers[11][11]~q\ : std_logic;
SIGNAL \registers[9][11]~q\ : std_logic;
SIGNAL \registers[8][11]~q\ : std_logic;
SIGNAL \r2~117_combout\ : std_logic;
SIGNAL \r2~118_combout\ : std_logic;
SIGNAL \r2~119_combout\ : std_logic;
SIGNAL \r2~124_combout\ : std_logic;
SIGNAL \registers[1][12]~q\ : std_logic;
SIGNAL \registers[2][12]~q\ : std_logic;
SIGNAL \r2~132_combout\ : std_logic;
SIGNAL \r2~133_combout\ : std_logic;
SIGNAL \registers[13][12]~q\ : std_logic;
SIGNAL \registers[12][12]~q\ : std_logic;
SIGNAL \r2~125_combout\ : std_logic;
SIGNAL \registers[15][12]~q\ : std_logic;
SIGNAL \r2~126_combout\ : std_logic;
SIGNAL \r2~129_combout\ : std_logic;
SIGNAL \r2~134_combout\ : std_logic;
SIGNAL \registers[4][13]~q\ : std_logic;
SIGNAL \r2~140_combout\ : std_logic;
SIGNAL \registers[7][13]~q\ : std_logic;
SIGNAL \registers[5][13]~q\ : std_logic;
SIGNAL \r2~141_combout\ : std_logic;
SIGNAL \registers[1][13]~q\ : std_logic;
SIGNAL \r2~142_combout\ : std_logic;
SIGNAL \r2~143_combout\ : std_logic;
SIGNAL \registers[8][13]~q\ : std_logic;
SIGNAL \r2~137_combout\ : std_logic;
SIGNAL \registers[11][13]~q\ : std_logic;
SIGNAL \r2~138_combout\ : std_logic;
SIGNAL \r2~136_combout\ : std_logic;
SIGNAL \r2~139_combout\ : std_logic;
SIGNAL \r2~144_combout\ : std_logic;
SIGNAL \registers[15][14]~q\ : std_logic;
SIGNAL \registers[14][14]~q\ : std_logic;
SIGNAL \r2~146_combout\ : std_logic;
SIGNAL \r2~149_combout\ : std_logic;
SIGNAL \registers[7][14]~q\ : std_logic;
SIGNAL \r2~151_combout\ : std_logic;
SIGNAL \r2~153_combout\ : std_logic;
SIGNAL \r2~154_combout\ : std_logic;
SIGNAL \registers[11][15]~q\ : std_logic;
SIGNAL \registers[10][15]~q\ : std_logic;
SIGNAL \r2~158_combout\ : std_logic;
SIGNAL \r2~155_combout\ : std_logic;
SIGNAL \r2~156_combout\ : std_logic;
SIGNAL \r2~159_combout\ : std_logic;
SIGNAL \registers[1][15]~q\ : std_logic;
SIGNAL \registers[6][15]~q\ : std_logic;
SIGNAL \registers[4][15]~q\ : std_logic;
SIGNAL \r2~160_combout\ : std_logic;
SIGNAL \registers[7][15]~q\ : std_logic;
SIGNAL \registers[5][15]~q\ : std_logic;
SIGNAL \r2~161_combout\ : std_logic;
SIGNAL \r2~162_combout\ : std_logic;
SIGNAL \r2~163_combout\ : std_logic;
SIGNAL \r2~164_combout\ : std_logic;
SIGNAL \r2~167_combout\ : std_logic;
SIGNAL \r2~168_combout\ : std_logic;
SIGNAL \registers[15][16]~q\ : std_logic;
SIGNAL \registers[14][16]~q\ : std_logic;
SIGNAL \r2~166_combout\ : std_logic;
SIGNAL \r2~169_combout\ : std_logic;
SIGNAL \registers[7][16]~q\ : std_logic;
SIGNAL \registers[4][16]~q\ : std_logic;
SIGNAL \r2~170_combout\ : std_logic;
SIGNAL \r2~171_combout\ : std_logic;
SIGNAL \r2~172_combout\ : std_logic;
SIGNAL \r2~173_combout\ : std_logic;
SIGNAL \r2~174_combout\ : std_logic;
SIGNAL \registers[4][17]~q\ : std_logic;
SIGNAL \r2~180_combout\ : std_logic;
SIGNAL \registers[7][17]~q\ : std_logic;
SIGNAL \registers[5][17]~q\ : std_logic;
SIGNAL \r2~181_combout\ : std_logic;
SIGNAL \r2~182_combout\ : std_logic;
SIGNAL \r2~183_combout\ : std_logic;
SIGNAL \r2~177_combout\ : std_logic;
SIGNAL \r2~178_combout\ : std_logic;
SIGNAL \registers[15][17]~q\ : std_logic;
SIGNAL \registers[12][17]~q\ : std_logic;
SIGNAL \registers[14][17]~q\ : std_logic;
SIGNAL \r2~175_combout\ : std_logic;
SIGNAL \r2~176_combout\ : std_logic;
SIGNAL \r2~179_combout\ : std_logic;
SIGNAL \r2~184_combout\ : std_logic;
SIGNAL \registers[1][18]~q\ : std_logic;
SIGNAL \r2~192_combout\ : std_logic;
SIGNAL \registers[4][18]~q\ : std_logic;
SIGNAL \r2~190_combout\ : std_logic;
SIGNAL \r2~191_combout\ : std_logic;
SIGNAL \r2~193_combout\ : std_logic;
SIGNAL \r2~186_combout\ : std_logic;
SIGNAL \registers[11][18]~q\ : std_logic;
SIGNAL \registers[8][18]~q\ : std_logic;
SIGNAL \r2~187_combout\ : std_logic;
SIGNAL \r2~188_combout\ : std_logic;
SIGNAL \r2~189_combout\ : std_logic;
SIGNAL \r2~194_combout\ : std_logic;
SIGNAL \registers[1][19]~q\ : std_logic;
SIGNAL \r2~202_combout\ : std_logic;
SIGNAL \r2~203_combout\ : std_logic;
SIGNAL \registers[8][19]~q\ : std_logic;
SIGNAL \r2~197_combout\ : std_logic;
SIGNAL \r2~198_combout\ : std_logic;
SIGNAL \r2~199_combout\ : std_logic;
SIGNAL \r2~204_combout\ : std_logic;
SIGNAL \r2~212_combout\ : std_logic;
SIGNAL \r2~213_combout\ : std_logic;
SIGNAL \registers[11][20]~q\ : std_logic;
SIGNAL \r2~208_combout\ : std_logic;
SIGNAL \r2~206_combout\ : std_logic;
SIGNAL \r2~209_combout\ : std_logic;
SIGNAL \r2~214_combout\ : std_logic;
SIGNAL \registers[3][21]~q\ : std_logic;
SIGNAL \r2~223_combout\ : std_logic;
SIGNAL \registers[10][21]~q\ : std_logic;
SIGNAL \registers[11][21]~q\ : std_logic;
SIGNAL \r2~218_combout\ : std_logic;
SIGNAL \r2~219_combout\ : std_logic;
SIGNAL \r2~224_combout\ : std_logic;
SIGNAL \r2~227_combout\ : std_logic;
SIGNAL \r2~228_combout\ : std_logic;
SIGNAL \r2~225_combout\ : std_logic;
SIGNAL \r2~226_combout\ : std_logic;
SIGNAL \r2~229_combout\ : std_logic;
SIGNAL \registers[1][22]~q\ : std_logic;
SIGNAL \r2~232_combout\ : std_logic;
SIGNAL \r2~233_combout\ : std_logic;
SIGNAL \r2~234_combout\ : std_logic;
SIGNAL \registers[15][23]~q\ : std_logic;
SIGNAL \r2~236_combout\ : std_logic;
SIGNAL \r2~239_combout\ : std_logic;
SIGNAL \registers[3][23]~q\ : std_logic;
SIGNAL \r2~243_combout\ : std_logic;
SIGNAL \r2~244_combout\ : std_logic;
SIGNAL \r2~252_combout\ : std_logic;
SIGNAL \r2~251_combout\ : std_logic;
SIGNAL \r2~253_combout\ : std_logic;
SIGNAL \registers[12][24]~q\ : std_logic;
SIGNAL \registers[13][24]~q\ : std_logic;
SIGNAL \r2~245_combout\ : std_logic;
SIGNAL \r2~246_combout\ : std_logic;
SIGNAL \registers[8][24]~q\ : std_logic;
SIGNAL \registers[10][24]~q\ : std_logic;
SIGNAL \r2~247_combout\ : std_logic;
SIGNAL \r2~248_combout\ : std_logic;
SIGNAL \r2~249_combout\ : std_logic;
SIGNAL \r2~254_combout\ : std_logic;
SIGNAL \registers[7][25]~q\ : std_logic;
SIGNAL \registers[5][25]~q\ : std_logic;
SIGNAL \r2~261_combout\ : std_logic;
SIGNAL \registers[1][25]~q\ : std_logic;
SIGNAL \r2~262_combout\ : std_logic;
SIGNAL \r2~263_combout\ : std_logic;
SIGNAL \registers[11][25]~q\ : std_logic;
SIGNAL \registers[10][25]~q\ : std_logic;
SIGNAL \r2~258_combout\ : std_logic;
SIGNAL \r2~255_combout\ : std_logic;
SIGNAL \r2~256_combout\ : std_logic;
SIGNAL \r2~259_combout\ : std_logic;
SIGNAL \r2~264_combout\ : std_logic;
SIGNAL \registers[5][26]~q\ : std_logic;
SIGNAL \registers[4][26]~q\ : std_logic;
SIGNAL \r2~270_combout\ : std_logic;
SIGNAL \registers[7][26]~q\ : std_logic;
SIGNAL \registers[6][26]~q\ : std_logic;
SIGNAL \r2~271_combout\ : std_logic;
SIGNAL \r2~273_combout\ : std_logic;
SIGNAL \r2~266_combout\ : std_logic;
SIGNAL \registers[9][26]~q\ : std_logic;
SIGNAL \registers[11][26]~q\ : std_logic;
SIGNAL \registers[8][26]~q\ : std_logic;
SIGNAL \registers[10][26]~q\ : std_logic;
SIGNAL \r2~267_combout\ : std_logic;
SIGNAL \r2~268_combout\ : std_logic;
SIGNAL \r2~269_combout\ : std_logic;
SIGNAL \r2~274_combout\ : std_logic;
SIGNAL \r2~275_combout\ : std_logic;
SIGNAL \r2~276_combout\ : std_logic;
SIGNAL \r2~279_combout\ : std_logic;
SIGNAL \registers[3][27]~q\ : std_logic;
SIGNAL \r2~283_combout\ : std_logic;
SIGNAL \r2~284_combout\ : std_logic;
SIGNAL \registers[15][28]~q\ : std_logic;
SIGNAL \r2~286_combout\ : std_logic;
SIGNAL \registers[11][28]~q\ : std_logic;
SIGNAL \r2~287_combout\ : std_logic;
SIGNAL \r2~288_combout\ : std_logic;
SIGNAL \r2~289_combout\ : std_logic;
SIGNAL \r2~292_combout\ : std_logic;
SIGNAL \registers[4][28]~q\ : std_logic;
SIGNAL \registers[5][28]~q\ : std_logic;
SIGNAL \r2~290_combout\ : std_logic;
SIGNAL \r2~291_combout\ : std_logic;
SIGNAL \r2~293_combout\ : std_logic;
SIGNAL \r2~294_combout\ : std_logic;
SIGNAL \registers[10][29]~q\ : std_logic;
SIGNAL \registers[11][29]~q\ : std_logic;
SIGNAL \registers[8][29]~q\ : std_logic;
SIGNAL \registers[9][29]~q\ : std_logic;
SIGNAL \r2~297_combout\ : std_logic;
SIGNAL \r2~298_combout\ : std_logic;
SIGNAL \r2~299_combout\ : std_logic;
SIGNAL \r2~303_combout\ : std_logic;
SIGNAL \r2~304_combout\ : std_logic;
SIGNAL \registers[5][30]~q\ : std_logic;
SIGNAL \registers[4][30]~q\ : std_logic;
SIGNAL \r2~310_combout\ : std_logic;
SIGNAL \r2~311_combout\ : std_logic;
SIGNAL \r2~312_combout\ : std_logic;
SIGNAL \r2~313_combout\ : std_logic;
SIGNAL \registers[10][30]~q\ : std_logic;
SIGNAL \registers[8][30]~q\ : std_logic;
SIGNAL \r2~307_combout\ : std_logic;
SIGNAL \registers[11][30]~q\ : std_logic;
SIGNAL \registers[9][30]~q\ : std_logic;
SIGNAL \r2~308_combout\ : std_logic;
SIGNAL \r2~309_combout\ : std_logic;
SIGNAL \r2~314_combout\ : std_logic;
SIGNAL \r2~321_combout\ : std_logic;
SIGNAL \r2~322_combout\ : std_logic;
SIGNAL \r2~323_combout\ : std_logic;
SIGNAL \registers[9][31]~q\ : std_logic;
SIGNAL \registers[8][31]~q\ : std_logic;
SIGNAL \r2~317_combout\ : std_logic;
SIGNAL \r2~318_combout\ : std_logic;
SIGNAL \r2~319_combout\ : std_logic;
SIGNAL \r2~324_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rd <= rd;
ww_wr <= wr;
ww_add1 <= add1;
ww_add2 <= add2;
ww_wadd <= wadd;
ww_wdata <= wdata;
r1 <= ww_r1;
r2 <= ww_r2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: FF_X24_Y14_N9
\registers[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][0]~q\);

-- Location: FF_X23_Y14_N9
\registers[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][0]~q\);

-- Location: LCCOMB_X24_Y14_N8
\r1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~12_combout\ = (\r1~10_combout\ & (((\r1~11_combout\)))) # (!\r1~10_combout\ & ((\r1~11_combout\ & ((\registers[2][0]~q\))) # (!\r1~11_combout\ & (\registers[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[1][0]~q\,
	datab => \r1~10_combout\,
	datac => \registers[2][0]~q\,
	datad => \r1~11_combout\,
	combout => \r1~12_combout\);

-- Location: LCCOMB_X29_Y17_N8
\r1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~17_combout\ = (\add1[1]~input_o\ & (((\add1[0]~input_o\)))) # (!\add1[1]~input_o\ & ((\add1[0]~input_o\ & ((\registers[9][1]~q\))) # (!\add1[0]~input_o\ & (\registers[8][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[8][1]~q\,
	datab => \add1[1]~input_o\,
	datac => \registers[9][1]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~17_combout\);

-- Location: FF_X28_Y10_N3
\registers[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][2]~q\);

-- Location: FF_X25_Y12_N9
\registers[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][2]~q\);

-- Location: LCCOMB_X26_Y12_N0
\r1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~30_combout\ = (\add1[0]~input_o\ & ((\add1[1]~input_o\) # ((\registers[5][2]~q\)))) # (!\add1[0]~input_o\ & (!\add1[1]~input_o\ & ((\registers[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[5][2]~q\,
	datad => \registers[4][2]~q\,
	combout => \r1~30_combout\);

-- Location: LCCOMB_X25_Y12_N8
\r1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~31_combout\ = (\add1[1]~input_o\ & ((\r1~30_combout\ & ((\registers[7][2]~q\))) # (!\r1~30_combout\ & (\registers[6][2]~q\)))) # (!\add1[1]~input_o\ & (\r1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \r1~30_combout\,
	datac => \registers[6][2]~q\,
	datad => \registers[7][2]~q\,
	combout => \r1~31_combout\);

-- Location: FF_X23_Y14_N3
\registers[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][2]~q\);

-- Location: LCCOMB_X30_Y13_N0
\r1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~35_combout\ = (\add1[0]~input_o\ & (\add1[1]~input_o\)) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & (\registers[14][3]~q\)) # (!\add1[1]~input_o\ & ((\registers[12][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][3]~q\,
	datad => \registers[12][3]~q\,
	combout => \r1~35_combout\);

-- Location: FF_X30_Y17_N29
\registers[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][3]~q\);

-- Location: FF_X29_Y17_N21
\registers[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][3]~q\);

-- Location: FF_X30_Y17_N23
\registers[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][3]~q\);

-- Location: LCCOMB_X29_Y17_N20
\r1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~37_combout\ = (\add1[0]~input_o\ & ((\add1[1]~input_o\) # ((\registers[9][3]~q\)))) # (!\add1[0]~input_o\ & (!\add1[1]~input_o\ & ((\registers[8][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[9][3]~q\,
	datad => \registers[8][3]~q\,
	combout => \r1~37_combout\);

-- Location: FF_X29_Y17_N23
\registers[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][3]~q\);

-- Location: LCCOMB_X30_Y17_N28
\r1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~38_combout\ = (\r1~37_combout\ & (((\registers[11][3]~q\)) # (!\add1[1]~input_o\))) # (!\r1~37_combout\ & (\add1[1]~input_o\ & (\registers[10][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~37_combout\,
	datab => \add1[1]~input_o\,
	datac => \registers[10][3]~q\,
	datad => \registers[11][3]~q\,
	combout => \r1~38_combout\);

-- Location: FF_X25_Y12_N29
\registers[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][3]~q\);

-- Location: FF_X25_Y12_N31
\registers[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][3]~q\);

-- Location: LCCOMB_X25_Y12_N28
\r1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~40_combout\ = (\add1[1]~input_o\ & (((\registers[6][3]~q\) # (\add1[0]~input_o\)))) # (!\add1[1]~input_o\ & (\registers[4][3]~q\ & ((!\add1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \registers[4][3]~q\,
	datac => \registers[6][3]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~40_combout\);

-- Location: LCCOMB_X26_Y12_N20
\r1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~41_combout\ = (\add1[0]~input_o\ & ((\r1~40_combout\ & (\registers[7][3]~q\)) # (!\r1~40_combout\ & ((\registers[5][3]~q\))))) # (!\add1[0]~input_o\ & (((\r1~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[7][3]~q\,
	datac => \registers[5][3]~q\,
	datad => \r1~40_combout\,
	combout => \r1~41_combout\);

-- Location: LCCOMB_X26_Y14_N30
\r1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~42_combout\ = (\r1~10_combout\ & ((\r1~11_combout\) # ((\r1~41_combout\)))) # (!\r1~10_combout\ & (!\r1~11_combout\ & (\registers[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~11_combout\,
	datac => \registers[1][3]~q\,
	datad => \r1~41_combout\,
	combout => \r1~42_combout\);

-- Location: FF_X32_Y13_N13
\registers[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][4]~q\);

-- Location: FF_X32_Y13_N15
\registers[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][4]~q\);

-- Location: LCCOMB_X32_Y13_N12
\r1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~47_combout\ = (\add1[1]~input_o\ & (((\registers[10][4]~q\) # (\add1[0]~input_o\)))) # (!\add1[1]~input_o\ & (\registers[8][4]~q\ & ((!\add1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \registers[8][4]~q\,
	datac => \registers[10][4]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~47_combout\);

-- Location: FF_X30_Y15_N21
\registers[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][5]~q\);

-- Location: FF_X30_Y13_N3
\registers[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][5]~q\);

-- Location: FF_X30_Y15_N23
\registers[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][5]~q\);

-- Location: LCCOMB_X30_Y13_N2
\r1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~55_combout\ = (\add1[0]~input_o\ & (\add1[1]~input_o\)) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & (\registers[14][5]~q\)) # (!\add1[1]~input_o\ & ((\registers[12][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][5]~q\,
	datad => \registers[12][5]~q\,
	combout => \r1~55_combout\);

-- Location: FF_X29_Y15_N3
\registers[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][5]~q\);

-- Location: LCCOMB_X30_Y15_N20
\r1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~56_combout\ = (\r1~55_combout\ & (((\registers[15][5]~q\)) # (!\add1[0]~input_o\))) # (!\r1~55_combout\ & (\add1[0]~input_o\ & (\registers[13][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~55_combout\,
	datab => \add1[0]~input_o\,
	datac => \registers[13][5]~q\,
	datad => \registers[15][5]~q\,
	combout => \r1~56_combout\);

-- Location: LCCOMB_X29_Y17_N0
\r1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~57_combout\ = (\add1[0]~input_o\ & ((\add1[1]~input_o\) # ((\registers[9][5]~q\)))) # (!\add1[0]~input_o\ & (!\add1[1]~input_o\ & ((\registers[8][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[9][5]~q\,
	datad => \registers[8][5]~q\,
	combout => \r1~57_combout\);

-- Location: FF_X26_Y12_N7
\registers[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][5]~q\);

-- Location: FF_X28_Y10_N9
\registers[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][6]~q\);

-- Location: FF_X28_Y10_N27
\registers[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][6]~q\);

-- Location: LCCOMB_X28_Y10_N8
\r1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~65_combout\ = (\add1[0]~input_o\ & (((\registers[13][6]~q\) # (\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & (\registers[12][6]~q\ & ((!\add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[12][6]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[13][6]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~65_combout\);

-- Location: FF_X32_Y13_N1
\registers[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][6]~q\);

-- Location: FF_X32_Y13_N27
\registers[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][6]~q\);

-- Location: LCCOMB_X32_Y13_N0
\r1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~67_combout\ = (\add1[0]~input_o\ & (((\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & ((\registers[10][6]~q\))) # (!\add1[1]~input_o\ & (\registers[8][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[8][6]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[10][6]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~67_combout\);

-- Location: LCCOMB_X29_Y17_N28
\r1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~68_combout\ = (\add1[0]~input_o\ & ((\r1~67_combout\ & (\registers[11][6]~q\)) # (!\r1~67_combout\ & ((\registers[9][6]~q\))))) # (!\add1[0]~input_o\ & (((\r1~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[11][6]~q\,
	datac => \registers[9][6]~q\,
	datad => \r1~67_combout\,
	combout => \r1~68_combout\);

-- Location: FF_X24_Y14_N13
\registers[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][6]~q\);

-- Location: LCCOMB_X24_Y14_N12
\r1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~72_combout\ = (\r1~11_combout\ & ((\r1~10_combout\) # ((\registers[2][6]~q\)))) # (!\r1~11_combout\ & (!\r1~10_combout\ & ((\registers[1][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~11_combout\,
	datab => \r1~10_combout\,
	datac => \registers[2][6]~q\,
	datad => \registers[1][6]~q\,
	combout => \r1~72_combout\);

-- Location: FF_X30_Y15_N19
\registers[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][7]~q\);

-- Location: FF_X29_Y16_N25
\registers[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][7]~q\);

-- Location: FF_X29_Y17_N25
\registers[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][7]~q\);

-- Location: FF_X30_Y17_N31
\registers[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][7]~q\);

-- Location: LCCOMB_X29_Y17_N24
\r1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~77_combout\ = (\add1[0]~input_o\ & ((\add1[1]~input_o\) # ((\registers[9][7]~q\)))) # (!\add1[0]~input_o\ & (!\add1[1]~input_o\ & ((\registers[8][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[9][7]~q\,
	datad => \registers[8][7]~q\,
	combout => \r1~77_combout\);

-- Location: LCCOMB_X30_Y17_N12
\r1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~78_combout\ = (\add1[1]~input_o\ & ((\r1~77_combout\ & (\registers[11][7]~q\)) # (!\r1~77_combout\ & ((\registers[10][7]~q\))))) # (!\add1[1]~input_o\ & (((\r1~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[11][7]~q\,
	datab => \add1[1]~input_o\,
	datac => \registers[10][7]~q\,
	datad => \r1~77_combout\,
	combout => \r1~78_combout\);

-- Location: FF_X26_Y13_N27
\registers[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][7]~q\);

-- Location: FF_X25_Y13_N27
\registers[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][7]~q\);

-- Location: LCCOMB_X26_Y13_N26
\r1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~80_combout\ = (\add1[1]~input_o\ & (((\registers[6][7]~q\) # (\add1[0]~input_o\)))) # (!\add1[1]~input_o\ & (\registers[4][7]~q\ & ((!\add1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \registers[4][7]~q\,
	datac => \registers[6][7]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~80_combout\);

-- Location: LCCOMB_X25_Y13_N16
\r1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~81_combout\ = (\add1[0]~input_o\ & ((\r1~80_combout\ & ((\registers[7][7]~q\))) # (!\r1~80_combout\ & (\registers[5][7]~q\)))) # (!\add1[0]~input_o\ & (\r1~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \r1~80_combout\,
	datac => \registers[5][7]~q\,
	datad => \registers[7][7]~q\,
	combout => \r1~81_combout\);

-- Location: LCCOMB_X26_Y14_N22
\r1~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~82_combout\ = (\r1~10_combout\ & ((\r1~81_combout\) # ((\r1~11_combout\)))) # (!\r1~10_combout\ & (((\registers[1][7]~q\ & !\r1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~81_combout\,
	datac => \registers[1][7]~q\,
	datad => \r1~11_combout\,
	combout => \r1~82_combout\);

-- Location: FF_X28_Y10_N13
\registers[13][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[8]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][8]~q\);

-- Location: FF_X28_Y10_N7
\registers[12][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[8]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][8]~q\);

-- Location: LCCOMB_X28_Y10_N12
\r1~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~85_combout\ = (\add1[0]~input_o\ & (((\registers[13][8]~q\) # (\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & (\registers[12][8]~q\ & ((!\add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[12][8]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[13][8]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~85_combout\);

-- Location: LCCOMB_X32_Y15_N2
\r1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~86_combout\ = (\r1~85_combout\ & (((\registers[15][8]~q\)) # (!\add1[1]~input_o\))) # (!\r1~85_combout\ & (\add1[1]~input_o\ & (\registers[14][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~85_combout\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][8]~q\,
	datad => \registers[15][8]~q\,
	combout => \r1~86_combout\);

-- Location: FF_X29_Y17_N31
\registers[11][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[8]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][8]~q\);

-- Location: FF_X26_Y13_N31
\registers[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[8]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][8]~q\);

-- Location: LCCOMB_X25_Y13_N28
\r1~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~90_combout\ = (\add1[0]~input_o\ & (((\registers[5][8]~q\) # (\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & (\registers[4][8]~q\ & ((!\add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[4][8]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[5][8]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~90_combout\);

-- Location: LCCOMB_X26_Y13_N30
\r1~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~91_combout\ = (\add1[1]~input_o\ & ((\r1~90_combout\ & ((\registers[7][8]~q\))) # (!\r1~90_combout\ & (\registers[6][8]~q\)))) # (!\add1[1]~input_o\ & (\r1~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \r1~90_combout\,
	datac => \registers[6][8]~q\,
	datad => \registers[7][8]~q\,
	combout => \r1~91_combout\);

-- Location: FF_X30_Y15_N13
\registers[13][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[9]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][9]~q\);

-- Location: FF_X30_Y13_N23
\registers[14][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[9]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][9]~q\);

-- Location: FF_X30_Y15_N15
\registers[12][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[9]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][9]~q\);

-- Location: LCCOMB_X30_Y13_N22
\r1~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~95_combout\ = (\add1[0]~input_o\ & (\add1[1]~input_o\)) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & (\registers[14][9]~q\)) # (!\add1[1]~input_o\ & ((\registers[12][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][9]~q\,
	datad => \registers[12][9]~q\,
	combout => \r1~95_combout\);

-- Location: FF_X29_Y16_N13
\registers[15][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[9]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][9]~q\);

-- Location: LCCOMB_X30_Y15_N12
\r1~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~96_combout\ = (\add1[0]~input_o\ & ((\r1~95_combout\ & (\registers[15][9]~q\)) # (!\r1~95_combout\ & ((\registers[13][9]~q\))))) # (!\add1[0]~input_o\ & (((\r1~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[15][9]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[13][9]~q\,
	datad => \r1~95_combout\,
	combout => \r1~96_combout\);

-- Location: LCCOMB_X31_Y15_N8
\r1~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~97_combout\ = (\add1[1]~input_o\ & (((\add1[0]~input_o\)))) # (!\add1[1]~input_o\ & ((\add1[0]~input_o\ & ((\registers[9][9]~q\))) # (!\add1[0]~input_o\ & (\registers[8][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \registers[8][9]~q\,
	datac => \registers[9][9]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~97_combout\);

-- Location: FF_X25_Y13_N9
\registers[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[9]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][9]~q\);

-- Location: FF_X26_Y13_N19
\registers[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[9]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][9]~q\);

-- Location: FF_X25_Y13_N19
\registers[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[9]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][9]~q\);

-- Location: LCCOMB_X26_Y13_N18
\r1~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~100_combout\ = (\add1[1]~input_o\ & ((\add1[0]~input_o\) # ((\registers[6][9]~q\)))) # (!\add1[1]~input_o\ & (!\add1[0]~input_o\ & ((\registers[4][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \add1[0]~input_o\,
	datac => \registers[6][9]~q\,
	datad => \registers[4][9]~q\,
	combout => \r1~100_combout\);

-- Location: FF_X26_Y13_N29
\registers[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[9]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][9]~q\);

-- Location: LCCOMB_X25_Y13_N8
\r1~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~101_combout\ = (\add1[0]~input_o\ & ((\r1~100_combout\ & ((\registers[7][9]~q\))) # (!\r1~100_combout\ & (\registers[5][9]~q\)))) # (!\add1[0]~input_o\ & (\r1~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \r1~100_combout\,
	datac => \registers[5][9]~q\,
	datad => \registers[7][9]~q\,
	combout => \r1~101_combout\);

-- Location: FF_X26_Y14_N27
\registers[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[9]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][9]~q\);

-- Location: LCCOMB_X26_Y14_N26
\r1~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~102_combout\ = (\r1~10_combout\ & ((\r1~11_combout\) # ((\r1~101_combout\)))) # (!\r1~10_combout\ & (!\r1~11_combout\ & (\registers[1][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~11_combout\,
	datac => \registers[1][9]~q\,
	datad => \r1~101_combout\,
	combout => \r1~102_combout\);

-- Location: FF_X28_Y10_N1
\registers[13][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[10]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][10]~q\);

-- Location: FF_X28_Y10_N19
\registers[12][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[10]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][10]~q\);

-- Location: LCCOMB_X28_Y10_N0
\r1~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~105_combout\ = (\add1[0]~input_o\ & (((\registers[13][10]~q\) # (\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & (\registers[12][10]~q\ & ((!\add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[12][10]~q\,
	datac => \registers[13][10]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~105_combout\);

-- Location: FF_X32_Y13_N25
\registers[10][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[10]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][10]~q\);

-- Location: FF_X32_Y13_N19
\registers[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[10]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][10]~q\);

-- Location: LCCOMB_X32_Y13_N24
\r1~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~107_combout\ = (\add1[1]~input_o\ & ((\add1[0]~input_o\) # ((\registers[10][10]~q\)))) # (!\add1[1]~input_o\ & (!\add1[0]~input_o\ & ((\registers[8][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \add1[0]~input_o\,
	datac => \registers[10][10]~q\,
	datad => \registers[8][10]~q\,
	combout => \r1~107_combout\);

-- Location: LCCOMB_X29_Y15_N8
\r1~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~108_combout\ = (\r1~107_combout\ & (((\registers[11][10]~q\)) # (!\add1[0]~input_o\))) # (!\r1~107_combout\ & (\add1[0]~input_o\ & (\registers[9][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~107_combout\,
	datab => \add1[0]~input_o\,
	datac => \registers[9][10]~q\,
	datad => \registers[11][10]~q\,
	combout => \r1~108_combout\);

-- Location: LCCOMB_X23_Y14_N28
\r1~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~112_combout\ = (\r1~11_combout\ & (((\registers[2][10]~q\) # (\r1~10_combout\)))) # (!\r1~11_combout\ & (\registers[1][10]~q\ & ((!\r1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[1][10]~q\,
	datab => \r1~11_combout\,
	datac => \registers[2][10]~q\,
	datad => \r1~10_combout\,
	combout => \r1~112_combout\);

-- Location: FF_X29_Y16_N23
\registers[15][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[11]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][11]~q\);

-- Location: FF_X30_Y17_N21
\registers[10][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[11]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][11]~q\);

-- Location: LCCOMB_X31_Y15_N18
\r1~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~117_combout\ = (\add1[1]~input_o\ & (((\add1[0]~input_o\)))) # (!\add1[1]~input_o\ & ((\add1[0]~input_o\ & ((\registers[9][11]~q\))) # (!\add1[0]~input_o\ & (\registers[8][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \registers[8][11]~q\,
	datac => \registers[9][11]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~117_combout\);

-- Location: LCCOMB_X30_Y17_N20
\r1~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~118_combout\ = (\add1[1]~input_o\ & ((\r1~117_combout\ & (\registers[11][11]~q\)) # (!\r1~117_combout\ & ((\registers[10][11]~q\))))) # (!\add1[1]~input_o\ & (((\r1~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[11][11]~q\,
	datab => \add1[1]~input_o\,
	datac => \registers[10][11]~q\,
	datad => \r1~117_combout\,
	combout => \r1~118_combout\);

-- Location: FF_X29_Y10_N27
\registers[14][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[12]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][12]~q\);

-- Location: LCCOMB_X28_Y10_N28
\r1~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~125_combout\ = (\add1[0]~input_o\ & (((\registers[13][12]~q\) # (\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & (\registers[12][12]~q\ & ((!\add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[12][12]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[13][12]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~125_combout\);

-- Location: LCCOMB_X29_Y10_N26
\r1~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~126_combout\ = (\add1[1]~input_o\ & ((\r1~125_combout\ & ((\registers[15][12]~q\))) # (!\r1~125_combout\ & (\registers[14][12]~q\)))) # (!\add1[1]~input_o\ & (\r1~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \r1~125_combout\,
	datac => \registers[14][12]~q\,
	datad => \registers[15][12]~q\,
	combout => \r1~126_combout\);

-- Location: FF_X32_Y13_N29
\registers[10][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[12]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][12]~q\);

-- Location: FF_X32_Y13_N31
\registers[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[12]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][12]~q\);

-- Location: LCCOMB_X32_Y13_N28
\r1~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~127_combout\ = (\add1[1]~input_o\ & ((\add1[0]~input_o\) # ((\registers[10][12]~q\)))) # (!\add1[1]~input_o\ & (!\add1[0]~input_o\ & ((\registers[8][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \add1[0]~input_o\,
	datac => \registers[10][12]~q\,
	datad => \registers[8][12]~q\,
	combout => \r1~127_combout\);

-- Location: FF_X25_Y13_N5
\registers[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[12]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][12]~q\);

-- Location: FF_X25_Y13_N7
\registers[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[12]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][12]~q\);

-- Location: LCCOMB_X25_Y13_N4
\r1~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~130_combout\ = (\add1[1]~input_o\ & (((\add1[0]~input_o\)))) # (!\add1[1]~input_o\ & ((\add1[0]~input_o\ & ((\registers[5][12]~q\))) # (!\add1[0]~input_o\ & (\registers[4][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[4][12]~q\,
	datab => \add1[1]~input_o\,
	datac => \registers[5][12]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~130_combout\);

-- Location: LCCOMB_X23_Y14_N24
\r1~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~132_combout\ = (\r1~10_combout\ & (\r1~11_combout\)) # (!\r1~10_combout\ & ((\r1~11_combout\ & (\registers[2][12]~q\)) # (!\r1~11_combout\ & ((\registers[1][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~11_combout\,
	datac => \registers[2][12]~q\,
	datad => \registers[1][12]~q\,
	combout => \r1~132_combout\);

-- Location: FF_X30_Y13_N27
\registers[14][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[13]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][13]~q\);

-- Location: FF_X30_Y15_N31
\registers[12][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[13]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][13]~q\);

-- Location: LCCOMB_X30_Y13_N26
\r1~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~135_combout\ = (\add1[0]~input_o\ & (\add1[1]~input_o\)) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & (\registers[14][13]~q\)) # (!\add1[1]~input_o\ & ((\registers[12][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][13]~q\,
	datad => \registers[12][13]~q\,
	combout => \r1~135_combout\);

-- Location: FF_X24_Y13_N21
\registers[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[13]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][13]~q\);

-- Location: LCCOMB_X24_Y13_N20
\r1~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~140_combout\ = (\add1[0]~input_o\ & (\add1[1]~input_o\)) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & (\registers[6][13]~q\)) # (!\add1[1]~input_o\ & ((\registers[4][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[6][13]~q\,
	datad => \registers[4][13]~q\,
	combout => \r1~140_combout\);

-- Location: LCCOMB_X25_Y13_N24
\r1~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~141_combout\ = (\add1[0]~input_o\ & ((\r1~140_combout\ & ((\registers[7][13]~q\))) # (!\r1~140_combout\ & (\registers[5][13]~q\)))) # (!\add1[0]~input_o\ & (\r1~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \r1~140_combout\,
	datac => \registers[5][13]~q\,
	datad => \registers[7][13]~q\,
	combout => \r1~141_combout\);

-- Location: LCCOMB_X26_Y14_N10
\r1~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~142_combout\ = (\r1~10_combout\ & ((\r1~141_combout\) # ((\r1~11_combout\)))) # (!\r1~10_combout\ & (((\registers[1][13]~q\ & !\r1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~141_combout\,
	datac => \registers[1][13]~q\,
	datad => \r1~11_combout\,
	combout => \r1~142_combout\);

-- Location: FF_X28_Y10_N25
\registers[13][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[14]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][14]~q\);

-- Location: FF_X28_Y10_N11
\registers[12][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[14]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][14]~q\);

-- Location: LCCOMB_X28_Y10_N24
\r1~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~145_combout\ = (\add1[0]~input_o\ & (((\registers[13][14]~q\) # (\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & (\registers[12][14]~q\ & ((!\add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[12][14]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[13][14]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~145_combout\);

-- Location: LCCOMB_X29_Y10_N4
\r1~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~146_combout\ = (\add1[1]~input_o\ & ((\r1~145_combout\ & ((\registers[15][14]~q\))) # (!\r1~145_combout\ & (\registers[14][14]~q\)))) # (!\add1[1]~input_o\ & (\r1~145_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \r1~145_combout\,
	datac => \registers[14][14]~q\,
	datad => \registers[15][14]~q\,
	combout => \r1~146_combout\);

-- Location: FF_X23_Y14_N21
\registers[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[14]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][14]~q\);

-- Location: FF_X23_Y14_N7
\registers[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[14]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][14]~q\);

-- Location: LCCOMB_X23_Y14_N20
\r1~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~152_combout\ = (\r1~10_combout\ & (\r1~11_combout\)) # (!\r1~10_combout\ & ((\r1~11_combout\ & (\registers[2][14]~q\)) # (!\r1~11_combout\ & ((\registers[1][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~11_combout\,
	datac => \registers[2][14]~q\,
	datad => \registers[1][14]~q\,
	combout => \r1~152_combout\);

-- Location: FF_X31_Y14_N13
\registers[9][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[15]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][15]~q\);

-- Location: FF_X31_Y14_N7
\registers[8][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[15]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][15]~q\);

-- Location: LCCOMB_X31_Y14_N12
\r1~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~157_combout\ = (\add1[0]~input_o\ & ((\add1[1]~input_o\) # ((\registers[9][15]~q\)))) # (!\add1[0]~input_o\ & (!\add1[1]~input_o\ & ((\registers[8][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[9][15]~q\,
	datad => \registers[8][15]~q\,
	combout => \r1~157_combout\);

-- Location: LCCOMB_X30_Y14_N18
\r1~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~158_combout\ = (\add1[1]~input_o\ & ((\r1~157_combout\ & ((\registers[11][15]~q\))) # (!\r1~157_combout\ & (\registers[10][15]~q\)))) # (!\add1[1]~input_o\ & (\r1~157_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \r1~157_combout\,
	datac => \registers[10][15]~q\,
	datad => \registers[11][15]~q\,
	combout => \r1~158_combout\);

-- Location: LCCOMB_X28_Y11_N0
\r1~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~160_combout\ = (\add1[0]~input_o\ & (((\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & ((\registers[6][15]~q\))) # (!\add1[1]~input_o\ & (\registers[4][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[4][15]~q\,
	datac => \registers[6][15]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~160_combout\);

-- Location: LCCOMB_X27_Y12_N10
\r1~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~161_combout\ = (\add1[0]~input_o\ & ((\r1~160_combout\ & ((\registers[7][15]~q\))) # (!\r1~160_combout\ & (\registers[5][15]~q\)))) # (!\add1[0]~input_o\ & (\r1~160_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \r1~160_combout\,
	datac => \registers[5][15]~q\,
	datad => \registers[7][15]~q\,
	combout => \r1~161_combout\);

-- Location: LCCOMB_X29_Y14_N10
\r1~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~162_combout\ = (\r1~10_combout\ & ((\r1~161_combout\) # ((\r1~11_combout\)))) # (!\r1~10_combout\ & (((\registers[1][15]~q\ & !\r1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~161_combout\,
	datab => \r1~10_combout\,
	datac => \registers[1][15]~q\,
	datad => \r1~11_combout\,
	combout => \r1~162_combout\);

-- Location: FF_X28_Y10_N5
\registers[13][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[16]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][16]~q\);

-- Location: FF_X28_Y10_N31
\registers[12][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[16]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][16]~q\);

-- Location: LCCOMB_X28_Y10_N4
\r1~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~165_combout\ = (\add1[0]~input_o\ & (((\registers[13][16]~q\) # (\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & (\registers[12][16]~q\ & ((!\add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[12][16]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[13][16]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~165_combout\);

-- Location: LCCOMB_X31_Y12_N28
\r1~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~166_combout\ = (\add1[1]~input_o\ & ((\r1~165_combout\ & ((\registers[15][16]~q\))) # (!\r1~165_combout\ & (\registers[14][16]~q\)))) # (!\add1[1]~input_o\ & (\r1~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \r1~165_combout\,
	datac => \registers[14][16]~q\,
	datad => \registers[15][16]~q\,
	combout => \r1~166_combout\);

-- Location: FF_X28_Y13_N9
\registers[6][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[16]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][16]~q\);

-- Location: FF_X27_Y13_N23
\registers[5][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[16]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][16]~q\);

-- Location: LCCOMB_X27_Y13_N22
\r1~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~170_combout\ = (\add1[1]~input_o\ & (\add1[0]~input_o\)) # (!\add1[1]~input_o\ & ((\add1[0]~input_o\ & (\registers[5][16]~q\)) # (!\add1[0]~input_o\ & ((\registers[4][16]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \add1[0]~input_o\,
	datac => \registers[5][16]~q\,
	datad => \registers[4][16]~q\,
	combout => \r1~170_combout\);

-- Location: LCCOMB_X28_Y13_N8
\r1~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~171_combout\ = (\r1~170_combout\ & ((\registers[7][16]~q\) # ((!\add1[1]~input_o\)))) # (!\r1~170_combout\ & (((\registers[6][16]~q\ & \add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[7][16]~q\,
	datab => \r1~170_combout\,
	datac => \registers[6][16]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~171_combout\);

-- Location: FF_X30_Y11_N23
\registers[13][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[17]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][17]~q\);

-- Location: LCCOMB_X31_Y11_N20
\r1~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~175_combout\ = (\add1[0]~input_o\ & (((\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & ((\registers[14][17]~q\))) # (!\add1[1]~input_o\ & (\registers[12][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[12][17]~q\,
	datac => \registers[14][17]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~175_combout\);

-- Location: LCCOMB_X30_Y11_N22
\r1~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~176_combout\ = (\r1~175_combout\ & ((\registers[15][17]~q\) # ((!\add1[0]~input_o\)))) # (!\r1~175_combout\ & (((\registers[13][17]~q\ & \add1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~175_combout\,
	datab => \registers[15][17]~q\,
	datac => \registers[13][17]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~176_combout\);

-- Location: FF_X28_Y11_N13
\registers[6][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[17]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][17]~q\);

-- Location: LCCOMB_X28_Y11_N12
\r1~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~180_combout\ = (\add1[0]~input_o\ & (\add1[1]~input_o\)) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & (\registers[6][17]~q\)) # (!\add1[1]~input_o\ & ((\registers[4][17]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[6][17]~q\,
	datad => \registers[4][17]~q\,
	combout => \r1~180_combout\);

-- Location: LCCOMB_X27_Y12_N16
\r1~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~181_combout\ = (\r1~180_combout\ & (((\registers[7][17]~q\)) # (!\add1[0]~input_o\))) # (!\r1~180_combout\ & (\add1[0]~input_o\ & (\registers[5][17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~180_combout\,
	datab => \add1[0]~input_o\,
	datac => \registers[5][17]~q\,
	datad => \registers[7][17]~q\,
	combout => \r1~181_combout\);

-- Location: FF_X29_Y14_N31
\registers[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[17]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][17]~q\);

-- Location: LCCOMB_X29_Y14_N30
\r1~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~182_combout\ = (\r1~10_combout\ & ((\r1~181_combout\) # ((\r1~11_combout\)))) # (!\r1~10_combout\ & (((\registers[1][17]~q\ & !\r1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~181_combout\,
	datab => \r1~10_combout\,
	datac => \registers[1][17]~q\,
	datad => \r1~11_combout\,
	combout => \r1~182_combout\);

-- Location: FF_X29_Y12_N27
\registers[13][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[18]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][18]~q\);

-- Location: FF_X31_Y11_N19
\registers[12][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[18]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][18]~q\);

-- Location: LCCOMB_X29_Y12_N26
\r1~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~185_combout\ = (\add1[0]~input_o\ & ((\add1[1]~input_o\) # ((\registers[13][18]~q\)))) # (!\add1[0]~input_o\ & (!\add1[1]~input_o\ & ((\registers[12][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[13][18]~q\,
	datad => \registers[12][18]~q\,
	combout => \r1~185_combout\);

-- Location: FF_X31_Y14_N25
\registers[9][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[18]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][18]~q\);

-- Location: FF_X31_Y15_N27
\registers[10][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[18]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][18]~q\);

-- Location: LCCOMB_X31_Y15_N26
\r1~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~187_combout\ = (\add1[1]~input_o\ & ((\add1[0]~input_o\) # ((\registers[10][18]~q\)))) # (!\add1[1]~input_o\ & (!\add1[0]~input_o\ & ((\registers[8][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \add1[0]~input_o\,
	datac => \registers[10][18]~q\,
	datad => \registers[8][18]~q\,
	combout => \r1~187_combout\);

-- Location: LCCOMB_X31_Y14_N24
\r1~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~188_combout\ = (\add1[0]~input_o\ & ((\r1~187_combout\ & ((\registers[11][18]~q\))) # (!\r1~187_combout\ & (\registers[9][18]~q\)))) # (!\add1[0]~input_o\ & (\r1~187_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \r1~187_combout\,
	datac => \registers[9][18]~q\,
	datad => \registers[11][18]~q\,
	combout => \r1~188_combout\);

-- Location: FF_X27_Y13_N11
\registers[5][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[18]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][18]~q\);

-- Location: LCCOMB_X27_Y13_N10
\r1~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~190_combout\ = (\add1[1]~input_o\ & (((\add1[0]~input_o\)))) # (!\add1[1]~input_o\ & ((\add1[0]~input_o\ & ((\registers[5][18]~q\))) # (!\add1[0]~input_o\ & (\registers[4][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \registers[4][18]~q\,
	datac => \registers[5][18]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~190_combout\);

-- Location: FF_X31_Y11_N27
\registers[12][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[19]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][19]~q\);

-- Location: FF_X29_Y11_N17
\registers[5][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[19]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][19]~q\);

-- Location: FF_X28_Y11_N9
\registers[6][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[19]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][19]~q\);

-- Location: FF_X28_Y11_N3
\registers[4][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[19]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][19]~q\);

-- Location: LCCOMB_X28_Y11_N8
\r1~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~200_combout\ = (\add1[0]~input_o\ & (((\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & ((\registers[6][19]~q\))) # (!\add1[1]~input_o\ & (\registers[4][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[4][19]~q\,
	datac => \registers[6][19]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~200_combout\);

-- Location: FF_X29_Y11_N27
\registers[7][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[19]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][19]~q\);

-- Location: LCCOMB_X29_Y11_N16
\r1~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~201_combout\ = (\add1[0]~input_o\ & ((\r1~200_combout\ & (\registers[7][19]~q\)) # (!\r1~200_combout\ & ((\registers[5][19]~q\))))) # (!\add1[0]~input_o\ & (((\r1~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[7][19]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[5][19]~q\,
	datad => \r1~200_combout\,
	combout => \r1~201_combout\);

-- Location: LCCOMB_X29_Y14_N20
\r1~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~202_combout\ = (\r1~11_combout\ & (((\r1~10_combout\)))) # (!\r1~11_combout\ & ((\r1~10_combout\ & (\r1~201_combout\)) # (!\r1~10_combout\ & ((\registers[1][19]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~201_combout\,
	datab => \r1~11_combout\,
	datac => \registers[1][19]~q\,
	datad => \r1~10_combout\,
	combout => \r1~202_combout\);

-- Location: FF_X29_Y12_N23
\registers[13][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[20]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][20]~q\);

-- Location: FF_X31_Y11_N23
\registers[12][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[20]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][20]~q\);

-- Location: LCCOMB_X29_Y12_N22
\r1~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~205_combout\ = (\add1[0]~input_o\ & ((\add1[1]~input_o\) # ((\registers[13][20]~q\)))) # (!\add1[0]~input_o\ & (!\add1[1]~input_o\ & ((\registers[12][20]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[13][20]~q\,
	datad => \registers[12][20]~q\,
	combout => \r1~205_combout\);

-- Location: FF_X24_Y13_N13
\registers[6][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[20]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][20]~q\);

-- Location: FF_X27_Y13_N7
\registers[5][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[20]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][20]~q\);

-- Location: FF_X27_Y13_N9
\registers[4][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[20]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][20]~q\);

-- Location: LCCOMB_X27_Y13_N6
\r1~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~210_combout\ = (\add1[1]~input_o\ & (((\add1[0]~input_o\)))) # (!\add1[1]~input_o\ & ((\add1[0]~input_o\ & ((\registers[5][20]~q\))) # (!\add1[0]~input_o\ & (\registers[4][20]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \registers[4][20]~q\,
	datac => \registers[5][20]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~210_combout\);

-- Location: FF_X24_Y13_N23
\registers[7][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[20]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][20]~q\);

-- Location: LCCOMB_X24_Y13_N12
\r1~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~211_combout\ = (\add1[1]~input_o\ & ((\r1~210_combout\ & (\registers[7][20]~q\)) # (!\r1~210_combout\ & ((\registers[6][20]~q\))))) # (!\add1[1]~input_o\ & (((\r1~210_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[7][20]~q\,
	datab => \add1[1]~input_o\,
	datac => \registers[6][20]~q\,
	datad => \r1~210_combout\,
	combout => \r1~211_combout\);

-- Location: FF_X31_Y14_N17
\registers[9][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[21]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][21]~q\);

-- Location: FF_X31_Y14_N19
\registers[8][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[21]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][21]~q\);

-- Location: LCCOMB_X31_Y14_N16
\r1~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~217_combout\ = (\add1[0]~input_o\ & ((\add1[1]~input_o\) # ((\registers[9][21]~q\)))) # (!\add1[0]~input_o\ & (!\add1[1]~input_o\ & ((\registers[8][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[9][21]~q\,
	datad => \registers[8][21]~q\,
	combout => \r1~217_combout\);

-- Location: LCCOMB_X31_Y13_N14
\r1~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~218_combout\ = (\r1~217_combout\ & ((\registers[11][21]~q\) # ((!\add1[1]~input_o\)))) # (!\r1~217_combout\ & (((\registers[10][21]~q\ & \add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[11][21]~q\,
	datab => \r1~217_combout\,
	datac => \registers[10][21]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~218_combout\);

-- Location: FF_X26_Y12_N17
\registers[5][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[21]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][21]~q\);

-- Location: FF_X25_Y12_N5
\registers[6][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[21]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][21]~q\);

-- Location: FF_X25_Y12_N23
\registers[4][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[21]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][21]~q\);

-- Location: LCCOMB_X25_Y12_N4
\r1~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~220_combout\ = (\add1[0]~input_o\ & (((\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & ((\registers[6][21]~q\))) # (!\add1[1]~input_o\ & (\registers[4][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[4][21]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[6][21]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~220_combout\);

-- Location: FF_X26_Y12_N19
\registers[7][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[21]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][21]~q\);

-- Location: LCCOMB_X26_Y12_N16
\r1~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~221_combout\ = (\add1[0]~input_o\ & ((\r1~220_combout\ & ((\registers[7][21]~q\))) # (!\r1~220_combout\ & (\registers[5][21]~q\)))) # (!\add1[0]~input_o\ & (\r1~220_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \r1~220_combout\,
	datac => \registers[5][21]~q\,
	datad => \registers[7][21]~q\,
	combout => \r1~221_combout\);

-- Location: FF_X31_Y14_N31
\registers[8][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[23]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][23]~q\);

-- Location: FF_X27_Y12_N23
\registers[5][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[23]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][23]~q\);

-- Location: FF_X28_Y11_N5
\registers[6][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[23]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][23]~q\);

-- Location: FF_X28_Y11_N15
\registers[4][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[23]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][23]~q\);

-- Location: LCCOMB_X28_Y11_N4
\r1~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~240_combout\ = (\add1[0]~input_o\ & (((\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & ((\registers[6][23]~q\))) # (!\add1[1]~input_o\ & (\registers[4][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[4][23]~q\,
	datac => \registers[6][23]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~240_combout\);

-- Location: FF_X27_Y12_N9
\registers[7][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[23]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][23]~q\);

-- Location: LCCOMB_X27_Y12_N22
\r1~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~241_combout\ = (\add1[0]~input_o\ & ((\r1~240_combout\ & (\registers[7][23]~q\)) # (!\r1~240_combout\ & ((\registers[5][23]~q\))))) # (!\add1[0]~input_o\ & (((\r1~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[7][23]~q\,
	datac => \registers[5][23]~q\,
	datad => \r1~240_combout\,
	combout => \r1~241_combout\);

-- Location: LCCOMB_X29_Y13_N0
\r1~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~245_combout\ = (\add1[0]~input_o\ & ((\add1[1]~input_o\) # ((\registers[13][24]~q\)))) # (!\add1[0]~input_o\ & (!\add1[1]~input_o\ & ((\registers[12][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[13][24]~q\,
	datad => \registers[12][24]~q\,
	combout => \r1~245_combout\);

-- Location: LCCOMB_X31_Y16_N0
\r1~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~247_combout\ = (\add1[1]~input_o\ & (((\registers[10][24]~q\) # (\add1[0]~input_o\)))) # (!\add1[1]~input_o\ & (\registers[8][24]~q\ & ((!\add1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[8][24]~q\,
	datab => \add1[1]~input_o\,
	datac => \registers[10][24]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~247_combout\);

-- Location: FF_X27_Y13_N27
\registers[5][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[24]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][24]~q\);

-- Location: FF_X27_Y13_N29
\registers[4][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[24]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][24]~q\);

-- Location: LCCOMB_X27_Y13_N26
\r1~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~250_combout\ = (\add1[1]~input_o\ & (\add1[0]~input_o\)) # (!\add1[1]~input_o\ & ((\add1[0]~input_o\ & (\registers[5][24]~q\)) # (!\add1[0]~input_o\ & ((\registers[4][24]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \add1[0]~input_o\,
	datac => \registers[5][24]~q\,
	datad => \registers[4][24]~q\,
	combout => \r1~250_combout\);

-- Location: FF_X32_Y14_N13
\registers[9][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[25]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][25]~q\);

-- Location: FF_X31_Y16_N7
\registers[8][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[25]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][25]~q\);

-- Location: LCCOMB_X32_Y14_N12
\r1~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~257_combout\ = (\add1[1]~input_o\ & (\add1[0]~input_o\)) # (!\add1[1]~input_o\ & ((\add1[0]~input_o\ & (\registers[9][25]~q\)) # (!\add1[0]~input_o\ & ((\registers[8][25]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \add1[0]~input_o\,
	datac => \registers[9][25]~q\,
	datad => \registers[8][25]~q\,
	combout => \r1~257_combout\);

-- Location: LCCOMB_X31_Y16_N20
\r1~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~258_combout\ = (\add1[1]~input_o\ & ((\r1~257_combout\ & (\registers[11][25]~q\)) # (!\r1~257_combout\ & ((\registers[10][25]~q\))))) # (!\add1[1]~input_o\ & (((\r1~257_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[11][25]~q\,
	datab => \add1[1]~input_o\,
	datac => \registers[10][25]~q\,
	datad => \r1~257_combout\,
	combout => \r1~258_combout\);

-- Location: FF_X28_Y11_N17
\registers[6][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[25]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][25]~q\);

-- Location: FF_X28_Y11_N11
\registers[4][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[25]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][25]~q\);

-- Location: LCCOMB_X28_Y11_N16
\r1~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~260_combout\ = (\add1[0]~input_o\ & (\add1[1]~input_o\)) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & (\registers[6][25]~q\)) # (!\add1[1]~input_o\ & ((\registers[4][25]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[6][25]~q\,
	datad => \registers[4][25]~q\,
	combout => \r1~260_combout\);

-- Location: LCCOMB_X29_Y11_N6
\r1~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~261_combout\ = (\r1~260_combout\ & (((\registers[7][25]~q\)) # (!\add1[0]~input_o\))) # (!\r1~260_combout\ & (\add1[0]~input_o\ & (\registers[5][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~260_combout\,
	datab => \add1[0]~input_o\,
	datac => \registers[5][25]~q\,
	datad => \registers[7][25]~q\,
	combout => \r1~261_combout\);

-- Location: LCCOMB_X29_Y12_N14
\r1~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~262_combout\ = (\r1~10_combout\ & ((\r1~11_combout\) # ((\r1~261_combout\)))) # (!\r1~10_combout\ & (!\r1~11_combout\ & (\registers[1][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~11_combout\,
	datac => \registers[1][25]~q\,
	datad => \r1~261_combout\,
	combout => \r1~262_combout\);

-- Location: LCCOMB_X31_Y16_N24
\r1~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~267_combout\ = (\add1[1]~input_o\ & ((\add1[0]~input_o\) # ((\registers[10][26]~q\)))) # (!\add1[1]~input_o\ & (!\add1[0]~input_o\ & ((\registers[8][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \add1[0]~input_o\,
	datac => \registers[10][26]~q\,
	datad => \registers[8][26]~q\,
	combout => \r1~267_combout\);

-- Location: LCCOMB_X31_Y15_N28
\r1~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~268_combout\ = (\add1[0]~input_o\ & ((\r1~267_combout\ & ((\registers[11][26]~q\))) # (!\r1~267_combout\ & (\registers[9][26]~q\)))) # (!\add1[0]~input_o\ & (\r1~267_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \r1~267_combout\,
	datac => \registers[9][26]~q\,
	datad => \registers[11][26]~q\,
	combout => \r1~268_combout\);

-- Location: LCCOMB_X27_Y13_N14
\r1~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~270_combout\ = (\add1[1]~input_o\ & (\add1[0]~input_o\)) # (!\add1[1]~input_o\ & ((\add1[0]~input_o\ & (\registers[5][26]~q\)) # (!\add1[0]~input_o\ & ((\registers[4][26]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \add1[0]~input_o\,
	datac => \registers[5][26]~q\,
	datad => \registers[4][26]~q\,
	combout => \r1~270_combout\);

-- Location: LCCOMB_X28_Y13_N14
\r1~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~271_combout\ = (\r1~270_combout\ & ((\registers[7][26]~q\) # ((!\add1[1]~input_o\)))) # (!\r1~270_combout\ & (((\registers[6][26]~q\ & \add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~270_combout\,
	datab => \registers[7][26]~q\,
	datac => \registers[6][26]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~271_combout\);

-- Location: FF_X31_Y15_N31
\registers[9][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[27]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][27]~q\);

-- Location: FF_X31_Y16_N31
\registers[8][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[27]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][27]~q\);

-- Location: LCCOMB_X31_Y15_N30
\r1~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~277_combout\ = (\add1[0]~input_o\ & (((\registers[9][27]~q\) # (\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & (\registers[8][27]~q\ & ((!\add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[8][27]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[9][27]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~277_combout\);

-- Location: FF_X28_Y11_N31
\registers[4][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[27]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][27]~q\);

-- Location: FF_X29_Y13_N31
\registers[12][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[28]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][28]~q\);

-- Location: LCCOMB_X27_Y13_N2
\r1~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~290_combout\ = (\add1[1]~input_o\ & (\add1[0]~input_o\)) # (!\add1[1]~input_o\ & ((\add1[0]~input_o\ & (\registers[5][28]~q\)) # (!\add1[0]~input_o\ & ((\registers[4][28]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \add1[0]~input_o\,
	datac => \registers[5][28]~q\,
	datad => \registers[4][28]~q\,
	combout => \r1~290_combout\);

-- Location: LCCOMB_X31_Y15_N10
\r1~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~297_combout\ = (\add1[0]~input_o\ & (((\registers[9][29]~q\) # (\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & (\registers[8][29]~q\ & ((!\add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[8][29]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[9][29]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~297_combout\);

-- Location: LCCOMB_X31_Y16_N12
\r1~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~298_combout\ = (\r1~297_combout\ & (((\registers[11][29]~q\)) # (!\add1[1]~input_o\))) # (!\r1~297_combout\ & (\add1[1]~input_o\ & (\registers[10][29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~297_combout\,
	datab => \add1[1]~input_o\,
	datac => \registers[10][29]~q\,
	datad => \registers[11][29]~q\,
	combout => \r1~298_combout\);

-- Location: FF_X29_Y11_N15
\registers[5][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[29]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][29]~q\);

-- Location: FF_X28_Y11_N25
\registers[6][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[29]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][29]~q\);

-- Location: FF_X28_Y11_N27
\registers[4][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[29]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][29]~q\);

-- Location: LCCOMB_X28_Y11_N24
\r1~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~300_combout\ = (\add1[1]~input_o\ & (((\registers[6][29]~q\) # (\add1[0]~input_o\)))) # (!\add1[1]~input_o\ & (\registers[4][29]~q\ & ((!\add1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[4][29]~q\,
	datab => \add1[1]~input_o\,
	datac => \registers[6][29]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~300_combout\);

-- Location: FF_X29_Y11_N25
\registers[7][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[29]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][29]~q\);

-- Location: LCCOMB_X29_Y11_N14
\r1~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~301_combout\ = (\add1[0]~input_o\ & ((\r1~300_combout\ & ((\registers[7][29]~q\))) # (!\r1~300_combout\ & (\registers[5][29]~q\)))) # (!\add1[0]~input_o\ & (\r1~300_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \r1~300_combout\,
	datac => \registers[5][29]~q\,
	datad => \registers[7][29]~q\,
	combout => \r1~301_combout\);

-- Location: FF_X29_Y12_N11
\registers[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[29]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][29]~q\);

-- Location: LCCOMB_X29_Y12_N10
\r1~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~302_combout\ = (\r1~10_combout\ & ((\r1~11_combout\) # ((\r1~301_combout\)))) # (!\r1~10_combout\ & (!\r1~11_combout\ & (\registers[1][29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~11_combout\,
	datac => \registers[1][29]~q\,
	datad => \r1~301_combout\,
	combout => \r1~302_combout\);

-- Location: LCCOMB_X31_Y16_N8
\r1~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~307_combout\ = (\add1[0]~input_o\ & (((\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & ((\registers[10][30]~q\))) # (!\add1[1]~input_o\ & (\registers[8][30]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[8][30]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[10][30]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~307_combout\);

-- Location: LCCOMB_X29_Y10_N24
\r1~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~308_combout\ = (\add1[0]~input_o\ & ((\r1~307_combout\ & (\registers[11][30]~q\)) # (!\r1~307_combout\ & ((\registers[9][30]~q\))))) # (!\add1[0]~input_o\ & (((\r1~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[11][30]~q\,
	datac => \registers[9][30]~q\,
	datad => \r1~307_combout\,
	combout => \r1~308_combout\);

-- Location: LCCOMB_X27_Y13_N30
\r1~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~310_combout\ = (\add1[0]~input_o\ & (((\registers[5][30]~q\) # (\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & (\registers[4][30]~q\ & ((!\add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[4][30]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[5][30]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~310_combout\);

-- Location: FF_X30_Y16_N19
\registers[13][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[31]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][31]~q\);

-- Location: FF_X30_Y13_N9
\registers[14][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[31]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][31]~q\);

-- Location: FF_X29_Y16_N19
\registers[12][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[31]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][31]~q\);

-- Location: LCCOMB_X30_Y13_N8
\r1~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~315_combout\ = (\add1[0]~input_o\ & (\add1[1]~input_o\)) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & (\registers[14][31]~q\)) # (!\add1[1]~input_o\ & ((\registers[12][31]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][31]~q\,
	datad => \registers[12][31]~q\,
	combout => \r1~315_combout\);

-- Location: FF_X29_Y16_N21
\registers[15][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[31]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][31]~q\);

-- Location: LCCOMB_X30_Y16_N18
\r1~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~316_combout\ = (\add1[0]~input_o\ & ((\r1~315_combout\ & ((\registers[15][31]~q\))) # (!\r1~315_combout\ & (\registers[13][31]~q\)))) # (!\add1[0]~input_o\ & (\r1~315_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \r1~315_combout\,
	datac => \registers[13][31]~q\,
	datad => \registers[15][31]~q\,
	combout => \r1~316_combout\);

-- Location: LCCOMB_X31_Y15_N4
\r1~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~317_combout\ = (\add1[0]~input_o\ & (((\registers[9][31]~q\) # (\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & (\registers[8][31]~q\ & ((!\add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[8][31]~q\,
	datac => \registers[9][31]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~317_combout\);

-- Location: FF_X28_Y13_N11
\registers[6][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[31]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][31]~q\);

-- Location: FF_X28_Y13_N21
\registers[4][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[31]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][31]~q\);

-- Location: LCCOMB_X28_Y13_N10
\r1~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~320_combout\ = (\add1[0]~input_o\ & (((\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & ((\registers[6][31]~q\))) # (!\add1[1]~input_o\ & (\registers[4][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[4][31]~q\,
	datac => \registers[6][31]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~320_combout\);

-- Location: LCCOMB_X23_Y14_N8
\r2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~12_combout\ = (\r2~10_combout\ & (((\r2~11_combout\)))) # (!\r2~10_combout\ & ((\r2~11_combout\ & (\registers[2][0]~q\)) # (!\r2~11_combout\ & ((\registers[1][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[2][0]~q\,
	datab => \r2~10_combout\,
	datac => \registers[1][0]~q\,
	datad => \r2~11_combout\,
	combout => \r2~12_combout\);

-- Location: LCCOMB_X32_Y15_N0
\r2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~15_combout\ = (\add2[0]~input_o\ & (\add2[1]~input_o\)) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & ((\registers[14][1]~q\))) # (!\add2[1]~input_o\ & (\registers[12][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \add2[1]~input_o\,
	datac => \registers[12][1]~q\,
	datad => \registers[14][1]~q\,
	combout => \r2~15_combout\);

-- Location: LCCOMB_X29_Y15_N26
\r2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~16_combout\ = (\add2[0]~input_o\ & ((\r2~15_combout\ & (\registers[15][1]~q\)) # (!\r2~15_combout\ & ((\registers[13][1]~q\))))) # (!\add2[0]~input_o\ & (\r2~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \r2~15_combout\,
	datac => \registers[15][1]~q\,
	datad => \registers[13][1]~q\,
	combout => \r2~16_combout\);

-- Location: LCCOMB_X25_Y12_N6
\r2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~20_combout\ = (\add2[1]~input_o\ & ((\add2[0]~input_o\) # ((\registers[6][1]~q\)))) # (!\add2[1]~input_o\ & (!\add2[0]~input_o\ & (\registers[4][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[4][1]~q\,
	datad => \registers[6][1]~q\,
	combout => \r2~20_combout\);

-- Location: LCCOMB_X28_Y10_N2
\r2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~25_combout\ = (\add2[0]~input_o\ & ((\registers[13][2]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[12][2]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[13][2]~q\,
	datac => \registers[12][2]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~25_combout\);

-- Location: LCCOMB_X29_Y15_N12
\r2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~26_combout\ = (\add2[1]~input_o\ & ((\r2~25_combout\ & (\registers[15][2]~q\)) # (!\r2~25_combout\ & ((\registers[14][2]~q\))))) # (!\add2[1]~input_o\ & (\r2~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \r2~25_combout\,
	datac => \registers[15][2]~q\,
	datad => \registers[14][2]~q\,
	combout => \r2~26_combout\);

-- Location: LCCOMB_X23_Y14_N2
\r2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~32_combout\ = (\r2~10_combout\ & (((\r2~11_combout\)))) # (!\r2~10_combout\ & ((\r2~11_combout\ & (\registers[2][2]~q\)) # (!\r2~11_combout\ & ((\registers[1][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[2][2]~q\,
	datab => \r2~10_combout\,
	datac => \registers[1][2]~q\,
	datad => \r2~11_combout\,
	combout => \r2~32_combout\);

-- Location: LCCOMB_X30_Y17_N22
\r2~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~37_combout\ = (\add2[0]~input_o\ & ((\registers[9][3]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[8][3]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[9][3]~q\,
	datac => \registers[8][3]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~37_combout\);

-- Location: LCCOMB_X29_Y17_N22
\r2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~38_combout\ = (\add2[1]~input_o\ & ((\r2~37_combout\ & ((\registers[11][3]~q\))) # (!\r2~37_combout\ & (\registers[10][3]~q\)))) # (!\add2[1]~input_o\ & (((\r2~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \registers[10][3]~q\,
	datac => \registers[11][3]~q\,
	datad => \r2~37_combout\,
	combout => \r2~38_combout\);

-- Location: LCCOMB_X25_Y12_N30
\r2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~40_combout\ = (\add2[1]~input_o\ & ((\add2[0]~input_o\) # ((\registers[6][3]~q\)))) # (!\add2[1]~input_o\ & (!\add2[0]~input_o\ & (\registers[4][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[4][3]~q\,
	datad => \registers[6][3]~q\,
	combout => \r2~40_combout\);

-- Location: LCCOMB_X32_Y13_N14
\r2~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~47_combout\ = (\add2[1]~input_o\ & ((\add2[0]~input_o\) # ((\registers[10][4]~q\)))) # (!\add2[1]~input_o\ & (!\add2[0]~input_o\ & (\registers[8][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[8][4]~q\,
	datad => \registers[10][4]~q\,
	combout => \r2~47_combout\);

-- Location: LCCOMB_X25_Y16_N2
\r2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~48_combout\ = (\add2[0]~input_o\ & ((\r2~47_combout\ & (\registers[11][4]~q\)) # (!\r2~47_combout\ & ((\registers[9][4]~q\))))) # (!\add2[0]~input_o\ & (\r2~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \r2~47_combout\,
	datac => \registers[11][4]~q\,
	datad => \registers[9][4]~q\,
	combout => \r2~48_combout\);

-- Location: LCCOMB_X25_Y12_N18
\r2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~50_combout\ = (\add2[1]~input_o\ & (\add2[0]~input_o\)) # (!\add2[1]~input_o\ & ((\add2[0]~input_o\ & ((\registers[5][4]~q\))) # (!\add2[0]~input_o\ & (\registers[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[4][4]~q\,
	datad => \registers[5][4]~q\,
	combout => \r2~50_combout\);

-- Location: LCCOMB_X26_Y12_N26
\r2~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~51_combout\ = (\r2~50_combout\ & (((\registers[7][4]~q\)) # (!\add2[1]~input_o\))) # (!\r2~50_combout\ & (\add2[1]~input_o\ & ((\registers[6][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~50_combout\,
	datab => \add2[1]~input_o\,
	datac => \registers[7][4]~q\,
	datad => \registers[6][4]~q\,
	combout => \r2~51_combout\);

-- Location: LCCOMB_X30_Y15_N22
\r2~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~55_combout\ = (\add2[1]~input_o\ & ((\registers[14][5]~q\) # ((\add2[0]~input_o\)))) # (!\add2[1]~input_o\ & (((\registers[12][5]~q\ & !\add2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \registers[14][5]~q\,
	datac => \registers[12][5]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~55_combout\);

-- Location: LCCOMB_X29_Y15_N2
\r2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~56_combout\ = (\r2~55_combout\ & (((\registers[15][5]~q\) # (!\add2[0]~input_o\)))) # (!\r2~55_combout\ & (\registers[13][5]~q\ & ((\add2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[13][5]~q\,
	datab => \r2~55_combout\,
	datac => \registers[15][5]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~56_combout\);

-- Location: LCCOMB_X25_Y12_N14
\r2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~60_combout\ = (\add2[1]~input_o\ & ((\add2[0]~input_o\) # ((\registers[6][5]~q\)))) # (!\add2[1]~input_o\ & (!\add2[0]~input_o\ & (\registers[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[4][5]~q\,
	datad => \registers[6][5]~q\,
	combout => \r2~60_combout\);

-- Location: LCCOMB_X26_Y12_N6
\r2~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~61_combout\ = (\r2~60_combout\ & (((\registers[7][5]~q\) # (!\add2[0]~input_o\)))) # (!\r2~60_combout\ & (\registers[5][5]~q\ & ((\add2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~60_combout\,
	datab => \registers[5][5]~q\,
	datac => \registers[7][5]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~61_combout\);

-- Location: LCCOMB_X27_Y14_N0
\r2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~62_combout\ = (\r2~10_combout\ & ((\r2~61_combout\) # ((\r2~11_combout\)))) # (!\r2~10_combout\ & (((!\r2~11_combout\ & \registers[1][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~61_combout\,
	datab => \r2~10_combout\,
	datac => \r2~11_combout\,
	datad => \registers[1][5]~q\,
	combout => \r2~62_combout\);

-- Location: LCCOMB_X28_Y10_N26
\r2~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~65_combout\ = (\add2[0]~input_o\ & ((\registers[13][6]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[12][6]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[13][6]~q\,
	datac => \registers[12][6]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~65_combout\);

-- Location: LCCOMB_X32_Y13_N26
\r2~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~67_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[10][6]~q\)) # (!\add2[1]~input_o\ & ((\registers[8][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[10][6]~q\,
	datac => \registers[8][6]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~67_combout\);

-- Location: LCCOMB_X25_Y12_N10
\r2~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~70_combout\ = (\add2[1]~input_o\ & (\add2[0]~input_o\)) # (!\add2[1]~input_o\ & ((\add2[0]~input_o\ & ((\registers[5][6]~q\))) # (!\add2[0]~input_o\ & (\registers[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[4][6]~q\,
	datad => \registers[5][6]~q\,
	combout => \r2~70_combout\);

-- Location: LCCOMB_X30_Y15_N18
\r2~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~75_combout\ = (\add2[0]~input_o\ & (\add2[1]~input_o\)) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & ((\registers[14][7]~q\))) # (!\add2[1]~input_o\ & (\registers[12][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \add2[1]~input_o\,
	datac => \registers[12][7]~q\,
	datad => \registers[14][7]~q\,
	combout => \r2~75_combout\);

-- Location: LCCOMB_X29_Y16_N24
\r2~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~76_combout\ = (\add2[0]~input_o\ & ((\r2~75_combout\ & ((\registers[15][7]~q\))) # (!\r2~75_combout\ & (\registers[13][7]~q\)))) # (!\add2[0]~input_o\ & (((\r2~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[13][7]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[15][7]~q\,
	datad => \r2~75_combout\,
	combout => \r2~76_combout\);

-- Location: LCCOMB_X30_Y17_N30
\r2~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~77_combout\ = (\add2[0]~input_o\ & ((\registers[9][7]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[8][7]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[9][7]~q\,
	datac => \registers[8][7]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~77_combout\);

-- Location: LCCOMB_X25_Y13_N26
\r2~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~80_combout\ = (\add2[1]~input_o\ & ((\registers[6][7]~q\) # ((\add2[0]~input_o\)))) # (!\add2[1]~input_o\ & (((\registers[4][7]~q\ & !\add2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[6][7]~q\,
	datab => \add2[1]~input_o\,
	datac => \registers[4][7]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~80_combout\);

-- Location: LCCOMB_X28_Y10_N6
\r2~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~85_combout\ = (\add2[0]~input_o\ & ((\registers[13][8]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[12][8]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[13][8]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[12][8]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~85_combout\);

-- Location: LCCOMB_X32_Y13_N6
\r2~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~87_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[10][8]~q\)) # (!\add2[1]~input_o\ & ((\registers[8][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[10][8]~q\,
	datac => \registers[8][8]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~87_combout\);

-- Location: LCCOMB_X29_Y17_N30
\r2~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~88_combout\ = (\add2[0]~input_o\ & ((\r2~87_combout\ & (\registers[11][8]~q\)) # (!\r2~87_combout\ & ((\registers[9][8]~q\))))) # (!\add2[0]~input_o\ & (\r2~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \r2~87_combout\,
	datac => \registers[11][8]~q\,
	datad => \registers[9][8]~q\,
	combout => \r2~88_combout\);

-- Location: LCCOMB_X23_Y14_N26
\r2~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~92_combout\ = (\r2~11_combout\ & ((\r2~10_combout\) # ((\registers[2][8]~q\)))) # (!\r2~11_combout\ & (!\r2~10_combout\ & (\registers[1][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \r2~10_combout\,
	datac => \registers[1][8]~q\,
	datad => \registers[2][8]~q\,
	combout => \r2~92_combout\);

-- Location: LCCOMB_X30_Y15_N14
\r2~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~95_combout\ = (\add2[0]~input_o\ & (\add2[1]~input_o\)) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & ((\registers[14][9]~q\))) # (!\add2[1]~input_o\ & (\registers[12][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \add2[1]~input_o\,
	datac => \registers[12][9]~q\,
	datad => \registers[14][9]~q\,
	combout => \r2~95_combout\);

-- Location: LCCOMB_X29_Y16_N12
\r2~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~96_combout\ = (\r2~95_combout\ & (((\registers[15][9]~q\) # (!\add2[0]~input_o\)))) # (!\r2~95_combout\ & (\registers[13][9]~q\ & ((\add2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~95_combout\,
	datab => \registers[13][9]~q\,
	datac => \registers[15][9]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~96_combout\);

-- Location: LCCOMB_X25_Y13_N18
\r2~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~100_combout\ = (\add2[0]~input_o\ & (\add2[1]~input_o\)) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & ((\registers[6][9]~q\))) # (!\add2[1]~input_o\ & (\registers[4][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \add2[1]~input_o\,
	datac => \registers[4][9]~q\,
	datad => \registers[6][9]~q\,
	combout => \r2~100_combout\);

-- Location: LCCOMB_X26_Y13_N28
\r2~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~101_combout\ = (\add2[0]~input_o\ & ((\r2~100_combout\ & ((\registers[7][9]~q\))) # (!\r2~100_combout\ & (\registers[5][9]~q\)))) # (!\add2[0]~input_o\ & (((\r2~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[5][9]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[7][9]~q\,
	datad => \r2~100_combout\,
	combout => \r2~101_combout\);

-- Location: LCCOMB_X27_Y14_N12
\r2~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~102_combout\ = (\r2~10_combout\ & (((\r2~11_combout\) # (\r2~101_combout\)))) # (!\r2~10_combout\ & (\registers[1][9]~q\ & (!\r2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[1][9]~q\,
	datab => \r2~10_combout\,
	datac => \r2~11_combout\,
	datad => \r2~101_combout\,
	combout => \r2~102_combout\);

-- Location: LCCOMB_X28_Y10_N18
\r2~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~105_combout\ = (\add2[0]~input_o\ & ((\registers[13][10]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[12][10]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[13][10]~q\,
	datac => \registers[12][10]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~105_combout\);

-- Location: LCCOMB_X29_Y15_N14
\r2~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~106_combout\ = (\add2[1]~input_o\ & ((\r2~105_combout\ & (\registers[15][10]~q\)) # (!\r2~105_combout\ & ((\registers[14][10]~q\))))) # (!\add2[1]~input_o\ & (\r2~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \r2~105_combout\,
	datac => \registers[15][10]~q\,
	datad => \registers[14][10]~q\,
	combout => \r2~106_combout\);

-- Location: LCCOMB_X32_Y13_N18
\r2~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~107_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[10][10]~q\)) # (!\add2[1]~input_o\ & ((\registers[8][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[10][10]~q\,
	datac => \registers[8][10]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~107_combout\);

-- Location: LCCOMB_X30_Y15_N26
\r2~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~115_combout\ = (\add2[1]~input_o\ & ((\registers[14][11]~q\) # ((\add2[0]~input_o\)))) # (!\add2[1]~input_o\ & (((\registers[12][11]~q\ & !\add2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[14][11]~q\,
	datab => \add2[1]~input_o\,
	datac => \registers[12][11]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~115_combout\);

-- Location: LCCOMB_X29_Y16_N22
\r2~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~116_combout\ = (\r2~115_combout\ & (((\registers[15][11]~q\) # (!\add2[0]~input_o\)))) # (!\r2~115_combout\ & (\registers[13][11]~q\ & ((\add2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[13][11]~q\,
	datab => \r2~115_combout\,
	datac => \registers[15][11]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~116_combout\);

-- Location: LCCOMB_X25_Y13_N2
\r2~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~120_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[6][11]~q\)) # (!\add2[1]~input_o\ & ((\registers[4][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[6][11]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[4][11]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~120_combout\);

-- Location: LCCOMB_X27_Y12_N0
\r2~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~121_combout\ = (\add2[0]~input_o\ & ((\r2~120_combout\ & (\registers[7][11]~q\)) # (!\r2~120_combout\ & ((\registers[5][11]~q\))))) # (!\add2[0]~input_o\ & (\r2~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \r2~120_combout\,
	datac => \registers[7][11]~q\,
	datad => \registers[5][11]~q\,
	combout => \r2~121_combout\);

-- Location: LCCOMB_X27_Y14_N30
\r2~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~122_combout\ = (\r2~10_combout\ & (((\r2~11_combout\) # (\r2~121_combout\)))) # (!\r2~10_combout\ & (\registers[1][11]~q\ & (!\r2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[1][11]~q\,
	datab => \r2~10_combout\,
	datac => \r2~11_combout\,
	datad => \r2~121_combout\,
	combout => \r2~122_combout\);

-- Location: LCCOMB_X32_Y13_N30
\r2~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~127_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[10][12]~q\)) # (!\add2[1]~input_o\ & ((\registers[8][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[10][12]~q\,
	datac => \registers[8][12]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~127_combout\);

-- Location: LCCOMB_X30_Y14_N30
\r2~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~128_combout\ = (\add2[0]~input_o\ & ((\r2~127_combout\ & ((\registers[11][12]~q\))) # (!\r2~127_combout\ & (\registers[9][12]~q\)))) # (!\add2[0]~input_o\ & (((\r2~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[9][12]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[11][12]~q\,
	datad => \r2~127_combout\,
	combout => \r2~128_combout\);

-- Location: LCCOMB_X25_Y13_N6
\r2~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~130_combout\ = (\add2[0]~input_o\ & ((\registers[5][12]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[4][12]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[5][12]~q\,
	datac => \registers[4][12]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~130_combout\);

-- Location: LCCOMB_X24_Y13_N10
\r2~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~131_combout\ = (\r2~130_combout\ & (((\registers[7][12]~q\)) # (!\add2[1]~input_o\))) # (!\r2~130_combout\ & (\add2[1]~input_o\ & ((\registers[6][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~130_combout\,
	datab => \add2[1]~input_o\,
	datac => \registers[7][12]~q\,
	datad => \registers[6][12]~q\,
	combout => \r2~131_combout\);

-- Location: LCCOMB_X30_Y15_N30
\r2~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~135_combout\ = (\add2[1]~input_o\ & ((\registers[14][13]~q\) # ((\add2[0]~input_o\)))) # (!\add2[1]~input_o\ & (((\registers[12][13]~q\ & !\add2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \registers[14][13]~q\,
	datac => \registers[12][13]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~135_combout\);

-- Location: LCCOMB_X28_Y10_N10
\r2~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~145_combout\ = (\add2[0]~input_o\ & ((\registers[13][14]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[12][14]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[13][14]~q\,
	datac => \registers[12][14]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~145_combout\);

-- Location: LCCOMB_X32_Y13_N10
\r2~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~147_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[10][14]~q\)) # (!\add2[1]~input_o\ & ((\registers[8][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[10][14]~q\,
	datac => \registers[8][14]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~147_combout\);

-- Location: LCCOMB_X30_Y14_N24
\r2~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~148_combout\ = (\r2~147_combout\ & (((\registers[11][14]~q\)) # (!\add2[0]~input_o\))) # (!\r2~147_combout\ & (\add2[0]~input_o\ & ((\registers[9][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~147_combout\,
	datab => \add2[0]~input_o\,
	datac => \registers[11][14]~q\,
	datad => \registers[9][14]~q\,
	combout => \r2~148_combout\);

-- Location: LCCOMB_X27_Y13_N12
\r2~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~150_combout\ = (\add2[1]~input_o\ & (\add2[0]~input_o\)) # (!\add2[1]~input_o\ & ((\add2[0]~input_o\ & ((\registers[5][14]~q\))) # (!\add2[0]~input_o\ & (\registers[4][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[4][14]~q\,
	datad => \registers[5][14]~q\,
	combout => \r2~150_combout\);

-- Location: LCCOMB_X23_Y14_N6
\r2~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~152_combout\ = (\r2~11_combout\ & ((\r2~10_combout\) # ((\registers[2][14]~q\)))) # (!\r2~11_combout\ & (!\r2~10_combout\ & (\registers[1][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \r2~10_combout\,
	datac => \registers[1][14]~q\,
	datad => \registers[2][14]~q\,
	combout => \r2~152_combout\);

-- Location: LCCOMB_X31_Y14_N6
\r2~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~157_combout\ = (\add2[1]~input_o\ & (\add2[0]~input_o\)) # (!\add2[1]~input_o\ & ((\add2[0]~input_o\ & ((\registers[9][15]~q\))) # (!\add2[0]~input_o\ & (\registers[8][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[8][15]~q\,
	datad => \registers[9][15]~q\,
	combout => \r2~157_combout\);

-- Location: LCCOMB_X28_Y10_N30
\r2~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~165_combout\ = (\add2[0]~input_o\ & ((\registers[13][16]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[12][16]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[13][16]~q\,
	datac => \registers[12][16]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~165_combout\);

-- Location: LCCOMB_X31_Y11_N18
\r2~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~185_combout\ = (\add2[1]~input_o\ & (\add2[0]~input_o\)) # (!\add2[1]~input_o\ & ((\add2[0]~input_o\ & ((\registers[13][18]~q\))) # (!\add2[0]~input_o\ & (\registers[12][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[12][18]~q\,
	datad => \registers[13][18]~q\,
	combout => \r2~185_combout\);

-- Location: LCCOMB_X31_Y11_N26
\r2~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~195_combout\ = (\add2[1]~input_o\ & ((\add2[0]~input_o\) # ((\registers[14][19]~q\)))) # (!\add2[1]~input_o\ & (!\add2[0]~input_o\ & (\registers[12][19]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[12][19]~q\,
	datad => \registers[14][19]~q\,
	combout => \r2~195_combout\);

-- Location: LCCOMB_X31_Y12_N26
\r2~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~196_combout\ = (\add2[0]~input_o\ & ((\r2~195_combout\ & (\registers[15][19]~q\)) # (!\r2~195_combout\ & ((\registers[13][19]~q\))))) # (!\add2[0]~input_o\ & (\r2~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \r2~195_combout\,
	datac => \registers[15][19]~q\,
	datad => \registers[13][19]~q\,
	combout => \r2~196_combout\);

-- Location: LCCOMB_X28_Y11_N2
\r2~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~200_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[6][19]~q\)) # (!\add2[1]~input_o\ & ((\registers[4][19]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[6][19]~q\,
	datac => \registers[4][19]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~200_combout\);

-- Location: LCCOMB_X29_Y11_N26
\r2~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~201_combout\ = (\r2~200_combout\ & (((\registers[7][19]~q\)) # (!\add2[0]~input_o\))) # (!\r2~200_combout\ & (\add2[0]~input_o\ & ((\registers[5][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~200_combout\,
	datab => \add2[0]~input_o\,
	datac => \registers[7][19]~q\,
	datad => \registers[5][19]~q\,
	combout => \r2~201_combout\);

-- Location: LCCOMB_X31_Y11_N22
\r2~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~205_combout\ = (\add2[1]~input_o\ & (\add2[0]~input_o\)) # (!\add2[1]~input_o\ & ((\add2[0]~input_o\ & ((\registers[13][20]~q\))) # (!\add2[0]~input_o\ & (\registers[12][20]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[12][20]~q\,
	datad => \registers[13][20]~q\,
	combout => \r2~205_combout\);

-- Location: LCCOMB_X32_Y13_N22
\r2~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~207_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[10][20]~q\)) # (!\add2[1]~input_o\ & ((\registers[8][20]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[10][20]~q\,
	datac => \registers[8][20]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~207_combout\);

-- Location: LCCOMB_X27_Y13_N8
\r2~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~210_combout\ = (\add2[0]~input_o\ & ((\registers[5][20]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[4][20]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[5][20]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[4][20]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~210_combout\);

-- Location: LCCOMB_X24_Y13_N22
\r2~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~211_combout\ = (\r2~210_combout\ & (((\registers[7][20]~q\) # (!\add2[1]~input_o\)))) # (!\r2~210_combout\ & (\registers[6][20]~q\ & ((\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[6][20]~q\,
	datab => \r2~210_combout\,
	datac => \registers[7][20]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~211_combout\);

-- Location: LCCOMB_X31_Y11_N2
\r2~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~215_combout\ = (\add2[1]~input_o\ & ((\registers[14][21]~q\) # ((\add2[0]~input_o\)))) # (!\add2[1]~input_o\ & (((\registers[12][21]~q\ & !\add2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \registers[14][21]~q\,
	datac => \registers[12][21]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~215_combout\);

-- Location: LCCOMB_X31_Y12_N14
\r2~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~216_combout\ = (\add2[0]~input_o\ & ((\r2~215_combout\ & (\registers[15][21]~q\)) # (!\r2~215_combout\ & ((\registers[13][21]~q\))))) # (!\add2[0]~input_o\ & (\r2~215_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \r2~215_combout\,
	datac => \registers[15][21]~q\,
	datad => \registers[13][21]~q\,
	combout => \r2~216_combout\);

-- Location: LCCOMB_X31_Y14_N18
\r2~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~217_combout\ = (\add2[1]~input_o\ & (\add2[0]~input_o\)) # (!\add2[1]~input_o\ & ((\add2[0]~input_o\ & ((\registers[9][21]~q\))) # (!\add2[0]~input_o\ & (\registers[8][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[8][21]~q\,
	datad => \registers[9][21]~q\,
	combout => \r2~217_combout\);

-- Location: LCCOMB_X25_Y12_N22
\r2~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~220_combout\ = (\add2[1]~input_o\ & ((\registers[6][21]~q\) # ((\add2[0]~input_o\)))) # (!\add2[1]~input_o\ & (((\registers[4][21]~q\ & !\add2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \registers[6][21]~q\,
	datac => \registers[4][21]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~220_combout\);

-- Location: LCCOMB_X26_Y12_N18
\r2~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~221_combout\ = (\add2[0]~input_o\ & ((\r2~220_combout\ & (\registers[7][21]~q\)) # (!\r2~220_combout\ & ((\registers[5][21]~q\))))) # (!\add2[0]~input_o\ & (\r2~220_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \r2~220_combout\,
	datac => \registers[7][21]~q\,
	datad => \registers[5][21]~q\,
	combout => \r2~221_combout\);

-- Location: LCCOMB_X30_Y12_N26
\r2~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~222_combout\ = (\r2~11_combout\ & (((\r2~10_combout\)))) # (!\r2~11_combout\ & ((\r2~10_combout\ & (\r2~221_combout\)) # (!\r2~10_combout\ & ((\registers[1][21]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~221_combout\,
	datab => \r2~11_combout\,
	datac => \r2~10_combout\,
	datad => \registers[1][21]~q\,
	combout => \r2~222_combout\);

-- Location: LCCOMB_X25_Y13_N30
\r2~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~230_combout\ = (\add2[0]~input_o\ & ((\registers[5][22]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[4][22]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[5][22]~q\,
	datac => \registers[4][22]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~230_combout\);

-- Location: LCCOMB_X26_Y13_N6
\r2~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~231_combout\ = (\r2~230_combout\ & (((\registers[7][22]~q\)) # (!\add2[1]~input_o\))) # (!\r2~230_combout\ & (\add2[1]~input_o\ & ((\registers[6][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~230_combout\,
	datab => \add2[1]~input_o\,
	datac => \registers[7][22]~q\,
	datad => \registers[6][22]~q\,
	combout => \r2~231_combout\);

-- Location: LCCOMB_X31_Y11_N6
\r2~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~235_combout\ = (\add2[1]~input_o\ & ((\add2[0]~input_o\) # ((\registers[14][23]~q\)))) # (!\add2[1]~input_o\ & (!\add2[0]~input_o\ & (\registers[12][23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[12][23]~q\,
	datad => \registers[14][23]~q\,
	combout => \r2~235_combout\);

-- Location: LCCOMB_X31_Y14_N30
\r2~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~237_combout\ = (\add2[1]~input_o\ & (((\add2[0]~input_o\)))) # (!\add2[1]~input_o\ & ((\add2[0]~input_o\ & (\registers[9][23]~q\)) # (!\add2[0]~input_o\ & ((\registers[8][23]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \registers[9][23]~q\,
	datac => \registers[8][23]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~237_combout\);

-- Location: LCCOMB_X30_Y14_N8
\r2~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~238_combout\ = (\add2[1]~input_o\ & ((\r2~237_combout\ & ((\registers[11][23]~q\))) # (!\r2~237_combout\ & (\registers[10][23]~q\)))) # (!\add2[1]~input_o\ & (((\r2~237_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[10][23]~q\,
	datab => \add2[1]~input_o\,
	datac => \registers[11][23]~q\,
	datad => \r2~237_combout\,
	combout => \r2~238_combout\);

-- Location: LCCOMB_X28_Y11_N14
\r2~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~240_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[6][23]~q\)) # (!\add2[1]~input_o\ & ((\registers[4][23]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[6][23]~q\,
	datac => \registers[4][23]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~240_combout\);

-- Location: LCCOMB_X27_Y12_N8
\r2~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~241_combout\ = (\add2[0]~input_o\ & ((\r2~240_combout\ & ((\registers[7][23]~q\))) # (!\r2~240_combout\ & (\registers[5][23]~q\)))) # (!\add2[0]~input_o\ & (((\r2~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[5][23]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[7][23]~q\,
	datad => \r2~240_combout\,
	combout => \r2~241_combout\);

-- Location: LCCOMB_X30_Y12_N30
\r2~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~242_combout\ = (\r2~11_combout\ & (((\r2~10_combout\)))) # (!\r2~11_combout\ & ((\r2~10_combout\ & (\r2~241_combout\)) # (!\r2~10_combout\ & ((\registers[1][23]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~241_combout\,
	datab => \r2~11_combout\,
	datac => \r2~10_combout\,
	datad => \registers[1][23]~q\,
	combout => \r2~242_combout\);

-- Location: LCCOMB_X27_Y13_N28
\r2~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~250_combout\ = (\add2[0]~input_o\ & ((\registers[5][24]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[4][24]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[5][24]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[4][24]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~250_combout\);

-- Location: LCCOMB_X31_Y16_N6
\r2~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~257_combout\ = (\add2[0]~input_o\ & ((\add2[1]~input_o\) # ((\registers[9][25]~q\)))) # (!\add2[0]~input_o\ & (!\add2[1]~input_o\ & (\registers[8][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \add2[1]~input_o\,
	datac => \registers[8][25]~q\,
	datad => \registers[9][25]~q\,
	combout => \r2~257_combout\);

-- Location: LCCOMB_X28_Y11_N10
\r2~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~260_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[6][25]~q\)) # (!\add2[1]~input_o\ & ((\registers[4][25]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[6][25]~q\,
	datac => \registers[4][25]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~260_combout\);

-- Location: LCCOMB_X29_Y13_N6
\r2~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~265_combout\ = (\add2[0]~input_o\ & ((\add2[1]~input_o\) # ((\registers[13][26]~q\)))) # (!\add2[0]~input_o\ & (!\add2[1]~input_o\ & (\registers[12][26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \add2[1]~input_o\,
	datac => \registers[12][26]~q\,
	datad => \registers[13][26]~q\,
	combout => \r2~265_combout\);

-- Location: LCCOMB_X29_Y14_N2
\r2~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~272_combout\ = (\r2~10_combout\ & (((\r2~11_combout\)))) # (!\r2~10_combout\ & ((\r2~11_combout\ & (\registers[2][26]~q\)) # (!\r2~11_combout\ & ((\registers[1][26]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[2][26]~q\,
	datab => \r2~10_combout\,
	datac => \registers[1][26]~q\,
	datad => \r2~11_combout\,
	combout => \r2~272_combout\);

-- Location: LCCOMB_X31_Y16_N30
\r2~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~277_combout\ = (\add2[1]~input_o\ & (((\add2[0]~input_o\)))) # (!\add2[1]~input_o\ & ((\add2[0]~input_o\ & (\registers[9][27]~q\)) # (!\add2[0]~input_o\ & ((\registers[8][27]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[9][27]~q\,
	datab => \add2[1]~input_o\,
	datac => \registers[8][27]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~277_combout\);

-- Location: LCCOMB_X30_Y16_N26
\r2~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~278_combout\ = (\add2[1]~input_o\ & ((\r2~277_combout\ & ((\registers[11][27]~q\))) # (!\r2~277_combout\ & (\registers[10][27]~q\)))) # (!\add2[1]~input_o\ & (((\r2~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \registers[10][27]~q\,
	datac => \registers[11][27]~q\,
	datad => \r2~277_combout\,
	combout => \r2~278_combout\);

-- Location: LCCOMB_X28_Y11_N30
\r2~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~280_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[6][27]~q\)) # (!\add2[1]~input_o\ & ((\registers[4][27]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[6][27]~q\,
	datac => \registers[4][27]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~280_combout\);

-- Location: LCCOMB_X29_Y11_N20
\r2~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~281_combout\ = (\add2[0]~input_o\ & ((\r2~280_combout\ & ((\registers[7][27]~q\))) # (!\r2~280_combout\ & (\registers[5][27]~q\)))) # (!\add2[0]~input_o\ & (((\r2~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[5][27]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[7][27]~q\,
	datad => \r2~280_combout\,
	combout => \r2~281_combout\);

-- Location: LCCOMB_X30_Y12_N4
\r2~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~282_combout\ = (\r2~11_combout\ & (((\r2~10_combout\)))) # (!\r2~11_combout\ & ((\r2~10_combout\ & ((\r2~281_combout\))) # (!\r2~10_combout\ & (\registers[1][27]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[1][27]~q\,
	datab => \r2~11_combout\,
	datac => \r2~10_combout\,
	datad => \r2~281_combout\,
	combout => \r2~282_combout\);

-- Location: LCCOMB_X29_Y13_N30
\r2~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~285_combout\ = (\add2[0]~input_o\ & ((\add2[1]~input_o\) # ((\registers[13][28]~q\)))) # (!\add2[0]~input_o\ & (!\add2[1]~input_o\ & (\registers[12][28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \add2[1]~input_o\,
	datac => \registers[12][28]~q\,
	datad => \registers[13][28]~q\,
	combout => \r2~285_combout\);

-- Location: LCCOMB_X29_Y13_N2
\r2~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~295_combout\ = (\add2[0]~input_o\ & (\add2[1]~input_o\)) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & ((\registers[14][29]~q\))) # (!\add2[1]~input_o\ & (\registers[12][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \add2[1]~input_o\,
	datac => \registers[12][29]~q\,
	datad => \registers[14][29]~q\,
	combout => \r2~295_combout\);

-- Location: LCCOMB_X30_Y13_N6
\r2~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~296_combout\ = (\r2~295_combout\ & (((\registers[15][29]~q\)) # (!\add2[0]~input_o\))) # (!\r2~295_combout\ & (\add2[0]~input_o\ & ((\registers[13][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~295_combout\,
	datab => \add2[0]~input_o\,
	datac => \registers[15][29]~q\,
	datad => \registers[13][29]~q\,
	combout => \r2~296_combout\);

-- Location: LCCOMB_X28_Y11_N26
\r2~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~300_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[6][29]~q\)) # (!\add2[1]~input_o\ & ((\registers[4][29]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[6][29]~q\,
	datac => \registers[4][29]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~300_combout\);

-- Location: LCCOMB_X29_Y11_N24
\r2~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~301_combout\ = (\add2[0]~input_o\ & ((\r2~300_combout\ & ((\registers[7][29]~q\))) # (!\r2~300_combout\ & (\registers[5][29]~q\)))) # (!\add2[0]~input_o\ & (((\r2~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[5][29]~q\,
	datac => \registers[7][29]~q\,
	datad => \r2~300_combout\,
	combout => \r2~301_combout\);

-- Location: LCCOMB_X29_Y11_N0
\r2~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~302_combout\ = (\r2~11_combout\ & (((\r2~10_combout\)))) # (!\r2~11_combout\ & ((\r2~10_combout\ & ((\r2~301_combout\))) # (!\r2~10_combout\ & (\registers[1][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[1][29]~q\,
	datab => \r2~11_combout\,
	datac => \r2~10_combout\,
	datad => \r2~301_combout\,
	combout => \r2~302_combout\);

-- Location: LCCOMB_X29_Y16_N30
\r2~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~305_combout\ = (\add2[0]~input_o\ & ((\registers[13][30]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[12][30]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[13][30]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[12][30]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~305_combout\);

-- Location: LCCOMB_X29_Y16_N8
\r2~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~306_combout\ = (\r2~305_combout\ & (((\registers[15][30]~q\)) # (!\add2[1]~input_o\))) # (!\r2~305_combout\ & (\add2[1]~input_o\ & ((\registers[14][30]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~305_combout\,
	datab => \add2[1]~input_o\,
	datac => \registers[15][30]~q\,
	datad => \registers[14][30]~q\,
	combout => \r2~306_combout\);

-- Location: LCCOMB_X29_Y16_N18
\r2~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~315_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[14][31]~q\)) # (!\add2[1]~input_o\ & ((\registers[12][31]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[14][31]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[12][31]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~315_combout\);

-- Location: LCCOMB_X29_Y16_N20
\r2~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~316_combout\ = (\r2~315_combout\ & (((\registers[15][31]~q\) # (!\add2[0]~input_o\)))) # (!\r2~315_combout\ & (\registers[13][31]~q\ & ((\add2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~315_combout\,
	datab => \registers[13][31]~q\,
	datac => \registers[15][31]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~316_combout\);

-- Location: LCCOMB_X28_Y13_N20
\r2~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~320_combout\ = (\add2[1]~input_o\ & ((\add2[0]~input_o\) # ((\registers[6][31]~q\)))) # (!\add2[1]~input_o\ & (!\add2[0]~input_o\ & (\registers[4][31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[4][31]~q\,
	datad => \registers[6][31]~q\,
	combout => \r2~320_combout\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: IOOBUF_X20_Y34_N23
\r1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~14_combout\,
	devoe => ww_devoe,
	o => \r1[0]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\r1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~24_combout\,
	devoe => ww_devoe,
	o => \r1[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\r1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~34_combout\,
	devoe => ww_devoe,
	o => \r1[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\r1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~44_combout\,
	devoe => ww_devoe,
	o => \r1[3]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\r1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~54_combout\,
	devoe => ww_devoe,
	o => \r1[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\r1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~64_combout\,
	devoe => ww_devoe,
	o => \r1[5]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\r1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~74_combout\,
	devoe => ww_devoe,
	o => \r1[6]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\r1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~84_combout\,
	devoe => ww_devoe,
	o => \r1[7]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\r1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~94_combout\,
	devoe => ww_devoe,
	o => \r1[8]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\r1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~104_combout\,
	devoe => ww_devoe,
	o => \r1[9]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\r1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~114_combout\,
	devoe => ww_devoe,
	o => \r1[10]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\r1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~124_combout\,
	devoe => ww_devoe,
	o => \r1[11]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\r1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~134_combout\,
	devoe => ww_devoe,
	o => \r1[12]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\r1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~144_combout\,
	devoe => ww_devoe,
	o => \r1[13]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\r1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~154_combout\,
	devoe => ww_devoe,
	o => \r1[14]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\r1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~164_combout\,
	devoe => ww_devoe,
	o => \r1[15]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\r1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~174_combout\,
	devoe => ww_devoe,
	o => \r1[16]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\r1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~184_combout\,
	devoe => ww_devoe,
	o => \r1[17]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\r1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~194_combout\,
	devoe => ww_devoe,
	o => \r1[18]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\r1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~204_combout\,
	devoe => ww_devoe,
	o => \r1[19]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\r1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~214_combout\,
	devoe => ww_devoe,
	o => \r1[20]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\r1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~224_combout\,
	devoe => ww_devoe,
	o => \r1[21]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\r1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~234_combout\,
	devoe => ww_devoe,
	o => \r1[22]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\r1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~244_combout\,
	devoe => ww_devoe,
	o => \r1[23]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\r1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~254_combout\,
	devoe => ww_devoe,
	o => \r1[24]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\r1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~264_combout\,
	devoe => ww_devoe,
	o => \r1[25]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\r1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~274_combout\,
	devoe => ww_devoe,
	o => \r1[26]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\r1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~284_combout\,
	devoe => ww_devoe,
	o => \r1[27]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\r1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~294_combout\,
	devoe => ww_devoe,
	o => \r1[28]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\r1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~304_combout\,
	devoe => ww_devoe,
	o => \r1[29]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\r1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~314_combout\,
	devoe => ww_devoe,
	o => \r1[30]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\r1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1~324_combout\,
	devoe => ww_devoe,
	o => \r1[31]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\r2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~14_combout\,
	devoe => ww_devoe,
	o => \r2[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\r2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~24_combout\,
	devoe => ww_devoe,
	o => \r2[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\r2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~34_combout\,
	devoe => ww_devoe,
	o => \r2[2]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\r2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~44_combout\,
	devoe => ww_devoe,
	o => \r2[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\r2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~54_combout\,
	devoe => ww_devoe,
	o => \r2[4]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\r2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~64_combout\,
	devoe => ww_devoe,
	o => \r2[5]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\r2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~74_combout\,
	devoe => ww_devoe,
	o => \r2[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\r2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~84_combout\,
	devoe => ww_devoe,
	o => \r2[7]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\r2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~94_combout\,
	devoe => ww_devoe,
	o => \r2[8]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\r2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~104_combout\,
	devoe => ww_devoe,
	o => \r2[9]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\r2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~114_combout\,
	devoe => ww_devoe,
	o => \r2[10]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\r2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~124_combout\,
	devoe => ww_devoe,
	o => \r2[11]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\r2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~134_combout\,
	devoe => ww_devoe,
	o => \r2[12]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\r2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~144_combout\,
	devoe => ww_devoe,
	o => \r2[13]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\r2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~154_combout\,
	devoe => ww_devoe,
	o => \r2[14]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\r2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~164_combout\,
	devoe => ww_devoe,
	o => \r2[15]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\r2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~174_combout\,
	devoe => ww_devoe,
	o => \r2[16]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\r2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~184_combout\,
	devoe => ww_devoe,
	o => \r2[17]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\r2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~194_combout\,
	devoe => ww_devoe,
	o => \r2[18]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\r2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~204_combout\,
	devoe => ww_devoe,
	o => \r2[19]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\r2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~214_combout\,
	devoe => ww_devoe,
	o => \r2[20]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\r2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~224_combout\,
	devoe => ww_devoe,
	o => \r2[21]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\r2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~234_combout\,
	devoe => ww_devoe,
	o => \r2[22]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\r2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~244_combout\,
	devoe => ww_devoe,
	o => \r2[23]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\r2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~254_combout\,
	devoe => ww_devoe,
	o => \r2[24]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\r2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~264_combout\,
	devoe => ww_devoe,
	o => \r2[25]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\r2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~274_combout\,
	devoe => ww_devoe,
	o => \r2[26]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\r2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~284_combout\,
	devoe => ww_devoe,
	o => \r2[27]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\r2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~294_combout\,
	devoe => ww_devoe,
	o => \r2[28]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\r2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~304_combout\,
	devoe => ww_devoe,
	o => \r2[29]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\r2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~314_combout\,
	devoe => ww_devoe,
	o => \r2[30]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\r2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2~324_combout\,
	devoe => ww_devoe,
	o => \r2[31]~output_o\);

-- Location: IOIBUF_X0_Y7_N8
\add1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add1(2),
	o => \add1[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N15
\add1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add1(3),
	o => \add1[3]~input_o\);

-- Location: IOIBUF_X34_Y34_N1
\add1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add1(1),
	o => \add1[1]~input_o\);

-- Location: LCCOMB_X32_Y15_N18
\r1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~5_combout\ = (!\add1[0]~input_o\ & (!\add1[2]~input_o\ & (!\add1[3]~input_o\ & !\add1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[2]~input_o\,
	datac => \add1[3]~input_o\,
	datad => \add1[1]~input_o\,
	combout => \r1~5_combout\);

-- Location: LCCOMB_X32_Y15_N4
\r1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~6_combout\ = ((\r1~5_combout\) # ((\add1[2]~input_o\ & \add1[3]~input_o\))) # (!\rd~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datab => \add1[2]~input_o\,
	datac => \add1[3]~input_o\,
	datad => \r1~5_combout\,
	combout => \r1~6_combout\);

-- Location: LCCOMB_X32_Y15_N8
\r1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~0_combout\ = (\rd~input_o\ & \add1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datac => \add1[3]~input_o\,
	combout => \r1~0_combout\);

-- Location: IOIBUF_X0_Y10_N22
\add1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add1(0),
	o => \add1[0]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\wdata[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(0),
	o => \wdata[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\wadd[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wadd(0),
	o => \wadd[0]~input_o\);

-- Location: IOIBUF_X16_Y34_N8
\wadd[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wadd(4),
	o => \wadd[4]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\wr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr,
	o => \wr~input_o\);

-- Location: IOIBUF_X29_Y34_N15
\wadd[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wadd(3),
	o => \wadd[3]~input_o\);

-- Location: LCCOMB_X28_Y15_N8
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\wadd[4]~input_o\ & (\wr~input_o\ & \wadd[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wadd[4]~input_o\,
	datac => \wr~input_o\,
	datad => \wadd[3]~input_o\,
	combout => \Decoder0~0_combout\);

-- Location: IOIBUF_X53_Y7_N8
\wadd[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wadd(1),
	o => \wadd[1]~input_o\);

-- Location: LCCOMB_X28_Y15_N28
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (\wadd[2]~input_o\ & (\wadd[0]~input_o\ & (\Decoder0~0_combout\ & !\wadd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wadd[2]~input_o\,
	datab => \wadd[0]~input_o\,
	datac => \Decoder0~0_combout\,
	datad => \wadd[1]~input_o\,
	combout => \Decoder0~2_combout\);

-- Location: FF_X25_Y15_N9
\registers[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][0]~q\);

-- Location: LCCOMB_X25_Y15_N8
\r1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~1_combout\ = (\add1[0]~input_o\ & (((\registers[13][0]~q\) # (\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & (\registers[12][0]~q\ & ((!\add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[12][0]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[13][0]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~1_combout\);

-- Location: LCCOMB_X28_Y15_N26
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\wadd[2]~input_o\ & (!\wadd[0]~input_o\ & (\Decoder0~0_combout\ & \wadd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wadd[2]~input_o\,
	datab => \wadd[0]~input_o\,
	datac => \Decoder0~0_combout\,
	datad => \wadd[1]~input_o\,
	combout => \Decoder0~1_combout\);

-- Location: FF_X31_Y12_N25
\registers[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][0]~q\);

-- Location: LCCOMB_X28_Y15_N24
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\wadd[2]~input_o\ & (\wadd[0]~input_o\ & (\Decoder0~0_combout\ & \wadd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wadd[2]~input_o\,
	datab => \wadd[0]~input_o\,
	datac => \Decoder0~0_combout\,
	datad => \wadd[1]~input_o\,
	combout => \Decoder0~4_combout\);

-- Location: FF_X29_Y15_N17
\registers[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][0]~q\);

-- Location: LCCOMB_X31_Y12_N24
\r1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~2_combout\ = (\add1[1]~input_o\ & ((\r1~1_combout\ & ((\registers[15][0]~q\))) # (!\r1~1_combout\ & (\registers[14][0]~q\)))) # (!\add1[1]~input_o\ & (\r1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \r1~1_combout\,
	datac => \registers[14][0]~q\,
	datad => \registers[15][0]~q\,
	combout => \r1~2_combout\);

-- Location: LCCOMB_X28_Y15_N2
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!\wadd[2]~input_o\ & (\wadd[0]~input_o\ & (\Decoder0~0_combout\ & !\wadd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wadd[2]~input_o\,
	datab => \wadd[0]~input_o\,
	datac => \Decoder0~0_combout\,
	datad => \wadd[1]~input_o\,
	combout => \Decoder0~5_combout\);

-- Location: FF_X25_Y16_N1
\registers[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][0]~q\);

-- Location: LCCOMB_X28_Y15_N20
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\wadd[2]~input_o\ & (!\wadd[0]~input_o\ & (\Decoder0~0_combout\ & \wadd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wadd[2]~input_o\,
	datab => \wadd[0]~input_o\,
	datac => \Decoder0~0_combout\,
	datad => \wadd[1]~input_o\,
	combout => \Decoder0~6_combout\);

-- Location: FF_X27_Y14_N25
\registers[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][0]~q\);

-- Location: LCCOMB_X28_Y15_N22
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!\wadd[2]~input_o\ & (!\wadd[0]~input_o\ & (\Decoder0~0_combout\ & !\wadd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wadd[2]~input_o\,
	datab => \wadd[0]~input_o\,
	datac => \Decoder0~0_combout\,
	datad => \wadd[1]~input_o\,
	combout => \Decoder0~7_combout\);

-- Location: FF_X27_Y14_N19
\registers[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][0]~q\);

-- Location: LCCOMB_X27_Y14_N24
\r1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~3_combout\ = (\add1[0]~input_o\ & (\add1[1]~input_o\)) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & (\registers[10][0]~q\)) # (!\add1[1]~input_o\ & ((\registers[8][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[10][0]~q\,
	datad => \registers[8][0]~q\,
	combout => \r1~3_combout\);

-- Location: LCCOMB_X25_Y16_N0
\r1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~4_combout\ = (\add1[0]~input_o\ & ((\r1~3_combout\ & (\registers[11][0]~q\)) # (!\r1~3_combout\ & ((\registers[9][0]~q\))))) # (!\add1[0]~input_o\ & (((\r1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[11][0]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[9][0]~q\,
	datad => \r1~3_combout\,
	combout => \r1~4_combout\);

-- Location: LCCOMB_X25_Y16_N4
\r1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~7_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & (\r1~2_combout\)) # (!\r1~6_combout\ & ((\r1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~0_combout\,
	datac => \r1~2_combout\,
	datad => \r1~4_combout\,
	combout => \r1~7_combout\);

-- Location: LCCOMB_X32_Y13_N16
\r1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~10_combout\ = (\add1[2]~input_o\) # ((\add1[1]~input_o\ & \add1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[2]~input_o\,
	datac => \add1[1]~input_o\,
	datad => \add1[0]~input_o\,
	combout => \r1~10_combout\);

-- Location: IOIBUF_X47_Y34_N22
\wadd[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wadd(2),
	o => \wadd[2]~input_o\);

-- Location: LCCOMB_X28_Y15_N14
\Decoder0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~17_combout\ = (\Decoder0~11_combout\ & (!\wadd[2]~input_o\ & \wadd[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~11_combout\,
	datac => \wadd[2]~input_o\,
	datad => \wadd[1]~input_o\,
	combout => \Decoder0~17_combout\);

-- Location: FF_X24_Y14_N19
\registers[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][0]~q\);

-- Location: LCCOMB_X28_Y15_N6
\Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~11_combout\ = (\wadd[0]~input_o\ & (!\wadd[4]~input_o\ & (\wr~input_o\ & !\wadd[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wadd[0]~input_o\,
	datab => \wadd[4]~input_o\,
	datac => \wr~input_o\,
	datad => \wadd[3]~input_o\,
	combout => \Decoder0~11_combout\);

-- Location: LCCOMB_X26_Y12_N12
\Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~12_combout\ = (!\wadd[1]~input_o\ & (\wadd[2]~input_o\ & \Decoder0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wadd[1]~input_o\,
	datac => \wadd[2]~input_o\,
	datad => \Decoder0~11_combout\,
	combout => \Decoder0~12_combout\);

-- Location: FF_X26_Y12_N9
\registers[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][0]~q\);

-- Location: LCCOMB_X28_Y15_N18
\Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (!\wadd[0]~input_o\ & (!\wadd[4]~input_o\ & (\wr~input_o\ & !\wadd[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wadd[0]~input_o\,
	datab => \wadd[4]~input_o\,
	datac => \wr~input_o\,
	datad => \wadd[3]~input_o\,
	combout => \Decoder0~9_combout\);

-- Location: LCCOMB_X28_Y15_N0
\Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~13_combout\ = (\Decoder0~9_combout\ & (\wadd[2]~input_o\ & !\wadd[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~9_combout\,
	datac => \wadd[2]~input_o\,
	datad => \wadd[1]~input_o\,
	combout => \Decoder0~13_combout\);

-- Location: FF_X25_Y12_N27
\registers[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][0]~q\);

-- Location: LCCOMB_X26_Y12_N8
\r1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~8_combout\ = (\add1[0]~input_o\ & ((\add1[1]~input_o\) # ((\registers[5][0]~q\)))) # (!\add1[0]~input_o\ & (!\add1[1]~input_o\ & ((\registers[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[5][0]~q\,
	datad => \registers[4][0]~q\,
	combout => \r1~8_combout\);

-- Location: LCCOMB_X28_Y15_N12
\Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (\Decoder0~9_combout\ & (\wadd[2]~input_o\ & \wadd[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~9_combout\,
	datac => \wadd[2]~input_o\,
	datad => \wadd[1]~input_o\,
	combout => \Decoder0~10_combout\);

-- Location: FF_X25_Y12_N25
\registers[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][0]~q\);

-- Location: LCCOMB_X26_Y12_N30
\Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~14_combout\ = (\wadd[1]~input_o\ & (\wadd[2]~input_o\ & \Decoder0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wadd[1]~input_o\,
	datac => \wadd[2]~input_o\,
	datad => \Decoder0~11_combout\,
	combout => \Decoder0~14_combout\);

-- Location: FF_X26_Y12_N11
\registers[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][0]~q\);

-- Location: LCCOMB_X25_Y12_N24
\r1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~9_combout\ = (\add1[1]~input_o\ & ((\r1~8_combout\ & ((\registers[7][0]~q\))) # (!\r1~8_combout\ & (\registers[6][0]~q\)))) # (!\add1[1]~input_o\ & (\r1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \r1~8_combout\,
	datac => \registers[6][0]~q\,
	datad => \registers[7][0]~q\,
	combout => \r1~9_combout\);

-- Location: LCCOMB_X24_Y14_N18
\r1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~13_combout\ = (\r1~12_combout\ & (((\registers[3][0]~q\)) # (!\r1~10_combout\))) # (!\r1~12_combout\ & (\r1~10_combout\ & ((\r1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~12_combout\,
	datab => \r1~10_combout\,
	datac => \registers[3][0]~q\,
	datad => \r1~9_combout\,
	combout => \r1~13_combout\);

-- Location: LCCOMB_X25_Y16_N22
\r1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~14_combout\ = (\r1~7_combout\) # ((!\r1~6_combout\ & (!\r1~0_combout\ & \r1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~0_combout\,
	datac => \r1~7_combout\,
	datad => \r1~13_combout\,
	combout => \r1~14_combout\);

-- Location: IOIBUF_X53_Y12_N1
\wdata[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(1),
	o => \wdata[1]~input_o\);

-- Location: FF_X30_Y17_N1
\registers[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][1]~q\);

-- Location: LCCOMB_X28_Y15_N16
\Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (!\wadd[2]~input_o\ & (\wadd[0]~input_o\ & (\Decoder0~0_combout\ & \wadd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wadd[2]~input_o\,
	datab => \wadd[0]~input_o\,
	datac => \Decoder0~0_combout\,
	datad => \wadd[1]~input_o\,
	combout => \Decoder0~8_combout\);

-- Location: FF_X29_Y17_N3
\registers[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][1]~q\);

-- Location: LCCOMB_X30_Y17_N0
\r1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~18_combout\ = (\r1~17_combout\ & (((\registers[11][1]~q\)) # (!\add1[1]~input_o\))) # (!\r1~17_combout\ & (\add1[1]~input_o\ & (\registers[10][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~17_combout\,
	datab => \add1[1]~input_o\,
	datac => \registers[10][1]~q\,
	datad => \registers[11][1]~q\,
	combout => \r1~18_combout\);

-- Location: FF_X29_Y15_N27
\registers[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][1]~q\);

-- Location: FF_X29_Y12_N17
\registers[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][1]~q\);

-- Location: FF_X32_Y15_N7
\registers[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][1]~q\);

-- Location: LCCOMB_X28_Y15_N30
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\wadd[2]~input_o\ & (!\wadd[0]~input_o\ & (\Decoder0~0_combout\ & !\wadd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wadd[2]~input_o\,
	datab => \wadd[0]~input_o\,
	datac => \Decoder0~0_combout\,
	datad => \wadd[1]~input_o\,
	combout => \Decoder0~3_combout\);

-- Location: FF_X32_Y15_N1
\registers[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][1]~q\);

-- Location: LCCOMB_X32_Y15_N6
\r1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~15_combout\ = (\add1[0]~input_o\ & (\add1[1]~input_o\)) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & (\registers[14][1]~q\)) # (!\add1[1]~input_o\ & ((\registers[12][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][1]~q\,
	datad => \registers[12][1]~q\,
	combout => \r1~15_combout\);

-- Location: LCCOMB_X29_Y12_N16
\r1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~16_combout\ = (\add1[0]~input_o\ & ((\r1~15_combout\ & (\registers[15][1]~q\)) # (!\r1~15_combout\ & ((\registers[13][1]~q\))))) # (!\add1[0]~input_o\ & (((\r1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[15][1]~q\,
	datac => \registers[13][1]~q\,
	datad => \r1~15_combout\,
	combout => \r1~16_combout\);

-- Location: LCCOMB_X25_Y16_N24
\r1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~19_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & ((\r1~16_combout\))) # (!\r1~6_combout\ & (\r1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~0_combout\,
	datac => \r1~18_combout\,
	datad => \r1~16_combout\,
	combout => \r1~19_combout\);

-- Location: LCCOMB_X32_Y13_N2
\r1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~11_combout\ = (\add1[1]~input_o\ & !\add1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datac => \add1[2]~input_o\,
	combout => \r1~11_combout\);

-- Location: LCCOMB_X28_Y15_N10
\Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~15_combout\ = (\Decoder0~9_combout\ & (!\wadd[2]~input_o\ & \wadd[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~9_combout\,
	datac => \wadd[2]~input_o\,
	datad => \wadd[1]~input_o\,
	combout => \Decoder0~15_combout\);

-- Location: FF_X26_Y14_N9
\registers[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][1]~q\);

-- Location: FF_X26_Y12_N29
\registers[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][1]~q\);

-- Location: FF_X25_Y12_N13
\registers[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][1]~q\);

-- Location: FF_X25_Y12_N7
\registers[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][1]~q\);

-- Location: LCCOMB_X25_Y12_N12
\r1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~20_combout\ = (\add1[1]~input_o\ & ((\add1[0]~input_o\) # ((\registers[6][1]~q\)))) # (!\add1[1]~input_o\ & (!\add1[0]~input_o\ & ((\registers[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \add1[0]~input_o\,
	datac => \registers[6][1]~q\,
	datad => \registers[4][1]~q\,
	combout => \r1~20_combout\);

-- Location: LCCOMB_X26_Y12_N28
\r1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~21_combout\ = (\add1[0]~input_o\ & ((\r1~20_combout\ & (\registers[7][1]~q\)) # (!\r1~20_combout\ & ((\registers[5][1]~q\))))) # (!\add1[0]~input_o\ & (((\r1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[7][1]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[5][1]~q\,
	datad => \r1~20_combout\,
	combout => \r1~21_combout\);

-- Location: LCCOMB_X28_Y15_N4
\Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~16_combout\ = (\Decoder0~11_combout\ & (!\wadd[2]~input_o\ & !\wadd[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~11_combout\,
	datac => \wadd[2]~input_o\,
	datad => \wadd[1]~input_o\,
	combout => \Decoder0~16_combout\);

-- Location: FF_X26_Y14_N19
\registers[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][1]~q\);

-- Location: LCCOMB_X26_Y14_N18
\r1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~22_combout\ = (\r1~10_combout\ & ((\r1~21_combout\) # ((\r1~11_combout\)))) # (!\r1~10_combout\ & (((\registers[1][1]~q\ & !\r1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~21_combout\,
	datac => \registers[1][1]~q\,
	datad => \r1~11_combout\,
	combout => \r1~22_combout\);

-- Location: LCCOMB_X26_Y14_N8
\r1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~23_combout\ = (\r1~11_combout\ & ((\r1~22_combout\ & (\registers[3][1]~q\)) # (!\r1~22_combout\ & ((\registers[2][1]~q\))))) # (!\r1~11_combout\ & (((\r1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[3][1]~q\,
	datab => \r1~11_combout\,
	datac => \registers[2][1]~q\,
	datad => \r1~22_combout\,
	combout => \r1~23_combout\);

-- Location: LCCOMB_X25_Y16_N18
\r1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~24_combout\ = (\r1~19_combout\) # ((!\r1~6_combout\ & (!\r1~0_combout\ & \r1~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~0_combout\,
	datac => \r1~19_combout\,
	datad => \r1~23_combout\,
	combout => \r1~24_combout\);

-- Location: IOIBUF_X53_Y9_N22
\wdata[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(2),
	o => \wdata[2]~input_o\);

-- Location: FF_X28_Y10_N17
\registers[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][2]~q\);

-- Location: LCCOMB_X28_Y10_N16
\r1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~25_combout\ = (\add1[0]~input_o\ & (((\registers[13][2]~q\) # (\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & (\registers[12][2]~q\ & ((!\add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[12][2]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[13][2]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~25_combout\);

-- Location: FF_X31_Y12_N19
\registers[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][2]~q\);

-- Location: FF_X29_Y15_N13
\registers[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][2]~q\);

-- Location: LCCOMB_X31_Y12_N18
\r1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~26_combout\ = (\add1[1]~input_o\ & ((\r1~25_combout\ & ((\registers[15][2]~q\))) # (!\r1~25_combout\ & (\registers[14][2]~q\)))) # (!\add1[1]~input_o\ & (\r1~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \r1~25_combout\,
	datac => \registers[14][2]~q\,
	datad => \registers[15][2]~q\,
	combout => \r1~26_combout\);

-- Location: FF_X27_Y14_N29
\registers[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][2]~q\);

-- Location: FF_X27_Y14_N7
\registers[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][2]~q\);

-- Location: LCCOMB_X27_Y14_N28
\r1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~27_combout\ = (\add1[0]~input_o\ & (\add1[1]~input_o\)) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & (\registers[10][2]~q\)) # (!\add1[1]~input_o\ & ((\registers[8][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[10][2]~q\,
	datad => \registers[8][2]~q\,
	combout => \r1~27_combout\);

-- Location: FF_X25_Y16_N29
\registers[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][2]~q\);

-- Location: LCCOMB_X25_Y16_N28
\r1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~28_combout\ = (\r1~27_combout\ & ((\registers[11][2]~q\) # ((!\add1[0]~input_o\)))) # (!\r1~27_combout\ & (((\registers[9][2]~q\ & \add1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[11][2]~q\,
	datab => \r1~27_combout\,
	datac => \registers[9][2]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~28_combout\);

-- Location: LCCOMB_X25_Y16_N8
\r1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~29_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & (\r1~26_combout\)) # (!\r1~6_combout\ & ((\r1~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~0_combout\,
	datac => \r1~26_combout\,
	datad => \r1~28_combout\,
	combout => \r1~29_combout\);

-- Location: FF_X24_Y14_N15
\registers[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][2]~q\);

-- Location: FF_X24_Y14_N21
\registers[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][2]~q\);

-- Location: LCCOMB_X24_Y14_N20
\r1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~32_combout\ = (\r1~10_combout\ & (((\r1~11_combout\)))) # (!\r1~10_combout\ & ((\r1~11_combout\ & ((\registers[2][2]~q\))) # (!\r1~11_combout\ & (\registers[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[1][2]~q\,
	datab => \r1~10_combout\,
	datac => \registers[2][2]~q\,
	datad => \r1~11_combout\,
	combout => \r1~32_combout\);

-- Location: LCCOMB_X24_Y14_N14
\r1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~33_combout\ = (\r1~10_combout\ & ((\r1~32_combout\ & ((\registers[3][2]~q\))) # (!\r1~32_combout\ & (\r1~31_combout\)))) # (!\r1~10_combout\ & (((\r1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~31_combout\,
	datab => \r1~10_combout\,
	datac => \registers[3][2]~q\,
	datad => \r1~32_combout\,
	combout => \r1~33_combout\);

-- Location: LCCOMB_X25_Y16_N26
\r1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~34_combout\ = (\r1~29_combout\) # ((!\r1~6_combout\ & (!\r1~0_combout\ & \r1~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~0_combout\,
	datac => \r1~29_combout\,
	datad => \r1~33_combout\,
	combout => \r1~34_combout\);

-- Location: IOIBUF_X38_Y0_N1
\wdata[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(3),
	o => \wdata[3]~input_o\);

-- Location: FF_X30_Y15_N1
\registers[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][3]~q\);

-- Location: FF_X29_Y15_N23
\registers[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][3]~q\);

-- Location: LCCOMB_X30_Y15_N0
\r1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~36_combout\ = (\r1~35_combout\ & (((\registers[15][3]~q\)) # (!\add1[0]~input_o\))) # (!\r1~35_combout\ & (\add1[0]~input_o\ & (\registers[13][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~35_combout\,
	datab => \add1[0]~input_o\,
	datac => \registers[13][3]~q\,
	datad => \registers[15][3]~q\,
	combout => \r1~36_combout\);

-- Location: LCCOMB_X25_Y16_N20
\r1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~39_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & ((\r1~36_combout\))) # (!\r1~6_combout\ & (\r1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~38_combout\,
	datab => \r1~0_combout\,
	datac => \r1~36_combout\,
	datad => \r1~6_combout\,
	combout => \r1~39_combout\);

-- Location: FF_X26_Y15_N17
\registers[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][3]~q\);

-- Location: FF_X26_Y14_N13
\registers[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][3]~q\);

-- Location: LCCOMB_X26_Y14_N12
\r1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~43_combout\ = (\r1~42_combout\ & ((\registers[3][3]~q\) # ((!\r1~11_combout\)))) # (!\r1~42_combout\ & (((\registers[2][3]~q\ & \r1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~42_combout\,
	datab => \registers[3][3]~q\,
	datac => \registers[2][3]~q\,
	datad => \r1~11_combout\,
	combout => \r1~43_combout\);

-- Location: LCCOMB_X25_Y16_N14
\r1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~44_combout\ = (\r1~39_combout\) # ((!\r1~6_combout\ & (\r1~43_combout\ & !\r1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~39_combout\,
	datac => \r1~43_combout\,
	datad => \r1~0_combout\,
	combout => \r1~44_combout\);

-- Location: IOIBUF_X25_Y34_N1
\wdata[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(4),
	o => \wdata[4]~input_o\);

-- Location: FF_X26_Y12_N25
\registers[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][4]~q\);

-- Location: FF_X25_Y12_N19
\registers[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][4]~q\);

-- Location: LCCOMB_X26_Y12_N24
\r1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~50_combout\ = (\add1[0]~input_o\ & ((\add1[1]~input_o\) # ((\registers[5][4]~q\)))) # (!\add1[0]~input_o\ & (!\add1[1]~input_o\ & ((\registers[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[5][4]~q\,
	datad => \registers[4][4]~q\,
	combout => \r1~50_combout\);

-- Location: FF_X25_Y12_N1
\registers[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][4]~q\);

-- Location: FF_X26_Y12_N27
\registers[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][4]~q\);

-- Location: LCCOMB_X25_Y12_N0
\r1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~51_combout\ = (\add1[1]~input_o\ & ((\r1~50_combout\ & ((\registers[7][4]~q\))) # (!\r1~50_combout\ & (\registers[6][4]~q\)))) # (!\add1[1]~input_o\ & (\r1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \r1~50_combout\,
	datac => \registers[6][4]~q\,
	datad => \registers[7][4]~q\,
	combout => \r1~51_combout\);

-- Location: FF_X24_Y14_N3
\registers[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][4]~q\);

-- Location: FF_X24_Y14_N1
\registers[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][4]~q\);

-- Location: LCCOMB_X24_Y14_N0
\r1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~52_combout\ = (\r1~10_combout\ & (((\r1~11_combout\)))) # (!\r1~10_combout\ & ((\r1~11_combout\ & ((\registers[2][4]~q\))) # (!\r1~11_combout\ & (\registers[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[1][4]~q\,
	datab => \r1~10_combout\,
	datac => \registers[2][4]~q\,
	datad => \r1~11_combout\,
	combout => \r1~52_combout\);

-- Location: LCCOMB_X24_Y14_N2
\r1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~53_combout\ = (\r1~10_combout\ & ((\r1~52_combout\ & ((\registers[3][4]~q\))) # (!\r1~52_combout\ & (\r1~51_combout\)))) # (!\r1~10_combout\ & (((\r1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~51_combout\,
	datac => \registers[3][4]~q\,
	datad => \r1~52_combout\,
	combout => \r1~53_combout\);

-- Location: FF_X28_Y10_N15
\registers[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][4]~q\);

-- Location: FF_X28_Y10_N21
\registers[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][4]~q\);

-- Location: LCCOMB_X28_Y10_N20
\r1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~45_combout\ = (\add1[0]~input_o\ & (((\registers[13][4]~q\) # (\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & (\registers[12][4]~q\ & ((!\add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[12][4]~q\,
	datac => \registers[13][4]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~45_combout\);

-- Location: FF_X29_Y10_N9
\registers[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][4]~q\);

-- Location: LCCOMB_X29_Y10_N8
\r1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~46_combout\ = (\r1~45_combout\ & ((\registers[15][4]~q\) # ((!\add1[1]~input_o\)))) # (!\r1~45_combout\ & (((\registers[14][4]~q\ & \add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[15][4]~q\,
	datab => \r1~45_combout\,
	datac => \registers[14][4]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~46_combout\);

-- Location: FF_X25_Y16_N17
\registers[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][4]~q\);

-- Location: FF_X25_Y16_N3
\registers[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][4]~q\);

-- Location: LCCOMB_X25_Y16_N16
\r1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~48_combout\ = (\r1~47_combout\ & (((\registers[11][4]~q\)) # (!\add1[0]~input_o\))) # (!\r1~47_combout\ & (\add1[0]~input_o\ & (\registers[9][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~47_combout\,
	datab => \add1[0]~input_o\,
	datac => \registers[9][4]~q\,
	datad => \registers[11][4]~q\,
	combout => \r1~48_combout\);

-- Location: LCCOMB_X25_Y16_N12
\r1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~49_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & (\r1~46_combout\)) # (!\r1~6_combout\ & ((\r1~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~0_combout\,
	datac => \r1~46_combout\,
	datad => \r1~48_combout\,
	combout => \r1~49_combout\);

-- Location: LCCOMB_X25_Y16_N6
\r1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~54_combout\ = (\r1~49_combout\) # ((!\r1~6_combout\ & (!\r1~0_combout\ & \r1~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~0_combout\,
	datac => \r1~53_combout\,
	datad => \r1~49_combout\,
	combout => \r1~54_combout\);

-- Location: IOIBUF_X25_Y34_N8
\wdata[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(5),
	o => \wdata[5]~input_o\);

-- Location: FF_X30_Y17_N17
\registers[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][5]~q\);

-- Location: FF_X29_Y17_N19
\registers[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][5]~q\);

-- Location: LCCOMB_X30_Y17_N16
\r1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~58_combout\ = (\r1~57_combout\ & (((\registers[11][5]~q\)) # (!\add1[1]~input_o\))) # (!\r1~57_combout\ & (\add1[1]~input_o\ & (\registers[10][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~57_combout\,
	datab => \add1[1]~input_o\,
	datac => \registers[10][5]~q\,
	datad => \registers[11][5]~q\,
	combout => \r1~58_combout\);

-- Location: LCCOMB_X32_Y15_N10
\r1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~59_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & (\r1~56_combout\)) # (!\r1~6_combout\ & ((\r1~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~56_combout\,
	datab => \r1~6_combout\,
	datac => \r1~0_combout\,
	datad => \r1~58_combout\,
	combout => \r1~59_combout\);

-- Location: FF_X26_Y14_N3
\registers[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][5]~q\);

-- Location: FF_X26_Y12_N5
\registers[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][5]~q\);

-- Location: FF_X25_Y12_N21
\registers[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][5]~q\);

-- Location: FF_X25_Y12_N15
\registers[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][5]~q\);

-- Location: LCCOMB_X25_Y12_N20
\r1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~60_combout\ = (\add1[1]~input_o\ & ((\add1[0]~input_o\) # ((\registers[6][5]~q\)))) # (!\add1[1]~input_o\ & (!\add1[0]~input_o\ & ((\registers[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \add1[0]~input_o\,
	datac => \registers[6][5]~q\,
	datad => \registers[4][5]~q\,
	combout => \r1~60_combout\);

-- Location: LCCOMB_X26_Y12_N4
\r1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~61_combout\ = (\add1[0]~input_o\ & ((\r1~60_combout\ & (\registers[7][5]~q\)) # (!\r1~60_combout\ & ((\registers[5][5]~q\))))) # (!\add1[0]~input_o\ & (((\r1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[7][5]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[5][5]~q\,
	datad => \r1~60_combout\,
	combout => \r1~61_combout\);

-- Location: LCCOMB_X26_Y14_N2
\r1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~62_combout\ = (\r1~10_combout\ & ((\r1~11_combout\) # ((\r1~61_combout\)))) # (!\r1~10_combout\ & (!\r1~11_combout\ & (\registers[1][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~11_combout\,
	datac => \registers[1][5]~q\,
	datad => \r1~61_combout\,
	combout => \r1~62_combout\);

-- Location: FF_X26_Y14_N1
\registers[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][5]~q\);

-- Location: LCCOMB_X26_Y14_N0
\r1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~63_combout\ = (\r1~62_combout\ & ((\registers[3][5]~q\) # ((!\r1~11_combout\)))) # (!\r1~62_combout\ & (((\registers[2][5]~q\ & \r1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[3][5]~q\,
	datab => \r1~62_combout\,
	datac => \registers[2][5]~q\,
	datad => \r1~11_combout\,
	combout => \r1~63_combout\);

-- Location: LCCOMB_X25_Y14_N16
\r1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~64_combout\ = (\r1~59_combout\) # ((!\r1~6_combout\ & (!\r1~0_combout\ & \r1~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~0_combout\,
	datac => \r1~59_combout\,
	datad => \r1~63_combout\,
	combout => \r1~64_combout\);

-- Location: IOIBUF_X0_Y6_N15
\wdata[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(6),
	o => \wdata[6]~input_o\);

-- Location: FF_X32_Y15_N13
\registers[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][6]~q\);

-- Location: FF_X29_Y15_N21
\registers[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][6]~q\);

-- Location: LCCOMB_X32_Y15_N12
\r1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~66_combout\ = (\r1~65_combout\ & (((\registers[15][6]~q\)) # (!\add1[1]~input_o\))) # (!\r1~65_combout\ & (\add1[1]~input_o\ & (\registers[14][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~65_combout\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][6]~q\,
	datad => \registers[15][6]~q\,
	combout => \r1~66_combout\);

-- Location: LCCOMB_X32_Y15_N14
\r1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~69_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & ((\r1~66_combout\))) # (!\r1~6_combout\ & (\r1~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~68_combout\,
	datab => \r1~6_combout\,
	datac => \r1~0_combout\,
	datad => \r1~66_combout\,
	combout => \r1~69_combout\);

-- Location: FF_X24_Y14_N7
\registers[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][6]~q\);

-- Location: FF_X26_Y13_N1
\registers[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][6]~q\);

-- Location: FF_X25_Y12_N17
\registers[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][6]~q\);

-- Location: FF_X25_Y12_N11
\registers[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][6]~q\);

-- Location: FF_X27_Y13_N1
\registers[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][6]~q\);

-- Location: LCCOMB_X27_Y13_N0
\r1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~70_combout\ = (\add1[0]~input_o\ & (((\registers[5][6]~q\) # (\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & (\registers[4][6]~q\ & ((!\add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[4][6]~q\,
	datac => \registers[5][6]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~70_combout\);

-- Location: LCCOMB_X25_Y12_N16
\r1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~71_combout\ = (\add1[1]~input_o\ & ((\r1~70_combout\ & (\registers[7][6]~q\)) # (!\r1~70_combout\ & ((\registers[6][6]~q\))))) # (!\add1[1]~input_o\ & (((\r1~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \registers[7][6]~q\,
	datac => \registers[6][6]~q\,
	datad => \r1~70_combout\,
	combout => \r1~71_combout\);

-- Location: LCCOMB_X24_Y14_N6
\r1~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~73_combout\ = (\r1~72_combout\ & (((\registers[3][6]~q\)) # (!\r1~10_combout\))) # (!\r1~72_combout\ & (\r1~10_combout\ & ((\r1~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~72_combout\,
	datab => \r1~10_combout\,
	datac => \registers[3][6]~q\,
	datad => \r1~71_combout\,
	combout => \r1~73_combout\);

-- Location: LCCOMB_X25_Y14_N26
\r1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~74_combout\ = (\r1~69_combout\) # ((!\r1~6_combout\ & (!\r1~0_combout\ & \r1~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~0_combout\,
	datac => \r1~69_combout\,
	datad => \r1~73_combout\,
	combout => \r1~74_combout\);

-- Location: IOIBUF_X34_Y34_N15
\wdata[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(7),
	o => \wdata[7]~input_o\);

-- Location: FF_X30_Y15_N25
\registers[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][7]~q\);

-- Location: FF_X30_Y13_N13
\registers[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][7]~q\);

-- Location: LCCOMB_X30_Y13_N12
\r1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~75_combout\ = (\add1[1]~input_o\ & (((\registers[14][7]~q\) # (\add1[0]~input_o\)))) # (!\add1[1]~input_o\ & (\registers[12][7]~q\ & ((!\add1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[12][7]~q\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][7]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~75_combout\);

-- Location: LCCOMB_X30_Y15_N24
\r1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~76_combout\ = (\add1[0]~input_o\ & ((\r1~75_combout\ & (\registers[15][7]~q\)) # (!\r1~75_combout\ & ((\registers[13][7]~q\))))) # (!\add1[0]~input_o\ & (((\r1~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[15][7]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[13][7]~q\,
	datad => \r1~75_combout\,
	combout => \r1~76_combout\);

-- Location: LCCOMB_X32_Y15_N24
\r1~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~79_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & ((\r1~76_combout\))) # (!\r1~6_combout\ & (\r1~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~78_combout\,
	datab => \r1~6_combout\,
	datac => \r1~0_combout\,
	datad => \r1~76_combout\,
	combout => \r1~79_combout\);

-- Location: FF_X26_Y14_N29
\registers[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][7]~q\);

-- Location: FF_X26_Y15_N21
\registers[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][7]~q\);

-- Location: LCCOMB_X26_Y14_N28
\r1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~83_combout\ = (\r1~82_combout\ & (((\registers[3][7]~q\)) # (!\r1~11_combout\))) # (!\r1~82_combout\ & (\r1~11_combout\ & (\registers[2][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~82_combout\,
	datab => \r1~11_combout\,
	datac => \registers[2][7]~q\,
	datad => \registers[3][7]~q\,
	combout => \r1~83_combout\);

-- Location: LCCOMB_X25_Y14_N12
\r1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~84_combout\ = (\r1~79_combout\) # ((!\r1~6_combout\ & (!\r1~0_combout\ & \r1~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~0_combout\,
	datac => \r1~79_combout\,
	datad => \r1~83_combout\,
	combout => \r1~84_combout\);

-- Location: IOIBUF_X53_Y11_N8
\wdata[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(8),
	o => \wdata[8]~input_o\);

-- Location: FF_X32_Y13_N5
\registers[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[8]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][8]~q\);

-- Location: FF_X32_Y13_N7
\registers[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[8]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][8]~q\);

-- Location: LCCOMB_X32_Y13_N4
\r1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~87_combout\ = (\add1[1]~input_o\ & ((\add1[0]~input_o\) # ((\registers[10][8]~q\)))) # (!\add1[1]~input_o\ & (!\add1[0]~input_o\ & ((\registers[8][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \add1[0]~input_o\,
	datac => \registers[10][8]~q\,
	datad => \registers[8][8]~q\,
	combout => \r1~87_combout\);

-- Location: FF_X29_Y17_N13
\registers[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[8]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][8]~q\);

-- Location: LCCOMB_X29_Y17_N12
\r1~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~88_combout\ = (\r1~87_combout\ & ((\registers[11][8]~q\) # ((!\add1[0]~input_o\)))) # (!\r1~87_combout\ & (((\registers[9][8]~q\ & \add1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[11][8]~q\,
	datab => \r1~87_combout\,
	datac => \registers[9][8]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~88_combout\);

-- Location: LCCOMB_X32_Y15_N20
\r1~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~89_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & (\r1~86_combout\)) # (!\r1~6_combout\ & ((\r1~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~86_combout\,
	datab => \r1~88_combout\,
	datac => \r1~6_combout\,
	datad => \r1~0_combout\,
	combout => \r1~89_combout\);

-- Location: FF_X26_Y15_N15
\registers[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[8]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][8]~q\);

-- Location: FF_X23_Y14_N1
\registers[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[8]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][8]~q\);

-- Location: FF_X23_Y14_N27
\registers[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[8]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][8]~q\);

-- Location: LCCOMB_X23_Y14_N0
\r1~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~92_combout\ = (\r1~10_combout\ & (\r1~11_combout\)) # (!\r1~10_combout\ & ((\r1~11_combout\ & (\registers[2][8]~q\)) # (!\r1~11_combout\ & ((\registers[1][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~11_combout\,
	datac => \registers[2][8]~q\,
	datad => \registers[1][8]~q\,
	combout => \r1~92_combout\);

-- Location: LCCOMB_X26_Y15_N14
\r1~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~93_combout\ = (\r1~10_combout\ & ((\r1~92_combout\ & ((\registers[3][8]~q\))) # (!\r1~92_combout\ & (\r1~91_combout\)))) # (!\r1~10_combout\ & (((\r1~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~91_combout\,
	datab => \r1~10_combout\,
	datac => \registers[3][8]~q\,
	datad => \r1~92_combout\,
	combout => \r1~93_combout\);

-- Location: LCCOMB_X25_Y14_N6
\r1~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~94_combout\ = (\r1~89_combout\) # ((!\r1~6_combout\ & (!\r1~0_combout\ & \r1~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~0_combout\,
	datac => \r1~89_combout\,
	datad => \r1~93_combout\,
	combout => \r1~94_combout\);

-- Location: IOIBUF_X53_Y14_N8
\wdata[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(9),
	o => \wdata[9]~input_o\);

-- Location: FF_X30_Y17_N25
\registers[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[9]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][9]~q\);

-- Location: FF_X30_Y14_N17
\registers[11][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[9]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][9]~q\);

-- Location: LCCOMB_X30_Y17_N24
\r1~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~98_combout\ = (\r1~97_combout\ & (((\registers[11][9]~q\)) # (!\add1[1]~input_o\))) # (!\r1~97_combout\ & (\add1[1]~input_o\ & (\registers[10][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~97_combout\,
	datab => \add1[1]~input_o\,
	datac => \registers[10][9]~q\,
	datad => \registers[11][9]~q\,
	combout => \r1~98_combout\);

-- Location: LCCOMB_X32_Y15_N30
\r1~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~99_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & (\r1~96_combout\)) # (!\r1~6_combout\ & ((\r1~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~96_combout\,
	datab => \r1~6_combout\,
	datac => \r1~0_combout\,
	datad => \r1~98_combout\,
	combout => \r1~99_combout\);

-- Location: FF_X26_Y14_N25
\registers[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[9]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][9]~q\);

-- Location: FF_X26_Y15_N9
\registers[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[9]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][9]~q\);

-- Location: LCCOMB_X26_Y14_N24
\r1~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~103_combout\ = (\r1~102_combout\ & (((\registers[3][9]~q\)) # (!\r1~11_combout\))) # (!\r1~102_combout\ & (\r1~11_combout\ & (\registers[2][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~102_combout\,
	datab => \r1~11_combout\,
	datac => \registers[2][9]~q\,
	datad => \registers[3][9]~q\,
	combout => \r1~103_combout\);

-- Location: LCCOMB_X25_Y14_N0
\r1~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~104_combout\ = (\r1~99_combout\) # ((\r1~103_combout\ & (!\r1~0_combout\ & !\r1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~99_combout\,
	datab => \r1~103_combout\,
	datac => \r1~0_combout\,
	datad => \r1~6_combout\,
	combout => \r1~104_combout\);

-- Location: IOIBUF_X18_Y0_N22
\wdata[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(10),
	o => \wdata[10]~input_o\);

-- Location: FF_X32_Y15_N17
\registers[14][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[10]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][10]~q\);

-- Location: FF_X29_Y15_N15
\registers[15][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[10]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][10]~q\);

-- Location: LCCOMB_X32_Y15_N16
\r1~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~106_combout\ = (\r1~105_combout\ & (((\registers[15][10]~q\)) # (!\add1[1]~input_o\))) # (!\r1~105_combout\ & (\add1[1]~input_o\ & (\registers[14][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~105_combout\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][10]~q\,
	datad => \registers[15][10]~q\,
	combout => \r1~106_combout\);

-- Location: LCCOMB_X32_Y15_N26
\r1~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~109_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & ((\r1~106_combout\))) # (!\r1~6_combout\ & (\r1~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~108_combout\,
	datab => \r1~6_combout\,
	datac => \r1~0_combout\,
	datad => \r1~106_combout\,
	combout => \r1~109_combout\);

-- Location: FF_X26_Y15_N27
\registers[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[10]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][10]~q\);

-- Location: FF_X26_Y13_N23
\registers[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[10]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][10]~q\);

-- Location: FF_X25_Y13_N15
\registers[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[10]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][10]~q\);

-- Location: FF_X25_Y13_N13
\registers[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[10]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][10]~q\);

-- Location: LCCOMB_X25_Y13_N12
\r1~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~110_combout\ = (\add1[0]~input_o\ & (((\registers[5][10]~q\) # (\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & (\registers[4][10]~q\ & ((!\add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[4][10]~q\,
	datac => \registers[5][10]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~110_combout\);

-- Location: LCCOMB_X26_Y13_N22
\r1~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~111_combout\ = (\add1[1]~input_o\ & ((\r1~110_combout\ & (\registers[7][10]~q\)) # (!\r1~110_combout\ & ((\registers[6][10]~q\))))) # (!\add1[1]~input_o\ & (((\r1~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[7][10]~q\,
	datab => \add1[1]~input_o\,
	datac => \registers[6][10]~q\,
	datad => \r1~110_combout\,
	combout => \r1~111_combout\);

-- Location: LCCOMB_X26_Y15_N26
\r1~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~113_combout\ = (\r1~112_combout\ & (((\registers[3][10]~q\)) # (!\r1~10_combout\))) # (!\r1~112_combout\ & (\r1~10_combout\ & ((\r1~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~112_combout\,
	datab => \r1~10_combout\,
	datac => \registers[3][10]~q\,
	datad => \r1~111_combout\,
	combout => \r1~113_combout\);

-- Location: LCCOMB_X25_Y14_N10
\r1~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~114_combout\ = (\r1~109_combout\) # ((!\r1~0_combout\ & (\r1~113_combout\ & !\r1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~109_combout\,
	datab => \r1~0_combout\,
	datac => \r1~113_combout\,
	datad => \r1~6_combout\,
	combout => \r1~114_combout\);

-- Location: IOIBUF_X18_Y34_N1
\wdata[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(11),
	o => \wdata[11]~input_o\);

-- Location: FF_X27_Y12_N1
\registers[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[11]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][11]~q\);

-- Location: FF_X25_Y13_N1
\registers[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[11]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][11]~q\);

-- Location: FF_X26_Y13_N11
\registers[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[11]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][11]~q\);

-- Location: FF_X25_Y13_N3
\registers[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[11]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][11]~q\);

-- Location: LCCOMB_X26_Y13_N10
\r1~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~120_combout\ = (\add1[1]~input_o\ & ((\add1[0]~input_o\) # ((\registers[6][11]~q\)))) # (!\add1[1]~input_o\ & (!\add1[0]~input_o\ & ((\registers[4][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \add1[0]~input_o\,
	datac => \registers[6][11]~q\,
	datad => \registers[4][11]~q\,
	combout => \r1~120_combout\);

-- Location: LCCOMB_X25_Y13_N0
\r1~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~121_combout\ = (\add1[0]~input_o\ & ((\r1~120_combout\ & (\registers[7][11]~q\)) # (!\r1~120_combout\ & ((\registers[5][11]~q\))))) # (!\add1[0]~input_o\ & (((\r1~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[7][11]~q\,
	datac => \registers[5][11]~q\,
	datad => \r1~120_combout\,
	combout => \r1~121_combout\);

-- Location: FF_X26_Y14_N15
\registers[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[11]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][11]~q\);

-- Location: LCCOMB_X26_Y14_N14
\r1~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~122_combout\ = (\r1~10_combout\ & ((\r1~121_combout\) # ((\r1~11_combout\)))) # (!\r1~10_combout\ & (((\registers[1][11]~q\ & !\r1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~121_combout\,
	datac => \registers[1][11]~q\,
	datad => \r1~11_combout\,
	combout => \r1~122_combout\);

-- Location: FF_X26_Y14_N21
\registers[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[11]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][11]~q\);

-- Location: FF_X26_Y15_N5
\registers[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[11]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][11]~q\);

-- Location: LCCOMB_X26_Y14_N20
\r1~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~123_combout\ = (\r1~11_combout\ & ((\r1~122_combout\ & ((\registers[3][11]~q\))) # (!\r1~122_combout\ & (\registers[2][11]~q\)))) # (!\r1~11_combout\ & (\r1~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~11_combout\,
	datab => \r1~122_combout\,
	datac => \registers[2][11]~q\,
	datad => \registers[3][11]~q\,
	combout => \r1~123_combout\);

-- Location: FF_X30_Y13_N17
\registers[14][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[11]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][11]~q\);

-- Location: FF_X30_Y15_N27
\registers[12][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[11]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][11]~q\);

-- Location: LCCOMB_X30_Y13_N16
\r1~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~115_combout\ = (\add1[0]~input_o\ & (\add1[1]~input_o\)) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & (\registers[14][11]~q\)) # (!\add1[1]~input_o\ & ((\registers[12][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][11]~q\,
	datad => \registers[12][11]~q\,
	combout => \r1~115_combout\);

-- Location: FF_X30_Y15_N9
\registers[13][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[11]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][11]~q\);

-- Location: LCCOMB_X30_Y15_N8
\r1~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~116_combout\ = (\r1~115_combout\ & ((\registers[15][11]~q\) # ((!\add1[0]~input_o\)))) # (!\r1~115_combout\ & (((\registers[13][11]~q\ & \add1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[15][11]~q\,
	datab => \r1~115_combout\,
	datac => \registers[13][11]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~116_combout\);

-- Location: LCCOMB_X32_Y15_N28
\r1~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~119_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & ((\r1~116_combout\))) # (!\r1~6_combout\ & (\r1~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~118_combout\,
	datab => \r1~6_combout\,
	datac => \r1~116_combout\,
	datad => \r1~0_combout\,
	combout => \r1~119_combout\);

-- Location: LCCOMB_X31_Y13_N16
\r1~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~124_combout\ = (\r1~119_combout\) # ((!\r1~6_combout\ & (!\r1~0_combout\ & \r1~123_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~0_combout\,
	datac => \r1~123_combout\,
	datad => \r1~119_combout\,
	combout => \r1~124_combout\);

-- Location: IOIBUF_X49_Y0_N8
\wdata[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(12),
	o => \wdata[12]~input_o\);

-- Location: FF_X30_Y14_N31
\registers[11][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[12]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][12]~q\);

-- Location: FF_X31_Y15_N21
\registers[9][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[12]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][12]~q\);

-- Location: LCCOMB_X31_Y15_N20
\r1~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~128_combout\ = (\r1~127_combout\ & ((\registers[11][12]~q\) # ((!\add1[0]~input_o\)))) # (!\r1~127_combout\ & (((\registers[9][12]~q\ & \add1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~127_combout\,
	datab => \registers[11][12]~q\,
	datac => \registers[9][12]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~128_combout\);

-- Location: LCCOMB_X32_Y15_N22
\r1~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~129_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & (\r1~126_combout\)) # (!\r1~6_combout\ & ((\r1~128_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~126_combout\,
	datab => \r1~6_combout\,
	datac => \r1~0_combout\,
	datad => \r1~128_combout\,
	combout => \r1~129_combout\);

-- Location: FF_X24_Y13_N17
\registers[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[12]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][12]~q\);

-- Location: FF_X24_Y13_N11
\registers[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[12]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][12]~q\);

-- Location: LCCOMB_X24_Y13_N16
\r1~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~131_combout\ = (\r1~130_combout\ & (((\registers[7][12]~q\)) # (!\add1[1]~input_o\))) # (!\r1~130_combout\ & (\add1[1]~input_o\ & (\registers[6][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~130_combout\,
	datab => \add1[1]~input_o\,
	datac => \registers[6][12]~q\,
	datad => \registers[7][12]~q\,
	combout => \r1~131_combout\);

-- Location: FF_X26_Y15_N31
\registers[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[12]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][12]~q\);

-- Location: LCCOMB_X26_Y15_N30
\r1~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~133_combout\ = (\r1~132_combout\ & (((\registers[3][12]~q\) # (!\r1~10_combout\)))) # (!\r1~132_combout\ & (\r1~131_combout\ & ((\r1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~132_combout\,
	datab => \r1~131_combout\,
	datac => \registers[3][12]~q\,
	datad => \r1~10_combout\,
	combout => \r1~133_combout\);

-- Location: LCCOMB_X31_Y13_N2
\r1~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~134_combout\ = (\r1~129_combout\) # ((!\r1~0_combout\ & (!\r1~6_combout\ & \r1~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~129_combout\,
	datab => \r1~0_combout\,
	datac => \r1~6_combout\,
	datad => \r1~133_combout\,
	combout => \r1~134_combout\);

-- Location: IOIBUF_X34_Y0_N15
\wdata[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(13),
	o => \wdata[13]~input_o\);

-- Location: FF_X28_Y14_N9
\registers[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[13]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][13]~q\);

-- Location: FF_X26_Y14_N17
\registers[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[13]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][13]~q\);

-- Location: LCCOMB_X26_Y14_N16
\r1~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~143_combout\ = (\r1~142_combout\ & ((\registers[3][13]~q\) # ((!\r1~11_combout\)))) # (!\r1~142_combout\ & (((\registers[2][13]~q\ & \r1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~142_combout\,
	datab => \registers[3][13]~q\,
	datac => \registers[2][13]~q\,
	datad => \r1~11_combout\,
	combout => \r1~143_combout\);

-- Location: FF_X30_Y15_N29
\registers[13][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[13]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][13]~q\);

-- Location: FF_X29_Y16_N11
\registers[15][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[13]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][13]~q\);

-- Location: LCCOMB_X30_Y15_N28
\r1~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~136_combout\ = (\r1~135_combout\ & (((\registers[15][13]~q\)) # (!\add1[0]~input_o\))) # (!\r1~135_combout\ & (\add1[0]~input_o\ & (\registers[13][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~135_combout\,
	datab => \add1[0]~input_o\,
	datac => \registers[13][13]~q\,
	datad => \registers[15][13]~q\,
	combout => \r1~136_combout\);

-- Location: FF_X31_Y13_N13
\registers[10][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[13]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][13]~q\);

-- Location: FF_X31_Y14_N1
\registers[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[13]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][13]~q\);

-- Location: LCCOMB_X31_Y14_N0
\r1~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~137_combout\ = (\add1[1]~input_o\ & (((\add1[0]~input_o\)))) # (!\add1[1]~input_o\ & ((\add1[0]~input_o\ & ((\registers[9][13]~q\))) # (!\add1[0]~input_o\ & (\registers[8][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[8][13]~q\,
	datab => \add1[1]~input_o\,
	datac => \registers[9][13]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~137_combout\);

-- Location: LCCOMB_X31_Y13_N12
\r1~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~138_combout\ = (\add1[1]~input_o\ & ((\r1~137_combout\ & (\registers[11][13]~q\)) # (!\r1~137_combout\ & ((\registers[10][13]~q\))))) # (!\add1[1]~input_o\ & (((\r1~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[11][13]~q\,
	datab => \add1[1]~input_o\,
	datac => \registers[10][13]~q\,
	datad => \r1~137_combout\,
	combout => \r1~138_combout\);

-- Location: LCCOMB_X31_Y13_N8
\r1~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~139_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & (\r1~136_combout\)) # (!\r1~6_combout\ & ((\r1~138_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~136_combout\,
	datac => \r1~0_combout\,
	datad => \r1~138_combout\,
	combout => \r1~139_combout\);

-- Location: LCCOMB_X31_Y13_N26
\r1~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~144_combout\ = (\r1~139_combout\) # ((!\r1~6_combout\ & (\r1~143_combout\ & !\r1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~143_combout\,
	datac => \r1~139_combout\,
	datad => \r1~0_combout\,
	combout => \r1~144_combout\);

-- Location: IOIBUF_X53_Y15_N8
\wdata[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(14),
	o => \wdata[14]~input_o\);

-- Location: FF_X32_Y13_N9
\registers[10][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[14]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][14]~q\);

-- Location: FF_X32_Y13_N11
\registers[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[14]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][14]~q\);

-- Location: LCCOMB_X32_Y13_N8
\r1~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~147_combout\ = (\add1[1]~input_o\ & ((\add1[0]~input_o\) # ((\registers[10][14]~q\)))) # (!\add1[1]~input_o\ & (!\add1[0]~input_o\ & ((\registers[8][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \add1[0]~input_o\,
	datac => \registers[10][14]~q\,
	datad => \registers[8][14]~q\,
	combout => \r1~147_combout\);

-- Location: FF_X31_Y15_N7
\registers[9][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[14]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][14]~q\);

-- Location: FF_X30_Y14_N25
\registers[11][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[14]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][14]~q\);

-- Location: LCCOMB_X31_Y15_N6
\r1~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~148_combout\ = (\add1[0]~input_o\ & ((\r1~147_combout\ & ((\registers[11][14]~q\))) # (!\r1~147_combout\ & (\registers[9][14]~q\)))) # (!\add1[0]~input_o\ & (\r1~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \r1~147_combout\,
	datac => \registers[9][14]~q\,
	datad => \registers[11][14]~q\,
	combout => \r1~148_combout\);

-- Location: LCCOMB_X31_Y13_N20
\r1~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~149_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & (\r1~146_combout\)) # (!\r1~6_combout\ & ((\r1~148_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~146_combout\,
	datab => \r1~0_combout\,
	datac => \r1~148_combout\,
	datad => \r1~6_combout\,
	combout => \r1~149_combout\);

-- Location: FF_X24_Y13_N9
\registers[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[14]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][14]~q\);

-- Location: FF_X27_Y13_N19
\registers[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[14]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][14]~q\);

-- Location: FF_X27_Y13_N13
\registers[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[14]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][14]~q\);

-- Location: LCCOMB_X27_Y13_N18
\r1~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~150_combout\ = (\add1[1]~input_o\ & (\add1[0]~input_o\)) # (!\add1[1]~input_o\ & ((\add1[0]~input_o\ & (\registers[5][14]~q\)) # (!\add1[0]~input_o\ & ((\registers[4][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \add1[0]~input_o\,
	datac => \registers[5][14]~q\,
	datad => \registers[4][14]~q\,
	combout => \r1~150_combout\);

-- Location: LCCOMB_X24_Y13_N8
\r1~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~151_combout\ = (\add1[1]~input_o\ & ((\r1~150_combout\ & (\registers[7][14]~q\)) # (!\r1~150_combout\ & ((\registers[6][14]~q\))))) # (!\add1[1]~input_o\ & (((\r1~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[7][14]~q\,
	datab => \add1[1]~input_o\,
	datac => \registers[6][14]~q\,
	datad => \r1~150_combout\,
	combout => \r1~151_combout\);

-- Location: FF_X28_Y14_N27
\registers[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[14]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][14]~q\);

-- Location: LCCOMB_X28_Y14_N26
\r1~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~153_combout\ = (\r1~152_combout\ & (((\registers[3][14]~q\) # (!\r1~10_combout\)))) # (!\r1~152_combout\ & (\r1~151_combout\ & ((\r1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~152_combout\,
	datab => \r1~151_combout\,
	datac => \registers[3][14]~q\,
	datad => \r1~10_combout\,
	combout => \r1~153_combout\);

-- Location: LCCOMB_X30_Y11_N8
\r1~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~154_combout\ = (\r1~149_combout\) # ((\r1~153_combout\ & (!\r1~6_combout\ & !\r1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~149_combout\,
	datab => \r1~153_combout\,
	datac => \r1~6_combout\,
	datad => \r1~0_combout\,
	combout => \r1~154_combout\);

-- Location: IOIBUF_X45_Y0_N22
\wdata[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(15),
	o => \wdata[15]~input_o\);

-- Location: FF_X30_Y11_N29
\registers[15][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[15]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][15]~q\);

-- Location: FF_X30_Y11_N3
\registers[13][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[15]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][15]~q\);

-- Location: FF_X31_Y11_N25
\registers[14][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[15]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][15]~q\);

-- Location: FF_X31_Y11_N11
\registers[12][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[15]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][15]~q\);

-- Location: LCCOMB_X31_Y11_N24
\r1~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~155_combout\ = (\add1[0]~input_o\ & (\add1[1]~input_o\)) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & (\registers[14][15]~q\)) # (!\add1[1]~input_o\ & ((\registers[12][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][15]~q\,
	datad => \registers[12][15]~q\,
	combout => \r1~155_combout\);

-- Location: LCCOMB_X30_Y11_N2
\r1~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~156_combout\ = (\add1[0]~input_o\ & ((\r1~155_combout\ & (\registers[15][15]~q\)) # (!\r1~155_combout\ & ((\registers[13][15]~q\))))) # (!\add1[0]~input_o\ & (((\r1~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[15][15]~q\,
	datac => \registers[13][15]~q\,
	datad => \r1~155_combout\,
	combout => \r1~156_combout\);

-- Location: LCCOMB_X30_Y11_N6
\r1~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~159_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & ((\r1~156_combout\))) # (!\r1~6_combout\ & (\r1~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~158_combout\,
	datab => \r1~0_combout\,
	datac => \r1~6_combout\,
	datad => \r1~156_combout\,
	combout => \r1~159_combout\);

-- Location: FF_X28_Y14_N21
\registers[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[15]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][15]~q\);

-- Location: FF_X29_Y14_N1
\registers[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[15]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][15]~q\);

-- Location: LCCOMB_X29_Y14_N0
\r1~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~163_combout\ = (\r1~162_combout\ & ((\registers[3][15]~q\) # ((!\r1~11_combout\)))) # (!\r1~162_combout\ & (((\registers[2][15]~q\ & \r1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~162_combout\,
	datab => \registers[3][15]~q\,
	datac => \registers[2][15]~q\,
	datad => \r1~11_combout\,
	combout => \r1~163_combout\);

-- Location: LCCOMB_X30_Y11_N16
\r1~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~164_combout\ = (\r1~159_combout\) # ((!\r1~0_combout\ & (!\r1~6_combout\ & \r1~163_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~159_combout\,
	datab => \r1~0_combout\,
	datac => \r1~6_combout\,
	datad => \r1~163_combout\,
	combout => \r1~164_combout\);

-- Location: IOIBUF_X0_Y15_N1
\wdata[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(16),
	o => \wdata[16]~input_o\);

-- Location: FF_X23_Y14_N17
\registers[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[16]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][16]~q\);

-- Location: FF_X23_Y14_N19
\registers[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[16]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][16]~q\);

-- Location: LCCOMB_X23_Y14_N16
\r1~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~172_combout\ = (\r1~10_combout\ & (\r1~11_combout\)) # (!\r1~10_combout\ & ((\r1~11_combout\ & (\registers[2][16]~q\)) # (!\r1~11_combout\ & ((\registers[1][16]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~11_combout\,
	datac => \registers[2][16]~q\,
	datad => \registers[1][16]~q\,
	combout => \r1~172_combout\);

-- Location: FF_X28_Y14_N23
\registers[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[16]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][16]~q\);

-- Location: LCCOMB_X28_Y14_N22
\r1~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~173_combout\ = (\r1~172_combout\ & (((\registers[3][16]~q\) # (!\r1~10_combout\)))) # (!\r1~172_combout\ & (\r1~171_combout\ & ((\r1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~171_combout\,
	datab => \r1~172_combout\,
	datac => \registers[3][16]~q\,
	datad => \r1~10_combout\,
	combout => \r1~173_combout\);

-- Location: FF_X31_Y14_N3
\registers[8][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[16]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][16]~q\);

-- Location: FF_X31_Y15_N25
\registers[10][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[16]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][16]~q\);

-- Location: LCCOMB_X31_Y15_N24
\r1~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~167_combout\ = (\add1[1]~input_o\ & (((\registers[10][16]~q\) # (\add1[0]~input_o\)))) # (!\add1[1]~input_o\ & (\registers[8][16]~q\ & ((!\add1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \registers[8][16]~q\,
	datac => \registers[10][16]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~167_combout\);

-- Location: FF_X31_Y14_N9
\registers[9][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[16]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][16]~q\);

-- Location: FF_X32_Y14_N25
\registers[11][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[16]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][16]~q\);

-- Location: LCCOMB_X31_Y14_N8
\r1~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~168_combout\ = (\add1[0]~input_o\ & ((\r1~167_combout\ & ((\registers[11][16]~q\))) # (!\r1~167_combout\ & (\registers[9][16]~q\)))) # (!\add1[0]~input_o\ & (\r1~167_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \r1~167_combout\,
	datac => \registers[9][16]~q\,
	datad => \registers[11][16]~q\,
	combout => \r1~168_combout\);

-- Location: LCCOMB_X30_Y11_N10
\r1~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~169_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & (\r1~166_combout\)) # (!\r1~6_combout\ & ((\r1~168_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~166_combout\,
	datab => \r1~0_combout\,
	datac => \r1~168_combout\,
	datad => \r1~6_combout\,
	combout => \r1~169_combout\);

-- Location: LCCOMB_X30_Y11_N12
\r1~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~174_combout\ = (\r1~169_combout\) # ((\r1~173_combout\ & (!\r1~0_combout\ & !\r1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~173_combout\,
	datab => \r1~0_combout\,
	datac => \r1~6_combout\,
	datad => \r1~169_combout\,
	combout => \r1~174_combout\);

-- Location: IOIBUF_X45_Y34_N1
\wdata[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(17),
	o => \wdata[17]~input_o\);

-- Location: FF_X28_Y14_N25
\registers[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[17]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][17]~q\);

-- Location: FF_X29_Y14_N5
\registers[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[17]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][17]~q\);

-- Location: LCCOMB_X29_Y14_N4
\r1~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~183_combout\ = (\r1~182_combout\ & ((\registers[3][17]~q\) # ((!\r1~11_combout\)))) # (!\r1~182_combout\ & (((\registers[2][17]~q\ & \r1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~182_combout\,
	datab => \registers[3][17]~q\,
	datac => \registers[2][17]~q\,
	datad => \r1~11_combout\,
	combout => \r1~183_combout\);

-- Location: FF_X31_Y14_N21
\registers[9][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[17]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][17]~q\);

-- Location: FF_X31_Y14_N15
\registers[8][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[17]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][17]~q\);

-- Location: LCCOMB_X31_Y14_N20
\r1~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~177_combout\ = (\add1[0]~input_o\ & ((\add1[1]~input_o\) # ((\registers[9][17]~q\)))) # (!\add1[0]~input_o\ & (!\add1[1]~input_o\ & ((\registers[8][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[9][17]~q\,
	datad => \registers[8][17]~q\,
	combout => \r1~177_combout\);

-- Location: FF_X32_Y11_N17
\registers[10][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[17]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][17]~q\);

-- Location: FF_X32_Y14_N27
\registers[11][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[17]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][17]~q\);

-- Location: LCCOMB_X32_Y11_N16
\r1~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~178_combout\ = (\add1[1]~input_o\ & ((\r1~177_combout\ & ((\registers[11][17]~q\))) # (!\r1~177_combout\ & (\registers[10][17]~q\)))) # (!\add1[1]~input_o\ & (\r1~177_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \r1~177_combout\,
	datac => \registers[10][17]~q\,
	datad => \registers[11][17]~q\,
	combout => \r1~178_combout\);

-- Location: LCCOMB_X30_Y11_N24
\r1~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~179_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & (\r1~176_combout\)) # (!\r1~6_combout\ & ((\r1~178_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~176_combout\,
	datab => \r1~0_combout\,
	datac => \r1~6_combout\,
	datad => \r1~178_combout\,
	combout => \r1~179_combout\);

-- Location: LCCOMB_X30_Y11_N26
\r1~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~184_combout\ = (\r1~179_combout\) # ((\r1~183_combout\ & (!\r1~0_combout\ & !\r1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~183_combout\,
	datab => \r1~179_combout\,
	datac => \r1~0_combout\,
	datad => \r1~6_combout\,
	combout => \r1~184_combout\);

-- Location: IOIBUF_X0_Y11_N1
\wdata[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(18),
	o => \wdata[18]~input_o\);

-- Location: FF_X27_Y12_N13
\registers[7][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[18]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][18]~q\);

-- Location: FF_X28_Y13_N19
\registers[6][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[18]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][18]~q\);

-- Location: LCCOMB_X28_Y13_N18
\r1~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~191_combout\ = (\r1~190_combout\ & ((\registers[7][18]~q\) # ((!\add1[1]~input_o\)))) # (!\r1~190_combout\ & (((\registers[6][18]~q\ & \add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~190_combout\,
	datab => \registers[7][18]~q\,
	datac => \registers[6][18]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~191_combout\);

-- Location: FF_X28_Y14_N3
\registers[3][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[18]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][18]~q\);

-- Location: FF_X29_Y14_N17
\registers[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[18]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][18]~q\);

-- Location: LCCOMB_X29_Y14_N16
\r1~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~192_combout\ = (\r1~11_combout\ & (((\registers[2][18]~q\) # (\r1~10_combout\)))) # (!\r1~11_combout\ & (\registers[1][18]~q\ & ((!\r1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[1][18]~q\,
	datab => \r1~11_combout\,
	datac => \registers[2][18]~q\,
	datad => \r1~10_combout\,
	combout => \r1~192_combout\);

-- Location: LCCOMB_X28_Y14_N2
\r1~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~193_combout\ = (\r1~10_combout\ & ((\r1~192_combout\ & ((\registers[3][18]~q\))) # (!\r1~192_combout\ & (\r1~191_combout\)))) # (!\r1~10_combout\ & (((\r1~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~191_combout\,
	datac => \registers[3][18]~q\,
	datad => \r1~192_combout\,
	combout => \r1~193_combout\);

-- Location: FF_X31_Y11_N17
\registers[14][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[18]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][18]~q\);

-- Location: FF_X31_Y12_N9
\registers[15][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[18]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][18]~q\);

-- Location: LCCOMB_X31_Y11_N16
\r1~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~186_combout\ = (\r1~185_combout\ & (((\registers[15][18]~q\)) # (!\add1[1]~input_o\))) # (!\r1~185_combout\ & (\add1[1]~input_o\ & (\registers[14][18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~185_combout\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][18]~q\,
	datad => \registers[15][18]~q\,
	combout => \r1~186_combout\);

-- Location: LCCOMB_X31_Y11_N4
\r1~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~189_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & ((\r1~186_combout\))) # (!\r1~6_combout\ & (\r1~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~188_combout\,
	datab => \r1~186_combout\,
	datac => \r1~6_combout\,
	datad => \r1~0_combout\,
	combout => \r1~189_combout\);

-- Location: LCCOMB_X31_Y11_N30
\r1~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~194_combout\ = (\r1~189_combout\) # ((\r1~193_combout\ & (!\r1~6_combout\ & !\r1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~193_combout\,
	datab => \r1~6_combout\,
	datac => \r1~189_combout\,
	datad => \r1~0_combout\,
	combout => \r1~194_combout\);

-- Location: IOIBUF_X53_Y20_N15
\wdata[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(19),
	o => \wdata[19]~input_o\);

-- Location: FF_X31_Y12_N27
\registers[15][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[19]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][19]~q\);

-- Location: FF_X29_Y12_N13
\registers[13][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[19]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][19]~q\);

-- Location: FF_X31_Y11_N1
\registers[14][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[19]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][19]~q\);

-- Location: LCCOMB_X31_Y11_N0
\r1~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~195_combout\ = (\add1[1]~input_o\ & (((\registers[14][19]~q\) # (\add1[0]~input_o\)))) # (!\add1[1]~input_o\ & (\registers[12][19]~q\ & ((!\add1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[12][19]~q\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][19]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~195_combout\);

-- Location: LCCOMB_X29_Y12_N12
\r1~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~196_combout\ = (\add1[0]~input_o\ & ((\r1~195_combout\ & (\registers[15][19]~q\)) # (!\r1~195_combout\ & ((\registers[13][19]~q\))))) # (!\add1[0]~input_o\ & (((\r1~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[15][19]~q\,
	datac => \registers[13][19]~q\,
	datad => \r1~195_combout\,
	combout => \r1~196_combout\);

-- Location: FF_X31_Y14_N29
\registers[9][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[19]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][19]~q\);

-- Location: LCCOMB_X31_Y14_N28
\r1~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~197_combout\ = (\add1[1]~input_o\ & (((\add1[0]~input_o\)))) # (!\add1[1]~input_o\ & ((\add1[0]~input_o\ & ((\registers[9][19]~q\))) # (!\add1[0]~input_o\ & (\registers[8][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[8][19]~q\,
	datab => \add1[1]~input_o\,
	datac => \registers[9][19]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~197_combout\);

-- Location: FF_X32_Y11_N11
\registers[10][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[19]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][19]~q\);

-- Location: FF_X32_Y14_N7
\registers[11][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[19]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][19]~q\);

-- Location: LCCOMB_X32_Y11_N10
\r1~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~198_combout\ = (\add1[1]~input_o\ & ((\r1~197_combout\ & ((\registers[11][19]~q\))) # (!\r1~197_combout\ & (\registers[10][19]~q\)))) # (!\add1[1]~input_o\ & (\r1~197_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \r1~197_combout\,
	datac => \registers[10][19]~q\,
	datad => \registers[11][19]~q\,
	combout => \r1~198_combout\);

-- Location: LCCOMB_X28_Y12_N10
\r1~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~199_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & (\r1~196_combout\)) # (!\r1~6_combout\ & ((\r1~198_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~0_combout\,
	datab => \r1~6_combout\,
	datac => \r1~196_combout\,
	datad => \r1~198_combout\,
	combout => \r1~199_combout\);

-- Location: FF_X28_Y14_N15
\registers[3][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[19]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][19]~q\);

-- Location: FF_X28_Y14_N29
\registers[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[19]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][19]~q\);

-- Location: LCCOMB_X28_Y14_N28
\r1~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~203_combout\ = (\r1~202_combout\ & ((\registers[3][19]~q\) # ((!\r1~11_combout\)))) # (!\r1~202_combout\ & (((\registers[2][19]~q\ & \r1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~202_combout\,
	datab => \registers[3][19]~q\,
	datac => \registers[2][19]~q\,
	datad => \r1~11_combout\,
	combout => \r1~203_combout\);

-- Location: LCCOMB_X28_Y12_N20
\r1~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~204_combout\ = (\r1~199_combout\) # ((!\r1~6_combout\ & (!\r1~0_combout\ & \r1~203_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~199_combout\,
	datab => \r1~6_combout\,
	datac => \r1~0_combout\,
	datad => \r1~203_combout\,
	combout => \r1~204_combout\);

-- Location: IOIBUF_X34_Y0_N22
\wdata[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(20),
	o => \wdata[20]~input_o\);

-- Location: FF_X26_Y14_N5
\registers[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[20]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][20]~q\);

-- Location: FF_X26_Y14_N7
\registers[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[20]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][20]~q\);

-- Location: LCCOMB_X26_Y14_N4
\r1~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~212_combout\ = (\r1~10_combout\ & (\r1~11_combout\)) # (!\r1~10_combout\ & ((\r1~11_combout\ & (\registers[2][20]~q\)) # (!\r1~11_combout\ & ((\registers[1][20]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~11_combout\,
	datac => \registers[2][20]~q\,
	datad => \registers[1][20]~q\,
	combout => \r1~212_combout\);

-- Location: FF_X28_Y14_N1
\registers[3][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[20]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][20]~q\);

-- Location: LCCOMB_X28_Y14_N0
\r1~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~213_combout\ = (\r1~212_combout\ & (((\registers[3][20]~q\) # (!\r1~10_combout\)))) # (!\r1~212_combout\ & (\r1~211_combout\ & ((\r1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~211_combout\,
	datab => \r1~212_combout\,
	datac => \registers[3][20]~q\,
	datad => \r1~10_combout\,
	combout => \r1~213_combout\);

-- Location: FF_X31_Y11_N13
\registers[14][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[20]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][20]~q\);

-- Location: FF_X31_Y12_N5
\registers[15][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[20]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][20]~q\);

-- Location: LCCOMB_X31_Y11_N12
\r1~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~206_combout\ = (\r1~205_combout\ & (((\registers[15][20]~q\)) # (!\add1[1]~input_o\))) # (!\r1~205_combout\ & (\add1[1]~input_o\ & (\registers[14][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~205_combout\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][20]~q\,
	datad => \registers[15][20]~q\,
	combout => \r1~206_combout\);

-- Location: FF_X25_Y14_N29
\registers[9][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[20]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][20]~q\);

-- Location: FF_X32_Y13_N21
\registers[10][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[20]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][20]~q\);

-- Location: FF_X32_Y13_N23
\registers[8][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[20]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][20]~q\);

-- Location: LCCOMB_X32_Y13_N20
\r1~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~207_combout\ = (\add1[1]~input_o\ & ((\add1[0]~input_o\) # ((\registers[10][20]~q\)))) # (!\add1[1]~input_o\ & (!\add1[0]~input_o\ & ((\registers[8][20]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \add1[0]~input_o\,
	datac => \registers[10][20]~q\,
	datad => \registers[8][20]~q\,
	combout => \r1~207_combout\);

-- Location: LCCOMB_X25_Y14_N28
\r1~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~208_combout\ = (\add1[0]~input_o\ & ((\r1~207_combout\ & (\registers[11][20]~q\)) # (!\r1~207_combout\ & ((\registers[9][20]~q\))))) # (!\add1[0]~input_o\ & (((\r1~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[11][20]~q\,
	datab => \add1[0]~input_o\,
	datac => \registers[9][20]~q\,
	datad => \r1~207_combout\,
	combout => \r1~208_combout\);

-- Location: LCCOMB_X25_Y14_N24
\r1~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~209_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & (\r1~206_combout\)) # (!\r1~6_combout\ & ((\r1~208_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~0_combout\,
	datac => \r1~206_combout\,
	datad => \r1~208_combout\,
	combout => \r1~209_combout\);

-- Location: LCCOMB_X25_Y14_N2
\r1~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~214_combout\ = (\r1~209_combout\) # ((!\r1~6_combout\ & (!\r1~0_combout\ & \r1~213_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~0_combout\,
	datac => \r1~213_combout\,
	datad => \r1~209_combout\,
	combout => \r1~214_combout\);

-- Location: IOIBUF_X14_Y0_N22
\wdata[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(21),
	o => \wdata[21]~input_o\);

-- Location: FF_X31_Y12_N15
\registers[15][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[21]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][21]~q\);

-- Location: FF_X29_Y12_N1
\registers[13][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[21]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][21]~q\);

-- Location: FF_X31_Y11_N9
\registers[14][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[21]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][21]~q\);

-- Location: FF_X31_Y11_N3
\registers[12][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[21]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][21]~q\);

-- Location: LCCOMB_X31_Y11_N8
\r1~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~215_combout\ = (\add1[0]~input_o\ & (\add1[1]~input_o\)) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & (\registers[14][21]~q\)) # (!\add1[1]~input_o\ & ((\registers[12][21]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][21]~q\,
	datad => \registers[12][21]~q\,
	combout => \r1~215_combout\);

-- Location: LCCOMB_X29_Y12_N0
\r1~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~216_combout\ = (\add1[0]~input_o\ & ((\r1~215_combout\ & (\registers[15][21]~q\)) # (!\r1~215_combout\ & ((\registers[13][21]~q\))))) # (!\add1[0]~input_o\ & (((\r1~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[15][21]~q\,
	datac => \registers[13][21]~q\,
	datad => \r1~215_combout\,
	combout => \r1~216_combout\);

-- Location: LCCOMB_X31_Y13_N10
\r1~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~219_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & ((\r1~216_combout\))) # (!\r1~6_combout\ & (\r1~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~218_combout\,
	datab => \r1~0_combout\,
	datac => \r1~6_combout\,
	datad => \r1~216_combout\,
	combout => \r1~219_combout\);

-- Location: FF_X30_Y12_N1
\registers[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[21]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][21]~q\);

-- Location: FF_X29_Y12_N19
\registers[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[21]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][21]~q\);

-- Location: LCCOMB_X29_Y12_N18
\r1~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~222_combout\ = (\r1~11_combout\ & (((\r1~10_combout\)))) # (!\r1~11_combout\ & ((\r1~10_combout\ & (\r1~221_combout\)) # (!\r1~10_combout\ & ((\registers[1][21]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~221_combout\,
	datab => \r1~11_combout\,
	datac => \registers[1][21]~q\,
	datad => \r1~10_combout\,
	combout => \r1~222_combout\);

-- Location: LCCOMB_X30_Y12_N0
\r1~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~223_combout\ = (\r1~11_combout\ & ((\r1~222_combout\ & (\registers[3][21]~q\)) # (!\r1~222_combout\ & ((\registers[2][21]~q\))))) # (!\r1~11_combout\ & (((\r1~222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[3][21]~q\,
	datab => \r1~11_combout\,
	datac => \registers[2][21]~q\,
	datad => \r1~222_combout\,
	combout => \r1~223_combout\);

-- Location: LCCOMB_X31_Y13_N28
\r1~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~224_combout\ = (\r1~219_combout\) # ((!\r1~0_combout\ & (\r1~223_combout\ & !\r1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~219_combout\,
	datab => \r1~0_combout\,
	datac => \r1~223_combout\,
	datad => \r1~6_combout\,
	combout => \r1~224_combout\);

-- Location: IOIBUF_X53_Y17_N22
\wdata[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(22),
	o => \wdata[22]~input_o\);

-- Location: FF_X30_Y17_N9
\registers[10][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[22]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][22]~q\);

-- Location: FF_X30_Y17_N27
\registers[8][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[22]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][22]~q\);

-- Location: LCCOMB_X30_Y17_N8
\r1~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~227_combout\ = (\add1[0]~input_o\ & (\add1[1]~input_o\)) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & (\registers[10][22]~q\)) # (!\add1[1]~input_o\ & ((\registers[8][22]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[10][22]~q\,
	datad => \registers[8][22]~q\,
	combout => \r1~227_combout\);

-- Location: FF_X29_Y17_N17
\registers[9][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[22]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][22]~q\);

-- Location: FF_X29_Y17_N11
\registers[11][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[22]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][22]~q\);

-- Location: LCCOMB_X29_Y17_N16
\r1~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~228_combout\ = (\add1[0]~input_o\ & ((\r1~227_combout\ & ((\registers[11][22]~q\))) # (!\r1~227_combout\ & (\registers[9][22]~q\)))) # (!\add1[0]~input_o\ & (\r1~227_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \r1~227_combout\,
	datac => \registers[9][22]~q\,
	datad => \registers[11][22]~q\,
	combout => \r1~228_combout\);

-- Location: FF_X30_Y15_N17
\registers[13][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[22]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][22]~q\);

-- Location: FF_X30_Y15_N3
\registers[12][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[22]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][22]~q\);

-- Location: LCCOMB_X30_Y15_N16
\r1~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~225_combout\ = (\add1[1]~input_o\ & (\add1[0]~input_o\)) # (!\add1[1]~input_o\ & ((\add1[0]~input_o\ & (\registers[13][22]~q\)) # (!\add1[0]~input_o\ & ((\registers[12][22]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \add1[0]~input_o\,
	datac => \registers[13][22]~q\,
	datad => \registers[12][22]~q\,
	combout => \r1~225_combout\);

-- Location: FF_X27_Y15_N1
\registers[14][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[22]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][22]~q\);

-- Location: FF_X27_Y15_N19
\registers[15][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[22]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][22]~q\);

-- Location: LCCOMB_X27_Y15_N0
\r1~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~226_combout\ = (\add1[1]~input_o\ & ((\r1~225_combout\ & ((\registers[15][22]~q\))) # (!\r1~225_combout\ & (\registers[14][22]~q\)))) # (!\add1[1]~input_o\ & (\r1~225_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \r1~225_combout\,
	datac => \registers[14][22]~q\,
	datad => \registers[15][22]~q\,
	combout => \r1~226_combout\);

-- Location: LCCOMB_X27_Y15_N12
\r1~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~229_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & ((\r1~226_combout\))) # (!\r1~6_combout\ & (\r1~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~0_combout\,
	datab => \r1~6_combout\,
	datac => \r1~228_combout\,
	datad => \r1~226_combout\,
	combout => \r1~229_combout\);

-- Location: FF_X23_Y14_N5
\registers[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[22]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][22]~q\);

-- Location: LCCOMB_X23_Y14_N4
\r1~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~232_combout\ = (\r1~11_combout\ & (((\registers[2][22]~q\) # (\r1~10_combout\)))) # (!\r1~11_combout\ & (\registers[1][22]~q\ & ((!\r1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[1][22]~q\,
	datab => \r1~11_combout\,
	datac => \registers[2][22]~q\,
	datad => \r1~10_combout\,
	combout => \r1~232_combout\);

-- Location: FF_X27_Y11_N25
\registers[3][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[22]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][22]~q\);

-- Location: FF_X25_Y13_N21
\registers[5][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[22]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][22]~q\);

-- Location: FF_X25_Y13_N31
\registers[4][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[22]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][22]~q\);

-- Location: LCCOMB_X25_Y13_N20
\r1~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~230_combout\ = (\add1[0]~input_o\ & ((\add1[1]~input_o\) # ((\registers[5][22]~q\)))) # (!\add1[0]~input_o\ & (!\add1[1]~input_o\ & ((\registers[4][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[5][22]~q\,
	datad => \registers[4][22]~q\,
	combout => \r1~230_combout\);

-- Location: FF_X26_Y13_N13
\registers[6][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[22]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][22]~q\);

-- Location: FF_X26_Y13_N7
\registers[7][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[22]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][22]~q\);

-- Location: LCCOMB_X26_Y13_N12
\r1~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~231_combout\ = (\add1[1]~input_o\ & ((\r1~230_combout\ & ((\registers[7][22]~q\))) # (!\r1~230_combout\ & (\registers[6][22]~q\)))) # (!\add1[1]~input_o\ & (\r1~230_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \r1~230_combout\,
	datac => \registers[6][22]~q\,
	datad => \registers[7][22]~q\,
	combout => \r1~231_combout\);

-- Location: LCCOMB_X27_Y11_N24
\r1~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~233_combout\ = (\r1~10_combout\ & ((\r1~232_combout\ & (\registers[3][22]~q\)) # (!\r1~232_combout\ & ((\r1~231_combout\))))) # (!\r1~10_combout\ & (\r1~232_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~232_combout\,
	datac => \registers[3][22]~q\,
	datad => \r1~231_combout\,
	combout => \r1~233_combout\);

-- Location: LCCOMB_X27_Y15_N22
\r1~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~234_combout\ = (\r1~229_combout\) # ((\r1~233_combout\ & (!\r1~0_combout\ & !\r1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~229_combout\,
	datab => \r1~233_combout\,
	datac => \r1~0_combout\,
	datad => \r1~6_combout\,
	combout => \r1~234_combout\);

-- Location: IOIBUF_X53_Y17_N15
\wdata[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(23),
	o => \wdata[23]~input_o\);

-- Location: FF_X29_Y12_N29
\registers[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[23]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][23]~q\);

-- Location: LCCOMB_X29_Y12_N28
\r1~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~242_combout\ = (\r1~11_combout\ & (((\r1~10_combout\)))) # (!\r1~11_combout\ & ((\r1~10_combout\ & (\r1~241_combout\)) # (!\r1~10_combout\ & ((\registers[1][23]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~241_combout\,
	datab => \r1~11_combout\,
	datac => \registers[1][23]~q\,
	datad => \r1~10_combout\,
	combout => \r1~242_combout\);

-- Location: FF_X30_Y12_N13
\registers[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[23]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][23]~q\);

-- Location: LCCOMB_X30_Y12_N12
\r1~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~243_combout\ = (\r1~242_combout\ & ((\registers[3][23]~q\) # ((!\r1~11_combout\)))) # (!\r1~242_combout\ & (((\registers[2][23]~q\ & \r1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[3][23]~q\,
	datab => \r1~242_combout\,
	datac => \registers[2][23]~q\,
	datad => \r1~11_combout\,
	combout => \r1~243_combout\);

-- Location: FF_X31_Y11_N29
\registers[14][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[23]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][23]~q\);

-- Location: FF_X31_Y11_N7
\registers[12][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[23]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][23]~q\);

-- Location: LCCOMB_X31_Y11_N28
\r1~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~235_combout\ = (\add1[0]~input_o\ & (\add1[1]~input_o\)) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & (\registers[14][23]~q\)) # (!\add1[1]~input_o\ & ((\registers[12][23]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][23]~q\,
	datad => \registers[12][23]~q\,
	combout => \r1~235_combout\);

-- Location: FF_X30_Y11_N5
\registers[13][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[23]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][23]~q\);

-- Location: LCCOMB_X30_Y11_N4
\r1~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~236_combout\ = (\r1~235_combout\ & ((\registers[15][23]~q\) # ((!\add1[0]~input_o\)))) # (!\r1~235_combout\ & (((\registers[13][23]~q\ & \add1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[15][23]~q\,
	datab => \r1~235_combout\,
	datac => \registers[13][23]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~236_combout\);

-- Location: FF_X30_Y14_N9
\registers[11][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[23]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][23]~q\);

-- Location: FF_X30_Y14_N23
\registers[10][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[23]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][23]~q\);

-- Location: FF_X31_Y14_N5
\registers[9][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[23]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][23]~q\);

-- Location: LCCOMB_X31_Y14_N4
\r1~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~237_combout\ = (\add1[1]~input_o\ & (((\add1[0]~input_o\)))) # (!\add1[1]~input_o\ & ((\add1[0]~input_o\ & ((\registers[9][23]~q\))) # (!\add1[0]~input_o\ & (\registers[8][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[8][23]~q\,
	datab => \add1[1]~input_o\,
	datac => \registers[9][23]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~237_combout\);

-- Location: LCCOMB_X30_Y14_N22
\r1~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~238_combout\ = (\add1[1]~input_o\ & ((\r1~237_combout\ & (\registers[11][23]~q\)) # (!\r1~237_combout\ & ((\registers[10][23]~q\))))) # (!\add1[1]~input_o\ & (((\r1~237_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \registers[11][23]~q\,
	datac => \registers[10][23]~q\,
	datad => \r1~237_combout\,
	combout => \r1~238_combout\);

-- Location: LCCOMB_X30_Y11_N0
\r1~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~239_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & (\r1~236_combout\)) # (!\r1~6_combout\ & ((\r1~238_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~0_combout\,
	datac => \r1~236_combout\,
	datad => \r1~238_combout\,
	combout => \r1~239_combout\);

-- Location: LCCOMB_X30_Y12_N24
\r1~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~244_combout\ = (\r1~239_combout\) # ((!\r1~0_combout\ & (!\r1~6_combout\ & \r1~243_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~0_combout\,
	datab => \r1~6_combout\,
	datac => \r1~243_combout\,
	datad => \r1~239_combout\,
	combout => \r1~244_combout\);

-- Location: IOIBUF_X51_Y34_N1
\wdata[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(24),
	o => \wdata[24]~input_o\);

-- Location: FF_X34_Y14_N11
\registers[14][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[24]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][24]~q\);

-- Location: FF_X34_Y14_N5
\registers[15][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[24]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][24]~q\);

-- Location: LCCOMB_X34_Y14_N10
\r1~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~246_combout\ = (\r1~245_combout\ & (((\registers[15][24]~q\)) # (!\add1[1]~input_o\))) # (!\r1~245_combout\ & (\add1[1]~input_o\ & (\registers[14][24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~245_combout\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][24]~q\,
	datad => \registers[15][24]~q\,
	combout => \r1~246_combout\);

-- Location: FF_X32_Y14_N9
\registers[9][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[24]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][24]~q\);

-- Location: FF_X32_Y14_N19
\registers[11][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[24]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][24]~q\);

-- Location: LCCOMB_X32_Y14_N8
\r1~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~248_combout\ = (\r1~247_combout\ & (((\registers[11][24]~q\)) # (!\add1[0]~input_o\))) # (!\r1~247_combout\ & (\add1[0]~input_o\ & (\registers[9][24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~247_combout\,
	datab => \add1[0]~input_o\,
	datac => \registers[9][24]~q\,
	datad => \registers[11][24]~q\,
	combout => \r1~248_combout\);

-- Location: LCCOMB_X34_Y14_N30
\r1~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~249_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & (\r1~246_combout\)) # (!\r1~6_combout\ & ((\r1~248_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~0_combout\,
	datab => \r1~6_combout\,
	datac => \r1~246_combout\,
	datad => \r1~248_combout\,
	combout => \r1~249_combout\);

-- Location: FF_X29_Y14_N9
\registers[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[24]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][24]~q\);

-- Location: FF_X29_Y14_N7
\registers[2][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[24]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][24]~q\);

-- Location: LCCOMB_X29_Y14_N6
\r1~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~252_combout\ = (\r1~11_combout\ & (((\registers[2][24]~q\) # (\r1~10_combout\)))) # (!\r1~11_combout\ & (\registers[1][24]~q\ & ((!\r1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~11_combout\,
	datab => \registers[1][24]~q\,
	datac => \registers[2][24]~q\,
	datad => \r1~10_combout\,
	combout => \r1~252_combout\);

-- Location: FF_X27_Y11_N11
\registers[3][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[24]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][24]~q\);

-- Location: FF_X29_Y11_N13
\registers[7][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[24]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][24]~q\);

-- Location: FF_X28_Y13_N5
\registers[6][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[24]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][24]~q\);

-- Location: LCCOMB_X28_Y13_N4
\r1~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~251_combout\ = (\r1~250_combout\ & ((\registers[7][24]~q\) # ((!\add1[1]~input_o\)))) # (!\r1~250_combout\ & (((\registers[6][24]~q\ & \add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~250_combout\,
	datab => \registers[7][24]~q\,
	datac => \registers[6][24]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~251_combout\);

-- Location: LCCOMB_X27_Y11_N10
\r1~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~253_combout\ = (\r1~10_combout\ & ((\r1~252_combout\ & (\registers[3][24]~q\)) # (!\r1~252_combout\ & ((\r1~251_combout\))))) # (!\r1~10_combout\ & (\r1~252_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~252_combout\,
	datac => \registers[3][24]~q\,
	datad => \r1~251_combout\,
	combout => \r1~253_combout\);

-- Location: LCCOMB_X34_Y14_N8
\r1~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~254_combout\ = (\r1~249_combout\) # ((!\r1~0_combout\ & (!\r1~6_combout\ & \r1~253_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~0_combout\,
	datab => \r1~6_combout\,
	datac => \r1~249_combout\,
	datad => \r1~253_combout\,
	combout => \r1~254_combout\);

-- Location: IOIBUF_X53_Y17_N8
\wdata[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(25),
	o => \wdata[25]~input_o\);

-- Location: FF_X28_Y14_N11
\registers[2][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[25]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][25]~q\);

-- Location: FF_X28_Y14_N13
\registers[3][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[25]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][25]~q\);

-- Location: LCCOMB_X28_Y14_N10
\r1~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~263_combout\ = (\r1~262_combout\ & (((\registers[3][25]~q\)) # (!\r1~11_combout\))) # (!\r1~262_combout\ & (\r1~11_combout\ & (\registers[2][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~262_combout\,
	datab => \r1~11_combout\,
	datac => \registers[2][25]~q\,
	datad => \registers[3][25]~q\,
	combout => \r1~263_combout\);

-- Location: FF_X30_Y13_N31
\registers[15][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[25]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][25]~q\);

-- Location: FF_X29_Y13_N21
\registers[13][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[25]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][25]~q\);

-- Location: FF_X30_Y13_N5
\registers[14][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[25]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][25]~q\);

-- Location: FF_X29_Y13_N23
\registers[12][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[25]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][25]~q\);

-- Location: LCCOMB_X30_Y13_N4
\r1~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~255_combout\ = (\add1[0]~input_o\ & (\add1[1]~input_o\)) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & (\registers[14][25]~q\)) # (!\add1[1]~input_o\ & ((\registers[12][25]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][25]~q\,
	datad => \registers[12][25]~q\,
	combout => \r1~255_combout\);

-- Location: LCCOMB_X29_Y13_N20
\r1~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~256_combout\ = (\add1[0]~input_o\ & ((\r1~255_combout\ & (\registers[15][25]~q\)) # (!\r1~255_combout\ & ((\registers[13][25]~q\))))) # (!\add1[0]~input_o\ & (((\r1~255_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[15][25]~q\,
	datac => \registers[13][25]~q\,
	datad => \r1~255_combout\,
	combout => \r1~256_combout\);

-- Location: LCCOMB_X29_Y13_N16
\r1~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~259_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & ((\r1~256_combout\))) # (!\r1~6_combout\ & (\r1~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~258_combout\,
	datab => \r1~0_combout\,
	datac => \r1~6_combout\,
	datad => \r1~256_combout\,
	combout => \r1~259_combout\);

-- Location: LCCOMB_X29_Y13_N26
\r1~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~264_combout\ = (\r1~259_combout\) # ((\r1~263_combout\ & (!\r1~0_combout\ & !\r1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~263_combout\,
	datab => \r1~0_combout\,
	datac => \r1~6_combout\,
	datad => \r1~259_combout\,
	combout => \r1~264_combout\);

-- Location: IOIBUF_X53_Y17_N1
\wdata[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(26),
	o => \wdata[26]~input_o\);

-- Location: FF_X31_Y12_N3
\registers[15][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[26]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][26]~q\);

-- Location: FF_X31_Y12_N17
\registers[14][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[26]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][26]~q\);

-- Location: FF_X29_Y13_N29
\registers[13][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[26]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][26]~q\);

-- Location: FF_X29_Y13_N7
\registers[12][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[26]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][26]~q\);

-- Location: LCCOMB_X29_Y13_N28
\r1~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~265_combout\ = (\add1[0]~input_o\ & ((\add1[1]~input_o\) # ((\registers[13][26]~q\)))) # (!\add1[0]~input_o\ & (!\add1[1]~input_o\ & ((\registers[12][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[13][26]~q\,
	datad => \registers[12][26]~q\,
	combout => \r1~265_combout\);

-- Location: LCCOMB_X31_Y12_N16
\r1~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~266_combout\ = (\add1[1]~input_o\ & ((\r1~265_combout\ & (\registers[15][26]~q\)) # (!\r1~265_combout\ & ((\registers[14][26]~q\))))) # (!\add1[1]~input_o\ & (((\r1~265_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \registers[15][26]~q\,
	datac => \registers[14][26]~q\,
	datad => \r1~265_combout\,
	combout => \r1~266_combout\);

-- Location: LCCOMB_X28_Y16_N16
\r1~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~269_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & ((\r1~266_combout\))) # (!\r1~6_combout\ & (\r1~268_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~268_combout\,
	datab => \r1~0_combout\,
	datac => \r1~266_combout\,
	datad => \r1~6_combout\,
	combout => \r1~269_combout\);

-- Location: FF_X28_Y16_N3
\registers[2][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[26]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][26]~q\);

-- Location: FF_X29_Y14_N3
\registers[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[26]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][26]~q\);

-- Location: LCCOMB_X28_Y16_N2
\r1~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~272_combout\ = (\r1~11_combout\ & ((\r1~10_combout\) # ((\registers[2][26]~q\)))) # (!\r1~11_combout\ & (!\r1~10_combout\ & ((\registers[1][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~11_combout\,
	datab => \r1~10_combout\,
	datac => \registers[2][26]~q\,
	datad => \registers[1][26]~q\,
	combout => \r1~272_combout\);

-- Location: FF_X28_Y16_N21
\registers[3][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[26]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][26]~q\);

-- Location: LCCOMB_X28_Y16_N20
\r1~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~273_combout\ = (\r1~272_combout\ & (((\registers[3][26]~q\) # (!\r1~10_combout\)))) # (!\r1~272_combout\ & (\r1~271_combout\ & ((\r1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~271_combout\,
	datab => \r1~272_combout\,
	datac => \registers[3][26]~q\,
	datad => \r1~10_combout\,
	combout => \r1~273_combout\);

-- Location: LCCOMB_X28_Y16_N6
\r1~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~274_combout\ = (\r1~269_combout\) # ((!\r1~6_combout\ & (\r1~273_combout\ & !\r1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~269_combout\,
	datac => \r1~273_combout\,
	datad => \r1~0_combout\,
	combout => \r1~274_combout\);

-- Location: IOIBUF_X43_Y0_N22
\wdata[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(27),
	o => \wdata[27]~input_o\);

-- Location: FF_X30_Y12_N21
\registers[2][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[27]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][27]~q\);

-- Location: FF_X29_Y12_N25
\registers[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[27]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][27]~q\);

-- Location: FF_X29_Y11_N21
\registers[7][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[27]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][27]~q\);

-- Location: FF_X29_Y11_N11
\registers[5][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[27]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][27]~q\);

-- Location: FF_X28_Y11_N21
\registers[6][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[27]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][27]~q\);

-- Location: LCCOMB_X28_Y11_N20
\r1~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~280_combout\ = (\add1[1]~input_o\ & (((\registers[6][27]~q\) # (\add1[0]~input_o\)))) # (!\add1[1]~input_o\ & (\registers[4][27]~q\ & ((!\add1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[4][27]~q\,
	datab => \add1[1]~input_o\,
	datac => \registers[6][27]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~280_combout\);

-- Location: LCCOMB_X29_Y11_N10
\r1~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~281_combout\ = (\add1[0]~input_o\ & ((\r1~280_combout\ & (\registers[7][27]~q\)) # (!\r1~280_combout\ & ((\registers[5][27]~q\))))) # (!\add1[0]~input_o\ & (((\r1~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[7][27]~q\,
	datac => \registers[5][27]~q\,
	datad => \r1~280_combout\,
	combout => \r1~281_combout\);

-- Location: LCCOMB_X29_Y12_N24
\r1~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~282_combout\ = (\r1~10_combout\ & ((\r1~11_combout\) # ((\r1~281_combout\)))) # (!\r1~10_combout\ & (!\r1~11_combout\ & (\registers[1][27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~11_combout\,
	datac => \registers[1][27]~q\,
	datad => \r1~281_combout\,
	combout => \r1~282_combout\);

-- Location: LCCOMB_X30_Y12_N20
\r1~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~283_combout\ = (\r1~11_combout\ & ((\r1~282_combout\ & (\registers[3][27]~q\)) # (!\r1~282_combout\ & ((\registers[2][27]~q\))))) # (!\r1~11_combout\ & (((\r1~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[3][27]~q\,
	datab => \r1~11_combout\,
	datac => \registers[2][27]~q\,
	datad => \r1~282_combout\,
	combout => \r1~283_combout\);

-- Location: FF_X30_Y13_N19
\registers[15][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[27]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][27]~q\);

-- Location: FF_X29_Y13_N9
\registers[13][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[27]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][27]~q\);

-- Location: FF_X29_Y13_N19
\registers[12][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[27]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][27]~q\);

-- Location: FF_X30_Y13_N25
\registers[14][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[27]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][27]~q\);

-- Location: LCCOMB_X30_Y13_N24
\r1~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~275_combout\ = (\add1[0]~input_o\ & (((\add1[1]~input_o\)))) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & ((\registers[14][27]~q\))) # (!\add1[1]~input_o\ & (\registers[12][27]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[12][27]~q\,
	datac => \registers[14][27]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~275_combout\);

-- Location: LCCOMB_X29_Y13_N8
\r1~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~276_combout\ = (\add1[0]~input_o\ & ((\r1~275_combout\ & (\registers[15][27]~q\)) # (!\r1~275_combout\ & ((\registers[13][27]~q\))))) # (!\add1[0]~input_o\ & (((\r1~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \registers[15][27]~q\,
	datac => \registers[13][27]~q\,
	datad => \r1~275_combout\,
	combout => \r1~276_combout\);

-- Location: FF_X31_Y16_N29
\registers[10][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[27]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][27]~q\);

-- Location: FF_X30_Y16_N27
\registers[11][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[27]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][27]~q\);

-- Location: LCCOMB_X31_Y16_N28
\r1~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~278_combout\ = (\r1~277_combout\ & (((\registers[11][27]~q\)) # (!\add1[1]~input_o\))) # (!\r1~277_combout\ & (\add1[1]~input_o\ & (\registers[10][27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~277_combout\,
	datab => \add1[1]~input_o\,
	datac => \registers[10][27]~q\,
	datad => \registers[11][27]~q\,
	combout => \r1~278_combout\);

-- Location: LCCOMB_X30_Y12_N2
\r1~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~279_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & (\r1~276_combout\)) # (!\r1~6_combout\ & ((\r1~278_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~0_combout\,
	datab => \r1~6_combout\,
	datac => \r1~276_combout\,
	datad => \r1~278_combout\,
	combout => \r1~279_combout\);

-- Location: LCCOMB_X30_Y12_N16
\r1~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~284_combout\ = (\r1~279_combout\) # ((!\r1~0_combout\ & (!\r1~6_combout\ & \r1~283_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~0_combout\,
	datab => \r1~6_combout\,
	datac => \r1~283_combout\,
	datad => \r1~279_combout\,
	combout => \r1~284_combout\);

-- Location: IOIBUF_X47_Y0_N22
\wdata[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(28),
	o => \wdata[28]~input_o\);

-- Location: FF_X29_Y14_N13
\registers[2][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[28]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][28]~q\);

-- Location: FF_X29_Y14_N23
\registers[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[28]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][28]~q\);

-- Location: LCCOMB_X29_Y14_N12
\r1~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~292_combout\ = (\r1~11_combout\ & ((\r1~10_combout\) # ((\registers[2][28]~q\)))) # (!\r1~11_combout\ & (!\r1~10_combout\ & ((\registers[1][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~11_combout\,
	datab => \r1~10_combout\,
	datac => \registers[2][28]~q\,
	datad => \registers[1][28]~q\,
	combout => \r1~292_combout\);

-- Location: FF_X28_Y12_N13
\registers[3][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[28]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][28]~q\);

-- Location: FF_X28_Y12_N19
\registers[7][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[28]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][28]~q\);

-- Location: FF_X28_Y13_N25
\registers[6][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[28]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][28]~q\);

-- Location: LCCOMB_X28_Y13_N24
\r1~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~291_combout\ = (\r1~290_combout\ & ((\registers[7][28]~q\) # ((!\add1[1]~input_o\)))) # (!\r1~290_combout\ & (((\registers[6][28]~q\ & \add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~290_combout\,
	datab => \registers[7][28]~q\,
	datac => \registers[6][28]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~291_combout\);

-- Location: LCCOMB_X28_Y12_N12
\r1~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~293_combout\ = (\r1~10_combout\ & ((\r1~292_combout\ & (\registers[3][28]~q\)) # (!\r1~292_combout\ & ((\r1~291_combout\))))) # (!\r1~10_combout\ & (\r1~292_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~292_combout\,
	datac => \registers[3][28]~q\,
	datad => \r1~291_combout\,
	combout => \r1~293_combout\);

-- Location: FF_X29_Y13_N13
\registers[13][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[28]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][28]~q\);

-- Location: LCCOMB_X29_Y13_N12
\r1~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~285_combout\ = (\add1[1]~input_o\ & (((\add1[0]~input_o\)))) # (!\add1[1]~input_o\ & ((\add1[0]~input_o\ & ((\registers[13][28]~q\))) # (!\add1[0]~input_o\ & (\registers[12][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[12][28]~q\,
	datab => \add1[1]~input_o\,
	datac => \registers[13][28]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~285_combout\);

-- Location: FF_X31_Y12_N13
\registers[14][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[28]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][28]~q\);

-- Location: LCCOMB_X31_Y12_N12
\r1~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~286_combout\ = (\r1~285_combout\ & ((\registers[15][28]~q\) # ((!\add1[1]~input_o\)))) # (!\r1~285_combout\ & (((\registers[14][28]~q\ & \add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[15][28]~q\,
	datab => \r1~285_combout\,
	datac => \registers[14][28]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~286_combout\);

-- Location: FF_X31_Y16_N17
\registers[10][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[28]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][28]~q\);

-- Location: FF_X31_Y16_N19
\registers[8][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[28]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][28]~q\);

-- Location: LCCOMB_X31_Y16_N16
\r1~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~287_combout\ = (\add1[1]~input_o\ & ((\add1[0]~input_o\) # ((\registers[10][28]~q\)))) # (!\add1[1]~input_o\ & (!\add1[0]~input_o\ & ((\registers[8][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \add1[0]~input_o\,
	datac => \registers[10][28]~q\,
	datad => \registers[8][28]~q\,
	combout => \r1~287_combout\);

-- Location: FF_X31_Y15_N17
\registers[9][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[28]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][28]~q\);

-- Location: LCCOMB_X31_Y15_N16
\r1~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~288_combout\ = (\r1~287_combout\ & ((\registers[11][28]~q\) # ((!\add1[0]~input_o\)))) # (!\r1~287_combout\ & (((\registers[9][28]~q\ & \add1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[11][28]~q\,
	datab => \r1~287_combout\,
	datac => \registers[9][28]~q\,
	datad => \add1[0]~input_o\,
	combout => \r1~288_combout\);

-- Location: LCCOMB_X28_Y12_N16
\r1~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~289_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & (\r1~286_combout\)) # (!\r1~6_combout\ & ((\r1~288_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~0_combout\,
	datab => \r1~6_combout\,
	datac => \r1~286_combout\,
	datad => \r1~288_combout\,
	combout => \r1~289_combout\);

-- Location: LCCOMB_X28_Y12_N14
\r1~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~294_combout\ = (\r1~289_combout\) # ((\r1~293_combout\ & (!\r1~6_combout\ & !\r1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~293_combout\,
	datab => \r1~6_combout\,
	datac => \r1~0_combout\,
	datad => \r1~289_combout\,
	combout => \r1~294_combout\);

-- Location: IOIBUF_X25_Y0_N15
\wdata[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(29),
	o => \wdata[29]~input_o\);

-- Location: FF_X26_Y15_N25
\registers[2][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[29]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][29]~q\);

-- Location: FF_X26_Y15_N11
\registers[3][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[29]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][29]~q\);

-- Location: LCCOMB_X26_Y15_N24
\r1~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~303_combout\ = (\r1~302_combout\ & (((\registers[3][29]~q\)) # (!\r1~11_combout\))) # (!\r1~302_combout\ & (\r1~11_combout\ & (\registers[2][29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~302_combout\,
	datab => \r1~11_combout\,
	datac => \registers[2][29]~q\,
	datad => \registers[3][29]~q\,
	combout => \r1~303_combout\);

-- Location: FF_X30_Y13_N29
\registers[14][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[29]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][29]~q\);

-- Location: FF_X29_Y13_N3
\registers[12][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[29]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][29]~q\);

-- Location: LCCOMB_X30_Y13_N28
\r1~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~295_combout\ = (\add1[0]~input_o\ & (\add1[1]~input_o\)) # (!\add1[0]~input_o\ & ((\add1[1]~input_o\ & (\registers[14][29]~q\)) # (!\add1[1]~input_o\ & ((\registers[12][29]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[14][29]~q\,
	datad => \registers[12][29]~q\,
	combout => \r1~295_combout\);

-- Location: FF_X29_Y13_N25
\registers[13][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[29]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][29]~q\);

-- Location: FF_X30_Y13_N7
\registers[15][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[29]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][29]~q\);

-- Location: LCCOMB_X29_Y13_N24
\r1~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~296_combout\ = (\add1[0]~input_o\ & ((\r1~295_combout\ & ((\registers[15][29]~q\))) # (!\r1~295_combout\ & (\registers[13][29]~q\)))) # (!\add1[0]~input_o\ & (\r1~295_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \r1~295_combout\,
	datac => \registers[13][29]~q\,
	datad => \registers[15][29]~q\,
	combout => \r1~296_combout\);

-- Location: LCCOMB_X29_Y13_N4
\r1~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~299_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & ((\r1~296_combout\))) # (!\r1~6_combout\ & (\r1~298_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~298_combout\,
	datab => \r1~0_combout\,
	datac => \r1~6_combout\,
	datad => \r1~296_combout\,
	combout => \r1~299_combout\);

-- Location: LCCOMB_X29_Y13_N14
\r1~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~304_combout\ = (\r1~299_combout\) # ((!\r1~6_combout\ & (\r1~303_combout\ & !\r1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~303_combout\,
	datac => \r1~299_combout\,
	datad => \r1~0_combout\,
	combout => \r1~304_combout\);

-- Location: IOIBUF_X14_Y0_N8
\wdata[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(30),
	o => \wdata[30]~input_o\);

-- Location: FF_X28_Y12_N27
\registers[7][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[30]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][30]~q\);

-- Location: FF_X28_Y11_N29
\registers[6][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[30]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][30]~q\);

-- Location: LCCOMB_X28_Y11_N28
\r1~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~311_combout\ = (\r1~310_combout\ & ((\registers[7][30]~q\) # ((!\add1[1]~input_o\)))) # (!\r1~310_combout\ & (((\registers[6][30]~q\ & \add1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~310_combout\,
	datab => \registers[7][30]~q\,
	datac => \registers[6][30]~q\,
	datad => \add1[1]~input_o\,
	combout => \r1~311_combout\);

-- Location: FF_X28_Y12_N5
\registers[3][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[30]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][30]~q\);

-- Location: FF_X29_Y14_N19
\registers[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[30]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][30]~q\);

-- Location: FF_X29_Y14_N25
\registers[2][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[30]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][30]~q\);

-- Location: LCCOMB_X29_Y14_N24
\r1~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~312_combout\ = (\r1~11_combout\ & (((\registers[2][30]~q\) # (\r1~10_combout\)))) # (!\r1~11_combout\ & (\registers[1][30]~q\ & ((!\r1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~11_combout\,
	datab => \registers[1][30]~q\,
	datac => \registers[2][30]~q\,
	datad => \r1~10_combout\,
	combout => \r1~312_combout\);

-- Location: LCCOMB_X28_Y12_N4
\r1~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~313_combout\ = (\r1~10_combout\ & ((\r1~312_combout\ & ((\registers[3][30]~q\))) # (!\r1~312_combout\ & (\r1~311_combout\)))) # (!\r1~10_combout\ & (((\r1~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~311_combout\,
	datac => \registers[3][30]~q\,
	datad => \r1~312_combout\,
	combout => \r1~313_combout\);

-- Location: FF_X29_Y16_N9
\registers[15][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[30]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][30]~q\);

-- Location: FF_X29_Y10_N23
\registers[14][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[30]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][30]~q\);

-- Location: FF_X29_Y12_N5
\registers[13][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[30]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][30]~q\);

-- Location: FF_X29_Y16_N31
\registers[12][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[30]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][30]~q\);

-- Location: LCCOMB_X29_Y12_N4
\r1~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~305_combout\ = (\add1[0]~input_o\ & ((\add1[1]~input_o\) # ((\registers[13][30]~q\)))) # (!\add1[0]~input_o\ & (!\add1[1]~input_o\ & ((\registers[12][30]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[0]~input_o\,
	datab => \add1[1]~input_o\,
	datac => \registers[13][30]~q\,
	datad => \registers[12][30]~q\,
	combout => \r1~305_combout\);

-- Location: LCCOMB_X29_Y10_N22
\r1~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~306_combout\ = (\add1[1]~input_o\ & ((\r1~305_combout\ & (\registers[15][30]~q\)) # (!\r1~305_combout\ & ((\registers[14][30]~q\))))) # (!\add1[1]~input_o\ & (((\r1~305_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add1[1]~input_o\,
	datab => \registers[15][30]~q\,
	datac => \registers[14][30]~q\,
	datad => \r1~305_combout\,
	combout => \r1~306_combout\);

-- Location: LCCOMB_X28_Y12_N0
\r1~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~309_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & ((\r1~306_combout\))) # (!\r1~6_combout\ & (\r1~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~308_combout\,
	datab => \r1~6_combout\,
	datac => \r1~0_combout\,
	datad => \r1~306_combout\,
	combout => \r1~309_combout\);

-- Location: LCCOMB_X28_Y12_N30
\r1~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~314_combout\ = (\r1~309_combout\) # ((!\r1~0_combout\ & (\r1~313_combout\ & !\r1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~0_combout\,
	datab => \r1~313_combout\,
	datac => \r1~6_combout\,
	datad => \r1~309_combout\,
	combout => \r1~314_combout\);

-- Location: IOIBUF_X53_Y14_N1
\wdata[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wdata(31),
	o => \wdata[31]~input_o\);

-- Location: FF_X31_Y16_N5
\registers[10][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[31]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][31]~q\);

-- Location: FF_X30_Y16_N21
\registers[11][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[31]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][31]~q\);

-- Location: LCCOMB_X31_Y16_N4
\r1~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~318_combout\ = (\r1~317_combout\ & (((\registers[11][31]~q\)) # (!\add1[1]~input_o\))) # (!\r1~317_combout\ & (\add1[1]~input_o\ & (\registers[10][31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~317_combout\,
	datab => \add1[1]~input_o\,
	datac => \registers[10][31]~q\,
	datad => \registers[11][31]~q\,
	combout => \r1~318_combout\);

-- Location: LCCOMB_X28_Y16_N8
\r1~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~319_combout\ = (\r1~0_combout\ & ((\r1~6_combout\ & (\r1~316_combout\)) # (!\r1~6_combout\ & ((\r1~318_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~316_combout\,
	datab => \r1~0_combout\,
	datac => \r1~318_combout\,
	datad => \r1~6_combout\,
	combout => \r1~319_combout\);

-- Location: FF_X29_Y12_N31
\registers[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[31]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][31]~q\);

-- Location: FF_X29_Y11_N19
\registers[5][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[31]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][31]~q\);

-- Location: FF_X29_Y11_N29
\registers[7][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[31]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][31]~q\);

-- Location: LCCOMB_X29_Y11_N18
\r1~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~321_combout\ = (\r1~320_combout\ & (((\registers[7][31]~q\)) # (!\add1[0]~input_o\))) # (!\r1~320_combout\ & (\add1[0]~input_o\ & (\registers[5][31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~320_combout\,
	datab => \add1[0]~input_o\,
	datac => \registers[5][31]~q\,
	datad => \registers[7][31]~q\,
	combout => \r1~321_combout\);

-- Location: LCCOMB_X29_Y12_N30
\r1~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~322_combout\ = (\r1~10_combout\ & ((\r1~11_combout\) # ((\r1~321_combout\)))) # (!\r1~10_combout\ & (!\r1~11_combout\ & (\registers[1][31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~10_combout\,
	datab => \r1~11_combout\,
	datac => \registers[1][31]~q\,
	datad => \r1~321_combout\,
	combout => \r1~322_combout\);

-- Location: FF_X28_Y16_N11
\registers[2][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[31]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][31]~q\);

-- Location: FF_X28_Y16_N5
\registers[3][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[31]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][31]~q\);

-- Location: LCCOMB_X28_Y16_N10
\r1~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~323_combout\ = (\r1~11_combout\ & ((\r1~322_combout\ & ((\registers[3][31]~q\))) # (!\r1~322_combout\ & (\registers[2][31]~q\)))) # (!\r1~11_combout\ & (\r1~322_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~11_combout\,
	datab => \r1~322_combout\,
	datac => \registers[2][31]~q\,
	datad => \registers[3][31]~q\,
	combout => \r1~323_combout\);

-- Location: LCCOMB_X28_Y16_N14
\r1~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \r1~324_combout\ = (\r1~319_combout\) # ((!\r1~6_combout\ & (\r1~323_combout\ & !\r1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1~6_combout\,
	datab => \r1~319_combout\,
	datac => \r1~323_combout\,
	datad => \r1~0_combout\,
	combout => \r1~324_combout\);

-- Location: IOIBUF_X0_Y24_N22
\rd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rd,
	o => \rd~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\add2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add2(3),
	o => \add2[3]~input_o\);

-- Location: IOIBUF_X53_Y9_N8
\add2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add2(0),
	o => \add2[0]~input_o\);

-- Location: IOIBUF_X34_Y34_N8
\add2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add2(1),
	o => \add2[1]~input_o\);

-- Location: LCCOMB_X25_Y15_N6
\r2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~5_combout\ = (!\add2[2]~input_o\ & (!\add2[0]~input_o\ & (!\add2[3]~input_o\ & !\add2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[2]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \add2[3]~input_o\,
	datad => \add2[1]~input_o\,
	combout => \r2~5_combout\);

-- Location: LCCOMB_X25_Y15_N24
\r2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~6_combout\ = ((\r2~5_combout\) # ((\add2[2]~input_o\ & \add2[3]~input_o\))) # (!\rd~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[2]~input_o\,
	datab => \rd~input_o\,
	datac => \add2[3]~input_o\,
	datad => \r2~5_combout\,
	combout => \r2~6_combout\);

-- Location: IOIBUF_X40_Y34_N1
\add2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add2(2),
	o => \add2[2]~input_o\);

-- Location: LCCOMB_X27_Y14_N16
\r2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~10_combout\ = (\add2[2]~input_o\) # ((\add2[0]~input_o\ & \add2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datac => \add2[1]~input_o\,
	datad => \add2[2]~input_o\,
	combout => \r2~10_combout\);

-- Location: LCCOMB_X25_Y12_N26
\r2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~8_combout\ = (\add2[1]~input_o\ & (\add2[0]~input_o\)) # (!\add2[1]~input_o\ & ((\add2[0]~input_o\ & ((\registers[5][0]~q\))) # (!\add2[0]~input_o\ & (\registers[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[4][0]~q\,
	datad => \registers[5][0]~q\,
	combout => \r2~8_combout\);

-- Location: LCCOMB_X26_Y12_N10
\r2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~9_combout\ = (\add2[1]~input_o\ & ((\r2~8_combout\ & ((\registers[7][0]~q\))) # (!\r2~8_combout\ & (\registers[6][0]~q\)))) # (!\add2[1]~input_o\ & (((\r2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[6][0]~q\,
	datab => \add2[1]~input_o\,
	datac => \registers[7][0]~q\,
	datad => \r2~8_combout\,
	combout => \r2~9_combout\);

-- Location: LCCOMB_X24_Y14_N16
\r2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~13_combout\ = (\r2~12_combout\ & ((\registers[3][0]~q\) # ((!\r2~10_combout\)))) # (!\r2~12_combout\ & (((\r2~10_combout\ & \r2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~12_combout\,
	datab => \registers[3][0]~q\,
	datac => \r2~10_combout\,
	datad => \r2~9_combout\,
	combout => \r2~13_combout\);

-- Location: FF_X25_Y15_N27
\registers[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][0]~q\);

-- Location: LCCOMB_X25_Y15_N26
\r2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~1_combout\ = (\add2[1]~input_o\ & (((\add2[0]~input_o\)))) # (!\add2[1]~input_o\ & ((\add2[0]~input_o\ & (\registers[13][0]~q\)) # (!\add2[0]~input_o\ & ((\registers[12][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \registers[13][0]~q\,
	datac => \registers[12][0]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~1_combout\);

-- Location: LCCOMB_X29_Y15_N16
\r2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~2_combout\ = (\add2[1]~input_o\ & ((\r2~1_combout\ & (\registers[15][0]~q\)) # (!\r2~1_combout\ & ((\registers[14][0]~q\))))) # (!\add2[1]~input_o\ & (\r2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \r2~1_combout\,
	datac => \registers[15][0]~q\,
	datad => \registers[14][0]~q\,
	combout => \r2~2_combout\);

-- Location: FF_X25_Y16_N11
\registers[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][0]~q\);

-- Location: LCCOMB_X27_Y14_N18
\r2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~3_combout\ = (\add2[0]~input_o\ & (\add2[1]~input_o\)) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & ((\registers[10][0]~q\))) # (!\add2[1]~input_o\ & (\registers[8][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \add2[1]~input_o\,
	datac => \registers[8][0]~q\,
	datad => \registers[10][0]~q\,
	combout => \r2~3_combout\);

-- Location: LCCOMB_X25_Y16_N10
\r2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~4_combout\ = (\add2[0]~input_o\ & ((\r2~3_combout\ & ((\registers[11][0]~q\))) # (!\r2~3_combout\ & (\registers[9][0]~q\)))) # (!\add2[0]~input_o\ & (((\r2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[9][0]~q\,
	datac => \registers[11][0]~q\,
	datad => \r2~3_combout\,
	combout => \r2~4_combout\);

-- Location: LCCOMB_X25_Y15_N2
\r2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~7_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & (\r2~2_combout\)) # (!\r2~6_combout\ & ((\r2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~6_combout\,
	datac => \r2~2_combout\,
	datad => \r2~4_combout\,
	combout => \r2~7_combout\);

-- Location: LCCOMB_X25_Y15_N12
\r2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~0_combout\ = (\rd~input_o\ & \add2[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rd~input_o\,
	datac => \add2[3]~input_o\,
	combout => \r2~0_combout\);

-- Location: LCCOMB_X24_Y14_N26
\r2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~14_combout\ = (\r2~7_combout\) # ((!\r2~6_combout\ & (\r2~13_combout\ & !\r2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~6_combout\,
	datab => \r2~13_combout\,
	datac => \r2~7_combout\,
	datad => \r2~0_combout\,
	combout => \r2~14_combout\);

-- Location: LCCOMB_X27_Y14_N26
\r2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~11_combout\ = (\add2[1]~input_o\ & !\add2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add2[1]~input_o\,
	datad => \add2[2]~input_o\,
	combout => \r2~11_combout\);

-- Location: FF_X28_Y12_N25
\registers[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][1]~q\);

-- Location: FF_X26_Y12_N23
\registers[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][1]~q\);

-- Location: LCCOMB_X26_Y12_N22
\r2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~21_combout\ = (\r2~20_combout\ & (((\registers[7][1]~q\)) # (!\add2[0]~input_o\))) # (!\r2~20_combout\ & (\add2[0]~input_o\ & ((\registers[5][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~20_combout\,
	datab => \add2[0]~input_o\,
	datac => \registers[7][1]~q\,
	datad => \registers[5][1]~q\,
	combout => \r2~21_combout\);

-- Location: LCCOMB_X27_Y14_N4
\r2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~22_combout\ = (\r2~11_combout\ & (((\r2~10_combout\)))) # (!\r2~11_combout\ & ((\r2~10_combout\ & ((\r2~21_combout\))) # (!\r2~10_combout\ & (\registers[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \registers[1][1]~q\,
	datac => \r2~10_combout\,
	datad => \r2~21_combout\,
	combout => \r2~22_combout\);

-- Location: LCCOMB_X28_Y12_N24
\r2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~23_combout\ = (\r2~11_combout\ & ((\r2~22_combout\ & ((\registers[3][1]~q\))) # (!\r2~22_combout\ & (\registers[2][1]~q\)))) # (!\r2~11_combout\ & (((\r2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[2][1]~q\,
	datab => \r2~11_combout\,
	datac => \registers[3][1]~q\,
	datad => \r2~22_combout\,
	combout => \r2~23_combout\);

-- Location: FF_X30_Y17_N3
\registers[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][1]~q\);

-- Location: FF_X29_Y17_N9
\registers[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][1]~q\);

-- Location: LCCOMB_X30_Y17_N2
\r2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~17_combout\ = (\add2[1]~input_o\ & (\add2[0]~input_o\)) # (!\add2[1]~input_o\ & ((\add2[0]~input_o\ & ((\registers[9][1]~q\))) # (!\add2[0]~input_o\ & (\registers[8][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[8][1]~q\,
	datad => \registers[9][1]~q\,
	combout => \r2~17_combout\);

-- Location: LCCOMB_X29_Y17_N2
\r2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~18_combout\ = (\add2[1]~input_o\ & ((\r2~17_combout\ & ((\registers[11][1]~q\))) # (!\r2~17_combout\ & (\registers[10][1]~q\)))) # (!\add2[1]~input_o\ & (((\r2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \registers[10][1]~q\,
	datac => \registers[11][1]~q\,
	datad => \r2~17_combout\,
	combout => \r2~18_combout\);

-- Location: LCCOMB_X25_Y15_N20
\r2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~19_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & (\r2~16_combout\)) # (!\r2~6_combout\ & ((\r2~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~16_combout\,
	datab => \r2~6_combout\,
	datac => \r2~18_combout\,
	datad => \r2~0_combout\,
	combout => \r2~19_combout\);

-- Location: LCCOMB_X27_Y15_N8
\r2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~24_combout\ = (\r2~19_combout\) # ((!\r2~0_combout\ & (!\r2~6_combout\ & \r2~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~6_combout\,
	datac => \r2~23_combout\,
	datad => \r2~19_combout\,
	combout => \r2~24_combout\);

-- Location: FF_X26_Y12_N3
\registers[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][2]~q\);

-- Location: FF_X26_Y12_N1
\registers[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][2]~q\);

-- Location: FF_X25_Y12_N3
\registers[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][2]~q\);

-- Location: LCCOMB_X25_Y12_N2
\r2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~30_combout\ = (\add2[1]~input_o\ & (((\add2[0]~input_o\)))) # (!\add2[1]~input_o\ & ((\add2[0]~input_o\ & (\registers[5][2]~q\)) # (!\add2[0]~input_o\ & ((\registers[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \registers[5][2]~q\,
	datac => \registers[4][2]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~30_combout\);

-- Location: LCCOMB_X26_Y12_N2
\r2~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~31_combout\ = (\add2[1]~input_o\ & ((\r2~30_combout\ & ((\registers[7][2]~q\))) # (!\r2~30_combout\ & (\registers[6][2]~q\)))) # (!\add2[1]~input_o\ & (((\r2~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[6][2]~q\,
	datab => \add2[1]~input_o\,
	datac => \registers[7][2]~q\,
	datad => \r2~30_combout\,
	combout => \r2~31_combout\);

-- Location: LCCOMB_X24_Y14_N4
\r2~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~33_combout\ = (\r2~32_combout\ & ((\registers[3][2]~q\) # ((!\r2~10_combout\)))) # (!\r2~32_combout\ & (((\r2~10_combout\ & \r2~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~32_combout\,
	datab => \registers[3][2]~q\,
	datac => \r2~10_combout\,
	datad => \r2~31_combout\,
	combout => \r2~33_combout\);

-- Location: FF_X25_Y16_N31
\registers[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][2]~q\);

-- Location: LCCOMB_X27_Y14_N6
\r2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~27_combout\ = (\add2[0]~input_o\ & (\add2[1]~input_o\)) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & ((\registers[10][2]~q\))) # (!\add2[1]~input_o\ & (\registers[8][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \add2[1]~input_o\,
	datac => \registers[8][2]~q\,
	datad => \registers[10][2]~q\,
	combout => \r2~27_combout\);

-- Location: LCCOMB_X25_Y16_N30
\r2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~28_combout\ = (\add2[0]~input_o\ & ((\r2~27_combout\ & ((\registers[11][2]~q\))) # (!\r2~27_combout\ & (\registers[9][2]~q\)))) # (!\add2[0]~input_o\ & (((\r2~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[9][2]~q\,
	datac => \registers[11][2]~q\,
	datad => \r2~27_combout\,
	combout => \r2~28_combout\);

-- Location: LCCOMB_X25_Y15_N22
\r2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~29_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & (\r2~26_combout\)) # (!\r2~6_combout\ & ((\r2~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~26_combout\,
	datab => \r2~6_combout\,
	datac => \r2~28_combout\,
	datad => \r2~0_combout\,
	combout => \r2~29_combout\);

-- Location: LCCOMB_X24_Y14_N30
\r2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~34_combout\ = (\r2~29_combout\) # ((!\r2~6_combout\ & (\r2~33_combout\ & !\r2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~6_combout\,
	datab => \r2~33_combout\,
	datac => \r2~29_combout\,
	datad => \r2~0_combout\,
	combout => \r2~34_combout\);

-- Location: FF_X26_Y12_N15
\registers[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][3]~q\);

-- Location: FF_X26_Y12_N21
\registers[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][3]~q\);

-- Location: LCCOMB_X26_Y12_N14
\r2~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~41_combout\ = (\r2~40_combout\ & (((\registers[7][3]~q\)) # (!\add2[0]~input_o\))) # (!\r2~40_combout\ & (\add2[0]~input_o\ & ((\registers[5][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~40_combout\,
	datab => \add2[0]~input_o\,
	datac => \registers[7][3]~q\,
	datad => \registers[5][3]~q\,
	combout => \r2~41_combout\);

-- Location: FF_X26_Y14_N31
\registers[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][3]~q\);

-- Location: LCCOMB_X27_Y14_N14
\r2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~42_combout\ = (\r2~11_combout\ & (((\r2~10_combout\)))) # (!\r2~11_combout\ & ((\r2~10_combout\ & (\r2~41_combout\)) # (!\r2~10_combout\ & ((\registers[1][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \r2~41_combout\,
	datac => \r2~10_combout\,
	datad => \registers[1][3]~q\,
	combout => \r2~42_combout\);

-- Location: LCCOMB_X26_Y15_N16
\r2~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~43_combout\ = (\r2~11_combout\ & ((\r2~42_combout\ & ((\registers[3][3]~q\))) # (!\r2~42_combout\ & (\registers[2][3]~q\)))) # (!\r2~11_combout\ & (((\r2~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[2][3]~q\,
	datab => \r2~11_combout\,
	datac => \registers[3][3]~q\,
	datad => \r2~42_combout\,
	combout => \r2~43_combout\);

-- Location: FF_X30_Y15_N11
\registers[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][3]~q\);

-- Location: FF_X30_Y13_N1
\registers[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][3]~q\);

-- Location: LCCOMB_X30_Y15_N10
\r2~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~35_combout\ = (\add2[0]~input_o\ & (\add2[1]~input_o\)) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & ((\registers[14][3]~q\))) # (!\add2[1]~input_o\ & (\registers[12][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \add2[1]~input_o\,
	datac => \registers[12][3]~q\,
	datad => \registers[14][3]~q\,
	combout => \r2~35_combout\);

-- Location: LCCOMB_X29_Y15_N22
\r2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~36_combout\ = (\add2[0]~input_o\ & ((\r2~35_combout\ & ((\registers[15][3]~q\))) # (!\r2~35_combout\ & (\registers[13][3]~q\)))) # (!\add2[0]~input_o\ & (((\r2~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[13][3]~q\,
	datac => \registers[15][3]~q\,
	datad => \r2~35_combout\,
	combout => \r2~36_combout\);

-- Location: LCCOMB_X25_Y15_N0
\r2~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~39_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & ((\r2~36_combout\))) # (!\r2~6_combout\ & (\r2~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~38_combout\,
	datab => \r2~6_combout\,
	datac => \r2~36_combout\,
	datad => \r2~0_combout\,
	combout => \r2~39_combout\);

-- Location: LCCOMB_X27_Y15_N10
\r2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~44_combout\ = (\r2~39_combout\) # ((!\r2~0_combout\ & (!\r2~6_combout\ & \r2~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~6_combout\,
	datac => \r2~43_combout\,
	datad => \r2~39_combout\,
	combout => \r2~44_combout\);

-- Location: FF_X23_Y14_N13
\registers[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][4]~q\);

-- Location: LCCOMB_X23_Y14_N12
\r2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~52_combout\ = (\r2~11_combout\ & ((\registers[2][4]~q\) # ((\r2~10_combout\)))) # (!\r2~11_combout\ & (((\registers[1][4]~q\ & !\r2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \registers[2][4]~q\,
	datac => \registers[1][4]~q\,
	datad => \r2~10_combout\,
	combout => \r2~52_combout\);

-- Location: LCCOMB_X24_Y14_N24
\r2~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~53_combout\ = (\r2~52_combout\ & (((\registers[3][4]~q\) # (!\r2~10_combout\)))) # (!\r2~52_combout\ & (\r2~51_combout\ & (\r2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~51_combout\,
	datab => \r2~52_combout\,
	datac => \r2~10_combout\,
	datad => \registers[3][4]~q\,
	combout => \r2~53_combout\);

-- Location: FF_X29_Y15_N25
\registers[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][4]~q\);

-- Location: LCCOMB_X28_Y10_N14
\r2~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~45_combout\ = (\add2[0]~input_o\ & ((\registers[13][4]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[12][4]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[13][4]~q\,
	datac => \registers[12][4]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~45_combout\);

-- Location: LCCOMB_X29_Y15_N24
\r2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~46_combout\ = (\add2[1]~input_o\ & ((\r2~45_combout\ & ((\registers[15][4]~q\))) # (!\r2~45_combout\ & (\registers[14][4]~q\)))) # (!\add2[1]~input_o\ & (((\r2~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[14][4]~q\,
	datab => \add2[1]~input_o\,
	datac => \registers[15][4]~q\,
	datad => \r2~45_combout\,
	combout => \r2~46_combout\);

-- Location: LCCOMB_X25_Y15_N18
\r2~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~49_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & ((\r2~46_combout\))) # (!\r2~6_combout\ & (\r2~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~48_combout\,
	datab => \r2~6_combout\,
	datac => \r2~46_combout\,
	datad => \r2~0_combout\,
	combout => \r2~49_combout\);

-- Location: LCCOMB_X24_Y14_N10
\r2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~54_combout\ = (\r2~49_combout\) # ((!\r2~6_combout\ & (\r2~53_combout\ & !\r2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~6_combout\,
	datab => \r2~53_combout\,
	datac => \r2~0_combout\,
	datad => \r2~49_combout\,
	combout => \r2~54_combout\);

-- Location: FF_X29_Y17_N1
\registers[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][5]~q\);

-- Location: FF_X30_Y17_N19
\registers[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][5]~q\);

-- Location: LCCOMB_X30_Y17_N18
\r2~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~57_combout\ = (\add2[0]~input_o\ & ((\registers[9][5]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[8][5]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[9][5]~q\,
	datac => \registers[8][5]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~57_combout\);

-- Location: LCCOMB_X29_Y17_N18
\r2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~58_combout\ = (\add2[1]~input_o\ & ((\r2~57_combout\ & ((\registers[11][5]~q\))) # (!\r2~57_combout\ & (\registers[10][5]~q\)))) # (!\add2[1]~input_o\ & (((\r2~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \registers[10][5]~q\,
	datac => \registers[11][5]~q\,
	datad => \r2~57_combout\,
	combout => \r2~58_combout\);

-- Location: LCCOMB_X25_Y15_N4
\r2~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~59_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & (\r2~56_combout\)) # (!\r2~6_combout\ & ((\r2~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~56_combout\,
	datab => \r2~6_combout\,
	datac => \r2~58_combout\,
	datad => \r2~0_combout\,
	combout => \r2~59_combout\);

-- Location: FF_X26_Y15_N19
\registers[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][5]~q\);

-- Location: LCCOMB_X26_Y15_N18
\r2~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~63_combout\ = (\r2~62_combout\ & (((\registers[3][5]~q\)) # (!\r2~11_combout\))) # (!\r2~62_combout\ & (\r2~11_combout\ & ((\registers[2][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~62_combout\,
	datab => \r2~11_combout\,
	datac => \registers[3][5]~q\,
	datad => \registers[2][5]~q\,
	combout => \r2~63_combout\);

-- Location: LCCOMB_X27_Y15_N28
\r2~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~64_combout\ = (\r2~59_combout\) # ((!\r2~0_combout\ & (!\r2~6_combout\ & \r2~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~6_combout\,
	datac => \r2~59_combout\,
	datad => \r2~63_combout\,
	combout => \r2~64_combout\);

-- Location: LCCOMB_X29_Y15_N20
\r2~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~66_combout\ = (\r2~65_combout\ & (((\registers[15][6]~q\) # (!\add2[1]~input_o\)))) # (!\r2~65_combout\ & (\registers[14][6]~q\ & ((\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~65_combout\,
	datab => \registers[14][6]~q\,
	datac => \registers[15][6]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~66_combout\);

-- Location: FF_X29_Y17_N29
\registers[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][6]~q\);

-- Location: FF_X29_Y17_N15
\registers[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][6]~q\);

-- Location: LCCOMB_X29_Y17_N14
\r2~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~68_combout\ = (\r2~67_combout\ & (((\registers[11][6]~q\) # (!\add2[0]~input_o\)))) # (!\r2~67_combout\ & (\registers[9][6]~q\ & ((\add2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~67_combout\,
	datab => \registers[9][6]~q\,
	datac => \registers[11][6]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~68_combout\);

-- Location: LCCOMB_X25_Y15_N30
\r2~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~69_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & (\r2~66_combout\)) # (!\r2~6_combout\ & ((\r2~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~6_combout\,
	datac => \r2~66_combout\,
	datad => \r2~68_combout\,
	combout => \r2~69_combout\);

-- Location: FF_X23_Y14_N23
\registers[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][6]~q\);

-- Location: LCCOMB_X23_Y14_N22
\r2~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~72_combout\ = (\r2~10_combout\ & (((\r2~11_combout\)))) # (!\r2~10_combout\ & ((\r2~11_combout\ & (\registers[2][6]~q\)) # (!\r2~11_combout\ & ((\registers[1][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[2][6]~q\,
	datab => \r2~10_combout\,
	datac => \registers[1][6]~q\,
	datad => \r2~11_combout\,
	combout => \r2~72_combout\);

-- Location: LCCOMB_X26_Y13_N0
\r2~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~71_combout\ = (\r2~70_combout\ & (((\registers[7][6]~q\)) # (!\add2[1]~input_o\))) # (!\r2~70_combout\ & (\add2[1]~input_o\ & ((\registers[6][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~70_combout\,
	datab => \add2[1]~input_o\,
	datac => \registers[7][6]~q\,
	datad => \registers[6][6]~q\,
	combout => \r2~71_combout\);

-- Location: LCCOMB_X24_Y14_N28
\r2~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~73_combout\ = (\r2~72_combout\ & ((\registers[3][6]~q\) # ((!\r2~10_combout\)))) # (!\r2~72_combout\ & (((\r2~10_combout\ & \r2~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[3][6]~q\,
	datab => \r2~72_combout\,
	datac => \r2~10_combout\,
	datad => \r2~71_combout\,
	combout => \r2~73_combout\);

-- Location: LCCOMB_X24_Y14_N22
\r2~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~74_combout\ = (\r2~69_combout\) # ((!\r2~6_combout\ & (!\r2~0_combout\ & \r2~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~6_combout\,
	datab => \r2~69_combout\,
	datac => \r2~0_combout\,
	datad => \r2~73_combout\,
	combout => \r2~74_combout\);

-- Location: FF_X30_Y17_N13
\registers[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][7]~q\);

-- Location: FF_X29_Y17_N27
\registers[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][7]~q\);

-- Location: LCCOMB_X29_Y17_N26
\r2~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~78_combout\ = (\r2~77_combout\ & (((\registers[11][7]~q\) # (!\add2[1]~input_o\)))) # (!\r2~77_combout\ & (\registers[10][7]~q\ & ((\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~77_combout\,
	datab => \registers[10][7]~q\,
	datac => \registers[11][7]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~78_combout\);

-- Location: LCCOMB_X25_Y15_N16
\r2~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~79_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & (\r2~76_combout\)) # (!\r2~6_combout\ & ((\r2~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~76_combout\,
	datab => \r2~0_combout\,
	datac => \r2~78_combout\,
	datad => \r2~6_combout\,
	combout => \r2~79_combout\);

-- Location: FF_X25_Y13_N17
\registers[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][7]~q\);

-- Location: FF_X26_Y13_N5
\registers[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][7]~q\);

-- Location: LCCOMB_X26_Y13_N4
\r2~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~81_combout\ = (\r2~80_combout\ & (((\registers[7][7]~q\) # (!\add2[0]~input_o\)))) # (!\r2~80_combout\ & (\registers[5][7]~q\ & ((\add2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~80_combout\,
	datab => \registers[5][7]~q\,
	datac => \registers[7][7]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~81_combout\);

-- Location: FF_X26_Y14_N23
\registers[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][7]~q\);

-- Location: LCCOMB_X27_Y14_N2
\r2~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~82_combout\ = (\r2~11_combout\ & (((\r2~10_combout\)))) # (!\r2~11_combout\ & ((\r2~10_combout\ & (\r2~81_combout\)) # (!\r2~10_combout\ & ((\registers[1][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \r2~81_combout\,
	datac => \r2~10_combout\,
	datad => \registers[1][7]~q\,
	combout => \r2~82_combout\);

-- Location: LCCOMB_X26_Y15_N20
\r2~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~83_combout\ = (\r2~11_combout\ & ((\r2~82_combout\ & ((\registers[3][7]~q\))) # (!\r2~82_combout\ & (\registers[2][7]~q\)))) # (!\r2~11_combout\ & (((\r2~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[2][7]~q\,
	datab => \r2~11_combout\,
	datac => \registers[3][7]~q\,
	datad => \r2~82_combout\,
	combout => \r2~83_combout\);

-- Location: LCCOMB_X27_Y15_N30
\r2~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~84_combout\ = (\r2~79_combout\) # ((!\r2~0_combout\ & (!\r2~6_combout\ & \r2~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~79_combout\,
	datac => \r2~6_combout\,
	datad => \r2~83_combout\,
	combout => \r2~84_combout\);

-- Location: FF_X29_Y16_N27
\registers[15][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[8]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][8]~q\);

-- Location: FF_X32_Y15_N3
\registers[14][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[8]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][8]~q\);

-- Location: LCCOMB_X29_Y16_N26
\r2~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~86_combout\ = (\r2~85_combout\ & (((\registers[15][8]~q\)) # (!\add2[1]~input_o\))) # (!\r2~85_combout\ & (\add2[1]~input_o\ & ((\registers[14][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~85_combout\,
	datab => \add2[1]~input_o\,
	datac => \registers[15][8]~q\,
	datad => \registers[14][8]~q\,
	combout => \r2~86_combout\);

-- Location: LCCOMB_X25_Y15_N10
\r2~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~89_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & ((\r2~86_combout\))) # (!\r2~6_combout\ & (\r2~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~88_combout\,
	datab => \r2~6_combout\,
	datac => \r2~86_combout\,
	datad => \r2~0_combout\,
	combout => \r2~89_combout\);

-- Location: FF_X26_Y13_N25
\registers[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[8]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][8]~q\);

-- Location: FF_X25_Y13_N23
\registers[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[8]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][8]~q\);

-- Location: FF_X25_Y13_N29
\registers[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[8]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][8]~q\);

-- Location: LCCOMB_X25_Y13_N22
\r2~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~90_combout\ = (\add2[0]~input_o\ & ((\add2[1]~input_o\) # ((\registers[5][8]~q\)))) # (!\add2[0]~input_o\ & (!\add2[1]~input_o\ & (\registers[4][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \add2[1]~input_o\,
	datac => \registers[4][8]~q\,
	datad => \registers[5][8]~q\,
	combout => \r2~90_combout\);

-- Location: LCCOMB_X26_Y13_N24
\r2~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~91_combout\ = (\add2[1]~input_o\ & ((\r2~90_combout\ & ((\registers[7][8]~q\))) # (!\r2~90_combout\ & (\registers[6][8]~q\)))) # (!\add2[1]~input_o\ & (((\r2~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[6][8]~q\,
	datab => \add2[1]~input_o\,
	datac => \registers[7][8]~q\,
	datad => \r2~90_combout\,
	combout => \r2~91_combout\);

-- Location: LCCOMB_X27_Y15_N24
\r2~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~93_combout\ = (\r2~92_combout\ & (((\registers[3][8]~q\)) # (!\r2~10_combout\))) # (!\r2~92_combout\ & (\r2~10_combout\ & (\r2~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~92_combout\,
	datab => \r2~10_combout\,
	datac => \r2~91_combout\,
	datad => \registers[3][8]~q\,
	combout => \r2~93_combout\);

-- Location: LCCOMB_X27_Y15_N26
\r2~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~94_combout\ = (\r2~89_combout\) # ((!\r2~0_combout\ & (!\r2~6_combout\ & \r2~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~89_combout\,
	datac => \r2~6_combout\,
	datad => \r2~93_combout\,
	combout => \r2~94_combout\);

-- Location: LCCOMB_X26_Y15_N8
\r2~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~103_combout\ = (\r2~102_combout\ & (((\registers[3][9]~q\)) # (!\r2~11_combout\))) # (!\r2~102_combout\ & (\r2~11_combout\ & ((\registers[2][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~102_combout\,
	datab => \r2~11_combout\,
	datac => \registers[3][9]~q\,
	datad => \registers[2][9]~q\,
	combout => \r2~103_combout\);

-- Location: FF_X31_Y15_N9
\registers[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[9]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][9]~q\);

-- Location: FF_X30_Y17_N11
\registers[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[9]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][9]~q\);

-- Location: LCCOMB_X30_Y17_N10
\r2~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~97_combout\ = (\add2[0]~input_o\ & ((\registers[9][9]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[8][9]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[9][9]~q\,
	datac => \registers[8][9]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~97_combout\);

-- Location: LCCOMB_X30_Y14_N16
\r2~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~98_combout\ = (\add2[1]~input_o\ & ((\r2~97_combout\ & ((\registers[11][9]~q\))) # (!\r2~97_combout\ & (\registers[10][9]~q\)))) # (!\add2[1]~input_o\ & (((\r2~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \registers[10][9]~q\,
	datac => \registers[11][9]~q\,
	datad => \r2~97_combout\,
	combout => \r2~98_combout\);

-- Location: LCCOMB_X25_Y15_N28
\r2~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~99_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & (\r2~96_combout\)) # (!\r2~6_combout\ & ((\r2~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~96_combout\,
	datab => \r2~6_combout\,
	datac => \r2~98_combout\,
	datad => \r2~0_combout\,
	combout => \r2~99_combout\);

-- Location: LCCOMB_X30_Y14_N26
\r2~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~104_combout\ = (\r2~99_combout\) # ((\r2~103_combout\ & (!\r2~6_combout\ & !\r2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~103_combout\,
	datab => \r2~6_combout\,
	datac => \r2~0_combout\,
	datad => \r2~99_combout\,
	combout => \r2~104_combout\);

-- Location: FF_X26_Y13_N17
\registers[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[10]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][10]~q\);

-- Location: LCCOMB_X25_Y13_N14
\r2~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~110_combout\ = (\add2[0]~input_o\ & ((\registers[5][10]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[4][10]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[5][10]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[4][10]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~110_combout\);

-- Location: LCCOMB_X26_Y13_N16
\r2~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~111_combout\ = (\add2[1]~input_o\ & ((\r2~110_combout\ & ((\registers[7][10]~q\))) # (!\r2~110_combout\ & (\registers[6][10]~q\)))) # (!\add2[1]~input_o\ & (((\r2~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[6][10]~q\,
	datab => \add2[1]~input_o\,
	datac => \registers[7][10]~q\,
	datad => \r2~110_combout\,
	combout => \r2~111_combout\);

-- Location: FF_X23_Y14_N31
\registers[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[10]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][10]~q\);

-- Location: FF_X23_Y14_N29
\registers[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[10]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][10]~q\);

-- Location: LCCOMB_X23_Y14_N30
\r2~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~112_combout\ = (\r2~11_combout\ & ((\r2~10_combout\) # ((\registers[2][10]~q\)))) # (!\r2~11_combout\ & (!\r2~10_combout\ & (\registers[1][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \r2~10_combout\,
	datac => \registers[1][10]~q\,
	datad => \registers[2][10]~q\,
	combout => \r2~112_combout\);

-- Location: LCCOMB_X26_Y13_N8
\r2~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~113_combout\ = (\r2~10_combout\ & ((\r2~112_combout\ & ((\registers[3][10]~q\))) # (!\r2~112_combout\ & (\r2~111_combout\)))) # (!\r2~10_combout\ & (((\r2~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~10_combout\,
	datab => \r2~111_combout\,
	datac => \r2~112_combout\,
	datad => \registers[3][10]~q\,
	combout => \r2~113_combout\);

-- Location: FF_X30_Y14_N11
\registers[11][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[10]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][10]~q\);

-- Location: FF_X29_Y15_N9
\registers[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[10]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][10]~q\);

-- Location: LCCOMB_X30_Y14_N10
\r2~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~108_combout\ = (\r2~107_combout\ & (((\registers[11][10]~q\)) # (!\add2[0]~input_o\))) # (!\r2~107_combout\ & (\add2[0]~input_o\ & ((\registers[9][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~107_combout\,
	datab => \add2[0]~input_o\,
	datac => \registers[11][10]~q\,
	datad => \registers[9][10]~q\,
	combout => \r2~108_combout\);

-- Location: LCCOMB_X25_Y15_N14
\r2~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~109_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & (\r2~106_combout\)) # (!\r2~6_combout\ & ((\r2~108_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~106_combout\,
	datab => \r2~6_combout\,
	datac => \r2~108_combout\,
	datad => \r2~0_combout\,
	combout => \r2~109_combout\);

-- Location: LCCOMB_X34_Y14_N18
\r2~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~114_combout\ = (\r2~109_combout\) # ((\r2~113_combout\ & (!\r2~6_combout\ & !\r2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~113_combout\,
	datab => \r2~109_combout\,
	datac => \r2~6_combout\,
	datad => \r2~0_combout\,
	combout => \r2~114_combout\);

-- Location: LCCOMB_X26_Y15_N4
\r2~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~123_combout\ = (\r2~122_combout\ & (((\registers[3][11]~q\)) # (!\r2~11_combout\))) # (!\r2~122_combout\ & (\r2~11_combout\ & ((\registers[2][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~122_combout\,
	datab => \r2~11_combout\,
	datac => \registers[3][11]~q\,
	datad => \registers[2][11]~q\,
	combout => \r2~123_combout\);

-- Location: FF_X30_Y14_N29
\registers[11][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[11]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][11]~q\);

-- Location: FF_X31_Y15_N19
\registers[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[11]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][11]~q\);

-- Location: FF_X30_Y17_N15
\registers[8][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[11]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][11]~q\);

-- Location: LCCOMB_X30_Y17_N14
\r2~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~117_combout\ = (\add2[0]~input_o\ & ((\registers[9][11]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[8][11]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[9][11]~q\,
	datac => \registers[8][11]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~117_combout\);

-- Location: LCCOMB_X30_Y14_N28
\r2~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~118_combout\ = (\add2[1]~input_o\ & ((\r2~117_combout\ & ((\registers[11][11]~q\))) # (!\r2~117_combout\ & (\registers[10][11]~q\)))) # (!\add2[1]~input_o\ & (((\r2~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[10][11]~q\,
	datab => \add2[1]~input_o\,
	datac => \registers[11][11]~q\,
	datad => \r2~117_combout\,
	combout => \r2~118_combout\);

-- Location: LCCOMB_X30_Y14_N4
\r2~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~119_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & (\r2~116_combout\)) # (!\r2~6_combout\ & ((\r2~118_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~116_combout\,
	datab => \r2~6_combout\,
	datac => \r2~0_combout\,
	datad => \r2~118_combout\,
	combout => \r2~119_combout\);

-- Location: LCCOMB_X30_Y14_N6
\r2~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~124_combout\ = (\r2~119_combout\) # ((\r2~123_combout\ & (!\r2~0_combout\ & !\r2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~123_combout\,
	datab => \r2~0_combout\,
	datac => \r2~119_combout\,
	datad => \r2~6_combout\,
	combout => \r2~124_combout\);

-- Location: FF_X23_Y14_N11
\registers[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[12]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][12]~q\);

-- Location: FF_X23_Y14_N25
\registers[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[12]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[2][12]~q\);

-- Location: LCCOMB_X23_Y14_N10
\r2~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~132_combout\ = (\r2~11_combout\ & ((\r2~10_combout\) # ((\registers[2][12]~q\)))) # (!\r2~11_combout\ & (!\r2~10_combout\ & (\registers[1][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \r2~10_combout\,
	datac => \registers[1][12]~q\,
	datad => \registers[2][12]~q\,
	combout => \r2~132_combout\);

-- Location: LCCOMB_X24_Y13_N26
\r2~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~133_combout\ = (\r2~132_combout\ & (((\registers[3][12]~q\) # (!\r2~10_combout\)))) # (!\r2~132_combout\ & (\r2~131_combout\ & (\r2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~131_combout\,
	datab => \r2~132_combout\,
	datac => \r2~10_combout\,
	datad => \registers[3][12]~q\,
	combout => \r2~133_combout\);

-- Location: FF_X28_Y10_N29
\registers[13][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[12]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][12]~q\);

-- Location: FF_X28_Y10_N23
\registers[12][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[12]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][12]~q\);

-- Location: LCCOMB_X28_Y10_N22
\r2~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~125_combout\ = (\add2[0]~input_o\ & ((\registers[13][12]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[12][12]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[13][12]~q\,
	datac => \registers[12][12]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~125_combout\);

-- Location: FF_X29_Y16_N17
\registers[15][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[12]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][12]~q\);

-- Location: LCCOMB_X29_Y16_N16
\r2~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~126_combout\ = (\r2~125_combout\ & (((\registers[15][12]~q\) # (!\add2[1]~input_o\)))) # (!\r2~125_combout\ & (\registers[14][12]~q\ & ((\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[14][12]~q\,
	datab => \r2~125_combout\,
	datac => \registers[15][12]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~126_combout\);

-- Location: LCCOMB_X24_Y13_N0
\r2~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~129_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & ((\r2~126_combout\))) # (!\r2~6_combout\ & (\r2~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~128_combout\,
	datab => \r2~0_combout\,
	datac => \r2~6_combout\,
	datad => \r2~126_combout\,
	combout => \r2~129_combout\);

-- Location: LCCOMB_X24_Y13_N28
\r2~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~134_combout\ = (\r2~129_combout\) # ((\r2~133_combout\ & (!\r2~0_combout\ & !\r2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~133_combout\,
	datab => \r2~0_combout\,
	datac => \r2~6_combout\,
	datad => \r2~129_combout\,
	combout => \r2~134_combout\);

-- Location: FF_X25_Y13_N11
\registers[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[13]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][13]~q\);

-- Location: LCCOMB_X25_Y13_N10
\r2~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~140_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[6][13]~q\)) # (!\add2[1]~input_o\ & ((\registers[4][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[6][13]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[4][13]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~140_combout\);

-- Location: FF_X24_Y13_N15
\registers[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[13]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][13]~q\);

-- Location: FF_X25_Y13_N25
\registers[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[13]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][13]~q\);

-- Location: LCCOMB_X24_Y13_N14
\r2~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~141_combout\ = (\add2[0]~input_o\ & ((\r2~140_combout\ & (\registers[7][13]~q\)) # (!\r2~140_combout\ & ((\registers[5][13]~q\))))) # (!\add2[0]~input_o\ & (\r2~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \r2~140_combout\,
	datac => \registers[7][13]~q\,
	datad => \registers[5][13]~q\,
	combout => \r2~141_combout\);

-- Location: FF_X26_Y14_N11
\registers[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[13]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][13]~q\);

-- Location: LCCOMB_X27_Y14_N8
\r2~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~142_combout\ = (\r2~11_combout\ & (\r2~10_combout\)) # (!\r2~11_combout\ & ((\r2~10_combout\ & (\r2~141_combout\)) # (!\r2~10_combout\ & ((\registers[1][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \r2~10_combout\,
	datac => \r2~141_combout\,
	datad => \registers[1][13]~q\,
	combout => \r2~142_combout\);

-- Location: LCCOMB_X28_Y14_N8
\r2~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~143_combout\ = (\r2~11_combout\ & ((\r2~142_combout\ & ((\registers[3][13]~q\))) # (!\r2~142_combout\ & (\registers[2][13]~q\)))) # (!\r2~11_combout\ & (((\r2~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \registers[2][13]~q\,
	datac => \registers[3][13]~q\,
	datad => \r2~142_combout\,
	combout => \r2~143_combout\);

-- Location: FF_X31_Y14_N27
\registers[8][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[13]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][13]~q\);

-- Location: LCCOMB_X31_Y14_N26
\r2~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~137_combout\ = (\add2[1]~input_o\ & (\add2[0]~input_o\)) # (!\add2[1]~input_o\ & ((\add2[0]~input_o\ & ((\registers[9][13]~q\))) # (!\add2[0]~input_o\ & (\registers[8][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[8][13]~q\,
	datad => \registers[9][13]~q\,
	combout => \r2~137_combout\);

-- Location: FF_X31_Y13_N23
\registers[11][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[13]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][13]~q\);

-- Location: LCCOMB_X31_Y13_N22
\r2~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~138_combout\ = (\r2~137_combout\ & (((\registers[11][13]~q\) # (!\add2[1]~input_o\)))) # (!\r2~137_combout\ & (\registers[10][13]~q\ & ((\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[10][13]~q\,
	datab => \r2~137_combout\,
	datac => \registers[11][13]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~138_combout\);

-- Location: LCCOMB_X29_Y16_N10
\r2~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~136_combout\ = (\r2~135_combout\ & (((\registers[15][13]~q\) # (!\add2[0]~input_o\)))) # (!\r2~135_combout\ & (\registers[13][13]~q\ & ((\add2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~135_combout\,
	datab => \registers[13][13]~q\,
	datac => \registers[15][13]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~136_combout\);

-- Location: LCCOMB_X31_Y13_N6
\r2~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~139_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & ((\r2~136_combout\))) # (!\r2~6_combout\ & (\r2~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~6_combout\,
	datac => \r2~138_combout\,
	datad => \r2~136_combout\,
	combout => \r2~139_combout\);

-- Location: LCCOMB_X31_Y13_N0
\r2~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~144_combout\ = (\r2~139_combout\) # ((\r2~143_combout\ & (!\r2~6_combout\ & !\r2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~143_combout\,
	datab => \r2~6_combout\,
	datac => \r2~0_combout\,
	datad => \r2~139_combout\,
	combout => \r2~144_combout\);

-- Location: FF_X29_Y16_N29
\registers[15][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[14]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][14]~q\);

-- Location: FF_X29_Y10_N5
\registers[14][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[14]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][14]~q\);

-- Location: LCCOMB_X29_Y16_N28
\r2~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~146_combout\ = (\r2~145_combout\ & (((\registers[15][14]~q\)) # (!\add2[1]~input_o\))) # (!\r2~145_combout\ & (\add2[1]~input_o\ & ((\registers[14][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~145_combout\,
	datab => \add2[1]~input_o\,
	datac => \registers[15][14]~q\,
	datad => \registers[14][14]~q\,
	combout => \r2~146_combout\);

-- Location: LCCOMB_X24_Y13_N30
\r2~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~149_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & ((\r2~146_combout\))) # (!\r2~6_combout\ & (\r2~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~148_combout\,
	datab => \r2~0_combout\,
	datac => \r2~6_combout\,
	datad => \r2~146_combout\,
	combout => \r2~149_combout\);

-- Location: FF_X24_Y13_N3
\registers[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[14]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][14]~q\);

-- Location: LCCOMB_X24_Y13_N2
\r2~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~151_combout\ = (\r2~150_combout\ & (((\registers[7][14]~q\) # (!\add2[1]~input_o\)))) # (!\r2~150_combout\ & (\registers[6][14]~q\ & ((\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~150_combout\,
	datab => \registers[6][14]~q\,
	datac => \registers[7][14]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~151_combout\);

-- Location: LCCOMB_X24_Y13_N24
\r2~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~153_combout\ = (\r2~152_combout\ & ((\registers[3][14]~q\) # ((!\r2~10_combout\)))) # (!\r2~152_combout\ & (((\r2~10_combout\ & \r2~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~152_combout\,
	datab => \registers[3][14]~q\,
	datac => \r2~10_combout\,
	datad => \r2~151_combout\,
	combout => \r2~153_combout\);

-- Location: LCCOMB_X24_Y13_N18
\r2~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~154_combout\ = (\r2~149_combout\) # ((!\r2~0_combout\ & (!\r2~6_combout\ & \r2~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~149_combout\,
	datab => \r2~0_combout\,
	datac => \r2~6_combout\,
	datad => \r2~153_combout\,
	combout => \r2~154_combout\);

-- Location: FF_X30_Y14_N21
\registers[11][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[15]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][15]~q\);

-- Location: FF_X30_Y14_N19
\registers[10][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[15]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][15]~q\);

-- Location: LCCOMB_X30_Y14_N20
\r2~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~158_combout\ = (\r2~157_combout\ & (((\registers[11][15]~q\)) # (!\add2[1]~input_o\))) # (!\r2~157_combout\ & (\add2[1]~input_o\ & ((\registers[10][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~157_combout\,
	datab => \add2[1]~input_o\,
	datac => \registers[11][15]~q\,
	datad => \registers[10][15]~q\,
	combout => \r2~158_combout\);

-- Location: LCCOMB_X31_Y11_N10
\r2~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~155_combout\ = (\add2[1]~input_o\ & ((\add2[0]~input_o\) # ((\registers[14][15]~q\)))) # (!\add2[1]~input_o\ & (!\add2[0]~input_o\ & (\registers[12][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[12][15]~q\,
	datad => \registers[14][15]~q\,
	combout => \r2~155_combout\);

-- Location: LCCOMB_X30_Y11_N28
\r2~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~156_combout\ = (\r2~155_combout\ & (((\registers[15][15]~q\) # (!\add2[0]~input_o\)))) # (!\r2~155_combout\ & (\registers[13][15]~q\ & ((\add2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[13][15]~q\,
	datab => \r2~155_combout\,
	datac => \registers[15][15]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~156_combout\);

-- Location: LCCOMB_X30_Y11_N18
\r2~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~159_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & ((\r2~156_combout\))) # (!\r2~6_combout\ & (\r2~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~158_combout\,
	datac => \r2~6_combout\,
	datad => \r2~156_combout\,
	combout => \r2~159_combout\);

-- Location: FF_X29_Y14_N11
\registers[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[15]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][15]~q\);

-- Location: FF_X28_Y11_N1
\registers[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[15]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][15]~q\);

-- Location: FF_X28_Y11_N19
\registers[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[15]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][15]~q\);

-- Location: LCCOMB_X28_Y11_N18
\r2~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~160_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[6][15]~q\)) # (!\add2[1]~input_o\ & ((\registers[4][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[6][15]~q\,
	datac => \registers[4][15]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~160_combout\);

-- Location: FF_X27_Y12_N29
\registers[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[15]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][15]~q\);

-- Location: FF_X27_Y12_N11
\registers[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[15]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][15]~q\);

-- Location: LCCOMB_X27_Y12_N28
\r2~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~161_combout\ = (\add2[0]~input_o\ & ((\r2~160_combout\ & (\registers[7][15]~q\)) # (!\r2~160_combout\ & ((\registers[5][15]~q\))))) # (!\add2[0]~input_o\ & (\r2~160_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \r2~160_combout\,
	datac => \registers[7][15]~q\,
	datad => \registers[5][15]~q\,
	combout => \r2~161_combout\);

-- Location: LCCOMB_X27_Y14_N10
\r2~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~162_combout\ = (\r2~11_combout\ & (((\r2~10_combout\)))) # (!\r2~11_combout\ & ((\r2~10_combout\ & ((\r2~161_combout\))) # (!\r2~10_combout\ & (\registers[1][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \registers[1][15]~q\,
	datac => \r2~10_combout\,
	datad => \r2~161_combout\,
	combout => \r2~162_combout\);

-- Location: LCCOMB_X28_Y14_N20
\r2~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~163_combout\ = (\r2~11_combout\ & ((\r2~162_combout\ & ((\registers[3][15]~q\))) # (!\r2~162_combout\ & (\registers[2][15]~q\)))) # (!\r2~11_combout\ & (((\r2~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \registers[2][15]~q\,
	datac => \registers[3][15]~q\,
	datad => \r2~162_combout\,
	combout => \r2~163_combout\);

-- Location: LCCOMB_X30_Y11_N20
\r2~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~164_combout\ = (\r2~159_combout\) # ((!\r2~0_combout\ & (\r2~163_combout\ & !\r2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~159_combout\,
	datac => \r2~163_combout\,
	datad => \r2~6_combout\,
	combout => \r2~164_combout\);

-- Location: LCCOMB_X31_Y14_N2
\r2~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~167_combout\ = (\add2[1]~input_o\ & ((\registers[10][16]~q\) # ((\add2[0]~input_o\)))) # (!\add2[1]~input_o\ & (((\registers[8][16]~q\ & !\add2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \registers[10][16]~q\,
	datac => \registers[8][16]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~167_combout\);

-- Location: LCCOMB_X32_Y14_N24
\r2~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~168_combout\ = (\add2[0]~input_o\ & ((\r2~167_combout\ & ((\registers[11][16]~q\))) # (!\r2~167_combout\ & (\registers[9][16]~q\)))) # (!\add2[0]~input_o\ & (((\r2~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[9][16]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[11][16]~q\,
	datad => \r2~167_combout\,
	combout => \r2~168_combout\);

-- Location: FF_X31_Y12_N7
\registers[15][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[16]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][16]~q\);

-- Location: FF_X31_Y12_N29
\registers[14][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[16]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][16]~q\);

-- Location: LCCOMB_X31_Y12_N6
\r2~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~166_combout\ = (\r2~165_combout\ & (((\registers[15][16]~q\)) # (!\add2[1]~input_o\))) # (!\r2~165_combout\ & (\add2[1]~input_o\ & ((\registers[14][16]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~165_combout\,
	datab => \add2[1]~input_o\,
	datac => \registers[15][16]~q\,
	datad => \registers[14][16]~q\,
	combout => \r2~166_combout\);

-- Location: LCCOMB_X27_Y12_N26
\r2~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~169_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & ((\r2~166_combout\))) # (!\r2~6_combout\ & (\r2~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~6_combout\,
	datac => \r2~168_combout\,
	datad => \r2~166_combout\,
	combout => \r2~169_combout\);

-- Location: FF_X27_Y12_N15
\registers[7][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[16]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][16]~q\);

-- Location: FF_X27_Y13_N25
\registers[4][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[16]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][16]~q\);

-- Location: LCCOMB_X27_Y13_N24
\r2~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~170_combout\ = (\add2[0]~input_o\ & ((\registers[5][16]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[4][16]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[5][16]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[4][16]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~170_combout\);

-- Location: LCCOMB_X27_Y12_N14
\r2~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~171_combout\ = (\add2[1]~input_o\ & ((\r2~170_combout\ & ((\registers[7][16]~q\))) # (!\r2~170_combout\ & (\registers[6][16]~q\)))) # (!\add2[1]~input_o\ & (((\r2~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[6][16]~q\,
	datab => \add2[1]~input_o\,
	datac => \registers[7][16]~q\,
	datad => \r2~170_combout\,
	combout => \r2~171_combout\);

-- Location: LCCOMB_X23_Y14_N18
\r2~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~172_combout\ = (\r2~11_combout\ & ((\r2~10_combout\) # ((\registers[2][16]~q\)))) # (!\r2~11_combout\ & (!\r2~10_combout\ & (\registers[1][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \r2~10_combout\,
	datac => \registers[1][16]~q\,
	datad => \registers[2][16]~q\,
	combout => \r2~172_combout\);

-- Location: LCCOMB_X27_Y12_N4
\r2~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~173_combout\ = (\r2~10_combout\ & ((\r2~172_combout\ & (\registers[3][16]~q\)) # (!\r2~172_combout\ & ((\r2~171_combout\))))) # (!\r2~10_combout\ & (((\r2~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[3][16]~q\,
	datab => \r2~10_combout\,
	datac => \r2~171_combout\,
	datad => \r2~172_combout\,
	combout => \r2~173_combout\);

-- Location: LCCOMB_X27_Y12_N30
\r2~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~174_combout\ = (\r2~169_combout\) # ((\r2~173_combout\ & (!\r2~0_combout\ & !\r2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~169_combout\,
	datab => \r2~173_combout\,
	datac => \r2~0_combout\,
	datad => \r2~6_combout\,
	combout => \r2~174_combout\);

-- Location: FF_X28_Y11_N7
\registers[4][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[17]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][17]~q\);

-- Location: LCCOMB_X28_Y11_N6
\r2~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~180_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[6][17]~q\)) # (!\add2[1]~input_o\ & ((\registers[4][17]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[6][17]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[4][17]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~180_combout\);

-- Location: FF_X27_Y12_N19
\registers[7][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[17]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][17]~q\);

-- Location: FF_X27_Y12_N17
\registers[5][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[17]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][17]~q\);

-- Location: LCCOMB_X27_Y12_N18
\r2~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~181_combout\ = (\add2[0]~input_o\ & ((\r2~180_combout\ & (\registers[7][17]~q\)) # (!\r2~180_combout\ & ((\registers[5][17]~q\))))) # (!\add2[0]~input_o\ & (\r2~180_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \r2~180_combout\,
	datac => \registers[7][17]~q\,
	datad => \registers[5][17]~q\,
	combout => \r2~181_combout\);

-- Location: LCCOMB_X27_Y14_N20
\r2~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~182_combout\ = (\r2~10_combout\ & (((\r2~11_combout\) # (\r2~181_combout\)))) # (!\r2~10_combout\ & (\registers[1][17]~q\ & (!\r2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[1][17]~q\,
	datab => \r2~10_combout\,
	datac => \r2~11_combout\,
	datad => \r2~181_combout\,
	combout => \r2~182_combout\);

-- Location: LCCOMB_X28_Y14_N24
\r2~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~183_combout\ = (\r2~11_combout\ & ((\r2~182_combout\ & (\registers[3][17]~q\)) # (!\r2~182_combout\ & ((\registers[2][17]~q\))))) # (!\r2~11_combout\ & (\r2~182_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \r2~182_combout\,
	datac => \registers[3][17]~q\,
	datad => \registers[2][17]~q\,
	combout => \r2~183_combout\);

-- Location: LCCOMB_X31_Y14_N14
\r2~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~177_combout\ = (\add2[1]~input_o\ & (\add2[0]~input_o\)) # (!\add2[1]~input_o\ & ((\add2[0]~input_o\ & ((\registers[9][17]~q\))) # (!\add2[0]~input_o\ & (\registers[8][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[8][17]~q\,
	datad => \registers[9][17]~q\,
	combout => \r2~177_combout\);

-- Location: LCCOMB_X32_Y14_N26
\r2~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~178_combout\ = (\add2[1]~input_o\ & ((\r2~177_combout\ & (\registers[11][17]~q\)) # (!\r2~177_combout\ & ((\registers[10][17]~q\))))) # (!\add2[1]~input_o\ & (\r2~177_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \r2~177_combout\,
	datac => \registers[11][17]~q\,
	datad => \registers[10][17]~q\,
	combout => \r2~178_combout\);

-- Location: FF_X34_Y14_N17
\registers[15][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[17]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][17]~q\);

-- Location: FF_X31_Y11_N15
\registers[12][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[17]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][17]~q\);

-- Location: FF_X31_Y11_N21
\registers[14][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[17]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[14][17]~q\);

-- Location: LCCOMB_X31_Y11_N14
\r2~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~175_combout\ = (\add2[1]~input_o\ & ((\add2[0]~input_o\) # ((\registers[14][17]~q\)))) # (!\add2[1]~input_o\ & (!\add2[0]~input_o\ & (\registers[12][17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[12][17]~q\,
	datad => \registers[14][17]~q\,
	combout => \r2~175_combout\);

-- Location: LCCOMB_X34_Y14_N16
\r2~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~176_combout\ = (\add2[0]~input_o\ & ((\r2~175_combout\ & ((\registers[15][17]~q\))) # (!\r2~175_combout\ & (\registers[13][17]~q\)))) # (!\add2[0]~input_o\ & (((\r2~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[13][17]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[15][17]~q\,
	datad => \r2~175_combout\,
	combout => \r2~176_combout\);

-- Location: LCCOMB_X34_Y14_N28
\r2~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~179_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & ((\r2~176_combout\))) # (!\r2~6_combout\ & (\r2~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~178_combout\,
	datac => \r2~6_combout\,
	datad => \r2~176_combout\,
	combout => \r2~179_combout\);

-- Location: LCCOMB_X34_Y14_N22
\r2~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~184_combout\ = (\r2~179_combout\) # ((!\r2~0_combout\ & (\r2~183_combout\ & !\r2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~183_combout\,
	datac => \r2~6_combout\,
	datad => \r2~179_combout\,
	combout => \r2~184_combout\);

-- Location: FF_X29_Y14_N27
\registers[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[18]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][18]~q\);

-- Location: LCCOMB_X29_Y14_N26
\r2~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~192_combout\ = (\r2~11_combout\ & ((\r2~10_combout\) # ((\registers[2][18]~q\)))) # (!\r2~11_combout\ & (!\r2~10_combout\ & (\registers[1][18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \r2~10_combout\,
	datac => \registers[1][18]~q\,
	datad => \registers[2][18]~q\,
	combout => \r2~192_combout\);

-- Location: FF_X27_Y13_N5
\registers[4][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[18]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][18]~q\);

-- Location: LCCOMB_X27_Y13_N4
\r2~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~190_combout\ = (\add2[0]~input_o\ & ((\registers[5][18]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[4][18]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[5][18]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[4][18]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~190_combout\);

-- Location: LCCOMB_X27_Y12_N12
\r2~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~191_combout\ = (\add2[1]~input_o\ & ((\r2~190_combout\ & ((\registers[7][18]~q\))) # (!\r2~190_combout\ & (\registers[6][18]~q\)))) # (!\add2[1]~input_o\ & (((\r2~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[6][18]~q\,
	datab => \add2[1]~input_o\,
	datac => \registers[7][18]~q\,
	datad => \r2~190_combout\,
	combout => \r2~191_combout\);

-- Location: LCCOMB_X27_Y12_N24
\r2~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~193_combout\ = (\r2~192_combout\ & ((\registers[3][18]~q\) # ((!\r2~10_combout\)))) # (!\r2~192_combout\ & (((\r2~10_combout\ & \r2~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[3][18]~q\,
	datab => \r2~192_combout\,
	datac => \r2~10_combout\,
	datad => \r2~191_combout\,
	combout => \r2~193_combout\);

-- Location: LCCOMB_X31_Y12_N8
\r2~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~186_combout\ = (\r2~185_combout\ & (((\registers[15][18]~q\) # (!\add2[1]~input_o\)))) # (!\r2~185_combout\ & (\registers[14][18]~q\ & ((\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~185_combout\,
	datab => \registers[14][18]~q\,
	datac => \registers[15][18]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~186_combout\);

-- Location: FF_X32_Y14_N29
\registers[11][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[18]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][18]~q\);

-- Location: FF_X31_Y14_N11
\registers[8][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[18]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][18]~q\);

-- Location: LCCOMB_X31_Y14_N10
\r2~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~187_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[10][18]~q\)) # (!\add2[1]~input_o\ & ((\registers[8][18]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[10][18]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[8][18]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~187_combout\);

-- Location: LCCOMB_X32_Y14_N28
\r2~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~188_combout\ = (\add2[0]~input_o\ & ((\r2~187_combout\ & ((\registers[11][18]~q\))) # (!\r2~187_combout\ & (\registers[9][18]~q\)))) # (!\add2[0]~input_o\ & (((\r2~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[9][18]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[11][18]~q\,
	datad => \r2~187_combout\,
	combout => \r2~188_combout\);

-- Location: LCCOMB_X34_Y14_N0
\r2~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~189_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & (\r2~186_combout\)) # (!\r2~6_combout\ & ((\r2~188_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~6_combout\,
	datab => \r2~186_combout\,
	datac => \r2~188_combout\,
	datad => \r2~0_combout\,
	combout => \r2~189_combout\);

-- Location: LCCOMB_X34_Y14_N26
\r2~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~194_combout\ = (\r2~189_combout\) # ((\r2~193_combout\ & (!\r2~6_combout\ & !\r2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~193_combout\,
	datab => \r2~189_combout\,
	datac => \r2~6_combout\,
	datad => \r2~0_combout\,
	combout => \r2~194_combout\);

-- Location: FF_X29_Y14_N21
\registers[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[19]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][19]~q\);

-- Location: LCCOMB_X27_Y14_N22
\r2~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~202_combout\ = (\r2~10_combout\ & ((\r2~201_combout\) # ((\r2~11_combout\)))) # (!\r2~10_combout\ & (((!\r2~11_combout\ & \registers[1][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~201_combout\,
	datab => \r2~10_combout\,
	datac => \r2~11_combout\,
	datad => \registers[1][19]~q\,
	combout => \r2~202_combout\);

-- Location: LCCOMB_X28_Y14_N14
\r2~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~203_combout\ = (\r2~11_combout\ & ((\r2~202_combout\ & (\registers[3][19]~q\)) # (!\r2~202_combout\ & ((\registers[2][19]~q\))))) # (!\r2~11_combout\ & (\r2~202_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \r2~202_combout\,
	datac => \registers[3][19]~q\,
	datad => \registers[2][19]~q\,
	combout => \r2~203_combout\);

-- Location: FF_X31_Y14_N23
\registers[8][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[19]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][19]~q\);

-- Location: LCCOMB_X31_Y14_N22
\r2~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~197_combout\ = (\add2[1]~input_o\ & (\add2[0]~input_o\)) # (!\add2[1]~input_o\ & ((\add2[0]~input_o\ & ((\registers[9][19]~q\))) # (!\add2[0]~input_o\ & (\registers[8][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[8][19]~q\,
	datad => \registers[9][19]~q\,
	combout => \r2~197_combout\);

-- Location: LCCOMB_X32_Y14_N6
\r2~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~198_combout\ = (\add2[1]~input_o\ & ((\r2~197_combout\ & ((\registers[11][19]~q\))) # (!\r2~197_combout\ & (\registers[10][19]~q\)))) # (!\add2[1]~input_o\ & (((\r2~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[10][19]~q\,
	datab => \add2[1]~input_o\,
	datac => \registers[11][19]~q\,
	datad => \r2~197_combout\,
	combout => \r2~198_combout\);

-- Location: LCCOMB_X32_Y14_N16
\r2~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~199_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & (\r2~196_combout\)) # (!\r2~6_combout\ & ((\r2~198_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~196_combout\,
	datab => \r2~0_combout\,
	datac => \r2~6_combout\,
	datad => \r2~198_combout\,
	combout => \r2~199_combout\);

-- Location: LCCOMB_X32_Y14_N10
\r2~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~204_combout\ = (\r2~199_combout\) # ((!\r2~6_combout\ & (!\r2~0_combout\ & \r2~203_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~6_combout\,
	datab => \r2~0_combout\,
	datac => \r2~203_combout\,
	datad => \r2~199_combout\,
	combout => \r2~204_combout\);

-- Location: LCCOMB_X26_Y14_N6
\r2~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~212_combout\ = (\r2~11_combout\ & ((\registers[2][20]~q\) # ((\r2~10_combout\)))) # (!\r2~11_combout\ & (((\registers[1][20]~q\ & !\r2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \registers[2][20]~q\,
	datac => \registers[1][20]~q\,
	datad => \r2~10_combout\,
	combout => \r2~212_combout\);

-- Location: LCCOMB_X25_Y14_N14
\r2~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~213_combout\ = (\r2~10_combout\ & ((\r2~212_combout\ & ((\registers[3][20]~q\))) # (!\r2~212_combout\ & (\r2~211_combout\)))) # (!\r2~10_combout\ & (((\r2~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~211_combout\,
	datab => \r2~10_combout\,
	datac => \registers[3][20]~q\,
	datad => \r2~212_combout\,
	combout => \r2~213_combout\);

-- Location: FF_X25_Y14_N23
\registers[11][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[20]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][20]~q\);

-- Location: LCCOMB_X25_Y14_N22
\r2~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~208_combout\ = (\r2~207_combout\ & (((\registers[11][20]~q\)) # (!\add2[0]~input_o\))) # (!\r2~207_combout\ & (\add2[0]~input_o\ & ((\registers[9][20]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~207_combout\,
	datab => \add2[0]~input_o\,
	datac => \registers[11][20]~q\,
	datad => \registers[9][20]~q\,
	combout => \r2~208_combout\);

-- Location: LCCOMB_X31_Y12_N4
\r2~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~206_combout\ = (\r2~205_combout\ & (((\registers[15][20]~q\)) # (!\add2[1]~input_o\))) # (!\r2~205_combout\ & (\add2[1]~input_o\ & ((\registers[14][20]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~205_combout\,
	datab => \add2[1]~input_o\,
	datac => \registers[15][20]~q\,
	datad => \registers[14][20]~q\,
	combout => \r2~206_combout\);

-- Location: LCCOMB_X25_Y14_N20
\r2~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~209_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & ((\r2~206_combout\))) # (!\r2~6_combout\ & (\r2~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~6_combout\,
	datac => \r2~208_combout\,
	datad => \r2~206_combout\,
	combout => \r2~209_combout\);

-- Location: LCCOMB_X25_Y14_N8
\r2~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~214_combout\ = (\r2~209_combout\) # ((!\r2~0_combout\ & (!\r2~6_combout\ & \r2~213_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~6_combout\,
	datac => \r2~213_combout\,
	datad => \r2~209_combout\,
	combout => \r2~214_combout\);

-- Location: FF_X30_Y12_N11
\registers[3][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[21]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][21]~q\);

-- Location: LCCOMB_X30_Y12_N10
\r2~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~223_combout\ = (\r2~222_combout\ & (((\registers[3][21]~q\)) # (!\r2~11_combout\))) # (!\r2~222_combout\ & (\r2~11_combout\ & ((\registers[2][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~222_combout\,
	datab => \r2~11_combout\,
	datac => \registers[3][21]~q\,
	datad => \registers[2][21]~q\,
	combout => \r2~223_combout\);

-- Location: FF_X31_Y13_N15
\registers[10][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[21]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][21]~q\);

-- Location: FF_X31_Y13_N25
\registers[11][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[21]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][21]~q\);

-- Location: LCCOMB_X31_Y13_N24
\r2~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~218_combout\ = (\r2~217_combout\ & (((\registers[11][21]~q\) # (!\add2[1]~input_o\)))) # (!\r2~217_combout\ & (\registers[10][21]~q\ & ((\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~217_combout\,
	datab => \registers[10][21]~q\,
	datac => \registers[11][21]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~218_combout\);

-- Location: LCCOMB_X31_Y13_N18
\r2~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~219_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & (\r2~216_combout\)) # (!\r2~6_combout\ & ((\r2~218_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~216_combout\,
	datab => \r2~6_combout\,
	datac => \r2~0_combout\,
	datad => \r2~218_combout\,
	combout => \r2~219_combout\);

-- Location: LCCOMB_X31_Y13_N4
\r2~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~224_combout\ = (\r2~219_combout\) # ((!\r2~0_combout\ & (!\r2~6_combout\ & \r2~223_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~6_combout\,
	datac => \r2~223_combout\,
	datad => \r2~219_combout\,
	combout => \r2~224_combout\);

-- Location: LCCOMB_X30_Y17_N26
\r2~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~227_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[10][22]~q\)) # (!\add2[1]~input_o\ & ((\registers[8][22]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[10][22]~q\,
	datac => \registers[8][22]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~227_combout\);

-- Location: LCCOMB_X29_Y17_N10
\r2~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~228_combout\ = (\add2[0]~input_o\ & ((\r2~227_combout\ & ((\registers[11][22]~q\))) # (!\r2~227_combout\ & (\registers[9][22]~q\)))) # (!\add2[0]~input_o\ & (((\r2~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[9][22]~q\,
	datac => \registers[11][22]~q\,
	datad => \r2~227_combout\,
	combout => \r2~228_combout\);

-- Location: LCCOMB_X30_Y15_N2
\r2~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~225_combout\ = (\add2[0]~input_o\ & ((\add2[1]~input_o\) # ((\registers[13][22]~q\)))) # (!\add2[0]~input_o\ & (!\add2[1]~input_o\ & (\registers[12][22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \add2[1]~input_o\,
	datac => \registers[12][22]~q\,
	datad => \registers[13][22]~q\,
	combout => \r2~225_combout\);

-- Location: LCCOMB_X27_Y15_N18
\r2~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~226_combout\ = (\add2[1]~input_o\ & ((\r2~225_combout\ & ((\registers[15][22]~q\))) # (!\r2~225_combout\ & (\registers[14][22]~q\)))) # (!\add2[1]~input_o\ & (((\r2~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[14][22]~q\,
	datab => \add2[1]~input_o\,
	datac => \registers[15][22]~q\,
	datad => \r2~225_combout\,
	combout => \r2~226_combout\);

-- Location: LCCOMB_X27_Y15_N20
\r2~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~229_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & ((\r2~226_combout\))) # (!\r2~6_combout\ & (\r2~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~228_combout\,
	datac => \r2~6_combout\,
	datad => \r2~226_combout\,
	combout => \r2~229_combout\);

-- Location: FF_X23_Y14_N15
\registers[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[22]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][22]~q\);

-- Location: LCCOMB_X23_Y14_N14
\r2~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~232_combout\ = (\r2~11_combout\ & ((\registers[2][22]~q\) # ((\r2~10_combout\)))) # (!\r2~11_combout\ & (((\registers[1][22]~q\ & !\r2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \registers[2][22]~q\,
	datac => \registers[1][22]~q\,
	datad => \r2~10_combout\,
	combout => \r2~232_combout\);

-- Location: LCCOMB_X27_Y15_N6
\r2~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~233_combout\ = (\r2~10_combout\ & ((\r2~232_combout\ & ((\registers[3][22]~q\))) # (!\r2~232_combout\ & (\r2~231_combout\)))) # (!\r2~10_combout\ & (((\r2~232_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~231_combout\,
	datab => \r2~10_combout\,
	datac => \r2~232_combout\,
	datad => \registers[3][22]~q\,
	combout => \r2~233_combout\);

-- Location: LCCOMB_X27_Y15_N16
\r2~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~234_combout\ = (\r2~229_combout\) # ((!\r2~0_combout\ & (!\r2~6_combout\ & \r2~233_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~229_combout\,
	datac => \r2~6_combout\,
	datad => \r2~233_combout\,
	combout => \r2~234_combout\);

-- Location: FF_X30_Y11_N31
\registers[15][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[23]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][23]~q\);

-- Location: LCCOMB_X30_Y11_N30
\r2~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~236_combout\ = (\r2~235_combout\ & (((\registers[15][23]~q\) # (!\add2[0]~input_o\)))) # (!\r2~235_combout\ & (\registers[13][23]~q\ & ((\add2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~235_combout\,
	datab => \registers[13][23]~q\,
	datac => \registers[15][23]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~236_combout\);

-- Location: LCCOMB_X30_Y12_N28
\r2~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~239_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & ((\r2~236_combout\))) # (!\r2~6_combout\ & (\r2~238_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~238_combout\,
	datab => \r2~0_combout\,
	datac => \r2~236_combout\,
	datad => \r2~6_combout\,
	combout => \r2~239_combout\);

-- Location: FF_X30_Y12_N7
\registers[3][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[23]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][23]~q\);

-- Location: LCCOMB_X30_Y12_N6
\r2~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~243_combout\ = (\r2~242_combout\ & (((\registers[3][23]~q\)) # (!\r2~11_combout\))) # (!\r2~242_combout\ & (\r2~11_combout\ & ((\registers[2][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~242_combout\,
	datab => \r2~11_combout\,
	datac => \registers[3][23]~q\,
	datad => \registers[2][23]~q\,
	combout => \r2~243_combout\);

-- Location: LCCOMB_X30_Y12_N8
\r2~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~244_combout\ = (\r2~239_combout\) # ((!\r2~0_combout\ & (\r2~243_combout\ & !\r2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~239_combout\,
	datab => \r2~0_combout\,
	datac => \r2~243_combout\,
	datad => \r2~6_combout\,
	combout => \r2~244_combout\);

-- Location: LCCOMB_X29_Y14_N8
\r2~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~252_combout\ = (\r2~11_combout\ & ((\r2~10_combout\) # ((\registers[2][24]~q\)))) # (!\r2~11_combout\ & (!\r2~10_combout\ & (\registers[1][24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \r2~10_combout\,
	datac => \registers[1][24]~q\,
	datad => \registers[2][24]~q\,
	combout => \r2~252_combout\);

-- Location: LCCOMB_X29_Y11_N12
\r2~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~251_combout\ = (\r2~250_combout\ & (((\registers[7][24]~q\) # (!\add2[1]~input_o\)))) # (!\r2~250_combout\ & (\registers[6][24]~q\ & ((\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~250_combout\,
	datab => \registers[6][24]~q\,
	datac => \registers[7][24]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~251_combout\);

-- Location: LCCOMB_X34_Y14_N14
\r2~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~253_combout\ = (\r2~252_combout\ & ((\registers[3][24]~q\) # ((!\r2~10_combout\)))) # (!\r2~252_combout\ & (((\r2~10_combout\ & \r2~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[3][24]~q\,
	datab => \r2~252_combout\,
	datac => \r2~10_combout\,
	datad => \r2~251_combout\,
	combout => \r2~253_combout\);

-- Location: FF_X29_Y13_N11
\registers[12][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[24]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[12][24]~q\);

-- Location: FF_X29_Y13_N1
\registers[13][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[24]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[13][24]~q\);

-- Location: LCCOMB_X29_Y13_N10
\r2~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~245_combout\ = (\add2[0]~input_o\ & ((\add2[1]~input_o\) # ((\registers[13][24]~q\)))) # (!\add2[0]~input_o\ & (!\add2[1]~input_o\ & (\registers[12][24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \add2[1]~input_o\,
	datac => \registers[12][24]~q\,
	datad => \registers[13][24]~q\,
	combout => \r2~245_combout\);

-- Location: LCCOMB_X34_Y14_N4
\r2~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~246_combout\ = (\add2[1]~input_o\ & ((\r2~245_combout\ & (\registers[15][24]~q\)) # (!\r2~245_combout\ & ((\registers[14][24]~q\))))) # (!\add2[1]~input_o\ & (\r2~245_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \r2~245_combout\,
	datac => \registers[15][24]~q\,
	datad => \registers[14][24]~q\,
	combout => \r2~246_combout\);

-- Location: FF_X31_Y16_N11
\registers[8][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[24]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][24]~q\);

-- Location: FF_X31_Y16_N1
\registers[10][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[24]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][24]~q\);

-- Location: LCCOMB_X31_Y16_N10
\r2~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~247_combout\ = (\add2[0]~input_o\ & (\add2[1]~input_o\)) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & ((\registers[10][24]~q\))) # (!\add2[1]~input_o\ & (\registers[8][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \add2[1]~input_o\,
	datac => \registers[8][24]~q\,
	datad => \registers[10][24]~q\,
	combout => \r2~247_combout\);

-- Location: LCCOMB_X32_Y14_N18
\r2~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~248_combout\ = (\add2[0]~input_o\ & ((\r2~247_combout\ & ((\registers[11][24]~q\))) # (!\r2~247_combout\ & (\registers[9][24]~q\)))) # (!\add2[0]~input_o\ & (((\r2~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[9][24]~q\,
	datac => \registers[11][24]~q\,
	datad => \r2~247_combout\,
	combout => \r2~248_combout\);

-- Location: LCCOMB_X34_Y14_N12
\r2~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~249_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & (\r2~246_combout\)) # (!\r2~6_combout\ & ((\r2~248_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~246_combout\,
	datac => \r2~6_combout\,
	datad => \r2~248_combout\,
	combout => \r2~249_combout\);

-- Location: LCCOMB_X34_Y14_N24
\r2~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~254_combout\ = (\r2~249_combout\) # ((!\r2~0_combout\ & (\r2~253_combout\ & !\r2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~0_combout\,
	datab => \r2~253_combout\,
	datac => \r2~6_combout\,
	datad => \r2~249_combout\,
	combout => \r2~254_combout\);

-- Location: FF_X29_Y11_N9
\registers[7][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[25]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][25]~q\);

-- Location: FF_X29_Y11_N7
\registers[5][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[25]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][25]~q\);

-- Location: LCCOMB_X29_Y11_N8
\r2~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~261_combout\ = (\r2~260_combout\ & (((\registers[7][25]~q\)) # (!\add2[0]~input_o\))) # (!\r2~260_combout\ & (\add2[0]~input_o\ & ((\registers[5][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~260_combout\,
	datab => \add2[0]~input_o\,
	datac => \registers[7][25]~q\,
	datad => \registers[5][25]~q\,
	combout => \r2~261_combout\);

-- Location: FF_X29_Y12_N15
\registers[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[25]~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[1][25]~q\);

-- Location: LCCOMB_X29_Y11_N22
\r2~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~262_combout\ = (\r2~10_combout\ & ((\r2~11_combout\) # ((\r2~261_combout\)))) # (!\r2~10_combout\ & (!\r2~11_combout\ & ((\registers[1][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~10_combout\,
	datab => \r2~11_combout\,
	datac => \r2~261_combout\,
	datad => \registers[1][25]~q\,
	combout => \r2~262_combout\);

-- Location: LCCOMB_X28_Y14_N12
\r2~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~263_combout\ = (\r2~11_combout\ & ((\r2~262_combout\ & (\registers[3][25]~q\)) # (!\r2~262_combout\ & ((\registers[2][25]~q\))))) # (!\r2~11_combout\ & (\r2~262_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \r2~262_combout\,
	datac => \registers[3][25]~q\,
	datad => \registers[2][25]~q\,
	combout => \r2~263_combout\);

-- Location: FF_X32_Y14_N23
\registers[11][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[25]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][25]~q\);

-- Location: FF_X31_Y16_N21
\registers[10][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[25]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][25]~q\);

-- Location: LCCOMB_X32_Y14_N22
\r2~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~258_combout\ = (\r2~257_combout\ & (((\registers[11][25]~q\)) # (!\add2[1]~input_o\))) # (!\r2~257_combout\ & (\add2[1]~input_o\ & ((\registers[10][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~257_combout\,
	datab => \add2[1]~input_o\,
	datac => \registers[11][25]~q\,
	datad => \registers[10][25]~q\,
	combout => \r2~258_combout\);

-- Location: LCCOMB_X29_Y13_N22
\r2~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~255_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[14][25]~q\)) # (!\add2[1]~input_o\ & ((\registers[12][25]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[14][25]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[12][25]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~255_combout\);

-- Location: LCCOMB_X30_Y13_N30
\r2~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~256_combout\ = (\add2[0]~input_o\ & ((\r2~255_combout\ & ((\registers[15][25]~q\))) # (!\r2~255_combout\ & (\registers[13][25]~q\)))) # (!\add2[0]~input_o\ & (((\r2~255_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[13][25]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[15][25]~q\,
	datad => \r2~255_combout\,
	combout => \r2~256_combout\);

-- Location: LCCOMB_X32_Y14_N20
\r2~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~259_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & ((\r2~256_combout\))) # (!\r2~6_combout\ & (\r2~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~6_combout\,
	datab => \r2~0_combout\,
	datac => \r2~258_combout\,
	datad => \r2~256_combout\,
	combout => \r2~259_combout\);

-- Location: LCCOMB_X32_Y14_N14
\r2~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~264_combout\ = (\r2~259_combout\) # ((!\r2~6_combout\ & (!\r2~0_combout\ & \r2~263_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~6_combout\,
	datab => \r2~0_combout\,
	datac => \r2~263_combout\,
	datad => \r2~259_combout\,
	combout => \r2~264_combout\);

-- Location: FF_X27_Y13_N15
\registers[5][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[26]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][26]~q\);

-- Location: FF_X27_Y13_N17
\registers[4][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[26]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][26]~q\);

-- Location: LCCOMB_X27_Y13_N16
\r2~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~270_combout\ = (\add2[1]~input_o\ & (((\add2[0]~input_o\)))) # (!\add2[1]~input_o\ & ((\add2[0]~input_o\ & (\registers[5][26]~q\)) # (!\add2[0]~input_o\ & ((\registers[4][26]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \registers[5][26]~q\,
	datac => \registers[4][26]~q\,
	datad => \add2[0]~input_o\,
	combout => \r2~270_combout\);

-- Location: FF_X28_Y12_N23
\registers[7][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[26]~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[7][26]~q\);

-- Location: FF_X28_Y13_N15
\registers[6][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[26]~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[6][26]~q\);

-- Location: LCCOMB_X28_Y12_N22
\r2~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~271_combout\ = (\add2[1]~input_o\ & ((\r2~270_combout\ & (\registers[7][26]~q\)) # (!\r2~270_combout\ & ((\registers[6][26]~q\))))) # (!\add2[1]~input_o\ & (\r2~270_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \r2~270_combout\,
	datac => \registers[7][26]~q\,
	datad => \registers[6][26]~q\,
	combout => \r2~271_combout\);

-- Location: LCCOMB_X28_Y16_N26
\r2~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~273_combout\ = (\r2~272_combout\ & ((\registers[3][26]~q\) # ((!\r2~10_combout\)))) # (!\r2~272_combout\ & (((\r2~10_combout\ & \r2~271_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~272_combout\,
	datab => \registers[3][26]~q\,
	datac => \r2~10_combout\,
	datad => \r2~271_combout\,
	combout => \r2~273_combout\);

-- Location: LCCOMB_X31_Y12_N2
\r2~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~266_combout\ = (\r2~265_combout\ & (((\registers[15][26]~q\)) # (!\add2[1]~input_o\))) # (!\r2~265_combout\ & (\add2[1]~input_o\ & ((\registers[14][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~265_combout\,
	datab => \add2[1]~input_o\,
	datac => \registers[15][26]~q\,
	datad => \registers[14][26]~q\,
	combout => \r2~266_combout\);

-- Location: FF_X31_Y15_N29
\registers[9][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[26]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][26]~q\);

-- Location: FF_X30_Y16_N1
\registers[11][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[26]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][26]~q\);

-- Location: FF_X31_Y16_N3
\registers[8][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[26]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][26]~q\);

-- Location: FF_X31_Y16_N25
\registers[10][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[26]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][26]~q\);

-- Location: LCCOMB_X31_Y16_N2
\r2~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~267_combout\ = (\add2[0]~input_o\ & (\add2[1]~input_o\)) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & ((\registers[10][26]~q\))) # (!\add2[1]~input_o\ & (\registers[8][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \add2[1]~input_o\,
	datac => \registers[8][26]~q\,
	datad => \registers[10][26]~q\,
	combout => \r2~267_combout\);

-- Location: LCCOMB_X30_Y16_N0
\r2~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~268_combout\ = (\add2[0]~input_o\ & ((\r2~267_combout\ & ((\registers[11][26]~q\))) # (!\r2~267_combout\ & (\registers[9][26]~q\)))) # (!\add2[0]~input_o\ & (((\r2~267_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[9][26]~q\,
	datac => \registers[11][26]~q\,
	datad => \r2~267_combout\,
	combout => \r2~268_combout\);

-- Location: LCCOMB_X28_Y16_N0
\r2~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~269_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & (\r2~266_combout\)) # (!\r2~6_combout\ & ((\r2~268_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~6_combout\,
	datab => \r2~0_combout\,
	datac => \r2~266_combout\,
	datad => \r2~268_combout\,
	combout => \r2~269_combout\);

-- Location: LCCOMB_X28_Y16_N28
\r2~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~274_combout\ = (\r2~269_combout\) # ((!\r2~6_combout\ & (!\r2~0_combout\ & \r2~273_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~6_combout\,
	datab => \r2~0_combout\,
	datac => \r2~273_combout\,
	datad => \r2~269_combout\,
	combout => \r2~274_combout\);

-- Location: LCCOMB_X29_Y13_N18
\r2~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~275_combout\ = (\add2[0]~input_o\ & (\add2[1]~input_o\)) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & ((\registers[14][27]~q\))) # (!\add2[1]~input_o\ & (\registers[12][27]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \add2[1]~input_o\,
	datac => \registers[12][27]~q\,
	datad => \registers[14][27]~q\,
	combout => \r2~275_combout\);

-- Location: LCCOMB_X30_Y13_N18
\r2~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~276_combout\ = (\add2[0]~input_o\ & ((\r2~275_combout\ & ((\registers[15][27]~q\))) # (!\r2~275_combout\ & (\registers[13][27]~q\)))) # (!\add2[0]~input_o\ & (((\r2~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[13][27]~q\,
	datab => \add2[0]~input_o\,
	datac => \registers[15][27]~q\,
	datad => \r2~275_combout\,
	combout => \r2~276_combout\);

-- Location: LCCOMB_X30_Y12_N18
\r2~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~279_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & ((\r2~276_combout\))) # (!\r2~6_combout\ & (\r2~278_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~278_combout\,
	datab => \r2~0_combout\,
	datac => \r2~276_combout\,
	datad => \r2~6_combout\,
	combout => \r2~279_combout\);

-- Location: FF_X30_Y12_N23
\registers[3][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[27]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[3][27]~q\);

-- Location: LCCOMB_X30_Y12_N22
\r2~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~283_combout\ = (\r2~282_combout\ & (((\registers[3][27]~q\)) # (!\r2~11_combout\))) # (!\r2~282_combout\ & (\r2~11_combout\ & ((\registers[2][27]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~282_combout\,
	datab => \r2~11_combout\,
	datac => \registers[3][27]~q\,
	datad => \registers[2][27]~q\,
	combout => \r2~283_combout\);

-- Location: LCCOMB_X30_Y12_N14
\r2~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~284_combout\ = (\r2~279_combout\) # ((!\r2~6_combout\ & (!\r2~0_combout\ & \r2~283_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~6_combout\,
	datab => \r2~279_combout\,
	datac => \r2~0_combout\,
	datad => \r2~283_combout\,
	combout => \r2~284_combout\);

-- Location: FF_X31_Y12_N23
\registers[15][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[28]~input_o\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[15][28]~q\);

-- Location: LCCOMB_X31_Y12_N22
\r2~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~286_combout\ = (\r2~285_combout\ & (((\registers[15][28]~q\)) # (!\add2[1]~input_o\))) # (!\r2~285_combout\ & (\add2[1]~input_o\ & ((\registers[14][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~285_combout\,
	datab => \add2[1]~input_o\,
	datac => \registers[15][28]~q\,
	datad => \registers[14][28]~q\,
	combout => \r2~286_combout\);

-- Location: FF_X30_Y16_N13
\registers[11][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[28]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][28]~q\);

-- Location: LCCOMB_X31_Y16_N18
\r2~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~287_combout\ = (\add2[0]~input_o\ & (\add2[1]~input_o\)) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & ((\registers[10][28]~q\))) # (!\add2[1]~input_o\ & (\registers[8][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \add2[1]~input_o\,
	datac => \registers[8][28]~q\,
	datad => \registers[10][28]~q\,
	combout => \r2~287_combout\);

-- Location: LCCOMB_X30_Y16_N12
\r2~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~288_combout\ = (\add2[0]~input_o\ & ((\r2~287_combout\ & ((\registers[11][28]~q\))) # (!\r2~287_combout\ & (\registers[9][28]~q\)))) # (!\add2[0]~input_o\ & (((\r2~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[9][28]~q\,
	datac => \registers[11][28]~q\,
	datad => \r2~287_combout\,
	combout => \r2~288_combout\);

-- Location: LCCOMB_X28_Y16_N22
\r2~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~289_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & (\r2~286_combout\)) # (!\r2~6_combout\ & ((\r2~288_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~6_combout\,
	datab => \r2~0_combout\,
	datac => \r2~286_combout\,
	datad => \r2~288_combout\,
	combout => \r2~289_combout\);

-- Location: LCCOMB_X29_Y14_N22
\r2~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~292_combout\ = (\r2~11_combout\ & ((\r2~10_combout\) # ((\registers[2][28]~q\)))) # (!\r2~11_combout\ & (!\r2~10_combout\ & (\registers[1][28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \r2~10_combout\,
	datac => \registers[1][28]~q\,
	datad => \registers[2][28]~q\,
	combout => \r2~292_combout\);

-- Location: FF_X27_Y13_N21
\registers[4][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[28]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][28]~q\);

-- Location: FF_X27_Y13_N3
\registers[5][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[28]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][28]~q\);

-- Location: LCCOMB_X27_Y13_N20
\r2~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~290_combout\ = (\add2[1]~input_o\ & (\add2[0]~input_o\)) # (!\add2[1]~input_o\ & ((\add2[0]~input_o\ & ((\registers[5][28]~q\))) # (!\add2[0]~input_o\ & (\registers[4][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \add2[0]~input_o\,
	datac => \registers[4][28]~q\,
	datad => \registers[5][28]~q\,
	combout => \r2~290_combout\);

-- Location: LCCOMB_X28_Y12_N18
\r2~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~291_combout\ = (\add2[1]~input_o\ & ((\r2~290_combout\ & ((\registers[7][28]~q\))) # (!\r2~290_combout\ & (\registers[6][28]~q\)))) # (!\add2[1]~input_o\ & (((\r2~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \registers[6][28]~q\,
	datac => \registers[7][28]~q\,
	datad => \r2~290_combout\,
	combout => \r2~291_combout\);

-- Location: LCCOMB_X29_Y14_N28
\r2~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~293_combout\ = (\r2~10_combout\ & ((\r2~292_combout\ & (\registers[3][28]~q\)) # (!\r2~292_combout\ & ((\r2~291_combout\))))) # (!\r2~10_combout\ & (((\r2~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[3][28]~q\,
	datab => \r2~10_combout\,
	datac => \r2~292_combout\,
	datad => \r2~291_combout\,
	combout => \r2~293_combout\);

-- Location: LCCOMB_X28_Y16_N24
\r2~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~294_combout\ = (\r2~289_combout\) # ((!\r2~6_combout\ & (!\r2~0_combout\ & \r2~293_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~6_combout\,
	datab => \r2~0_combout\,
	datac => \r2~289_combout\,
	datad => \r2~293_combout\,
	combout => \r2~294_combout\);

-- Location: FF_X31_Y16_N13
\registers[10][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[29]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][29]~q\);

-- Location: FF_X30_Y16_N23
\registers[11][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[29]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][29]~q\);

-- Location: FF_X31_Y16_N23
\registers[8][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[29]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][29]~q\);

-- Location: FF_X31_Y15_N11
\registers[9][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[29]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][29]~q\);

-- Location: LCCOMB_X31_Y16_N22
\r2~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~297_combout\ = (\add2[0]~input_o\ & ((\add2[1]~input_o\) # ((\registers[9][29]~q\)))) # (!\add2[0]~input_o\ & (!\add2[1]~input_o\ & (\registers[8][29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \add2[1]~input_o\,
	datac => \registers[8][29]~q\,
	datad => \registers[9][29]~q\,
	combout => \r2~297_combout\);

-- Location: LCCOMB_X30_Y16_N22
\r2~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~298_combout\ = (\add2[1]~input_o\ & ((\r2~297_combout\ & ((\registers[11][29]~q\))) # (!\r2~297_combout\ & (\registers[10][29]~q\)))) # (!\add2[1]~input_o\ & (((\r2~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \registers[10][29]~q\,
	datac => \registers[11][29]~q\,
	datad => \r2~297_combout\,
	combout => \r2~298_combout\);

-- Location: LCCOMB_X30_Y16_N30
\r2~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~299_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & (\r2~296_combout\)) # (!\r2~6_combout\ & ((\r2~298_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~296_combout\,
	datab => \r2~0_combout\,
	datac => \r2~298_combout\,
	datad => \r2~6_combout\,
	combout => \r2~299_combout\);

-- Location: LCCOMB_X26_Y15_N10
\r2~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~303_combout\ = (\r2~302_combout\ & (((\registers[3][29]~q\)) # (!\r2~11_combout\))) # (!\r2~302_combout\ & (\r2~11_combout\ & ((\registers[2][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~302_combout\,
	datab => \r2~11_combout\,
	datac => \registers[3][29]~q\,
	datad => \registers[2][29]~q\,
	combout => \r2~303_combout\);

-- Location: LCCOMB_X30_Y16_N24
\r2~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~304_combout\ = (\r2~299_combout\) # ((!\r2~6_combout\ & (!\r2~0_combout\ & \r2~303_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~6_combout\,
	datab => \r2~0_combout\,
	datac => \r2~299_combout\,
	datad => \r2~303_combout\,
	combout => \r2~304_combout\);

-- Location: FF_X27_Y13_N31
\registers[5][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[30]~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[5][30]~q\);

-- Location: FF_X28_Y11_N23
\registers[4][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[30]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[4][30]~q\);

-- Location: LCCOMB_X28_Y11_N22
\r2~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~310_combout\ = (\add2[0]~input_o\ & ((\registers[5][30]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[4][30]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[5][30]~q\,
	datac => \registers[4][30]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~310_combout\);

-- Location: LCCOMB_X28_Y12_N26
\r2~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~311_combout\ = (\add2[1]~input_o\ & ((\r2~310_combout\ & (\registers[7][30]~q\)) # (!\r2~310_combout\ & ((\registers[6][30]~q\))))) # (!\add2[1]~input_o\ & (\r2~310_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \r2~310_combout\,
	datac => \registers[7][30]~q\,
	datad => \registers[6][30]~q\,
	combout => \r2~311_combout\);

-- Location: LCCOMB_X29_Y14_N18
\r2~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~312_combout\ = (\r2~11_combout\ & ((\r2~10_combout\) # ((\registers[2][30]~q\)))) # (!\r2~11_combout\ & (!\r2~10_combout\ & (\registers[1][30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \r2~10_combout\,
	datac => \registers[1][30]~q\,
	datad => \registers[2][30]~q\,
	combout => \r2~312_combout\);

-- Location: LCCOMB_X29_Y14_N14
\r2~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~313_combout\ = (\r2~10_combout\ & ((\r2~312_combout\ & (\registers[3][30]~q\)) # (!\r2~312_combout\ & ((\r2~311_combout\))))) # (!\r2~10_combout\ & (((\r2~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers[3][30]~q\,
	datab => \r2~10_combout\,
	datac => \r2~311_combout\,
	datad => \r2~312_combout\,
	combout => \r2~313_combout\);

-- Location: FF_X31_Y16_N9
\registers[10][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[30]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[10][30]~q\);

-- Location: FF_X31_Y16_N27
\registers[8][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[30]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][30]~q\);

-- Location: LCCOMB_X31_Y16_N26
\r2~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~307_combout\ = (\add2[0]~input_o\ & (((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & ((\add2[1]~input_o\ & (\registers[10][30]~q\)) # (!\add2[1]~input_o\ & ((\registers[8][30]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[10][30]~q\,
	datac => \registers[8][30]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~307_combout\);

-- Location: FF_X30_Y16_N9
\registers[11][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[30]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[11][30]~q\);

-- Location: FF_X29_Y10_N25
\registers[9][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[30]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][30]~q\);

-- Location: LCCOMB_X30_Y16_N8
\r2~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~308_combout\ = (\add2[0]~input_o\ & ((\r2~307_combout\ & (\registers[11][30]~q\)) # (!\r2~307_combout\ & ((\registers[9][30]~q\))))) # (!\add2[0]~input_o\ & (\r2~307_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \r2~307_combout\,
	datac => \registers[11][30]~q\,
	datad => \registers[9][30]~q\,
	combout => \r2~308_combout\);

-- Location: LCCOMB_X30_Y16_N2
\r2~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~309_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & (\r2~306_combout\)) # (!\r2~6_combout\ & ((\r2~308_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~306_combout\,
	datab => \r2~0_combout\,
	datac => \r2~308_combout\,
	datad => \r2~6_combout\,
	combout => \r2~309_combout\);

-- Location: LCCOMB_X30_Y16_N4
\r2~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~314_combout\ = (\r2~309_combout\) # ((\r2~313_combout\ & (!\r2~6_combout\ & !\r2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~313_combout\,
	datab => \r2~309_combout\,
	datac => \r2~6_combout\,
	datad => \r2~0_combout\,
	combout => \r2~314_combout\);

-- Location: LCCOMB_X29_Y11_N28
\r2~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~321_combout\ = (\r2~320_combout\ & (((\registers[7][31]~q\)) # (!\add2[0]~input_o\))) # (!\r2~320_combout\ & (\add2[0]~input_o\ & ((\registers[5][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~320_combout\,
	datab => \add2[0]~input_o\,
	datac => \registers[7][31]~q\,
	datad => \registers[5][31]~q\,
	combout => \r2~321_combout\);

-- Location: LCCOMB_X29_Y11_N2
\r2~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~322_combout\ = (\r2~10_combout\ & ((\r2~11_combout\) # ((\r2~321_combout\)))) # (!\r2~10_combout\ & (!\r2~11_combout\ & (\registers[1][31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~10_combout\,
	datab => \r2~11_combout\,
	datac => \registers[1][31]~q\,
	datad => \r2~321_combout\,
	combout => \r2~322_combout\);

-- Location: LCCOMB_X28_Y16_N4
\r2~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~323_combout\ = (\r2~11_combout\ & ((\r2~322_combout\ & (\registers[3][31]~q\)) # (!\r2~322_combout\ & ((\registers[2][31]~q\))))) # (!\r2~11_combout\ & (\r2~322_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~11_combout\,
	datab => \r2~322_combout\,
	datac => \registers[3][31]~q\,
	datad => \registers[2][31]~q\,
	combout => \r2~323_combout\);

-- Location: FF_X31_Y15_N5
\registers[9][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[31]~input_o\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[9][31]~q\);

-- Location: FF_X31_Y16_N15
\registers[8][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wdata[31]~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers[8][31]~q\);

-- Location: LCCOMB_X31_Y16_N14
\r2~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~317_combout\ = (\add2[0]~input_o\ & ((\registers[9][31]~q\) # ((\add2[1]~input_o\)))) # (!\add2[0]~input_o\ & (((\registers[8][31]~q\ & !\add2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[0]~input_o\,
	datab => \registers[9][31]~q\,
	datac => \registers[8][31]~q\,
	datad => \add2[1]~input_o\,
	combout => \r2~317_combout\);

-- Location: LCCOMB_X30_Y16_N20
\r2~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~318_combout\ = (\add2[1]~input_o\ & ((\r2~317_combout\ & (\registers[11][31]~q\)) # (!\r2~317_combout\ & ((\registers[10][31]~q\))))) # (!\add2[1]~input_o\ & (\r2~317_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add2[1]~input_o\,
	datab => \r2~317_combout\,
	datac => \registers[11][31]~q\,
	datad => \registers[10][31]~q\,
	combout => \r2~318_combout\);

-- Location: LCCOMB_X28_Y16_N18
\r2~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~319_combout\ = (\r2~0_combout\ & ((\r2~6_combout\ & (\r2~316_combout\)) # (!\r2~6_combout\ & ((\r2~318_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~316_combout\,
	datab => \r2~318_combout\,
	datac => \r2~0_combout\,
	datad => \r2~6_combout\,
	combout => \r2~319_combout\);

-- Location: LCCOMB_X28_Y16_N12
\r2~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \r2~324_combout\ = (\r2~319_combout\) # ((!\r2~6_combout\ & (!\r2~0_combout\ & \r2~323_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2~6_combout\,
	datab => \r2~0_combout\,
	datac => \r2~323_combout\,
	datad => \r2~319_combout\,
	combout => \r2~324_combout\);

-- Location: IOIBUF_X51_Y34_N15
\add1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add1(4),
	o => \add1[4]~input_o\);

-- Location: IOIBUF_X49_Y34_N1
\add2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add2(4),
	o => \add2[4]~input_o\);

ww_r1(0) <= \r1[0]~output_o\;

ww_r1(1) <= \r1[1]~output_o\;

ww_r1(2) <= \r1[2]~output_o\;

ww_r1(3) <= \r1[3]~output_o\;

ww_r1(4) <= \r1[4]~output_o\;

ww_r1(5) <= \r1[5]~output_o\;

ww_r1(6) <= \r1[6]~output_o\;

ww_r1(7) <= \r1[7]~output_o\;

ww_r1(8) <= \r1[8]~output_o\;

ww_r1(9) <= \r1[9]~output_o\;

ww_r1(10) <= \r1[10]~output_o\;

ww_r1(11) <= \r1[11]~output_o\;

ww_r1(12) <= \r1[12]~output_o\;

ww_r1(13) <= \r1[13]~output_o\;

ww_r1(14) <= \r1[14]~output_o\;

ww_r1(15) <= \r1[15]~output_o\;

ww_r1(16) <= \r1[16]~output_o\;

ww_r1(17) <= \r1[17]~output_o\;

ww_r1(18) <= \r1[18]~output_o\;

ww_r1(19) <= \r1[19]~output_o\;

ww_r1(20) <= \r1[20]~output_o\;

ww_r1(21) <= \r1[21]~output_o\;

ww_r1(22) <= \r1[22]~output_o\;

ww_r1(23) <= \r1[23]~output_o\;

ww_r1(24) <= \r1[24]~output_o\;

ww_r1(25) <= \r1[25]~output_o\;

ww_r1(26) <= \r1[26]~output_o\;

ww_r1(27) <= \r1[27]~output_o\;

ww_r1(28) <= \r1[28]~output_o\;

ww_r1(29) <= \r1[29]~output_o\;

ww_r1(30) <= \r1[30]~output_o\;

ww_r1(31) <= \r1[31]~output_o\;

ww_r2(0) <= \r2[0]~output_o\;

ww_r2(1) <= \r2[1]~output_o\;

ww_r2(2) <= \r2[2]~output_o\;

ww_r2(3) <= \r2[3]~output_o\;

ww_r2(4) <= \r2[4]~output_o\;

ww_r2(5) <= \r2[5]~output_o\;

ww_r2(6) <= \r2[6]~output_o\;

ww_r2(7) <= \r2[7]~output_o\;

ww_r2(8) <= \r2[8]~output_o\;

ww_r2(9) <= \r2[9]~output_o\;

ww_r2(10) <= \r2[10]~output_o\;

ww_r2(11) <= \r2[11]~output_o\;

ww_r2(12) <= \r2[12]~output_o\;

ww_r2(13) <= \r2[13]~output_o\;

ww_r2(14) <= \r2[14]~output_o\;

ww_r2(15) <= \r2[15]~output_o\;

ww_r2(16) <= \r2[16]~output_o\;

ww_r2(17) <= \r2[17]~output_o\;

ww_r2(18) <= \r2[18]~output_o\;

ww_r2(19) <= \r2[19]~output_o\;

ww_r2(20) <= \r2[20]~output_o\;

ww_r2(21) <= \r2[21]~output_o\;

ww_r2(22) <= \r2[22]~output_o\;

ww_r2(23) <= \r2[23]~output_o\;

ww_r2(24) <= \r2[24]~output_o\;

ww_r2(25) <= \r2[25]~output_o\;

ww_r2(26) <= \r2[26]~output_o\;

ww_r2(27) <= \r2[27]~output_o\;

ww_r2(28) <= \r2[28]~output_o\;

ww_r2(29) <= \r2[29]~output_o\;

ww_r2(30) <= \r2[30]~output_o\;

ww_r2(31) <= \r2[31]~output_o\;
END structure;


