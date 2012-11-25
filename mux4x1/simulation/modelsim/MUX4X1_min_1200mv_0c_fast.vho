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

-- DATE "11/22/2012 13:32:30"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MUX4X1 IS
    PORT (
	SEL : IN std_logic_vector(1 DOWNTO 0);
	in0 : IN std_logic_vector(7 DOWNTO 0);
	in1 : IN std_logic_vector(7 DOWNTO 0);
	in2 : IN std_logic_vector(7 DOWNTO 0);
	in3 : IN std_logic_vector(7 DOWNTO 0);
	outMux : OUT std_logic_vector(7 DOWNTO 0)
	);
END MUX4X1;

-- Design Ports Information
-- outMux[0]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[3]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[4]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[5]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[6]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[0]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[1]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[1]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[2]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[2]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[3]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[3]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[4]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[4]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[4]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[4]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[5]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[5]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[5]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[5]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[6]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[6]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[7]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[7]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[7]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[7]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MUX4X1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SEL : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_in0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_in1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_in2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_in3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_outMux : std_logic_vector(7 DOWNTO 0);
SIGNAL \in2[1]~input_o\ : std_logic;
SIGNAL \in1[2]~input_o\ : std_logic;
SIGNAL \in1[4]~input_o\ : std_logic;
SIGNAL \outMux[0]~output_o\ : std_logic;
SIGNAL \outMux[1]~output_o\ : std_logic;
SIGNAL \outMux[2]~output_o\ : std_logic;
SIGNAL \outMux[3]~output_o\ : std_logic;
SIGNAL \outMux[4]~output_o\ : std_logic;
SIGNAL \outMux[5]~output_o\ : std_logic;
SIGNAL \outMux[6]~output_o\ : std_logic;
SIGNAL \outMux[7]~output_o\ : std_logic;
SIGNAL \in3[0]~input_o\ : std_logic;
SIGNAL \in0[0]~input_o\ : std_logic;
SIGNAL \SEL[1]~input_o\ : std_logic;
SIGNAL \in1[0]~input_o\ : std_logic;
SIGNAL \outMux~0_combout\ : std_logic;
SIGNAL \in2[0]~input_o\ : std_logic;
SIGNAL \outMux~1_combout\ : std_logic;
SIGNAL \SEL[0]~input_o\ : std_logic;
SIGNAL \in1[1]~input_o\ : std_logic;
SIGNAL \in3[1]~input_o\ : std_logic;
SIGNAL \in0[1]~input_o\ : std_logic;
SIGNAL \outMux~2_combout\ : std_logic;
SIGNAL \outMux~3_combout\ : std_logic;
SIGNAL \in3[2]~input_o\ : std_logic;
SIGNAL \in0[2]~input_o\ : std_logic;
SIGNAL \outMux~4_combout\ : std_logic;
SIGNAL \in2[2]~input_o\ : std_logic;
SIGNAL \outMux~5_combout\ : std_logic;
SIGNAL \in1[3]~input_o\ : std_logic;
SIGNAL \in0[3]~input_o\ : std_logic;
SIGNAL \in2[3]~input_o\ : std_logic;
SIGNAL \outMux~6_combout\ : std_logic;
SIGNAL \in3[3]~input_o\ : std_logic;
SIGNAL \outMux~7_combout\ : std_logic;
SIGNAL \in0[4]~input_o\ : std_logic;
SIGNAL \outMux~8_combout\ : std_logic;
SIGNAL \in3[4]~input_o\ : std_logic;
SIGNAL \in2[4]~input_o\ : std_logic;
SIGNAL \outMux~9_combout\ : std_logic;
SIGNAL \in3[5]~input_o\ : std_logic;
SIGNAL \in2[5]~input_o\ : std_logic;
SIGNAL \in0[5]~input_o\ : std_logic;
SIGNAL \outMux~10_combout\ : std_logic;
SIGNAL \in1[5]~input_o\ : std_logic;
SIGNAL \outMux~11_combout\ : std_logic;
SIGNAL \in3[6]~input_o\ : std_logic;
SIGNAL \in1[6]~input_o\ : std_logic;
SIGNAL \in0[6]~input_o\ : std_logic;
SIGNAL \outMux~12_combout\ : std_logic;
SIGNAL \in2[6]~input_o\ : std_logic;
SIGNAL \outMux~13_combout\ : std_logic;
SIGNAL \in3[7]~input_o\ : std_logic;
SIGNAL \in2[7]~input_o\ : std_logic;
SIGNAL \in0[7]~input_o\ : std_logic;
SIGNAL \outMux~14_combout\ : std_logic;
SIGNAL \in1[7]~input_o\ : std_logic;
SIGNAL \outMux~15_combout\ : std_logic;

