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

-- DATE "12/03/2019 10:56:26"

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

ENTITY 	datapath IS
    PORT (
	clk : IN std_logic;
	Instr : IN std_logic_vector(31 DOWNTO 0);
	RegDst : IN std_logic;
	ALUSrc : IN std_logic;
	RegWrite : IN std_logic;
	Op : OUT std_logic_vector(5 DOWNTO 0);
	Funct : OUT std_logic_vector(5 DOWNTO 0);
	ALUControl : IN std_logic_vector(1 DOWNTO 0);
	FowardAE : IN std_logic;
	FowardBE : IN std_logic;
	RegWriteW : OUT std_logic;
	WriteRegW : OUT std_logic_vector(4 DOWNTO 0);
	RsE : OUT std_logic_vector(4 DOWNTO 0);
	RtE : OUT std_logic_vector(4 DOWNTO 0);
	AluOutW : OUT std_logic_vector(31 DOWNTO 0)
	);
END datapath;

-- Design Ports Information
-- Op[0]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Op[1]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Op[2]	=>  Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Op[3]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Op[4]	=>  Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Op[5]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Funct[0]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Funct[1]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Funct[2]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Funct[3]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Funct[4]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Funct[5]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegWriteW	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteRegW[0]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteRegW[1]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteRegW[2]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteRegW[3]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteRegW[4]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RsE[0]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RsE[1]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RsE[2]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RsE[3]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RsE[4]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RtE[0]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RtE[1]	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RtE[2]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RtE[3]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RtE[4]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[0]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[2]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[3]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[4]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[5]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[6]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[7]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[8]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[9]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[10]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[11]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[12]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[13]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[14]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[15]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[16]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[17]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[18]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[19]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[20]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[21]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[22]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[23]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[24]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[25]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[26]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[27]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[28]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[29]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[30]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[31]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Instr[26]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[27]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[28]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[29]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[30]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[31]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[0]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[1]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[2]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[3]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[4]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[5]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FowardBE	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FowardAE	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegWrite	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegDst	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[21]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[22]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[23]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[24]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[25]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[16]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[17]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[18]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[19]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[20]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALUSrc	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALUControl[1]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALUControl[0]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[11]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[12]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[13]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[14]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[15]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[6]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[7]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[8]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[9]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[10]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF datapath IS
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
SIGNAL ww_Instr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RegDst : std_logic;
SIGNAL ww_ALUSrc : std_logic;
SIGNAL ww_RegWrite : std_logic;
SIGNAL ww_Op : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Funct : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ALUControl : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_FowardAE : std_logic;
SIGNAL ww_FowardBE : std_logic;
SIGNAL ww_RegWriteW : std_logic;
SIGNAL ww_WriteRegW : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RsE : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RtE : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_AluOutW : std_logic_vector(31 DOWNTO 0);
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \ALU_1|Add1~4_combout\ : std_logic;
SIGNAL \ALU_1|Add1~8_combout\ : std_logic;
SIGNAL \ALU_1|Add1~10_combout\ : std_logic;
SIGNAL \ALU_1|Add1~24_combout\ : std_logic;
SIGNAL \ALU_1|Add0~30_combout\ : std_logic;
SIGNAL \ALU_1|Add0~36_combout\ : std_logic;
SIGNAL \Mux4|outMux[0]~0_combout\ : std_logic;
SIGNAL \Mux4|outMux[0]~1_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[0]~0_combout\ : std_logic;
SIGNAL \Mux4|outMux[1]~2_combout\ : std_logic;
SIGNAL \Mux4|outMux[1]~3_combout\ : std_logic;
SIGNAL \Mux2|outMux[6]~6_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[6]~12_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[7]~14_combout\ : std_logic;
SIGNAL \Mux2|outMux[8]~8_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[8]~16_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[9]~18_combout\ : std_logic;
SIGNAL \Mux2|outMux[10]~10_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[10]~20_combout\ : std_logic;
SIGNAL \Mux4|outMux[11]~22_combout\ : std_logic;
SIGNAL \Mux2|outMux[12]~12_combout\ : std_logic;
SIGNAL \Mux2|outMux[15]~15_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[16]~32_combout\ : std_logic;
SIGNAL \Mux4|outMux[17]~34_combout\ : std_logic;
SIGNAL \Mux4|outMux[17]~35_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[17]~34_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[19]~38_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[21]~42_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[26]~52_combout\ : std_logic;
SIGNAL \Mux2|outMux[29]~29_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[29]~58_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[30]~60_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Registrador_D|InstrD[26]~feeder_combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[27]~feeder_combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[28]~feeder_combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[29]~feeder_combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[30]~feeder_combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[31]~feeder_combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[0]~feeder_combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[1]~feeder_combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[2]~feeder_combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[3]~feeder_combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[4]~feeder_combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[5]~feeder_combout\ : std_logic;
SIGNAL \RegWrite~combout\ : std_logic;
SIGNAL \Registrador_E|RegWriteE~feeder_combout\ : std_logic;
SIGNAL \Registrador_E|RegWriteE~regout\ : std_logic;
SIGNAL \Registrador_W|RegWriteW~feeder_combout\ : std_logic;
SIGNAL \Registrador_W|RegWriteW~regout\ : std_logic;
SIGNAL \Registrador_D|InstrD[16]~feeder_combout\ : std_logic;
SIGNAL \Registrador_E|RtE[0]~feeder_combout\ : std_logic;
SIGNAL \RegDst~combout\ : std_logic;
SIGNAL \Registrador_E|RegDstE~feeder_combout\ : std_logic;
SIGNAL \Registrador_E|RegDstE~regout\ : std_logic;
SIGNAL \Registrador_D|InstrD[11]~feeder_combout\ : std_logic;
SIGNAL \Mux1|outMux[0]~0_combout\ : std_logic;
SIGNAL \Registrador_E|SignImmE[12]~feeder_combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[17]~feeder_combout\ : std_logic;
SIGNAL \Mux1|outMux[1]~1_combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[18]~feeder_combout\ : std_logic;
SIGNAL \Registrador_E|RtE[2]~feeder_combout\ : std_logic;
SIGNAL \Registrador_E|SignImmE[13]~feeder_combout\ : std_logic;
SIGNAL \Mux1|outMux[2]~2_combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[14]~feeder_combout\ : std_logic;
SIGNAL \Mux1|outMux[3]~3_combout\ : std_logic;
SIGNAL \Registrador_E|RtE[4]~feeder_combout\ : std_logic;
SIGNAL \Mux1|outMux[4]~4_combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[21]~feeder_combout\ : std_logic;
SIGNAL \Registrador_E|RsE[0]~feeder_combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[22]~feeder_combout\ : std_logic;
SIGNAL \Registrador_E|RsE[1]~feeder_combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[23]~feeder_combout\ : std_logic;
SIGNAL \Registrador_E|RsE[2]~feeder_combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[24]~feeder_combout\ : std_logic;
SIGNAL \Registrador_E|RsE[3]~feeder_combout\ : std_logic;
SIGNAL \Registrador_E|RsE[4]~feeder_combout\ : std_logic;
SIGNAL \Registrador_E|RtE[3]~feeder_combout\ : std_logic;
SIGNAL \FowardAE~combout\ : std_logic;
SIGNAL \Registrador_E|ALUControlE[0]~feeder_combout\ : std_logic;
SIGNAL \FowardBE~combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[6]~feeder_combout\ : std_logic;
SIGNAL \ALUSrc~combout\ : std_logic;
SIGNAL \Registrador_E|ALUSrcE~regout\ : std_logic;
SIGNAL \Registrador_D|InstrD[9]~feeder_combout\ : std_logic;
SIGNAL \Registrador_D|InstrD[10]~feeder_combout\ : std_logic;
SIGNAL \Mux4|outMux[10]~20_combout\ : std_logic;
SIGNAL \Mux4|outMux[10]~21_combout\ : std_logic;
SIGNAL \Mux4|outMux[18]~36_combout\ : std_logic;
SIGNAL \Mux4|outMux[18]~37_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \Mux4|outMux[31]~62_combout\ : std_logic;
SIGNAL \Mux4|outMux[31]~63_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \Mux2|outMux[27]~27_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \Mux4|outMux[25]~50_combout\ : std_logic;
SIGNAL \Mux4|outMux[25]~51_combout\ : std_logic;
SIGNAL \Mux4|outMux[24]~48_combout\ : std_logic;
SIGNAL \Mux4|outMux[24]~49_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \Mux2|outMux[23]~23_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \Mux2|outMux[20]~20_combout\ : std_logic;
SIGNAL \ALU_1|Add1~37\ : std_logic;
SIGNAL \ALU_1|Add1~39\ : std_logic;
SIGNAL \ALU_1|Add1~41\ : std_logic;
SIGNAL \ALU_1|Add1~43\ : std_logic;
SIGNAL \ALU_1|Add1~45\ : std_logic;
SIGNAL \ALU_1|Add1~47\ : std_logic;
SIGNAL \ALU_1|Add1~49\ : std_logic;
SIGNAL \ALU_1|Add1~51\ : std_logic;
SIGNAL \ALU_1|Add1~53\ : std_logic;
SIGNAL \ALU_1|Add1~55\ : std_logic;
SIGNAL \ALU_1|Add1~57\ : std_logic;
SIGNAL \ALU_1|Add1~59\ : std_logic;
SIGNAL \ALU_1|Add1~61\ : std_logic;
SIGNAL \ALU_1|Add1~62_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \Mux2|outMux[31]~31_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[31]~62_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \Mux2|outMux[30]~30_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \Mux4|outMux[28]~56_combout\ : std_logic;
SIGNAL \Mux4|outMux[28]~57_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \Mux2|outMux[26]~26_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \Mux4|outMux[22]~44_combout\ : std_logic;
SIGNAL \Mux4|outMux[22]~45_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \Mux2|outMux[21]~21_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \Mux2|outMux[19]~19_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \Mux2|outMux[18]~18_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \Mux4|outMux[16]~32_combout\ : std_logic;
SIGNAL \Mux4|outMux[16]~33_combout\ : std_logic;
SIGNAL \Mux4|outMux[11]~23_combout\ : std_logic;
SIGNAL \ALU_1|Add0~21\ : std_logic;
SIGNAL \ALU_1|Add0~23\ : std_logic;
SIGNAL \ALU_1|Add0~25\ : std_logic;
SIGNAL \ALU_1|Add0~27\ : std_logic;
SIGNAL \ALU_1|Add0~29\ : std_logic;
SIGNAL \ALU_1|Add0~31\ : std_logic;
SIGNAL \ALU_1|Add0~33\ : std_logic;
SIGNAL \ALU_1|Add0~35\ : std_logic;
SIGNAL \ALU_1|Add0~37\ : std_logic;
SIGNAL \ALU_1|Add0~39\ : std_logic;
SIGNAL \ALU_1|Add0~41\ : std_logic;
SIGNAL \ALU_1|Add0~43\ : std_logic;
SIGNAL \ALU_1|Add0~45\ : std_logic;
SIGNAL \ALU_1|Add0~47\ : std_logic;
SIGNAL \ALU_1|Add0~49\ : std_logic;
SIGNAL \ALU_1|Add0~51\ : std_logic;
SIGNAL \ALU_1|Add0~53\ : std_logic;
SIGNAL \ALU_1|Add0~55\ : std_logic;
SIGNAL \ALU_1|Add0~57\ : std_logic;
SIGNAL \ALU_1|Add0~59\ : std_logic;
SIGNAL \ALU_1|Add0~61\ : std_logic;
SIGNAL \ALU_1|Add0~62_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[31]~63_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \Mux4|outMux[30]~60_combout\ : std_logic;
SIGNAL \Mux4|outMux[30]~61_combout\ : std_logic;
SIGNAL \ALU_1|Add1~60_combout\ : std_logic;
SIGNAL \ALU_1|Add0~60_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[30]~61_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \Mux4|outMux[29]~58_combout\ : std_logic;
SIGNAL \Mux4|outMux[29]~59_combout\ : std_logic;
SIGNAL \ALU_1|Add0~58_combout\ : std_logic;
SIGNAL \ALU_1|Add1~58_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[29]~59_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \Mux2|outMux[28]~28_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[28]~56_combout\ : std_logic;
SIGNAL \ALU_1|Add1~56_combout\ : std_logic;
SIGNAL \ALU_1|Add0~56_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[28]~57_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \Mux4|outMux[27]~54_combout\ : std_logic;
SIGNAL \Mux4|outMux[27]~55_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[27]~54_combout\ : std_logic;
SIGNAL \ALU_1|Add0~54_combout\ : std_logic;
SIGNAL \ALU_1|Add1~54_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[27]~55_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \Mux4|outMux[26]~52_combout\ : std_logic;
SIGNAL \Mux4|outMux[26]~53_combout\ : std_logic;
SIGNAL \ALU_1|Add1~52_combout\ : std_logic;
SIGNAL \ALU_1|Add0~52_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[26]~53_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \Mux2|outMux[25]~25_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[25]~50_combout\ : std_logic;
SIGNAL \ALU_1|Add1~50_combout\ : std_logic;
SIGNAL \ALU_1|Add0~50_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[25]~51_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \Mux2|outMux[24]~24_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[24]~48_combout\ : std_logic;
SIGNAL \ALU_1|Add1~48_combout\ : std_logic;
SIGNAL \ALU_1|Add0~48_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[24]~49_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \Mux4|outMux[23]~46_combout\ : std_logic;
SIGNAL \Mux4|outMux[23]~47_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[23]~46_combout\ : std_logic;
SIGNAL \ALU_1|Add1~46_combout\ : std_logic;
SIGNAL \ALU_1|Add0~46_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[23]~47_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \Mux2|outMux[22]~22_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[22]~44_combout\ : std_logic;
SIGNAL \ALU_1|Add1~44_combout\ : std_logic;
SIGNAL \ALU_1|Add0~44_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[22]~45_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \Mux4|outMux[21]~42_combout\ : std_logic;
SIGNAL \Mux4|outMux[21]~43_combout\ : std_logic;
SIGNAL \ALU_1|Add1~42_combout\ : std_logic;
SIGNAL \ALU_1|Add0~42_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[21]~43_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \Mux4|outMux[20]~40_combout\ : std_logic;
SIGNAL \Mux4|outMux[20]~41_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[20]~40_combout\ : std_logic;
SIGNAL \ALU_1|Add1~40_combout\ : std_logic;
SIGNAL \ALU_1|Add0~40_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[20]~41_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \Mux4|outMux[19]~38_combout\ : std_logic;
SIGNAL \Mux4|outMux[19]~39_combout\ : std_logic;
SIGNAL \ALU_1|Add1~38_combout\ : std_logic;
SIGNAL \ALU_1|Add0~38_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[19]~39_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \Mux2|outMux[9]~9_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Mux4|outMux[7]~14_combout\ : std_logic;
SIGNAL \Mux4|outMux[7]~15_combout\ : std_logic;
SIGNAL \Mux4|outMux[5]~10_combout\ : std_logic;
SIGNAL \Mux4|outMux[5]~11_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Mux2|outMux[4]~4_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Mux4|outMux[2]~4_combout\ : std_logic;
SIGNAL \Mux4|outMux[2]~5_combout\ : std_logic;
SIGNAL \ALU_1|Add1~1\ : std_logic;
SIGNAL \ALU_1|Add1~3\ : std_logic;
SIGNAL \ALU_1|Add1~5\ : std_logic;
SIGNAL \ALU_1|Add1~7\ : std_logic;
SIGNAL \ALU_1|Add1~9\ : std_logic;
SIGNAL \ALU_1|Add1~11\ : std_logic;
SIGNAL \ALU_1|Add1~13\ : std_logic;
SIGNAL \ALU_1|Add1~15\ : std_logic;
SIGNAL \ALU_1|Add1~17\ : std_logic;
SIGNAL \ALU_1|Add1~19\ : std_logic;
SIGNAL \ALU_1|Add1~21\ : std_logic;
SIGNAL \ALU_1|Add1~23\ : std_logic;
SIGNAL \ALU_1|Add1~25\ : std_logic;
SIGNAL \ALU_1|Add1~27\ : std_logic;
SIGNAL \ALU_1|Add1~29\ : std_logic;
SIGNAL \ALU_1|Add1~31\ : std_logic;
SIGNAL \ALU_1|Add1~33\ : std_logic;
SIGNAL \ALU_1|Add1~35\ : std_logic;
SIGNAL \ALU_1|Add1~36_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[18]~36_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[18]~37_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \Mux2|outMux[17]~17_combout\ : std_logic;
SIGNAL \ALU_1|Add0~34_combout\ : std_logic;
SIGNAL \ALU_1|Add1~34_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[17]~35_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \Mux2|outMux[16]~16_combout\ : std_logic;
SIGNAL \ALU_1|Add1~32_combout\ : std_logic;
SIGNAL \ALU_1|Add0~32_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[16]~33_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \Mux4|outMux[15]~30_combout\ : std_logic;
SIGNAL \Mux4|outMux[15]~31_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[15]~30_combout\ : std_logic;
SIGNAL \ALU_1|Add1~30_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[15]~31_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \Mux2|outMux[14]~14_combout\ : std_logic;
SIGNAL \ALU_1|Add1~28_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \Mux4|outMux[14]~28_combout\ : std_logic;
SIGNAL \Mux4|outMux[14]~29_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[14]~28_combout\ : std_logic;
SIGNAL \ALU_1|Add0~28_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[14]~29_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \Mux4|outMux[13]~26_combout\ : std_logic;
SIGNAL \Mux4|outMux[13]~27_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \Mux2|outMux[13]~13_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[13]~26_combout\ : std_logic;
SIGNAL \ALU_1|Add0~26_combout\ : std_logic;
SIGNAL \ALU_1|Add1~26_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[13]~27_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \Mux4|outMux[12]~24_combout\ : std_logic;
SIGNAL \Mux4|outMux[12]~25_combout\ : std_logic;
SIGNAL \ALU_1|Add0~24_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[12]~24_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[12]~25_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \Mux2|outMux[11]~11_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[11]~22_combout\ : std_logic;
SIGNAL \ALU_1|Add0~22_combout\ : std_logic;
SIGNAL \ALU_1|Add1~22_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[11]~23_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mux4|outMux[3]~6_combout\ : std_logic;
SIGNAL \Mux4|outMux[3]~7_combout\ : std_logic;
SIGNAL \ALU_1|Add0~1\ : std_logic;
SIGNAL \ALU_1|Add0~3\ : std_logic;
SIGNAL \ALU_1|Add0~5\ : std_logic;
SIGNAL \ALU_1|Add0~7\ : std_logic;
SIGNAL \ALU_1|Add0~9\ : std_logic;
SIGNAL \ALU_1|Add0~11\ : std_logic;
SIGNAL \ALU_1|Add0~13\ : std_logic;
SIGNAL \ALU_1|Add0~15\ : std_logic;
SIGNAL \ALU_1|Add0~17\ : std_logic;
SIGNAL \ALU_1|Add0~19\ : std_logic;
SIGNAL \ALU_1|Add0~20_combout\ : std_logic;
SIGNAL \ALU_1|Add1~20_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[10]~21_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \Mux4|outMux[9]~18_combout\ : std_logic;
SIGNAL \Mux4|outMux[9]~19_combout\ : std_logic;
SIGNAL \ALU_1|Add0~18_combout\ : std_logic;
SIGNAL \ALU_1|Add1~18_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[9]~19_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \Mux4|outMux[8]~16_combout\ : std_logic;
SIGNAL \Mux4|outMux[8]~17_combout\ : std_logic;
SIGNAL \ALU_1|Add1~16_combout\ : std_logic;
SIGNAL \ALU_1|Add0~16_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[8]~17_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Mux2|outMux[7]~7_combout\ : std_logic;
SIGNAL \ALU_1|Add0~14_combout\ : std_logic;
SIGNAL \ALU_1|Add1~14_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[7]~15_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Mux4|outMux[6]~12_combout\ : std_logic;
SIGNAL \Mux4|outMux[6]~13_combout\ : std_logic;
SIGNAL \ALU_1|Add1~12_combout\ : std_logic;
SIGNAL \ALU_1|Add0~12_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[6]~13_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Mux2|outMux[5]~5_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[5]~10_combout\ : std_logic;
SIGNAL \ALU_1|Add0~10_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[5]~11_combout\ : std_logic;
SIGNAL \RF|registers_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Mux4|outMux[4]~8_combout\ : std_logic;
SIGNAL \Mux4|outMux[4]~9_combout\ : std_logic;
SIGNAL \ALU_1|Add0~8_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[4]~8_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[4]~9_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mux2|outMux[3]~3_combout\ : std_logic;
SIGNAL \ALU_1|Add1~6_combout\ : std_logic;
SIGNAL \ALU_1|Add0~6_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[3]~6_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[3]~7_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Mux2|outMux[2]~2_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[2]~4_combout\ : std_logic;
SIGNAL \ALU_1|Add0~4_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[2]~5_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Mux2|outMux[1]~1_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[1]~2_combout\ : std_logic;
SIGNAL \ALU_1|Add1~2_combout\ : std_logic;
SIGNAL \ALU_1|Add0~2_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[1]~3_combout\ : std_logic;
SIGNAL \RF|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Mux2|outMux[0]~0_combout\ : std_logic;
SIGNAL \ALU_1|Add0~0_combout\ : std_logic;
SIGNAL \ALU_1|Add1~0_combout\ : std_logic;
SIGNAL \ALU_1|ALUOut[0]~1_combout\ : std_logic;
SIGNAL \Instr~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALUControl~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Registrador_E|ALUControlE\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Registrador_W|ALUOutW\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Registrador_E|SignImmE\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Registrador_E|RsE\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Registrador_W|WriteRegW\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Registrador_E|RtE\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Registrador_D|InstrD\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clk~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_Instr <= Instr;
ww_RegDst <= RegDst;
ww_ALUSrc <= ALUSrc;
ww_RegWrite <= RegWrite;
Op <= ww_Op;
Funct <= ww_Funct;
ww_ALUControl <= ALUControl;
ww_FowardAE <= FowardAE;
ww_FowardBE <= FowardBE;
RegWriteW <= ww_RegWriteW;
WriteRegW <= ww_WriteRegW;
RsE <= ww_RsE;
RtE <= ww_RtE;
AluOutW <= ww_AluOutW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RF|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\Registrador_W|ALUOutW\(31) & \Registrador_W|ALUOutW\(30) & \Registrador_W|ALUOutW\(29) & \Registrador_W|ALUOutW\(28) & \Registrador_W|ALUOutW\(27) & \Registrador_W|ALUOutW\(26) & 
\Registrador_W|ALUOutW\(25) & \Registrador_W|ALUOutW\(24) & \Registrador_W|ALUOutW\(23) & \Registrador_W|ALUOutW\(22) & \Registrador_W|ALUOutW\(21) & \Registrador_W|ALUOutW\(20) & \Registrador_W|ALUOutW\(19) & \Registrador_W|ALUOutW\(18) & 
\Registrador_W|ALUOutW\(17) & \Registrador_W|ALUOutW\(16) & \Registrador_W|ALUOutW\(15) & \Registrador_W|ALUOutW\(14) & \Registrador_W|ALUOutW\(13) & \Registrador_W|ALUOutW\(12) & \Registrador_W|ALUOutW\(11) & \Registrador_W|ALUOutW\(10) & 
\Registrador_W|ALUOutW\(9) & \Registrador_W|ALUOutW\(8) & \Registrador_W|ALUOutW\(7) & \Registrador_W|ALUOutW\(6) & \Registrador_W|ALUOutW\(5) & \Registrador_W|ALUOutW\(4) & \Registrador_W|ALUOutW\(3) & \Registrador_W|ALUOutW\(2) & 
\Registrador_W|ALUOutW\(1) & \Registrador_W|ALUOutW\(0));

\RF|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Registrador_W|WriteRegW\(4) & \Registrador_W|WriteRegW\(3) & \Registrador_W|WriteRegW\(2) & \Registrador_W|WriteRegW\(1) & \Registrador_W|WriteRegW\(0));

\RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\Instr~combout\(20) & \Instr~combout\(19) & \Instr~combout\(18) & \Instr~combout\(17) & \Instr~combout\(16));

