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

-- DATE "12/02/2019 11:42:58"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Hazard IS
    PORT (
	clk : IN std_logic;
	FowardAE : OUT std_logic;
	FowardBE : OUT std_logic;
	RegWriteW : IN std_logic;
	WriteRegW : IN std_logic_vector(4 DOWNTO 0);
	RsE : IN std_logic_vector(4 DOWNTO 0);
	RtE : IN std_logic_vector(4 DOWNTO 0)
	);
END Hazard;

-- Design Ports Information
-- clk	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FowardAE	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FowardBE	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegWriteW	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RsE[0]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RsE[1]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WriteRegW[1]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WriteRegW[0]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RsE[2]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RsE[3]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WriteRegW[3]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WriteRegW[2]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RsE[4]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WriteRegW[4]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RtE[1]	=>  Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RtE[0]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RtE[3]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RtE[2]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RtE[4]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Hazard IS
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
SIGNAL ww_FowardAE : std_logic;
SIGNAL ww_FowardBE : std_logic;
SIGNAL ww_RegWriteW : std_logic;
SIGNAL ww_WriteRegW : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RsE : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RtE : std_logic_vector(4 DOWNTO 0);
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \RegWriteW~combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \WriteRegW~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RtE~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RsE~combout\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_clk <= clk;
FowardAE <= ww_FowardAE;
FowardBE <= ww_FowardBE;
ww_RegWriteW <= RegWriteW;
ww_WriteRegW <= WriteRegW;
ww_RsE <= RsE;
ww_RtE <= RtE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X64_Y33_N26
\process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\RsE~combout\(2) & (\WriteRegW~combout\(2) & (\WriteRegW~combout\(3) $ (!\RsE~combout\(3))))) # (!\RsE~combout\(2) & (!\WriteRegW~combout\(2) & (\WriteRegW~combout\(3) $ (!\RsE~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RsE~combout\(2),
	datab => \WriteRegW~combout\(2),
	datac => \WriteRegW~combout\(3),
	datad => \RsE~combout\(3),
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X64_Y33_N6
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\RtE~combout\(1) & (!\RtE~combout\(3) & (!\RtE~combout\(0) & !\RtE~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RtE~combout\(1),
	datab => \RtE~combout\(3),
	datac => \RtE~combout\(0),
	datad => \RtE~combout\(2),
	combout => \Equal2~0_combout\);

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RsE[2]~I\ : cycloneii_io
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
	padio => ww_RsE(2),
	combout => \RsE~combout\(2));

-- Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RtE[1]~I\ : cycloneii_io
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
	padio => ww_RtE(1),
	combout => \RtE~combout\(1));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RtE[3]~I\ : cycloneii_io
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
	padio => ww_RtE(3),
	combout => \RtE~combout\(3));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegWriteW~I\ : cycloneii_io
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
	padio => ww_RegWriteW,
	combout => \RegWriteW~combout\);

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RsE[0]~I\ : cycloneii_io
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
	padio => ww_RsE(0),
	combout => \RsE~combout\(0));

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WriteRegW[1]~I\ : cycloneii_io
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
	padio => ww_WriteRegW(1),
	combout => \WriteRegW~combout\(1));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WriteRegW[0]~I\ : cycloneii_io
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
	padio => ww_WriteRegW(0),
	combout => \WriteRegW~combout\(0));

-- Location: LCCOMB_X64_Y33_N0
\process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\RsE~combout\(1) & (\WriteRegW~combout\(1) & (\RsE~combout\(0) $ (!\WriteRegW~combout\(0))))) # (!\RsE~combout\(1) & (!\WriteRegW~combout\(1) & (\RsE~combout\(0) $ (!\WriteRegW~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RsE~combout\(1),
	datab => \RsE~combout\(0),
	datac => \WriteRegW~combout\(1),
	datad => \WriteRegW~combout\(0),
	combout => \process_0~0_combout\);

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RsE[1]~I\ : cycloneii_io
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
	padio => ww_RsE(1),
	combout => \RsE~combout\(1));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RsE[3]~I\ : cycloneii_io
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
	padio => ww_RsE(3),
	combout => \RsE~combout\(3));

