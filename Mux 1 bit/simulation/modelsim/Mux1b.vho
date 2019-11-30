-- Copyright (C) 1991-2013 Altera Corporation
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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/30/2019 12:17:11"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Mux1b IS
    PORT (
	selection : IN std_logic;
	inA : IN std_logic_vector(4 DOWNTO 0);
	inB : IN std_logic_vector(4 DOWNTO 0);
	outMux : OUT std_logic_vector(4 DOWNTO 0)
	);
END Mux1b;

-- Design Ports Information
-- outMux[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[3]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[4]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selection	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Mux1b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_selection : std_logic;
SIGNAL ww_inA : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_inB : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_outMux : std_logic_vector(4 DOWNTO 0);
SIGNAL \outMux[0]~output_o\ : std_logic;
SIGNAL \outMux[1]~output_o\ : std_logic;
SIGNAL \outMux[2]~output_o\ : std_logic;
SIGNAL \outMux[3]~output_o\ : std_logic;
SIGNAL \outMux[4]~output_o\ : std_logic;
SIGNAL \inA[0]~input_o\ : std_logic;
SIGNAL \inB[0]~input_o\ : std_logic;
SIGNAL \selection~input_o\ : std_logic;
SIGNAL \outMux~0_combout\ : std_logic;
SIGNAL \inA[1]~input_o\ : std_logic;
SIGNAL \inB[1]~input_o\ : std_logic;
SIGNAL \outMux~1_combout\ : std_logic;
SIGNAL \inB[2]~input_o\ : std_logic;
SIGNAL \inA[2]~input_o\ : std_logic;
SIGNAL \outMux~2_combout\ : std_logic;
SIGNAL \inA[3]~input_o\ : std_logic;
SIGNAL \inB[3]~input_o\ : std_logic;
SIGNAL \outMux~3_combout\ : std_logic;
SIGNAL \inA[4]~input_o\ : std_logic;
SIGNAL \inB[4]~input_o\ : std_logic;
SIGNAL \outMux~4_combout\ : std_logic;

BEGIN

ww_selection <= selection;
ww_inA <= inA;
ww_inB <= inB;
outMux <= ww_outMux;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y0_N9
\outMux[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~0_combout\,
	devoe => ww_devoe,
	o => \outMux[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\outMux[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~1_combout\,
	devoe => ww_devoe,
	o => \outMux[1]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\outMux[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~2_combout\,
	devoe => ww_devoe,
	o => \outMux[2]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\outMux[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~3_combout\,
	devoe => ww_devoe,
	o => \outMux[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\outMux[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~4_combout\,
	devoe => ww_devoe,
	o => \outMux[4]~output_o\);

-- Location: IOIBUF_X10_Y0_N8
\inA[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(0),
	o => \inA[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\inB[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(0),
	o => \inB[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\selection~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selection,
	o => \selection~input_o\);

-- Location: LCCOMB_X16_Y1_N0
\outMux~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~0_combout\ = (\selection~input_o\ & ((\inB[0]~input_o\))) # (!\selection~input_o\ & (\inA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[0]~input_o\,
	datab => \inB[0]~input_o\,
	datad => \selection~input_o\,
	combout => \outMux~0_combout\);

-- Location: IOIBUF_X24_Y0_N1
\inA[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(1),
	o => \inA[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\inB[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(1),
	o => \inB[1]~input_o\);

-- Location: LCCOMB_X16_Y1_N2
\outMux~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~1_combout\ = (\selection~input_o\ & ((\inB[1]~input_o\))) # (!\selection~input_o\ & (\inA[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[1]~input_o\,
	datab => \selection~input_o\,
	datac => \inB[1]~input_o\,
	combout => \outMux~1_combout\);

-- Location: IOIBUF_X20_Y0_N8
\inB[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(2),
	o => \inB[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\inA[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(2),
	o => \inA[2]~input_o\);

-- Location: LCCOMB_X16_Y1_N12
\outMux~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~2_combout\ = (\selection~input_o\ & (\inB[2]~input_o\)) # (!\selection~input_o\ & ((\inA[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selection~input_o\,
	datac => \inB[2]~input_o\,
	datad => \inA[2]~input_o\,
	combout => \outMux~2_combout\);

-- Location: IOIBUF_X8_Y0_N1
\inA[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(3),
	o => \inA[3]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\inB[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(3),
	o => \inB[3]~input_o\);

-- Location: LCCOMB_X16_Y1_N22
\outMux~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~3_combout\ = (\selection~input_o\ & ((\inB[3]~input_o\))) # (!\selection~input_o\ & (\inA[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inA[3]~input_o\,
	datac => \inB[3]~input_o\,
	datad => \selection~input_o\,
	combout => \outMux~3_combout\);

-- Location: IOIBUF_X33_Y16_N15
\inA[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(4),
	o => \inA[4]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\inB[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(4),
	o => \inB[4]~input_o\);

-- Location: LCCOMB_X16_Y1_N24
\outMux~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~4_combout\ = (\selection~input_o\ & ((\inB[4]~input_o\))) # (!\selection~input_o\ & (\inA[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[4]~input_o\,
	datab => \selection~input_o\,
	datad => \inB[4]~input_o\,
	combout => \outMux~4_combout\);

ww_outMux(0) <= \outMux[0]~output_o\;

ww_outMux(1) <= \outMux[1]~output_o\;

ww_outMux(2) <= \outMux[2]~output_o\;

ww_outMux(3) <= \outMux[3]~output_o\;

ww_outMux(4) <= \outMux[4]~output_o\;
END structure;