\RF|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\RF|registers_rtl_1|auto_generated|ram_block1a1\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\RF|registers_rtl_1|auto_generated|ram_block1a2\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\RF|registers_rtl_1|auto_generated|ram_block1a3\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\RF|registers_rtl_1|auto_generated|ram_block1a4\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\RF|registers_rtl_1|auto_generated|ram_block1a5\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\RF|registers_rtl_1|auto_generated|ram_block1a6\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\RF|registers_rtl_1|auto_generated|ram_block1a7\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\RF|registers_rtl_1|auto_generated|ram_block1a8\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\RF|registers_rtl_1|auto_generated|ram_block1a9\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\RF|registers_rtl_1|auto_generated|ram_block1a10\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\RF|registers_rtl_1|auto_generated|ram_block1a11\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\RF|registers_rtl_1|auto_generated|ram_block1a12\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\RF|registers_rtl_1|auto_generated|ram_block1a13\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\RF|registers_rtl_1|auto_generated|ram_block1a14\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\RF|registers_rtl_1|auto_generated|ram_block1a15\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\RF|registers_rtl_1|auto_generated|ram_block1a16\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\RF|registers_rtl_1|auto_generated|ram_block1a17\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\RF|registers_rtl_1|auto_generated|ram_block1a18\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\RF|registers_rtl_1|auto_generated|ram_block1a19\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\RF|registers_rtl_1|auto_generated|ram_block1a20\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\RF|registers_rtl_1|auto_generated|ram_block1a21\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\RF|registers_rtl_1|auto_generated|ram_block1a22\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\RF|registers_rtl_1|auto_generated|ram_block1a23\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\RF|registers_rtl_1|auto_generated|ram_block1a24\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\RF|registers_rtl_1|auto_generated|ram_block1a25\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\RF|registers_rtl_1|auto_generated|ram_block1a26\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\RF|registers_rtl_1|auto_generated|ram_block1a27\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\RF|registers_rtl_1|auto_generated|ram_block1a28\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\RF|registers_rtl_1|auto_generated|ram_block1a29\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\RF|registers_rtl_1|auto_generated|ram_block1a30\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\RF|registers_rtl_1|auto_generated|ram_block1a31\ <= \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\RF|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\Registrador_W|ALUOutW\(31) & \Registrador_W|ALUOutW\(30) & \Registrador_W|ALUOutW\(29) & \Registrador_W|ALUOutW\(28) & \Registrador_W|ALUOutW\(27) & \Registrador_W|ALUOutW\(26) & 
\Registrador_W|ALUOutW\(25) & \Registrador_W|ALUOutW\(24) & \Registrador_W|ALUOutW\(23) & \Registrador_W|ALUOutW\(22) & \Registrador_W|ALUOutW\(21) & \Registrador_W|ALUOutW\(20) & \Registrador_W|ALUOutW\(19) & \Registrador_W|ALUOutW\(18) & 
\Registrador_W|ALUOutW\(17) & \Registrador_W|ALUOutW\(16) & \Registrador_W|ALUOutW\(15) & \Registrador_W|ALUOutW\(14) & \Registrador_W|ALUOutW\(13) & \Registrador_W|ALUOutW\(12) & \Registrador_W|ALUOutW\(11) & \Registrador_W|ALUOutW\(10) & 
\Registrador_W|ALUOutW\(9) & \Registrador_W|ALUOutW\(8) & \Registrador_W|ALUOutW\(7) & \Registrador_W|ALUOutW\(6) & \Registrador_W|ALUOutW\(5) & \Registrador_W|ALUOutW\(4) & \Registrador_W|ALUOutW\(3) & \Registrador_W|ALUOutW\(2) & 
\Registrador_W|ALUOutW\(1) & \Registrador_W|ALUOutW\(0));

\RF|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Registrador_W|WriteRegW\(4) & \Registrador_W|WriteRegW\(3) & \Registrador_W|WriteRegW\(2) & \Registrador_W|WriteRegW\(1) & \Registrador_W|WriteRegW\(0));

\RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\Instr~combout\(25) & \Instr~combout\(24) & \Instr~combout\(23) & \Instr~combout\(22) & \Instr~combout\(21));

\RF|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\RF|registers_rtl_0|auto_generated|ram_block1a1\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\RF|registers_rtl_0|auto_generated|ram_block1a2\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\RF|registers_rtl_0|auto_generated|ram_block1a3\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\RF|registers_rtl_0|auto_generated|ram_block1a4\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\RF|registers_rtl_0|auto_generated|ram_block1a5\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\RF|registers_rtl_0|auto_generated|ram_block1a6\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\RF|registers_rtl_0|auto_generated|ram_block1a7\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\RF|registers_rtl_0|auto_generated|ram_block1a8\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\RF|registers_rtl_0|auto_generated|ram_block1a9\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\RF|registers_rtl_0|auto_generated|ram_block1a10\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\RF|registers_rtl_0|auto_generated|ram_block1a11\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\RF|registers_rtl_0|auto_generated|ram_block1a12\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\RF|registers_rtl_0|auto_generated|ram_block1a13\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\RF|registers_rtl_0|auto_generated|ram_block1a14\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\RF|registers_rtl_0|auto_generated|ram_block1a15\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\RF|registers_rtl_0|auto_generated|ram_block1a16\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\RF|registers_rtl_0|auto_generated|ram_block1a17\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\RF|registers_rtl_0|auto_generated|ram_block1a18\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\RF|registers_rtl_0|auto_generated|ram_block1a19\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\RF|registers_rtl_0|auto_generated|ram_block1a20\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\RF|registers_rtl_0|auto_generated|ram_block1a21\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\RF|registers_rtl_0|auto_generated|ram_block1a22\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\RF|registers_rtl_0|auto_generated|ram_block1a23\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\RF|registers_rtl_0|auto_generated|ram_block1a24\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\RF|registers_rtl_0|auto_generated|ram_block1a25\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\RF|registers_rtl_0|auto_generated|ram_block1a26\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\RF|registers_rtl_0|auto_generated|ram_block1a27\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\RF|registers_rtl_0|auto_generated|ram_block1a28\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\RF|registers_rtl_0|auto_generated|ram_block1a29\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\RF|registers_rtl_0|auto_generated|ram_block1a30\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\RF|registers_rtl_0|auto_generated|ram_block1a31\ <= \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_clk~clkctrl_outclk\ <= NOT \clk~clkctrl_outclk\;

-- Location: M4K_X13_Y26
\RF|registers_rtl_1|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Datapath.ram0_register_file_87c776fc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "register_file:RF|altsyncram:registers_rtl_1|altsyncram_dfh1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 32,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 32,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \Registrador_W|RegWriteW~regout\,
	portbrewe => VCC,
	clk0 => \ALT_INV_clk~clkctrl_outclk\,
	clk1 => \clk~clkctrl_outclk\,
	ena0 => \Registrador_W|RegWriteW~regout\,
	portadatain => \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M4K_X13_Y27
\RF|registers_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Datapath.ram0_register_file_87c776fc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "register_file:RF|altsyncram:registers_rtl_0|altsyncram_dfh1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 32,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 32,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \Registrador_W|RegWriteW~regout\,
	portbrewe => VCC,
	clk0 => \ALT_INV_clk~clkctrl_outclk\,
	clk1 => \clk~clkctrl_outclk\,
	ena0 => \Registrador_W|RegWriteW~regout\,
	portadatain => \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X10_Y26_N4
