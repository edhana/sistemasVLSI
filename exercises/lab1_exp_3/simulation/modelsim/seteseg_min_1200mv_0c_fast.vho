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

-- DATE "01/12/2013 20:04:44"

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

ENTITY 	seteseg IS
    PORT (
	codigo : IN std_logic_vector(2 DOWNTO 0);
	segs : OUT std_logic_vector(6 DOWNTO 0)
	);
END seteseg;

-- Design Ports Information
-- segs[0]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segs[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segs[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segs[3]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segs[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segs[5]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segs[6]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo[0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF seteseg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_codigo : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_segs : std_logic_vector(6 DOWNTO 0);
SIGNAL \segs[0]~output_o\ : std_logic;
SIGNAL \segs[1]~output_o\ : std_logic;
SIGNAL \segs[2]~output_o\ : std_logic;
SIGNAL \segs[3]~output_o\ : std_logic;
SIGNAL \segs[4]~output_o\ : std_logic;
SIGNAL \segs[5]~output_o\ : std_logic;
SIGNAL \segs[6]~output_o\ : std_logic;
SIGNAL \codigo[0]~input_o\ : std_logic;
SIGNAL \codigo[1]~input_o\ : std_logic;
SIGNAL \codigo[2]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_codigo <= codigo;
segs <= ww_segs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X0_Y12_N9
\segs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segs[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\segs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segs[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\segs[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segs[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\segs[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segs[3]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\segs[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segs[4]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\segs[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segs[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\segs[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segs[6]~output_o\);

-- Location: IOIBUF_X1_Y0_N8
\codigo[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_codigo(0),
	o => \codigo[0]~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\codigo[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_codigo(1),
	o => \codigo[1]~input_o\);

-- Location: IOIBUF_X53_Y17_N8
\codigo[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_codigo(2),
	o => \codigo[2]~input_o\);

-- Location: LCCOMB_X1_Y3_N0
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\codigo[2]~input_o\) # ((!\codigo[0]~input_o\ & \codigo[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \codigo[0]~input_o\,
	datac => \codigo[1]~input_o\,
	datad => \codigo[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y3_N2
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\codigo[0]~input_o\ & (\codigo[1]~input_o\ $ (!\codigo[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \codigo[0]~input_o\,
	datac => \codigo[1]~input_o\,
	datad => \codigo[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y3_N28
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\codigo[1]~input_o\ & (\codigo[0]~input_o\ $ (\codigo[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \codigo[0]~input_o\,
	datac => \codigo[1]~input_o\,
	datad => \codigo[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y3_N6
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = \codigo[2]~input_o\ $ (((!\codigo[0]~input_o\ & \codigo[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \codigo[0]~input_o\,
	datac => \codigo[1]~input_o\,
	datad => \codigo[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y3_N24
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\codigo[1]~input_o\) # (\codigo[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \codigo[1]~input_o\,
	datad => \codigo[2]~input_o\,
	combout => \Mux0~0_combout\);

ww_segs(0) <= \segs[0]~output_o\;

ww_segs(1) <= \segs[1]~output_o\;

ww_segs(2) <= \segs[2]~output_o\;

ww_segs(3) <= \segs[3]~output_o\;

ww_segs(4) <= \segs[4]~output_o\;

ww_segs(5) <= \segs[5]~output_o\;

ww_segs(6) <= \segs[6]~output_o\;
END structure;


