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

-- DATE "11/30/2019 08:37:56"

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

ENTITY 	Control IS
    PORT (
	op : IN std_logic_vector(5 DOWNTO 0);
	funct : IN std_logic_vector(5 DOWNTO 0);
	RegDst : OUT std_logic;
	ALUSrc : OUT std_logic;
	ALUControlID : OUT std_logic_vector(1 DOWNTO 0);
	RegWrite : OUT std_logic
	);
END Control;

-- Design Ports Information
-- RegDst	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControlID[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControlID[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWrite	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[2]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[5]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[5]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[3]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_op : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_funct : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_RegDst : std_logic;
SIGNAL ww_ALUSrc : std_logic;
SIGNAL ww_ALUControlID : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RegWrite : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \RegDst~output_o\ : std_logic;
SIGNAL \ALUSrc~output_o\ : std_logic;
SIGNAL \ALUControlID[0]~output_o\ : std_logic;
SIGNAL \ALUControlID[1]~output_o\ : std_logic;
SIGNAL \RegWrite~output_o\ : std_logic;
SIGNAL \op[5]~input_o\ : std_logic;
SIGNAL \op[3]~input_o\ : std_logic;
SIGNAL \op[4]~input_o\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \op[2]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \funct[2]~input_o\ : std_logic;
SIGNAL \funct[1]~input_o\ : std_logic;
SIGNAL \funct[0]~input_o\ : std_logic;
SIGNAL \funct[5]~input_o\ : std_logic;
SIGNAL \funct[3]~input_o\ : std_logic;
SIGNAL \funct[4]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \ALUControlID~0_combout\ : std_logic;
SIGNAL \ALUControlID~1_combout\ : std_logic;
SIGNAL \ALUControlID~2_combout\ : std_logic;
SIGNAL \RegWrite~0_combout\ : std_logic;

BEGIN

ww_op <= op;
ww_funct <= funct;
RegDst <= ww_RegDst;
ALUSrc <= ww_ALUSrc;
ALUControlID <= ww_ALUControlID;
RegWrite <= ww_RegWrite;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X16_Y0_N1
\op[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

-- Location: IOOBUF_X22_Y0_N9
\RegDst~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~1_combout\,
	devoe => ww_devoe,
	o => \RegDst~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\ALUSrc~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \ALUSrc~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\ALUControlID[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUControlID~0_combout\,
	devoe => ww_devoe,
	o => \ALUControlID[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\ALUControlID[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUControlID~2_combout\,
	devoe => ww_devoe,
	o => \ALUControlID[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\RegWrite~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegWrite~0_combout\,
	devoe => ww_devoe,
	o => \RegWrite~output_o\);

-- Location: IOIBUF_X14_Y0_N8
\op[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(5),
	o => \op[5]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\op[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(3),
	o => \op[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\op[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(4),
	o => \op[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\op[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\op[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(2),
	o => \op[2]~input_o\);

-- Location: LCCOMB_X18_Y1_N0
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\op[1]~input_o\ & (!\op[4]~input_o\ & (!\op[0]~input_o\ & !\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[4]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X18_Y1_N26
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\op[5]~input_o\ & (!\op[3]~input_o\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[5]~input_o\,
	datac => \op[3]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X18_Y1_N20
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\op[5]~input_o\ & (\op[3]~input_o\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[5]~input_o\,
	datac => \op[3]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X12_Y0_N8
\funct[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(2),
	o => \funct[2]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\funct[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(1),
	o => \funct[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\funct[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(0),
	o => \funct[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\funct[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(5),
	o => \funct[5]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\funct[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(3),
	o => \funct[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\funct[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(4),
	o => \funct[4]~input_o\);

-- Location: LCCOMB_X18_Y1_N6
\Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\funct[5]~input_o\ & (!\funct[3]~input_o\ & !\funct[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \funct[5]~input_o\,
	datac => \funct[3]~input_o\,
	datad => \funct[4]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X18_Y1_N24
\ALUControlID~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALUControlID~0_combout\ = (\Equal2~0_combout\ & ((\funct[2]~input_o\ & (!\funct[1]~input_o\ & \funct[0]~input_o\)) # (!\funct[2]~input_o\ & (\funct[1]~input_o\ & !\funct[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funct[2]~input_o\,
	datab => \funct[1]~input_o\,
	datac => \funct[0]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \ALUControlID~0_combout\);

-- Location: LCCOMB_X18_Y1_N2
\ALUControlID~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALUControlID~1_combout\ = (\funct[2]~input_o\ & (\funct[1]~input_o\)) # (!\funct[2]~input_o\ & ((\funct[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funct[2]~input_o\,
	datab => \funct[1]~input_o\,
	datac => \funct[0]~input_o\,
	combout => \ALUControlID~1_combout\);

-- Location: LCCOMB_X18_Y1_N28
\ALUControlID~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ALUControlID~2_combout\ = (\Equal2~0_combout\ & ((\ALUControlID~1_combout\ & ((\Equal1~0_combout\))) # (!\ALUControlID~1_combout\ & (!\funct[2]~input_o\)))) # (!\Equal2~0_combout\ & (((\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \ALUControlID~1_combout\,
	datac => \funct[2]~input_o\,
	datad => \Equal1~0_combout\,
	combout => \ALUControlID~2_combout\);

-- Location: LCCOMB_X18_Y1_N30
\RegWrite~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegWrite~0_combout\ = (!\op[5]~input_o\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[5]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \RegWrite~0_combout\);

ww_RegDst <= \RegDst~output_o\;

ww_ALUSrc <= \ALUSrc~output_o\;

ww_ALUControlID(0) <= \ALUControlID[0]~output_o\;

ww_ALUControlID(1) <= \ALUControlID[1]~output_o\;

ww_RegWrite <= \RegWrite~output_o\;
END structure;