\ALU_1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~4_combout\ = ((\Mux2|outMux[2]~2_combout\ $ (\Mux4|outMux[2]~5_combout\ $ (!\ALU_1|Add1~3\)))) # (GND)
-- \ALU_1|Add1~5\ = CARRY((\Mux2|outMux[2]~2_combout\ & ((\Mux4|outMux[2]~5_combout\) # (!\ALU_1|Add1~3\))) # (!\Mux2|outMux[2]~2_combout\ & (\Mux4|outMux[2]~5_combout\ & !\ALU_1|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[2]~2_combout\,
	datab => \Mux4|outMux[2]~5_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~3\,
	combout => \ALU_1|Add1~4_combout\,
	cout => \ALU_1|Add1~5\);

-- Location: LCCOMB_X10_Y26_N8
\ALU_1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~8_combout\ = ((\Mux4|outMux[4]~9_combout\ $ (\Mux2|outMux[4]~4_combout\ $ (!\ALU_1|Add1~7\)))) # (GND)
-- \ALU_1|Add1~9\ = CARRY((\Mux4|outMux[4]~9_combout\ & ((\Mux2|outMux[4]~4_combout\) # (!\ALU_1|Add1~7\))) # (!\Mux4|outMux[4]~9_combout\ & (\Mux2|outMux[4]~4_combout\ & !\ALU_1|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[4]~9_combout\,
	datab => \Mux2|outMux[4]~4_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~7\,
	combout => \ALU_1|Add1~8_combout\,
	cout => \ALU_1|Add1~9\);

-- Location: LCCOMB_X10_Y26_N10
\ALU_1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~10_combout\ = (\Mux2|outMux[5]~5_combout\ & ((\Mux4|outMux[5]~11_combout\ & (\ALU_1|Add1~9\ & VCC)) # (!\Mux4|outMux[5]~11_combout\ & (!\ALU_1|Add1~9\)))) # (!\Mux2|outMux[5]~5_combout\ & ((\Mux4|outMux[5]~11_combout\ & (!\ALU_1|Add1~9\)) # 
-- (!\Mux4|outMux[5]~11_combout\ & ((\ALU_1|Add1~9\) # (GND)))))
-- \ALU_1|Add1~11\ = CARRY((\Mux2|outMux[5]~5_combout\ & (!\Mux4|outMux[5]~11_combout\ & !\ALU_1|Add1~9\)) # (!\Mux2|outMux[5]~5_combout\ & ((!\ALU_1|Add1~9\) # (!\Mux4|outMux[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[5]~5_combout\,
	datab => \Mux4|outMux[5]~11_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~9\,
	combout => \ALU_1|Add1~10_combout\,
	cout => \ALU_1|Add1~11\);

-- Location: LCCOMB_X10_Y26_N24
\ALU_1|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~24_combout\ = ((\Mux2|outMux[12]~12_combout\ $ (\Mux4|outMux[12]~25_combout\ $ (!\ALU_1|Add1~23\)))) # (GND)
-- \ALU_1|Add1~25\ = CARRY((\Mux2|outMux[12]~12_combout\ & ((\Mux4|outMux[12]~25_combout\) # (!\ALU_1|Add1~23\))) # (!\Mux2|outMux[12]~12_combout\ & (\Mux4|outMux[12]~25_combout\ & !\ALU_1|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[12]~12_combout\,
	datab => \Mux4|outMux[12]~25_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~23\,
	combout => \ALU_1|Add1~24_combout\,
	cout => \ALU_1|Add1~25\);

-- Location: LCCOMB_X11_Y26_N30
\ALU_1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~30_combout\ = (\Mux2|outMux[15]~15_combout\ & ((\Mux4|outMux[15]~31_combout\ & (!\ALU_1|Add0~29\)) # (!\Mux4|outMux[15]~31_combout\ & (\ALU_1|Add0~29\ & VCC)))) # (!\Mux2|outMux[15]~15_combout\ & ((\Mux4|outMux[15]~31_combout\ & 
-- ((\ALU_1|Add0~29\) # (GND))) # (!\Mux4|outMux[15]~31_combout\ & (!\ALU_1|Add0~29\))))
-- \ALU_1|Add0~31\ = CARRY((\Mux2|outMux[15]~15_combout\ & (\Mux4|outMux[15]~31_combout\ & !\ALU_1|Add0~29\)) # (!\Mux2|outMux[15]~15_combout\ & ((\Mux4|outMux[15]~31_combout\) # (!\ALU_1|Add0~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[15]~15_combout\,
	datab => \Mux4|outMux[15]~31_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~29\,
	combout => \ALU_1|Add0~30_combout\,
	cout => \ALU_1|Add0~31\);

-- Location: LCCOMB_X11_Y25_N4
\ALU_1|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~36_combout\ = ((\Mux4|outMux[18]~37_combout\ $ (\Mux2|outMux[18]~18_combout\ $ (\ALU_1|Add0~35\)))) # (GND)
-- \ALU_1|Add0~37\ = CARRY((\Mux4|outMux[18]~37_combout\ & (\Mux2|outMux[18]~18_combout\ & !\ALU_1|Add0~35\)) # (!\Mux4|outMux[18]~37_combout\ & ((\Mux2|outMux[18]~18_combout\) # (!\ALU_1|Add0~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[18]~37_combout\,
	datab => \Mux2|outMux[18]~18_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~35\,
	combout => \ALU_1|Add0~36_combout\,
	cout => \ALU_1|Add0~37\);

-- Location: LCCOMB_X12_Y26_N0
\Mux4|outMux[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[0]~0_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(0))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardBE~combout\,
	datab => \Registrador_W|ALUOutW\(0),
	datac => \RF|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[0]~0_combout\);

-- Location: LCFF_X12_Y26_N27
\Registrador_E|SignImmE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Registrador_D|InstrD\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|SignImmE\(0));

-- Location: LCCOMB_X12_Y26_N26
\Mux4|outMux[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[0]~1_combout\ = (\Mux4|outMux[0]~0_combout\) # ((\Registrador_E|ALUSrcE~regout\ & \Registrador_E|SignImmE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_E|ALUSrcE~regout\,
	datac => \Registrador_E|SignImmE\(0),
	datad => \Mux4|outMux[0]~0_combout\,
	combout => \Mux4|outMux[0]~1_combout\);

-- Location: LCCOMB_X12_Y26_N30
\ALU_1|ALUOut[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[0]~0_combout\ = (\Registrador_E|ALUControlE\(1) & (\Registrador_E|ALUControlE\(0))) # (!\Registrador_E|ALUControlE\(1) & ((\Registrador_E|ALUControlE\(0) & ((\Mux2|outMux[0]~0_combout\) # (\Mux4|outMux[0]~1_combout\))) # 
-- (!\Registrador_E|ALUControlE\(0) & (\Mux2|outMux[0]~0_combout\ & \Mux4|outMux[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \Registrador_E|ALUControlE\(0),
	datac => \Mux2|outMux[0]~0_combout\,
	datad => \Mux4|outMux[0]~1_combout\,
	combout => \ALU_1|ALUOut[0]~0_combout\);

-- Location: LCCOMB_X12_Y26_N10
\Mux4|outMux[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[1]~2_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(1))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardBE~combout\,
	datab => \Registrador_E|ALUSrcE~regout\,
	datac => \Registrador_W|ALUOutW\(1),
	datad => \RF|registers_rtl_1|auto_generated|ram_block1a1\,
	combout => \Mux4|outMux[1]~2_combout\);

-- Location: LCFF_X12_Y26_N17
\Registrador_E|SignImmE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Registrador_D|InstrD\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|SignImmE\(1));

-- Location: LCCOMB_X12_Y26_N16
\Mux4|outMux[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[1]~3_combout\ = (\Mux4|outMux[1]~2_combout\) # ((\Registrador_E|ALUSrcE~regout\ & \Registrador_E|SignImmE\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_E|ALUSrcE~regout\,
	datac => \Registrador_E|SignImmE\(1),
	datad => \Mux4|outMux[1]~2_combout\,
	combout => \Mux4|outMux[1]~3_combout\);

-- Location: LCCOMB_X9_Y26_N26
\Mux2|outMux[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[6]~6_combout\ = (\FowardAE~combout\ & ((\Registrador_W|ALUOutW\(6)))) # (!\FowardAE~combout\ & (\RF|registers_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FowardAE~combout\,
	datac => \RF|registers_rtl_0|auto_generated|ram_block1a6\,
	datad => \Registrador_W|ALUOutW\(6),
	combout => \Mux2|outMux[6]~6_combout\);

-- Location: LCCOMB_X8_Y26_N6
\ALU_1|ALUOut[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[6]~12_combout\ = (\Mux4|outMux[6]~13_combout\ & ((\Registrador_E|ALUControlE\(0)) # ((!\Registrador_E|ALUControlE\(1) & \Mux2|outMux[6]~6_combout\)))) # (!\Mux4|outMux[6]~13_combout\ & (\Registrador_E|ALUControlE\(0) & 
-- ((\Registrador_E|ALUControlE\(1)) # (\Mux2|outMux[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[6]~13_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \Mux2|outMux[6]~6_combout\,
	datad => \Registrador_E|ALUControlE\(0),
	combout => \ALU_1|ALUOut[6]~12_combout\);

-- Location: LCCOMB_X11_Y27_N10
\ALU_1|ALUOut[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[7]~14_combout\ = (\Mux2|outMux[7]~7_combout\ & ((\Registrador_E|ALUControlE\(0)) # ((!\Registrador_E|ALUControlE\(1) & \Mux4|outMux[7]~15_combout\)))) # (!\Mux2|outMux[7]~7_combout\ & (\Registrador_E|ALUControlE\(0) & 
-- ((\Registrador_E|ALUControlE\(1)) # (\Mux4|outMux[7]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[7]~7_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \Mux4|outMux[7]~15_combout\,
	datad => \Registrador_E|ALUControlE\(0),
	combout => \ALU_1|ALUOut[7]~14_combout\);

-- Location: LCCOMB_X14_Y26_N14
\Mux2|outMux[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[8]~8_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(8))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_W|ALUOutW\(8),
	datab => \FowardAE~combout\,
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a8\,
	combout => \Mux2|outMux[8]~8_combout\);

-- Location: LCCOMB_X14_Y26_N16
\ALU_1|ALUOut[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[8]~16_combout\ = (\Mux2|outMux[8]~8_combout\ & ((\Registrador_E|ALUControlE\(0)) # ((\Mux4|outMux[8]~17_combout\ & !\Registrador_E|ALUControlE\(1))))) # (!\Mux2|outMux[8]~8_combout\ & (\Registrador_E|ALUControlE\(0) & 
-- ((\Mux4|outMux[8]~17_combout\) # (\Registrador_E|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[8]~8_combout\,
	datab => \Mux4|outMux[8]~17_combout\,
	datac => \Registrador_E|ALUControlE\(1),
	datad => \Registrador_E|ALUControlE\(0),
	combout => \ALU_1|ALUOut[8]~16_combout\);

-- Location: LCCOMB_X10_Y27_N20
\ALU_1|ALUOut[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[9]~18_combout\ = (\Mux4|outMux[9]~19_combout\ & ((\Registrador_E|ALUControlE\(0)) # ((\Mux2|outMux[9]~9_combout\ & !\Registrador_E|ALUControlE\(1))))) # (!\Mux4|outMux[9]~19_combout\ & (\Registrador_E|ALUControlE\(0) & 
-- ((\Mux2|outMux[9]~9_combout\) # (\Registrador_E|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[9]~19_combout\,
	datab => \Mux2|outMux[9]~9_combout\,
	datac => \Registrador_E|ALUControlE\(1),
	datad => \Registrador_E|ALUControlE\(0),
	combout => \ALU_1|ALUOut[9]~18_combout\);

-- Location: LCCOMB_X14_Y26_N2
\Mux2|outMux[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[10]~10_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(10))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardAE~combout\,
	datac => \Registrador_W|ALUOutW\(10),
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a10\,
	combout => \Mux2|outMux[10]~10_combout\);

-- Location: LCCOMB_X14_Y26_N8
\ALU_1|ALUOut[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[10]~20_combout\ = (\Mux4|outMux[10]~21_combout\ & ((\Registrador_E|ALUControlE\(0)) # ((!\Registrador_E|ALUControlE\(1) & \Mux2|outMux[10]~10_combout\)))) # (!\Mux4|outMux[10]~21_combout\ & (\Registrador_E|ALUControlE\(0) & 
-- ((\Registrador_E|ALUControlE\(1)) # (\Mux2|outMux[10]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[10]~21_combout\,
	datab => \Registrador_E|ALUControlE\(0),
	datac => \Registrador_E|ALUControlE\(1),
	datad => \Mux2|outMux[10]~10_combout\,
	combout => \ALU_1|ALUOut[10]~20_combout\);

-- Location: LCCOMB_X9_Y26_N24
\Mux4|outMux[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[11]~22_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(11))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a11\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardBE~combout\,
	datab => \Registrador_W|ALUOutW\(11),
	datac => \Registrador_E|ALUSrcE~regout\,
	datad => \RF|registers_rtl_1|auto_generated|ram_block1a11\,
	combout => \Mux4|outMux[11]~22_combout\);

-- Location: LCCOMB_X10_Y28_N2
\Mux2|outMux[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[12]~12_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(12))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardAE~combout\,
	datac => \Registrador_W|ALUOutW\(12),
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a12\,
	combout => \Mux2|outMux[12]~12_combout\);

-- Location: LCCOMB_X10_Y27_N6
\Mux2|outMux[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[15]~15_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(15))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FowardAE~combout\,
	datac => \Registrador_W|ALUOutW\(15),
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a15\,
	combout => \Mux2|outMux[15]~15_combout\);

-- Location: LCCOMB_X11_Y27_N20
\ALU_1|ALUOut[16]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[16]~32_combout\ = (\Registrador_E|ALUControlE\(0) & ((\Mux4|outMux[16]~33_combout\) # ((\Registrador_E|ALUControlE\(1)) # (\Mux2|outMux[16]~16_combout\)))) # (!\Registrador_E|ALUControlE\(0) & (\Mux4|outMux[16]~33_combout\ & 
-- (!\Registrador_E|ALUControlE\(1) & \Mux2|outMux[16]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(0),
	datab => \Mux4|outMux[16]~33_combout\,
	datac => \Registrador_E|ALUControlE\(1),
	datad => \Mux2|outMux[16]~16_combout\,
	combout => \ALU_1|ALUOut[16]~32_combout\);

-- Location: LCCOMB_X9_Y25_N22
\Mux4|outMux[17]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[17]~34_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(17))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a17\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardBE~combout\,
	datab => \Registrador_W|ALUOutW\(17),
	datac => \Registrador_E|ALUSrcE~regout\,
	datad => \RF|registers_rtl_1|auto_generated|ram_block1a17\,
	combout => \Mux4|outMux[17]~34_combout\);

-- Location: LCCOMB_X9_Y25_N8
\Mux4|outMux[17]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[17]~35_combout\ = (\Mux4|outMux[17]~34_combout\) # ((\Registrador_E|ALUSrcE~regout\ & \Registrador_E|SignImmE\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_E|ALUSrcE~regout\,
	datac => \Registrador_E|SignImmE\(15),
	datad => \Mux4|outMux[17]~34_combout\,
	combout => \Mux4|outMux[17]~35_combout\);

-- Location: LCCOMB_X8_Y25_N14
\ALU_1|ALUOut[17]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[17]~34_combout\ = (\Registrador_E|ALUControlE\(1) & (((\Registrador_E|ALUControlE\(0))))) # (!\Registrador_E|ALUControlE\(1) & ((\Mux2|outMux[17]~17_combout\ & ((\Mux4|outMux[17]~35_combout\) # (\Registrador_E|ALUControlE\(0)))) # 
-- (!\Mux2|outMux[17]~17_combout\ & (\Mux4|outMux[17]~35_combout\ & \Registrador_E|ALUControlE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \Mux2|outMux[17]~17_combout\,
	datac => \Mux4|outMux[17]~35_combout\,
	datad => \Registrador_E|ALUControlE\(0),
	combout => \ALU_1|ALUOut[17]~34_combout\);

-- Location: LCCOMB_X14_Y25_N16
\ALU_1|ALUOut[19]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[19]~38_combout\ = (\Registrador_E|ALUControlE\(0) & ((\Mux4|outMux[19]~39_combout\) # ((\Registrador_E|ALUControlE\(1)) # (\Mux2|outMux[19]~19_combout\)))) # (!\Registrador_E|ALUControlE\(0) & (\Mux4|outMux[19]~39_combout\ & 
-- (!\Registrador_E|ALUControlE\(1) & \Mux2|outMux[19]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(0),
	datab => \Mux4|outMux[19]~39_combout\,
	datac => \Registrador_E|ALUControlE\(1),
	datad => \Mux2|outMux[19]~19_combout\,
	combout => \ALU_1|ALUOut[19]~38_combout\);

-- Location: LCCOMB_X8_Y25_N12
\ALU_1|ALUOut[21]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[21]~42_combout\ = (\Mux4|outMux[21]~43_combout\ & ((\Registrador_E|ALUControlE\(0)) # ((\Mux2|outMux[21]~21_combout\ & !\Registrador_E|ALUControlE\(1))))) # (!\Mux4|outMux[21]~43_combout\ & (\Registrador_E|ALUControlE\(0) & 
-- ((\Mux2|outMux[21]~21_combout\) # (\Registrador_E|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[21]~43_combout\,
	datab => \Mux2|outMux[21]~21_combout\,
	datac => \Registrador_E|ALUControlE\(1),
	datad => \Registrador_E|ALUControlE\(0),
	combout => \ALU_1|ALUOut[21]~42_combout\);

-- Location: LCCOMB_X10_Y27_N14
\ALU_1|ALUOut[26]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[26]~52_combout\ = (\Mux4|outMux[26]~53_combout\ & ((\Registrador_E|ALUControlE\(0)) # ((\Mux2|outMux[26]~26_combout\ & !\Registrador_E|ALUControlE\(1))))) # (!\Mux4|outMux[26]~53_combout\ & (\Registrador_E|ALUControlE\(0) & 
-- ((\Mux2|outMux[26]~26_combout\) # (\Registrador_E|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[26]~53_combout\,
	datab => \Mux2|outMux[26]~26_combout\,
	datac => \Registrador_E|ALUControlE\(1),
	datad => \Registrador_E|ALUControlE\(0),
	combout => \ALU_1|ALUOut[26]~52_combout\);

-- Location: LCCOMB_X14_Y25_N24
\Mux2|outMux[29]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[29]~29_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(29))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardAE~combout\,
	datab => \Registrador_W|ALUOutW\(29),
	datac => \RF|registers_rtl_0|auto_generated|ram_block1a29\,
	combout => \Mux2|outMux[29]~29_combout\);

-- Location: LCCOMB_X14_Y25_N30
\ALU_1|ALUOut[29]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[29]~58_combout\ = (\Mux4|outMux[29]~59_combout\ & ((\Registrador_E|ALUControlE\(0)) # ((\Mux2|outMux[29]~29_combout\ & !\Registrador_E|ALUControlE\(1))))) # (!\Mux4|outMux[29]~59_combout\ & (\Registrador_E|ALUControlE\(0) & 
-- ((\Mux2|outMux[29]~29_combout\) # (\Registrador_E|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[29]~59_combout\,
	datab => \Mux2|outMux[29]~29_combout\,
	datac => \Registrador_E|ALUControlE\(1),
	datad => \Registrador_E|ALUControlE\(0),
	combout => \ALU_1|ALUOut[29]~58_combout\);

-- Location: LCCOMB_X9_Y25_N16
\ALU_1|ALUOut[30]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[30]~60_combout\ = (\Registrador_E|ALUControlE\(0) & ((\Mux4|outMux[30]~61_combout\) # ((\Registrador_E|ALUControlE\(1)) # (\Mux2|outMux[30]~30_combout\)))) # (!\Registrador_E|ALUControlE\(0) & (\Mux4|outMux[30]~61_combout\ & 
-- (!\Registrador_E|ALUControlE\(1) & \Mux2|outMux[30]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(0),
	datab => \Mux4|outMux[30]~61_combout\,
	datac => \Registrador_E|ALUControlE\(1),
	datad => \Mux2|outMux[30]~30_combout\,
	combout => \ALU_1|ALUOut[30]~60_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[26]~I\ : cycloneii_io
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
	padio => ww_Instr(26),
	combout => \Instr~combout\(26));

-- Location: LCCOMB_X30_Y35_N0
\Registrador_D|InstrD[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[26]~feeder_combout\ = \Instr~combout\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(26),
	combout => \Registrador_D|InstrD[26]~feeder_combout\);

-- Location: LCFF_X30_Y35_N1
\Registrador_D|InstrD[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(26));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[27]~I\ : cycloneii_io
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
	padio => ww_Instr(27),
	combout => \Instr~combout\(27));

-- Location: LCCOMB_X30_Y35_N22
\Registrador_D|InstrD[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[27]~feeder_combout\ = \Instr~combout\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(27),
	combout => \Registrador_D|InstrD[27]~feeder_combout\);

-- Location: LCFF_X30_Y35_N23
\Registrador_D|InstrD[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(27));

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[28]~I\ : cycloneii_io
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
	padio => ww_Instr(28),
	combout => \Instr~combout\(28));

-- Location: LCCOMB_X1_Y2_N28
\Registrador_D|InstrD[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[28]~feeder_combout\ = \Instr~combout\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(28),
	combout => \Registrador_D|InstrD[28]~feeder_combout\);

-- Location: LCFF_X1_Y2_N29
\Registrador_D|InstrD[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(28));

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[29]~I\ : cycloneii_io
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
	padio => ww_Instr(29),
	combout => \Instr~combout\(29));

-- Location: LCCOMB_X1_Y2_N18
\Registrador_D|InstrD[29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[29]~feeder_combout\ = \Instr~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(29),
	combout => \Registrador_D|InstrD[29]~feeder_combout\);

-- Location: LCFF_X1_Y2_N19
\Registrador_D|InstrD[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(29));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[30]~I\ : cycloneii_io
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
	padio => ww_Instr(30),
	combout => \Instr~combout\(30));

-- Location: LCCOMB_X1_Y5_N20
\Registrador_D|InstrD[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[30]~feeder_combout\ = \Instr~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(30),
	combout => \Registrador_D|InstrD[30]~feeder_combout\);

-- Location: LCFF_X1_Y5_N21
\Registrador_D|InstrD[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(30));

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[31]~I\ : cycloneii_io
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
	padio => ww_Instr(31),
	combout => \Instr~combout\(31));

-- Location: LCCOMB_X64_Y17_N0
\Registrador_D|InstrD[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[31]~feeder_combout\ = \Instr~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(31),
	combout => \Registrador_D|InstrD[31]~feeder_combout\);

-- Location: LCFF_X64_Y17_N1
\Registrador_D|InstrD[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(31));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[0]~I\ : cycloneii_io
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
	padio => ww_Instr(0),
	combout => \Instr~combout\(0));

-- Location: LCCOMB_X1_Y25_N16
\Registrador_D|InstrD[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[0]~feeder_combout\ = \Instr~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(0),
	combout => \Registrador_D|InstrD[0]~feeder_combout\);

-- Location: LCFF_X1_Y25_N17
\Registrador_D|InstrD[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(0));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[1]~I\ : cycloneii_io
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
	padio => ww_Instr(1),
	combout => \Instr~combout\(1));

-- Location: LCCOMB_X1_Y25_N10
\Registrador_D|InstrD[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[1]~feeder_combout\ = \Instr~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(1),
	combout => \Registrador_D|InstrD[1]~feeder_combout\);

-- Location: LCFF_X1_Y25_N11
\Registrador_D|InstrD[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(1));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[2]~I\ : cycloneii_io
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
	padio => ww_Instr(2),
	combout => \Instr~combout\(2));

-- Location: LCCOMB_X1_Y25_N0
\Registrador_D|InstrD[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[2]~feeder_combout\ = \Instr~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(2),
	combout => \Registrador_D|InstrD[2]~feeder_combout\);

-- Location: LCFF_X1_Y25_N1
\Registrador_D|InstrD[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(2));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[3]~I\ : cycloneii_io
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
	padio => ww_Instr(3),
	combout => \Instr~combout\(3));

-- Location: LCCOMB_X1_Y26_N20
\Registrador_D|InstrD[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[3]~feeder_combout\ = \Instr~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(3),
	combout => \Registrador_D|InstrD[3]~feeder_combout\);

-- Location: LCFF_X1_Y26_N21
\Registrador_D|InstrD[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(3));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[4]~I\ : cycloneii_io
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
	padio => ww_Instr(4),
	combout => \Instr~combout\(4));

-- Location: LCCOMB_X1_Y28_N0
\Registrador_D|InstrD[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[4]~feeder_combout\ = \Instr~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(4),
	combout => \Registrador_D|InstrD[4]~feeder_combout\);

-- Location: LCFF_X1_Y28_N1
\Registrador_D|InstrD[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(4));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[5]~I\ : cycloneii_io
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
	padio => ww_Instr(5),
	combout => \Instr~combout\(5));

-- Location: LCCOMB_X1_Y26_N26
\Registrador_D|InstrD[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[5]~feeder_combout\ = \Instr~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(5),
	combout => \Registrador_D|InstrD[5]~feeder_combout\);

-- Location: LCFF_X1_Y26_N27
\Registrador_D|InstrD[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(5));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegWrite~I\ : cycloneii_io
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
	padio => ww_RegWrite,
	combout => \RegWrite~combout\);

-- Location: LCCOMB_X14_Y28_N2
\Registrador_E|RegWriteE~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_E|RegWriteE~feeder_combout\ = \RegWrite~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegWrite~combout\,
	combout => \Registrador_E|RegWriteE~feeder_combout\);

-- Location: LCFF_X14_Y28_N3
\Registrador_E|RegWriteE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_E|RegWriteE~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|RegWriteE~regout\);

-- Location: LCCOMB_X14_Y28_N0
\Registrador_W|RegWriteW~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_W|RegWriteW~feeder_combout\ = \Registrador_E|RegWriteE~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registrador_E|RegWriteE~regout\,
	combout => \Registrador_W|RegWriteW~feeder_combout\);

-- Location: LCFF_X14_Y28_N1
\Registrador_W|RegWriteW\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_W|RegWriteW~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|RegWriteW~regout\);

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[16]~I\ : cycloneii_io
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
	padio => ww_Instr(16),
	combout => \Instr~combout\(16));

-- Location: LCCOMB_X8_Y28_N12
\Registrador_D|InstrD[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[16]~feeder_combout\ = \Instr~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(16),
	combout => \Registrador_D|InstrD[16]~feeder_combout\);

-- Location: LCFF_X8_Y28_N13
\Registrador_D|InstrD[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(16));

-- Location: LCCOMB_X8_Y28_N0
\Registrador_E|RtE[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_E|RtE[0]~feeder_combout\ = \Registrador_D|InstrD\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registrador_D|InstrD\(16),
	combout => \Registrador_E|RtE[0]~feeder_combout\);

-- Location: LCFF_X8_Y28_N1
\Registrador_E|RtE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_E|RtE[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|RtE\(0));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegDst~I\ : cycloneii_io
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
	padio => ww_RegDst,
	combout => \RegDst~combout\);

-- Location: LCCOMB_X7_Y28_N12
\Registrador_E|RegDstE~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_E|RegDstE~feeder_combout\ = \RegDst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegDst~combout\,
	combout => \Registrador_E|RegDstE~feeder_combout\);

-- Location: LCFF_X7_Y28_N13
\Registrador_E|RegDstE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_E|RegDstE~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|RegDstE~regout\);

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[11]~I\ : cycloneii_io
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
	padio => ww_Instr(11),
	combout => \Instr~combout\(11));

-- Location: LCCOMB_X8_Y26_N28
\Registrador_D|InstrD[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[11]~feeder_combout\ = \Instr~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(11),
	combout => \Registrador_D|InstrD[11]~feeder_combout\);

-- Location: LCFF_X8_Y26_N29
\Registrador_D|InstrD[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(11));

-- Location: LCFF_X9_Y26_N11
\Registrador_E|SignImmE[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Registrador_D|InstrD\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|SignImmE\(11));

-- Location: LCCOMB_X8_Y28_N16
\Mux1|outMux[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1|outMux[0]~0_combout\ = (\Registrador_E|RegDstE~regout\ & ((\Registrador_E|SignImmE\(11)))) # (!\Registrador_E|RegDstE~regout\ & (\Registrador_E|RtE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_E|RtE\(0),
	datac => \Registrador_E|RegDstE~regout\,
	datad => \Registrador_E|SignImmE\(11),
	combout => \Mux1|outMux[0]~0_combout\);

-- Location: LCFF_X8_Y28_N17
\Registrador_W|WriteRegW[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux1|outMux[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|WriteRegW\(0));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[12]~I\ : cycloneii_io
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
	padio => ww_Instr(12),
	combout => \Instr~combout\(12));

-- Location: LCFF_X9_Y28_N15
\Registrador_D|InstrD[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(12));

-- Location: LCCOMB_X10_Y28_N30
\Registrador_E|SignImmE[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_E|SignImmE[12]~feeder_combout\ = \Registrador_D|InstrD\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registrador_D|InstrD\(12),
	combout => \Registrador_E|SignImmE[12]~feeder_combout\);

-- Location: LCFF_X10_Y28_N31
\Registrador_E|SignImmE[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_E|SignImmE[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|SignImmE\(12));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[17]~I\ : cycloneii_io
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
	padio => ww_Instr(17),
	combout => \Instr~combout\(17));

-- Location: LCCOMB_X10_Y28_N4
\Registrador_D|InstrD[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[17]~feeder_combout\ = \Instr~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(17),
	combout => \Registrador_D|InstrD[17]~feeder_combout\);

-- Location: LCFF_X10_Y28_N5
\Registrador_D|InstrD[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(17));

-- Location: LCFF_X10_Y28_N7
\Registrador_E|RtE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Registrador_D|InstrD\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|RtE\(1));

-- Location: LCCOMB_X10_Y28_N24
\Mux1|outMux[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1|outMux[1]~1_combout\ = (\Registrador_E|RegDstE~regout\ & (\Registrador_E|SignImmE\(12))) # (!\Registrador_E|RegDstE~regout\ & ((\Registrador_E|RtE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_E|SignImmE\(12),
	datac => \Registrador_E|RegDstE~regout\,
	datad => \Registrador_E|RtE\(1),
	combout => \Mux1|outMux[1]~1_combout\);

-- Location: LCFF_X10_Y28_N25
\Registrador_W|WriteRegW[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux1|outMux[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|WriteRegW\(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[18]~I\ : cycloneii_io
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
	padio => ww_Instr(18),
	combout => \Instr~combout\(18));

-- Location: LCCOMB_X7_Y28_N2
\Registrador_D|InstrD[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[18]~feeder_combout\ = \Instr~combout\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(18),
	combout => \Registrador_D|InstrD[18]~feeder_combout\);

-- Location: LCFF_X7_Y28_N3
\Registrador_D|InstrD[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(18));

-- Location: LCCOMB_X7_Y28_N10
\Registrador_E|RtE[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_E|RtE[2]~feeder_combout\ = \Registrador_D|InstrD\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registrador_D|InstrD\(18),
	combout => \Registrador_E|RtE[2]~feeder_combout\);

-- Location: LCFF_X7_Y28_N11
\Registrador_E|RtE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_E|RtE[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|RtE\(2));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[13]~I\ : cycloneii_io
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
	padio => ww_Instr(13),
	combout => \Instr~combout\(13));

-- Location: LCFF_X11_Y28_N27
\Registrador_D|InstrD[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(13));

-- Location: LCCOMB_X11_Y28_N16
\Registrador_E|SignImmE[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_E|SignImmE[13]~feeder_combout\ = \Registrador_D|InstrD\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registrador_D|InstrD\(13),
	combout => \Registrador_E|SignImmE[13]~feeder_combout\);

-- Location: LCFF_X11_Y28_N17
\Registrador_E|SignImmE[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_E|SignImmE[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|SignImmE\(13));

-- Location: LCCOMB_X7_Y28_N28
\Mux1|outMux[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1|outMux[2]~2_combout\ = (\Registrador_E|RegDstE~regout\ & ((\Registrador_E|SignImmE\(13)))) # (!\Registrador_E|RegDstE~regout\ & (\Registrador_E|RtE\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|RegDstE~regout\,
	datac => \Registrador_E|RtE\(2),
	datad => \Registrador_E|SignImmE\(13),
	combout => \Mux1|outMux[2]~2_combout\);

-- Location: LCFF_X7_Y28_N29
\Registrador_W|WriteRegW[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux1|outMux[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|WriteRegW\(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[14]~I\ : cycloneii_io
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
	padio => ww_Instr(14),
	combout => \Instr~combout\(14));

-- Location: LCCOMB_X8_Y26_N30
\Registrador_D|InstrD[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[14]~feeder_combout\ = \Instr~combout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(14),
	combout => \Registrador_D|InstrD[14]~feeder_combout\);

-- Location: LCFF_X8_Y26_N31
\Registrador_D|InstrD[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(14));

-- Location: LCFF_X9_Y26_N9
\Registrador_E|SignImmE[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Registrador_D|InstrD\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|SignImmE\(14));

-- Location: LCCOMB_X8_Y28_N22
\Mux1|outMux[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1|outMux[3]~3_combout\ = (\Registrador_E|RegDstE~regout\ & ((\Registrador_E|SignImmE\(14)))) # (!\Registrador_E|RegDstE~regout\ & (\Registrador_E|RtE\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|RtE\(3),
	datab => \Registrador_E|SignImmE\(14),
	datac => \Registrador_E|RegDstE~regout\,
	combout => \Mux1|outMux[3]~3_combout\);

-- Location: LCFF_X8_Y28_N23
\Registrador_W|WriteRegW[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux1|outMux[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|WriteRegW\(3));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[20]~I\ : cycloneii_io
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
	padio => ww_Instr(20),
	combout => \Instr~combout\(20));

-- Location: LCFF_X9_Y28_N13
\Registrador_D|InstrD[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(20));

-- Location: LCCOMB_X9_Y28_N22
\Registrador_E|RtE[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_E|RtE[4]~feeder_combout\ = \Registrador_D|InstrD\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registrador_D|InstrD\(20),
	combout => \Registrador_E|RtE[4]~feeder_combout\);

-- Location: LCFF_X9_Y28_N23
\Registrador_E|RtE[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_E|RtE[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|RtE\(4));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[15]~I\ : cycloneii_io
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
	padio => ww_Instr(15),
	combout => \Instr~combout\(15));

-- Location: LCFF_X10_Y27_N5
\Registrador_D|InstrD[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(15));

-- Location: LCFF_X10_Y27_N11
\Registrador_E|SignImmE[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Registrador_D|InstrD\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|SignImmE\(15));

-- Location: LCCOMB_X9_Y28_N28
\Mux1|outMux[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1|outMux[4]~4_combout\ = (\Registrador_E|RegDstE~regout\ & ((\Registrador_E|SignImmE\(15)))) # (!\Registrador_E|RegDstE~regout\ & (\Registrador_E|RtE\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_E|RtE\(4),
	datac => \Registrador_E|SignImmE\(15),
	datad => \Registrador_E|RegDstE~regout\,
	combout => \Mux1|outMux[4]~4_combout\);

-- Location: LCFF_X9_Y28_N29
\Registrador_W|WriteRegW[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux1|outMux[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|WriteRegW\(4));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[21]~I\ : cycloneii_io
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
	padio => ww_Instr(21),
	combout => \Instr~combout\(21));

-- Location: LCCOMB_X2_Y28_N2
\Registrador_D|InstrD[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[21]~feeder_combout\ = \Instr~combout\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(21),
	combout => \Registrador_D|InstrD[21]~feeder_combout\);

-- Location: LCFF_X2_Y28_N3
\Registrador_D|InstrD[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(21));

-- Location: LCCOMB_X2_Y28_N4
\Registrador_E|RsE[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_E|RsE[0]~feeder_combout\ = \Registrador_D|InstrD\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registrador_D|InstrD\(21),
	combout => \Registrador_E|RsE[0]~feeder_combout\);

-- Location: LCFF_X2_Y28_N5
\Registrador_E|RsE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_E|RsE[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|RsE\(0));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[22]~I\ : cycloneii_io
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
	padio => ww_Instr(22),
	combout => \Instr~combout\(22));

-- Location: LCCOMB_X18_Y35_N2
\Registrador_D|InstrD[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[22]~feeder_combout\ = \Instr~combout\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(22),
	combout => \Registrador_D|InstrD[22]~feeder_combout\);

-- Location: LCFF_X18_Y35_N3
\Registrador_D|InstrD[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(22));

-- Location: LCCOMB_X18_Y35_N0
\Registrador_E|RsE[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_E|RsE[1]~feeder_combout\ = \Registrador_D|InstrD\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registrador_D|InstrD\(22),
	combout => \Registrador_E|RsE[1]~feeder_combout\);

-- Location: LCFF_X18_Y35_N1
\Registrador_E|RsE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_E|RsE[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|RsE\(1));

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[23]~I\ : cycloneii_io
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
	padio => ww_Instr(23),
	combout => \Instr~combout\(23));

-- Location: LCCOMB_X1_Y28_N12
\Registrador_D|InstrD[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[23]~feeder_combout\ = \Instr~combout\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(23),
	combout => \Registrador_D|InstrD[23]~feeder_combout\);

-- Location: LCFF_X1_Y28_N13
\Registrador_D|InstrD[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(23));

-- Location: LCCOMB_X1_Y28_N10
\Registrador_E|RsE[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_E|RsE[2]~feeder_combout\ = \Registrador_D|InstrD\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registrador_D|InstrD\(23),
	combout => \Registrador_E|RsE[2]~feeder_combout\);

-- Location: LCFF_X1_Y28_N11
\Registrador_E|RsE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_E|RsE[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|RsE\(2));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[24]~I\ : cycloneii_io
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
	padio => ww_Instr(24),
	combout => \Instr~combout\(24));

-- Location: LCCOMB_X1_Y27_N2
\Registrador_D|InstrD[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[24]~feeder_combout\ = \Instr~combout\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(24),
	combout => \Registrador_D|InstrD[24]~feeder_combout\);

-- Location: LCFF_X1_Y27_N3
\Registrador_D|InstrD[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(24));

-- Location: LCCOMB_X1_Y27_N0
\Registrador_E|RsE[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_E|RsE[3]~feeder_combout\ = \Registrador_D|InstrD\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registrador_D|InstrD\(24),
	combout => \Registrador_E|RsE[3]~feeder_combout\);

-- Location: LCFF_X1_Y27_N1
\Registrador_E|RsE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_E|RsE[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|RsE\(3));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[25]~I\ : cycloneii_io
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
	padio => ww_Instr(25),
	combout => \Instr~combout\(25));

-- Location: LCFF_X2_Y27_N3
\Registrador_D|InstrD[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(25));

-- Location: LCCOMB_X2_Y27_N0
\Registrador_E|RsE[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_E|RsE[4]~feeder_combout\ = \Registrador_D|InstrD\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registrador_D|InstrD\(25),
	combout => \Registrador_E|RsE[4]~feeder_combout\);

-- Location: LCFF_X2_Y27_N1
\Registrador_E|RsE[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_E|RsE[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|RsE\(4));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[19]~I\ : cycloneii_io
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
	padio => ww_Instr(19),
	combout => \Instr~combout\(19));

-- Location: LCFF_X8_Y28_N3
\Registrador_D|InstrD[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(19));

-- Location: LCCOMB_X8_Y28_N6
\Registrador_E|RtE[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_E|RtE[3]~feeder_combout\ = \Registrador_D|InstrD\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registrador_D|InstrD\(19),
	combout => \Registrador_E|RtE[3]~feeder_combout\);

-- Location: LCFF_X8_Y28_N7
\Registrador_E|RtE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_E|RtE[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|RtE\(3));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALUControl[1]~I\ : cycloneii_io
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
	padio => ww_ALUControl(1),
	combout => \ALUControl~combout\(1));

-- Location: LCFF_X8_Y25_N25
\Registrador_E|ALUControlE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUControl~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|ALUControlE\(1));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_FowardAE,
	combout => \FowardAE~combout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALUControl[0]~I\ : cycloneii_io
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
	padio => ww_ALUControl(0),
	combout => \ALUControl~combout\(0));

-- Location: LCCOMB_X14_Y28_N12
\Registrador_E|ALUControlE[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_E|ALUControlE[0]~feeder_combout\ = \ALUControl~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALUControl~combout\(0),
	combout => \Registrador_E|ALUControlE[0]~feeder_combout\);

-- Location: LCFF_X14_Y28_N13
\Registrador_E|ALUControlE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_E|ALUControlE[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|ALUControlE\(0));

-- Location: LCFF_X9_Y26_N13
\Registrador_E|SignImmE[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Registrador_D|InstrD\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|SignImmE\(4));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_FowardBE,
	combout => \FowardBE~combout\);

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[6]~I\ : cycloneii_io
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
	padio => ww_Instr(6),
	combout => \Instr~combout\(6));

-- Location: LCCOMB_X8_Y26_N4
\Registrador_D|InstrD[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[6]~feeder_combout\ = \Instr~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(6),
	combout => \Registrador_D|InstrD[6]~feeder_combout\);

-- Location: LCFF_X8_Y26_N5
\Registrador_D|InstrD[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(6));

-- Location: LCFF_X9_Y26_N23
\Registrador_E|SignImmE[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Registrador_D|InstrD\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|SignImmE\(6));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALUSrc~I\ : cycloneii_io
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
	padio => ww_ALUSrc,
	combout => \ALUSrc~combout\);

-- Location: LCFF_X12_Y26_N23
\Registrador_E|ALUSrcE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ALUSrc~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|ALUSrcE~regout\);

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[8]~I\ : cycloneii_io
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
	padio => ww_Instr(8),
	combout => \Instr~combout\(8));

-- Location: LCFF_X14_Y26_N15
\Registrador_D|InstrD[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(8));

-- Location: LCFF_X14_Y26_N19
\Registrador_E|SignImmE[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Registrador_D|InstrD\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|SignImmE\(8));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[9]~I\ : cycloneii_io
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
	padio => ww_Instr(9),
	combout => \Instr~combout\(9));

-- Location: LCCOMB_X10_Y28_N28
\Registrador_D|InstrD[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[9]~feeder_combout\ = \Instr~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(9),
	combout => \Registrador_D|InstrD[9]~feeder_combout\);

-- Location: LCFF_X10_Y28_N29
\Registrador_D|InstrD[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(9));

-- Location: LCFF_X10_Y27_N17
\Registrador_E|SignImmE[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Registrador_D|InstrD\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|SignImmE\(9));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[10]~I\ : cycloneii_io
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
	padio => ww_Instr(10),
	combout => \Instr~combout\(10));

-- Location: LCCOMB_X14_Y28_N22
\Registrador_D|InstrD[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_D|InstrD[10]~feeder_combout\ = \Instr~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(10),
	combout => \Registrador_D|InstrD[10]~feeder_combout\);

-- Location: LCFF_X14_Y28_N23
\Registrador_D|InstrD[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registrador_D|InstrD[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(10));

-- Location: LCFF_X14_Y26_N31
\Registrador_E|SignImmE[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Registrador_D|InstrD\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|SignImmE\(10));

-- Location: LCCOMB_X14_Y26_N12
\Mux4|outMux[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[10]~20_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & ((\Registrador_W|ALUOutW\(10)))) # (!\FowardBE~combout\ & (\RF|registers_rtl_1|auto_generated|ram_block1a10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF|registers_rtl_1|auto_generated|ram_block1a10\,
	datab => \FowardBE~combout\,
	datac => \Registrador_W|ALUOutW\(10),
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[10]~20_combout\);

-- Location: LCCOMB_X14_Y26_N30
\Mux4|outMux[10]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[10]~21_combout\ = (\Mux4|outMux[10]~20_combout\) # ((\Registrador_E|ALUSrcE~regout\ & \Registrador_E|SignImmE\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_E|ALUSrcE~regout\,
	datac => \Registrador_E|SignImmE\(10),
	datad => \Mux4|outMux[10]~20_combout\,
	combout => \Mux4|outMux[10]~21_combout\);

-- Location: LCFF_X12_Y26_N5
\Registrador_E|SignImmE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Registrador_D|InstrD\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|SignImmE\(3));

-- Location: LCCOMB_X12_Y27_N26
\Mux4|outMux[18]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[18]~36_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & ((\Registrador_W|ALUOutW\(18)))) # (!\FowardBE~combout\ & (\RF|registers_rtl_1|auto_generated|ram_block1a18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF|registers_rtl_1|auto_generated|ram_block1a18\,
	datab => \FowardBE~combout\,
	datac => \Registrador_W|ALUOutW\(18),
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[18]~36_combout\);