BEGIN

ww_SEL <= SEL;
ww_in0 <= in0;
ww_in1 <= in1;
ww_in2 <= in2;
ww_in3 <= in3;
outMux <= ww_outMux;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X32_Y24_N22
\in2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(1),
	o => \in2[1]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\in1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(2),
	o => \in1[2]~input_o\);

-- Location: IOIBUF_X34_Y3_N15
\in1[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(4),
	o => \in1[4]~input_o\);

-- Location: IOOBUF_X16_Y0_N9
\outMux[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~1_combout\,
	devoe => ww_devoe,
	o => \outMux[0]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\outMux[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~3_combout\,
	devoe => ww_devoe,
	o => \outMux[1]~output_o\);

-- Location: IOOBUF_X34_Y6_N16
\outMux[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~5_combout\,
	devoe => ww_devoe,
	o => \outMux[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\outMux[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~7_combout\,
	devoe => ww_devoe,
	o => \outMux[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\outMux[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~9_combout\,
	devoe => ww_devoe,
	o => \outMux[4]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\outMux[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~11_combout\,
	devoe => ww_devoe,
	o => \outMux[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\outMux[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~13_combout\,
	devoe => ww_devoe,
	o => \outMux[6]~output_o\);

-- Location: IOOBUF_X34_Y11_N2
\outMux[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~15_combout\,
	devoe => ww_devoe,
	o => \outMux[7]~output_o\);

-- Location: IOIBUF_X34_Y5_N22
\in3[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(0),
	o => \in3[0]~input_o\);

-- Location: IOIBUF_X34_Y5_N15
\in0[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(0),
	o => \in0[0]~input_o\);

-- Location: IOIBUF_X34_Y8_N8
\SEL[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(1),
	o => \SEL[1]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\in1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(0),
	o => \in1[0]~input_o\);

-- Location: LCCOMB_X33_Y4_N8
\outMux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outMux~0_combout\ = (\SEL[0]~input_o\ & (((\SEL[1]~input_o\) # (\in1[0]~input_o\)))) # (!\SEL[0]~input_o\ & (\in0[0]~input_o\ & (!\SEL[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \in0[0]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \in1[0]~input_o\,
	combout => \outMux~0_combout\);

-- Location: IOIBUF_X5_Y24_N22
\in2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(0),
	o => \in2[0]~input_o\);

-- Location: LCCOMB_X33_Y4_N18
\outMux~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outMux~1_combout\ = (\outMux~0_combout\ & ((\in3[0]~input_o\) # ((!\SEL[1]~input_o\)))) # (!\outMux~0_combout\ & (((\SEL[1]~input_o\ & \in2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3[0]~input_o\,
	datab => \outMux~0_combout\,
	datac => \SEL[1]~input_o\,
	datad => \in2[0]~input_o\,
	combout => \outMux~1_combout\);

-- Location: IOIBUF_X34_Y9_N8
\SEL[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(0),
	o => \SEL[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\in1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(1),
	o => \in1[1]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\in3[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(1),
	o => \in3[1]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\in0[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(1),
	o => \in0[1]~input_o\);

-- Location: LCCOMB_X33_Y4_N20
\outMux~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outMux~2_combout\ = (\SEL[1]~input_o\ & ((\in2[1]~input_o\) # ((\SEL[0]~input_o\)))) # (!\SEL[1]~input_o\ & (((!\SEL[0]~input_o\ & \in0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[1]~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \in0[1]~input_o\,
	combout => \outMux~2_combout\);

-- Location: LCCOMB_X33_Y4_N30
\outMux~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outMux~3_combout\ = (\SEL[0]~input_o\ & ((\outMux~2_combout\ & ((\in3[1]~input_o\))) # (!\outMux~2_combout\ & (\in1[1]~input_o\)))) # (!\SEL[0]~input_o\ & (((\outMux~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \in1[1]~input_o\,
	datac => \in3[1]~input_o\,
	datad => \outMux~2_combout\,
	combout => \outMux~3_combout\);

-- Location: IOIBUF_X18_Y24_N22
\in3[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(2),
	o => \in3[2]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\in0[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(2),
	o => \in0[2]~input_o\);

-- Location: LCCOMB_X33_Y4_N24
\outMux~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outMux~4_combout\ = (\SEL[1]~input_o\ & (((\SEL[0]~input_o\)))) # (!\SEL[1]~input_o\ & ((\SEL[0]~input_o\ & (\in1[2]~input_o\)) # (!\SEL[0]~input_o\ & ((\in0[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[2]~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \in0[2]~input_o\,
	combout => \outMux~4_combout\);

-- Location: IOIBUF_X34_Y9_N15
\in2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(2),
	o => \in2[2]~input_o\);

-- Location: LCCOMB_X33_Y4_N2
\outMux~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outMux~5_combout\ = (\outMux~4_combout\ & ((\in3[2]~input_o\) # ((!\SEL[1]~input_o\)))) # (!\outMux~4_combout\ & (((\SEL[1]~input_o\ & \in2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3[2]~input_o\,
	datab => \outMux~4_combout\,
	datac => \SEL[1]~input_o\,
	datad => \in2[2]~input_o\,
	combout => \outMux~5_combout\);

-- Location: IOIBUF_X34_Y9_N22
\in1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(3),
	o => \in1[3]~input_o\);

-- Location: IOIBUF_X34_Y7_N22
\in0[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(3),
	o => \in0[3]~input_o\);

-- Location: IOIBUF_X34_Y7_N15
\in2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(3),
	o => \in2[3]~input_o\);

-- Location: LCCOMB_X33_Y4_N4
\outMux~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outMux~6_combout\ = (\SEL[0]~input_o\ & (((\SEL[1]~input_o\)))) # (!\SEL[0]~input_o\ & ((\SEL[1]~input_o\ & ((\in2[3]~input_o\))) # (!\SEL[1]~input_o\ & (\in0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \in0[3]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \in2[3]~input_o\,
	combout => \outMux~6_combout\);

-- Location: IOIBUF_X23_Y0_N1
\in3[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(3),
	o => \in3[3]~input_o\);

-- Location: LCCOMB_X33_Y4_N6
\outMux~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outMux~7_combout\ = (\outMux~6_combout\ & (((\in3[3]~input_o\) # (!\SEL[0]~input_o\)))) # (!\outMux~6_combout\ & (\in1[3]~input_o\ & (\SEL[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[3]~input_o\,
	datab => \outMux~6_combout\,
	datac => \SEL[0]~input_o\,
	datad => \in3[3]~input_o\,
	combout => \outMux~7_combout\);

-- Location: IOIBUF_X0_Y6_N22
\in0[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(4),
	o => \in0[4]~input_o\);

-- Location: LCCOMB_X33_Y4_N0
\outMux~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outMux~8_combout\ = (\SEL[1]~input_o\ & (((\SEL[0]~input_o\)))) # (!\SEL[1]~input_o\ & ((\SEL[0]~input_o\ & (\in1[4]~input_o\)) # (!\SEL[0]~input_o\ & ((\in0[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[4]~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \in0[4]~input_o\,
	combout => \outMux~8_combout\);

-- Location: IOIBUF_X34_Y10_N1
\in3[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(4),
	o => \in3[4]~input_o\);

-- Location: IOIBUF_X34_Y8_N22
\in2[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(4),
	o => \in2[4]~input_o\);

-- Location: LCCOMB_X33_Y4_N10
\outMux~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outMux~9_combout\ = (\outMux~8_combout\ & (((\in3[4]~input_o\)) # (!\SEL[1]~input_o\))) # (!\outMux~8_combout\ & (\SEL[1]~input_o\ & ((\in2[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outMux~8_combout\,
	datab => \SEL[1]~input_o\,
	datac => \in3[4]~input_o\,
	datad => \in2[4]~input_o\,
	combout => \outMux~9_combout\);

-- Location: IOIBUF_X34_Y12_N8
\in3[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(5),
	o => \in3[5]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\in2[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(5),
	o => \in2[5]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\in0[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(5),
	o => \in0[5]~input_o\);

-- Location: LCCOMB_X33_Y4_N28
\outMux~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outMux~10_combout\ = (\SEL[0]~input_o\ & (((\SEL[1]~input_o\)))) # (!\SEL[0]~input_o\ & ((\SEL[1]~input_o\ & (\in2[5]~input_o\)) # (!\SEL[1]~input_o\ & ((\in0[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \in2[5]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \in0[5]~input_o\,
	combout => \outMux~10_combout\);

-- Location: IOIBUF_X34_Y12_N22
\in1[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(5),
	o => \in1[5]~input_o\);

-- Location: LCCOMB_X33_Y4_N14
\outMux~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outMux~11_combout\ = (\outMux~10_combout\ & ((\in3[5]~input_o\) # ((!\SEL[0]~input_o\)))) # (!\outMux~10_combout\ & (((\SEL[0]~input_o\ & \in1[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3[5]~input_o\,
	datab => \outMux~10_combout\,
	datac => \SEL[0]~input_o\,
	datad => \in1[5]~input_o\,
	combout => \outMux~11_combout\);

-- Location: IOIBUF_X34_Y8_N15
\in3[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(6),
	o => \in3[6]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\in1[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(6),
	o => \in1[6]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\in0[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(6),
	o => \in0[6]~input_o\);

-- Location: LCCOMB_X33_Y4_N16
\outMux~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outMux~12_combout\ = (\SEL[0]~input_o\ & ((\SEL[1]~input_o\) # ((\in1[6]~input_o\)))) # (!\SEL[0]~input_o\ & (!\SEL[1]~input_o\ & ((\in0[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \in1[6]~input_o\,
	datad => \in0[6]~input_o\,
	combout => \outMux~12_combout\);

-- Location: IOIBUF_X34_Y12_N1
\in2[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(6),
	o => \in2[6]~input_o\);

-- Location: LCCOMB_X33_Y4_N26
\outMux~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outMux~13_combout\ = (\outMux~12_combout\ & ((\in3[6]~input_o\) # ((!\SEL[1]~input_o\)))) # (!\outMux~12_combout\ & (((\SEL[1]~input_o\ & \in2[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3[6]~input_o\,
	datab => \outMux~12_combout\,
	datac => \SEL[1]~input_o\,
	datad => \in2[6]~input_o\,
	combout => \outMux~13_combout\);

-- Location: IOIBUF_X7_Y0_N22
\in3[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(7),
	o => \in3[7]~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\in2[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(7),
	o => \in2[7]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\in0[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(7),
	o => \in0[7]~input_o\);

-- Location: LCCOMB_X33_Y4_N12
\outMux~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outMux~14_combout\ = (\SEL[0]~input_o\ & (((\SEL[1]~input_o\)))) # (!\SEL[0]~input_o\ & ((\SEL[1]~input_o\ & (\in2[7]~input_o\)) # (!\SEL[1]~input_o\ & ((\in0[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \in2[7]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \in0[7]~input_o\,
	combout => \outMux~14_combout\);

-- Location: IOIBUF_X34_Y18_N1
\in1[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(7),
	o => \in1[7]~input_o\);

-- Location: LCCOMB_X7_Y11_N24
\outMux~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outMux~15_combout\ = (\SEL[0]~input_o\ & ((\outMux~14_combout\ & (\in3[7]~input_o\)) # (!\outMux~14_combout\ & ((\in1[7]~input_o\))))) # (!\SEL[0]~input_o\ & (((\outMux~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \in3[7]~input_o\,
	datac => \outMux~14_combout\,
	datad => \in1[7]~input_o\,
	combout => \outMux~15_combout\);

ww_outMux(0) <= \outMux[0]~output_o\;

ww_outMux(1) <= \outMux[1]~output_o\;

ww_outMux(2) <= \outMux[2]~output_o\;

ww_outMux(3) <= \outMux[3]~output_o\;

ww_outMux(4) <= \outMux[4]~output_o\;

ww_outMux(5) <= \outMux[5]~output_o\;

ww_outMux(6) <= \outMux[6]~output_o\;

ww_outMux(7) <= \outMux[7]~output_o\;
END structure;


