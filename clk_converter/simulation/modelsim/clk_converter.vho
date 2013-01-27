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

-- DATE "01/24/2013 19:22:13"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	clk_converter_60hz IS
    PORT (
	start : IN std_logic;
	pause : IN std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	clk_60Hz : OUT std_logic
	);
END clk_converter_60hz;

-- Design Ports Information
-- start	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pause	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_60Hz	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clk_converter_60hz IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_pause : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clk_60Hz : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~60\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \counter_clk:counter[0]~1_combout\ : std_logic;
SIGNAL \counter_clk:counter[31]~1_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \pause~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk_60Hz~output_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \counter_clk:counter[1]~1_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~24\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~36\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~44\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~48\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~56\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \clock_tmp~0_combout\ : std_logic;

BEGIN

ww_start <= start;
ww_pause <= pause;
ww_reset <= reset;
ww_clk <= clk;
clk_60Hz <= ww_clk_60Hz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X51_Y33_N6
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~4\ & (\Add0~5_combout\ & (!\Equal0~10_combout\ & VCC))) # (!\Add0~4\ & ((((\Add0~5_combout\ & !\Equal0~10_combout\)))))
-- \Add0~6\ = CARRY((\Add0~5_combout\ & (!\Equal0~10_combout\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \Equal0~10_combout\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X51_Y33_N10
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8\ & (\Add0~9_combout\ & (!\Equal0~10_combout\ & VCC))) # (!\Add0~8\ & ((((\Add0~9_combout\ & !\Equal0~10_combout\)))))
-- \Add0~10\ = CARRY((\Add0~9_combout\ & (!\Equal0~10_combout\ & !\Add0~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \Equal0~10_combout\,
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X51_Y33_N26
\Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\Add0~24\ & (\Add0~25_combout\ & (!\Equal0~10_combout\ & VCC))) # (!\Add0~24\ & ((((\Add0~25_combout\ & !\Equal0~10_combout\)))))
-- \Add0~26\ = CARRY((\Add0~25_combout\ & (!\Equal0~10_combout\ & !\Add0~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~25_combout\,
	datab => \Equal0~10_combout\,
	datad => VCC,
	cin => \Add0~24\,
	combout => \Add0~25_combout\,
	cout => \Add0~26\);

-- Location: LCCOMB_X51_Y32_N10
\Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (\Add0~40\ & (\Add0~41_combout\ & (!\Equal0~10_combout\ & VCC))) # (!\Add0~40\ & ((((\Add0~41_combout\ & !\Equal0~10_combout\)))))
-- \Add0~42\ = CARRY((\Add0~41_combout\ & (!\Equal0~10_combout\ & !\Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~41_combout\,
	datab => \Equal0~10_combout\,
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~41_combout\,
	cout => \Add0~42\);

-- Location: LCCOMB_X51_Y32_N16
\Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (\Add0~46\ & (((\Equal0~10_combout\)) # (!\Add0~47_combout\))) # (!\Add0~46\ & (((\Add0~47_combout\ & !\Equal0~10_combout\)) # (GND)))
-- \Add0~48\ = CARRY(((\Equal0~10_combout\) # (!\Add0~46\)) # (!\Add0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~47_combout\,
	datab => \Equal0~10_combout\,
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~47_combout\,
	cout => \Add0~48\);

-- Location: LCCOMB_X51_Y32_N26
\Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (\Add0~56\ & (!\Equal0~10_combout\ & (\Add0~57_combout\ & VCC))) # (!\Add0~56\ & ((((!\Equal0~10_combout\ & \Add0~57_combout\)))))
-- \Add0~58\ = CARRY((!\Equal0~10_combout\ & (\Add0~57_combout\ & !\Add0~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Add0~57_combout\,
	datad => VCC,
	cin => \Add0~56\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

-- Location: LCCOMB_X51_Y32_N28
\Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (\Add0~58\ & ((\Equal0~10_combout\) # ((!\Add0~59_combout\)))) # (!\Add0~58\ & (((!\Equal0~10_combout\ & \Add0~59_combout\)) # (GND)))
-- \Add0~60\ = CARRY((\Equal0~10_combout\) # ((!\Add0~58\) # (!\Add0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Add0~59_combout\,
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~59_combout\,
	cout => \Add0~60\);

-- Location: LCCOMB_X51_Y32_N30
\Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~61_combout\ = \Add0~60\ $ (!\counter_clk:counter[31]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \counter_clk:counter[31]~1_combout\,
	cin => \Add0~60\,
	combout => \Add0~61_combout\);

-- Location: LCCOMB_X50_Y32_N10
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\counter_clk:counter[31]~1_combout\ & ((\Equal0~10_combout\) # ((\counter_clk:counter[0]~1_combout\ & !\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \counter_clk:counter[31]~1_combout\,
	datac => \counter_clk:counter[0]~1_combout\,
	datad => \Add0~1_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X50_Y32_N8
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Add0~7_combout\ & (!\Add0~11_combout\ & (\Add0~9_combout\ & !\Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \Add0~11_combout\,
	datac => \Add0~9_combout\,
	datad => \Add0~13_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X50_Y32_N14
\counter_clk:counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_clk:counter[0]~1_combout\ = (!\Equal0~10_combout\ & !\counter_clk:counter[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datac => \counter_clk:counter[0]~1_combout\,
	combout => \counter_clk:counter[0]~1_combout\);

-- Location: LCCOMB_X50_Y32_N2
\counter_clk:counter[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_clk:counter[31]~1_combout\ = (\Add0~61_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~61_combout\,
	datad => \Equal0~10_combout\,
	combout => \counter_clk:counter[31]~1_combout\);

-- Location: IOOBUF_X49_Y34_N2
\clk_60Hz~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clock_tmp~0_combout\,
	devoe => ww_devoe,
	o => \clk_60Hz~output_o\);

-- Location: LCCOMB_X51_Y33_N2
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\counter_clk:counter[0]~1_combout\ & (\counter_clk:counter[1]~1_combout\ $ (VCC))) # (!\counter_clk:counter[0]~1_combout\ & (\counter_clk:counter[1]~1_combout\ & VCC))
-- \Add0~2\ = CARRY((\counter_clk:counter[0]~1_combout\ & \counter_clk:counter[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_clk:counter[0]~1_combout\,
	datab => \counter_clk:counter[1]~1_combout\,
	datad => VCC,
	combout => \Add0~1_combout\,
	cout => \Add0~2\);

-- Location: LCCOMB_X50_Y32_N24
\counter_clk:counter[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_clk:counter[1]~1_combout\ = (!\Equal0~10_combout\ & \Add0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datad => \Add0~1_combout\,
	combout => \counter_clk:counter[1]~1_combout\);

-- Location: LCCOMB_X51_Y33_N4
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~2\ & (((\Equal0~10_combout\)) # (!\Add0~3_combout\))) # (!\Add0~2\ & (((\Add0~3_combout\ & !\Equal0~10_combout\)) # (GND)))
-- \Add0~4\ = CARRY(((\Equal0~10_combout\) # (!\Add0~2\)) # (!\Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \Equal0~10_combout\,
	datad => VCC,
	cin => \Add0~2\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X51_Y33_N8
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\Add0~6\ & ((\Equal0~10_combout\) # ((!\Add0~7_combout\)))) # (!\Add0~6\ & (((!\Equal0~10_combout\ & \Add0~7_combout\)) # (GND)))
-- \Add0~8\ = CARRY((\Equal0~10_combout\) # ((!\Add0~6\) # (!\Add0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Add0~7_combout\,
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X51_Y33_N12
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Add0~10\ & ((\Equal0~10_combout\) # ((!\Add0~11_combout\)))) # (!\Add0~10\ & (((!\Equal0~10_combout\ & \Add0~11_combout\)) # (GND)))
-- \Add0~12\ = CARRY((\Equal0~10_combout\) # ((!\Add0~10\) # (!\Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Add0~11_combout\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X51_Y33_N14
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Add0~12\ & (!\Equal0~10_combout\ & (\Add0~13_combout\ & VCC))) # (!\Add0~12\ & ((((!\Equal0~10_combout\ & \Add0~13_combout\)))))
-- \Add0~14\ = CARRY((!\Equal0~10_combout\ & (\Add0~13_combout\ & !\Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Add0~13_combout\,
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X51_Y33_N16
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~14\ & ((\Equal0~10_combout\) # ((!\Add0~15_combout\)))) # (!\Add0~14\ & (((!\Equal0~10_combout\ & \Add0~15_combout\)) # (GND)))
-- \Add0~16\ = CARRY((\Equal0~10_combout\) # ((!\Add0~14\) # (!\Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Add0~15_combout\,
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X51_Y33_N18
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Add0~16\ & (!\Equal0~10_combout\ & (\Add0~17_combout\ & VCC))) # (!\Add0~16\ & ((((!\Equal0~10_combout\ & \Add0~17_combout\)))))
-- \Add0~18\ = CARRY((!\Equal0~10_combout\ & (\Add0~17_combout\ & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Add0~17_combout\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~17_combout\,
	cout => \Add0~18\);

-- Location: LCCOMB_X51_Y33_N20
\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\Add0~18\ & ((\Equal0~10_combout\) # ((!\Add0~19_combout\)))) # (!\Add0~18\ & (((!\Equal0~10_combout\ & \Add0~19_combout\)) # (GND)))
-- \Add0~20\ = CARRY((\Equal0~10_combout\) # ((!\Add0~18\) # (!\Add0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Add0~19_combout\,
	datad => VCC,
	cin => \Add0~18\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: LCCOMB_X51_Y33_N22
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Add0~20\ & (\Add0~21_combout\ & (!\Equal0~10_combout\ & VCC))) # (!\Add0~20\ & ((((\Add0~21_combout\ & !\Equal0~10_combout\)))))
-- \Add0~22\ = CARRY((\Add0~21_combout\ & (!\Equal0~10_combout\ & !\Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~21_combout\,
	datab => \Equal0~10_combout\,
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X51_Y33_N24
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\Add0~22\ & ((\Equal0~10_combout\) # ((!\Add0~23_combout\)))) # (!\Add0~22\ & (((!\Equal0~10_combout\ & \Add0~23_combout\)) # (GND)))
-- \Add0~24\ = CARRY((\Equal0~10_combout\) # ((!\Add0~22\) # (!\Add0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Add0~23_combout\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~23_combout\,
	cout => \Add0~24\);

-- Location: LCCOMB_X51_Y33_N28
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\Add0~26\ & (((\Equal0~10_combout\)) # (!\Add0~27_combout\))) # (!\Add0~26\ & (((\Add0~27_combout\ & !\Equal0~10_combout\)) # (GND)))
-- \Add0~28\ = CARRY(((\Equal0~10_combout\) # (!\Add0~26\)) # (!\Add0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~27_combout\,
	datab => \Equal0~10_combout\,
	datad => VCC,
	cin => \Add0~26\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X51_Y33_N30
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\Add0~28\ & (\Add0~29_combout\ & (!\Equal0~10_combout\ & VCC))) # (!\Add0~28\ & ((((\Add0~29_combout\ & !\Equal0~10_combout\)))))
-- \Add0~30\ = CARRY((\Add0~29_combout\ & (!\Equal0~10_combout\ & !\Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~29_combout\,
	datab => \Equal0~10_combout\,
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~29_combout\,
	cout => \Add0~30\);

-- Location: LCCOMB_X51_Y32_N0
\Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\Add0~30\ & (((\Equal0~10_combout\)) # (!\Add0~31_combout\))) # (!\Add0~30\ & (((\Add0~31_combout\ & !\Equal0~10_combout\)) # (GND)))
-- \Add0~32\ = CARRY(((\Equal0~10_combout\) # (!\Add0~30\)) # (!\Add0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~31_combout\,
	datab => \Equal0~10_combout\,
	datad => VCC,
	cin => \Add0~30\,
	combout => \Add0~31_combout\,
	cout => \Add0~32\);

-- Location: LCCOMB_X51_Y32_N2
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\Add0~32\ & (!\Equal0~10_combout\ & (\Add0~33_combout\ & VCC))) # (!\Add0~32\ & ((((!\Equal0~10_combout\ & \Add0~33_combout\)))))
-- \Add0~34\ = CARRY((!\Equal0~10_combout\ & (\Add0~33_combout\ & !\Add0~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Add0~33_combout\,
	datad => VCC,
	cin => \Add0~32\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X51_Y32_N4
\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (\Add0~34\ & ((\Equal0~10_combout\) # ((!\Add0~35_combout\)))) # (!\Add0~34\ & (((!\Equal0~10_combout\ & \Add0~35_combout\)) # (GND)))
-- \Add0~36\ = CARRY((\Equal0~10_combout\) # ((!\Add0~34\) # (!\Add0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Add0~35_combout\,
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~35_combout\,
	cout => \Add0~36\);

-- Location: LCCOMB_X51_Y32_N6
\Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (\Add0~36\ & (\Add0~37_combout\ & (!\Equal0~10_combout\ & VCC))) # (!\Add0~36\ & ((((\Add0~37_combout\ & !\Equal0~10_combout\)))))
-- \Add0~38\ = CARRY((\Add0~37_combout\ & (!\Equal0~10_combout\ & !\Add0~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~37_combout\,
	datab => \Equal0~10_combout\,
	datad => VCC,
	cin => \Add0~36\,
	combout => \Add0~37_combout\,
	cout => \Add0~38\);

-- Location: LCCOMB_X51_Y32_N8
\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\Add0~38\ & (((\Equal0~10_combout\)) # (!\Add0~39_combout\))) # (!\Add0~38\ & (((\Add0~39_combout\ & !\Equal0~10_combout\)) # (GND)))
-- \Add0~40\ = CARRY(((\Equal0~10_combout\) # (!\Add0~38\)) # (!\Add0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~39_combout\,
	datab => \Equal0~10_combout\,
	datad => VCC,
	cin => \Add0~38\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X51_Y32_N12
\Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (\Add0~42\ & (((\Equal0~10_combout\)) # (!\Add0~43_combout\))) # (!\Add0~42\ & (((\Add0~43_combout\ & !\Equal0~10_combout\)) # (GND)))
-- \Add0~44\ = CARRY(((\Equal0~10_combout\) # (!\Add0~42\)) # (!\Add0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~43_combout\,
	datab => \Equal0~10_combout\,
	datad => VCC,
	cin => \Add0~42\,
	combout => \Add0~43_combout\,
	cout => \Add0~44\);

-- Location: LCCOMB_X51_Y32_N14
\Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (\Add0~44\ & (\Add0~45_combout\ & (!\Equal0~10_combout\ & VCC))) # (!\Add0~44\ & ((((\Add0~45_combout\ & !\Equal0~10_combout\)))))
-- \Add0~46\ = CARRY((\Add0~45_combout\ & (!\Equal0~10_combout\ & !\Add0~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~45_combout\,
	datab => \Equal0~10_combout\,
	datad => VCC,
	cin => \Add0~44\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X51_Y32_N18
\Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (\Add0~48\ & (!\Equal0~10_combout\ & (\Add0~49_combout\ & VCC))) # (!\Add0~48\ & ((((!\Equal0~10_combout\ & \Add0~49_combout\)))))
-- \Add0~50\ = CARRY((!\Equal0~10_combout\ & (\Add0~49_combout\ & !\Add0~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Add0~49_combout\,
	datad => VCC,
	cin => \Add0~48\,
	combout => \Add0~49_combout\,
	cout => \Add0~50\);

-- Location: LCCOMB_X51_Y32_N20
\Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\Add0~50\ & ((\Equal0~10_combout\) # ((!\Add0~51_combout\)))) # (!\Add0~50\ & (((!\Equal0~10_combout\ & \Add0~51_combout\)) # (GND)))
-- \Add0~52\ = CARRY((\Equal0~10_combout\) # ((!\Add0~50\) # (!\Add0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Add0~51_combout\,
	datad => VCC,
	cin => \Add0~50\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X51_Y32_N22
\Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (\Add0~52\ & (!\Equal0~10_combout\ & (\Add0~53_combout\ & VCC))) # (!\Add0~52\ & ((((!\Equal0~10_combout\ & \Add0~53_combout\)))))
-- \Add0~54\ = CARRY((!\Equal0~10_combout\ & (\Add0~53_combout\ & !\Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Add0~53_combout\,
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~53_combout\,
	cout => \Add0~54\);

-- Location: LCCOMB_X51_Y32_N24
\Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = (\Add0~54\ & ((\Equal0~10_combout\) # ((!\Add0~55_combout\)))) # (!\Add0~54\ & (((!\Equal0~10_combout\ & \Add0~55_combout\)) # (GND)))
-- \Add0~56\ = CARRY((\Equal0~10_combout\) # ((!\Add0~54\) # (!\Add0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Add0~55_combout\,
	datad => VCC,
	cin => \Add0~54\,
	combout => \Add0~55_combout\,
	cout => \Add0~56\);

-- Location: LCCOMB_X50_Y32_N20
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add0~59_combout\ & (!\Equal0~10_combout\ & (!\Add0~57_combout\ & !\Add0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~59_combout\,
	datab => \Equal0~10_combout\,
	datac => \Add0~57_combout\,
	datad => \Add0~55_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X50_Y32_N30
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~47_combout\ & (!\Add0~53_combout\ & (!\Add0~51_combout\ & !\Add0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~47_combout\,
	datab => \Add0~53_combout\,
	datac => \Add0~51_combout\,
	datad => \Add0~49_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X50_Y32_N0
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Add0~41_combout\ & (!\Add0~43_combout\ & (!\Add0~39_combout\ & !\Add0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~41_combout\,
	datab => \Add0~43_combout\,
	datac => \Add0~39_combout\,
	datad => \Add0~45_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X50_Y32_N18
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X50_Y32_N28
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Add0~35_combout\ & (\Add0~37_combout\ & (!\Add0~31_combout\ & !\Add0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~35_combout\,
	datab => \Add0~37_combout\,
	datac => \Add0~31_combout\,
	datad => \Add0~33_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X50_Y32_N22
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Add0~25_combout\ & (\Add0~23_combout\ & (\Add0~29_combout\ & !\Add0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~25_combout\,
	datab => \Add0~23_combout\,
	datac => \Add0~29_combout\,
	datad => \Add0~27_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X51_Y33_N0
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Add0~19_combout\ & (\Add0~15_combout\ & (!\Add0~21_combout\ & \Add0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~19_combout\,
	datab => \Add0~15_combout\,
	datac => \Add0~21_combout\,
	datad => \Add0~17_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X50_Y32_N26
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~8_combout\ & (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X50_Y32_N12
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!\Add0~5_combout\ & (\Equal0~4_combout\ & (\Equal0~9_combout\ & \Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~3_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X50_Y32_N16
\clock_tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_tmp~0_combout\ = \Equal0~10_combout\ $ (\clock_tmp~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datad => \clock_tmp~0_combout\,
	combout => \clock_tmp~0_combout\);

-- Location: IOIBUF_X38_Y34_N15
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\pause~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pause,
	o => \pause~input_o\);

-- Location: IOIBUF_X53_Y9_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X16_Y34_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

ww_clk_60Hz <= \clk_60Hz~output_o\;
END structure;