-- Location: LCCOMB_X11_Y27_N28
\Mux4|outMux[18]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[18]~37_combout\ = (\Mux4|outMux[18]~36_combout\) # ((\Registrador_E|SignImmE\(15) & \Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_E|SignImmE\(15),
	datac => \Mux4|outMux[18]~36_combout\,
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[18]~37_combout\);

-- Location: LCCOMB_X8_Y26_N26
\Mux4|outMux[31]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[31]~62_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(31))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a31\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUSrcE~regout\,
	datab => \FowardBE~combout\,
	datac => \Registrador_W|ALUOutW\(31),
	datad => \RF|registers_rtl_1|auto_generated|ram_block1a31\,
	combout => \Mux4|outMux[31]~62_combout\);

-- Location: LCCOMB_X8_Y25_N26
\Mux4|outMux[31]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[31]~63_combout\ = (\Mux4|outMux[31]~62_combout\) # ((\Registrador_E|ALUSrcE~regout\ & \Registrador_E|SignImmE\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUSrcE~regout\,
	datac => \Mux4|outMux[31]~62_combout\,
	datad => \Registrador_E|SignImmE\(15),
	combout => \Mux4|outMux[31]~63_combout\);

-- Location: LCCOMB_X10_Y27_N28
\Mux2|outMux[27]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[27]~27_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(27))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_W|ALUOutW\(27),
	datab => \FowardAE~combout\,
	datac => \RF|registers_rtl_0|auto_generated|ram_block1a27\,
	combout => \Mux2|outMux[27]~27_combout\);

-- Location: LCCOMB_X12_Y27_N24
\Mux4|outMux[25]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[25]~50_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & ((\Registrador_W|ALUOutW\(25)))) # (!\FowardBE~combout\ & (\RF|registers_rtl_1|auto_generated|ram_block1a25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardBE~combout\,
	datab => \Registrador_E|ALUSrcE~regout\,
	datac => \RF|registers_rtl_1|auto_generated|ram_block1a25\,
	datad => \Registrador_W|ALUOutW\(25),
	combout => \Mux4|outMux[25]~50_combout\);

-- Location: LCCOMB_X11_Y27_N8
\Mux4|outMux[25]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[25]~51_combout\ = (\Mux4|outMux[25]~50_combout\) # ((\Registrador_E|SignImmE\(15) & \Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux4|outMux[25]~50_combout\,
	datac => \Registrador_E|SignImmE\(15),
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[25]~51_combout\);

-- Location: LCCOMB_X14_Y25_N20
\Mux4|outMux[24]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[24]~48_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & ((\Registrador_W|ALUOutW\(24)))) # (!\FowardBE~combout\ & (\RF|registers_rtl_1|auto_generated|ram_block1a24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF|registers_rtl_1|auto_generated|ram_block1a24\,
	datab => \FowardBE~combout\,
	datac => \Registrador_E|ALUSrcE~regout\,
	datad => \Registrador_W|ALUOutW\(24),
	combout => \Mux4|outMux[24]~48_combout\);

-- Location: LCCOMB_X14_Y25_N26
\Mux4|outMux[24]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[24]~49_combout\ = (\Mux4|outMux[24]~48_combout\) # ((\Registrador_E|SignImmE\(15) & \Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|SignImmE\(15),
	datac => \Mux4|outMux[24]~48_combout\,
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[24]~49_combout\);

-- Location: LCCOMB_X12_Y25_N20
\Mux2|outMux[23]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[23]~23_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(23))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FowardAE~combout\,
	datac => \Registrador_W|ALUOutW\(23),
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a23\,
	combout => \Mux2|outMux[23]~23_combout\);

-- Location: LCCOMB_X12_Y27_N12
\Mux2|outMux[20]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[20]~20_combout\ = (\FowardAE~combout\ & ((\Registrador_W|ALUOutW\(20)))) # (!\FowardAE~combout\ & (\RF|registers_rtl_0|auto_generated|ram_block1a20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RF|registers_rtl_0|auto_generated|ram_block1a20\,
	datac => \FowardAE~combout\,
	datad => \Registrador_W|ALUOutW\(20),
	combout => \Mux2|outMux[20]~20_combout\);

