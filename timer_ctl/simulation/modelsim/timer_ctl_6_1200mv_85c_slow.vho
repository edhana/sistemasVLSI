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

-- DATE "01/27/2013 16:34:28"

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

ENTITY 	timer_ctl IS
    PORT (
	timer_start : IN std_logic;
	timer_reset : IN std_logic;
	clock : IN std_logic;
	short_interval : OUT std_logic;
	long_interval : OUT std_logic
	);
END timer_ctl;

-- Design Ports Information
-- clock	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- short_interval	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- long_interval	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer_start	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer_reset	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF timer_ctl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_timer_start : std_logic;
SIGNAL ww_timer_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_short_interval : std_logic;
SIGNAL ww_long_interval : std_logic;
SIGNAL \timer_start~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \short_interval_tmp~3_combout\ : std_logic;
SIGNAL \short_interval_tmp~5_combout\ : std_logic;
SIGNAL \short_interval_tmp~6_combout\ : std_logic;
SIGNAL \short_interval_tmp~7_combout\ : std_logic;
SIGNAL \short_interval_tmp~8_combout\ : std_logic;
SIGNAL \short_interval_tmp~9_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \short_interval~output_o\ : std_logic;
SIGNAL \long_interval~output_o\ : std_logic;
SIGNAL \timer_reset~input_o\ : std_logic;
SIGNAL \timer_start~input_o\ : std_logic;
SIGNAL \internal_counter[0]~0_combout\ : std_logic;
SIGNAL \timer_start~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \short_interval_tmp~1_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \short_interval_tmp~0_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \short_interval_tmp~2_combout\ : std_logic;
SIGNAL \short_interval_tmp~4_combout\ : std_logic;
SIGNAL \short_interval_tmp~10_combout\ : std_logic;
SIGNAL \short_interval_tmp~combout\ : std_logic;
SIGNAL internal_counter : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_timer_start <= timer_start;
ww_timer_reset <= timer_reset;
ww_clock <= clock;
short_interval <= ww_short_interval;
long_interval <= ww_long_interval;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\timer_start~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \timer_start~input_o\);

