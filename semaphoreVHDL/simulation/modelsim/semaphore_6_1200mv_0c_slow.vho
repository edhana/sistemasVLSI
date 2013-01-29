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

-- DATE "01/27/2013 22:46:09"

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
-- clk	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_trafic_light_ctl : std_logic_vector(5 DOWNTO 0);
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \trafic_light_ctl[0]~output_o\ : std_logic;
SIGNAL \trafic_light_ctl[1]~output_o\ : std_logic;
SIGNAL \trafic_light_ctl[2]~output_o\ : std_logic;
SIGNAL \trafic_light_ctl[3]~output_o\ : std_logic;
SIGNAL \trafic_light_ctl[4]~output_o\ : std_logic;
SIGNAL \trafic_light_ctl[5]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \traffic_sensor~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL state : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL ALT_INV_state : std_logic_vector(3 DOWNTO 2);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_traffic_sensor <= traffic_sensor;
trafic_light_ctl <= ww_trafic_light_ctl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
ALT_INV_state(3) <= NOT state(3);
ALT_INV_state(2) <= NOT state(2);

-- Location: IOOBUF_X38_Y34_N16
\trafic_light_ctl[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(0),
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
	i => state(1),
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
	i => ALT_INV_state(2),
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
	i => ALT_INV_state(3),
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
	i => state(4),
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
	i => state(2),
	devoe => ww_devoe,
	o => \trafic_light_ctl[5]~output_o\);

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

-- Location: LCCOMB_X6_Y14_N24
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (state(0) & (((!state(4) & state(2))) # (!state(3)))) # (!state(0) & ((state(2) & (!state(3))) # (!state(2) & ((state(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(0),
	datac => state(4),
	datad => state(2),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X6_Y14_N22
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!state(1) & ((state(3) & ((\Mux3~0_combout\))) # (!state(3) & (!\traffic_sensor~input_o\ & !\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => \traffic_sensor~input_o\,
	datac => state(3),
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: FF_X6_Y14_N23
\state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(3));

-- Location: LCCOMB_X6_Y14_N18
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!state(1) & ((state(0) & (!state(4) & state(2))) # (!state(0) & (state(4) & !state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => state(4),
	datad => state(2),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X6_Y14_N8
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (state(3) & \Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(3),
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: FF_X6_Y14_N9
\state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(2));

-- Location: LCCOMB_X6_Y14_N10
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!state(1) & (!state(2) & !state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datac => state(2),
	datad => state(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X6_Y14_N4
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!state(3) & (!\traffic_sensor~input_o\ & (!state(4) & \Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => \traffic_sensor~input_o\,
	datac => state(4),
	datad => \Mux6~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: FF_X6_Y14_N5
\state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(4));

-- Location: LCCOMB_X6_Y14_N20
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (state(3) & (state(4) & \Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datac => state(4),
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: FF_X6_Y14_N21
\state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(0));

-- Location: LCCOMB_X6_Y14_N28
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!state(1) & (!state(4) & (state(3) & state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(4),
	datac => state(3),
	datad => state(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X6_Y14_N26
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (state(2) & \Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(2),
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: FF_X6_Y14_N27
\state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(1));

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