-- Location: LCCOMB_X10_Y25_N4
\ALU_1|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~36_combout\ = ((\Mux2|outMux[18]~18_combout\ $ (\Mux4|outMux[18]~37_combout\ $ (!\ALU_1|Add1~35\)))) # (GND)
-- \ALU_1|Add1~37\ = CARRY((\Mux2|outMux[18]~18_combout\ & ((\Mux4|outMux[18]~37_combout\) # (!\ALU_1|Add1~35\))) # (!\Mux2|outMux[18]~18_combout\ & (\Mux4|outMux[18]~37_combout\ & !\ALU_1|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[18]~18_combout\,
	datab => \Mux4|outMux[18]~37_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~35\,
	combout => \ALU_1|Add1~36_combout\,
	cout => \ALU_1|Add1~37\);

-- Location: LCCOMB_X10_Y25_N6
\ALU_1|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~38_combout\ = (\Mux2|outMux[19]~19_combout\ & ((\Mux4|outMux[19]~39_combout\ & (\ALU_1|Add1~37\ & VCC)) # (!\Mux4|outMux[19]~39_combout\ & (!\ALU_1|Add1~37\)))) # (!\Mux2|outMux[19]~19_combout\ & ((\Mux4|outMux[19]~39_combout\ & 
-- (!\ALU_1|Add1~37\)) # (!\Mux4|outMux[19]~39_combout\ & ((\ALU_1|Add1~37\) # (GND)))))
-- \ALU_1|Add1~39\ = CARRY((\Mux2|outMux[19]~19_combout\ & (!\Mux4|outMux[19]~39_combout\ & !\ALU_1|Add1~37\)) # (!\Mux2|outMux[19]~19_combout\ & ((!\ALU_1|Add1~37\) # (!\Mux4|outMux[19]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[19]~19_combout\,
	datab => \Mux4|outMux[19]~39_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~37\,
	combout => \ALU_1|Add1~38_combout\,
	cout => \ALU_1|Add1~39\);

-- Location: LCCOMB_X10_Y25_N8
\ALU_1|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~40_combout\ = ((\Mux4|outMux[20]~41_combout\ $ (\Mux2|outMux[20]~20_combout\ $ (!\ALU_1|Add1~39\)))) # (GND)
-- \ALU_1|Add1~41\ = CARRY((\Mux4|outMux[20]~41_combout\ & ((\Mux2|outMux[20]~20_combout\) # (!\ALU_1|Add1~39\))) # (!\Mux4|outMux[20]~41_combout\ & (\Mux2|outMux[20]~20_combout\ & !\ALU_1|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[20]~41_combout\,
	datab => \Mux2|outMux[20]~20_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~39\,
	combout => \ALU_1|Add1~40_combout\,
	cout => \ALU_1|Add1~41\);

-- Location: LCCOMB_X10_Y25_N10
\ALU_1|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~42_combout\ = (\Mux2|outMux[21]~21_combout\ & ((\Mux4|outMux[21]~43_combout\ & (\ALU_1|Add1~41\ & VCC)) # (!\Mux4|outMux[21]~43_combout\ & (!\ALU_1|Add1~41\)))) # (!\Mux2|outMux[21]~21_combout\ & ((\Mux4|outMux[21]~43_combout\ & 
-- (!\ALU_1|Add1~41\)) # (!\Mux4|outMux[21]~43_combout\ & ((\ALU_1|Add1~41\) # (GND)))))
-- \ALU_1|Add1~43\ = CARRY((\Mux2|outMux[21]~21_combout\ & (!\Mux4|outMux[21]~43_combout\ & !\ALU_1|Add1~41\)) # (!\Mux2|outMux[21]~21_combout\ & ((!\ALU_1|Add1~41\) # (!\Mux4|outMux[21]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[21]~21_combout\,
	datab => \Mux4|outMux[21]~43_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~41\,
	combout => \ALU_1|Add1~42_combout\,
	cout => \ALU_1|Add1~43\);

-- Location: LCCOMB_X10_Y25_N12
\ALU_1|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~44_combout\ = ((\Mux4|outMux[22]~45_combout\ $ (\Mux2|outMux[22]~22_combout\ $ (!\ALU_1|Add1~43\)))) # (GND)
-- \ALU_1|Add1~45\ = CARRY((\Mux4|outMux[22]~45_combout\ & ((\Mux2|outMux[22]~22_combout\) # (!\ALU_1|Add1~43\))) # (!\Mux4|outMux[22]~45_combout\ & (\Mux2|outMux[22]~22_combout\ & !\ALU_1|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[22]~45_combout\,
	datab => \Mux2|outMux[22]~22_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~43\,
	combout => \ALU_1|Add1~44_combout\,
	cout => \ALU_1|Add1~45\);

-- Location: LCCOMB_X10_Y25_N14
\ALU_1|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~46_combout\ = (\Mux4|outMux[23]~47_combout\ & ((\Mux2|outMux[23]~23_combout\ & (\ALU_1|Add1~45\ & VCC)) # (!\Mux2|outMux[23]~23_combout\ & (!\ALU_1|Add1~45\)))) # (!\Mux4|outMux[23]~47_combout\ & ((\Mux2|outMux[23]~23_combout\ & 
-- (!\ALU_1|Add1~45\)) # (!\Mux2|outMux[23]~23_combout\ & ((\ALU_1|Add1~45\) # (GND)))))
-- \ALU_1|Add1~47\ = CARRY((\Mux4|outMux[23]~47_combout\ & (!\Mux2|outMux[23]~23_combout\ & !\ALU_1|Add1~45\)) # (!\Mux4|outMux[23]~47_combout\ & ((!\ALU_1|Add1~45\) # (!\Mux2|outMux[23]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[23]~47_combout\,
	datab => \Mux2|outMux[23]~23_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~45\,
	combout => \ALU_1|Add1~46_combout\,
	cout => \ALU_1|Add1~47\);

-- Location: LCCOMB_X10_Y25_N16
\ALU_1|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~48_combout\ = ((\Mux2|outMux[24]~24_combout\ $ (\Mux4|outMux[24]~49_combout\ $ (!\ALU_1|Add1~47\)))) # (GND)
-- \ALU_1|Add1~49\ = CARRY((\Mux2|outMux[24]~24_combout\ & ((\Mux4|outMux[24]~49_combout\) # (!\ALU_1|Add1~47\))) # (!\Mux2|outMux[24]~24_combout\ & (\Mux4|outMux[24]~49_combout\ & !\ALU_1|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[24]~24_combout\,
	datab => \Mux4|outMux[24]~49_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~47\,
	combout => \ALU_1|Add1~48_combout\,
	cout => \ALU_1|Add1~49\);

-- Location: LCCOMB_X10_Y25_N18
\ALU_1|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~50_combout\ = (\Mux2|outMux[25]~25_combout\ & ((\Mux4|outMux[25]~51_combout\ & (\ALU_1|Add1~49\ & VCC)) # (!\Mux4|outMux[25]~51_combout\ & (!\ALU_1|Add1~49\)))) # (!\Mux2|outMux[25]~25_combout\ & ((\Mux4|outMux[25]~51_combout\ & 
-- (!\ALU_1|Add1~49\)) # (!\Mux4|outMux[25]~51_combout\ & ((\ALU_1|Add1~49\) # (GND)))))
-- \ALU_1|Add1~51\ = CARRY((\Mux2|outMux[25]~25_combout\ & (!\Mux4|outMux[25]~51_combout\ & !\ALU_1|Add1~49\)) # (!\Mux2|outMux[25]~25_combout\ & ((!\ALU_1|Add1~49\) # (!\Mux4|outMux[25]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[25]~25_combout\,
	datab => \Mux4|outMux[25]~51_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~49\,
	combout => \ALU_1|Add1~50_combout\,
	cout => \ALU_1|Add1~51\);

-- Location: LCCOMB_X10_Y25_N20
\ALU_1|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~52_combout\ = ((\Mux2|outMux[26]~26_combout\ $ (\Mux4|outMux[26]~53_combout\ $ (!\ALU_1|Add1~51\)))) # (GND)
-- \ALU_1|Add1~53\ = CARRY((\Mux2|outMux[26]~26_combout\ & ((\Mux4|outMux[26]~53_combout\) # (!\ALU_1|Add1~51\))) # (!\Mux2|outMux[26]~26_combout\ & (\Mux4|outMux[26]~53_combout\ & !\ALU_1|Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[26]~26_combout\,
	datab => \Mux4|outMux[26]~53_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~51\,
	combout => \ALU_1|Add1~52_combout\,
	cout => \ALU_1|Add1~53\);

-- Location: LCCOMB_X10_Y25_N22
\ALU_1|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~54_combout\ = (\Mux4|outMux[27]~55_combout\ & ((\Mux2|outMux[27]~27_combout\ & (\ALU_1|Add1~53\ & VCC)) # (!\Mux2|outMux[27]~27_combout\ & (!\ALU_1|Add1~53\)))) # (!\Mux4|outMux[27]~55_combout\ & ((\Mux2|outMux[27]~27_combout\ & 
-- (!\ALU_1|Add1~53\)) # (!\Mux2|outMux[27]~27_combout\ & ((\ALU_1|Add1~53\) # (GND)))))
-- \ALU_1|Add1~55\ = CARRY((\Mux4|outMux[27]~55_combout\ & (!\Mux2|outMux[27]~27_combout\ & !\ALU_1|Add1~53\)) # (!\Mux4|outMux[27]~55_combout\ & ((!\ALU_1|Add1~53\) # (!\Mux2|outMux[27]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[27]~55_combout\,
	datab => \Mux2|outMux[27]~27_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~53\,
	combout => \ALU_1|Add1~54_combout\,
	cout => \ALU_1|Add1~55\);

-- Location: LCCOMB_X10_Y25_N24
\ALU_1|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~56_combout\ = ((\Mux4|outMux[28]~57_combout\ $ (\Mux2|outMux[28]~28_combout\ $ (!\ALU_1|Add1~55\)))) # (GND)
-- \ALU_1|Add1~57\ = CARRY((\Mux4|outMux[28]~57_combout\ & ((\Mux2|outMux[28]~28_combout\) # (!\ALU_1|Add1~55\))) # (!\Mux4|outMux[28]~57_combout\ & (\Mux2|outMux[28]~28_combout\ & !\ALU_1|Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[28]~57_combout\,
	datab => \Mux2|outMux[28]~28_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~55\,
	combout => \ALU_1|Add1~56_combout\,
	cout => \ALU_1|Add1~57\);

-- Location: LCCOMB_X10_Y25_N26
\ALU_1|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~58_combout\ = (\Mux2|outMux[29]~29_combout\ & ((\Mux4|outMux[29]~59_combout\ & (\ALU_1|Add1~57\ & VCC)) # (!\Mux4|outMux[29]~59_combout\ & (!\ALU_1|Add1~57\)))) # (!\Mux2|outMux[29]~29_combout\ & ((\Mux4|outMux[29]~59_combout\ & 
-- (!\ALU_1|Add1~57\)) # (!\Mux4|outMux[29]~59_combout\ & ((\ALU_1|Add1~57\) # (GND)))))
-- \ALU_1|Add1~59\ = CARRY((\Mux2|outMux[29]~29_combout\ & (!\Mux4|outMux[29]~59_combout\ & !\ALU_1|Add1~57\)) # (!\Mux2|outMux[29]~29_combout\ & ((!\ALU_1|Add1~57\) # (!\Mux4|outMux[29]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[29]~29_combout\,
	datab => \Mux4|outMux[29]~59_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~57\,
	combout => \ALU_1|Add1~58_combout\,
	cout => \ALU_1|Add1~59\);

-- Location: LCCOMB_X10_Y25_N28
\ALU_1|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~60_combout\ = ((\Mux2|outMux[30]~30_combout\ $ (\Mux4|outMux[30]~61_combout\ $ (!\ALU_1|Add1~59\)))) # (GND)
-- \ALU_1|Add1~61\ = CARRY((\Mux2|outMux[30]~30_combout\ & ((\Mux4|outMux[30]~61_combout\) # (!\ALU_1|Add1~59\))) # (!\Mux2|outMux[30]~30_combout\ & (\Mux4|outMux[30]~61_combout\ & !\ALU_1|Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[30]~30_combout\,
	datab => \Mux4|outMux[30]~61_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~59\,
	combout => \ALU_1|Add1~60_combout\,
	cout => \ALU_1|Add1~61\);

-- Location: LCCOMB_X10_Y25_N30
\ALU_1|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~62_combout\ = \Mux2|outMux[31]~31_combout\ $ (\ALU_1|Add1~61\ $ (\Mux4|outMux[31]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[31]~31_combout\,
	datad => \Mux4|outMux[31]~63_combout\,
	cin => \ALU_1|Add1~61\,
	combout => \ALU_1|Add1~62_combout\);

-- Location: LCCOMB_X9_Y25_N30
\Mux2|outMux[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[31]~31_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(31))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_W|ALUOutW\(31),
	datab => \FowardAE~combout\,
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a31\,
	combout => \Mux2|outMux[31]~31_combout\);

-- Location: LCCOMB_X8_Y25_N0
\ALU_1|ALUOut[31]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[31]~62_combout\ = (\Registrador_E|ALUControlE\(0) & ((\Mux2|outMux[31]~31_combout\) # ((\Registrador_E|ALUControlE\(1)) # (\Mux4|outMux[31]~63_combout\)))) # (!\Registrador_E|ALUControlE\(0) & (\Mux2|outMux[31]~31_combout\ & 
-- (!\Registrador_E|ALUControlE\(1) & \Mux4|outMux[31]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(0),
	datab => \Mux2|outMux[31]~31_combout\,
	datac => \Registrador_E|ALUControlE\(1),
	datad => \Mux4|outMux[31]~63_combout\,
	combout => \ALU_1|ALUOut[31]~62_combout\);

-- Location: LCCOMB_X9_Y25_N2
\Mux2|outMux[30]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[30]~30_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(30))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FowardAE~combout\,
	datac => \Registrador_W|ALUOutW\(30),
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a30\,
	combout => \Mux2|outMux[30]~30_combout\);

-- Location: LCCOMB_X12_Y28_N30
\Mux4|outMux[28]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[28]~56_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(28))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a28\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardBE~combout\,
	datab => \Registrador_W|ALUOutW\(28),
	datac => \RF|registers_rtl_1|auto_generated|ram_block1a28\,
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[28]~56_combout\);

-- Location: LCCOMB_X11_Y28_N10
\Mux4|outMux[28]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[28]~57_combout\ = (\Mux4|outMux[28]~56_combout\) # ((\Registrador_E|SignImmE\(15) & \Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_E|SignImmE\(15),
	datac => \Registrador_E|ALUSrcE~regout\,
	datad => \Mux4|outMux[28]~56_combout\,
	combout => \Mux4|outMux[28]~57_combout\);

-- Location: LCCOMB_X10_Y27_N10
\Mux2|outMux[26]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[26]~26_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(26))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_W|ALUOutW\(26),
	datab => \FowardAE~combout\,
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a26\,
	combout => \Mux2|outMux[26]~26_combout\);

-- Location: LCCOMB_X12_Y25_N10
\Mux4|outMux[22]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[22]~44_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(22))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a22\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardBE~combout\,
	datab => \Registrador_W|ALUOutW\(22),
	datac => \Registrador_E|ALUSrcE~regout\,
	datad => \RF|registers_rtl_1|auto_generated|ram_block1a22\,
	combout => \Mux4|outMux[22]~44_combout\);

-- Location: LCCOMB_X12_Y25_N24
\Mux4|outMux[22]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[22]~45_combout\ = (\Mux4|outMux[22]~44_combout\) # ((\Registrador_E|SignImmE\(15) & \Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|SignImmE\(15),
	datac => \Registrador_E|ALUSrcE~regout\,
	datad => \Mux4|outMux[22]~44_combout\,
	combout => \Mux4|outMux[22]~45_combout\);

-- Location: LCCOMB_X12_Y25_N28
\Mux2|outMux[21]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[21]~21_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(21))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FowardAE~combout\,
	datac => \Registrador_W|ALUOutW\(21),
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a21\,
	combout => \Mux2|outMux[21]~21_combout\);

-- Location: LCCOMB_X14_Y25_N22
\Mux2|outMux[19]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[19]~19_combout\ = (\FowardAE~combout\ & ((\Registrador_W|ALUOutW\(19)))) # (!\FowardAE~combout\ & (\RF|registers_rtl_0|auto_generated|ram_block1a19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RF|registers_rtl_0|auto_generated|ram_block1a19\,
	datac => \FowardAE~combout\,
	datad => \Registrador_W|ALUOutW\(19),
	combout => \Mux2|outMux[19]~19_combout\);

-- Location: LCCOMB_X11_Y27_N26
\Mux2|outMux[18]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[18]~18_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(18))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardAE~combout\,
	datac => \Registrador_W|ALUOutW\(18),
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a18\,
	combout => \Mux2|outMux[18]~18_combout\);

-- Location: LCCOMB_X12_Y27_N8
\Mux4|outMux[16]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[16]~32_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(16))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a16\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardBE~combout\,
	datab => \Registrador_W|ALUOutW\(16),
	datac => \RF|registers_rtl_1|auto_generated|ram_block1a16\,
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[16]~32_combout\);

-- Location: LCCOMB_X11_Y27_N22
\Mux4|outMux[16]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[16]~33_combout\ = (\Mux4|outMux[16]~32_combout\) # ((\Registrador_E|ALUSrcE~regout\ & \Registrador_E|SignImmE\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_E|ALUSrcE~regout\,
	datac => \Mux4|outMux[16]~32_combout\,
	datad => \Registrador_E|SignImmE\(15),
	combout => \Mux4|outMux[16]~33_combout\);

-- Location: LCCOMB_X9_Y26_N10
\Mux4|outMux[11]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[11]~23_combout\ = (\Mux4|outMux[11]~22_combout\) # ((\Registrador_E|SignImmE\(11) & \Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[11]~22_combout\,
	datac => \Registrador_E|SignImmE\(11),
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[11]~23_combout\);

-- Location: LCCOMB_X11_Y26_N20
\ALU_1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~20_combout\ = ((\Mux2|outMux[10]~10_combout\ $ (\Mux4|outMux[10]~21_combout\ $ (\ALU_1|Add0~19\)))) # (GND)
-- \ALU_1|Add0~21\ = CARRY((\Mux2|outMux[10]~10_combout\ & ((!\ALU_1|Add0~19\) # (!\Mux4|outMux[10]~21_combout\))) # (!\Mux2|outMux[10]~10_combout\ & (!\Mux4|outMux[10]~21_combout\ & !\ALU_1|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[10]~10_combout\,
	datab => \Mux4|outMux[10]~21_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~19\,
	combout => \ALU_1|Add0~20_combout\,
	cout => \ALU_1|Add0~21\);

-- Location: LCCOMB_X11_Y26_N22
\ALU_1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~22_combout\ = (\Mux2|outMux[11]~11_combout\ & ((\Mux4|outMux[11]~23_combout\ & (!\ALU_1|Add0~21\)) # (!\Mux4|outMux[11]~23_combout\ & (\ALU_1|Add0~21\ & VCC)))) # (!\Mux2|outMux[11]~11_combout\ & ((\Mux4|outMux[11]~23_combout\ & 
-- ((\ALU_1|Add0~21\) # (GND))) # (!\Mux4|outMux[11]~23_combout\ & (!\ALU_1|Add0~21\))))
-- \ALU_1|Add0~23\ = CARRY((\Mux2|outMux[11]~11_combout\ & (\Mux4|outMux[11]~23_combout\ & !\ALU_1|Add0~21\)) # (!\Mux2|outMux[11]~11_combout\ & ((\Mux4|outMux[11]~23_combout\) # (!\ALU_1|Add0~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[11]~11_combout\,
	datab => \Mux4|outMux[11]~23_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~21\,
	combout => \ALU_1|Add0~22_combout\,
	cout => \ALU_1|Add0~23\);

-- Location: LCCOMB_X11_Y26_N24
\ALU_1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~24_combout\ = ((\Mux2|outMux[12]~12_combout\ $ (\Mux4|outMux[12]~25_combout\ $ (\ALU_1|Add0~23\)))) # (GND)
-- \ALU_1|Add0~25\ = CARRY((\Mux2|outMux[12]~12_combout\ & ((!\ALU_1|Add0~23\) # (!\Mux4|outMux[12]~25_combout\))) # (!\Mux2|outMux[12]~12_combout\ & (!\Mux4|outMux[12]~25_combout\ & !\ALU_1|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[12]~12_combout\,
	datab => \Mux4|outMux[12]~25_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~23\,
	combout => \ALU_1|Add0~24_combout\,
	cout => \ALU_1|Add0~25\);

-- Location: LCCOMB_X11_Y26_N26
\ALU_1|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~26_combout\ = (\Mux2|outMux[13]~13_combout\ & ((\Mux4|outMux[13]~27_combout\ & (!\ALU_1|Add0~25\)) # (!\Mux4|outMux[13]~27_combout\ & (\ALU_1|Add0~25\ & VCC)))) # (!\Mux2|outMux[13]~13_combout\ & ((\Mux4|outMux[13]~27_combout\ & 
-- ((\ALU_1|Add0~25\) # (GND))) # (!\Mux4|outMux[13]~27_combout\ & (!\ALU_1|Add0~25\))))
-- \ALU_1|Add0~27\ = CARRY((\Mux2|outMux[13]~13_combout\ & (\Mux4|outMux[13]~27_combout\ & !\ALU_1|Add0~25\)) # (!\Mux2|outMux[13]~13_combout\ & ((\Mux4|outMux[13]~27_combout\) # (!\ALU_1|Add0~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[13]~13_combout\,
	datab => \Mux4|outMux[13]~27_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~25\,
	combout => \ALU_1|Add0~26_combout\,
	cout => \ALU_1|Add0~27\);

-- Location: LCCOMB_X11_Y26_N28
\ALU_1|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~28_combout\ = ((\Mux4|outMux[14]~29_combout\ $ (\Mux2|outMux[14]~14_combout\ $ (\ALU_1|Add0~27\)))) # (GND)
-- \ALU_1|Add0~29\ = CARRY((\Mux4|outMux[14]~29_combout\ & (\Mux2|outMux[14]~14_combout\ & !\ALU_1|Add0~27\)) # (!\Mux4|outMux[14]~29_combout\ & ((\Mux2|outMux[14]~14_combout\) # (!\ALU_1|Add0~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[14]~29_combout\,
	datab => \Mux2|outMux[14]~14_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~27\,
	combout => \ALU_1|Add0~28_combout\,
	cout => \ALU_1|Add0~29\);

-- Location: LCCOMB_X11_Y25_N0
\ALU_1|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~32_combout\ = ((\Mux2|outMux[16]~16_combout\ $ (\Mux4|outMux[16]~33_combout\ $ (\ALU_1|Add0~31\)))) # (GND)
-- \ALU_1|Add0~33\ = CARRY((\Mux2|outMux[16]~16_combout\ & ((!\ALU_1|Add0~31\) # (!\Mux4|outMux[16]~33_combout\))) # (!\Mux2|outMux[16]~16_combout\ & (!\Mux4|outMux[16]~33_combout\ & !\ALU_1|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[16]~16_combout\,
	datab => \Mux4|outMux[16]~33_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~31\,
	combout => \ALU_1|Add0~32_combout\,
	cout => \ALU_1|Add0~33\);

-- Location: LCCOMB_X11_Y25_N2
\ALU_1|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~34_combout\ = (\Mux4|outMux[17]~35_combout\ & ((\Mux2|outMux[17]~17_combout\ & (!\ALU_1|Add0~33\)) # (!\Mux2|outMux[17]~17_combout\ & ((\ALU_1|Add0~33\) # (GND))))) # (!\Mux4|outMux[17]~35_combout\ & ((\Mux2|outMux[17]~17_combout\ & 
-- (\ALU_1|Add0~33\ & VCC)) # (!\Mux2|outMux[17]~17_combout\ & (!\ALU_1|Add0~33\))))
-- \ALU_1|Add0~35\ = CARRY((\Mux4|outMux[17]~35_combout\ & ((!\ALU_1|Add0~33\) # (!\Mux2|outMux[17]~17_combout\))) # (!\Mux4|outMux[17]~35_combout\ & (!\Mux2|outMux[17]~17_combout\ & !\ALU_1|Add0~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[17]~35_combout\,
	datab => \Mux2|outMux[17]~17_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~33\,
	combout => \ALU_1|Add0~34_combout\,
	cout => \ALU_1|Add0~35\);

-- Location: LCCOMB_X11_Y25_N6
\ALU_1|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~38_combout\ = (\Mux4|outMux[19]~39_combout\ & ((\Mux2|outMux[19]~19_combout\ & (!\ALU_1|Add0~37\)) # (!\Mux2|outMux[19]~19_combout\ & ((\ALU_1|Add0~37\) # (GND))))) # (!\Mux4|outMux[19]~39_combout\ & ((\Mux2|outMux[19]~19_combout\ & 
-- (\ALU_1|Add0~37\ & VCC)) # (!\Mux2|outMux[19]~19_combout\ & (!\ALU_1|Add0~37\))))
-- \ALU_1|Add0~39\ = CARRY((\Mux4|outMux[19]~39_combout\ & ((!\ALU_1|Add0~37\) # (!\Mux2|outMux[19]~19_combout\))) # (!\Mux4|outMux[19]~39_combout\ & (!\Mux2|outMux[19]~19_combout\ & !\ALU_1|Add0~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[19]~39_combout\,
	datab => \Mux2|outMux[19]~19_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~37\,
	combout => \ALU_1|Add0~38_combout\,
	cout => \ALU_1|Add0~39\);

-- Location: LCCOMB_X11_Y25_N8
\ALU_1|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~40_combout\ = ((\Mux2|outMux[20]~20_combout\ $ (\Mux4|outMux[20]~41_combout\ $ (\ALU_1|Add0~39\)))) # (GND)
-- \ALU_1|Add0~41\ = CARRY((\Mux2|outMux[20]~20_combout\ & ((!\ALU_1|Add0~39\) # (!\Mux4|outMux[20]~41_combout\))) # (!\Mux2|outMux[20]~20_combout\ & (!\Mux4|outMux[20]~41_combout\ & !\ALU_1|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[20]~20_combout\,
	datab => \Mux4|outMux[20]~41_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~39\,
	combout => \ALU_1|Add0~40_combout\,
	cout => \ALU_1|Add0~41\);

-- Location: LCCOMB_X11_Y25_N10
\ALU_1|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~42_combout\ = (\Mux4|outMux[21]~43_combout\ & ((\Mux2|outMux[21]~21_combout\ & (!\ALU_1|Add0~41\)) # (!\Mux2|outMux[21]~21_combout\ & ((\ALU_1|Add0~41\) # (GND))))) # (!\Mux4|outMux[21]~43_combout\ & ((\Mux2|outMux[21]~21_combout\ & 
-- (\ALU_1|Add0~41\ & VCC)) # (!\Mux2|outMux[21]~21_combout\ & (!\ALU_1|Add0~41\))))
-- \ALU_1|Add0~43\ = CARRY((\Mux4|outMux[21]~43_combout\ & ((!\ALU_1|Add0~41\) # (!\Mux2|outMux[21]~21_combout\))) # (!\Mux4|outMux[21]~43_combout\ & (!\Mux2|outMux[21]~21_combout\ & !\ALU_1|Add0~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[21]~43_combout\,
	datab => \Mux2|outMux[21]~21_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~41\,
	combout => \ALU_1|Add0~42_combout\,
	cout => \ALU_1|Add0~43\);

-- Location: LCCOMB_X11_Y25_N12
\ALU_1|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~44_combout\ = ((\Mux2|outMux[22]~22_combout\ $ (\Mux4|outMux[22]~45_combout\ $ (\ALU_1|Add0~43\)))) # (GND)
-- \ALU_1|Add0~45\ = CARRY((\Mux2|outMux[22]~22_combout\ & ((!\ALU_1|Add0~43\) # (!\Mux4|outMux[22]~45_combout\))) # (!\Mux2|outMux[22]~22_combout\ & (!\Mux4|outMux[22]~45_combout\ & !\ALU_1|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[22]~22_combout\,
	datab => \Mux4|outMux[22]~45_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~43\,
	combout => \ALU_1|Add0~44_combout\,
	cout => \ALU_1|Add0~45\);

-- Location: LCCOMB_X11_Y25_N14
\ALU_1|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~46_combout\ = (\Mux4|outMux[23]~47_combout\ & ((\Mux2|outMux[23]~23_combout\ & (!\ALU_1|Add0~45\)) # (!\Mux2|outMux[23]~23_combout\ & ((\ALU_1|Add0~45\) # (GND))))) # (!\Mux4|outMux[23]~47_combout\ & ((\Mux2|outMux[23]~23_combout\ & 
-- (\ALU_1|Add0~45\ & VCC)) # (!\Mux2|outMux[23]~23_combout\ & (!\ALU_1|Add0~45\))))
-- \ALU_1|Add0~47\ = CARRY((\Mux4|outMux[23]~47_combout\ & ((!\ALU_1|Add0~45\) # (!\Mux2|outMux[23]~23_combout\))) # (!\Mux4|outMux[23]~47_combout\ & (!\Mux2|outMux[23]~23_combout\ & !\ALU_1|Add0~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[23]~47_combout\,
	datab => \Mux2|outMux[23]~23_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~45\,
	combout => \ALU_1|Add0~46_combout\,
	cout => \ALU_1|Add0~47\);

-- Location: LCCOMB_X11_Y25_N16
\ALU_1|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~48_combout\ = ((\Mux2|outMux[24]~24_combout\ $ (\Mux4|outMux[24]~49_combout\ $ (\ALU_1|Add0~47\)))) # (GND)
-- \ALU_1|Add0~49\ = CARRY((\Mux2|outMux[24]~24_combout\ & ((!\ALU_1|Add0~47\) # (!\Mux4|outMux[24]~49_combout\))) # (!\Mux2|outMux[24]~24_combout\ & (!\Mux4|outMux[24]~49_combout\ & !\ALU_1|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[24]~24_combout\,
	datab => \Mux4|outMux[24]~49_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~47\,
	combout => \ALU_1|Add0~48_combout\,
	cout => \ALU_1|Add0~49\);

-- Location: LCCOMB_X11_Y25_N18
\ALU_1|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~50_combout\ = (\Mux4|outMux[25]~51_combout\ & ((\Mux2|outMux[25]~25_combout\ & (!\ALU_1|Add0~49\)) # (!\Mux2|outMux[25]~25_combout\ & ((\ALU_1|Add0~49\) # (GND))))) # (!\Mux4|outMux[25]~51_combout\ & ((\Mux2|outMux[25]~25_combout\ & 
-- (\ALU_1|Add0~49\ & VCC)) # (!\Mux2|outMux[25]~25_combout\ & (!\ALU_1|Add0~49\))))
-- \ALU_1|Add0~51\ = CARRY((\Mux4|outMux[25]~51_combout\ & ((!\ALU_1|Add0~49\) # (!\Mux2|outMux[25]~25_combout\))) # (!\Mux4|outMux[25]~51_combout\ & (!\Mux2|outMux[25]~25_combout\ & !\ALU_1|Add0~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[25]~51_combout\,
	datab => \Mux2|outMux[25]~25_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~49\,
	combout => \ALU_1|Add0~50_combout\,
	cout => \ALU_1|Add0~51\);

-- Location: LCCOMB_X11_Y25_N20
\ALU_1|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~52_combout\ = ((\Mux4|outMux[26]~53_combout\ $ (\Mux2|outMux[26]~26_combout\ $ (\ALU_1|Add0~51\)))) # (GND)
-- \ALU_1|Add0~53\ = CARRY((\Mux4|outMux[26]~53_combout\ & (\Mux2|outMux[26]~26_combout\ & !\ALU_1|Add0~51\)) # (!\Mux4|outMux[26]~53_combout\ & ((\Mux2|outMux[26]~26_combout\) # (!\ALU_1|Add0~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[26]~53_combout\,
	datab => \Mux2|outMux[26]~26_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~51\,
	combout => \ALU_1|Add0~52_combout\,
	cout => \ALU_1|Add0~53\);

-- Location: LCCOMB_X11_Y25_N22
\ALU_1|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~54_combout\ = (\Mux2|outMux[27]~27_combout\ & ((\Mux4|outMux[27]~55_combout\ & (!\ALU_1|Add0~53\)) # (!\Mux4|outMux[27]~55_combout\ & (\ALU_1|Add0~53\ & VCC)))) # (!\Mux2|outMux[27]~27_combout\ & ((\Mux4|outMux[27]~55_combout\ & 
-- ((\ALU_1|Add0~53\) # (GND))) # (!\Mux4|outMux[27]~55_combout\ & (!\ALU_1|Add0~53\))))
-- \ALU_1|Add0~55\ = CARRY((\Mux2|outMux[27]~27_combout\ & (\Mux4|outMux[27]~55_combout\ & !\ALU_1|Add0~53\)) # (!\Mux2|outMux[27]~27_combout\ & ((\Mux4|outMux[27]~55_combout\) # (!\ALU_1|Add0~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[27]~27_combout\,
	datab => \Mux4|outMux[27]~55_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~53\,
	combout => \ALU_1|Add0~54_combout\,
	cout => \ALU_1|Add0~55\);

-- Location: LCCOMB_X11_Y25_N24
\ALU_1|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~56_combout\ = ((\Mux2|outMux[28]~28_combout\ $ (\Mux4|outMux[28]~57_combout\ $ (\ALU_1|Add0~55\)))) # (GND)
-- \ALU_1|Add0~57\ = CARRY((\Mux2|outMux[28]~28_combout\ & ((!\ALU_1|Add0~55\) # (!\Mux4|outMux[28]~57_combout\))) # (!\Mux2|outMux[28]~28_combout\ & (!\Mux4|outMux[28]~57_combout\ & !\ALU_1|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[28]~28_combout\,
	datab => \Mux4|outMux[28]~57_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~55\,
	combout => \ALU_1|Add0~56_combout\,
	cout => \ALU_1|Add0~57\);

-- Location: LCCOMB_X11_Y25_N26
\ALU_1|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~58_combout\ = (\Mux2|outMux[29]~29_combout\ & ((\Mux4|outMux[29]~59_combout\ & (!\ALU_1|Add0~57\)) # (!\Mux4|outMux[29]~59_combout\ & (\ALU_1|Add0~57\ & VCC)))) # (!\Mux2|outMux[29]~29_combout\ & ((\Mux4|outMux[29]~59_combout\ & 
-- ((\ALU_1|Add0~57\) # (GND))) # (!\Mux4|outMux[29]~59_combout\ & (!\ALU_1|Add0~57\))))
-- \ALU_1|Add0~59\ = CARRY((\Mux2|outMux[29]~29_combout\ & (\Mux4|outMux[29]~59_combout\ & !\ALU_1|Add0~57\)) # (!\Mux2|outMux[29]~29_combout\ & ((\Mux4|outMux[29]~59_combout\) # (!\ALU_1|Add0~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[29]~29_combout\,
	datab => \Mux4|outMux[29]~59_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~57\,
	combout => \ALU_1|Add0~58_combout\,
	cout => \ALU_1|Add0~59\);

-- Location: LCCOMB_X11_Y25_N28
\ALU_1|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~60_combout\ = ((\Mux4|outMux[30]~61_combout\ $ (\Mux2|outMux[30]~30_combout\ $ (\ALU_1|Add0~59\)))) # (GND)
-- \ALU_1|Add0~61\ = CARRY((\Mux4|outMux[30]~61_combout\ & (\Mux2|outMux[30]~30_combout\ & !\ALU_1|Add0~59\)) # (!\Mux4|outMux[30]~61_combout\ & ((\Mux2|outMux[30]~30_combout\) # (!\ALU_1|Add0~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[30]~61_combout\,
	datab => \Mux2|outMux[30]~30_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~59\,
	combout => \ALU_1|Add0~60_combout\,
	cout => \ALU_1|Add0~61\);

-- Location: LCCOMB_X11_Y25_N30
\ALU_1|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~62_combout\ = \Mux4|outMux[31]~63_combout\ $ (\ALU_1|Add0~61\ $ (!\Mux2|outMux[31]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[31]~63_combout\,
	datad => \Mux2|outMux[31]~31_combout\,
	cin => \ALU_1|Add0~61\,
	combout => \ALU_1|Add0~62_combout\);

-- Location: LCCOMB_X9_Y25_N6
\ALU_1|ALUOut[31]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[31]~63_combout\ = (\Registrador_E|ALUControlE\(1) & ((\ALU_1|ALUOut[31]~62_combout\ & ((\ALU_1|Add0~62_combout\))) # (!\ALU_1|ALUOut[31]~62_combout\ & (\ALU_1|Add1~62_combout\)))) # (!\Registrador_E|ALUControlE\(1) & 
-- (((\ALU_1|ALUOut[31]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \ALU_1|Add1~62_combout\,
	datac => \ALU_1|ALUOut[31]~62_combout\,
	datad => \ALU_1|Add0~62_combout\,
	combout => \ALU_1|ALUOut[31]~63_combout\);

-- Location: LCFF_X9_Y25_N7
\Registrador_W|ALUOutW[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[31]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(31));

-- Location: LCCOMB_X9_Y25_N28
\Mux4|outMux[30]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[30]~60_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(30))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a30\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_W|ALUOutW\(30),
	datab => \RF|registers_rtl_1|auto_generated|ram_block1a30\,
	datac => \Registrador_E|ALUSrcE~regout\,
	datad => \FowardBE~combout\,
	combout => \Mux4|outMux[30]~60_combout\);

-- Location: LCCOMB_X9_Y25_N14
\Mux4|outMux[30]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[30]~61_combout\ = (\Mux4|outMux[30]~60_combout\) # ((\Registrador_E|ALUSrcE~regout\ & \Registrador_E|SignImmE\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_E|ALUSrcE~regout\,
	datac => \Registrador_E|SignImmE\(15),
	datad => \Mux4|outMux[30]~60_combout\,
	combout => \Mux4|outMux[30]~61_combout\);

-- Location: LCCOMB_X9_Y25_N20
\ALU_1|ALUOut[30]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[30]~61_combout\ = (\ALU_1|ALUOut[30]~60_combout\ & (((\ALU_1|Add0~60_combout\) # (!\Registrador_E|ALUControlE\(1))))) # (!\ALU_1|ALUOut[30]~60_combout\ & (\ALU_1|Add1~60_combout\ & (\Registrador_E|ALUControlE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ALUOut[30]~60_combout\,
	datab => \ALU_1|Add1~60_combout\,
	datac => \Registrador_E|ALUControlE\(1),
	datad => \ALU_1|Add0~60_combout\,
	combout => \ALU_1|ALUOut[30]~61_combout\);

-- Location: LCFF_X9_Y25_N21
\Registrador_W|ALUOutW[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[30]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(30));

-- Location: LCCOMB_X14_Y25_N14
\Mux4|outMux[29]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[29]~58_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(29))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a29\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardBE~combout\,
	datab => \Registrador_W|ALUOutW\(29),
	datac => \Registrador_E|ALUSrcE~regout\,
	datad => \RF|registers_rtl_1|auto_generated|ram_block1a29\,
	combout => \Mux4|outMux[29]~58_combout\);

-- Location: LCCOMB_X14_Y25_N4
\Mux4|outMux[29]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[29]~59_combout\ = (\Mux4|outMux[29]~58_combout\) # ((\Registrador_E|SignImmE\(15) & \Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|SignImmE\(15),
	datac => \Mux4|outMux[29]~58_combout\,
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[29]~59_combout\);

-- Location: LCCOMB_X12_Y25_N14
\ALU_1|ALUOut[29]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[29]~59_combout\ = (\ALU_1|ALUOut[29]~58_combout\ & ((\ALU_1|Add0~58_combout\) # ((!\Registrador_E|ALUControlE\(1))))) # (!\ALU_1|ALUOut[29]~58_combout\ & (((\Registrador_E|ALUControlE\(1) & \ALU_1|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ALUOut[29]~58_combout\,
	datab => \ALU_1|Add0~58_combout\,
	datac => \Registrador_E|ALUControlE\(1),
	datad => \ALU_1|Add1~58_combout\,
	combout => \ALU_1|ALUOut[29]~59_combout\);

-- Location: LCFF_X12_Y25_N15
\Registrador_W|ALUOutW[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[29]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(29));

-- Location: LCCOMB_X12_Y27_N22
\Mux2|outMux[28]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[28]~28_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(28))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_W|ALUOutW\(28),
	datac => \FowardAE~combout\,
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a28\,
	combout => \Mux2|outMux[28]~28_combout\);

-- Location: LCCOMB_X11_Y28_N20
\ALU_1|ALUOut[28]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[28]~56_combout\ = (\Mux4|outMux[28]~57_combout\ & ((\Registrador_E|ALUControlE\(0)) # ((\Mux2|outMux[28]~28_combout\ & !\Registrador_E|ALUControlE\(1))))) # (!\Mux4|outMux[28]~57_combout\ & (\Registrador_E|ALUControlE\(0) & 
-- ((\Mux2|outMux[28]~28_combout\) # (\Registrador_E|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[28]~57_combout\,
	datab => \Registrador_E|ALUControlE\(0),
	datac => \Mux2|outMux[28]~28_combout\,
	datad => \Registrador_E|ALUControlE\(1),
	combout => \ALU_1|ALUOut[28]~56_combout\);

-- Location: LCCOMB_X11_Y28_N18
\ALU_1|ALUOut[28]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[28]~57_combout\ = (\Registrador_E|ALUControlE\(1) & ((\ALU_1|ALUOut[28]~56_combout\ & ((\ALU_1|Add0~56_combout\))) # (!\ALU_1|ALUOut[28]~56_combout\ & (\ALU_1|Add1~56_combout\)))) # (!\Registrador_E|ALUControlE\(1) & 
-- (\ALU_1|ALUOut[28]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \ALU_1|ALUOut[28]~56_combout\,
	datac => \ALU_1|Add1~56_combout\,
	datad => \ALU_1|Add0~56_combout\,
	combout => \ALU_1|ALUOut[28]~57_combout\);

-- Location: LCFF_X11_Y28_N19
\Registrador_W|ALUOutW[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[28]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(28));

-- Location: LCCOMB_X12_Y27_N0
\Mux4|outMux[27]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[27]~54_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(27))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a27\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_W|ALUOutW\(27),
	datab => \RF|registers_rtl_1|auto_generated|ram_block1a27\,
	datac => \FowardBE~combout\,
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[27]~54_combout\);

-- Location: LCCOMB_X11_Y27_N30
\Mux4|outMux[27]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[27]~55_combout\ = (\Mux4|outMux[27]~54_combout\) # ((\Registrador_E|SignImmE\(15) & \Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_E|SignImmE\(15),
	datac => \Mux4|outMux[27]~54_combout\,
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[27]~55_combout\);

-- Location: LCCOMB_X10_Y27_N22
\ALU_1|ALUOut[27]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[27]~54_combout\ = (\Mux2|outMux[27]~27_combout\ & ((\Registrador_E|ALUControlE\(0)) # ((!\Registrador_E|ALUControlE\(1) & \Mux4|outMux[27]~55_combout\)))) # (!\Mux2|outMux[27]~27_combout\ & (\Registrador_E|ALUControlE\(0) & 
-- ((\Registrador_E|ALUControlE\(1)) # (\Mux4|outMux[27]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[27]~27_combout\,
	datab => \Registrador_E|ALUControlE\(0),
	datac => \Registrador_E|ALUControlE\(1),
	datad => \Mux4|outMux[27]~55_combout\,
	combout => \ALU_1|ALUOut[27]~54_combout\);

-- Location: LCCOMB_X9_Y25_N10
\ALU_1|ALUOut[27]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[27]~55_combout\ = (\Registrador_E|ALUControlE\(1) & ((\ALU_1|ALUOut[27]~54_combout\ & (\ALU_1|Add0~54_combout\)) # (!\ALU_1|ALUOut[27]~54_combout\ & ((\ALU_1|Add1~54_combout\))))) # (!\Registrador_E|ALUControlE\(1) & 
-- (\ALU_1|ALUOut[27]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \ALU_1|ALUOut[27]~54_combout\,
	datac => \ALU_1|Add0~54_combout\,
	datad => \ALU_1|Add1~54_combout\,
	combout => \ALU_1|ALUOut[27]~55_combout\);

-- Location: LCFF_X9_Y25_N11
\Registrador_W|ALUOutW[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(27));

-- Location: LCCOMB_X10_Y27_N12
\Mux4|outMux[26]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[26]~52_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & ((\Registrador_W|ALUOutW\(26)))) # (!\FowardBE~combout\ & (\RF|registers_rtl_1|auto_generated|ram_block1a26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardBE~combout\,
	datab => \RF|registers_rtl_1|auto_generated|ram_block1a26\,
	datac => \Registrador_E|ALUSrcE~regout\,
	datad => \Registrador_W|ALUOutW\(26),
	combout => \Mux4|outMux[26]~52_combout\);

-- Location: LCCOMB_X10_Y27_N4
\Mux4|outMux[26]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[26]~53_combout\ = (\Mux4|outMux[26]~52_combout\) # ((\Registrador_E|SignImmE\(15) & \Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|SignImmE\(15),
	datab => \Registrador_E|ALUSrcE~regout\,
	datad => \Mux4|outMux[26]~52_combout\,
	combout => \Mux4|outMux[26]~53_combout\);

-- Location: LCCOMB_X9_Y25_N12
\ALU_1|ALUOut[26]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[26]~53_combout\ = (\ALU_1|ALUOut[26]~52_combout\ & (((\ALU_1|Add0~52_combout\)) # (!\Registrador_E|ALUControlE\(1)))) # (!\ALU_1|ALUOut[26]~52_combout\ & (\Registrador_E|ALUControlE\(1) & (\ALU_1|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ALUOut[26]~52_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \ALU_1|Add1~52_combout\,
	datad => \ALU_1|Add0~52_combout\,
	combout => \ALU_1|ALUOut[26]~53_combout\);

-- Location: LCFF_X9_Y25_N13
\Registrador_W|ALUOutW[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[26]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(26));

-- Location: LCCOMB_X12_Y27_N2
\Mux2|outMux[25]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[25]~25_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(25))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_W|ALUOutW\(25),
	datac => \FowardAE~combout\,
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a25\,
	combout => \Mux2|outMux[25]~25_combout\);

-- Location: LCCOMB_X12_Y27_N18
\ALU_1|ALUOut[25]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[25]~50_combout\ = (\Registrador_E|ALUControlE\(1) & (((\Registrador_E|ALUControlE\(0))))) # (!\Registrador_E|ALUControlE\(1) & ((\Mux2|outMux[25]~25_combout\ & ((\Registrador_E|ALUControlE\(0)) # (\Mux4|outMux[25]~51_combout\))) # 
-- (!\Mux2|outMux[25]~25_combout\ & (\Registrador_E|ALUControlE\(0) & \Mux4|outMux[25]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \Mux2|outMux[25]~25_combout\,
	datac => \Registrador_E|ALUControlE\(0),
	datad => \Mux4|outMux[25]~51_combout\,
	combout => \ALU_1|ALUOut[25]~50_combout\);

-- Location: LCCOMB_X12_Y25_N8
\ALU_1|ALUOut[25]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[25]~51_combout\ = (\Registrador_E|ALUControlE\(1) & ((\ALU_1|ALUOut[25]~50_combout\ & ((\ALU_1|Add0~50_combout\))) # (!\ALU_1|ALUOut[25]~50_combout\ & (\ALU_1|Add1~50_combout\)))) # (!\Registrador_E|ALUControlE\(1) & 
-- (\ALU_1|ALUOut[25]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \ALU_1|ALUOut[25]~50_combout\,
	datac => \ALU_1|Add1~50_combout\,
	datad => \ALU_1|Add0~50_combout\,
	combout => \ALU_1|ALUOut[25]~51_combout\);

-- Location: LCFF_X12_Y25_N9
\Registrador_W|ALUOutW[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[25]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(25));

-- Location: LCCOMB_X12_Y25_N12
\Mux2|outMux[24]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[24]~24_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(24))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_W|ALUOutW\(24),
	datab => \FowardAE~combout\,
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a24\,
	combout => \Mux2|outMux[24]~24_combout\);

-- Location: LCCOMB_X12_Y25_N18
\ALU_1|ALUOut[24]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[24]~48_combout\ = (\Registrador_E|ALUControlE\(1) & (((\Registrador_E|ALUControlE\(0))))) # (!\Registrador_E|ALUControlE\(1) & ((\Mux2|outMux[24]~24_combout\ & ((\Mux4|outMux[24]~49_combout\) # (\Registrador_E|ALUControlE\(0)))) # 
-- (!\Mux2|outMux[24]~24_combout\ & (\Mux4|outMux[24]~49_combout\ & \Registrador_E|ALUControlE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \Mux2|outMux[24]~24_combout\,
	datac => \Mux4|outMux[24]~49_combout\,
	datad => \Registrador_E|ALUControlE\(0),
	combout => \ALU_1|ALUOut[24]~48_combout\);

-- Location: LCCOMB_X12_Y25_N6
\ALU_1|ALUOut[24]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[24]~49_combout\ = (\Registrador_E|ALUControlE\(1) & ((\ALU_1|ALUOut[24]~48_combout\ & ((\ALU_1|Add0~48_combout\))) # (!\ALU_1|ALUOut[24]~48_combout\ & (\ALU_1|Add1~48_combout\)))) # (!\Registrador_E|ALUControlE\(1) & 
-- (\ALU_1|ALUOut[24]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \ALU_1|ALUOut[24]~48_combout\,
	datac => \ALU_1|Add1~48_combout\,
	datad => \ALU_1|Add0~48_combout\,
	combout => \ALU_1|ALUOut[24]~49_combout\);

-- Location: LCFF_X12_Y25_N7
\Registrador_W|ALUOutW[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[24]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(24));

-- Location: LCCOMB_X12_Y25_N22
\Mux4|outMux[23]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[23]~46_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(23))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a23\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_W|ALUOutW\(23),
	datab => \FowardBE~combout\,
	datac => \Registrador_E|ALUSrcE~regout\,
	datad => \RF|registers_rtl_1|auto_generated|ram_block1a23\,
	combout => \Mux4|outMux[23]~46_combout\);

-- Location: LCCOMB_X12_Y25_N4
\Mux4|outMux[23]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[23]~47_combout\ = (\Mux4|outMux[23]~46_combout\) # ((\Registrador_E|SignImmE\(15) & \Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|SignImmE\(15),
	datac => \Registrador_E|ALUSrcE~regout\,
	datad => \Mux4|outMux[23]~46_combout\,
	combout => \Mux4|outMux[23]~47_combout\);

-- Location: LCCOMB_X12_Y25_N26
\ALU_1|ALUOut[23]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[23]~46_combout\ = (\Registrador_E|ALUControlE\(1) & (((\Registrador_E|ALUControlE\(0))))) # (!\Registrador_E|ALUControlE\(1) & ((\Mux4|outMux[23]~47_combout\ & ((\Mux2|outMux[23]~23_combout\) # (\Registrador_E|ALUControlE\(0)))) # 
-- (!\Mux4|outMux[23]~47_combout\ & (\Mux2|outMux[23]~23_combout\ & \Registrador_E|ALUControlE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \Mux4|outMux[23]~47_combout\,
	datac => \Mux2|outMux[23]~23_combout\,
	datad => \Registrador_E|ALUControlE\(0),
	combout => \ALU_1|ALUOut[23]~46_combout\);

-- Location: LCCOMB_X12_Y25_N16
\ALU_1|ALUOut[23]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[23]~47_combout\ = (\Registrador_E|ALUControlE\(1) & ((\ALU_1|ALUOut[23]~46_combout\ & ((\ALU_1|Add0~46_combout\))) # (!\ALU_1|ALUOut[23]~46_combout\ & (\ALU_1|Add1~46_combout\)))) # (!\Registrador_E|ALUControlE\(1) & 
-- (\ALU_1|ALUOut[23]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \ALU_1|ALUOut[23]~46_combout\,
	datac => \ALU_1|Add1~46_combout\,
	datad => \ALU_1|Add0~46_combout\,
	combout => \ALU_1|ALUOut[23]~47_combout\);

-- Location: LCFF_X12_Y25_N17
\Registrador_W|ALUOutW[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[23]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(23));

-- Location: LCCOMB_X14_Y25_N2
\Mux2|outMux[22]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[22]~22_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(22))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardAE~combout\,
	datac => \Registrador_W|ALUOutW\(22),
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a22\,
	combout => \Mux2|outMux[22]~22_combout\);

-- Location: LCCOMB_X12_Y25_N30
\ALU_1|ALUOut[22]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[22]~44_combout\ = (\Registrador_E|ALUControlE\(1) & (((\Registrador_E|ALUControlE\(0))))) # (!\Registrador_E|ALUControlE\(1) & ((\Mux2|outMux[22]~22_combout\ & ((\Mux4|outMux[22]~45_combout\) # (\Registrador_E|ALUControlE\(0)))) # 
-- (!\Mux2|outMux[22]~22_combout\ & (\Mux4|outMux[22]~45_combout\ & \Registrador_E|ALUControlE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \Mux2|outMux[22]~22_combout\,
	datac => \Mux4|outMux[22]~45_combout\,
	datad => \Registrador_E|ALUControlE\(0),
	combout => \ALU_1|ALUOut[22]~44_combout\);

-- Location: LCCOMB_X12_Y25_N2
\ALU_1|ALUOut[22]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[22]~45_combout\ = (\Registrador_E|ALUControlE\(1) & ((\ALU_1|ALUOut[22]~44_combout\ & ((\ALU_1|Add0~44_combout\))) # (!\ALU_1|ALUOut[22]~44_combout\ & (\ALU_1|Add1~44_combout\)))) # (!\Registrador_E|ALUControlE\(1) & 
-- (\ALU_1|ALUOut[22]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \ALU_1|ALUOut[22]~44_combout\,
	datac => \ALU_1|Add1~44_combout\,
	datad => \ALU_1|Add0~44_combout\,
	combout => \ALU_1|ALUOut[22]~45_combout\);

-- Location: LCFF_X12_Y25_N3
\Registrador_W|ALUOutW[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[22]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(22));

-- Location: LCCOMB_X9_Y25_N18
\Mux4|outMux[21]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[21]~42_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(21))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a21\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardBE~combout\,
	datab => \Registrador_W|ALUOutW\(21),
	datac => \Registrador_E|ALUSrcE~regout\,
	datad => \RF|registers_rtl_1|auto_generated|ram_block1a21\,
	combout => \Mux4|outMux[21]~42_combout\);

-- Location: LCCOMB_X9_Y25_N4
\Mux4|outMux[21]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[21]~43_combout\ = (\Mux4|outMux[21]~42_combout\) # ((\Registrador_E|ALUSrcE~regout\ & \Registrador_E|SignImmE\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_E|ALUSrcE~regout\,
	datac => \Registrador_E|SignImmE\(15),
	datad => \Mux4|outMux[21]~42_combout\,
	combout => \Mux4|outMux[21]~43_combout\);

-- Location: LCCOMB_X9_Y25_N26
\ALU_1|ALUOut[21]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[21]~43_combout\ = (\ALU_1|ALUOut[21]~42_combout\ & (((\ALU_1|Add0~42_combout\)) # (!\Registrador_E|ALUControlE\(1)))) # (!\ALU_1|ALUOut[21]~42_combout\ & (\Registrador_E|ALUControlE\(1) & (\ALU_1|Add1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ALUOut[21]~42_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \ALU_1|Add1~42_combout\,
	datad => \ALU_1|Add0~42_combout\,
	combout => \ALU_1|ALUOut[21]~43_combout\);

-- Location: LCFF_X9_Y25_N27
\Registrador_W|ALUOutW[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(21));

-- Location: LCCOMB_X12_Y27_N14
\Mux4|outMux[20]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[20]~40_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(20))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a20\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardBE~combout\,
	datab => \Registrador_W|ALUOutW\(20),
	datac => \RF|registers_rtl_1|auto_generated|ram_block1a20\,
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[20]~40_combout\);

-- Location: LCCOMB_X11_Y27_N18
\Mux4|outMux[20]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[20]~41_combout\ = (\Mux4|outMux[20]~40_combout\) # ((\Registrador_E|SignImmE\(15) & \Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_E|SignImmE\(15),
	datac => \Mux4|outMux[20]~40_combout\,
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[20]~41_combout\);

-- Location: LCCOMB_X12_Y27_N20
\ALU_1|ALUOut[20]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[20]~40_combout\ = (\Registrador_E|ALUControlE\(1) & (((\Registrador_E|ALUControlE\(0))))) # (!\Registrador_E|ALUControlE\(1) & ((\Mux4|outMux[20]~41_combout\ & ((\Registrador_E|ALUControlE\(0)) # (\Mux2|outMux[20]~20_combout\))) # 
-- (!\Mux4|outMux[20]~41_combout\ & (\Registrador_E|ALUControlE\(0) & \Mux2|outMux[20]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \Mux4|outMux[20]~41_combout\,
	datac => \Registrador_E|ALUControlE\(0),
	datad => \Mux2|outMux[20]~20_combout\,
	combout => \ALU_1|ALUOut[20]~40_combout\);

-- Location: LCCOMB_X12_Y25_N0
\ALU_1|ALUOut[20]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[20]~41_combout\ = (\Registrador_E|ALUControlE\(1) & ((\ALU_1|ALUOut[20]~40_combout\ & ((\ALU_1|Add0~40_combout\))) # (!\ALU_1|ALUOut[20]~40_combout\ & (\ALU_1|Add1~40_combout\)))) # (!\Registrador_E|ALUControlE\(1) & 
-- (\ALU_1|ALUOut[20]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \ALU_1|ALUOut[20]~40_combout\,
	datac => \ALU_1|Add1~40_combout\,
	datad => \ALU_1|Add0~40_combout\,
	combout => \ALU_1|ALUOut[20]~41_combout\);

-- Location: LCFF_X12_Y25_N1
\Registrador_W|ALUOutW[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[20]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(20));

-- Location: LCCOMB_X14_Y25_N8
\Mux4|outMux[19]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[19]~38_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(19))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a19\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardBE~combout\,
	datab => \Registrador_W|ALUOutW\(19),
	datac => \RF|registers_rtl_1|auto_generated|ram_block1a19\,
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[19]~38_combout\);

-- Location: LCCOMB_X14_Y25_N18
\Mux4|outMux[19]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[19]~39_combout\ = (\Mux4|outMux[19]~38_combout\) # ((\Registrador_E|SignImmE\(15) & \Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|SignImmE\(15),
	datac => \Mux4|outMux[19]~38_combout\,
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[19]~39_combout\);

-- Location: LCCOMB_X14_Y25_N28
\ALU_1|ALUOut[19]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[19]~39_combout\ = (\ALU_1|ALUOut[19]~38_combout\ & (((\ALU_1|Add0~38_combout\)) # (!\Registrador_E|ALUControlE\(1)))) # (!\ALU_1|ALUOut[19]~38_combout\ & (\Registrador_E|ALUControlE\(1) & (\ALU_1|Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ALUOut[19]~38_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \ALU_1|Add1~38_combout\,
	datad => \ALU_1|Add0~38_combout\,
	combout => \ALU_1|ALUOut[19]~39_combout\);

-- Location: LCFF_X14_Y25_N29
\Registrador_W|ALUOutW[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[19]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(19));

-- Location: LCCOMB_X10_Y27_N18
\Mux2|outMux[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[9]~9_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(9))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_W|ALUOutW\(9),
	datac => \FowardAE~combout\,
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a9\,
	combout => \Mux2|outMux[9]~9_combout\);

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Instr[7]~I\ : cycloneii_io
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
	padio => ww_Instr(7),
	combout => \Instr~combout\(7));

-- Location: LCFF_X11_Y27_N15
\Registrador_D|InstrD[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_D|InstrD\(7));

-- Location: LCFF_X11_Y27_N17
\Registrador_E|SignImmE[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Registrador_D|InstrD\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|SignImmE\(7));

-- Location: LCCOMB_X11_Y27_N2
\Mux4|outMux[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[7]~14_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(7))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a7\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardBE~combout\,
	datab => \Registrador_W|ALUOutW\(7),
	datac => \Registrador_E|ALUSrcE~regout\,
	datad => \RF|registers_rtl_1|auto_generated|ram_block1a7\,
	combout => \Mux4|outMux[7]~14_combout\);

-- Location: LCCOMB_X11_Y27_N16
\Mux4|outMux[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[7]~15_combout\ = (\Mux4|outMux[7]~14_combout\) # ((\Registrador_E|ALUSrcE~regout\ & \Registrador_E|SignImmE\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_E|ALUSrcE~regout\,
	datac => \Registrador_E|SignImmE\(7),
	datad => \Mux4|outMux[7]~14_combout\,
	combout => \Mux4|outMux[7]~15_combout\);

-- Location: LCFF_X14_Y26_N11
\Registrador_E|SignImmE[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Registrador_D|InstrD\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|SignImmE\(5));

-- Location: LCCOMB_X14_Y26_N0
\Mux4|outMux[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[5]~10_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & ((\Registrador_W|ALUOutW\(5)))) # (!\FowardBE~combout\ & (\RF|registers_rtl_1|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RF|registers_rtl_1|auto_generated|ram_block1a5\,
	datab => \FowardBE~combout\,
	datac => \Registrador_W|ALUOutW\(5),
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[5]~10_combout\);

-- Location: LCCOMB_X14_Y26_N10
\Mux4|outMux[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[5]~11_combout\ = (\Mux4|outMux[5]~10_combout\) # ((\Registrador_E|ALUSrcE~regout\ & \Registrador_E|SignImmE\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_E|ALUSrcE~regout\,
	datac => \Registrador_E|SignImmE\(5),
	datad => \Mux4|outMux[5]~10_combout\,
	combout => \Mux4|outMux[5]~11_combout\);

-- Location: LCCOMB_X9_Y26_N4
\Mux2|outMux[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[4]~4_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(4))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_W|ALUOutW\(4),
	datab => \FowardAE~combout\,
	datac => \RF|registers_rtl_0|auto_generated|ram_block1a4\,
	combout => \Mux2|outMux[4]~4_combout\);

-- Location: LCFF_X9_Y26_N19
\Registrador_E|SignImmE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Registrador_D|InstrD\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_E|SignImmE\(2));

-- Location: LCCOMB_X9_Y26_N28
\Mux4|outMux[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[2]~4_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(2))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_W|ALUOutW\(2),
	datab => \FowardBE~combout\,
	datac => \RF|registers_rtl_1|auto_generated|ram_block1a2\,
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[2]~4_combout\);

-- Location: LCCOMB_X9_Y26_N18
\Mux4|outMux[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[2]~5_combout\ = (\Mux4|outMux[2]~4_combout\) # ((\Registrador_E|ALUSrcE~regout\ & \Registrador_E|SignImmE\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_E|ALUSrcE~regout\,
	datac => \Registrador_E|SignImmE\(2),
	datad => \Mux4|outMux[2]~4_combout\,
	combout => \Mux4|outMux[2]~5_combout\);

-- Location: LCCOMB_X10_Y26_N0
\ALU_1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~0_combout\ = (\Mux4|outMux[0]~1_combout\ & (\Mux2|outMux[0]~0_combout\ $ (VCC))) # (!\Mux4|outMux[0]~1_combout\ & (\Mux2|outMux[0]~0_combout\ & VCC))
-- \ALU_1|Add1~1\ = CARRY((\Mux4|outMux[0]~1_combout\ & \Mux2|outMux[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[0]~1_combout\,
	datab => \Mux2|outMux[0]~0_combout\,
	datad => VCC,
	combout => \ALU_1|Add1~0_combout\,
	cout => \ALU_1|Add1~1\);

-- Location: LCCOMB_X10_Y26_N2
\ALU_1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~2_combout\ = (\Mux4|outMux[1]~3_combout\ & ((\Mux2|outMux[1]~1_combout\ & (\ALU_1|Add1~1\ & VCC)) # (!\Mux2|outMux[1]~1_combout\ & (!\ALU_1|Add1~1\)))) # (!\Mux4|outMux[1]~3_combout\ & ((\Mux2|outMux[1]~1_combout\ & (!\ALU_1|Add1~1\)) # 
-- (!\Mux2|outMux[1]~1_combout\ & ((\ALU_1|Add1~1\) # (GND)))))
-- \ALU_1|Add1~3\ = CARRY((\Mux4|outMux[1]~3_combout\ & (!\Mux2|outMux[1]~1_combout\ & !\ALU_1|Add1~1\)) # (!\Mux4|outMux[1]~3_combout\ & ((!\ALU_1|Add1~1\) # (!\Mux2|outMux[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[1]~3_combout\,
	datab => \Mux2|outMux[1]~1_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~1\,
	combout => \ALU_1|Add1~2_combout\,
	cout => \ALU_1|Add1~3\);

-- Location: LCCOMB_X10_Y26_N6
\ALU_1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~6_combout\ = (\Mux4|outMux[3]~7_combout\ & ((\Mux2|outMux[3]~3_combout\ & (\ALU_1|Add1~5\ & VCC)) # (!\Mux2|outMux[3]~3_combout\ & (!\ALU_1|Add1~5\)))) # (!\Mux4|outMux[3]~7_combout\ & ((\Mux2|outMux[3]~3_combout\ & (!\ALU_1|Add1~5\)) # 
-- (!\Mux2|outMux[3]~3_combout\ & ((\ALU_1|Add1~5\) # (GND)))))
-- \ALU_1|Add1~7\ = CARRY((\Mux4|outMux[3]~7_combout\ & (!\Mux2|outMux[3]~3_combout\ & !\ALU_1|Add1~5\)) # (!\Mux4|outMux[3]~7_combout\ & ((!\ALU_1|Add1~5\) # (!\Mux2|outMux[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[3]~7_combout\,
	datab => \Mux2|outMux[3]~3_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~5\,
	combout => \ALU_1|Add1~6_combout\,
	cout => \ALU_1|Add1~7\);

-- Location: LCCOMB_X10_Y26_N12
\ALU_1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~12_combout\ = ((\Mux2|outMux[6]~6_combout\ $ (\Mux4|outMux[6]~13_combout\ $ (!\ALU_1|Add1~11\)))) # (GND)
-- \ALU_1|Add1~13\ = CARRY((\Mux2|outMux[6]~6_combout\ & ((\Mux4|outMux[6]~13_combout\) # (!\ALU_1|Add1~11\))) # (!\Mux2|outMux[6]~6_combout\ & (\Mux4|outMux[6]~13_combout\ & !\ALU_1|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[6]~6_combout\,
	datab => \Mux4|outMux[6]~13_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~11\,
	combout => \ALU_1|Add1~12_combout\,
	cout => \ALU_1|Add1~13\);

-- Location: LCCOMB_X10_Y26_N14
\ALU_1|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~14_combout\ = (\Mux2|outMux[7]~7_combout\ & ((\Mux4|outMux[7]~15_combout\ & (\ALU_1|Add1~13\ & VCC)) # (!\Mux4|outMux[7]~15_combout\ & (!\ALU_1|Add1~13\)))) # (!\Mux2|outMux[7]~7_combout\ & ((\Mux4|outMux[7]~15_combout\ & (!\ALU_1|Add1~13\)) # 
-- (!\Mux4|outMux[7]~15_combout\ & ((\ALU_1|Add1~13\) # (GND)))))
-- \ALU_1|Add1~15\ = CARRY((\Mux2|outMux[7]~7_combout\ & (!\Mux4|outMux[7]~15_combout\ & !\ALU_1|Add1~13\)) # (!\Mux2|outMux[7]~7_combout\ & ((!\ALU_1|Add1~13\) # (!\Mux4|outMux[7]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[7]~7_combout\,
	datab => \Mux4|outMux[7]~15_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~13\,
	combout => \ALU_1|Add1~14_combout\,
	cout => \ALU_1|Add1~15\);

-- Location: LCCOMB_X10_Y26_N16
\ALU_1|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~16_combout\ = ((\Mux2|outMux[8]~8_combout\ $ (\Mux4|outMux[8]~17_combout\ $ (!\ALU_1|Add1~15\)))) # (GND)
-- \ALU_1|Add1~17\ = CARRY((\Mux2|outMux[8]~8_combout\ & ((\Mux4|outMux[8]~17_combout\) # (!\ALU_1|Add1~15\))) # (!\Mux2|outMux[8]~8_combout\ & (\Mux4|outMux[8]~17_combout\ & !\ALU_1|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[8]~8_combout\,
	datab => \Mux4|outMux[8]~17_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~15\,
	combout => \ALU_1|Add1~16_combout\,
	cout => \ALU_1|Add1~17\);

-- Location: LCCOMB_X10_Y26_N18
\ALU_1|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~18_combout\ = (\Mux4|outMux[9]~19_combout\ & ((\Mux2|outMux[9]~9_combout\ & (\ALU_1|Add1~17\ & VCC)) # (!\Mux2|outMux[9]~9_combout\ & (!\ALU_1|Add1~17\)))) # (!\Mux4|outMux[9]~19_combout\ & ((\Mux2|outMux[9]~9_combout\ & (!\ALU_1|Add1~17\)) # 
-- (!\Mux2|outMux[9]~9_combout\ & ((\ALU_1|Add1~17\) # (GND)))))
-- \ALU_1|Add1~19\ = CARRY((\Mux4|outMux[9]~19_combout\ & (!\Mux2|outMux[9]~9_combout\ & !\ALU_1|Add1~17\)) # (!\Mux4|outMux[9]~19_combout\ & ((!\ALU_1|Add1~17\) # (!\Mux2|outMux[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[9]~19_combout\,
	datab => \Mux2|outMux[9]~9_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~17\,
	combout => \ALU_1|Add1~18_combout\,
	cout => \ALU_1|Add1~19\);

-- Location: LCCOMB_X10_Y26_N20
\ALU_1|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~20_combout\ = ((\Mux2|outMux[10]~10_combout\ $ (\Mux4|outMux[10]~21_combout\ $ (!\ALU_1|Add1~19\)))) # (GND)
-- \ALU_1|Add1~21\ = CARRY((\Mux2|outMux[10]~10_combout\ & ((\Mux4|outMux[10]~21_combout\) # (!\ALU_1|Add1~19\))) # (!\Mux2|outMux[10]~10_combout\ & (\Mux4|outMux[10]~21_combout\ & !\ALU_1|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[10]~10_combout\,
	datab => \Mux4|outMux[10]~21_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~19\,
	combout => \ALU_1|Add1~20_combout\,
	cout => \ALU_1|Add1~21\);

-- Location: LCCOMB_X10_Y26_N22
\ALU_1|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~22_combout\ = (\Mux4|outMux[11]~23_combout\ & ((\Mux2|outMux[11]~11_combout\ & (\ALU_1|Add1~21\ & VCC)) # (!\Mux2|outMux[11]~11_combout\ & (!\ALU_1|Add1~21\)))) # (!\Mux4|outMux[11]~23_combout\ & ((\Mux2|outMux[11]~11_combout\ & 
-- (!\ALU_1|Add1~21\)) # (!\Mux2|outMux[11]~11_combout\ & ((\ALU_1|Add1~21\) # (GND)))))
-- \ALU_1|Add1~23\ = CARRY((\Mux4|outMux[11]~23_combout\ & (!\Mux2|outMux[11]~11_combout\ & !\ALU_1|Add1~21\)) # (!\Mux4|outMux[11]~23_combout\ & ((!\ALU_1|Add1~21\) # (!\Mux2|outMux[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[11]~23_combout\,
	datab => \Mux2|outMux[11]~11_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~21\,
	combout => \ALU_1|Add1~22_combout\,
	cout => \ALU_1|Add1~23\);

-- Location: LCCOMB_X10_Y26_N26
\ALU_1|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~26_combout\ = (\Mux2|outMux[13]~13_combout\ & ((\Mux4|outMux[13]~27_combout\ & (\ALU_1|Add1~25\ & VCC)) # (!\Mux4|outMux[13]~27_combout\ & (!\ALU_1|Add1~25\)))) # (!\Mux2|outMux[13]~13_combout\ & ((\Mux4|outMux[13]~27_combout\ & 
-- (!\ALU_1|Add1~25\)) # (!\Mux4|outMux[13]~27_combout\ & ((\ALU_1|Add1~25\) # (GND)))))
-- \ALU_1|Add1~27\ = CARRY((\Mux2|outMux[13]~13_combout\ & (!\Mux4|outMux[13]~27_combout\ & !\ALU_1|Add1~25\)) # (!\Mux2|outMux[13]~13_combout\ & ((!\ALU_1|Add1~25\) # (!\Mux4|outMux[13]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[13]~13_combout\,
	datab => \Mux4|outMux[13]~27_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~25\,
	combout => \ALU_1|Add1~26_combout\,
	cout => \ALU_1|Add1~27\);

-- Location: LCCOMB_X10_Y26_N28
\ALU_1|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~28_combout\ = ((\Mux4|outMux[14]~29_combout\ $ (\Mux2|outMux[14]~14_combout\ $ (!\ALU_1|Add1~27\)))) # (GND)
-- \ALU_1|Add1~29\ = CARRY((\Mux4|outMux[14]~29_combout\ & ((\Mux2|outMux[14]~14_combout\) # (!\ALU_1|Add1~27\))) # (!\Mux4|outMux[14]~29_combout\ & (\Mux2|outMux[14]~14_combout\ & !\ALU_1|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[14]~29_combout\,
	datab => \Mux2|outMux[14]~14_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~27\,
	combout => \ALU_1|Add1~28_combout\,
	cout => \ALU_1|Add1~29\);

-- Location: LCCOMB_X10_Y26_N30
\ALU_1|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~30_combout\ = (\Mux2|outMux[15]~15_combout\ & ((\Mux4|outMux[15]~31_combout\ & (\ALU_1|Add1~29\ & VCC)) # (!\Mux4|outMux[15]~31_combout\ & (!\ALU_1|Add1~29\)))) # (!\Mux2|outMux[15]~15_combout\ & ((\Mux4|outMux[15]~31_combout\ & 
-- (!\ALU_1|Add1~29\)) # (!\Mux4|outMux[15]~31_combout\ & ((\ALU_1|Add1~29\) # (GND)))))
-- \ALU_1|Add1~31\ = CARRY((\Mux2|outMux[15]~15_combout\ & (!\Mux4|outMux[15]~31_combout\ & !\ALU_1|Add1~29\)) # (!\Mux2|outMux[15]~15_combout\ & ((!\ALU_1|Add1~29\) # (!\Mux4|outMux[15]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[15]~15_combout\,
	datab => \Mux4|outMux[15]~31_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~29\,
	combout => \ALU_1|Add1~30_combout\,
	cout => \ALU_1|Add1~31\);

-- Location: LCCOMB_X10_Y25_N0
\ALU_1|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~32_combout\ = ((\Mux4|outMux[16]~33_combout\ $ (\Mux2|outMux[16]~16_combout\ $ (!\ALU_1|Add1~31\)))) # (GND)
-- \ALU_1|Add1~33\ = CARRY((\Mux4|outMux[16]~33_combout\ & ((\Mux2|outMux[16]~16_combout\) # (!\ALU_1|Add1~31\))) # (!\Mux4|outMux[16]~33_combout\ & (\Mux2|outMux[16]~16_combout\ & !\ALU_1|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[16]~33_combout\,
	datab => \Mux2|outMux[16]~16_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~31\,
	combout => \ALU_1|Add1~32_combout\,
	cout => \ALU_1|Add1~33\);

-- Location: LCCOMB_X10_Y25_N2
\ALU_1|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add1~34_combout\ = (\Mux4|outMux[17]~35_combout\ & ((\Mux2|outMux[17]~17_combout\ & (\ALU_1|Add1~33\ & VCC)) # (!\Mux2|outMux[17]~17_combout\ & (!\ALU_1|Add1~33\)))) # (!\Mux4|outMux[17]~35_combout\ & ((\Mux2|outMux[17]~17_combout\ & 
-- (!\ALU_1|Add1~33\)) # (!\Mux2|outMux[17]~17_combout\ & ((\ALU_1|Add1~33\) # (GND)))))
-- \ALU_1|Add1~35\ = CARRY((\Mux4|outMux[17]~35_combout\ & (!\Mux2|outMux[17]~17_combout\ & !\ALU_1|Add1~33\)) # (!\Mux4|outMux[17]~35_combout\ & ((!\ALU_1|Add1~33\) # (!\Mux2|outMux[17]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[17]~35_combout\,
	datab => \Mux2|outMux[17]~17_combout\,
	datad => VCC,
	cin => \ALU_1|Add1~33\,
	combout => \ALU_1|Add1~34_combout\,
	cout => \ALU_1|Add1~35\);

-- Location: LCCOMB_X11_Y27_N0
\ALU_1|ALUOut[18]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[18]~36_combout\ = (\Registrador_E|ALUControlE\(0) & ((\Mux4|outMux[18]~37_combout\) # ((\Registrador_E|ALUControlE\(1)) # (\Mux2|outMux[18]~18_combout\)))) # (!\Registrador_E|ALUControlE\(0) & (\Mux4|outMux[18]~37_combout\ & 
-- (!\Registrador_E|ALUControlE\(1) & \Mux2|outMux[18]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(0),
	datab => \Mux4|outMux[18]~37_combout\,
	datac => \Registrador_E|ALUControlE\(1),
	datad => \Mux2|outMux[18]~18_combout\,
	combout => \ALU_1|ALUOut[18]~36_combout\);

-- Location: LCCOMB_X11_Y27_N6
\ALU_1|ALUOut[18]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[18]~37_combout\ = (\Registrador_E|ALUControlE\(1) & ((\ALU_1|ALUOut[18]~36_combout\ & (\ALU_1|Add0~36_combout\)) # (!\ALU_1|ALUOut[18]~36_combout\ & ((\ALU_1|Add1~36_combout\))))) # (!\Registrador_E|ALUControlE\(1) & 
-- (((\ALU_1|ALUOut[18]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|Add0~36_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \ALU_1|Add1~36_combout\,
	datad => \ALU_1|ALUOut[18]~36_combout\,
	combout => \ALU_1|ALUOut[18]~37_combout\);

-- Location: LCFF_X11_Y27_N7
\Registrador_W|ALUOutW[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[18]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(18));

-- Location: LCCOMB_X9_Y25_N24
\Mux2|outMux[17]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[17]~17_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(17))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_W|ALUOutW\(17),
	datac => \FowardAE~combout\,
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a17\,
	combout => \Mux2|outMux[17]~17_combout\);

-- Location: LCCOMB_X9_Y25_N0
\ALU_1|ALUOut[17]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[17]~35_combout\ = (\ALU_1|ALUOut[17]~34_combout\ & (((\ALU_1|Add0~34_combout\)) # (!\Registrador_E|ALUControlE\(1)))) # (!\ALU_1|ALUOut[17]~34_combout\ & (\Registrador_E|ALUControlE\(1) & ((\ALU_1|Add1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ALUOut[17]~34_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \ALU_1|Add0~34_combout\,
	datad => \ALU_1|Add1~34_combout\,
	combout => \ALU_1|ALUOut[17]~35_combout\);

-- Location: LCFF_X9_Y25_N1
\Registrador_W|ALUOutW[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[17]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(17));

-- Location: LCCOMB_X11_Y27_N12
\Mux2|outMux[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[16]~16_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(16))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardAE~combout\,
	datac => \Registrador_W|ALUOutW\(16),
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a16\,
	combout => \Mux2|outMux[16]~16_combout\);

-- Location: LCCOMB_X11_Y27_N24
\ALU_1|ALUOut[16]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[16]~33_combout\ = (\ALU_1|ALUOut[16]~32_combout\ & (((\ALU_1|Add0~32_combout\)) # (!\Registrador_E|ALUControlE\(1)))) # (!\ALU_1|ALUOut[16]~32_combout\ & (\Registrador_E|ALUControlE\(1) & (\ALU_1|Add1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ALUOut[16]~32_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \ALU_1|Add1~32_combout\,
	datad => \ALU_1|Add0~32_combout\,
	combout => \ALU_1|ALUOut[16]~33_combout\);

-- Location: LCFF_X11_Y27_N25
\Registrador_W|ALUOutW[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[16]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(16));

-- Location: LCCOMB_X10_Y27_N30
\Mux4|outMux[15]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[15]~30_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(15))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a15\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardBE~combout\,
	datab => \Registrador_W|ALUOutW\(15),
	datac => \Registrador_E|ALUSrcE~regout\,
	datad => \RF|registers_rtl_1|auto_generated|ram_block1a15\,
	combout => \Mux4|outMux[15]~30_combout\);

-- Location: LCCOMB_X10_Y27_N26
\Mux4|outMux[15]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[15]~31_combout\ = (\Mux4|outMux[15]~30_combout\) # ((\Registrador_E|SignImmE\(15) & \Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|SignImmE\(15),
	datac => \Registrador_E|ALUSrcE~regout\,
	datad => \Mux4|outMux[15]~30_combout\,
	combout => \Mux4|outMux[15]~31_combout\);

-- Location: LCCOMB_X10_Y27_N0
\ALU_1|ALUOut[15]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[15]~30_combout\ = (\Mux2|outMux[15]~15_combout\ & ((\Registrador_E|ALUControlE\(0)) # ((!\Registrador_E|ALUControlE\(1) & \Mux4|outMux[15]~31_combout\)))) # (!\Mux2|outMux[15]~15_combout\ & (\Registrador_E|ALUControlE\(0) & 
-- ((\Registrador_E|ALUControlE\(1)) # (\Mux4|outMux[15]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[15]~15_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \Mux4|outMux[15]~31_combout\,
	datad => \Registrador_E|ALUControlE\(0),
	combout => \ALU_1|ALUOut[15]~30_combout\);

-- Location: LCCOMB_X10_Y27_N8
\ALU_1|ALUOut[15]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[15]~31_combout\ = (\ALU_1|ALUOut[15]~30_combout\ & ((\ALU_1|Add0~30_combout\) # ((!\Registrador_E|ALUControlE\(1))))) # (!\ALU_1|ALUOut[15]~30_combout\ & (((\Registrador_E|ALUControlE\(1) & \ALU_1|Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|Add0~30_combout\,
	datab => \ALU_1|ALUOut[15]~30_combout\,
	datac => \Registrador_E|ALUControlE\(1),
	datad => \ALU_1|Add1~30_combout\,
	combout => \ALU_1|ALUOut[15]~31_combout\);

-- Location: LCFF_X10_Y27_N9
\Registrador_W|ALUOutW[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(15));

-- Location: LCCOMB_X9_Y26_N30
\Mux2|outMux[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[14]~14_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(14))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FowardAE~combout\,
	datac => \Registrador_W|ALUOutW\(14),
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a14\,
	combout => \Mux2|outMux[14]~14_combout\);

-- Location: LCCOMB_X8_Y26_N2
\Mux4|outMux[14]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[14]~28_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(14))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a14\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUSrcE~regout\,
	datab => \FowardBE~combout\,
	datac => \Registrador_W|ALUOutW\(14),
	datad => \RF|registers_rtl_1|auto_generated|ram_block1a14\,
	combout => \Mux4|outMux[14]~28_combout\);

-- Location: LCCOMB_X9_Y26_N8
\Mux4|outMux[14]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[14]~29_combout\ = (\Mux4|outMux[14]~28_combout\) # ((\Registrador_E|ALUSrcE~regout\ & \Registrador_E|SignImmE\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUSrcE~regout\,
	datac => \Registrador_E|SignImmE\(14),
	datad => \Mux4|outMux[14]~28_combout\,
	combout => \Mux4|outMux[14]~29_combout\);

-- Location: LCCOMB_X8_Y26_N8
\ALU_1|ALUOut[14]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[14]~28_combout\ = (\Mux2|outMux[14]~14_combout\ & ((\Registrador_E|ALUControlE\(0)) # ((!\Registrador_E|ALUControlE\(1) & \Mux4|outMux[14]~29_combout\)))) # (!\Mux2|outMux[14]~14_combout\ & (\Registrador_E|ALUControlE\(0) & 
-- ((\Registrador_E|ALUControlE\(1)) # (\Mux4|outMux[14]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[14]~14_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \Mux4|outMux[14]~29_combout\,
	datad => \Registrador_E|ALUControlE\(0),
	combout => \ALU_1|ALUOut[14]~28_combout\);

-- Location: LCCOMB_X9_Y26_N20
\ALU_1|ALUOut[14]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[14]~29_combout\ = (\Registrador_E|ALUControlE\(1) & ((\ALU_1|ALUOut[14]~28_combout\ & ((\ALU_1|Add0~28_combout\))) # (!\ALU_1|ALUOut[14]~28_combout\ & (\ALU_1|Add1~28_combout\)))) # (!\Registrador_E|ALUControlE\(1) & 
-- (((\ALU_1|ALUOut[14]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \ALU_1|Add1~28_combout\,
	datac => \ALU_1|ALUOut[14]~28_combout\,
	datad => \ALU_1|Add0~28_combout\,
	combout => \ALU_1|ALUOut[14]~29_combout\);

-- Location: LCFF_X9_Y26_N21
\Registrador_W|ALUOutW[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(14));

-- Location: LCCOMB_X12_Y28_N4
\Mux4|outMux[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[13]~26_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(13))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a13\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_W|ALUOutW\(13),
	datab => \FowardBE~combout\,
	datac => \RF|registers_rtl_1|auto_generated|ram_block1a13\,
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[13]~26_combout\);

-- Location: LCCOMB_X11_Y28_N22
\Mux4|outMux[13]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[13]~27_combout\ = (\Mux4|outMux[13]~26_combout\) # ((\Registrador_E|SignImmE\(13) & \Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|SignImmE\(13),
	datac => \Registrador_E|ALUSrcE~regout\,
	datad => \Mux4|outMux[13]~26_combout\,
	combout => \Mux4|outMux[13]~27_combout\);

-- Location: LCCOMB_X12_Y26_N22
\Mux2|outMux[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[13]~13_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(13))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardAE~combout\,
	datab => \Registrador_W|ALUOutW\(13),
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a13\,
	combout => \Mux2|outMux[13]~13_combout\);

-- Location: LCCOMB_X11_Y28_N0
\ALU_1|ALUOut[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[13]~26_combout\ = (\Registrador_E|ALUControlE\(1) & (((\Registrador_E|ALUControlE\(0))))) # (!\Registrador_E|ALUControlE\(1) & ((\Mux4|outMux[13]~27_combout\ & ((\Mux2|outMux[13]~13_combout\) # (\Registrador_E|ALUControlE\(0)))) # 
-- (!\Mux4|outMux[13]~27_combout\ & (\Mux2|outMux[13]~13_combout\ & \Registrador_E|ALUControlE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \Mux4|outMux[13]~27_combout\,
	datac => \Mux2|outMux[13]~13_combout\,
	datad => \Registrador_E|ALUControlE\(0),
	combout => \ALU_1|ALUOut[13]~26_combout\);

-- Location: LCCOMB_X11_Y28_N12
\ALU_1|ALUOut[13]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[13]~27_combout\ = (\Registrador_E|ALUControlE\(1) & ((\ALU_1|ALUOut[13]~26_combout\ & (\ALU_1|Add0~26_combout\)) # (!\ALU_1|ALUOut[13]~26_combout\ & ((\ALU_1|Add1~26_combout\))))) # (!\Registrador_E|ALUControlE\(1) & 
-- (\ALU_1|ALUOut[13]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \ALU_1|ALUOut[13]~26_combout\,
	datac => \ALU_1|Add0~26_combout\,
	datad => \ALU_1|Add1~26_combout\,
	combout => \ALU_1|ALUOut[13]~27_combout\);

-- Location: LCFF_X11_Y28_N13
\Registrador_W|ALUOutW[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(13));

-- Location: LCCOMB_X10_Y28_N12
\Mux4|outMux[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[12]~24_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(12))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a12\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_W|ALUOutW\(12),
	datab => \FowardBE~combout\,
	datac => \RF|registers_rtl_1|auto_generated|ram_block1a12\,
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[12]~24_combout\);

-- Location: LCCOMB_X10_Y28_N6
\Mux4|outMux[12]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[12]~25_combout\ = (\Mux4|outMux[12]~24_combout\) # ((\Registrador_E|ALUSrcE~regout\ & \Registrador_E|SignImmE\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUSrcE~regout\,
	datab => \Registrador_E|SignImmE\(12),
	datad => \Mux4|outMux[12]~24_combout\,
	combout => \Mux4|outMux[12]~25_combout\);

-- Location: LCCOMB_X10_Y28_N18
\ALU_1|ALUOut[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[12]~24_combout\ = (\Mux2|outMux[12]~12_combout\ & ((\Registrador_E|ALUControlE\(0)) # ((!\Registrador_E|ALUControlE\(1) & \Mux4|outMux[12]~25_combout\)))) # (!\Mux2|outMux[12]~12_combout\ & (\Registrador_E|ALUControlE\(0) & 
-- ((\Registrador_E|ALUControlE\(1)) # (\Mux4|outMux[12]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[12]~12_combout\,
	datab => \Registrador_E|ALUControlE\(0),
	datac => \Registrador_E|ALUControlE\(1),
	datad => \Mux4|outMux[12]~25_combout\,
	combout => \ALU_1|ALUOut[12]~24_combout\);

-- Location: LCCOMB_X10_Y28_N20
\ALU_1|ALUOut[12]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[12]~25_combout\ = (\Registrador_E|ALUControlE\(1) & ((\ALU_1|ALUOut[12]~24_combout\ & ((\ALU_1|Add0~24_combout\))) # (!\ALU_1|ALUOut[12]~24_combout\ & (\ALU_1|Add1~24_combout\)))) # (!\Registrador_E|ALUControlE\(1) & 
-- (((\ALU_1|ALUOut[12]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|Add1~24_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \ALU_1|Add0~24_combout\,
	datad => \ALU_1|ALUOut[12]~24_combout\,
	combout => \ALU_1|ALUOut[12]~25_combout\);

-- Location: LCFF_X10_Y28_N21
\Registrador_W|ALUOutW[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[12]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(12));

-- Location: LCCOMB_X12_Y26_N6
\Mux2|outMux[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[11]~11_combout\ = (\FowardAE~combout\ & ((\Registrador_W|ALUOutW\(11)))) # (!\FowardAE~combout\ & (\RF|registers_rtl_0|auto_generated|ram_block1a11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FowardAE~combout\,
	datac => \RF|registers_rtl_0|auto_generated|ram_block1a11\,
	datad => \Registrador_W|ALUOutW\(11),
	combout => \Mux2|outMux[11]~11_combout\);

-- Location: LCCOMB_X8_Y26_N16
\ALU_1|ALUOut[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[11]~22_combout\ = (\Mux4|outMux[11]~23_combout\ & ((\Registrador_E|ALUControlE\(0)) # ((!\Registrador_E|ALUControlE\(1) & \Mux2|outMux[11]~11_combout\)))) # (!\Mux4|outMux[11]~23_combout\ & (\Registrador_E|ALUControlE\(0) & 
-- ((\Registrador_E|ALUControlE\(1)) # (\Mux2|outMux[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[11]~23_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \Mux2|outMux[11]~11_combout\,
	datad => \Registrador_E|ALUControlE\(0),
	combout => \ALU_1|ALUOut[11]~22_combout\);

-- Location: LCCOMB_X9_Y26_N14
\ALU_1|ALUOut[11]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[11]~23_combout\ = (\Registrador_E|ALUControlE\(1) & ((\ALU_1|ALUOut[11]~22_combout\ & (\ALU_1|Add0~22_combout\)) # (!\ALU_1|ALUOut[11]~22_combout\ & ((\ALU_1|Add1~22_combout\))))) # (!\Registrador_E|ALUControlE\(1) & 
-- (\ALU_1|ALUOut[11]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \ALU_1|ALUOut[11]~22_combout\,
	datac => \ALU_1|Add0~22_combout\,
	datad => \ALU_1|Add1~22_combout\,
	combout => \ALU_1|ALUOut[11]~23_combout\);

-- Location: LCFF_X9_Y26_N15
\Registrador_W|ALUOutW[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[11]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(11));

-- Location: LCCOMB_X12_Y26_N18
\Mux4|outMux[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[3]~6_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(3))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardBE~combout\,
	datab => \Registrador_E|ALUSrcE~regout\,
	datac => \Registrador_W|ALUOutW\(3),
	datad => \RF|registers_rtl_1|auto_generated|ram_block1a3\,
	combout => \Mux4|outMux[3]~6_combout\);

-- Location: LCCOMB_X12_Y26_N4
\Mux4|outMux[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[3]~7_combout\ = (\Mux4|outMux[3]~6_combout\) # ((\Registrador_E|ALUSrcE~regout\ & \Registrador_E|SignImmE\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_E|ALUSrcE~regout\,
	datac => \Registrador_E|SignImmE\(3),
	datad => \Mux4|outMux[3]~6_combout\,
	combout => \Mux4|outMux[3]~7_combout\);

-- Location: LCCOMB_X11_Y26_N0
\ALU_1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~0_combout\ = (\Mux4|outMux[0]~1_combout\ & (\Mux2|outMux[0]~0_combout\ $ (VCC))) # (!\Mux4|outMux[0]~1_combout\ & ((\Mux2|outMux[0]~0_combout\) # (GND)))
-- \ALU_1|Add0~1\ = CARRY((\Mux2|outMux[0]~0_combout\) # (!\Mux4|outMux[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[0]~1_combout\,
	datab => \Mux2|outMux[0]~0_combout\,
	datad => VCC,
	combout => \ALU_1|Add0~0_combout\,
	cout => \ALU_1|Add0~1\);

-- Location: LCCOMB_X11_Y26_N2
\ALU_1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~2_combout\ = (\Mux4|outMux[1]~3_combout\ & ((\Mux2|outMux[1]~1_combout\ & (!\ALU_1|Add0~1\)) # (!\Mux2|outMux[1]~1_combout\ & ((\ALU_1|Add0~1\) # (GND))))) # (!\Mux4|outMux[1]~3_combout\ & ((\Mux2|outMux[1]~1_combout\ & (\ALU_1|Add0~1\ & VCC)) 
-- # (!\Mux2|outMux[1]~1_combout\ & (!\ALU_1|Add0~1\))))
-- \ALU_1|Add0~3\ = CARRY((\Mux4|outMux[1]~3_combout\ & ((!\ALU_1|Add0~1\) # (!\Mux2|outMux[1]~1_combout\))) # (!\Mux4|outMux[1]~3_combout\ & (!\Mux2|outMux[1]~1_combout\ & !\ALU_1|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[1]~3_combout\,
	datab => \Mux2|outMux[1]~1_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~1\,
	combout => \ALU_1|Add0~2_combout\,
	cout => \ALU_1|Add0~3\);

-- Location: LCCOMB_X11_Y26_N4
\ALU_1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~4_combout\ = ((\Mux2|outMux[2]~2_combout\ $ (\Mux4|outMux[2]~5_combout\ $ (\ALU_1|Add0~3\)))) # (GND)
-- \ALU_1|Add0~5\ = CARRY((\Mux2|outMux[2]~2_combout\ & ((!\ALU_1|Add0~3\) # (!\Mux4|outMux[2]~5_combout\))) # (!\Mux2|outMux[2]~2_combout\ & (!\Mux4|outMux[2]~5_combout\ & !\ALU_1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[2]~2_combout\,
	datab => \Mux4|outMux[2]~5_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~3\,
	combout => \ALU_1|Add0~4_combout\,
	cout => \ALU_1|Add0~5\);

-- Location: LCCOMB_X11_Y26_N6
\ALU_1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~6_combout\ = (\Mux2|outMux[3]~3_combout\ & ((\Mux4|outMux[3]~7_combout\ & (!\ALU_1|Add0~5\)) # (!\Mux4|outMux[3]~7_combout\ & (\ALU_1|Add0~5\ & VCC)))) # (!\Mux2|outMux[3]~3_combout\ & ((\Mux4|outMux[3]~7_combout\ & ((\ALU_1|Add0~5\) # (GND))) 
-- # (!\Mux4|outMux[3]~7_combout\ & (!\ALU_1|Add0~5\))))
-- \ALU_1|Add0~7\ = CARRY((\Mux2|outMux[3]~3_combout\ & (\Mux4|outMux[3]~7_combout\ & !\ALU_1|Add0~5\)) # (!\Mux2|outMux[3]~3_combout\ & ((\Mux4|outMux[3]~7_combout\) # (!\ALU_1|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[3]~3_combout\,
	datab => \Mux4|outMux[3]~7_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~5\,
	combout => \ALU_1|Add0~6_combout\,
	cout => \ALU_1|Add0~7\);

-- Location: LCCOMB_X11_Y26_N8
\ALU_1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~8_combout\ = ((\Mux2|outMux[4]~4_combout\ $ (\Mux4|outMux[4]~9_combout\ $ (\ALU_1|Add0~7\)))) # (GND)
-- \ALU_1|Add0~9\ = CARRY((\Mux2|outMux[4]~4_combout\ & ((!\ALU_1|Add0~7\) # (!\Mux4|outMux[4]~9_combout\))) # (!\Mux2|outMux[4]~4_combout\ & (!\Mux4|outMux[4]~9_combout\ & !\ALU_1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[4]~4_combout\,
	datab => \Mux4|outMux[4]~9_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~7\,
	combout => \ALU_1|Add0~8_combout\,
	cout => \ALU_1|Add0~9\);

-- Location: LCCOMB_X11_Y26_N10
\ALU_1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~10_combout\ = (\Mux4|outMux[5]~11_combout\ & ((\Mux2|outMux[5]~5_combout\ & (!\ALU_1|Add0~9\)) # (!\Mux2|outMux[5]~5_combout\ & ((\ALU_1|Add0~9\) # (GND))))) # (!\Mux4|outMux[5]~11_combout\ & ((\Mux2|outMux[5]~5_combout\ & (\ALU_1|Add0~9\ & 
-- VCC)) # (!\Mux2|outMux[5]~5_combout\ & (!\ALU_1|Add0~9\))))
-- \ALU_1|Add0~11\ = CARRY((\Mux4|outMux[5]~11_combout\ & ((!\ALU_1|Add0~9\) # (!\Mux2|outMux[5]~5_combout\))) # (!\Mux4|outMux[5]~11_combout\ & (!\Mux2|outMux[5]~5_combout\ & !\ALU_1|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[5]~11_combout\,
	datab => \Mux2|outMux[5]~5_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~9\,
	combout => \ALU_1|Add0~10_combout\,
	cout => \ALU_1|Add0~11\);

-- Location: LCCOMB_X11_Y26_N12
\ALU_1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~12_combout\ = ((\Mux2|outMux[6]~6_combout\ $ (\Mux4|outMux[6]~13_combout\ $ (\ALU_1|Add0~11\)))) # (GND)
-- \ALU_1|Add0~13\ = CARRY((\Mux2|outMux[6]~6_combout\ & ((!\ALU_1|Add0~11\) # (!\Mux4|outMux[6]~13_combout\))) # (!\Mux2|outMux[6]~6_combout\ & (!\Mux4|outMux[6]~13_combout\ & !\ALU_1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[6]~6_combout\,
	datab => \Mux4|outMux[6]~13_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~11\,
	combout => \ALU_1|Add0~12_combout\,
	cout => \ALU_1|Add0~13\);

-- Location: LCCOMB_X11_Y26_N14
\ALU_1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~14_combout\ = (\Mux4|outMux[7]~15_combout\ & ((\Mux2|outMux[7]~7_combout\ & (!\ALU_1|Add0~13\)) # (!\Mux2|outMux[7]~7_combout\ & ((\ALU_1|Add0~13\) # (GND))))) # (!\Mux4|outMux[7]~15_combout\ & ((\Mux2|outMux[7]~7_combout\ & (\ALU_1|Add0~13\ & 
-- VCC)) # (!\Mux2|outMux[7]~7_combout\ & (!\ALU_1|Add0~13\))))
-- \ALU_1|Add0~15\ = CARRY((\Mux4|outMux[7]~15_combout\ & ((!\ALU_1|Add0~13\) # (!\Mux2|outMux[7]~7_combout\))) # (!\Mux4|outMux[7]~15_combout\ & (!\Mux2|outMux[7]~7_combout\ & !\ALU_1|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[7]~15_combout\,
	datab => \Mux2|outMux[7]~7_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~13\,
	combout => \ALU_1|Add0~14_combout\,
	cout => \ALU_1|Add0~15\);

-- Location: LCCOMB_X11_Y26_N16
\ALU_1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~16_combout\ = ((\Mux2|outMux[8]~8_combout\ $ (\Mux4|outMux[8]~17_combout\ $ (\ALU_1|Add0~15\)))) # (GND)
-- \ALU_1|Add0~17\ = CARRY((\Mux2|outMux[8]~8_combout\ & ((!\ALU_1|Add0~15\) # (!\Mux4|outMux[8]~17_combout\))) # (!\Mux2|outMux[8]~8_combout\ & (!\Mux4|outMux[8]~17_combout\ & !\ALU_1|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[8]~8_combout\,
	datab => \Mux4|outMux[8]~17_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~15\,
	combout => \ALU_1|Add0~16_combout\,
	cout => \ALU_1|Add0~17\);

-- Location: LCCOMB_X11_Y26_N18
\ALU_1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|Add0~18_combout\ = (\Mux2|outMux[9]~9_combout\ & ((\Mux4|outMux[9]~19_combout\ & (!\ALU_1|Add0~17\)) # (!\Mux4|outMux[9]~19_combout\ & (\ALU_1|Add0~17\ & VCC)))) # (!\Mux2|outMux[9]~9_combout\ & ((\Mux4|outMux[9]~19_combout\ & ((\ALU_1|Add0~17\) # 
-- (GND))) # (!\Mux4|outMux[9]~19_combout\ & (!\ALU_1|Add0~17\))))
-- \ALU_1|Add0~19\ = CARRY((\Mux2|outMux[9]~9_combout\ & (\Mux4|outMux[9]~19_combout\ & !\ALU_1|Add0~17\)) # (!\Mux2|outMux[9]~9_combout\ & ((\Mux4|outMux[9]~19_combout\) # (!\ALU_1|Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[9]~9_combout\,
	datab => \Mux4|outMux[9]~19_combout\,
	datad => VCC,
	cin => \ALU_1|Add0~17\,
	combout => \ALU_1|Add0~18_combout\,
	cout => \ALU_1|Add0~19\);

-- Location: LCCOMB_X14_Y26_N24
\ALU_1|ALUOut[10]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[10]~21_combout\ = (\ALU_1|ALUOut[10]~20_combout\ & (((\ALU_1|Add0~20_combout\)) # (!\Registrador_E|ALUControlE\(1)))) # (!\ALU_1|ALUOut[10]~20_combout\ & (\Registrador_E|ALUControlE\(1) & ((\ALU_1|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ALUOut[10]~20_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \ALU_1|Add0~20_combout\,
	datad => \ALU_1|Add1~20_combout\,
	combout => \ALU_1|ALUOut[10]~21_combout\);

-- Location: LCFF_X14_Y26_N25
\Registrador_W|ALUOutW[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(10));

-- Location: LCCOMB_X10_Y27_N2
\Mux4|outMux[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[9]~18_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(9))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a9\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_W|ALUOutW\(9),
	datab => \FowardBE~combout\,
	datac => \Registrador_E|ALUSrcE~regout\,
	datad => \RF|registers_rtl_1|auto_generated|ram_block1a9\,
	combout => \Mux4|outMux[9]~18_combout\);

-- Location: LCCOMB_X10_Y27_N16
\Mux4|outMux[9]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[9]~19_combout\ = (\Mux4|outMux[9]~18_combout\) # ((\Registrador_E|ALUSrcE~regout\ & \Registrador_E|SignImmE\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUSrcE~regout\,
	datac => \Registrador_E|SignImmE\(9),
	datad => \Mux4|outMux[9]~18_combout\,
	combout => \Mux4|outMux[9]~19_combout\);

-- Location: LCCOMB_X10_Y27_N24
\ALU_1|ALUOut[9]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[9]~19_combout\ = (\ALU_1|ALUOut[9]~18_combout\ & (((\ALU_1|Add0~18_combout\)) # (!\Registrador_E|ALUControlE\(1)))) # (!\ALU_1|ALUOut[9]~18_combout\ & (\Registrador_E|ALUControlE\(1) & ((\ALU_1|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ALUOut[9]~18_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \ALU_1|Add0~18_combout\,
	datad => \ALU_1|Add1~18_combout\,
	combout => \ALU_1|ALUOut[9]~19_combout\);

-- Location: LCFF_X10_Y27_N25
\Registrador_W|ALUOutW[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(9));

-- Location: LCCOMB_X14_Y26_N28
\Mux4|outMux[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[8]~16_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(8))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a8\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_W|ALUOutW\(8),
	datab => \FowardBE~combout\,
	datac => \RF|registers_rtl_1|auto_generated|ram_block1a8\,
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[8]~16_combout\);

-- Location: LCCOMB_X14_Y26_N18
\Mux4|outMux[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[8]~17_combout\ = (\Mux4|outMux[8]~16_combout\) # ((\Registrador_E|ALUSrcE~regout\ & \Registrador_E|SignImmE\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_E|ALUSrcE~regout\,
	datac => \Registrador_E|SignImmE\(8),
	datad => \Mux4|outMux[8]~16_combout\,
	combout => \Mux4|outMux[8]~17_combout\);

-- Location: LCCOMB_X14_Y26_N6
\ALU_1|ALUOut[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[8]~17_combout\ = (\ALU_1|ALUOut[8]~16_combout\ & (((\ALU_1|Add0~16_combout\)) # (!\Registrador_E|ALUControlE\(1)))) # (!\ALU_1|ALUOut[8]~16_combout\ & (\Registrador_E|ALUControlE\(1) & (\ALU_1|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ALUOut[8]~16_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \ALU_1|Add1~16_combout\,
	datad => \ALU_1|Add0~16_combout\,
	combout => \ALU_1|ALUOut[8]~17_combout\);

-- Location: LCFF_X14_Y26_N7
\Registrador_W|ALUOutW[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[8]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(8));

-- Location: LCCOMB_X11_Y27_N14
\Mux2|outMux[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[7]~7_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(7))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardAE~combout\,
	datab => \Registrador_W|ALUOutW\(7),
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a7\,
	combout => \Mux2|outMux[7]~7_combout\);

-- Location: LCCOMB_X11_Y27_N4
\ALU_1|ALUOut[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[7]~15_combout\ = (\ALU_1|ALUOut[7]~14_combout\ & (((\ALU_1|Add0~14_combout\)) # (!\Registrador_E|ALUControlE\(1)))) # (!\ALU_1|ALUOut[7]~14_combout\ & (\Registrador_E|ALUControlE\(1) & ((\ALU_1|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ALUOut[7]~14_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \ALU_1|Add0~14_combout\,
	datad => \ALU_1|Add1~14_combout\,
	combout => \ALU_1|ALUOut[7]~15_combout\);

-- Location: LCFF_X11_Y27_N5
\Registrador_W|ALUOutW[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(7));

-- Location: LCCOMB_X9_Y26_N0
\Mux4|outMux[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[6]~12_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(6))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardBE~combout\,
	datab => \Registrador_W|ALUOutW\(6),
	datac => \Registrador_E|ALUSrcE~regout\,
	datad => \RF|registers_rtl_1|auto_generated|ram_block1a6\,
	combout => \Mux4|outMux[6]~12_combout\);

-- Location: LCCOMB_X9_Y26_N22
\Mux4|outMux[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[6]~13_combout\ = (\Mux4|outMux[6]~12_combout\) # ((\Registrador_E|ALUSrcE~regout\ & \Registrador_E|SignImmE\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUSrcE~regout\,
	datac => \Registrador_E|SignImmE\(6),
	datad => \Mux4|outMux[6]~12_combout\,
	combout => \Mux4|outMux[6]~13_combout\);

-- Location: LCCOMB_X8_Y26_N22
\ALU_1|ALUOut[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[6]~13_combout\ = (\ALU_1|ALUOut[6]~12_combout\ & (((\ALU_1|Add0~12_combout\)) # (!\Registrador_E|ALUControlE\(1)))) # (!\ALU_1|ALUOut[6]~12_combout\ & (\Registrador_E|ALUControlE\(1) & (\ALU_1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ALUOut[6]~12_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \ALU_1|Add1~12_combout\,
	datad => \ALU_1|Add0~12_combout\,
	combout => \ALU_1|ALUOut[6]~13_combout\);

-- Location: LCFF_X8_Y26_N23
\Registrador_W|ALUOutW[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(6));

-- Location: LCCOMB_X14_Y26_N26
\Mux2|outMux[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[5]~5_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(5))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FowardAE~combout\,
	datac => \Registrador_W|ALUOutW\(5),
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a5\,
	combout => \Mux2|outMux[5]~5_combout\);

-- Location: LCCOMB_X14_Y26_N4
\ALU_1|ALUOut[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[5]~10_combout\ = (\Mux4|outMux[5]~11_combout\ & ((\Registrador_E|ALUControlE\(0)) # ((\Mux2|outMux[5]~5_combout\ & !\Registrador_E|ALUControlE\(1))))) # (!\Mux4|outMux[5]~11_combout\ & (\Registrador_E|ALUControlE\(0) & 
-- ((\Mux2|outMux[5]~5_combout\) # (\Registrador_E|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[5]~11_combout\,
	datab => \Mux2|outMux[5]~5_combout\,
	datac => \Registrador_E|ALUControlE\(1),
	datad => \Registrador_E|ALUControlE\(0),
	combout => \ALU_1|ALUOut[5]~10_combout\);

-- Location: LCCOMB_X14_Y26_N20
\ALU_1|ALUOut[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[5]~11_combout\ = (\ALU_1|ALUOut[5]~10_combout\ & (((\ALU_1|Add0~10_combout\) # (!\Registrador_E|ALUControlE\(1))))) # (!\ALU_1|ALUOut[5]~10_combout\ & (\ALU_1|Add1~10_combout\ & (\Registrador_E|ALUControlE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|Add1~10_combout\,
	datab => \ALU_1|ALUOut[5]~10_combout\,
	datac => \Registrador_E|ALUControlE\(1),
	datad => \ALU_1|Add0~10_combout\,
	combout => \ALU_1|ALUOut[5]~11_combout\);

-- Location: LCFF_X14_Y26_N21
\Registrador_W|ALUOutW[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(5));

-- Location: LCCOMB_X9_Y26_N6
\Mux4|outMux[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[4]~8_combout\ = (!\Registrador_E|ALUSrcE~regout\ & ((\FowardBE~combout\ & (\Registrador_W|ALUOutW\(4))) # (!\FowardBE~combout\ & ((\RF|registers_rtl_1|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_W|ALUOutW\(4),
	datab => \FowardBE~combout\,
	datac => \RF|registers_rtl_1|auto_generated|ram_block1a4\,
	datad => \Registrador_E|ALUSrcE~regout\,
	combout => \Mux4|outMux[4]~8_combout\);

-- Location: LCCOMB_X9_Y26_N12
\Mux4|outMux[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|outMux[4]~9_combout\ = (\Mux4|outMux[4]~8_combout\) # ((\Registrador_E|ALUSrcE~regout\ & \Registrador_E|SignImmE\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUSrcE~regout\,
	datac => \Registrador_E|SignImmE\(4),
	datad => \Mux4|outMux[4]~8_combout\,
	combout => \Mux4|outMux[4]~9_combout\);

-- Location: LCCOMB_X8_Y26_N12
\ALU_1|ALUOut[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[4]~8_combout\ = (\Mux2|outMux[4]~4_combout\ & ((\Registrador_E|ALUControlE\(0)) # ((!\Registrador_E|ALUControlE\(1) & \Mux4|outMux[4]~9_combout\)))) # (!\Mux2|outMux[4]~4_combout\ & (\Registrador_E|ALUControlE\(0) & 
-- ((\Registrador_E|ALUControlE\(1)) # (\Mux4|outMux[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2|outMux[4]~4_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \Mux4|outMux[4]~9_combout\,
	datad => \Registrador_E|ALUControlE\(0),
	combout => \ALU_1|ALUOut[4]~8_combout\);

-- Location: LCCOMB_X8_Y26_N0
\ALU_1|ALUOut[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[4]~9_combout\ = (\Registrador_E|ALUControlE\(1) & ((\ALU_1|ALUOut[4]~8_combout\ & ((\ALU_1|Add0~8_combout\))) # (!\ALU_1|ALUOut[4]~8_combout\ & (\ALU_1|Add1~8_combout\)))) # (!\Registrador_E|ALUControlE\(1) & 
-- (((\ALU_1|ALUOut[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|Add1~8_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \ALU_1|Add0~8_combout\,
	datad => \ALU_1|ALUOut[4]~8_combout\,
	combout => \ALU_1|ALUOut[4]~9_combout\);

-- Location: LCFF_X8_Y26_N1
\Registrador_W|ALUOutW[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(4));

-- Location: LCCOMB_X12_Y26_N8
\Mux2|outMux[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[3]~3_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(3))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FowardAE~combout\,
	datac => \Registrador_W|ALUOutW\(3),
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a3\,
	combout => \Mux2|outMux[3]~3_combout\);

-- Location: LCCOMB_X8_Y26_N10
\ALU_1|ALUOut[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[3]~6_combout\ = (\Mux4|outMux[3]~7_combout\ & ((\Registrador_E|ALUControlE\(0)) # ((!\Registrador_E|ALUControlE\(1) & \Mux2|outMux[3]~3_combout\)))) # (!\Mux4|outMux[3]~7_combout\ & (\Registrador_E|ALUControlE\(0) & 
-- ((\Registrador_E|ALUControlE\(1)) # (\Mux2|outMux[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[3]~7_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \Mux2|outMux[3]~3_combout\,
	datad => \Registrador_E|ALUControlE\(0),
	combout => \ALU_1|ALUOut[3]~6_combout\);

-- Location: LCCOMB_X12_Y26_N24
\ALU_1|ALUOut[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[3]~7_combout\ = (\Registrador_E|ALUControlE\(1) & ((\ALU_1|ALUOut[3]~6_combout\ & ((\ALU_1|Add0~6_combout\))) # (!\ALU_1|ALUOut[3]~6_combout\ & (\ALU_1|Add1~6_combout\)))) # (!\Registrador_E|ALUControlE\(1) & 
-- (((\ALU_1|ALUOut[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \ALU_1|Add1~6_combout\,
	datac => \ALU_1|Add0~6_combout\,
	datad => \ALU_1|ALUOut[3]~6_combout\,
	combout => \ALU_1|ALUOut[3]~7_combout\);

-- Location: LCFF_X12_Y26_N25
\Registrador_W|ALUOutW[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(3));

-- Location: LCCOMB_X9_Y26_N2
\Mux2|outMux[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[2]~2_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(2))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FowardAE~combout\,
	datac => \Registrador_W|ALUOutW\(2),
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a2\,
	combout => \Mux2|outMux[2]~2_combout\);

-- Location: LCCOMB_X8_Y26_N24
\ALU_1|ALUOut[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[2]~4_combout\ = (\Mux4|outMux[2]~5_combout\ & ((\Registrador_E|ALUControlE\(0)) # ((!\Registrador_E|ALUControlE\(1) & \Mux2|outMux[2]~2_combout\)))) # (!\Mux4|outMux[2]~5_combout\ & (\Registrador_E|ALUControlE\(0) & 
-- ((\Registrador_E|ALUControlE\(1)) # (\Mux2|outMux[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[2]~5_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \Mux2|outMux[2]~2_combout\,
	datad => \Registrador_E|ALUControlE\(0),
	combout => \ALU_1|ALUOut[2]~4_combout\);

-- Location: LCCOMB_X9_Y26_N16
\ALU_1|ALUOut[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[2]~5_combout\ = (\ALU_1|ALUOut[2]~4_combout\ & (((\ALU_1|Add0~4_combout\) # (!\Registrador_E|ALUControlE\(1))))) # (!\ALU_1|ALUOut[2]~4_combout\ & (\ALU_1|Add1~4_combout\ & ((\Registrador_E|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|Add1~4_combout\,
	datab => \ALU_1|ALUOut[2]~4_combout\,
	datac => \ALU_1|Add0~4_combout\,
	datad => \Registrador_E|ALUControlE\(1),
	combout => \ALU_1|ALUOut[2]~5_combout\);

-- Location: LCFF_X9_Y26_N17
\Registrador_W|ALUOutW[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(2));

-- Location: LCCOMB_X12_Y26_N12
\Mux2|outMux[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[1]~1_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(1))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FowardAE~combout\,
	datac => \Registrador_W|ALUOutW\(1),
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a1\,
	combout => \Mux2|outMux[1]~1_combout\);

-- Location: LCCOMB_X12_Y26_N2
\ALU_1|ALUOut[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[1]~2_combout\ = (\Mux4|outMux[1]~3_combout\ & ((\Registrador_E|ALUControlE\(0)) # ((!\Registrador_E|ALUControlE\(1) & \Mux2|outMux[1]~1_combout\)))) # (!\Mux4|outMux[1]~3_combout\ & (\Registrador_E|ALUControlE\(0) & 
-- ((\Registrador_E|ALUControlE\(1)) # (\Mux2|outMux[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|outMux[1]~3_combout\,
	datab => \Registrador_E|ALUControlE\(0),
	datac => \Registrador_E|ALUControlE\(1),
	datad => \Mux2|outMux[1]~1_combout\,
	combout => \ALU_1|ALUOut[1]~2_combout\);

-- Location: LCCOMB_X12_Y26_N14
\ALU_1|ALUOut[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[1]~3_combout\ = (\Registrador_E|ALUControlE\(1) & ((\ALU_1|ALUOut[1]~2_combout\ & ((\ALU_1|Add0~2_combout\))) # (!\ALU_1|ALUOut[1]~2_combout\ & (\ALU_1|Add1~2_combout\)))) # (!\Registrador_E|ALUControlE\(1) & (\ALU_1|ALUOut[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_E|ALUControlE\(1),
	datab => \ALU_1|ALUOut[1]~2_combout\,
	datac => \ALU_1|Add1~2_combout\,
	datad => \ALU_1|Add0~2_combout\,
	combout => \ALU_1|ALUOut[1]~3_combout\);

-- Location: LCFF_X12_Y26_N15
\Registrador_W|ALUOutW[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(1));

-- Location: LCCOMB_X12_Y26_N20
\Mux2|outMux[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|outMux[0]~0_combout\ = (\FowardAE~combout\ & (\Registrador_W|ALUOutW\(0))) # (!\FowardAE~combout\ & ((\RF|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_W|ALUOutW\(0),
	datac => \FowardAE~combout\,
	datad => \RF|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \Mux2|outMux[0]~0_combout\);

-- Location: LCCOMB_X12_Y26_N28
\ALU_1|ALUOut[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU_1|ALUOut[0]~1_combout\ = (\ALU_1|ALUOut[0]~0_combout\ & (((\ALU_1|Add0~0_combout\)) # (!\Registrador_E|ALUControlE\(1)))) # (!\ALU_1|ALUOut[0]~0_combout\ & (\Registrador_E|ALUControlE\(1) & ((\ALU_1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ALUOut[0]~0_combout\,
	datab => \Registrador_E|ALUControlE\(1),
	datac => \ALU_1|Add0~0_combout\,
	datad => \ALU_1|Add1~0_combout\,
	combout => \ALU_1|ALUOut[0]~1_combout\);

-- Location: LCFF_X12_Y26_N29
\Registrador_W|ALUOutW[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALU_1|ALUOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registrador_W|ALUOutW\(0));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Op[0]~I\ : cycloneii_io
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
	datain => \Registrador_D|InstrD\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Op(0));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Op[1]~I\ : cycloneii_io
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
	datain => \Registrador_D|InstrD\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Op(1));

-- Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Op[2]~I\ : cycloneii_io
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
	datain => \Registrador_D|InstrD\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Op(2));

-- Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Op[3]~I\ : cycloneii_io
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
	datain => \Registrador_D|InstrD\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Op(3));

-- Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Op[4]~I\ : cycloneii_io
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
	datain => \Registrador_D|InstrD\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Op(4));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Op[5]~I\ : cycloneii_io
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
	datain => \Registrador_D|InstrD\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Op(5));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Funct[0]~I\ : cycloneii_io
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
	datain => \Registrador_D|InstrD\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Funct(0));

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Funct[1]~I\ : cycloneii_io
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
	datain => \Registrador_D|InstrD\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Funct(1));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Funct[2]~I\ : cycloneii_io
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
	datain => \Registrador_D|InstrD\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Funct(2));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Funct[3]~I\ : cycloneii_io
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
	datain => \Registrador_D|InstrD\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Funct(3));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Funct[4]~I\ : cycloneii_io
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
	datain => \Registrador_D|InstrD\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Funct(4));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Funct[5]~I\ : cycloneii_io
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
	datain => \Registrador_D|InstrD\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Funct(5));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_W|RegWriteW~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegWriteW);

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_W|WriteRegW\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteRegW(0));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_W|WriteRegW\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteRegW(1));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_W|WriteRegW\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteRegW(2));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_W|WriteRegW\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteRegW(3));

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_W|WriteRegW\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteRegW(4));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_E|RsE\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RsE(0));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_E|RsE\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RsE(1));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_E|RsE\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RsE(2));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_E|RsE\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RsE(3));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_E|RsE\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RsE(4));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_E|RtE\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RtE(0));

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_E|RtE\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RtE(1));

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_E|RtE\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RtE(2));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_E|RtE\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RtE(3));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_E|RtE\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RtE(4));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[0]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(0));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[1]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(1));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[2]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(2));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[3]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(3));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[4]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(4));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[5]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(5));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[6]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(6));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[7]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(7));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[8]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(8));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[9]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(9));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[10]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(10));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[11]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(11));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[12]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(12));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[13]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(13));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[14]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(14));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[15]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(15));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[16]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(16));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[17]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(17));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[18]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(18));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[19]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(19));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[20]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(20));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[21]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(21));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[22]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(22));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[23]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(23));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[24]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(24));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[25]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(25));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[26]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(26));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[27]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(27));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[28]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(28));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[29]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(29));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[30]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(30));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AluOutW[31]~I\ : cycloneii_io
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
	datain => \Registrador_W|ALUOutW\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(31));
END structure;