-- Location: LCCOMB_X30_Y13_N2
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\internal_counter[0]~0_combout\ & (internal_counter(1) $ (VCC))) # (!\internal_counter[0]~0_combout\ & (internal_counter(1) & VCC))
-- \Add0~1\ = CARRY((\internal_counter[0]~0_combout\ & internal_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \internal_counter[0]~0_combout\,
	datab => internal_counter(1),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X30_Y13_N4
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (internal_counter(2) & (!\Add0~1\)) # (!internal_counter(2) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!internal_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(2),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X30_Y13_N10
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (internal_counter(5) & (\Add0~7\ $ (GND))) # (!internal_counter(5) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((internal_counter(5) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(5),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X30_Y13_N14
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (internal_counter(7) & (\Add0~11\ $ (GND))) # (!internal_counter(7) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((internal_counter(7) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(7),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X30_Y13_N22
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (internal_counter(11) & (\Add0~19\ $ (GND))) # (!internal_counter(11) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((internal_counter(11) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(11),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X30_Y13_N24
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (internal_counter(12) & (!\Add0~21\)) # (!internal_counter(12) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!internal_counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internal_counter(12),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X30_Y13_N26
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (internal_counter(13) & (\Add0~23\ $ (GND))) # (!internal_counter(13) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((internal_counter(13) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(13),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X30_Y13_N28
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (internal_counter(14) & (!\Add0~25\)) # (!internal_counter(14) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!internal_counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internal_counter(14),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X30_Y13_N30
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (internal_counter(15) & (\Add0~27\ $ (GND))) # (!internal_counter(15) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((internal_counter(15) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internal_counter(15),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X30_Y12_N0
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (internal_counter(16) & (!\Add0~29\)) # (!internal_counter(16) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!internal_counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internal_counter(16),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X30_Y12_N2
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (internal_counter(17) & (\Add0~31\ $ (GND))) # (!internal_counter(17) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((internal_counter(17) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internal_counter(17),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X30_Y12_N4
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (internal_counter(18) & (!\Add0~33\)) # (!internal_counter(18) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!internal_counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internal_counter(18),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X30_Y12_N6
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (internal_counter(19) & (\Add0~35\ $ (GND))) # (!internal_counter(19) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((internal_counter(19) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(19),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X30_Y12_N8
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (internal_counter(20) & (!\Add0~37\)) # (!internal_counter(20) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!internal_counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internal_counter(20),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X30_Y12_N10
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (internal_counter(21) & (\Add0~39\ $ (GND))) # (!internal_counter(21) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((internal_counter(21) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internal_counter(21),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X30_Y12_N12
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (internal_counter(22) & (!\Add0~41\)) # (!internal_counter(22) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!internal_counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internal_counter(22),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X30_Y12_N14
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (internal_counter(23) & (\Add0~43\ $ (GND))) # (!internal_counter(23) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((internal_counter(23) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internal_counter(23),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X30_Y12_N16
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (internal_counter(24) & (!\Add0~45\)) # (!internal_counter(24) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!internal_counter(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(24),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X30_Y12_N18
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (internal_counter(25) & (\Add0~47\ $ (GND))) # (!internal_counter(25) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((internal_counter(25) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internal_counter(25),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X30_Y12_N20
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (internal_counter(26) & (!\Add0~49\)) # (!internal_counter(26) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!internal_counter(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internal_counter(26),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X30_Y12_N22
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (internal_counter(27) & (\Add0~51\ $ (GND))) # (!internal_counter(27) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((internal_counter(27) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(27),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X30_Y12_N24
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (internal_counter(28) & (!\Add0~53\)) # (!internal_counter(28) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!internal_counter(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internal_counter(28),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X30_Y12_N26
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (internal_counter(29) & (\Add0~55\ $ (GND))) # (!internal_counter(29) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((internal_counter(29) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internal_counter(29),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X30_Y12_N28
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (internal_counter(30) & (!\Add0~57\)) # (!internal_counter(30) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!internal_counter(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(30),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X30_Y12_N30
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = internal_counter(31) $ (!\Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(31),
	cin => \Add0~59\,
	combout => \Add0~60_combout\);

-- Location: LCCOMB_X31_Y13_N10
\short_interval_tmp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \short_interval_tmp~3_combout\ = (!internal_counter(16) & (!internal_counter(17) & (!internal_counter(14) & !internal_counter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(16),
	datab => internal_counter(17),
	datac => internal_counter(14),
	datad => internal_counter(15),
	combout => \short_interval_tmp~3_combout\);

-- Location: LCCOMB_X31_Y12_N20
\short_interval_tmp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \short_interval_tmp~5_combout\ = (!internal_counter(20) & (!internal_counter(19) & (!internal_counter(21) & !internal_counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(20),
	datab => internal_counter(19),
	datac => internal_counter(21),
	datad => internal_counter(18),
	combout => \short_interval_tmp~5_combout\);

-- Location: LCCOMB_X29_Y12_N20
\short_interval_tmp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \short_interval_tmp~6_combout\ = (!internal_counter(25) & (!internal_counter(22) & (!internal_counter(24) & !internal_counter(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(25),
	datab => internal_counter(22),
	datac => internal_counter(24),
	datad => internal_counter(23),
	combout => \short_interval_tmp~6_combout\);

-- Location: LCCOMB_X29_Y12_N2
\short_interval_tmp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \short_interval_tmp~7_combout\ = (!internal_counter(29) & (!internal_counter(28) & (!internal_counter(27) & !internal_counter(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(29),
	datab => internal_counter(28),
	datac => internal_counter(27),
	datad => internal_counter(26),
	combout => \short_interval_tmp~7_combout\);

-- Location: LCCOMB_X29_Y12_N12
\short_interval_tmp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \short_interval_tmp~8_combout\ = (!internal_counter(31) & (!internal_counter(30) & (internal_counter(5) & \timer_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(31),
	datab => internal_counter(30),
	datac => internal_counter(5),
	datad => \timer_start~input_o\,
	combout => \short_interval_tmp~8_combout\);

-- Location: LCCOMB_X29_Y12_N10
\short_interval_tmp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \short_interval_tmp~9_combout\ = (\short_interval_tmp~5_combout\ & (\short_interval_tmp~6_combout\ & (\short_interval_tmp~7_combout\ & \short_interval_tmp~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \short_interval_tmp~5_combout\,
	datab => \short_interval_tmp~6_combout\,
	datac => \short_interval_tmp~7_combout\,
	datad => \short_interval_tmp~8_combout\,
	combout => \short_interval_tmp~9_combout\);

-- Location: LCCOMB_X31_Y13_N30
\internal_counter[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(2) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & (\Add0~2_combout\)) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & ((internal_counter(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => \Add0~2_combout\,
	datac => internal_counter(2),
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(2));

-- Location: LCCOMB_X29_Y13_N12
\internal_counter[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(7) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & ((\Add0~12_combout\))) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & (internal_counter(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(7),
	datab => \timer_reset~input_o\,
	datac => \Add0~12_combout\,
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(7));

-- Location: LCCOMB_X29_Y13_N26
\internal_counter[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(11) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & (\Add0~20_combout\)) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & ((internal_counter(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => \Add0~20_combout\,
	datac => internal_counter(11),
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(11));

-- Location: LCCOMB_X31_Y13_N22
\internal_counter[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(14) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & (\Add0~26_combout\)) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & ((internal_counter(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => \Add0~26_combout\,
	datac => internal_counter(14),
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(14));

-- Location: LCCOMB_X31_Y13_N24
\internal_counter[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(15) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & (\Add0~28_combout\)) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & ((internal_counter(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => \Add0~28_combout\,
	datac => \timer_start~inputclkctrl_outclk\,
	datad => internal_counter(15),
	combout => internal_counter(15));

-- Location: LCCOMB_X31_Y12_N18
\internal_counter[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(16) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & ((\Add0~30_combout\))) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & (internal_counter(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => internal_counter(16),
	datac => \Add0~30_combout\,
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(16));

-- Location: LCCOMB_X31_Y12_N8
\internal_counter[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(17) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & (\Add0~32_combout\)) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & ((internal_counter(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \timer_reset~input_o\,
	datac => internal_counter(17),
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(17));

-- Location: LCCOMB_X31_Y12_N10
\internal_counter[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(18) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & ((\Add0~34_combout\))) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & (internal_counter(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(18),
	datab => \timer_reset~input_o\,
	datac => \Add0~34_combout\,
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(18));

-- Location: LCCOMB_X31_Y12_N4
\internal_counter[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(19) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & (\Add0~36_combout\)) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & ((internal_counter(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => \Add0~36_combout\,
	datac => internal_counter(19),
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(19));

-- Location: LCCOMB_X31_Y12_N26
\internal_counter[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(20) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & (\Add0~38_combout\)) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & ((internal_counter(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \timer_reset~input_o\,
	datac => internal_counter(20),
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(20));

-- Location: LCCOMB_X31_Y12_N16
\internal_counter[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(21) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & (\Add0~40_combout\)) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & ((internal_counter(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => internal_counter(21),
	datac => \timer_reset~input_o\,
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(21));

-- Location: LCCOMB_X29_Y12_N4
\internal_counter[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(22) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & ((\Add0~42_combout\))) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & (internal_counter(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => internal_counter(22),
	datac => \Add0~42_combout\,
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(22));

-- Location: LCCOMB_X29_Y12_N18
\internal_counter[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(23) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & ((\Add0~44_combout\))) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & (internal_counter(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => internal_counter(23),
	datac => \Add0~44_combout\,
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(23));

-- Location: LCCOMB_X29_Y12_N8
\internal_counter[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(24) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & (\Add0~46_combout\)) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & ((internal_counter(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => \Add0~46_combout\,
	datac => internal_counter(24),
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(24));

-- Location: LCCOMB_X29_Y12_N30
\internal_counter[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(25) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & (\Add0~48_combout\)) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & ((internal_counter(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => \Add0~48_combout\,
	datac => internal_counter(25),
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(25));

-- Location: LCCOMB_X29_Y12_N24
\internal_counter[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(26) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & ((\Add0~50_combout\))) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & (internal_counter(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => internal_counter(26),
	datac => \Add0~50_combout\,
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(26));

-- Location: LCCOMB_X29_Y12_N14
\internal_counter[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(27) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & (\Add0~52_combout\)) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & ((internal_counter(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => \Add0~52_combout\,
	datac => internal_counter(27),
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(27));

-- Location: LCCOMB_X29_Y12_N28
\internal_counter[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(28) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & ((\Add0~54_combout\))) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & (internal_counter(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => internal_counter(28),
	datac => \Add0~54_combout\,
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(28));

-- Location: LCCOMB_X29_Y12_N22
\internal_counter[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(29) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & ((\Add0~56_combout\))) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & (internal_counter(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(29),
	datab => \timer_reset~input_o\,
	datac => \timer_start~inputclkctrl_outclk\,
	datad => \Add0~56_combout\,
	combout => internal_counter(29));

-- Location: LCCOMB_X29_Y13_N8
\internal_counter[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(5) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & (\Add0~8_combout\)) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & ((internal_counter(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => \Add0~8_combout\,
	datac => internal_counter(5),
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(5));

-- Location: LCCOMB_X29_Y12_N16
\internal_counter[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(30) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & ((\Add0~58_combout\))) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & (internal_counter(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => internal_counter(30),
	datac => \timer_start~inputclkctrl_outclk\,
	datad => \Add0~58_combout\,
	combout => internal_counter(30));

-- Location: LCCOMB_X29_Y12_N26
\internal_counter[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(31) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & ((\Add0~60_combout\))) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & (internal_counter(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(31),
	datab => \timer_reset~input_o\,
	datac => \Add0~60_combout\,
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(31));

-- Location: IOOBUF_X29_Y34_N16
\short_interval~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \short_interval_tmp~combout\,
	devoe => ww_devoe,
	o => \short_interval~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\long_interval~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \long_interval~output_o\);

-- Location: IOIBUF_X29_Y0_N1
\timer_reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timer_reset,
	o => \timer_reset~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\timer_start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timer_start,
	o => \timer_start~input_o\);

-- Location: LCCOMB_X29_Y13_N16
\internal_counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \internal_counter[0]~0_combout\ = (!\timer_reset~input_o\ & (\internal_counter[0]~0_combout\ $ (\timer_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \internal_counter[0]~0_combout\,
	datac => \timer_start~input_o\,
	datad => \timer_reset~input_o\,
	combout => \internal_counter[0]~0_combout\);

-- Location: CLKCTRL_G2
\timer_start~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \timer_start~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \timer_start~inputclkctrl_outclk\);

-- Location: LCCOMB_X31_Y13_N28
\internal_counter[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(1) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & (\Add0~0_combout\)) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & ((internal_counter(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => internal_counter(1),
	datac => \timer_reset~input_o\,
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(1));

-- Location: LCCOMB_X30_Y13_N6
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (internal_counter(3) & (\Add0~3\ $ (GND))) # (!internal_counter(3) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((internal_counter(3) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(3),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X30_Y13_N8
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (internal_counter(4) & (!\Add0~5\)) # (!internal_counter(4) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!internal_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internal_counter(4),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X30_Y13_N0
\internal_counter[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(4) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & ((\Add0~6_combout\))) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & (internal_counter(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => internal_counter(4),
	datac => \Add0~6_combout\,
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(4));

-- Location: LCCOMB_X30_Y13_N12
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (internal_counter(6) & (!\Add0~9\)) # (!internal_counter(6) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!internal_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internal_counter(6),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X29_Y13_N6
\internal_counter[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(6) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & ((\Add0~10_combout\))) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & (internal_counter(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(6),
	datab => \timer_reset~input_o\,
	datac => \Add0~10_combout\,
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(6));

-- Location: LCCOMB_X30_Y13_N16
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (internal_counter(8) & (!\Add0~13\)) # (!internal_counter(8) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!internal_counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(8),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X29_Y13_N0
\internal_counter[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(8) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & ((\Add0~14_combout\))) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & (internal_counter(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => internal_counter(8),
	datac => \Add0~14_combout\,
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(8));

-- Location: LCCOMB_X30_Y13_N18
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (internal_counter(9) & (\Add0~15\ $ (GND))) # (!internal_counter(9) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((internal_counter(9) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internal_counter(9),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X29_Y13_N22
\internal_counter[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(9) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & (\Add0~16_combout\)) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & ((internal_counter(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => \Add0~16_combout\,
	datac => internal_counter(9),
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(9));

-- Location: LCCOMB_X29_Y13_N24
\short_interval_tmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \short_interval_tmp~1_combout\ = (!internal_counter(7) & (internal_counter(8) & (!internal_counter(9) & !internal_counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(7),
	datab => internal_counter(8),
	datac => internal_counter(9),
	datad => internal_counter(6),
	combout => \short_interval_tmp~1_combout\);

-- Location: LCCOMB_X31_Y13_N4
\internal_counter[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(3) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & (\Add0~4_combout\)) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & ((internal_counter(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => \Add0~4_combout\,
	datac => internal_counter(3),
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(3));

-- Location: LCCOMB_X31_Y13_N8
\short_interval_tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \short_interval_tmp~0_combout\ = (internal_counter(2) & (internal_counter(3) & (!internal_counter(4) & !internal_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(2),
	datab => internal_counter(3),
	datac => internal_counter(4),
	datad => internal_counter(1),
	combout => \short_interval_tmp~0_combout\);

-- Location: LCCOMB_X29_Y13_N4
\internal_counter[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(12) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & (\Add0~22_combout\)) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & ((internal_counter(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \timer_reset~input_o\,
	datac => internal_counter(12),
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(12));

-- Location: LCCOMB_X30_Y13_N20
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (internal_counter(10) & (!\Add0~17\)) # (!internal_counter(10) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!internal_counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => internal_counter(10),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X29_Y13_N28
\internal_counter[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(10) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & ((\Add0~18_combout\))) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & (internal_counter(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => internal_counter(10),
	datac => \Add0~18_combout\,
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(10));

-- Location: LCCOMB_X29_Y13_N14
\internal_counter[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- internal_counter(13) = (!\timer_reset~input_o\ & ((GLOBAL(\timer_start~inputclkctrl_outclk\) & (\Add0~24_combout\)) # (!GLOBAL(\timer_start~inputclkctrl_outclk\) & ((internal_counter(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_reset~input_o\,
	datab => \Add0~24_combout\,
	datac => internal_counter(13),
	datad => \timer_start~inputclkctrl_outclk\,
	combout => internal_counter(13));

-- Location: LCCOMB_X29_Y13_N2
\short_interval_tmp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \short_interval_tmp~2_combout\ = (!internal_counter(11) & (!internal_counter(12) & (!internal_counter(13) & !internal_counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => internal_counter(11),
	datab => internal_counter(12),
	datac => internal_counter(13),
	datad => internal_counter(10),
	combout => \short_interval_tmp~2_combout\);

-- Location: LCCOMB_X29_Y13_N20
\short_interval_tmp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \short_interval_tmp~4_combout\ = (\short_interval_tmp~3_combout\ & (\short_interval_tmp~1_combout\ & (\short_interval_tmp~0_combout\ & \short_interval_tmp~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \short_interval_tmp~3_combout\,
	datab => \short_interval_tmp~1_combout\,
	datac => \short_interval_tmp~0_combout\,
	datad => \short_interval_tmp~2_combout\,
	combout => \short_interval_tmp~4_combout\);

-- Location: LCCOMB_X29_Y13_N30
\short_interval_tmp~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \short_interval_tmp~10_combout\ = (\short_interval_tmp~9_combout\ & (!\internal_counter[0]~0_combout\ & \short_interval_tmp~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \short_interval_tmp~9_combout\,
	datab => \internal_counter[0]~0_combout\,
	datad => \short_interval_tmp~4_combout\,
	combout => \short_interval_tmp~10_combout\);

-- Location: LCCOMB_X29_Y13_N10
short_interval_tmp : cycloneive_lcell_comb
-- Equation(s):
-- \short_interval_tmp~combout\ = (!\timer_reset~input_o\ & ((\short_interval_tmp~10_combout\) # (\short_interval_tmp~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_reset~input_o\,
	datac => \short_interval_tmp~10_combout\,
	datad => \short_interval_tmp~combout\,
	combout => \short_interval_tmp~combout\);

-- Location: IOIBUF_X20_Y34_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

ww_short_interval <= \short_interval~output_o\;

ww_long_interval <= \long_interval~output_o\;
END structure;