-- Location: LCCOMB_X64_Y33_N4
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\RsE~combout\(2) & (!\RsE~combout\(0) & (!\RsE~combout\(1) & !\RsE~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RsE~combout\(2),
	datab => \RsE~combout\(0),
	datac => \RsE~combout\(1),
	datad => \RsE~combout\(3),
	combout => \Equal0~0_combout\);

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RsE[4]~I\ : cycloneii_io
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
	padio => ww_RsE(4),
	combout => \RsE~combout\(4));

-- Location: LCCOMB_X64_Y33_N30
\process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\process_0~1_combout\ & (\process_0~0_combout\ & ((\RsE~combout\(4)) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \process_0~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \RsE~combout\(4),
	combout => \process_0~2_combout\);

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WriteRegW[4]~I\ : cycloneii_io
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
	padio => ww_WriteRegW(4),
	combout => \WriteRegW~combout\(4));

-- Location: LCCOMB_X64_Y33_N8
\process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\RegWriteW~combout\ & (\process_0~2_combout\ & (\WriteRegW~combout\(4) $ (!\RsE~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegWriteW~combout\,
	datab => \process_0~2_combout\,
	datac => \WriteRegW~combout\(4),
	datad => \RsE~combout\(4),
	combout => \process_0~3_combout\);

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RtE[0]~I\ : cycloneii_io
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
	padio => ww_RtE(0),
	combout => \RtE~combout\(0));

-- Location: LCCOMB_X64_Y33_N2
\process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\RtE~combout\(1) & (\WriteRegW~combout\(1) & (\RtE~combout\(0) $ (!\WriteRegW~combout\(0))))) # (!\RtE~combout\(1) & (!\WriteRegW~combout\(1) & (\RtE~combout\(0) $ (!\WriteRegW~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RtE~combout\(1),
	datab => \WriteRegW~combout\(1),
	datac => \RtE~combout\(0),
	datad => \WriteRegW~combout\(0),
	combout => \process_0~4_combout\);

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WriteRegW[2]~I\ : cycloneii_io
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
	padio => ww_WriteRegW(2),
	combout => \WriteRegW~combout\(2));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WriteRegW[3]~I\ : cycloneii_io
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
	padio => ww_WriteRegW(3),
	combout => \WriteRegW~combout\(3));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RtE[2]~I\ : cycloneii_io
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
	padio => ww_RtE(2),
	combout => \RtE~combout\(2));

-- Location: LCCOMB_X64_Y33_N20
\process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (\RtE~combout\(3) & (\WriteRegW~combout\(3) & (\WriteRegW~combout\(2) $ (!\RtE~combout\(2))))) # (!\RtE~combout\(3) & (!\WriteRegW~combout\(3) & (\WriteRegW~combout\(2) $ (!\RtE~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RtE~combout\(3),
	datab => \WriteRegW~combout\(2),
	datac => \WriteRegW~combout\(3),
	datad => \RtE~combout\(2),
	combout => \process_0~5_combout\);

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RtE[4]~I\ : cycloneii_io
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
	padio => ww_RtE(4),
	combout => \RtE~combout\(4));

-- Location: LCCOMB_X64_Y33_N24
\process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (\process_0~4_combout\ & (\process_0~5_combout\ & ((\RtE~combout\(4)) # (!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \process_0~4_combout\,
	datac => \process_0~5_combout\,
	datad => \RtE~combout\(4),
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X64_Y33_N18
\process_0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\process_0~6_combout\ & (\RegWriteW~combout\ & (\WriteRegW~combout\(4) $ (!\RtE~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~6_combout\,
	datab => \WriteRegW~combout\(4),
	datac => \RegWriteW~combout\,
	datad => \RtE~combout\(4),
	combout => \process_0~7_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FowardAE~I\ : cycloneii_io
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
	datain => \process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FowardAE);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FowardBE~I\ : cycloneii_io
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
	datain => \process_0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FowardBE);
END structure;


