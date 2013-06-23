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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Web Edition"

-- DATE "03/25/2013 00:28:19"

-- 
-- Device: Altera EP2C70F896C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ulamips IS
    PORT (
	aluctl : IN std_logic_vector(3 DOWNTO 0);
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	aluout : OUT std_logic_vector(31 DOWNTO 0);
	zero : OUT std_logic
	);
END ulamips;

-- Design Ports Information
-- aluout[0]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[1]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[2]	=>  Location: PIN_AK9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[3]	=>  Location: PIN_AD9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[4]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[5]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[6]	=>  Location: PIN_AK20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[7]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[8]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[9]	=>  Location: PIN_AJ16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[10]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[11]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[12]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[13]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[14]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[15]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[16]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[17]	=>  Location: PIN_AG10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[18]	=>  Location: PIN_AJ11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[19]	=>  Location: PIN_AK6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[20]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[21]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[22]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[23]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[24]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[25]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[26]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[27]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[28]	=>  Location: PIN_AJ20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[29]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[30]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluout[31]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- zero	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aluctl[2]	=>  Location: PIN_AK14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- aluctl[1]	=>  Location: PIN_AH13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- aluctl[3]	=>  Location: PIN_AK12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AJ12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- aluctl[0]	=>  Location: PIN_AJ13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AF11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AJ15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AK8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AJ14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AJ8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AK17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AK7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AH10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[22]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AJ9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AD14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AF12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AK11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AJ10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AK10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AG13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[15]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AG9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[14]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[13]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[11]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AJ18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AH16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AG12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AJ7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ulamips IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_aluctl : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_aluout : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL \tmp[1]~2_combout\ : std_logic;
SIGNAL \tmp[2]~4_combout\ : std_logic;
SIGNAL \tmp[3]~6_combout\ : std_logic;
SIGNAL \tmp[4]~8_combout\ : std_logic;
SIGNAL \tmp[7]~14_combout\ : std_logic;
SIGNAL \tmp[8]~16_combout\ : std_logic;
SIGNAL \tmp[13]~26_combout\ : std_logic;
SIGNAL \tmp[14]~28_combout\ : std_logic;
SIGNAL \tmp[15]~30_combout\ : std_logic;
SIGNAL \tmp[18]~36_combout\ : std_logic;
SIGNAL \tmp[19]~38_combout\ : std_logic;
SIGNAL \tmp[24]~48_combout\ : std_logic;
SIGNAL \tmp[25]~50_combout\ : std_logic;
SIGNAL \tmp[26]~52_combout\ : std_logic;
SIGNAL \tmp[29]~58_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \tmp[0]~1\ : std_logic;
SIGNAL \tmp[1]~3\ : std_logic;
SIGNAL \tmp[2]~5\ : std_logic;
SIGNAL \tmp[3]~7\ : std_logic;
SIGNAL \tmp[4]~9\ : std_logic;
SIGNAL \tmp[5]~11\ : std_logic;
SIGNAL \tmp[6]~13\ : std_logic;
SIGNAL \tmp[7]~15\ : std_logic;
SIGNAL \tmp[8]~17\ : std_logic;
SIGNAL \tmp[9]~19\ : std_logic;
SIGNAL \tmp[10]~21\ : std_logic;
SIGNAL \tmp[11]~23\ : std_logic;
SIGNAL \tmp[12]~25\ : std_logic;
SIGNAL \tmp[13]~27\ : std_logic;
SIGNAL \tmp[14]~29\ : std_logic;
SIGNAL \tmp[15]~31\ : std_logic;
SIGNAL \tmp[16]~33\ : std_logic;
SIGNAL \tmp[17]~35\ : std_logic;
SIGNAL \tmp[18]~37\ : std_logic;
SIGNAL \tmp[19]~39\ : std_logic;
SIGNAL \tmp[20]~41\ : std_logic;
SIGNAL \tmp[21]~43\ : std_logic;
SIGNAL \tmp[22]~45\ : std_logic;
SIGNAL \tmp[23]~47\ : std_logic;
SIGNAL \tmp[24]~49\ : std_logic;
SIGNAL \tmp[25]~51\ : std_logic;
SIGNAL \tmp[26]~53\ : std_logic;
SIGNAL \tmp[27]~55\ : std_logic;
SIGNAL \tmp[28]~57\ : std_logic;
SIGNAL \tmp[29]~59\ : std_logic;
SIGNAL \tmp[30]~61\ : std_logic;
SIGNAL \tmp[31]~62_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \tmp[0]~0_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \tmp[5]~10_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \tmp[6]~12_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \tmp[9]~18_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \tmp[10]~20_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \tmp[11]~22_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \tmp[12]~24_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \tmp[16]~32_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \tmp[17]~34_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \tmp[20]~40_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \tmp[21]~42_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \tmp[22]~44_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \tmp[23]~46_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \tmp[27]~54_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \tmp[28]~56_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \tmp[30]~60_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \aluctl~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_aluctl <= aluctl;
ww_A <= A;
ww_B <= B;
aluout <= ww_aluout;
zero <= ww_zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X40_Y15_N2
\tmp[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[1]~2_combout\ = (\A~combout\(1) & ((\B~combout\(1) & (!\tmp[0]~1\)) # (!\B~combout\(1) & (\tmp[0]~1\ & VCC)))) # (!\A~combout\(1) & ((\B~combout\(1) & ((\tmp[0]~1\) # (GND))) # (!\B~combout\(1) & (!\tmp[0]~1\))))
-- \tmp[1]~3\ = CARRY((\A~combout\(1) & (\B~combout\(1) & !\tmp[0]~1\)) # (!\A~combout\(1) & ((\B~combout\(1)) # (!\tmp[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datad => VCC,
	cin => \tmp[0]~1\,
	combout => \tmp[1]~2_combout\,
	cout => \tmp[1]~3\);

-- Location: LCCOMB_X40_Y15_N4
\tmp[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[2]~4_combout\ = ((\A~combout\(2) $ (\B~combout\(2) $ (\tmp[1]~3\)))) # (GND)
-- \tmp[2]~5\ = CARRY((\A~combout\(2) & ((!\tmp[1]~3\) # (!\B~combout\(2)))) # (!\A~combout\(2) & (!\B~combout\(2) & !\tmp[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \B~combout\(2),
	datad => VCC,
	cin => \tmp[1]~3\,
	combout => \tmp[2]~4_combout\,
	cout => \tmp[2]~5\);

-- Location: LCCOMB_X40_Y15_N6
\tmp[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[3]~6_combout\ = (\A~combout\(3) & ((\B~combout\(3) & (!\tmp[2]~5\)) # (!\B~combout\(3) & (\tmp[2]~5\ & VCC)))) # (!\A~combout\(3) & ((\B~combout\(3) & ((\tmp[2]~5\) # (GND))) # (!\B~combout\(3) & (!\tmp[2]~5\))))
-- \tmp[3]~7\ = CARRY((\A~combout\(3) & (\B~combout\(3) & !\tmp[2]~5\)) # (!\A~combout\(3) & ((\B~combout\(3)) # (!\tmp[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(3),
	datad => VCC,
	cin => \tmp[2]~5\,
	combout => \tmp[3]~6_combout\,
	cout => \tmp[3]~7\);

-- Location: LCCOMB_X40_Y15_N8
\tmp[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[4]~8_combout\ = ((\A~combout\(4) $ (\B~combout\(4) $ (\tmp[3]~7\)))) # (GND)
-- \tmp[4]~9\ = CARRY((\A~combout\(4) & ((!\tmp[3]~7\) # (!\B~combout\(4)))) # (!\A~combout\(4) & (!\B~combout\(4) & !\tmp[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \B~combout\(4),
	datad => VCC,
	cin => \tmp[3]~7\,
	combout => \tmp[4]~8_combout\,
	cout => \tmp[4]~9\);

-- Location: LCCOMB_X40_Y15_N14
\tmp[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[7]~14_combout\ = (\B~combout\(7) & ((\A~combout\(7) & (!\tmp[6]~13\)) # (!\A~combout\(7) & ((\tmp[6]~13\) # (GND))))) # (!\B~combout\(7) & ((\A~combout\(7) & (\tmp[6]~13\ & VCC)) # (!\A~combout\(7) & (!\tmp[6]~13\))))
-- \tmp[7]~15\ = CARRY((\B~combout\(7) & ((!\tmp[6]~13\) # (!\A~combout\(7)))) # (!\B~combout\(7) & (!\A~combout\(7) & !\tmp[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \A~combout\(7),
	datad => VCC,
	cin => \tmp[6]~13\,
	combout => \tmp[7]~14_combout\,
	cout => \tmp[7]~15\);

-- Location: LCCOMB_X40_Y15_N16
\tmp[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[8]~16_combout\ = ((\A~combout\(8) $ (\B~combout\(8) $ (\tmp[7]~15\)))) # (GND)
-- \tmp[8]~17\ = CARRY((\A~combout\(8) & ((!\tmp[7]~15\) # (!\B~combout\(8)))) # (!\A~combout\(8) & (!\B~combout\(8) & !\tmp[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(8),
	datab => \B~combout\(8),
	datad => VCC,
	cin => \tmp[7]~15\,
	combout => \tmp[8]~16_combout\,
	cout => \tmp[8]~17\);

-- Location: LCCOMB_X40_Y15_N26
\tmp[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[13]~26_combout\ = (\B~combout\(13) & ((\A~combout\(13) & (!\tmp[12]~25\)) # (!\A~combout\(13) & ((\tmp[12]~25\) # (GND))))) # (!\B~combout\(13) & ((\A~combout\(13) & (\tmp[12]~25\ & VCC)) # (!\A~combout\(13) & (!\tmp[12]~25\))))
-- \tmp[13]~27\ = CARRY((\B~combout\(13) & ((!\tmp[12]~25\) # (!\A~combout\(13)))) # (!\B~combout\(13) & (!\A~combout\(13) & !\tmp[12]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(13),
	datab => \A~combout\(13),
	datad => VCC,
	cin => \tmp[12]~25\,
	combout => \tmp[13]~26_combout\,
	cout => \tmp[13]~27\);

-- Location: LCCOMB_X40_Y15_N28
\tmp[14]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[14]~28_combout\ = ((\B~combout\(14) $ (\A~combout\(14) $ (\tmp[13]~27\)))) # (GND)
-- \tmp[14]~29\ = CARRY((\B~combout\(14) & (\A~combout\(14) & !\tmp[13]~27\)) # (!\B~combout\(14) & ((\A~combout\(14)) # (!\tmp[13]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(14),
	datab => \A~combout\(14),
	datad => VCC,
	cin => \tmp[13]~27\,
	combout => \tmp[14]~28_combout\,
	cout => \tmp[14]~29\);

-- Location: LCCOMB_X40_Y15_N30
\tmp[15]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[15]~30_combout\ = (\A~combout\(15) & ((\B~combout\(15) & (!\tmp[14]~29\)) # (!\B~combout\(15) & (\tmp[14]~29\ & VCC)))) # (!\A~combout\(15) & ((\B~combout\(15) & ((\tmp[14]~29\) # (GND))) # (!\B~combout\(15) & (!\tmp[14]~29\))))
-- \tmp[15]~31\ = CARRY((\A~combout\(15) & (\B~combout\(15) & !\tmp[14]~29\)) # (!\A~combout\(15) & ((\B~combout\(15)) # (!\tmp[14]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(15),
	datab => \B~combout\(15),
	datad => VCC,
	cin => \tmp[14]~29\,
	combout => \tmp[15]~30_combout\,
	cout => \tmp[15]~31\);

-- Location: LCCOMB_X40_Y14_N4
\tmp[18]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[18]~36_combout\ = ((\B~combout\(18) $ (\A~combout\(18) $ (\tmp[17]~35\)))) # (GND)
-- \tmp[18]~37\ = CARRY((\B~combout\(18) & (\A~combout\(18) & !\tmp[17]~35\)) # (!\B~combout\(18) & ((\A~combout\(18)) # (!\tmp[17]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(18),
	datab => \A~combout\(18),
	datad => VCC,
	cin => \tmp[17]~35\,
	combout => \tmp[18]~36_combout\,
	cout => \tmp[18]~37\);

-- Location: LCCOMB_X40_Y14_N6
\tmp[19]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[19]~38_combout\ = (\A~combout\(19) & ((\B~combout\(19) & (!\tmp[18]~37\)) # (!\B~combout\(19) & (\tmp[18]~37\ & VCC)))) # (!\A~combout\(19) & ((\B~combout\(19) & ((\tmp[18]~37\) # (GND))) # (!\B~combout\(19) & (!\tmp[18]~37\))))
-- \tmp[19]~39\ = CARRY((\A~combout\(19) & (\B~combout\(19) & !\tmp[18]~37\)) # (!\A~combout\(19) & ((\B~combout\(19)) # (!\tmp[18]~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(19),
	datab => \B~combout\(19),
	datad => VCC,
	cin => \tmp[18]~37\,
	combout => \tmp[19]~38_combout\,
	cout => \tmp[19]~39\);

-- Location: LCCOMB_X40_Y14_N16
\tmp[24]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[24]~48_combout\ = ((\B~combout\(24) $ (\A~combout\(24) $ (\tmp[23]~47\)))) # (GND)
-- \tmp[24]~49\ = CARRY((\B~combout\(24) & (\A~combout\(24) & !\tmp[23]~47\)) # (!\B~combout\(24) & ((\A~combout\(24)) # (!\tmp[23]~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(24),
	datab => \A~combout\(24),
	datad => VCC,
	cin => \tmp[23]~47\,
	combout => \tmp[24]~48_combout\,
	cout => \tmp[24]~49\);

-- Location: LCCOMB_X40_Y14_N18
\tmp[25]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[25]~50_combout\ = (\B~combout\(25) & ((\A~combout\(25) & (!\tmp[24]~49\)) # (!\A~combout\(25) & ((\tmp[24]~49\) # (GND))))) # (!\B~combout\(25) & ((\A~combout\(25) & (\tmp[24]~49\ & VCC)) # (!\A~combout\(25) & (!\tmp[24]~49\))))
-- \tmp[25]~51\ = CARRY((\B~combout\(25) & ((!\tmp[24]~49\) # (!\A~combout\(25)))) # (!\B~combout\(25) & (!\A~combout\(25) & !\tmp[24]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(25),
	datab => \A~combout\(25),
	datad => VCC,
	cin => \tmp[24]~49\,
	combout => \tmp[25]~50_combout\,
	cout => \tmp[25]~51\);

-- Location: LCCOMB_X40_Y14_N20
\tmp[26]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[26]~52_combout\ = ((\A~combout\(26) $ (\B~combout\(26) $ (\tmp[25]~51\)))) # (GND)
-- \tmp[26]~53\ = CARRY((\A~combout\(26) & ((!\tmp[25]~51\) # (!\B~combout\(26)))) # (!\A~combout\(26) & (!\B~combout\(26) & !\tmp[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(26),
	datab => \B~combout\(26),
	datad => VCC,
	cin => \tmp[25]~51\,
	combout => \tmp[26]~52_combout\,
	cout => \tmp[26]~53\);

-- Location: LCCOMB_X40_Y14_N26
\tmp[29]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[29]~58_combout\ = (\A~combout\(29) & ((\B~combout\(29) & (!\tmp[28]~57\)) # (!\B~combout\(29) & (\tmp[28]~57\ & VCC)))) # (!\A~combout\(29) & ((\B~combout\(29) & ((\tmp[28]~57\) # (GND))) # (!\B~combout\(29) & (!\tmp[28]~57\))))
-- \tmp[29]~59\ = CARRY((\A~combout\(29) & (\B~combout\(29) & !\tmp[28]~57\)) # (!\A~combout\(29) & ((\B~combout\(29)) # (!\tmp[28]~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(29),
	datab => \B~combout\(29),
	datad => VCC,
	cin => \tmp[28]~57\,
	combout => \tmp[29]~58_combout\,
	cout => \tmp[29]~59\);

-- Location: LCCOMB_X41_Y15_N4
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\A~combout\(2) $ (\B~combout\(2) $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\A~combout\(2) & ((\B~combout\(2)) # (!\Add1~3\))) # (!\A~combout\(2) & (\B~combout\(2) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \B~combout\(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X41_Y15_N6
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\A~combout\(3) & ((\B~combout\(3) & (\Add1~5\ & VCC)) # (!\B~combout\(3) & (!\Add1~5\)))) # (!\A~combout\(3) & ((\B~combout\(3) & (!\Add1~5\)) # (!\B~combout\(3) & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\A~combout\(3) & (!\B~combout\(3) & !\Add1~5\)) # (!\A~combout\(3) & ((!\Add1~5\) # (!\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X41_Y15_N8
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\A~combout\(4) $ (\B~combout\(4) $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\A~combout\(4) & ((\B~combout\(4)) # (!\Add1~7\))) # (!\A~combout\(4) & (\B~combout\(4) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \B~combout\(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X41_Y15_N10
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\A~combout\(5) & ((\B~combout\(5) & (\Add1~9\ & VCC)) # (!\B~combout\(5) & (!\Add1~9\)))) # (!\A~combout\(5) & ((\B~combout\(5) & (!\Add1~9\)) # (!\B~combout\(5) & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\A~combout\(5) & (!\B~combout\(5) & !\Add1~9\)) # (!\A~combout\(5) & ((!\Add1~9\) # (!\B~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \B~combout\(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X41_Y15_N12
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\B~combout\(6) $ (\A~combout\(6) $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\B~combout\(6) & ((\A~combout\(6)) # (!\Add1~11\))) # (!\B~combout\(6) & (\A~combout\(6) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \A~combout\(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X41_Y15_N14
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\B~combout\(7) & ((\A~combout\(7) & (\Add1~13\ & VCC)) # (!\A~combout\(7) & (!\Add1~13\)))) # (!\B~combout\(7) & ((\A~combout\(7) & (!\Add1~13\)) # (!\A~combout\(7) & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((\B~combout\(7) & (!\A~combout\(7) & !\Add1~13\)) # (!\B~combout\(7) & ((!\Add1~13\) # (!\A~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \A~combout\(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X41_Y15_N16
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\A~combout\(8) $ (\B~combout\(8) $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\A~combout\(8) & ((\B~combout\(8)) # (!\Add1~15\))) # (!\A~combout\(8) & (\B~combout\(8) & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(8),
	datab => \B~combout\(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X41_Y15_N26
\Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\A~combout\(13) & ((\B~combout\(13) & (\Add1~25\ & VCC)) # (!\B~combout\(13) & (!\Add1~25\)))) # (!\A~combout\(13) & ((\B~combout\(13) & (!\Add1~25\)) # (!\B~combout\(13) & ((\Add1~25\) # (GND)))))
-- \Add1~27\ = CARRY((\A~combout\(13) & (!\B~combout\(13) & !\Add1~25\)) # (!\A~combout\(13) & ((!\Add1~25\) # (!\B~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(13),
	datab => \B~combout\(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X41_Y15_N28
\Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\B~combout\(14) $ (\A~combout\(14) $ (!\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\B~combout\(14) & ((\A~combout\(14)) # (!\Add1~27\))) # (!\B~combout\(14) & (\A~combout\(14) & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(14),
	datab => \A~combout\(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X41_Y15_N30
\Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\A~combout\(15) & ((\B~combout\(15) & (\Add1~29\ & VCC)) # (!\B~combout\(15) & (!\Add1~29\)))) # (!\A~combout\(15) & ((\B~combout\(15) & (!\Add1~29\)) # (!\B~combout\(15) & ((\Add1~29\) # (GND)))))
-- \Add1~31\ = CARRY((\A~combout\(15) & (!\B~combout\(15) & !\Add1~29\)) # (!\A~combout\(15) & ((!\Add1~29\) # (!\B~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(15),
	datab => \B~combout\(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X41_Y14_N2
\Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\B~combout\(17) & ((\A~combout\(17) & (\Add1~33\ & VCC)) # (!\A~combout\(17) & (!\Add1~33\)))) # (!\B~combout\(17) & ((\A~combout\(17) & (!\Add1~33\)) # (!\A~combout\(17) & ((\Add1~33\) # (GND)))))
-- \Add1~35\ = CARRY((\B~combout\(17) & (!\A~combout\(17) & !\Add1~33\)) # (!\B~combout\(17) & ((!\Add1~33\) # (!\A~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(17),
	datab => \A~combout\(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X41_Y14_N4
\Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((\A~combout\(18) $ (\B~combout\(18) $ (!\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((\A~combout\(18) & ((\B~combout\(18)) # (!\Add1~35\))) # (!\A~combout\(18) & (\B~combout\(18) & !\Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(18),
	datab => \B~combout\(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X41_Y14_N6
\Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\B~combout\(19) & ((\A~combout\(19) & (\Add1~37\ & VCC)) # (!\A~combout\(19) & (!\Add1~37\)))) # (!\B~combout\(19) & ((\A~combout\(19) & (!\Add1~37\)) # (!\A~combout\(19) & ((\Add1~37\) # (GND)))))
-- \Add1~39\ = CARRY((\B~combout\(19) & (!\A~combout\(19) & !\Add1~37\)) # (!\B~combout\(19) & ((!\Add1~37\) # (!\A~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(19),
	datab => \A~combout\(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X41_Y14_N8
\Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = ((\B~combout\(20) $ (\A~combout\(20) $ (!\Add1~39\)))) # (GND)
-- \Add1~41\ = CARRY((\B~combout\(20) & ((\A~combout\(20)) # (!\Add1~39\))) # (!\B~combout\(20) & (\A~combout\(20) & !\Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(20),
	datab => \A~combout\(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X41_Y14_N10
\Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\A~combout\(21) & ((\B~combout\(21) & (\Add1~41\ & VCC)) # (!\B~combout\(21) & (!\Add1~41\)))) # (!\A~combout\(21) & ((\B~combout\(21) & (!\Add1~41\)) # (!\B~combout\(21) & ((\Add1~41\) # (GND)))))
-- \Add1~43\ = CARRY((\A~combout\(21) & (!\B~combout\(21) & !\Add1~41\)) # (!\A~combout\(21) & ((!\Add1~41\) # (!\B~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(21),
	datab => \B~combout\(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X41_Y14_N14
\Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\A~combout\(23) & ((\B~combout\(23) & (\Add1~45\ & VCC)) # (!\B~combout\(23) & (!\Add1~45\)))) # (!\A~combout\(23) & ((\B~combout\(23) & (!\Add1~45\)) # (!\B~combout\(23) & ((\Add1~45\) # (GND)))))
-- \Add1~47\ = CARRY((\A~combout\(23) & (!\B~combout\(23) & !\Add1~45\)) # (!\A~combout\(23) & ((!\Add1~45\) # (!\B~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(23),
	datab => \B~combout\(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X41_Y14_N16
\Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((\A~combout\(24) $ (\B~combout\(24) $ (!\Add1~47\)))) # (GND)
-- \Add1~49\ = CARRY((\A~combout\(24) & ((\B~combout\(24)) # (!\Add1~47\))) # (!\A~combout\(24) & (\B~combout\(24) & !\Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(24),
	datab => \B~combout\(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X41_Y14_N18
\Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\A~combout\(25) & ((\B~combout\(25) & (\Add1~49\ & VCC)) # (!\B~combout\(25) & (!\Add1~49\)))) # (!\A~combout\(25) & ((\B~combout\(25) & (!\Add1~49\)) # (!\B~combout\(25) & ((\Add1~49\) # (GND)))))
-- \Add1~51\ = CARRY((\A~combout\(25) & (!\B~combout\(25) & !\Add1~49\)) # (!\A~combout\(25) & ((!\Add1~49\) # (!\B~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(25),
	datab => \B~combout\(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X41_Y14_N24
\Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = ((\B~combout\(28) $ (\A~combout\(28) $ (!\Add1~55\)))) # (GND)
-- \Add1~57\ = CARRY((\B~combout\(28) & ((\A~combout\(28)) # (!\Add1~55\))) # (!\B~combout\(28) & (\A~combout\(28) & !\Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(28),
	datab => \A~combout\(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X41_Y14_N26
\Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\A~combout\(29) & ((\B~combout\(29) & (\Add1~57\ & VCC)) # (!\B~combout\(29) & (!\Add1~57\)))) # (!\A~combout\(29) & ((\B~combout\(29) & (!\Add1~57\)) # (!\B~combout\(29) & ((\Add1~57\) # (GND)))))
-- \Add1~59\ = CARRY((\A~combout\(29) & (!\B~combout\(29) & !\Add1~57\)) # (!\A~combout\(29) & ((!\Add1~57\) # (!\B~combout\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(29),
	datab => \B~combout\(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X41_Y14_N28
\Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = ((\A~combout\(30) $ (\B~combout\(30) $ (!\Add1~59\)))) # (GND)
-- \Add1~61\ = CARRY((\A~combout\(30) & ((\B~combout\(30)) # (!\Add1~59\))) # (!\A~combout\(30) & (\B~combout\(30) & !\Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(30),
	datab => \B~combout\(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X41_Y14_N30
\Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \A~combout\(31) $ (\Add1~61\ $ (\B~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datad => \B~combout\(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X43_Y15_N12
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\aluctl~combout\(3)) # ((!\Mux24~3_combout\ & (!\Mux22~3_combout\ & !\Mux23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Mux22~3_combout\,
	datac => \aluctl~combout\(3),
	datad => \Mux23~3_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X39_Y16_N12
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\aluctl~combout\(3)) # ((!\Mux15~3_combout\ & (!\Mux13~3_combout\ & !\Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(3),
	datab => \Mux15~3_combout\,
	datac => \Mux13~3_combout\,
	datad => \Mux14~3_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X39_Y15_N20
\Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\aluctl~combout\(2) & (\tmp[2]~4_combout\ & ((\aluctl~combout\(1))))) # (!\aluctl~combout\(2) & (((\Add1~4_combout\) # (!\aluctl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[2]~4_combout\,
	datab => \aluctl~combout\(2),
	datac => \Add1~4_combout\,
	datad => \aluctl~combout\(1),
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X39_Y15_N16
\Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\aluctl~combout\(2) & (\tmp[3]~6_combout\ & ((\aluctl~combout\(1))))) # (!\aluctl~combout\(2) & (((\Add1~6_combout\) # (!\aluctl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[3]~6_combout\,
	datab => \aluctl~combout\(2),
	datac => \Add1~6_combout\,
	datad => \aluctl~combout\(1),
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X42_Y15_N10
\Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\aluctl~combout\(2) & (((\aluctl~combout\(1) & \tmp[4]~8_combout\)))) # (!\aluctl~combout\(2) & ((\Add1~8_combout\) # ((!\aluctl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \aluctl~combout\(2),
	datac => \aluctl~combout\(1),
	datad => \tmp[4]~8_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X42_Y15_N6
\Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\aluctl~combout\(1) & ((\aluctl~combout\(2) & ((\tmp[7]~14_combout\))) # (!\aluctl~combout\(2) & (\Add1~14_combout\)))) # (!\aluctl~combout\(1) & (((!\aluctl~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \tmp[7]~14_combout\,
	datac => \aluctl~combout\(1),
	datad => \aluctl~combout\(2),
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X44_Y15_N10
\Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\aluctl~combout\(1) & ((\aluctl~combout\(2) & (\tmp[8]~16_combout\)) # (!\aluctl~combout\(2) & ((\Add1~16_combout\))))) # (!\aluctl~combout\(1) & (((!\aluctl~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(1),
	datab => \tmp[8]~16_combout\,
	datac => \Add1~16_combout\,
	datad => \aluctl~combout\(2),
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X44_Y15_N12
\Mux23~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (!\aluctl~combout\(0) & \Mux23~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluctl~combout\(0),
	datad => \Mux23~2_combout\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X40_Y16_N10
\Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\aluctl~combout\(1) & ((\aluctl~combout\(2) & ((\tmp[13]~26_combout\))) # (!\aluctl~combout\(2) & (\Add1~26_combout\)))) # (!\aluctl~combout\(1) & (((!\aluctl~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => \tmp[13]~26_combout\,
	datac => \aluctl~combout\(1),
	datad => \aluctl~combout\(2),
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X40_Y16_N6
\Mux17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\aluctl~combout\(1) & ((\aluctl~combout\(2) & ((\tmp[14]~28_combout\))) # (!\aluctl~combout\(2) & (\Add1~28_combout\)))) # (!\aluctl~combout\(1) & (((!\aluctl~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datab => \aluctl~combout\(1),
	datac => \tmp[14]~28_combout\,
	datad => \aluctl~combout\(2),
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X40_Y16_N2
\Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\aluctl~combout\(1) & ((\aluctl~combout\(2) & (\tmp[15]~30_combout\)) # (!\aluctl~combout\(2) & ((\Add1~30_combout\))))) # (!\aluctl~combout\(1) & (((!\aluctl~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[15]~30_combout\,
	datab => \aluctl~combout\(1),
	datac => \Add1~30_combout\,
	datad => \aluctl~combout\(2),
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X40_Y16_N12
\Mux16~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\Mux16~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux16~2_combout\,
	datad => \aluctl~combout\(0),
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X39_Y14_N10
\Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\aluctl~combout\(1) & ((\aluctl~combout\(2) & (\tmp[18]~36_combout\)) # (!\aluctl~combout\(2) & ((\Add1~36_combout\))))) # (!\aluctl~combout\(1) & (((!\aluctl~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[18]~36_combout\,
	datab => \aluctl~combout\(1),
	datac => \Add1~36_combout\,
	datad => \aluctl~combout\(2),
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X39_Y14_N22
\Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\aluctl~combout\(1) & ((\aluctl~combout\(2) & (\tmp[19]~38_combout\)) # (!\aluctl~combout\(2) & ((\Add1~38_combout\))))) # (!\aluctl~combout\(1) & (((!\aluctl~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[19]~38_combout\,
	datab => \aluctl~combout\(1),
	datac => \Add1~38_combout\,
	datad => \aluctl~combout\(2),
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X39_Y14_N24
\Mux12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux12~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~2_combout\,
	datac => \aluctl~combout\(0),
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X40_Y13_N6
\Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\aluctl~combout\(2) & (((\tmp[24]~48_combout\ & \aluctl~combout\(1))))) # (!\aluctl~combout\(2) & ((\Add1~48_combout\) # ((!\aluctl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(2),
	datab => \Add1~48_combout\,
	datac => \tmp[24]~48_combout\,
	datad => \aluctl~combout\(1),
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X42_Y14_N20
\Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\aluctl~combout\(1) & ((\aluctl~combout\(2) & ((\tmp[25]~50_combout\))) # (!\aluctl~combout\(2) & (\Add1~50_combout\)))) # (!\aluctl~combout\(1) & (((!\aluctl~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(1),
	datab => \Add1~50_combout\,
	datac => \aluctl~combout\(2),
	datad => \tmp[25]~50_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X42_Y14_N14
\Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux6~2_combout\,
	datad => \aluctl~combout\(0),
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X39_Y15_N28
\Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\aluctl~combout\(1) & ((\aluctl~combout\(2) & (\tmp[29]~58_combout\)) # (!\aluctl~combout\(2) & ((\Add1~58_combout\))))) # (!\aluctl~combout\(1) & (((!\aluctl~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(1),
	datab => \tmp[29]~58_combout\,
	datac => \Add1~58_combout\,
	datad => \aluctl~combout\(2),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X39_Y15_N30
\Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (!\aluctl~combout\(0) & \Mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluctl~combout\(0),
	datad => \Mux2~2_combout\,
	combout => \Mux2~5_combout\);

-- Location: PIN_AJ15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(30),
	combout => \A~combout\(30));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(21),
	combout => \A~combout\(21));

-- Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(16),
	combout => \A~combout\(16));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(31),
	combout => \B~combout\(31));

-- Location: PIN_AF11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(31),
	combout => \A~combout\(31));

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(30),
	combout => \B~combout\(30));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(29),
	combout => \B~combout\(29));

-- Location: PIN_AJ14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(28),
	combout => \B~combout\(28));

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(27),
	combout => \B~combout\(27));

-- Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(26),
	combout => \B~combout\(26));

-- Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(25),
	combout => \A~combout\(25));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(24),
	combout => \A~combout\(24));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(23),
	combout => \B~combout\(23));

-- Location: PIN_AH10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(22),
	combout => \B~combout\(22));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(21),
	combout => \B~combout\(21));

-- Location: PIN_AJ9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(20),
	combout => \B~combout\(20));

-- Location: PIN_AF12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(19),
	combout => \B~combout\(19));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(18),
	combout => \A~combout\(18));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(17),
	combout => \A~combout\(17));

-- Location: PIN_AG13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(16),
	combout => \B~combout\(16));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(15),
	combout => \B~combout\(15));

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(14),
	combout => \A~combout\(14));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(13),
	combout => \A~combout\(13));

-- Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(12),
	combout => \A~combout\(12));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(11),
	combout => \A~combout\(11));

-- Location: PIN_AJ18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(10),
	combout => \A~combout\(10));

-- Location: PIN_AH16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(9),
	combout => \A~combout\(9));

-- Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(8),
	combout => \B~combout\(8));

-- Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: PIN_AJ7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: PIN_AJ12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCCOMB_X40_Y15_N0
\tmp[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[0]~0_combout\ = (\B~combout\(0) & (\A~combout\(0) $ (VCC))) # (!\B~combout\(0) & ((\A~combout\(0)) # (GND)))
-- \tmp[0]~1\ = CARRY((\A~combout\(0)) # (!\B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(0),
	datad => VCC,
	combout => \tmp[0]~0_combout\,
	cout => \tmp[0]~1\);

-- Location: LCCOMB_X40_Y15_N10
\tmp[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[5]~10_combout\ = (\A~combout\(5) & ((\B~combout\(5) & (!\tmp[4]~9\)) # (!\B~combout\(5) & (\tmp[4]~9\ & VCC)))) # (!\A~combout\(5) & ((\B~combout\(5) & ((\tmp[4]~9\) # (GND))) # (!\B~combout\(5) & (!\tmp[4]~9\))))
-- \tmp[5]~11\ = CARRY((\A~combout\(5) & (\B~combout\(5) & !\tmp[4]~9\)) # (!\A~combout\(5) & ((\B~combout\(5)) # (!\tmp[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \B~combout\(5),
	datad => VCC,
	cin => \tmp[4]~9\,
	combout => \tmp[5]~10_combout\,
	cout => \tmp[5]~11\);

-- Location: LCCOMB_X40_Y15_N12
\tmp[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[6]~12_combout\ = ((\A~combout\(6) $ (\B~combout\(6) $ (\tmp[5]~11\)))) # (GND)
-- \tmp[6]~13\ = CARRY((\A~combout\(6) & ((!\tmp[5]~11\) # (!\B~combout\(6)))) # (!\A~combout\(6) & (!\B~combout\(6) & !\tmp[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \B~combout\(6),
	datad => VCC,
	cin => \tmp[5]~11\,
	combout => \tmp[6]~12_combout\,
	cout => \tmp[6]~13\);

-- Location: LCCOMB_X40_Y15_N18
\tmp[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[9]~18_combout\ = (\B~combout\(9) & ((\A~combout\(9) & (!\tmp[8]~17\)) # (!\A~combout\(9) & ((\tmp[8]~17\) # (GND))))) # (!\B~combout\(9) & ((\A~combout\(9) & (\tmp[8]~17\ & VCC)) # (!\A~combout\(9) & (!\tmp[8]~17\))))
-- \tmp[9]~19\ = CARRY((\B~combout\(9) & ((!\tmp[8]~17\) # (!\A~combout\(9)))) # (!\B~combout\(9) & (!\A~combout\(9) & !\tmp[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(9),
	datab => \A~combout\(9),
	datad => VCC,
	cin => \tmp[8]~17\,
	combout => \tmp[9]~18_combout\,
	cout => \tmp[9]~19\);

-- Location: LCCOMB_X40_Y15_N20
\tmp[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[10]~20_combout\ = ((\B~combout\(10) $ (\A~combout\(10) $ (\tmp[9]~19\)))) # (GND)
-- \tmp[10]~21\ = CARRY((\B~combout\(10) & (\A~combout\(10) & !\tmp[9]~19\)) # (!\B~combout\(10) & ((\A~combout\(10)) # (!\tmp[9]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(10),
	datab => \A~combout\(10),
	datad => VCC,
	cin => \tmp[9]~19\,
	combout => \tmp[10]~20_combout\,
	cout => \tmp[10]~21\);

-- Location: LCCOMB_X40_Y15_N22
\tmp[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[11]~22_combout\ = (\B~combout\(11) & ((\A~combout\(11) & (!\tmp[10]~21\)) # (!\A~combout\(11) & ((\tmp[10]~21\) # (GND))))) # (!\B~combout\(11) & ((\A~combout\(11) & (\tmp[10]~21\ & VCC)) # (!\A~combout\(11) & (!\tmp[10]~21\))))
-- \tmp[11]~23\ = CARRY((\B~combout\(11) & ((!\tmp[10]~21\) # (!\A~combout\(11)))) # (!\B~combout\(11) & (!\A~combout\(11) & !\tmp[10]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(11),
	datab => \A~combout\(11),
	datad => VCC,
	cin => \tmp[10]~21\,
	combout => \tmp[11]~22_combout\,
	cout => \tmp[11]~23\);

-- Location: LCCOMB_X40_Y15_N24
\tmp[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[12]~24_combout\ = ((\B~combout\(12) $ (\A~combout\(12) $ (\tmp[11]~23\)))) # (GND)
-- \tmp[12]~25\ = CARRY((\B~combout\(12) & (\A~combout\(12) & !\tmp[11]~23\)) # (!\B~combout\(12) & ((\A~combout\(12)) # (!\tmp[11]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(12),
	datab => \A~combout\(12),
	datad => VCC,
	cin => \tmp[11]~23\,
	combout => \tmp[12]~24_combout\,
	cout => \tmp[12]~25\);

-- Location: LCCOMB_X40_Y14_N0
\tmp[16]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[16]~32_combout\ = ((\A~combout\(16) $ (\B~combout\(16) $ (\tmp[15]~31\)))) # (GND)
-- \tmp[16]~33\ = CARRY((\A~combout\(16) & ((!\tmp[15]~31\) # (!\B~combout\(16)))) # (!\A~combout\(16) & (!\B~combout\(16) & !\tmp[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(16),
	datab => \B~combout\(16),
	datad => VCC,
	cin => \tmp[15]~31\,
	combout => \tmp[16]~32_combout\,
	cout => \tmp[16]~33\);

-- Location: LCCOMB_X40_Y14_N2
\tmp[17]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[17]~34_combout\ = (\B~combout\(17) & ((\A~combout\(17) & (!\tmp[16]~33\)) # (!\A~combout\(17) & ((\tmp[16]~33\) # (GND))))) # (!\B~combout\(17) & ((\A~combout\(17) & (\tmp[16]~33\ & VCC)) # (!\A~combout\(17) & (!\tmp[16]~33\))))
-- \tmp[17]~35\ = CARRY((\B~combout\(17) & ((!\tmp[16]~33\) # (!\A~combout\(17)))) # (!\B~combout\(17) & (!\A~combout\(17) & !\tmp[16]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(17),
	datab => \A~combout\(17),
	datad => VCC,
	cin => \tmp[16]~33\,
	combout => \tmp[17]~34_combout\,
	cout => \tmp[17]~35\);

-- Location: LCCOMB_X40_Y14_N8
\tmp[20]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[20]~40_combout\ = ((\A~combout\(20) $ (\B~combout\(20) $ (\tmp[19]~39\)))) # (GND)
-- \tmp[20]~41\ = CARRY((\A~combout\(20) & ((!\tmp[19]~39\) # (!\B~combout\(20)))) # (!\A~combout\(20) & (!\B~combout\(20) & !\tmp[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(20),
	datab => \B~combout\(20),
	datad => VCC,
	cin => \tmp[19]~39\,
	combout => \tmp[20]~40_combout\,
	cout => \tmp[20]~41\);

-- Location: LCCOMB_X40_Y14_N10
\tmp[21]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[21]~42_combout\ = (\A~combout\(21) & ((\B~combout\(21) & (!\tmp[20]~41\)) # (!\B~combout\(21) & (\tmp[20]~41\ & VCC)))) # (!\A~combout\(21) & ((\B~combout\(21) & ((\tmp[20]~41\) # (GND))) # (!\B~combout\(21) & (!\tmp[20]~41\))))
-- \tmp[21]~43\ = CARRY((\A~combout\(21) & (\B~combout\(21) & !\tmp[20]~41\)) # (!\A~combout\(21) & ((\B~combout\(21)) # (!\tmp[20]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(21),
	datab => \B~combout\(21),
	datad => VCC,
	cin => \tmp[20]~41\,
	combout => \tmp[21]~42_combout\,
	cout => \tmp[21]~43\);

-- Location: LCCOMB_X40_Y14_N12
\tmp[22]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[22]~44_combout\ = ((\A~combout\(22) $ (\B~combout\(22) $ (\tmp[21]~43\)))) # (GND)
-- \tmp[22]~45\ = CARRY((\A~combout\(22) & ((!\tmp[21]~43\) # (!\B~combout\(22)))) # (!\A~combout\(22) & (!\B~combout\(22) & !\tmp[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(22),
	datab => \B~combout\(22),
	datad => VCC,
	cin => \tmp[21]~43\,
	combout => \tmp[22]~44_combout\,
	cout => \tmp[22]~45\);

-- Location: LCCOMB_X40_Y14_N14
\tmp[23]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[23]~46_combout\ = (\A~combout\(23) & ((\B~combout\(23) & (!\tmp[22]~45\)) # (!\B~combout\(23) & (\tmp[22]~45\ & VCC)))) # (!\A~combout\(23) & ((\B~combout\(23) & ((\tmp[22]~45\) # (GND))) # (!\B~combout\(23) & (!\tmp[22]~45\))))
-- \tmp[23]~47\ = CARRY((\A~combout\(23) & (\B~combout\(23) & !\tmp[22]~45\)) # (!\A~combout\(23) & ((\B~combout\(23)) # (!\tmp[22]~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(23),
	datab => \B~combout\(23),
	datad => VCC,
	cin => \tmp[22]~45\,
	combout => \tmp[23]~46_combout\,
	cout => \tmp[23]~47\);

-- Location: LCCOMB_X40_Y14_N22
\tmp[27]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[27]~54_combout\ = (\A~combout\(27) & ((\B~combout\(27) & (!\tmp[26]~53\)) # (!\B~combout\(27) & (\tmp[26]~53\ & VCC)))) # (!\A~combout\(27) & ((\B~combout\(27) & ((\tmp[26]~53\) # (GND))) # (!\B~combout\(27) & (!\tmp[26]~53\))))
-- \tmp[27]~55\ = CARRY((\A~combout\(27) & (\B~combout\(27) & !\tmp[26]~53\)) # (!\A~combout\(27) & ((\B~combout\(27)) # (!\tmp[26]~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(27),
	datab => \B~combout\(27),
	datad => VCC,
	cin => \tmp[26]~53\,
	combout => \tmp[27]~54_combout\,
	cout => \tmp[27]~55\);

-- Location: LCCOMB_X40_Y14_N24
\tmp[28]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[28]~56_combout\ = ((\A~combout\(28) $ (\B~combout\(28) $ (\tmp[27]~55\)))) # (GND)
-- \tmp[28]~57\ = CARRY((\A~combout\(28) & ((!\tmp[27]~55\) # (!\B~combout\(28)))) # (!\A~combout\(28) & (!\B~combout\(28) & !\tmp[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(28),
	datab => \B~combout\(28),
	datad => VCC,
	cin => \tmp[27]~55\,
	combout => \tmp[28]~56_combout\,
	cout => \tmp[28]~57\);

-- Location: LCCOMB_X40_Y14_N28
\tmp[30]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[30]~60_combout\ = ((\A~combout\(30) $ (\B~combout\(30) $ (\tmp[29]~59\)))) # (GND)
-- \tmp[30]~61\ = CARRY((\A~combout\(30) & ((!\tmp[29]~59\) # (!\B~combout\(30)))) # (!\A~combout\(30) & (!\B~combout\(30) & !\tmp[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(30),
	datab => \B~combout\(30),
	datad => VCC,
	cin => \tmp[29]~59\,
	combout => \tmp[30]~60_combout\,
	cout => \tmp[30]~61\);

-- Location: LCCOMB_X40_Y14_N30
\tmp[31]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[31]~62_combout\ = \B~combout\(31) $ (\tmp[30]~61\ $ (!\A~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(31),
	datad => \A~combout\(31),
	cin => \tmp[30]~61\,
	combout => \tmp[31]~62_combout\);

-- Location: LCCOMB_X41_Y15_N0
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\B~combout\(0) & (\A~combout\(0) $ (VCC))) # (!\B~combout\(0) & (\A~combout\(0) & VCC))
-- \Add1~1\ = CARRY((\B~combout\(0) & \A~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: PIN_AK14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\aluctl[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_aluctl(2),
	combout => \aluctl~combout\(2));

-- Location: LCCOMB_X42_Y14_N22
\Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\Mux0~0_combout\ & ((\aluctl~combout\(2) & ((\tmp[0]~0_combout\))) # (!\aluctl~combout\(2) & (\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Add1~0_combout\,
	datac => \aluctl~combout\(2),
	datad => \tmp[0]~0_combout\,
	combout => \Mux31~2_combout\);

-- Location: PIN_AK12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\aluctl[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_aluctl(3),
	combout => \aluctl~combout\(3));

-- Location: PIN_AJ13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\aluctl[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_aluctl(0),
	combout => \aluctl~combout\(0));

-- Location: LCCOMB_X42_Y14_N24
\Mux31~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\aluctl~combout\(1) & (\aluctl~combout\(2) & (!\aluctl~combout\(3) & \aluctl~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(1),
	datab => \aluctl~combout\(2),
	datac => \aluctl~combout\(3),
	datad => \aluctl~combout\(0),
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X42_Y14_N8
\Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (!\aluctl~combout\(1) & (!\aluctl~combout\(2) & !\aluctl~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(1),
	datab => \aluctl~combout\(2),
	datac => \aluctl~combout\(3),
	combout => \Mux31~0_combout\);

-- Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCCOMB_X42_Y14_N2
\Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\Mux31~0_combout\ & ((\A~combout\(0) & ((\aluctl~combout\(0)) # (\B~combout\(0)))) # (!\A~combout\(0) & (\aluctl~combout\(0) & \B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \aluctl~combout\(0),
	datac => \Mux31~0_combout\,
	datad => \B~combout\(0),
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X42_Y14_N18
\Mux31~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\Mux31~2_combout\) # ((\Mux31~1_combout\) # ((\tmp[31]~62_combout\ & \Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[31]~62_combout\,
	datab => \Mux31~2_combout\,
	datac => \Mux31~3_combout\,
	datad => \Mux31~1_combout\,
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X41_Y15_N2
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\A~combout\(1) & ((\B~combout\(1) & (\Add1~1\ & VCC)) # (!\B~combout\(1) & (!\Add1~1\)))) # (!\A~combout\(1) & ((\B~combout\(1) & (!\Add1~1\)) # (!\B~combout\(1) & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\A~combout\(1) & (!\B~combout\(1) & !\Add1~1\)) # (!\A~combout\(1) & ((!\Add1~1\) # (!\B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: PIN_AH13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\aluctl[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_aluctl(1),
	combout => \aluctl~combout\(1));

-- Location: LCCOMB_X39_Y15_N0
\Mux30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\aluctl~combout\(2) & (\tmp[1]~2_combout\ & ((\aluctl~combout\(1))))) # (!\aluctl~combout\(2) & (((\Add1~2_combout\) # (!\aluctl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[1]~2_combout\,
	datab => \aluctl~combout\(2),
	datac => \Add1~2_combout\,
	datad => \aluctl~combout\(1),
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X39_Y15_N18
\Mux30~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (!\aluctl~combout\(0) & \Mux30~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluctl~combout\(0),
	datad => \Mux30~2_combout\,
	combout => \Mux30~6_combout\);

-- Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCCOMB_X39_Y15_N8
\Mux30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\Mux30~3_combout\ & ((\Mux30~6_combout\ & (\B~combout\(1) & \A~combout\(1))) # (!\Mux30~6_combout\ & ((\B~combout\(1)) # (\A~combout\(1)))))) # (!\Mux30~3_combout\ & (\Mux30~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datab => \Mux30~6_combout\,
	datac => \B~combout\(1),
	datad => \A~combout\(1),
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X39_Y15_N2
\Mux30~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (\Mux30~4_combout\ & !\aluctl~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux30~4_combout\,
	datac => \aluctl~combout\(3),
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X39_Y14_N0
\Mux30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (!\aluctl~combout\(2) & !\aluctl~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluctl~combout\(2),
	datad => \aluctl~combout\(1),
	combout => \Mux30~3_combout\);

-- Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCCOMB_X39_Y15_N6
\Mux29~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (\Mux29~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~2_combout\,
	datac => \aluctl~combout\(0),
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X39_Y15_N4
\Mux29~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\Mux30~3_combout\ & ((\B~combout\(2) & ((\A~combout\(2)) # (!\Mux29~5_combout\))) # (!\B~combout\(2) & (\A~combout\(2) & !\Mux29~5_combout\)))) # (!\Mux30~3_combout\ & (((\Mux29~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \Mux30~3_combout\,
	datac => \A~combout\(2),
	datad => \Mux29~5_combout\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X39_Y15_N14
\Mux29~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\Mux29~3_combout\ & !\aluctl~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux29~3_combout\,
	datac => \aluctl~combout\(3),
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X39_Y15_N26
\Mux28~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\Mux28~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~2_combout\,
	datac => \aluctl~combout\(0),
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X39_Y15_N24
\Mux28~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\Mux30~3_combout\ & ((\A~combout\(3) & ((\B~combout\(3)) # (!\Mux28~5_combout\))) # (!\A~combout\(3) & (\B~combout\(3) & !\Mux28~5_combout\)))) # (!\Mux30~3_combout\ & (((\Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \Mux30~3_combout\,
	datac => \B~combout\(3),
	datad => \Mux28~5_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X39_Y15_N10
\Mux28~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\Mux28~3_combout\ & !\aluctl~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datac => \aluctl~combout\(3),
	combout => \Mux28~4_combout\);

-- Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCCOMB_X42_Y15_N4
\Mux27~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\Mux27~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datad => \aluctl~combout\(0),
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X42_Y15_N16
\Mux27~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux27~5_combout\ & (((\B~combout\(4) & \A~combout\(4))) # (!\Mux30~3_combout\))) # (!\Mux27~5_combout\ & (\Mux30~3_combout\ & ((\B~combout\(4)) # (\A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \A~combout\(4),
	datac => \Mux27~5_combout\,
	datad => \Mux30~3_combout\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X43_Y15_N8
\Mux27~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (!\aluctl~combout\(3) & \Mux27~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluctl~combout\(3),
	datad => \Mux27~3_combout\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X42_Y15_N22
\Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\aluctl~combout\(2) & (((\aluctl~combout\(1) & \tmp[5]~10_combout\)))) # (!\aluctl~combout\(2) & ((\Add1~10_combout\) # ((!\aluctl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \aluctl~combout\(2),
	datac => \aluctl~combout\(1),
	datad => \tmp[5]~10_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X42_Y15_N8
\Mux26~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\Mux26~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux26~2_combout\,
	datad => \aluctl~combout\(0),
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X42_Y15_N18
\Mux26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\Mux26~5_combout\ & (((\A~combout\(5) & \B~combout\(5))) # (!\Mux30~3_combout\))) # (!\Mux26~5_combout\ & (\Mux30~3_combout\ & ((\A~combout\(5)) # (\B~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \B~combout\(5),
	datac => \Mux26~5_combout\,
	datad => \Mux30~3_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X43_Y15_N18
\Mux26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (!\aluctl~combout\(3) & \Mux26~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluctl~combout\(3),
	datad => \Mux26~3_combout\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X42_Y15_N26
\Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\aluctl~combout\(1) & ((\aluctl~combout\(2) & ((\tmp[6]~12_combout\))) # (!\aluctl~combout\(2) & (\Add1~12_combout\)))) # (!\aluctl~combout\(1) & (((!\aluctl~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \tmp[6]~12_combout\,
	datac => \aluctl~combout\(1),
	datad => \aluctl~combout\(2),
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X42_Y15_N20
\Mux25~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\Mux25~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux25~2_combout\,
	datad => \aluctl~combout\(0),
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X42_Y15_N28
\Mux25~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\Mux30~3_combout\ & ((\A~combout\(6) & ((\B~combout\(6)) # (!\Mux25~5_combout\))) # (!\A~combout\(6) & (!\Mux25~5_combout\ & \B~combout\(6))))) # (!\Mux30~3_combout\ & (((\Mux25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \Mux30~3_combout\,
	datac => \Mux25~5_combout\,
	datad => \B~combout\(6),
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X43_Y15_N20
\Mux25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (!\aluctl~combout\(3) & \Mux25~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluctl~combout\(3),
	datad => \Mux25~3_combout\,
	combout => \Mux25~4_combout\);

-- Location: PIN_AG12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LCCOMB_X42_Y15_N24
\Mux24~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\Mux24~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datad => \aluctl~combout\(0),
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X42_Y15_N14
\Mux24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\Mux24~5_combout\ & (((\A~combout\(7) & \B~combout\(7))) # (!\Mux30~3_combout\))) # (!\Mux24~5_combout\ & (\Mux30~3_combout\ & ((\A~combout\(7)) # (\B~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \B~combout\(7),
	datac => \Mux24~5_combout\,
	datad => \Mux30~3_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X43_Y15_N30
\Mux24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (!\aluctl~combout\(3) & \Mux24~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluctl~combout\(3),
	datad => \Mux24~3_combout\,
	combout => \Mux24~4_combout\);

-- Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(8),
	combout => \A~combout\(8));

-- Location: LCCOMB_X44_Y15_N24
\Mux23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux23~5_combout\ & (((\A~combout\(8) & \B~combout\(8))) # (!\Mux30~3_combout\))) # (!\Mux23~5_combout\ & (\Mux30~3_combout\ & ((\A~combout\(8)) # (\B~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~5_combout\,
	datab => \Mux30~3_combout\,
	datac => \A~combout\(8),
	datad => \B~combout\(8),
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X43_Y15_N0
\Mux23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (!\aluctl~combout\(3) & \Mux23~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluctl~combout\(3),
	datad => \Mux23~3_combout\,
	combout => \Mux23~4_combout\);

-- Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCCOMB_X41_Y15_N18
\Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\B~combout\(9) & ((\A~combout\(9) & (\Add1~17\ & VCC)) # (!\A~combout\(9) & (!\Add1~17\)))) # (!\B~combout\(9) & ((\A~combout\(9) & (!\Add1~17\)) # (!\A~combout\(9) & ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((\B~combout\(9) & (!\A~combout\(9) & !\Add1~17\)) # (!\B~combout\(9) & ((!\Add1~17\) # (!\A~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(9),
	datab => \A~combout\(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X44_Y15_N6
\Mux22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\aluctl~combout\(1) & ((\aluctl~combout\(2) & ((\tmp[9]~18_combout\))) # (!\aluctl~combout\(2) & (\Add1~18_combout\)))) # (!\aluctl~combout\(1) & (((!\aluctl~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(1),
	datab => \Add1~18_combout\,
	datac => \tmp[9]~18_combout\,
	datad => \aluctl~combout\(2),
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X44_Y15_N0
\Mux22~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (!\aluctl~combout\(0) & \Mux22~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluctl~combout\(0),
	datad => \Mux22~2_combout\,
	combout => \Mux22~5_combout\);

-- Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(9),
	combout => \B~combout\(9));

-- Location: LCCOMB_X44_Y15_N18
\Mux22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux30~3_combout\ & ((\Mux22~5_combout\ & (\A~combout\(9) & \B~combout\(9))) # (!\Mux22~5_combout\ & ((\A~combout\(9)) # (\B~combout\(9)))))) # (!\Mux30~3_combout\ & (\Mux22~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datab => \Mux22~5_combout\,
	datac => \A~combout\(9),
	datad => \B~combout\(9),
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X43_Y15_N2
\Mux22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (!\aluctl~combout\(3) & \Mux22~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluctl~combout\(3),
	datad => \Mux22~3_combout\,
	combout => \Mux22~4_combout\);

-- Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(10),
	combout => \B~combout\(10));

-- Location: LCCOMB_X41_Y15_N20
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\A~combout\(10) $ (\B~combout\(10) $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\A~combout\(10) & ((\B~combout\(10)) # (!\Add1~19\))) # (!\A~combout\(10) & (\B~combout\(10) & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(10),
	datab => \B~combout\(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X44_Y15_N26
\Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\aluctl~combout\(1) & ((\aluctl~combout\(2) & ((\tmp[10]~20_combout\))) # (!\aluctl~combout\(2) & (\Add1~20_combout\)))) # (!\aluctl~combout\(1) & (((!\aluctl~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(1),
	datab => \Add1~20_combout\,
	datac => \tmp[10]~20_combout\,
	datad => \aluctl~combout\(2),
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X44_Y15_N28
\Mux21~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (!\aluctl~combout\(0) & \Mux21~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluctl~combout\(0),
	datad => \Mux21~2_combout\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X44_Y15_N20
\Mux21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux30~3_combout\ & ((\Mux21~5_combout\ & (\A~combout\(10) & \B~combout\(10))) # (!\Mux21~5_combout\ & ((\A~combout\(10)) # (\B~combout\(10)))))) # (!\Mux30~3_combout\ & (\Mux21~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datab => \Mux21~5_combout\,
	datac => \A~combout\(10),
	datad => \B~combout\(10),
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X43_Y15_N4
\Mux21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (!\aluctl~combout\(3) & \Mux21~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluctl~combout\(3),
	datad => \Mux21~3_combout\,
	combout => \Mux21~4_combout\);

-- Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(11),
	combout => \B~combout\(11));

-- Location: LCCOMB_X41_Y15_N22
\Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\A~combout\(11) & ((\B~combout\(11) & (\Add1~21\ & VCC)) # (!\B~combout\(11) & (!\Add1~21\)))) # (!\A~combout\(11) & ((\B~combout\(11) & (!\Add1~21\)) # (!\B~combout\(11) & ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((\A~combout\(11) & (!\B~combout\(11) & !\Add1~21\)) # (!\A~combout\(11) & ((!\Add1~21\) # (!\B~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(11),
	datab => \B~combout\(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X44_Y15_N22
\Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\aluctl~combout\(1) & ((\aluctl~combout\(2) & ((\tmp[11]~22_combout\))) # (!\aluctl~combout\(2) & (\Add1~22_combout\)))) # (!\aluctl~combout\(1) & (((!\aluctl~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(1),
	datab => \Add1~22_combout\,
	datac => \tmp[11]~22_combout\,
	datad => \aluctl~combout\(2),
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X44_Y15_N8
\Mux20~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (!\aluctl~combout\(0) & \Mux20~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluctl~combout\(0),
	datad => \Mux20~2_combout\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X44_Y15_N30
\Mux20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux20~5_combout\ & (((\A~combout\(11) & \B~combout\(11))) # (!\Mux30~3_combout\))) # (!\Mux20~5_combout\ & (\Mux30~3_combout\ & ((\A~combout\(11)) # (\B~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(11),
	datab => \Mux20~5_combout\,
	datac => \B~combout\(11),
	datad => \Mux30~3_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X43_Y15_N6
\Mux20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (!\aluctl~combout\(3) & \Mux20~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluctl~combout\(3),
	datad => \Mux20~3_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X41_Y15_N24
\Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\B~combout\(12) $ (\A~combout\(12) $ (!\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\B~combout\(12) & ((\A~combout\(12)) # (!\Add1~23\))) # (!\B~combout\(12) & (\A~combout\(12) & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(12),
	datab => \A~combout\(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X44_Y15_N2
\Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\aluctl~combout\(1) & ((\aluctl~combout\(2) & ((\tmp[12]~24_combout\))) # (!\aluctl~combout\(2) & (\Add1~24_combout\)))) # (!\aluctl~combout\(1) & (((!\aluctl~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(1),
	datab => \Add1~24_combout\,
	datac => \tmp[12]~24_combout\,
	datad => \aluctl~combout\(2),
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X44_Y15_N4
\Mux19~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (!\aluctl~combout\(0) & \Mux19~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluctl~combout\(0),
	datad => \Mux19~2_combout\,
	combout => \Mux19~5_combout\);

-- Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(12),
	combout => \B~combout\(12));

-- Location: LCCOMB_X44_Y15_N16
\Mux19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux30~3_combout\ & ((\Mux19~5_combout\ & (\A~combout\(12) & \B~combout\(12))) # (!\Mux19~5_combout\ & ((\A~combout\(12)) # (\B~combout\(12)))))) # (!\Mux30~3_combout\ & (\Mux19~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datab => \Mux19~5_combout\,
	datac => \A~combout\(12),
	datad => \B~combout\(12),
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X43_Y15_N24
\Mux19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\Mux19~3_combout\ & !\aluctl~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~3_combout\,
	datac => \aluctl~combout\(3),
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X40_Y16_N4
\Mux18~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\Mux18~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~2_combout\,
	datad => \aluctl~combout\(0),
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X40_Y16_N16
\Mux18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux30~3_combout\ & ((\B~combout\(13) & ((\A~combout\(13)) # (!\Mux18~5_combout\))) # (!\B~combout\(13) & (!\Mux18~5_combout\ & \A~combout\(13))))) # (!\Mux30~3_combout\ & (((\Mux18~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(13),
	datab => \Mux30~3_combout\,
	datac => \Mux18~5_combout\,
	datad => \A~combout\(13),
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X39_Y16_N24
\Mux18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (!\aluctl~combout\(3) & \Mux18~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluctl~combout\(3),
	datac => \Mux18~3_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X40_Y16_N8
\Mux17~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\Mux17~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datad => \aluctl~combout\(0),
	combout => \Mux17~5_combout\);

-- Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(14),
	combout => \B~combout\(14));

-- Location: LCCOMB_X40_Y16_N26
\Mux17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux30~3_combout\ & ((\A~combout\(14) & ((\B~combout\(14)) # (!\Mux17~5_combout\))) # (!\A~combout\(14) & (!\Mux17~5_combout\ & \B~combout\(14))))) # (!\Mux30~3_combout\ & (((\Mux17~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(14),
	datab => \Mux30~3_combout\,
	datac => \Mux17~5_combout\,
	datad => \B~combout\(14),
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X39_Y16_N2
\Mux17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (!\aluctl~combout\(3) & \Mux17~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluctl~combout\(3),
	datac => \Mux17~3_combout\,
	combout => \Mux17~4_combout\);

-- Location: PIN_AG9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(15),
	combout => \A~combout\(15));

-- Location: LCCOMB_X40_Y16_N20
\Mux16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux16~5_combout\ & (((\A~combout\(15) & \B~combout\(15))) # (!\Mux30~3_combout\))) # (!\Mux16~5_combout\ & (\Mux30~3_combout\ & ((\A~combout\(15)) # (\B~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~5_combout\,
	datab => \Mux30~3_combout\,
	datac => \A~combout\(15),
	datad => \B~combout\(15),
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X39_Y16_N4
\Mux16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (!\aluctl~combout\(3) & \Mux16~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluctl~combout\(3),
	datad => \Mux16~3_combout\,
	combout => \Mux16~4_combout\);

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(13),
	combout => \B~combout\(13));

-- Location: LCCOMB_X41_Y14_N0
\Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((\A~combout\(16) $ (\B~combout\(16) $ (!\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((\A~combout\(16) & ((\B~combout\(16)) # (!\Add1~31\))) # (!\A~combout\(16) & (\B~combout\(16) & !\Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(16),
	datab => \B~combout\(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X40_Y16_N22
\Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\aluctl~combout\(2) & (((\aluctl~combout\(1) & \tmp[16]~32_combout\)))) # (!\aluctl~combout\(2) & ((\Add1~32_combout\) # ((!\aluctl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(2),
	datab => \Add1~32_combout\,
	datac => \aluctl~combout\(1),
	datad => \tmp[16]~32_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X40_Y16_N0
\Mux15~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\Mux15~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux15~2_combout\,
	datad => \aluctl~combout\(0),
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X40_Y16_N30
\Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux30~3_combout\ & ((\A~combout\(16) & ((\B~combout\(16)) # (!\Mux15~5_combout\))) # (!\A~combout\(16) & (\B~combout\(16) & !\Mux15~5_combout\)))) # (!\Mux30~3_combout\ & (((\Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(16),
	datab => \B~combout\(16),
	datac => \Mux30~3_combout\,
	datad => \Mux15~5_combout\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X39_Y16_N22
\Mux15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (!\aluctl~combout\(3) & \Mux15~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluctl~combout\(3),
	datad => \Mux15~3_combout\,
	combout => \Mux15~4_combout\);

-- Location: PIN_AK10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(17),
	combout => \B~combout\(17));

-- Location: LCCOMB_X40_Y16_N18
\Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\aluctl~combout\(1) & ((\aluctl~combout\(2) & ((\tmp[17]~34_combout\))) # (!\aluctl~combout\(2) & (\Add1~34_combout\)))) # (!\aluctl~combout\(1) & (((!\aluctl~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~34_combout\,
	datab => \tmp[17]~34_combout\,
	datac => \aluctl~combout\(1),
	datad => \aluctl~combout\(2),
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X40_Y16_N28
\Mux14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\Mux14~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux14~2_combout\,
	datad => \aluctl~combout\(0),
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X40_Y16_N24
\Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux30~3_combout\ & ((\A~combout\(17) & ((\B~combout\(17)) # (!\Mux14~5_combout\))) # (!\A~combout\(17) & (\B~combout\(17) & !\Mux14~5_combout\)))) # (!\Mux30~3_combout\ & (((\Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(17),
	datab => \B~combout\(17),
	datac => \Mux30~3_combout\,
	datad => \Mux14~5_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X39_Y16_N0
\Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (!\aluctl~combout\(3) & \Mux14~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluctl~combout\(3),
	datad => \Mux14~3_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X39_Y14_N28
\Mux13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\Mux13~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datac => \aluctl~combout\(0),
	combout => \Mux13~5_combout\);

-- Location: PIN_AJ10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(18),
	combout => \B~combout\(18));

-- Location: LCCOMB_X39_Y14_N2
\Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux13~5_combout\ & (((\A~combout\(18) & \B~combout\(18))) # (!\Mux30~3_combout\))) # (!\Mux13~5_combout\ & (\Mux30~3_combout\ & ((\A~combout\(18)) # (\B~combout\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(18),
	datab => \Mux13~5_combout\,
	datac => \B~combout\(18),
	datad => \Mux30~3_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X39_Y16_N10
\Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (!\aluctl~combout\(3) & \Mux13~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluctl~combout\(3),
	datac => \Mux13~3_combout\,
	combout => \Mux13~4_combout\);

-- Location: PIN_AK11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(19),
	combout => \A~combout\(19));

-- Location: LCCOMB_X39_Y14_N4
\Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux12~5_combout\ & (((\A~combout\(19) & \B~combout\(19))) # (!\Mux30~3_combout\))) # (!\Mux12~5_combout\ & (\Mux30~3_combout\ & ((\A~combout\(19)) # (\B~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~5_combout\,
	datab => \A~combout\(19),
	datac => \B~combout\(19),
	datad => \Mux30~3_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X39_Y16_N28
\Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (!\aluctl~combout\(3) & \Mux12~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluctl~combout\(3),
	datad => \Mux12~3_combout\,
	combout => \Mux12~4_combout\);

-- Location: PIN_AD14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(20),
	combout => \A~combout\(20));

-- Location: LCCOMB_X39_Y14_N26
\Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\aluctl~combout\(2) & (((\tmp[20]~40_combout\ & \aluctl~combout\(1))))) # (!\aluctl~combout\(2) & ((\Add1~40_combout\) # ((!\aluctl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \aluctl~combout\(2),
	datac => \tmp[20]~40_combout\,
	datad => \aluctl~combout\(1),
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X39_Y14_N12
\Mux11~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\Mux11~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~2_combout\,
	datac => \aluctl~combout\(0),
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X39_Y14_N6
\Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux30~3_combout\ & ((\B~combout\(20) & ((\A~combout\(20)) # (!\Mux11~5_combout\))) # (!\B~combout\(20) & (\A~combout\(20) & !\Mux11~5_combout\)))) # (!\Mux30~3_combout\ & (((\Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(20),
	datab => \Mux30~3_combout\,
	datac => \A~combout\(20),
	datad => \Mux11~5_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X39_Y16_N6
\Mux11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (!\aluctl~combout\(3) & \Mux11~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluctl~combout\(3),
	datad => \Mux11~3_combout\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X42_Y15_N2
\Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\aluctl~combout\(2) & (((\aluctl~combout\(1) & \tmp[21]~42_combout\)))) # (!\aluctl~combout\(2) & ((\Add1~42_combout\) # ((!\aluctl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~42_combout\,
	datab => \aluctl~combout\(2),
	datac => \aluctl~combout\(1),
	datad => \tmp[21]~42_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X42_Y15_N12
\Mux10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux10~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~2_combout\,
	datad => \aluctl~combout\(0),
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X42_Y15_N0
\Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux30~3_combout\ & ((\A~combout\(21) & ((\B~combout\(21)) # (!\Mux10~5_combout\))) # (!\A~combout\(21) & (\B~combout\(21) & !\Mux10~5_combout\)))) # (!\Mux30~3_combout\ & (((\Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(21),
	datab => \Mux30~3_combout\,
	datac => \B~combout\(21),
	datad => \Mux10~5_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X39_Y16_N8
\Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (!\aluctl~combout\(3) & \Mux10~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluctl~combout\(3),
	datad => \Mux10~3_combout\,
	combout => \Mux10~4_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(22),
	combout => \A~combout\(22));

-- Location: LCCOMB_X41_Y14_N12
\Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = ((\B~combout\(22) $ (\A~combout\(22) $ (!\Add1~43\)))) # (GND)
-- \Add1~45\ = CARRY((\B~combout\(22) & ((\A~combout\(22)) # (!\Add1~43\))) # (!\B~combout\(22) & (\A~combout\(22) & !\Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(22),
	datab => \A~combout\(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X40_Y13_N22
\Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\aluctl~combout\(2) & (((\tmp[22]~44_combout\ & \aluctl~combout\(1))))) # (!\aluctl~combout\(2) & ((\Add1~44_combout\) # ((!\aluctl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(2),
	datab => \Add1~44_combout\,
	datac => \tmp[22]~44_combout\,
	datad => \aluctl~combout\(1),
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X40_Y13_N24
\Mux9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux9~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~2_combout\,
	datac => \aluctl~combout\(0),
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X40_Y13_N16
\Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux30~3_combout\ & ((\A~combout\(22) & ((\B~combout\(22)) # (!\Mux9~5_combout\))) # (!\A~combout\(22) & (!\Mux9~5_combout\ & \B~combout\(22))))) # (!\Mux30~3_combout\ & (((\Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datab => \A~combout\(22),
	datac => \Mux9~5_combout\,
	datad => \B~combout\(22),
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X40_Y13_N2
\Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (!\aluctl~combout\(3) & \Mux9~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(3),
	datac => \Mux9~3_combout\,
	combout => \Mux9~4_combout\);

-- Location: PIN_AK7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(23),
	combout => \A~combout\(23));

-- Location: LCCOMB_X40_Y13_N26
\Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\aluctl~combout\(1) & ((\aluctl~combout\(2) & ((\tmp[23]~46_combout\))) # (!\aluctl~combout\(2) & (\Add1~46_combout\)))) # (!\aluctl~combout\(1) & (((!\aluctl~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datab => \aluctl~combout\(1),
	datac => \tmp[23]~46_combout\,
	datad => \aluctl~combout\(2),
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X40_Y13_N28
\Mux8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux8~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux8~2_combout\,
	datac => \aluctl~combout\(0),
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X40_Y13_N12
\Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux30~3_combout\ & ((\B~combout\(23) & ((\A~combout\(23)) # (!\Mux8~5_combout\))) # (!\B~combout\(23) & (\A~combout\(23) & !\Mux8~5_combout\)))) # (!\Mux30~3_combout\ & (((\Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(23),
	datab => \A~combout\(23),
	datac => \Mux30~3_combout\,
	datad => \Mux8~5_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X40_Y13_N30
\Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (!\aluctl~combout\(3) & \Mux8~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(3),
	datad => \Mux8~3_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X40_Y13_N8
\Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datac => \aluctl~combout\(0),
	combout => \Mux7~5_combout\);

-- Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(24),
	combout => \B~combout\(24));

-- Location: LCCOMB_X40_Y13_N0
\Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux30~3_combout\ & ((\A~combout\(24) & ((\B~combout\(24)) # (!\Mux7~5_combout\))) # (!\A~combout\(24) & (!\Mux7~5_combout\ & \B~combout\(24))))) # (!\Mux30~3_combout\ & (((\Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datab => \A~combout\(24),
	datac => \Mux7~5_combout\,
	datad => \B~combout\(24),
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X40_Y13_N10
\Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (!\aluctl~combout\(3) & \Mux7~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(3),
	datad => \Mux7~3_combout\,
	combout => \Mux7~4_combout\);

-- Location: PIN_AK17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(25),
	combout => \B~combout\(25));

-- Location: LCCOMB_X43_Y14_N16
\Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux6~5_combout\ & (((\A~combout\(25) & \B~combout\(25))) # (!\Mux30~3_combout\))) # (!\Mux6~5_combout\ & (\Mux30~3_combout\ & ((\A~combout\(25)) # (\B~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~5_combout\,
	datab => \A~combout\(25),
	datac => \Mux30~3_combout\,
	datad => \B~combout\(25),
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X43_Y14_N10
\Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (!\aluctl~combout\(3) & \Mux6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(3),
	datac => \Mux6~3_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X41_Y14_N20
\Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = ((\A~combout\(26) $ (\B~combout\(26) $ (!\Add1~51\)))) # (GND)
-- \Add1~53\ = CARRY((\A~combout\(26) & ((\B~combout\(26)) # (!\Add1~51\))) # (!\A~combout\(26) & (\B~combout\(26) & !\Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(26),
	datab => \B~combout\(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X39_Y14_N30
\Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\aluctl~combout\(2) & (\tmp[26]~52_combout\ & ((\aluctl~combout\(1))))) # (!\aluctl~combout\(2) & (((\Add1~52_combout\) # (!\aluctl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[26]~52_combout\,
	datab => \aluctl~combout\(2),
	datac => \Add1~52_combout\,
	datad => \aluctl~combout\(1),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X39_Y14_N8
\Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~2_combout\,
	datac => \aluctl~combout\(0),
	combout => \Mux5~5_combout\);

-- Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(26),
	combout => \A~combout\(26));

-- Location: LCCOMB_X39_Y14_N16
\Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux30~3_combout\ & ((\Mux5~5_combout\ & (\B~combout\(26) & \A~combout\(26))) # (!\Mux5~5_combout\ & ((\B~combout\(26)) # (\A~combout\(26)))))) # (!\Mux30~3_combout\ & (\Mux5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datab => \Mux5~5_combout\,
	datac => \B~combout\(26),
	datad => \A~combout\(26),
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X43_Y14_N20
\Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (!\aluctl~combout\(3) & \Mux5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(3),
	datad => \Mux5~3_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X41_Y14_N22
\Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\A~combout\(27) & ((\B~combout\(27) & (\Add1~53\ & VCC)) # (!\B~combout\(27) & (!\Add1~53\)))) # (!\A~combout\(27) & ((\B~combout\(27) & (!\Add1~53\)) # (!\B~combout\(27) & ((\Add1~53\) # (GND)))))
-- \Add1~55\ = CARRY((\A~combout\(27) & (!\B~combout\(27) & !\Add1~53\)) # (!\A~combout\(27) & ((!\Add1~53\) # (!\B~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(27),
	datab => \B~combout\(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X42_Y14_N16
\Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\aluctl~combout\(1) & ((\aluctl~combout\(2) & (\tmp[27]~54_combout\)) # (!\aluctl~combout\(2) & ((\Add1~54_combout\))))) # (!\aluctl~combout\(1) & (((!\aluctl~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(1),
	datab => \tmp[27]~54_combout\,
	datac => \aluctl~combout\(2),
	datad => \Add1~54_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X42_Y14_N26
\Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux4~2_combout\,
	datad => \aluctl~combout\(0),
	combout => \Mux4~5_combout\);

-- Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(27),
	combout => \A~combout\(27));

-- Location: LCCOMB_X43_Y14_N30
\Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~5_combout\ & (((\B~combout\(27) & \A~combout\(27))) # (!\Mux30~3_combout\))) # (!\Mux4~5_combout\ & (\Mux30~3_combout\ & ((\B~combout\(27)) # (\A~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(27),
	datab => \Mux4~5_combout\,
	datac => \Mux30~3_combout\,
	datad => \A~combout\(27),
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X43_Y14_N0
\Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (!\aluctl~combout\(3) & \Mux4~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(3),
	datad => \Mux4~3_combout\,
	combout => \Mux4~4_combout\);

-- Location: PIN_AJ8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(28),
	combout => \A~combout\(28));

-- Location: LCCOMB_X43_Y14_N24
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\aluctl~combout\(2) & (\tmp[28]~56_combout\ & ((\aluctl~combout\(1))))) # (!\aluctl~combout\(2) & (((\Add1~56_combout\) # (!\aluctl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(2),
	datab => \tmp[28]~56_combout\,
	datac => \Add1~56_combout\,
	datad => \aluctl~combout\(1),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X43_Y14_N2
\Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux3~2_combout\,
	datad => \aluctl~combout\(0),
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X43_Y14_N26
\Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux30~3_combout\ & ((\Mux3~5_combout\ & (\A~combout\(28) & \B~combout\(28))) # (!\Mux3~5_combout\ & ((\A~combout\(28)) # (\B~combout\(28)))))) # (!\Mux30~3_combout\ & (\Mux3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datab => \Mux3~5_combout\,
	datac => \A~combout\(28),
	datad => \B~combout\(28),
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X43_Y14_N12
\Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (!\aluctl~combout\(3) & \Mux3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(3),
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: PIN_AK8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(29),
	combout => \A~combout\(29));

-- Location: LCCOMB_X39_Y15_N12
\Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~5_combout\ & (((\A~combout\(29) & \B~combout\(29))) # (!\Mux30~3_combout\))) # (!\Mux2~5_combout\ & (\Mux30~3_combout\ & ((\A~combout\(29)) # (\B~combout\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datab => \A~combout\(29),
	datac => \B~combout\(29),
	datad => \Mux30~3_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X43_Y14_N6
\Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (!\aluctl~combout\(3) & \Mux2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(3),
	datad => \Mux2~3_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X43_Y14_N4
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\aluctl~combout\(2) & (((\tmp[30]~60_combout\ & \aluctl~combout\(1))))) # (!\aluctl~combout\(2) & ((\Add1~60_combout\) # ((!\aluctl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~60_combout\,
	datab => \tmp[30]~60_combout\,
	datac => \aluctl~combout\(2),
	datad => \aluctl~combout\(1),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X43_Y14_N14
\Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\Mux1~2_combout\ & !\aluctl~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux1~2_combout\,
	datad => \aluctl~combout\(0),
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X43_Y14_N8
\Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~5_combout\ & (((\A~combout\(30) & \B~combout\(30))) # (!\Mux30~3_combout\))) # (!\Mux1~5_combout\ & (\Mux30~3_combout\ & ((\A~combout\(30)) # (\B~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(30),
	datab => \Mux1~5_combout\,
	datac => \Mux30~3_combout\,
	datad => \B~combout\(30),
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X43_Y14_N18
\Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (!\aluctl~combout\(3) & \Mux1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(3),
	datac => \Mux1~3_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X42_Y14_N28
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux31~0_combout\ & ((\A~combout\(31) & ((\B~combout\(31)) # (\aluctl~combout\(0)))) # (!\A~combout\(31) & (\B~combout\(31) & \aluctl~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datab => \Mux31~0_combout\,
	datac => \B~combout\(31),
	datad => \aluctl~combout\(0),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X42_Y14_N12
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\aluctl~combout\(1) & (!\aluctl~combout\(3) & !\aluctl~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(1),
	datac => \aluctl~combout\(3),
	datad => \aluctl~combout\(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X42_Y14_N30
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\) # ((\Add1~62_combout\ & (!\aluctl~combout\(2) & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Mux0~1_combout\,
	datac => \aluctl~combout\(2),
	datad => \Mux0~0_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X42_Y14_N0
\Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~2_combout\) # ((\tmp[31]~62_combout\ & (\aluctl~combout\(2) & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[31]~62_combout\,
	datab => \Mux0~2_combout\,
	datac => \aluctl~combout\(2),
	datad => \Mux0~0_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X42_Y14_N10
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Mux31~4_combout\ & !\Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~4_combout\,
	datad => \Mux0~3_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X43_Y14_N28
\Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (\aluctl~combout\(3)) # ((!\Mux2~3_combout\ & (!\Mux1~3_combout\ & !\Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(3),
	datab => \Mux2~3_combout\,
	datac => \Mux1~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X43_Y14_N22
\Equal0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (!\Mux6~4_combout\ & (!\Mux4~4_combout\ & (!\Mux5~4_combout\ & \Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~4_combout\,
	datab => \Mux4~4_combout\,
	datac => \Mux5~4_combout\,
	datad => \Equal0~11_combout\,
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X43_Y15_N22
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\aluctl~combout\(3)) # ((!\Mux19~3_combout\ & (!\Mux20~3_combout\ & !\Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~3_combout\,
	datab => \Mux20~3_combout\,
	datac => \aluctl~combout\(3),
	datad => \Mux21~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X39_Y15_N22
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\aluctl~combout\(3)) # ((!\Mux28~3_combout\ & (!\Mux29~3_combout\ & !\Mux30~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datab => \Mux29~3_combout\,
	datac => \Mux30~4_combout\,
	datad => \aluctl~combout\(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X43_Y15_N10
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\aluctl~combout\(3)) # ((!\Mux27~3_combout\ & (!\Mux26~3_combout\ & !\Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~3_combout\,
	datab => \Mux26~3_combout\,
	datac => \aluctl~combout\(3),
	datad => \Mux25~3_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X43_Y15_N16
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~3_combout\ & (\Equal0~4_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X39_Y16_N26
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\aluctl~combout\(3)) # ((!\Mux17~3_combout\ & (!\Mux18~3_combout\ & !\Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~3_combout\,
	datab => \aluctl~combout\(3),
	datac => \Mux18~3_combout\,
	datad => \Mux16~3_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X39_Y16_N14
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\aluctl~combout\(3)) # ((!\Mux11~3_combout\ & (!\Mux10~3_combout\ & !\Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datab => \Mux10~3_combout\,
	datac => \aluctl~combout\(3),
	datad => \Mux12~3_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X40_Y13_N4
\Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\aluctl~combout\(3)) # ((!\Mux7~3_combout\ & (!\Mux9~3_combout\ & !\Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluctl~combout\(3),
	datab => \Mux7~3_combout\,
	datac => \Mux9~3_combout\,
	datad => \Mux8~3_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X39_Y16_N16
\Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~7_combout\ & (\Equal0~6_combout\ & (\Equal0~8_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X43_Y15_N26
\Equal0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (\Equal0~0_combout\ & (\Equal0~12_combout\ & (\Equal0~5_combout\ & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~12_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~10_combout\,
	combout => \Equal0~13_combout\);

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux31~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(0));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux30~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(1));

-- Location: PIN_AK9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux29~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(2));

-- Location: PIN_AD9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux28~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(3));

-- Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux27~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(4));

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux26~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(5));

-- Location: PIN_AK20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux25~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(6));

-- Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux24~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(7));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux23~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(8));

-- Location: PIN_AJ16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux22~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(9));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux21~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(10));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(11));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux19~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(12));

-- Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux18~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(13));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(14));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux16~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(15));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(16));

-- Location: PIN_AG10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux14~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(17));

-- Location: PIN_AJ11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux13~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(18));

-- Location: PIN_AK6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(19));

-- Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux11~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(20));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(21));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(22));

-- Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(23));

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(24));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(25));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(26));

-- Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(27));

-- Location: PIN_AJ20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(28));

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(29));

-- Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(30));

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aluout[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aluout(31));

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\zero~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_zero);
END structure;


