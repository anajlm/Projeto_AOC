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

-- DATE "12/03/2019 11:27:27"

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

ENTITY 	Pipeline IS
    PORT (
	clk : IN std_logic;
	Instr : IN std_logic_vector(31 DOWNTO 0);
	RegWriteW : OUT std_logic;
	WriteRegW : OUT std_logic_vector(4 DOWNTO 0);
	AluOutW : OUT std_logic_vector(31 DOWNTO 0)
	);
END Pipeline;

-- Design Ports Information
-- RegWriteW	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteRegW[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteRegW[1]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteRegW[2]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteRegW[3]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteRegW[4]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[0]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[1]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[2]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[4]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[5]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[7]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[8]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[9]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[10]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[11]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[12]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[13]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[14]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[15]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[16]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[17]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[18]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[19]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[20]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[21]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[22]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[23]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[24]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[25]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[26]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[27]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[28]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[29]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[30]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AluOutW[31]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[16]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[17]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[18]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[19]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[20]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[21]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[22]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[23]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[24]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[25]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[26]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[27]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[28]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[30]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[31]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[11]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[29]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[12]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[13]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[14]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[15]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[0]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[5]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[3]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[4]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[1]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[6]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[7]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[8]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[9]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Instr[10]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Pipeline IS
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
SIGNAL ww_RegWriteW : std_logic;
SIGNAL ww_WriteRegW : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_AluOutW : std_logic_vector(31 DOWNTO 0);
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~2_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~16_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~18_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~32_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~34_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~36_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~42_combout\ : std_logic;
SIGNAL \Unidade_de_Hazard|Equal2~0_combout\ : std_logic;
SIGNAL \Unidade_de_Hazard|Equal0~0_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[2]~4_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[3]~6_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[4]~9_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[5]~5_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[5]~11_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[7]~7_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[9]~19_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[9]~20_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[10]~21_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[10]~22_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[10]~20_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[11]~22_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[13]~13_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[13]~26_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[15]~15_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[15]~30_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[18]~37_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[18]~38_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[19]~39_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[19]~40_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[19]~38_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[20]~40_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[21]~43_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[22]~22_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[22]~45_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[22]~44_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[23]~47_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[23]~48_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[23]~46_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[24]~24_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[24]~48_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[25]~51_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[25]~52_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[25]~50_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[26]~52_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[27]~54_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[29]~58_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[30]~30_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[31]~62_combout\ : std_logic;
SIGNAL \Controladora|ALUControlID[1]~0_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_E|RsE[0]~feeder_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_D|InstrD[28]~feeder_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_D|InstrD[9]~feeder_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_D|InstrD[10]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_D|InstrD[31]~feeder_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_D|InstrD[27]~feeder_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_D|InstrD[26]~feeder_combout\ : std_logic;
SIGNAL \Controladora|Equal0~0_combout\ : std_logic;
SIGNAL \Controladora|RegWrite~combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_E|RegWriteE~regout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_W|RegWriteW~regout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_D|InstrD[29]~feeder_combout\ : std_logic;
SIGNAL \Controladora|Equal0~1_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_E|RegDstE~regout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux1|outMux[0]~0_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_D|InstrD[12]~feeder_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_E|SignImmE[12]~feeder_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux1|outMux[1]~1_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_D|InstrD[18]~feeder_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux1|outMux[2]~2_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_D|InstrD[19]~feeder_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_D|InstrD[14]~feeder_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_E|SignImmE[14]~feeder_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux1|outMux[3]~3_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux1|outMux[4]~4_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_D|InstrD[25]~feeder_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_E|RsE[4]~feeder_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_D|InstrD[24]~feeder_combout\ : std_logic;
SIGNAL \Unidade_de_Hazard|FowardAE~1_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_E|RsE[1]~feeder_combout\ : std_logic;
SIGNAL \Unidade_de_Hazard|FowardAE~0_combout\ : std_logic;
SIGNAL \Unidade_de_Hazard|FowardAE~2_combout\ : std_logic;
SIGNAL \Unidade_de_Hazard|FowardAE~combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[0]~0_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~0_combout\ : std_logic;
SIGNAL \Controladora|Equal1~0_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_E|ALUSrcE~regout\ : std_logic;
SIGNAL \Unidade_de_Hazard|FowardBE~1_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_E|RtE[0]~feeder_combout\ : std_logic;
SIGNAL \Unidade_de_Hazard|FowardBE~0_combout\ : std_logic;
SIGNAL \Unidade_de_Hazard|FowardBE~2_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[0]~0_combout\ : std_logic;
SIGNAL \Unidade_de_Hazard|FowardBE~combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[0]~1_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[0]~2_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~0_combout\ : std_logic;
SIGNAL \Controladora|Equal4~0_combout\ : std_logic;
SIGNAL \Controladora|ALUControlID~3_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[0]~0_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[0]~1_combout\ : std_logic;
SIGNAL \Controladora|ALUControlID[1]~1_combout\ : std_logic;
SIGNAL \Controladora|ALUControlID[1]~2_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[8]~8_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[8]~16_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[22]~46_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[21]~44_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[20]~20_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[23]~23_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~45\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~46_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[12]~12_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[24]~49_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[24]~50_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~47\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~48_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~47\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~48_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[24]~49_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[29]~59_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[29]~60_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~49\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~51\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~53\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~55\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~57\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~58_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[31]~63_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[31]~64_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[31]~31_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~59\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~61\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~62_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[28]~28_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[27]~27_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[26]~53_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[26]~54_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~49\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~51\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~53\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~55\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~57\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~59\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~61\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~62_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[31]~63_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[30]~61_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[30]~62_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[30]~60_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~60_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~60_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[30]~61_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[29]~29_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~58_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[29]~59_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[28]~57_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[28]~58_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~56_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[28]~56_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~56_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[28]~57_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[27]~55_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[27]~56_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~54_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~54_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[27]~55_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[26]~26_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~52_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~52_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[26]~53_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[25]~25_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~50_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~50_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[25]~51_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[4]~10_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[3]~7_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[3]~8_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~1\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~3\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~5\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~7\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~9\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~11\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~13\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~15\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~17\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~19\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~21\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~23\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~25\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~27\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~29\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~31\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~33\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~35\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~37\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~39\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~41\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~43\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~45\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~46_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[23]~47_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[17]~17_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[16]~16_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[11]~23_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[11]~24_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_D|InstrD[6]~feeder_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[6]~13_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[6]~14_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[2]~2_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~1\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~3\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~5\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~7\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~9\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~11\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~13\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~15\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~17\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~19\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~21\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~23\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~25\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~27\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~29\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~31\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~33\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~35\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~37\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~39\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~41\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~43\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~44_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~44_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[22]~45_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[21]~21_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~42_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[21]~42_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[21]~43_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[20]~41_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[20]~42_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~40_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~40_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[20]~41_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[19]~19_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~38_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~38_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[19]~39_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[18]~18_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~36_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[18]~36_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[18]~37_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[17]~35_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[17]~36_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[17]~34_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~34_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[17]~35_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[16]~33_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[16]~34_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~32_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[16]~32_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[16]~33_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[15]~31_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[15]~32_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~30_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~30_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[15]~31_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[14]~29_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[14]~30_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~28_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[14]~14_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[14]~28_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~28_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[14]~29_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[13]~27_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[13]~28_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~26_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~26_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[13]~27_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[12]~25_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[12]~26_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[12]~24_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~24_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~24_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[12]~25_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[11]~11_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~22_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~22_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[11]~23_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[10]~10_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~20_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~20_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[10]~21_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[9]~9_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[9]~18_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~18_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[9]~19_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[8]~17_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[8]~18_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~16_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[8]~17_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_D|InstrD[7]~feeder_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[7]~15_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[7]~16_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[7]~14_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~14_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~14_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[7]~15_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[6]~6_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[6]~12_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~12_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~12_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[6]~13_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[5]~12_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~10_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[5]~10_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~10_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[5]~11_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[4]~4_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[4]~8_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~8_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~8_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[4]~9_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[3]~3_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~6_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~6_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[3]~7_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[2]~5_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[2]~6_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~4_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add1~4_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[2]~5_combout\ : std_logic;
SIGNAL \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[1]~3_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux4|outMux[1]~4_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Mux2|outMux[1]~1_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[1]~2_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|Add0~2_combout\ : std_logic;
SIGNAL \Caminho_de_dados|ALU_1|ALUOut[1]~3_combout\ : std_logic;
SIGNAL \Caminho_de_dados|Registrador_E|ALUControlE\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Caminho_de_dados|Registrador_E|RtE\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Instr~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Caminho_de_dados|Registrador_D|InstrD\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Caminho_de_dados|Registrador_W|ALUOutW\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Caminho_de_dados|Registrador_E|RsE\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Caminho_de_dados|Registrador_W|WriteRegW\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Caminho_de_dados|Registrador_E|SignImmE\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clk~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_Instr <= Instr;
RegWriteW <= ww_RegWriteW;
WriteRegW <= ww_WriteRegW;
AluOutW <= ww_AluOutW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\Caminho_de_dados|Registrador_W|ALUOutW\(31) & \Caminho_de_dados|Registrador_W|ALUOutW\(30) & \Caminho_de_dados|Registrador_W|ALUOutW\(29) & 
\Caminho_de_dados|Registrador_W|ALUOutW\(28) & \Caminho_de_dados|Registrador_W|ALUOutW\(27) & \Caminho_de_dados|Registrador_W|ALUOutW\(26) & \Caminho_de_dados|Registrador_W|ALUOutW\(25) & \Caminho_de_dados|Registrador_W|ALUOutW\(24) & 
\Caminho_de_dados|Registrador_W|ALUOutW\(23) & \Caminho_de_dados|Registrador_W|ALUOutW\(22) & \Caminho_de_dados|Registrador_W|ALUOutW\(21) & \Caminho_de_dados|Registrador_W|ALUOutW\(20) & \Caminho_de_dados|Registrador_W|ALUOutW\(19) & 
\Caminho_de_dados|Registrador_W|ALUOutW\(18) & \Caminho_de_dados|Registrador_W|ALUOutW\(17) & \Caminho_de_dados|Registrador_W|ALUOutW\(16) & \Caminho_de_dados|Registrador_W|ALUOutW\(15) & \Caminho_de_dados|Registrador_W|ALUOutW\(14) & 
\Caminho_de_dados|Registrador_W|ALUOutW\(13) & \Caminho_de_dados|Registrador_W|ALUOutW\(12) & \Caminho_de_dados|Registrador_W|ALUOutW\(11) & \Caminho_de_dados|Registrador_W|ALUOutW\(10) & \Caminho_de_dados|Registrador_W|ALUOutW\(9) & 
\Caminho_de_dados|Registrador_W|ALUOutW\(8) & \Caminho_de_dados|Registrador_W|ALUOutW\(7) & \Caminho_de_dados|Registrador_W|ALUOutW\(6) & \Caminho_de_dados|Registrador_W|ALUOutW\(5) & \Caminho_de_dados|Registrador_W|ALUOutW\(4) & 
\Caminho_de_dados|Registrador_W|ALUOutW\(3) & \Caminho_de_dados|Registrador_W|ALUOutW\(2) & \Caminho_de_dados|Registrador_W|ALUOutW\(1) & \Caminho_de_dados|Registrador_W|ALUOutW\(0));

\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Caminho_de_dados|Registrador_W|WriteRegW\(4) & \Caminho_de_dados|Registrador_W|WriteRegW\(3) & \Caminho_de_dados|Registrador_W|WriteRegW\(2) & 
\Caminho_de_dados|Registrador_W|WriteRegW\(1) & \Caminho_de_dados|Registrador_W|WriteRegW\(0));

\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\Instr~combout\(20) & \Instr~combout\(19) & \Instr~combout\(18) & \Instr~combout\(17) & \Instr~combout\(16));

\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a1\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a2\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a3\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a4\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a5\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a6\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a7\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a8\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a9\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a10\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a11\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a12\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a13\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a14\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a15\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a16\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a17\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a18\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a19\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a20\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a21\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a22\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a23\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a24\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a25\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a26\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a27\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a28\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a29\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a30\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a31\ <= \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\Caminho_de_dados|Registrador_W|ALUOutW\(31) & \Caminho_de_dados|Registrador_W|ALUOutW\(30) & \Caminho_de_dados|Registrador_W|ALUOutW\(29) & 
\Caminho_de_dados|Registrador_W|ALUOutW\(28) & \Caminho_de_dados|Registrador_W|ALUOutW\(27) & \Caminho_de_dados|Registrador_W|ALUOutW\(26) & \Caminho_de_dados|Registrador_W|ALUOutW\(25) & \Caminho_de_dados|Registrador_W|ALUOutW\(24) & 
\Caminho_de_dados|Registrador_W|ALUOutW\(23) & \Caminho_de_dados|Registrador_W|ALUOutW\(22) & \Caminho_de_dados|Registrador_W|ALUOutW\(21) & \Caminho_de_dados|Registrador_W|ALUOutW\(20) & \Caminho_de_dados|Registrador_W|ALUOutW\(19) & 
\Caminho_de_dados|Registrador_W|ALUOutW\(18) & \Caminho_de_dados|Registrador_W|ALUOutW\(17) & \Caminho_de_dados|Registrador_W|ALUOutW\(16) & \Caminho_de_dados|Registrador_W|ALUOutW\(15) & \Caminho_de_dados|Registrador_W|ALUOutW\(14) & 
\Caminho_de_dados|Registrador_W|ALUOutW\(13) & \Caminho_de_dados|Registrador_W|ALUOutW\(12) & \Caminho_de_dados|Registrador_W|ALUOutW\(11) & \Caminho_de_dados|Registrador_W|ALUOutW\(10) & \Caminho_de_dados|Registrador_W|ALUOutW\(9) & 
\Caminho_de_dados|Registrador_W|ALUOutW\(8) & \Caminho_de_dados|Registrador_W|ALUOutW\(7) & \Caminho_de_dados|Registrador_W|ALUOutW\(6) & \Caminho_de_dados|Registrador_W|ALUOutW\(5) & \Caminho_de_dados|Registrador_W|ALUOutW\(4) & 
\Caminho_de_dados|Registrador_W|ALUOutW\(3) & \Caminho_de_dados|Registrador_W|ALUOutW\(2) & \Caminho_de_dados|Registrador_W|ALUOutW\(1) & \Caminho_de_dados|Registrador_W|ALUOutW\(0));

\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Caminho_de_dados|Registrador_W|WriteRegW\(4) & \Caminho_de_dados|Registrador_W|WriteRegW\(3) & \Caminho_de_dados|Registrador_W|WriteRegW\(2) & 
\Caminho_de_dados|Registrador_W|WriteRegW\(1) & \Caminho_de_dados|Registrador_W|WriteRegW\(0));

\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\Instr~combout\(25) & \Instr~combout\(24) & \Instr~combout\(23) & \Instr~combout\(22) & \Instr~combout\(21));

\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a1\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a2\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a3\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a4\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a5\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a6\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a7\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a8\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a9\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a10\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a11\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a12\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a13\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a14\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a15\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a16\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a17\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a18\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a19\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a20\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a21\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a22\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a23\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a24\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a25\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a26\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a27\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a28\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a29\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a30\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a31\ <= \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_clk~clkctrl_outclk\ <= NOT \clk~clkctrl_outclk\;

-- Location: M4K_X26_Y27
\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Pipeline.ram0_register_file_87c776fc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "datapath:Caminho_de_dados|register_file:RF|altsyncram:registers_rtl_1|altsyncram_sfh1:auto_generated|ALTSYNCRAM",
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
	portawe => \Caminho_de_dados|Registrador_W|RegWriteW~regout\,
	portbrewe => VCC,
	clk0 => \ALT_INV_clk~clkctrl_outclk\,
	clk1 => \clk~clkctrl_outclk\,
	ena0 => \Caminho_de_dados|Registrador_W|RegWriteW~regout\,
	portadatain => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M4K_X26_Y26
\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Pipeline.ram0_register_file_87c776fc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "datapath:Caminho_de_dados|register_file:RF|altsyncram:registers_rtl_0|altsyncram_sfh1:auto_generated|ALTSYNCRAM",
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
	portawe => \Caminho_de_dados|Registrador_W|RegWriteW~regout\,
	portbrewe => VCC,
	clk0 => \ALT_INV_clk~clkctrl_outclk\,
	clk1 => \clk~clkctrl_outclk\,
	ena0 => \Caminho_de_dados|Registrador_W|RegWriteW~regout\,
	portadatain => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y26_N2
\Caminho_de_dados|ALU_1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~2_combout\ = (\Caminho_de_dados|Mux2|outMux[1]~1_combout\ & ((\Caminho_de_dados|Mux4|outMux[1]~4_combout\ & (\Caminho_de_dados|ALU_1|Add1~1\ & VCC)) # (!\Caminho_de_dados|Mux4|outMux[1]~4_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add1~1\)))) # (!\Caminho_de_dados|Mux2|outMux[1]~1_combout\ & ((\Caminho_de_dados|Mux4|outMux[1]~4_combout\ & (!\Caminho_de_dados|ALU_1|Add1~1\)) # (!\Caminho_de_dados|Mux4|outMux[1]~4_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~1\) # (GND)))))
-- \Caminho_de_dados|ALU_1|Add1~3\ = CARRY((\Caminho_de_dados|Mux2|outMux[1]~1_combout\ & (!\Caminho_de_dados|Mux4|outMux[1]~4_combout\ & !\Caminho_de_dados|ALU_1|Add1~1\)) # (!\Caminho_de_dados|Mux2|outMux[1]~1_combout\ & ((!\Caminho_de_dados|ALU_1|Add1~1\) 
-- # (!\Caminho_de_dados|Mux4|outMux[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[1]~1_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[1]~4_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~1\,
	combout => \Caminho_de_dados|ALU_1|Add1~2_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~3\);

-- Location: LCCOMB_X25_Y26_N16
\Caminho_de_dados|ALU_1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~16_combout\ = ((\Caminho_de_dados|Mux2|outMux[8]~8_combout\ $ (\Caminho_de_dados|Mux4|outMux[8]~18_combout\ $ (\Caminho_de_dados|ALU_1|Add0~15\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add0~17\ = CARRY((\Caminho_de_dados|Mux2|outMux[8]~8_combout\ & ((!\Caminho_de_dados|ALU_1|Add0~15\) # (!\Caminho_de_dados|Mux4|outMux[8]~18_combout\))) # (!\Caminho_de_dados|Mux2|outMux[8]~8_combout\ & 
-- (!\Caminho_de_dados|Mux4|outMux[8]~18_combout\ & !\Caminho_de_dados|ALU_1|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[8]~8_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[8]~18_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~15\,
	combout => \Caminho_de_dados|ALU_1|Add0~16_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~17\);

-- Location: LCCOMB_X23_Y26_N18
\Caminho_de_dados|ALU_1|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~18_combout\ = (\Caminho_de_dados|Mux4|outMux[9]~20_combout\ & ((\Caminho_de_dados|Mux2|outMux[9]~9_combout\ & (\Caminho_de_dados|ALU_1|Add1~17\ & VCC)) # (!\Caminho_de_dados|Mux2|outMux[9]~9_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add1~17\)))) # (!\Caminho_de_dados|Mux4|outMux[9]~20_combout\ & ((\Caminho_de_dados|Mux2|outMux[9]~9_combout\ & (!\Caminho_de_dados|ALU_1|Add1~17\)) # (!\Caminho_de_dados|Mux2|outMux[9]~9_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~17\) # (GND)))))
-- \Caminho_de_dados|ALU_1|Add1~19\ = CARRY((\Caminho_de_dados|Mux4|outMux[9]~20_combout\ & (!\Caminho_de_dados|Mux2|outMux[9]~9_combout\ & !\Caminho_de_dados|ALU_1|Add1~17\)) # (!\Caminho_de_dados|Mux4|outMux[9]~20_combout\ & 
-- ((!\Caminho_de_dados|ALU_1|Add1~17\) # (!\Caminho_de_dados|Mux2|outMux[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[9]~20_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[9]~9_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~17\,
	combout => \Caminho_de_dados|ALU_1|Add1~18_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~19\);

-- Location: LCCOMB_X23_Y25_N0
\Caminho_de_dados|ALU_1|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~32_combout\ = ((\Caminho_de_dados|Mux4|outMux[16]~34_combout\ $ (\Caminho_de_dados|Mux2|outMux[16]~16_combout\ $ (!\Caminho_de_dados|ALU_1|Add1~31\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add1~33\ = CARRY((\Caminho_de_dados|Mux4|outMux[16]~34_combout\ & ((\Caminho_de_dados|Mux2|outMux[16]~16_combout\) # (!\Caminho_de_dados|ALU_1|Add1~31\))) # (!\Caminho_de_dados|Mux4|outMux[16]~34_combout\ & 
-- (\Caminho_de_dados|Mux2|outMux[16]~16_combout\ & !\Caminho_de_dados|ALU_1|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[16]~34_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[16]~16_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~31\,
	combout => \Caminho_de_dados|ALU_1|Add1~32_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~33\);

-- Location: LCCOMB_X23_Y25_N2
\Caminho_de_dados|ALU_1|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~34_combout\ = (\Caminho_de_dados|Mux4|outMux[17]~36_combout\ & ((\Caminho_de_dados|Mux2|outMux[17]~17_combout\ & (\Caminho_de_dados|ALU_1|Add1~33\ & VCC)) # (!\Caminho_de_dados|Mux2|outMux[17]~17_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add1~33\)))) # (!\Caminho_de_dados|Mux4|outMux[17]~36_combout\ & ((\Caminho_de_dados|Mux2|outMux[17]~17_combout\ & (!\Caminho_de_dados|ALU_1|Add1~33\)) # (!\Caminho_de_dados|Mux2|outMux[17]~17_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~33\) # (GND)))))
-- \Caminho_de_dados|ALU_1|Add1~35\ = CARRY((\Caminho_de_dados|Mux4|outMux[17]~36_combout\ & (!\Caminho_de_dados|Mux2|outMux[17]~17_combout\ & !\Caminho_de_dados|ALU_1|Add1~33\)) # (!\Caminho_de_dados|Mux4|outMux[17]~36_combout\ & 
-- ((!\Caminho_de_dados|ALU_1|Add1~33\) # (!\Caminho_de_dados|Mux2|outMux[17]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[17]~36_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[17]~17_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~33\,
	combout => \Caminho_de_dados|ALU_1|Add1~34_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~35\);

-- Location: LCCOMB_X25_Y25_N4
\Caminho_de_dados|ALU_1|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~36_combout\ = ((\Caminho_de_dados|Mux4|outMux[18]~38_combout\ $ (\Caminho_de_dados|Mux2|outMux[18]~18_combout\ $ (\Caminho_de_dados|ALU_1|Add0~35\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add0~37\ = CARRY((\Caminho_de_dados|Mux4|outMux[18]~38_combout\ & (\Caminho_de_dados|Mux2|outMux[18]~18_combout\ & !\Caminho_de_dados|ALU_1|Add0~35\)) # (!\Caminho_de_dados|Mux4|outMux[18]~38_combout\ & 
-- ((\Caminho_de_dados|Mux2|outMux[18]~18_combout\) # (!\Caminho_de_dados|ALU_1|Add0~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[18]~38_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[18]~18_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~35\,
	combout => \Caminho_de_dados|ALU_1|Add0~36_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~37\);

-- Location: LCCOMB_X23_Y25_N10
\Caminho_de_dados|ALU_1|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~42_combout\ = (\Caminho_de_dados|Mux2|outMux[21]~21_combout\ & ((\Caminho_de_dados|Mux4|outMux[21]~44_combout\ & (\Caminho_de_dados|ALU_1|Add1~41\ & VCC)) # (!\Caminho_de_dados|Mux4|outMux[21]~44_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add1~41\)))) # (!\Caminho_de_dados|Mux2|outMux[21]~21_combout\ & ((\Caminho_de_dados|Mux4|outMux[21]~44_combout\ & (!\Caminho_de_dados|ALU_1|Add1~41\)) # (!\Caminho_de_dados|Mux4|outMux[21]~44_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~41\) # (GND)))))
-- \Caminho_de_dados|ALU_1|Add1~43\ = CARRY((\Caminho_de_dados|Mux2|outMux[21]~21_combout\ & (!\Caminho_de_dados|Mux4|outMux[21]~44_combout\ & !\Caminho_de_dados|ALU_1|Add1~41\)) # (!\Caminho_de_dados|Mux2|outMux[21]~21_combout\ & 
-- ((!\Caminho_de_dados|ALU_1|Add1~41\) # (!\Caminho_de_dados|Mux4|outMux[21]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[21]~21_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[21]~44_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~41\,
	combout => \Caminho_de_dados|ALU_1|Add1~42_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~43\);

-- Location: LCFF_X27_Y26_N21
\Caminho_de_dados|Registrador_E|SignImmE[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|SignImmE\(13));

-- Location: LCCOMB_X23_Y27_N10
\Unidade_de_Hazard|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidade_de_Hazard|Equal2~0_combout\ = (!\Caminho_de_dados|Registrador_E|RtE\(1) & (!\Caminho_de_dados|Registrador_E|RtE\(0) & (!\Caminho_de_dados|Registrador_E|RtE\(3) & !\Caminho_de_dados|Registrador_E|RtE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|RtE\(1),
	datab => \Caminho_de_dados|Registrador_E|RtE\(0),
	datac => \Caminho_de_dados|Registrador_E|RtE\(3),
	datad => \Caminho_de_dados|Registrador_E|RtE\(2),
	combout => \Unidade_de_Hazard|Equal2~0_combout\);

-- Location: LCFF_X22_Y27_N25
\Caminho_de_dados|Registrador_E|RsE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_E|RsE[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|RsE\(0));

-- Location: LCCOMB_X22_Y27_N20
\Unidade_de_Hazard|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidade_de_Hazard|Equal0~0_combout\ = (!\Caminho_de_dados|Registrador_E|RsE\(0) & (!\Caminho_de_dados|Registrador_E|RsE\(1) & (!\Caminho_de_dados|Registrador_E|RsE\(2) & !\Caminho_de_dados|Registrador_E|RsE\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|RsE\(0),
	datab => \Caminho_de_dados|Registrador_E|RsE\(1),
	datac => \Caminho_de_dados|Registrador_E|RsE\(2),
	datad => \Caminho_de_dados|Registrador_E|RsE\(3),
	combout => \Unidade_de_Hazard|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y27_N12
\Caminho_de_dados|ALU_1|ALUOut[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[2]~4_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Registrador_E|ALUControlE\(1)) # ((\Caminho_de_dados|Mux2|outMux[2]~2_combout\) # (\Caminho_de_dados|Mux4|outMux[2]~6_combout\)))) # 
-- (!\Caminho_de_dados|Registrador_E|ALUControlE\(0) & (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (\Caminho_de_dados|Mux2|outMux[2]~2_combout\ & \Caminho_de_dados|Mux4|outMux[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|Mux2|outMux[2]~2_combout\,
	datad => \Caminho_de_dados|Mux4|outMux[2]~6_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[2]~4_combout\);

-- Location: LCCOMB_X24_Y26_N12
\Caminho_de_dados|ALU_1|ALUOut[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[3]~6_combout\ = (\Caminho_de_dados|Mux4|outMux[3]~8_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # ((\Caminho_de_dados|Mux2|outMux[3]~3_combout\ & !\Caminho_de_dados|Registrador_E|ALUControlE\(1))))) # 
-- (!\Caminho_de_dados|Mux4|outMux[3]~8_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Mux2|outMux[3]~3_combout\) # (\Caminho_de_dados|Registrador_E|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[3]~8_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[3]~3_combout\,
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datad => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	combout => \Caminho_de_dados|ALU_1|ALUOut[3]~6_combout\);

-- Location: LCFF_X24_Y26_N25
\Caminho_de_dados|Registrador_E|SignImmE[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|SignImmE\(4));

-- Location: LCCOMB_X24_Y26_N24
\Caminho_de_dados|Mux4|outMux[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[4]~9_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & ((\Caminho_de_dados|Registrador_E|SignImmE\(4)))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(4),
	datac => \Caminho_de_dados|Registrador_E|SignImmE\(4),
	datad => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	combout => \Caminho_de_dados|Mux4|outMux[4]~9_combout\);

-- Location: LCCOMB_X22_Y26_N10
\Caminho_de_dados|Mux2|outMux[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[5]~5_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(5))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(5),
	datac => \Unidade_de_Hazard|FowardAE~combout\,
	datad => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a5\,
	combout => \Caminho_de_dados|Mux2|outMux[5]~5_combout\);

-- Location: LCFF_X24_Y26_N11
\Caminho_de_dados|Registrador_E|SignImmE[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|SignImmE\(5));

-- Location: LCCOMB_X24_Y26_N10
\Caminho_de_dados|Mux4|outMux[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[5]~11_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Caminho_de_dados|Registrador_E|SignImmE\(5))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & ((\Caminho_de_dados|Registrador_W|ALUOutW\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|Registrador_E|SignImmE\(5),
	datad => \Caminho_de_dados|Registrador_W|ALUOutW\(5),
	combout => \Caminho_de_dados|Mux4|outMux[5]~11_combout\);

-- Location: LCCOMB_X22_Y26_N0
\Caminho_de_dados|Mux2|outMux[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[7]~7_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(7))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(7),
	datac => \Unidade_de_Hazard|FowardAE~combout\,
	datad => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a7\,
	combout => \Caminho_de_dados|Mux2|outMux[7]~7_combout\);

-- Location: LCFF_X24_Y24_N29
\Caminho_de_dados|Registrador_E|SignImmE[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|SignImmE\(9));

-- Location: LCCOMB_X24_Y24_N28
\Caminho_de_dados|Mux4|outMux[9]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[9]~19_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (((\Caminho_de_dados|Registrador_E|SignImmE\(9))))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & 
-- (\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a9\ & ((!\Unidade_de_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a9\,
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|Registrador_E|SignImmE\(9),
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[9]~19_combout\);

-- Location: LCCOMB_X24_Y24_N20
\Caminho_de_dados|Mux4|outMux[9]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[9]~20_combout\ = (\Caminho_de_dados|Mux4|outMux[9]~19_combout\) # ((\Caminho_de_dados|Registrador_W|ALUOutW\(9) & (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & \Unidade_de_Hazard|FowardBE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(9),
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Unidade_de_Hazard|FowardBE~combout\,
	datad => \Caminho_de_dados|Mux4|outMux[9]~19_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[9]~20_combout\);

-- Location: LCFF_X22_Y26_N23
\Caminho_de_dados|Registrador_E|SignImmE[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|SignImmE\(10));

-- Location: LCCOMB_X22_Y26_N22
\Caminho_de_dados|Mux4|outMux[10]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[10]~21_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (((\Caminho_de_dados|Registrador_E|SignImmE\(10))))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & 
-- (\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a10\ & ((!\Unidade_de_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a10\,
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|Registrador_E|SignImmE\(10),
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[10]~21_combout\);

-- Location: LCCOMB_X22_Y26_N12
\Caminho_de_dados|Mux4|outMux[10]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[10]~22_combout\ = (\Caminho_de_dados|Mux4|outMux[10]~21_combout\) # ((\Unidade_de_Hazard|FowardBE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(10) & !\Caminho_de_dados|Registrador_E|ALUSrcE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidade_de_Hazard|FowardBE~combout\,
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(10),
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Caminho_de_dados|Mux4|outMux[10]~21_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[10]~22_combout\);

-- Location: LCCOMB_X21_Y26_N30
\Caminho_de_dados|ALU_1|ALUOut[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[10]~20_combout\ = (\Caminho_de_dados|Mux2|outMux[10]~10_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # ((\Caminho_de_dados|Mux4|outMux[10]~22_combout\ & !\Caminho_de_dados|Registrador_E|ALUControlE\(1))))) # 
-- (!\Caminho_de_dados|Mux2|outMux[10]~10_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Mux4|outMux[10]~22_combout\) # (\Caminho_de_dados|Registrador_E|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[10]~10_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datac => \Caminho_de_dados|Mux4|outMux[10]~22_combout\,
	datad => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	combout => \Caminho_de_dados|ALU_1|ALUOut[10]~20_combout\);

-- Location: LCCOMB_X21_Y26_N24
\Caminho_de_dados|ALU_1|ALUOut[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[11]~22_combout\ = (\Caminho_de_dados|Mux2|outMux[11]~11_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # ((!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & \Caminho_de_dados|Mux4|outMux[11]~24_combout\)))) # 
-- (!\Caminho_de_dados|Mux2|outMux[11]~11_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Registrador_E|ALUControlE\(1)) # (\Caminho_de_dados|Mux4|outMux[11]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[11]~11_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datad => \Caminho_de_dados|Mux4|outMux[11]~24_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[11]~22_combout\);

-- Location: LCCOMB_X22_Y26_N6
\Caminho_de_dados|Mux2|outMux[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[13]~13_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|Registrador_W|ALUOutW\(13)))) # (!\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a13\,
	datac => \Caminho_de_dados|Registrador_W|ALUOutW\(13),
	datad => \Unidade_de_Hazard|FowardAE~combout\,
	combout => \Caminho_de_dados|Mux2|outMux[13]~13_combout\);

-- Location: LCCOMB_X27_Y26_N12
\Caminho_de_dados|ALU_1|ALUOut[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[13]~26_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Registrador_E|ALUControlE\(1)) # ((\Caminho_de_dados|Mux2|outMux[13]~13_combout\) # (\Caminho_de_dados|Mux4|outMux[13]~28_combout\)))) 
-- # (!\Caminho_de_dados|Registrador_E|ALUControlE\(0) & (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (\Caminho_de_dados|Mux2|outMux[13]~13_combout\ & \Caminho_de_dados|Mux4|outMux[13]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|Mux2|outMux[13]~13_combout\,
	datad => \Caminho_de_dados|Mux4|outMux[13]~28_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[13]~26_combout\);

-- Location: LCCOMB_X21_Y26_N8
\Caminho_de_dados|Mux2|outMux[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[15]~15_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(15))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(15),
	datac => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a15\,
	datad => \Unidade_de_Hazard|FowardAE~combout\,
	combout => \Caminho_de_dados|Mux2|outMux[15]~15_combout\);

-- Location: LCCOMB_X21_Y26_N10
\Caminho_de_dados|ALU_1|ALUOut[15]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[15]~30_combout\ = (\Caminho_de_dados|Mux4|outMux[15]~32_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # ((\Caminho_de_dados|Mux2|outMux[15]~15_combout\ & !\Caminho_de_dados|Registrador_E|ALUControlE\(1))))) # 
-- (!\Caminho_de_dados|Mux4|outMux[15]~32_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Mux2|outMux[15]~15_combout\) # (\Caminho_de_dados|Registrador_E|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[15]~32_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[15]~15_combout\,
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datad => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	combout => \Caminho_de_dados|ALU_1|ALUOut[15]~30_combout\);

-- Location: LCCOMB_X22_Y25_N30
\Caminho_de_dados|Mux4|outMux[18]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[18]~37_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Caminho_de_dados|Registrador_E|SignImmE\(15))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & 
-- (((\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a18\ & !\Unidade_de_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|SignImmE\(15),
	datab => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a18\,
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[18]~37_combout\);

-- Location: LCCOMB_X22_Y25_N4
\Caminho_de_dados|Mux4|outMux[18]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[18]~38_combout\ = (\Caminho_de_dados|Mux4|outMux[18]~37_combout\) # ((\Caminho_de_dados|Registrador_W|ALUOutW\(18) & (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & \Unidade_de_Hazard|FowardBE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(18),
	datab => \Caminho_de_dados|Mux4|outMux[18]~37_combout\,
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[18]~38_combout\);

-- Location: LCCOMB_X22_Y25_N0
\Caminho_de_dados|Mux4|outMux[19]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[19]~39_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Caminho_de_dados|Registrador_E|SignImmE\(15))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & 
-- (((\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a19\ & !\Unidade_de_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|SignImmE\(15),
	datab => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a19\,
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[19]~39_combout\);

-- Location: LCCOMB_X22_Y25_N14
\Caminho_de_dados|Mux4|outMux[19]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[19]~40_combout\ = (\Caminho_de_dados|Mux4|outMux[19]~39_combout\) # ((!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Unidade_de_Hazard|FowardBE~combout\ & \Caminho_de_dados|Registrador_W|ALUOutW\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datab => \Unidade_de_Hazard|FowardBE~combout\,
	datac => \Caminho_de_dados|Registrador_W|ALUOutW\(19),
	datad => \Caminho_de_dados|Mux4|outMux[19]~39_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[19]~40_combout\);

-- Location: LCCOMB_X21_Y25_N14
\Caminho_de_dados|ALU_1|ALUOut[19]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[19]~38_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (\Caminho_de_dados|Registrador_E|ALUControlE\(0))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0) 
-- & ((\Caminho_de_dados|Mux4|outMux[19]~40_combout\) # (\Caminho_de_dados|Mux2|outMux[19]~19_combout\))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(0) & (\Caminho_de_dados|Mux4|outMux[19]~40_combout\ & \Caminho_de_dados|Mux2|outMux[19]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datac => \Caminho_de_dados|Mux4|outMux[19]~40_combout\,
	datad => \Caminho_de_dados|Mux2|outMux[19]~19_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[19]~38_combout\);

-- Location: LCCOMB_X24_Y25_N6
\Caminho_de_dados|ALU_1|ALUOut[20]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[20]~40_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Mux4|outMux[20]~42_combout\) # ((\Caminho_de_dados|Mux2|outMux[20]~20_combout\) # (\Caminho_de_dados|Registrador_E|ALUControlE\(1))))) 
-- # (!\Caminho_de_dados|Registrador_E|ALUControlE\(0) & (\Caminho_de_dados|Mux4|outMux[20]~42_combout\ & (\Caminho_de_dados|Mux2|outMux[20]~20_combout\ & !\Caminho_de_dados|Registrador_E|ALUControlE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datab => \Caminho_de_dados|Mux4|outMux[20]~42_combout\,
	datac => \Caminho_de_dados|Mux2|outMux[20]~20_combout\,
	datad => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	combout => \Caminho_de_dados|ALU_1|ALUOut[20]~40_combout\);

-- Location: LCCOMB_X24_Y25_N10
\Caminho_de_dados|Mux4|outMux[21]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[21]~43_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Caminho_de_dados|Registrador_E|SignImmE\(15))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (((!\Unidade_de_Hazard|FowardBE~combout\ & 
-- \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|SignImmE\(15),
	datab => \Unidade_de_Hazard|FowardBE~combout\,
	datac => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a21\,
	datad => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	combout => \Caminho_de_dados|Mux4|outMux[21]~43_combout\);

-- Location: LCCOMB_X21_Y25_N26
\Caminho_de_dados|Mux2|outMux[22]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[22]~22_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(22))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(22),
	datab => \Unidade_de_Hazard|FowardAE~combout\,
	datad => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a22\,
	combout => \Caminho_de_dados|Mux2|outMux[22]~22_combout\);

-- Location: LCCOMB_X22_Y25_N20
\Caminho_de_dados|Mux4|outMux[22]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[22]~45_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Caminho_de_dados|Registrador_E|SignImmE\(15))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & 
-- (((\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a22\ & !\Unidade_de_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|SignImmE\(15),
	datab => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a22\,
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[22]~45_combout\);

-- Location: LCCOMB_X21_Y25_N4
\Caminho_de_dados|ALU_1|ALUOut[22]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[22]~44_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (((\Caminho_de_dados|Registrador_E|ALUControlE\(0))))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & 
-- ((\Caminho_de_dados|Mux2|outMux[22]~22_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # (\Caminho_de_dados|Mux4|outMux[22]~46_combout\))) # (!\Caminho_de_dados|Mux2|outMux[22]~22_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & 
-- \Caminho_de_dados|Mux4|outMux[22]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datab => \Caminho_de_dados|Mux2|outMux[22]~22_combout\,
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datad => \Caminho_de_dados|Mux4|outMux[22]~46_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[22]~44_combout\);

-- Location: LCCOMB_X24_Y28_N2
\Caminho_de_dados|Mux4|outMux[23]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[23]~47_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (((\Caminho_de_dados|Registrador_E|SignImmE\(15))))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & 
-- (\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a23\ & ((!\Unidade_de_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a23\,
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|Registrador_E|SignImmE\(15),
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[23]~47_combout\);

-- Location: LCCOMB_X24_Y28_N28
\Caminho_de_dados|Mux4|outMux[23]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[23]~48_combout\ = (\Caminho_de_dados|Mux4|outMux[23]~47_combout\) # ((\Caminho_de_dados|Registrador_W|ALUOutW\(23) & (\Unidade_de_Hazard|FowardBE~combout\ & !\Caminho_de_dados|Registrador_E|ALUSrcE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(23),
	datab => \Unidade_de_Hazard|FowardBE~combout\,
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Caminho_de_dados|Mux4|outMux[23]~47_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[23]~48_combout\);

-- Location: LCCOMB_X24_Y28_N6
\Caminho_de_dados|ALU_1|ALUOut[23]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[23]~46_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (((\Caminho_de_dados|Registrador_E|ALUControlE\(0))))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & 
-- ((\Caminho_de_dados|Mux4|outMux[23]~48_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # (\Caminho_de_dados|Mux2|outMux[23]~23_combout\))) # (!\Caminho_de_dados|Mux4|outMux[23]~48_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & 
-- \Caminho_de_dados|Mux2|outMux[23]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datab => \Caminho_de_dados|Mux4|outMux[23]~48_combout\,
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datad => \Caminho_de_dados|Mux2|outMux[23]~23_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[23]~46_combout\);

-- Location: LCCOMB_X21_Y25_N2
\Caminho_de_dados|Mux2|outMux[24]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[24]~24_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(24))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(24),
	datac => \Unidade_de_Hazard|FowardAE~combout\,
	datad => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a24\,
	combout => \Caminho_de_dados|Mux2|outMux[24]~24_combout\);

-- Location: LCCOMB_X21_Y25_N24
\Caminho_de_dados|ALU_1|ALUOut[24]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[24]~48_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (((\Caminho_de_dados|Registrador_E|ALUControlE\(0))))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & 
-- ((\Caminho_de_dados|Mux2|outMux[24]~24_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # (\Caminho_de_dados|Mux4|outMux[24]~50_combout\))) # (!\Caminho_de_dados|Mux2|outMux[24]~24_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & 
-- \Caminho_de_dados|Mux4|outMux[24]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datab => \Caminho_de_dados|Mux2|outMux[24]~24_combout\,
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datad => \Caminho_de_dados|Mux4|outMux[24]~50_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[24]~48_combout\);

-- Location: LCCOMB_X24_Y24_N4
\Caminho_de_dados|Mux4|outMux[25]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[25]~51_combout\ = (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & ((\Unidade_de_Hazard|FowardBE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(25))) # (!\Unidade_de_Hazard|FowardBE~combout\ & 
-- ((\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a25\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(25),
	datab => \Unidade_de_Hazard|FowardBE~combout\,
	datac => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a25\,
	datad => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	combout => \Caminho_de_dados|Mux4|outMux[25]~51_combout\);

-- Location: LCCOMB_X24_Y24_N6
\Caminho_de_dados|Mux4|outMux[25]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[25]~52_combout\ = (\Caminho_de_dados|Mux4|outMux[25]~51_combout\) # ((\Caminho_de_dados|Registrador_E|SignImmE\(15) & \Caminho_de_dados|Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|SignImmE\(15),
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|Mux4|outMux[25]~51_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[25]~52_combout\);

-- Location: LCCOMB_X24_Y24_N12
\Caminho_de_dados|ALU_1|ALUOut[25]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[25]~50_combout\ = (\Caminho_de_dados|Mux2|outMux[25]~25_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # ((!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & \Caminho_de_dados|Mux4|outMux[25]~52_combout\)))) # 
-- (!\Caminho_de_dados|Mux2|outMux[25]~25_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Registrador_E|ALUControlE\(1)) # (\Caminho_de_dados|Mux4|outMux[25]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[25]~25_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|Mux4|outMux[25]~52_combout\,
	datad => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	combout => \Caminho_de_dados|ALU_1|ALUOut[25]~50_combout\);

-- Location: LCCOMB_X24_Y24_N2
\Caminho_de_dados|ALU_1|ALUOut[26]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[26]~52_combout\ = (\Caminho_de_dados|Mux2|outMux[26]~26_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # ((\Caminho_de_dados|Mux4|outMux[26]~54_combout\ & !\Caminho_de_dados|Registrador_E|ALUControlE\(1))))) # 
-- (!\Caminho_de_dados|Mux2|outMux[26]~26_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Mux4|outMux[26]~54_combout\) # (\Caminho_de_dados|Registrador_E|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[26]~26_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[26]~54_combout\,
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datad => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	combout => \Caminho_de_dados|ALU_1|ALUOut[26]~52_combout\);

-- Location: LCCOMB_X24_Y29_N20
\Caminho_de_dados|ALU_1|ALUOut[27]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[27]~54_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (((\Caminho_de_dados|Registrador_E|ALUControlE\(0))))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & 
-- ((\Caminho_de_dados|Mux4|outMux[27]~56_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # (\Caminho_de_dados|Mux2|outMux[27]~27_combout\))) # (!\Caminho_de_dados|Mux4|outMux[27]~56_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & 
-- \Caminho_de_dados|Mux2|outMux[27]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datab => \Caminho_de_dados|Mux4|outMux[27]~56_combout\,
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datad => \Caminho_de_dados|Mux2|outMux[27]~27_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[27]~54_combout\);

-- Location: LCCOMB_X21_Y25_N8
\Caminho_de_dados|ALU_1|ALUOut[29]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[29]~58_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (((\Caminho_de_dados|Registrador_E|ALUControlE\(0))))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & 
-- ((\Caminho_de_dados|Mux2|outMux[29]~29_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # (\Caminho_de_dados|Mux4|outMux[29]~60_combout\))) # (!\Caminho_de_dados|Mux2|outMux[29]~29_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & 
-- \Caminho_de_dados|Mux4|outMux[29]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datab => \Caminho_de_dados|Mux2|outMux[29]~29_combout\,
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datad => \Caminho_de_dados|Mux4|outMux[29]~60_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[29]~58_combout\);

-- Location: LCCOMB_X24_Y28_N16
\Caminho_de_dados|Mux2|outMux[30]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[30]~30_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(30))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(30),
	datac => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a30\,
	datad => \Unidade_de_Hazard|FowardAE~combout\,
	combout => \Caminho_de_dados|Mux2|outMux[30]~30_combout\);

-- Location: LCCOMB_X24_Y29_N8
\Caminho_de_dados|ALU_1|ALUOut[31]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[31]~62_combout\ = (\Caminho_de_dados|Mux4|outMux[31]~64_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # ((!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & \Caminho_de_dados|Mux2|outMux[31]~31_combout\)))) # 
-- (!\Caminho_de_dados|Mux4|outMux[31]~64_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Registrador_E|ALUControlE\(1)) # (\Caminho_de_dados|Mux2|outMux[31]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[31]~64_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datad => \Caminho_de_dados|Mux2|outMux[31]~31_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[31]~62_combout\);

-- Location: LCFF_X16_Y28_N13
\Caminho_de_dados|Registrador_D|InstrD[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_D|InstrD[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(28));

-- Location: LCFF_X27_Y26_N25
\Caminho_de_dados|Registrador_D|InstrD[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(13));

-- Location: LCFF_X22_Y27_N3
\Caminho_de_dados|Registrador_D|InstrD[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(21));

-- Location: LCFF_X24_Y26_N21
\Caminho_de_dados|Registrador_D|InstrD[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(4));

-- Location: LCCOMB_X24_Y26_N20
\Controladora|ALUControlID[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|ALUControlID[1]~0_combout\ = (!\Caminho_de_dados|Registrador_D|InstrD\(3) & (\Caminho_de_dados|Registrador_D|InstrD\(5) & !\Caminho_de_dados|Registrador_D|InstrD\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_D|InstrD\(3),
	datab => \Caminho_de_dados|Registrador_D|InstrD\(5),
	datac => \Caminho_de_dados|Registrador_D|InstrD\(4),
	combout => \Controladora|ALUControlID[1]~0_combout\);

-- Location: LCFF_X24_Y24_N31
\Caminho_de_dados|Registrador_D|InstrD[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_D|InstrD[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(9));

-- Location: LCFF_X21_Y26_N21
\Caminho_de_dados|Registrador_D|InstrD[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_D|InstrD[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(10));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X22_Y27_N24
\Caminho_de_dados|Registrador_E|RsE[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_E|RsE[0]~feeder_combout\ = \Caminho_de_dados|Registrador_D|InstrD\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caminho_de_dados|Registrador_D|InstrD\(21),
	combout => \Caminho_de_dados|Registrador_E|RsE[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y28_N12
\Caminho_de_dados|Registrador_D|InstrD[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_D|InstrD[28]~feeder_combout\ = \Instr~combout\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(28),
	combout => \Caminho_de_dados|Registrador_D|InstrD[28]~feeder_combout\);

-- Location: LCCOMB_X24_Y24_N30
\Caminho_de_dados|Registrador_D|InstrD[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_D|InstrD[9]~feeder_combout\ = \Instr~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(9),
	combout => \Caminho_de_dados|Registrador_D|InstrD[9]~feeder_combout\);

-- Location: LCCOMB_X21_Y26_N20
\Caminho_de_dados|Registrador_D|InstrD[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_D|InstrD[10]~feeder_combout\ = \Instr~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(10),
	combout => \Caminho_de_dados|Registrador_D|InstrD[10]~feeder_combout\);

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

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X16_Y28_N8
\Caminho_de_dados|Registrador_D|InstrD[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_D|InstrD[31]~feeder_combout\ = \Instr~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(31),
	combout => \Caminho_de_dados|Registrador_D|InstrD[31]~feeder_combout\);

-- Location: LCFF_X16_Y28_N9
\Caminho_de_dados|Registrador_D|InstrD[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_D|InstrD[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(31));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X16_Y28_N22
\Caminho_de_dados|Registrador_D|InstrD[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_D|InstrD[27]~feeder_combout\ = \Instr~combout\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(27),
	combout => \Caminho_de_dados|Registrador_D|InstrD[27]~feeder_combout\);

-- Location: LCFF_X16_Y28_N23
\Caminho_de_dados|Registrador_D|InstrD[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_D|InstrD[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(27));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X16_Y28_N3
\Caminho_de_dados|Registrador_D|InstrD[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(30));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X16_Y28_N0
\Caminho_de_dados|Registrador_D|InstrD[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_D|InstrD[26]~feeder_combout\ = \Instr~combout\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(26),
	combout => \Caminho_de_dados|Registrador_D|InstrD[26]~feeder_combout\);

-- Location: LCFF_X16_Y28_N1
\Caminho_de_dados|Registrador_D|InstrD[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_D|InstrD[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(26));

-- Location: LCCOMB_X16_Y28_N2
\Controladora|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|Equal0~0_combout\ = (!\Caminho_de_dados|Registrador_D|InstrD\(28) & (!\Caminho_de_dados|Registrador_D|InstrD\(27) & (!\Caminho_de_dados|Registrador_D|InstrD\(30) & !\Caminho_de_dados|Registrador_D|InstrD\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_D|InstrD\(28),
	datab => \Caminho_de_dados|Registrador_D|InstrD\(27),
	datac => \Caminho_de_dados|Registrador_D|InstrD\(30),
	datad => \Caminho_de_dados|Registrador_D|InstrD\(26),
	combout => \Controladora|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y28_N16
\Controladora|RegWrite\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|RegWrite~combout\ = (!\Caminho_de_dados|Registrador_D|InstrD\(31) & \Controladora|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_D|InstrD\(31),
	datac => \Controladora|Equal0~0_combout\,
	combout => \Controladora|RegWrite~combout\);

-- Location: LCFF_X23_Y28_N17
\Caminho_de_dados|Registrador_E|RegWriteE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Controladora|RegWrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|RegWriteE~regout\);

-- Location: LCFF_X23_Y27_N1
\Caminho_de_dados|Registrador_W|RegWriteW\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_E|RegWriteE~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|RegWriteW~regout\);

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X17_Y28_N20
\Caminho_de_dados|Registrador_D|InstrD[29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_D|InstrD[29]~feeder_combout\ = \Instr~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(29),
	combout => \Caminho_de_dados|Registrador_D|InstrD[29]~feeder_combout\);

-- Location: LCFF_X17_Y28_N21
\Caminho_de_dados|Registrador_D|InstrD[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_D|InstrD[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(29));

-- Location: LCCOMB_X23_Y28_N10
\Controladora|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|Equal0~1_combout\ = (!\Caminho_de_dados|Registrador_D|InstrD\(31) & (\Controladora|Equal0~0_combout\ & !\Caminho_de_dados|Registrador_D|InstrD\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_D|InstrD\(31),
	datac => \Controladora|Equal0~0_combout\,
	datad => \Caminho_de_dados|Registrador_D|InstrD\(29),
	combout => \Controladora|Equal0~1_combout\);

-- Location: LCFF_X23_Y28_N11
\Caminho_de_dados|Registrador_E|RegDstE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Controladora|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|RegDstE~regout\);

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y27_N17
\Caminho_de_dados|Registrador_D|InstrD[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(11));

-- Location: LCFF_X22_Y27_N11
\Caminho_de_dados|Registrador_E|SignImmE[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|SignImmE\(11));

-- Location: LCCOMB_X23_Y27_N18
\Caminho_de_dados|Mux1|outMux[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux1|outMux[0]~0_combout\ = (\Caminho_de_dados|Registrador_E|RegDstE~regout\ & ((\Caminho_de_dados|Registrador_E|SignImmE\(11)))) # (!\Caminho_de_dados|Registrador_E|RegDstE~regout\ & (\Caminho_de_dados|Registrador_E|RtE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|RtE\(0),
	datac => \Caminho_de_dados|Registrador_E|RegDstE~regout\,
	datad => \Caminho_de_dados|Registrador_E|SignImmE\(11),
	combout => \Caminho_de_dados|Mux1|outMux[0]~0_combout\);

-- Location: LCFF_X23_Y27_N19
\Caminho_de_dados|Registrador_W|WriteRegW[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Mux1|outMux[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|WriteRegW\(0));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y29_N8
\Caminho_de_dados|Registrador_D|InstrD[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_D|InstrD[12]~feeder_combout\ = \Instr~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(12),
	combout => \Caminho_de_dados|Registrador_D|InstrD[12]~feeder_combout\);

-- Location: LCFF_X27_Y29_N9
\Caminho_de_dados|Registrador_D|InstrD[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_D|InstrD[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(12));

-- Location: LCCOMB_X24_Y29_N30
\Caminho_de_dados|Registrador_E|SignImmE[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_E|SignImmE[12]~feeder_combout\ = \Caminho_de_dados|Registrador_D|InstrD\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caminho_de_dados|Registrador_D|InstrD\(12),
	combout => \Caminho_de_dados|Registrador_E|SignImmE[12]~feeder_combout\);

-- Location: LCFF_X24_Y29_N31
\Caminho_de_dados|Registrador_E|SignImmE[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_E|SignImmE[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|SignImmE\(12));

-- Location: LCCOMB_X23_Y27_N30
\Caminho_de_dados|Mux1|outMux[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux1|outMux[1]~1_combout\ = (\Caminho_de_dados|Registrador_E|RegDstE~regout\ & ((\Caminho_de_dados|Registrador_E|SignImmE\(12)))) # (!\Caminho_de_dados|Registrador_E|RegDstE~regout\ & (\Caminho_de_dados|Registrador_E|RtE\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|RtE\(1),
	datac => \Caminho_de_dados|Registrador_E|RegDstE~regout\,
	datad => \Caminho_de_dados|Registrador_E|SignImmE\(12),
	combout => \Caminho_de_dados|Mux1|outMux[1]~1_combout\);

-- Location: LCFF_X23_Y27_N31
\Caminho_de_dados|Registrador_W|WriteRegW[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Mux1|outMux[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|WriteRegW\(1));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X23_Y27_N20
\Caminho_de_dados|Registrador_D|InstrD[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_D|InstrD[18]~feeder_combout\ = \Instr~combout\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(18),
	combout => \Caminho_de_dados|Registrador_D|InstrD[18]~feeder_combout\);

-- Location: LCFF_X23_Y27_N21
\Caminho_de_dados|Registrador_D|InstrD[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_D|InstrD[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(18));

-- Location: LCFF_X23_Y27_N13
\Caminho_de_dados|Registrador_E|RtE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|RtE\(2));

-- Location: LCCOMB_X23_Y27_N4
\Caminho_de_dados|Mux1|outMux[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux1|outMux[2]~2_combout\ = (\Caminho_de_dados|Registrador_E|RegDstE~regout\ & (\Caminho_de_dados|Registrador_E|SignImmE\(13))) # (!\Caminho_de_dados|Registrador_E|RegDstE~regout\ & ((\Caminho_de_dados|Registrador_E|RtE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|SignImmE\(13),
	datab => \Caminho_de_dados|Registrador_E|RegDstE~regout\,
	datad => \Caminho_de_dados|Registrador_E|RtE\(2),
	combout => \Caminho_de_dados|Mux1|outMux[2]~2_combout\);

-- Location: LCFF_X23_Y27_N5
\Caminho_de_dados|Registrador_W|WriteRegW[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Mux1|outMux[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|WriteRegW\(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X23_Y27_N28
\Caminho_de_dados|Registrador_D|InstrD[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_D|InstrD[19]~feeder_combout\ = \Instr~combout\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(19),
	combout => \Caminho_de_dados|Registrador_D|InstrD[19]~feeder_combout\);

-- Location: LCFF_X23_Y27_N29
\Caminho_de_dados|Registrador_D|InstrD[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_D|InstrD[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(19));

-- Location: LCFF_X23_Y27_N11
\Caminho_de_dados|Registrador_E|RtE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|RtE\(3));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y26_N18
\Caminho_de_dados|Registrador_D|InstrD[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_D|InstrD[14]~feeder_combout\ = \Instr~combout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(14),
	combout => \Caminho_de_dados|Registrador_D|InstrD[14]~feeder_combout\);

-- Location: LCFF_X27_Y26_N19
\Caminho_de_dados|Registrador_D|InstrD[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_D|InstrD[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(14));

-- Location: LCCOMB_X27_Y26_N10
\Caminho_de_dados|Registrador_E|SignImmE[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_E|SignImmE[14]~feeder_combout\ = \Caminho_de_dados|Registrador_D|InstrD\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caminho_de_dados|Registrador_D|InstrD\(14),
	combout => \Caminho_de_dados|Registrador_E|SignImmE[14]~feeder_combout\);

-- Location: LCFF_X27_Y26_N11
\Caminho_de_dados|Registrador_E|SignImmE[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_E|SignImmE[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|SignImmE\(14));

-- Location: LCCOMB_X23_Y27_N16
\Caminho_de_dados|Mux1|outMux[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux1|outMux[3]~3_combout\ = (\Caminho_de_dados|Registrador_E|RegDstE~regout\ & ((\Caminho_de_dados|Registrador_E|SignImmE\(14)))) # (!\Caminho_de_dados|Registrador_E|RegDstE~regout\ & (\Caminho_de_dados|Registrador_E|RtE\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_E|RtE\(3),
	datac => \Caminho_de_dados|Registrador_E|RegDstE~regout\,
	datad => \Caminho_de_dados|Registrador_E|SignImmE\(14),
	combout => \Caminho_de_dados|Mux1|outMux[3]~3_combout\);

-- Location: LCFF_X23_Y27_N17
\Caminho_de_dados|Registrador_W|WriteRegW[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Mux1|outMux[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|WriteRegW\(3));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X27_Y27_N7
\Caminho_de_dados|Registrador_D|InstrD[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(20));

-- Location: LCFF_X23_Y27_N15
\Caminho_de_dados|Registrador_E|RtE[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|RtE\(4));

-- Location: LCCOMB_X23_Y27_N24
\Caminho_de_dados|Mux1|outMux[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux1|outMux[4]~4_combout\ = (\Caminho_de_dados|Registrador_E|RegDstE~regout\ & (\Caminho_de_dados|Registrador_E|SignImmE\(15))) # (!\Caminho_de_dados|Registrador_E|RegDstE~regout\ & ((\Caminho_de_dados|Registrador_E|RtE\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|SignImmE\(15),
	datab => \Caminho_de_dados|Registrador_E|RegDstE~regout\,
	datac => \Caminho_de_dados|Registrador_E|RtE\(4),
	combout => \Caminho_de_dados|Mux1|outMux[4]~4_combout\);

-- Location: LCFF_X23_Y27_N25
\Caminho_de_dados|Registrador_W|WriteRegW[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Mux1|outMux[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|WriteRegW\(4));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X22_Y27_N26
\Caminho_de_dados|Registrador_D|InstrD[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_D|InstrD[25]~feeder_combout\ = \Instr~combout\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(25),
	combout => \Caminho_de_dados|Registrador_D|InstrD[25]~feeder_combout\);

-- Location: LCFF_X22_Y27_N27
\Caminho_de_dados|Registrador_D|InstrD[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_D|InstrD[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(25));

-- Location: LCCOMB_X22_Y27_N18
\Caminho_de_dados|Registrador_E|RsE[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_E|RsE[4]~feeder_combout\ = \Caminho_de_dados|Registrador_D|InstrD\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caminho_de_dados|Registrador_D|InstrD\(25),
	combout => \Caminho_de_dados|Registrador_E|RsE[4]~feeder_combout\);

-- Location: LCFF_X22_Y27_N19
\Caminho_de_dados|Registrador_E|RsE[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_E|RsE[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|RsE\(4));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X23_Y27_N8
\Caminho_de_dados|Registrador_D|InstrD[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_D|InstrD[24]~feeder_combout\ = \Instr~combout\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(24),
	combout => \Caminho_de_dados|Registrador_D|InstrD[24]~feeder_combout\);

-- Location: LCFF_X23_Y27_N9
\Caminho_de_dados|Registrador_D|InstrD[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_D|InstrD[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(24));

-- Location: LCFF_X22_Y27_N1
\Caminho_de_dados|Registrador_E|RsE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|RsE\(3));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X23_Y26_N1
\Caminho_de_dados|Registrador_D|InstrD[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(23));

-- Location: LCFF_X22_Y27_N9
\Caminho_de_dados|Registrador_E|RsE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|RsE\(2));

-- Location: LCCOMB_X22_Y27_N4
\Unidade_de_Hazard|FowardAE~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidade_de_Hazard|FowardAE~1_combout\ = (\Caminho_de_dados|Registrador_W|WriteRegW\(2) & (\Caminho_de_dados|Registrador_E|RsE\(2) & (\Caminho_de_dados|Registrador_E|RsE\(3) $ (!\Caminho_de_dados|Registrador_W|WriteRegW\(3))))) # 
-- (!\Caminho_de_dados|Registrador_W|WriteRegW\(2) & (!\Caminho_de_dados|Registrador_E|RsE\(2) & (\Caminho_de_dados|Registrador_E|RsE\(3) $ (!\Caminho_de_dados|Registrador_W|WriteRegW\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|WriteRegW\(2),
	datab => \Caminho_de_dados|Registrador_E|RsE\(3),
	datac => \Caminho_de_dados|Registrador_W|WriteRegW\(3),
	datad => \Caminho_de_dados|Registrador_E|RsE\(2),
	combout => \Unidade_de_Hazard|FowardAE~1_combout\);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y27_N7
\Caminho_de_dados|Registrador_D|InstrD[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(22));

-- Location: LCCOMB_X22_Y27_N14
\Caminho_de_dados|Registrador_E|RsE[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_E|RsE[1]~feeder_combout\ = \Caminho_de_dados|Registrador_D|InstrD\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caminho_de_dados|Registrador_D|InstrD\(22),
	combout => \Caminho_de_dados|Registrador_E|RsE[1]~feeder_combout\);

-- Location: LCFF_X22_Y27_N15
\Caminho_de_dados|Registrador_E|RsE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_E|RsE[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|RsE\(1));

-- Location: LCCOMB_X22_Y27_N12
\Unidade_de_Hazard|FowardAE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidade_de_Hazard|FowardAE~0_combout\ = (\Caminho_de_dados|Registrador_E|RsE\(0) & (\Caminho_de_dados|Registrador_W|WriteRegW\(0) & (\Caminho_de_dados|Registrador_E|RsE\(1) $ (!\Caminho_de_dados|Registrador_W|WriteRegW\(1))))) # 
-- (!\Caminho_de_dados|Registrador_E|RsE\(0) & (!\Caminho_de_dados|Registrador_W|WriteRegW\(0) & (\Caminho_de_dados|Registrador_E|RsE\(1) $ (!\Caminho_de_dados|Registrador_W|WriteRegW\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|RsE\(0),
	datab => \Caminho_de_dados|Registrador_W|WriteRegW\(0),
	datac => \Caminho_de_dados|Registrador_E|RsE\(1),
	datad => \Caminho_de_dados|Registrador_W|WriteRegW\(1),
	combout => \Unidade_de_Hazard|FowardAE~0_combout\);

-- Location: LCCOMB_X22_Y27_N22
\Unidade_de_Hazard|FowardAE~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidade_de_Hazard|FowardAE~2_combout\ = (\Unidade_de_Hazard|FowardAE~1_combout\ & (\Unidade_de_Hazard|FowardAE~0_combout\ & ((\Caminho_de_dados|Registrador_E|RsE\(4)) # (!\Unidade_de_Hazard|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidade_de_Hazard|Equal0~0_combout\,
	datab => \Caminho_de_dados|Registrador_E|RsE\(4),
	datac => \Unidade_de_Hazard|FowardAE~1_combout\,
	datad => \Unidade_de_Hazard|FowardAE~0_combout\,
	combout => \Unidade_de_Hazard|FowardAE~2_combout\);

-- Location: LCCOMB_X22_Y27_N30
\Unidade_de_Hazard|FowardAE\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidade_de_Hazard|FowardAE~combout\ = (\Caminho_de_dados|Registrador_W|RegWriteW~regout\ & (\Unidade_de_Hazard|FowardAE~2_combout\ & (\Caminho_de_dados|Registrador_W|WriteRegW\(4) $ (!\Caminho_de_dados|Registrador_E|RsE\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|WriteRegW\(4),
	datab => \Caminho_de_dados|Registrador_E|RsE\(4),
	datac => \Caminho_de_dados|Registrador_W|RegWriteW~regout\,
	datad => \Unidade_de_Hazard|FowardAE~2_combout\,
	combout => \Unidade_de_Hazard|FowardAE~combout\);

-- Location: LCCOMB_X22_Y27_N16
\Caminho_de_dados|Mux2|outMux[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[0]~0_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|Registrador_W|ALUOutW\(0)))) # (!\Unidade_de_Hazard|FowardAE~combout\ & 
-- (\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(0),
	datad => \Unidade_de_Hazard|FowardAE~combout\,
	combout => \Caminho_de_dados|Mux2|outMux[0]~0_combout\);

-- Location: LCCOMB_X25_Y26_N0
\Caminho_de_dados|ALU_1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~0_combout\ = (\Caminho_de_dados|Mux4|outMux[0]~2_combout\ & (\Caminho_de_dados|Mux2|outMux[0]~0_combout\ $ (VCC))) # (!\Caminho_de_dados|Mux4|outMux[0]~2_combout\ & ((\Caminho_de_dados|Mux2|outMux[0]~0_combout\) # (GND)))
-- \Caminho_de_dados|ALU_1|Add0~1\ = CARRY((\Caminho_de_dados|Mux2|outMux[0]~0_combout\) # (!\Caminho_de_dados|Mux4|outMux[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[0]~2_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[0]~0_combout\,
	datad => VCC,
	combout => \Caminho_de_dados|ALU_1|Add0~0_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~1\);

-- Location: LCCOMB_X23_Y28_N28
\Controladora|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|Equal1~0_combout\ = (!\Caminho_de_dados|Registrador_D|InstrD\(31) & (\Controladora|Equal0~0_combout\ & \Caminho_de_dados|Registrador_D|InstrD\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_D|InstrD\(31),
	datac => \Controladora|Equal0~0_combout\,
	datad => \Caminho_de_dados|Registrador_D|InstrD\(29),
	combout => \Controladora|Equal1~0_combout\);

-- Location: LCFF_X23_Y26_N29
\Caminho_de_dados|Registrador_E|ALUSrcE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Controladora|Equal1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\);

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X25_Y27_N23
\Caminho_de_dados|Registrador_D|InstrD[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(0));

-- Location: LCFF_X24_Y27_N17
\Caminho_de_dados|Registrador_E|SignImmE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|SignImmE\(0));

-- Location: LCCOMB_X23_Y27_N12
\Unidade_de_Hazard|FowardBE~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidade_de_Hazard|FowardBE~1_combout\ = (\Caminho_de_dados|Registrador_W|WriteRegW\(3) & (\Caminho_de_dados|Registrador_E|RtE\(3) & (\Caminho_de_dados|Registrador_W|WriteRegW\(2) $ (!\Caminho_de_dados|Registrador_E|RtE\(2))))) # 
-- (!\Caminho_de_dados|Registrador_W|WriteRegW\(3) & (!\Caminho_de_dados|Registrador_E|RtE\(3) & (\Caminho_de_dados|Registrador_W|WriteRegW\(2) $ (!\Caminho_de_dados|Registrador_E|RtE\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|WriteRegW\(3),
	datab => \Caminho_de_dados|Registrador_W|WriteRegW\(2),
	datac => \Caminho_de_dados|Registrador_E|RtE\(2),
	datad => \Caminho_de_dados|Registrador_E|RtE\(3),
	combout => \Unidade_de_Hazard|FowardBE~1_combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X24_Y27_N25
\Caminho_de_dados|Registrador_D|InstrD[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(17));

-- Location: LCFF_X23_Y27_N3
\Caminho_de_dados|Registrador_E|RtE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|RtE\(1));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X27_Y27_N9
\Caminho_de_dados|Registrador_D|InstrD[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(16));

-- Location: LCCOMB_X23_Y27_N22
\Caminho_de_dados|Registrador_E|RtE[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_E|RtE[0]~feeder_combout\ = \Caminho_de_dados|Registrador_D|InstrD\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Caminho_de_dados|Registrador_D|InstrD\(16),
	combout => \Caminho_de_dados|Registrador_E|RtE[0]~feeder_combout\);

-- Location: LCFF_X23_Y27_N23
\Caminho_de_dados|Registrador_E|RtE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_E|RtE[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|RtE\(0));

-- Location: LCCOMB_X23_Y27_N2
\Unidade_de_Hazard|FowardBE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidade_de_Hazard|FowardBE~0_combout\ = (\Caminho_de_dados|Registrador_W|WriteRegW\(0) & (\Caminho_de_dados|Registrador_E|RtE\(0) & (\Caminho_de_dados|Registrador_W|WriteRegW\(1) $ (!\Caminho_de_dados|Registrador_E|RtE\(1))))) # 
-- (!\Caminho_de_dados|Registrador_W|WriteRegW\(0) & (!\Caminho_de_dados|Registrador_E|RtE\(0) & (\Caminho_de_dados|Registrador_W|WriteRegW\(1) $ (!\Caminho_de_dados|Registrador_E|RtE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|WriteRegW\(0),
	datab => \Caminho_de_dados|Registrador_W|WriteRegW\(1),
	datac => \Caminho_de_dados|Registrador_E|RtE\(1),
	datad => \Caminho_de_dados|Registrador_E|RtE\(0),
	combout => \Unidade_de_Hazard|FowardBE~0_combout\);

-- Location: LCCOMB_X23_Y27_N6
\Unidade_de_Hazard|FowardBE~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidade_de_Hazard|FowardBE~2_combout\ = (\Unidade_de_Hazard|FowardBE~1_combout\ & (\Unidade_de_Hazard|FowardBE~0_combout\ & ((\Caminho_de_dados|Registrador_E|RtE\(4)) # (!\Unidade_de_Hazard|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidade_de_Hazard|Equal2~0_combout\,
	datab => \Caminho_de_dados|Registrador_E|RtE\(4),
	datac => \Unidade_de_Hazard|FowardBE~1_combout\,
	datad => \Unidade_de_Hazard|FowardBE~0_combout\,
	combout => \Unidade_de_Hazard|FowardBE~2_combout\);

-- Location: LCCOMB_X23_Y27_N0
\Caminho_de_dados|Mux4|outMux[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[0]~0_combout\ = (\Caminho_de_dados|Registrador_W|RegWriteW~regout\ & (\Unidade_de_Hazard|FowardBE~2_combout\ & (\Caminho_de_dados|Registrador_W|WriteRegW\(4) $ (!\Caminho_de_dados|Registrador_E|RtE\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|WriteRegW\(4),
	datab => \Caminho_de_dados|Registrador_E|RtE\(4),
	datac => \Caminho_de_dados|Registrador_W|RegWriteW~regout\,
	datad => \Unidade_de_Hazard|FowardBE~2_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[0]~0_combout\);

-- Location: LCCOMB_X23_Y27_N14
\Unidade_de_Hazard|FowardBE\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidade_de_Hazard|FowardBE~combout\ = (\Caminho_de_dados|Registrador_W|RegWriteW~regout\ & (\Unidade_de_Hazard|FowardBE~2_combout\ & (\Caminho_de_dados|Registrador_W|WriteRegW\(4) $ (!\Caminho_de_dados|Registrador_E|RtE\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|WriteRegW\(4),
	datab => \Caminho_de_dados|Registrador_W|RegWriteW~regout\,
	datac => \Caminho_de_dados|Registrador_E|RtE\(4),
	datad => \Unidade_de_Hazard|FowardBE~2_combout\,
	combout => \Unidade_de_Hazard|FowardBE~combout\);

-- Location: LCCOMB_X24_Y27_N30
\Caminho_de_dados|Mux4|outMux[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[0]~1_combout\ = (\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ & (((\Caminho_de_dados|Registrador_W|ALUOutW\(0) & \Unidade_de_Hazard|FowardBE~combout\)) # 
-- (!\Caminho_de_dados|Mux4|outMux[0]~0_combout\))) # (!\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(0) & ((\Unidade_de_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(0),
	datac => \Caminho_de_dados|Mux4|outMux[0]~0_combout\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[0]~1_combout\);

-- Location: LCCOMB_X24_Y27_N16
\Caminho_de_dados|Mux4|outMux[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[0]~2_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Caminho_de_dados|Registrador_E|SignImmE\(0))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & ((\Caminho_de_dados|Mux4|outMux[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|Registrador_E|SignImmE\(0),
	datad => \Caminho_de_dados|Mux4|outMux[0]~1_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[0]~2_combout\);

-- Location: LCCOMB_X23_Y26_N0
\Caminho_de_dados|ALU_1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~0_combout\ = (\Caminho_de_dados|Mux2|outMux[0]~0_combout\ & (\Caminho_de_dados|Mux4|outMux[0]~2_combout\ $ (VCC))) # (!\Caminho_de_dados|Mux2|outMux[0]~0_combout\ & (\Caminho_de_dados|Mux4|outMux[0]~2_combout\ & VCC))
-- \Caminho_de_dados|ALU_1|Add1~1\ = CARRY((\Caminho_de_dados|Mux2|outMux[0]~0_combout\ & \Caminho_de_dados|Mux4|outMux[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[0]~0_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[0]~2_combout\,
	datad => VCC,
	combout => \Caminho_de_dados|ALU_1|Add1~0_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~1\);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X24_Y26_N3
\Caminho_de_dados|Registrador_D|InstrD[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(5));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X23_Y26_N3
\Caminho_de_dados|Registrador_D|InstrD[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(3));

-- Location: LCCOMB_X24_Y26_N2
\Controladora|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|Equal4~0_combout\ = (!\Caminho_de_dados|Registrador_D|InstrD\(4) & (\Caminho_de_dados|Registrador_D|InstrD\(5) & !\Caminho_de_dados|Registrador_D|InstrD\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_D|InstrD\(4),
	datac => \Caminho_de_dados|Registrador_D|InstrD\(5),
	datad => \Caminho_de_dados|Registrador_D|InstrD\(3),
	combout => \Controladora|Equal4~0_combout\);

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X24_Y27_N19
\Caminho_de_dados|Registrador_D|InstrD[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(1));

-- Location: LCCOMB_X25_Y27_N18
\Controladora|ALUControlID~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|ALUControlID~3_combout\ = (\Controladora|Equal4~0_combout\ & ((\Caminho_de_dados|Registrador_D|InstrD\(2) & (\Caminho_de_dados|Registrador_D|InstrD\(0) & !\Caminho_de_dados|Registrador_D|InstrD\(1))) # 
-- (!\Caminho_de_dados|Registrador_D|InstrD\(2) & (!\Caminho_de_dados|Registrador_D|InstrD\(0) & \Caminho_de_dados|Registrador_D|InstrD\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_D|InstrD\(2),
	datab => \Caminho_de_dados|Registrador_D|InstrD\(0),
	datac => \Controladora|Equal4~0_combout\,
	datad => \Caminho_de_dados|Registrador_D|InstrD\(1),
	combout => \Controladora|ALUControlID~3_combout\);

-- Location: LCFF_X25_Y27_N19
\Caminho_de_dados|Registrador_E|ALUControlE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Controladora|ALUControlID~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|ALUControlE\(0));

-- Location: LCCOMB_X25_Y27_N12
\Caminho_de_dados|ALU_1|ALUOut[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[0]~0_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (((\Caminho_de_dados|Registrador_E|ALUControlE\(0))))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|Mux2|outMux[0]~0_combout\ & 
-- ((\Caminho_de_dados|Mux4|outMux[0]~2_combout\) # (\Caminho_de_dados|Registrador_E|ALUControlE\(0)))) # (!\Caminho_de_dados|Mux2|outMux[0]~0_combout\ & (\Caminho_de_dados|Mux4|outMux[0]~2_combout\ & \Caminho_de_dados|Registrador_E|ALUControlE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datab => \Caminho_de_dados|Mux2|outMux[0]~0_combout\,
	datac => \Caminho_de_dados|Mux4|outMux[0]~2_combout\,
	datad => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	combout => \Caminho_de_dados|ALU_1|ALUOut[0]~0_combout\);

-- Location: LCCOMB_X25_Y27_N24
\Caminho_de_dados|ALU_1|ALUOut[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[0]~1_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|ALUOut[0]~0_combout\ & (\Caminho_de_dados|ALU_1|Add0~0_combout\)) # (!\Caminho_de_dados|ALU_1|ALUOut[0]~0_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~0_combout\))))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (((\Caminho_de_dados|ALU_1|ALUOut[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datab => \Caminho_de_dados|ALU_1|Add0~0_combout\,
	datac => \Caminho_de_dados|ALU_1|Add1~0_combout\,
	datad => \Caminho_de_dados|ALU_1|ALUOut[0]~0_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[0]~1_combout\);

-- Location: LCFF_X25_Y27_N25
\Caminho_de_dados|Registrador_W|ALUOutW[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(0));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X24_Y27_N15
\Caminho_de_dados|Registrador_D|InstrD[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(2));

-- Location: LCCOMB_X25_Y27_N28
\Controladora|ALUControlID[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|ALUControlID[1]~1_combout\ = (\Caminho_de_dados|Registrador_D|InstrD\(2) & (\Caminho_de_dados|Registrador_D|InstrD\(1))) # (!\Caminho_de_dados|Registrador_D|InstrD\(2) & ((\Caminho_de_dados|Registrador_D|InstrD\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_D|InstrD\(1),
	datac => \Caminho_de_dados|Registrador_D|InstrD\(2),
	datad => \Caminho_de_dados|Registrador_D|InstrD\(0),
	combout => \Controladora|ALUControlID[1]~1_combout\);

-- Location: LCCOMB_X24_Y27_N10
\Controladora|ALUControlID[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|ALUControlID[1]~2_combout\ = (\Controladora|ALUControlID[1]~0_combout\ & ((\Controladora|ALUControlID[1]~1_combout\ & (\Controladora|Equal1~0_combout\)) # (!\Controladora|ALUControlID[1]~1_combout\ & 
-- ((!\Caminho_de_dados|Registrador_D|InstrD\(2)))))) # (!\Controladora|ALUControlID[1]~0_combout\ & (\Controladora|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|ALUControlID[1]~0_combout\,
	datab => \Controladora|Equal1~0_combout\,
	datac => \Caminho_de_dados|Registrador_D|InstrD\(2),
	datad => \Controladora|ALUControlID[1]~1_combout\,
	combout => \Controladora|ALUControlID[1]~2_combout\);

-- Location: LCFF_X24_Y27_N11
\Caminho_de_dados|Registrador_E|ALUControlE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Controladora|ALUControlID[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|ALUControlE\(1));

-- Location: LCFF_X24_Y27_N27
\Caminho_de_dados|Registrador_E|SignImmE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|SignImmE\(1));

-- Location: LCFF_X24_Y27_N1
\Caminho_de_dados|Registrador_E|SignImmE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|SignImmE\(2));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X22_Y26_N20
\Caminho_de_dados|Mux2|outMux[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[8]~8_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|Registrador_W|ALUOutW\(8)))) # (!\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a8\,
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(8),
	datad => \Unidade_de_Hazard|FowardAE~combout\,
	combout => \Caminho_de_dados|Mux2|outMux[8]~8_combout\);

-- Location: LCCOMB_X21_Y26_N28
\Caminho_de_dados|ALU_1|ALUOut[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[8]~16_combout\ = (\Caminho_de_dados|Mux4|outMux[8]~18_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # ((!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & \Caminho_de_dados|Mux2|outMux[8]~8_combout\)))) # 
-- (!\Caminho_de_dados|Mux4|outMux[8]~18_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Registrador_E|ALUControlE\(1)) # (\Caminho_de_dados|Mux2|outMux[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[8]~18_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datad => \Caminho_de_dados|Mux2|outMux[8]~8_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[8]~16_combout\);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X24_Y28_N25
\Caminho_de_dados|Registrador_D|InstrD[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(15));

-- Location: LCFF_X24_Y28_N15
\Caminho_de_dados|Registrador_E|SignImmE[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|SignImmE\(15));

-- Location: LCCOMB_X22_Y25_N18
\Caminho_de_dados|Mux4|outMux[22]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[22]~46_combout\ = (\Caminho_de_dados|Mux4|outMux[22]~45_combout\) # ((\Caminho_de_dados|Registrador_W|ALUOutW\(22) & (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & \Unidade_de_Hazard|FowardBE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[22]~45_combout\,
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(22),
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[22]~46_combout\);

-- Location: LCCOMB_X24_Y25_N20
\Caminho_de_dados|Mux4|outMux[21]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[21]~44_combout\ = (\Caminho_de_dados|Mux4|outMux[21]~43_combout\) # ((\Caminho_de_dados|Registrador_W|ALUOutW\(21) & (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & \Unidade_de_Hazard|FowardBE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[21]~43_combout\,
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(21),
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[21]~44_combout\);

-- Location: LCCOMB_X21_Y25_N0
\Caminho_de_dados|Mux2|outMux[20]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[20]~20_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|Registrador_W|ALUOutW\(20)))) # (!\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a20\,
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(20),
	datac => \Unidade_de_Hazard|FowardAE~combout\,
	combout => \Caminho_de_dados|Mux2|outMux[20]~20_combout\);

-- Location: LCCOMB_X24_Y28_N24
\Caminho_de_dados|Mux2|outMux[23]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[23]~23_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|Registrador_W|ALUOutW\(23)))) # (!\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a23\,
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(23),
	datad => \Unidade_de_Hazard|FowardAE~combout\,
	combout => \Caminho_de_dados|Mux2|outMux[23]~23_combout\);

-- Location: LCCOMB_X23_Y25_N12
\Caminho_de_dados|ALU_1|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~44_combout\ = ((\Caminho_de_dados|Mux2|outMux[22]~22_combout\ $ (\Caminho_de_dados|Mux4|outMux[22]~46_combout\ $ (!\Caminho_de_dados|ALU_1|Add1~43\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add1~45\ = CARRY((\Caminho_de_dados|Mux2|outMux[22]~22_combout\ & ((\Caminho_de_dados|Mux4|outMux[22]~46_combout\) # (!\Caminho_de_dados|ALU_1|Add1~43\))) # (!\Caminho_de_dados|Mux2|outMux[22]~22_combout\ & 
-- (\Caminho_de_dados|Mux4|outMux[22]~46_combout\ & !\Caminho_de_dados|ALU_1|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[22]~22_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[22]~46_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~43\,
	combout => \Caminho_de_dados|ALU_1|Add1~44_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~45\);

-- Location: LCCOMB_X23_Y25_N14
\Caminho_de_dados|ALU_1|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~46_combout\ = (\Caminho_de_dados|Mux4|outMux[23]~48_combout\ & ((\Caminho_de_dados|Mux2|outMux[23]~23_combout\ & (\Caminho_de_dados|ALU_1|Add1~45\ & VCC)) # (!\Caminho_de_dados|Mux2|outMux[23]~23_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add1~45\)))) # (!\Caminho_de_dados|Mux4|outMux[23]~48_combout\ & ((\Caminho_de_dados|Mux2|outMux[23]~23_combout\ & (!\Caminho_de_dados|ALU_1|Add1~45\)) # (!\Caminho_de_dados|Mux2|outMux[23]~23_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~45\) # (GND)))))
-- \Caminho_de_dados|ALU_1|Add1~47\ = CARRY((\Caminho_de_dados|Mux4|outMux[23]~48_combout\ & (!\Caminho_de_dados|Mux2|outMux[23]~23_combout\ & !\Caminho_de_dados|ALU_1|Add1~45\)) # (!\Caminho_de_dados|Mux4|outMux[23]~48_combout\ & 
-- ((!\Caminho_de_dados|ALU_1|Add1~45\) # (!\Caminho_de_dados|Mux2|outMux[23]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[23]~48_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[23]~23_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~45\,
	combout => \Caminho_de_dados|ALU_1|Add1~46_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~47\);

-- Location: LCCOMB_X24_Y27_N24
\Caminho_de_dados|Mux2|outMux[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[12]~12_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|Registrador_W|ALUOutW\(12)))) # (!\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a12\,
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(12),
	datad => \Unidade_de_Hazard|FowardAE~combout\,
	combout => \Caminho_de_dados|Mux2|outMux[12]~12_combout\);

-- Location: LCCOMB_X22_Y25_N28
\Caminho_de_dados|Mux4|outMux[24]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[24]~49_combout\ = (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & ((\Unidade_de_Hazard|FowardBE~combout\ & ((\Caminho_de_dados|Registrador_W|ALUOutW\(24)))) # (!\Unidade_de_Hazard|FowardBE~combout\ & 
-- (\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a24\,
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(24),
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[24]~49_combout\);

-- Location: LCCOMB_X22_Y25_N6
\Caminho_de_dados|Mux4|outMux[24]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[24]~50_combout\ = (\Caminho_de_dados|Mux4|outMux[24]~49_combout\) # ((\Caminho_de_dados|Registrador_E|SignImmE\(15) & \Caminho_de_dados|Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|SignImmE\(15),
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Caminho_de_dados|Mux4|outMux[24]~49_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[24]~50_combout\);

-- Location: LCCOMB_X25_Y25_N14
\Caminho_de_dados|ALU_1|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~46_combout\ = (\Caminho_de_dados|Mux4|outMux[23]~48_combout\ & ((\Caminho_de_dados|Mux2|outMux[23]~23_combout\ & (!\Caminho_de_dados|ALU_1|Add0~45\)) # (!\Caminho_de_dados|Mux2|outMux[23]~23_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add0~45\) # (GND))))) # (!\Caminho_de_dados|Mux4|outMux[23]~48_combout\ & ((\Caminho_de_dados|Mux2|outMux[23]~23_combout\ & (\Caminho_de_dados|ALU_1|Add0~45\ & VCC)) # (!\Caminho_de_dados|Mux2|outMux[23]~23_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add0~45\))))
-- \Caminho_de_dados|ALU_1|Add0~47\ = CARRY((\Caminho_de_dados|Mux4|outMux[23]~48_combout\ & ((!\Caminho_de_dados|ALU_1|Add0~45\) # (!\Caminho_de_dados|Mux2|outMux[23]~23_combout\))) # (!\Caminho_de_dados|Mux4|outMux[23]~48_combout\ & 
-- (!\Caminho_de_dados|Mux2|outMux[23]~23_combout\ & !\Caminho_de_dados|ALU_1|Add0~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[23]~48_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[23]~23_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~45\,
	combout => \Caminho_de_dados|ALU_1|Add0~46_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~47\);

-- Location: LCCOMB_X25_Y25_N16
\Caminho_de_dados|ALU_1|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~48_combout\ = ((\Caminho_de_dados|Mux2|outMux[24]~24_combout\ $ (\Caminho_de_dados|Mux4|outMux[24]~50_combout\ $ (\Caminho_de_dados|ALU_1|Add0~47\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add0~49\ = CARRY((\Caminho_de_dados|Mux2|outMux[24]~24_combout\ & ((!\Caminho_de_dados|ALU_1|Add0~47\) # (!\Caminho_de_dados|Mux4|outMux[24]~50_combout\))) # (!\Caminho_de_dados|Mux2|outMux[24]~24_combout\ & 
-- (!\Caminho_de_dados|Mux4|outMux[24]~50_combout\ & !\Caminho_de_dados|ALU_1|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[24]~24_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[24]~50_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~47\,
	combout => \Caminho_de_dados|ALU_1|Add0~48_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~49\);

-- Location: LCCOMB_X23_Y25_N16
\Caminho_de_dados|ALU_1|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~48_combout\ = ((\Caminho_de_dados|Mux2|outMux[24]~24_combout\ $ (\Caminho_de_dados|Mux4|outMux[24]~50_combout\ $ (!\Caminho_de_dados|ALU_1|Add1~47\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add1~49\ = CARRY((\Caminho_de_dados|Mux2|outMux[24]~24_combout\ & ((\Caminho_de_dados|Mux4|outMux[24]~50_combout\) # (!\Caminho_de_dados|ALU_1|Add1~47\))) # (!\Caminho_de_dados|Mux2|outMux[24]~24_combout\ & 
-- (\Caminho_de_dados|Mux4|outMux[24]~50_combout\ & !\Caminho_de_dados|ALU_1|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[24]~24_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[24]~50_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~47\,
	combout => \Caminho_de_dados|ALU_1|Add1~48_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~49\);

-- Location: LCCOMB_X24_Y25_N2
\Caminho_de_dados|ALU_1|ALUOut[24]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[24]~49_combout\ = (\Caminho_de_dados|ALU_1|ALUOut[24]~48_combout\ & (((\Caminho_de_dados|ALU_1|Add0~48_combout\)) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1)))) # (!\Caminho_de_dados|ALU_1|ALUOut[24]~48_combout\ & 
-- (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|Add1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|ALUOut[24]~48_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|Add0~48_combout\,
	datad => \Caminho_de_dados|ALU_1|Add1~48_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[24]~49_combout\);

-- Location: LCFF_X24_Y25_N3
\Caminho_de_dados|Registrador_W|ALUOutW[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[24]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(24));

-- Location: LCCOMB_X21_Y25_N20
\Caminho_de_dados|Mux4|outMux[29]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[29]~59_combout\ = (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & ((\Unidade_de_Hazard|FowardBE~combout\ & ((\Caminho_de_dados|Registrador_W|ALUOutW\(29)))) # (!\Unidade_de_Hazard|FowardBE~combout\ & 
-- (\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a29\,
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(29),
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[29]~59_combout\);

-- Location: LCCOMB_X21_Y25_N22
\Caminho_de_dados|Mux4|outMux[29]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[29]~60_combout\ = (\Caminho_de_dados|Mux4|outMux[29]~59_combout\) # ((\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & \Caminho_de_dados|Registrador_E|SignImmE\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|Mux4|outMux[29]~59_combout\,
	datad => \Caminho_de_dados|Registrador_E|SignImmE\(15),
	combout => \Caminho_de_dados|Mux4|outMux[29]~60_combout\);

-- Location: LCCOMB_X23_Y25_N18
\Caminho_de_dados|ALU_1|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~50_combout\ = (\Caminho_de_dados|Mux4|outMux[25]~52_combout\ & ((\Caminho_de_dados|Mux2|outMux[25]~25_combout\ & (\Caminho_de_dados|ALU_1|Add1~49\ & VCC)) # (!\Caminho_de_dados|Mux2|outMux[25]~25_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add1~49\)))) # (!\Caminho_de_dados|Mux4|outMux[25]~52_combout\ & ((\Caminho_de_dados|Mux2|outMux[25]~25_combout\ & (!\Caminho_de_dados|ALU_1|Add1~49\)) # (!\Caminho_de_dados|Mux2|outMux[25]~25_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~49\) # (GND)))))
-- \Caminho_de_dados|ALU_1|Add1~51\ = CARRY((\Caminho_de_dados|Mux4|outMux[25]~52_combout\ & (!\Caminho_de_dados|Mux2|outMux[25]~25_combout\ & !\Caminho_de_dados|ALU_1|Add1~49\)) # (!\Caminho_de_dados|Mux4|outMux[25]~52_combout\ & 
-- ((!\Caminho_de_dados|ALU_1|Add1~49\) # (!\Caminho_de_dados|Mux2|outMux[25]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[25]~52_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[25]~25_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~49\,
	combout => \Caminho_de_dados|ALU_1|Add1~50_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~51\);

-- Location: LCCOMB_X23_Y25_N20
\Caminho_de_dados|ALU_1|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~52_combout\ = ((\Caminho_de_dados|Mux4|outMux[26]~54_combout\ $ (\Caminho_de_dados|Mux2|outMux[26]~26_combout\ $ (!\Caminho_de_dados|ALU_1|Add1~51\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add1~53\ = CARRY((\Caminho_de_dados|Mux4|outMux[26]~54_combout\ & ((\Caminho_de_dados|Mux2|outMux[26]~26_combout\) # (!\Caminho_de_dados|ALU_1|Add1~51\))) # (!\Caminho_de_dados|Mux4|outMux[26]~54_combout\ & 
-- (\Caminho_de_dados|Mux2|outMux[26]~26_combout\ & !\Caminho_de_dados|ALU_1|Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[26]~54_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[26]~26_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~51\,
	combout => \Caminho_de_dados|ALU_1|Add1~52_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~53\);

-- Location: LCCOMB_X23_Y25_N22
\Caminho_de_dados|ALU_1|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~54_combout\ = (\Caminho_de_dados|Mux2|outMux[27]~27_combout\ & ((\Caminho_de_dados|Mux4|outMux[27]~56_combout\ & (\Caminho_de_dados|ALU_1|Add1~53\ & VCC)) # (!\Caminho_de_dados|Mux4|outMux[27]~56_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add1~53\)))) # (!\Caminho_de_dados|Mux2|outMux[27]~27_combout\ & ((\Caminho_de_dados|Mux4|outMux[27]~56_combout\ & (!\Caminho_de_dados|ALU_1|Add1~53\)) # (!\Caminho_de_dados|Mux4|outMux[27]~56_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~53\) # (GND)))))
-- \Caminho_de_dados|ALU_1|Add1~55\ = CARRY((\Caminho_de_dados|Mux2|outMux[27]~27_combout\ & (!\Caminho_de_dados|Mux4|outMux[27]~56_combout\ & !\Caminho_de_dados|ALU_1|Add1~53\)) # (!\Caminho_de_dados|Mux2|outMux[27]~27_combout\ & 
-- ((!\Caminho_de_dados|ALU_1|Add1~53\) # (!\Caminho_de_dados|Mux4|outMux[27]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[27]~27_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[27]~56_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~53\,
	combout => \Caminho_de_dados|ALU_1|Add1~54_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~55\);

-- Location: LCCOMB_X23_Y25_N24
\Caminho_de_dados|ALU_1|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~56_combout\ = ((\Caminho_de_dados|Mux2|outMux[28]~28_combout\ $ (\Caminho_de_dados|Mux4|outMux[28]~58_combout\ $ (!\Caminho_de_dados|ALU_1|Add1~55\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add1~57\ = CARRY((\Caminho_de_dados|Mux2|outMux[28]~28_combout\ & ((\Caminho_de_dados|Mux4|outMux[28]~58_combout\) # (!\Caminho_de_dados|ALU_1|Add1~55\))) # (!\Caminho_de_dados|Mux2|outMux[28]~28_combout\ & 
-- (\Caminho_de_dados|Mux4|outMux[28]~58_combout\ & !\Caminho_de_dados|ALU_1|Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[28]~28_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[28]~58_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~55\,
	combout => \Caminho_de_dados|ALU_1|Add1~56_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~57\);

-- Location: LCCOMB_X23_Y25_N26
\Caminho_de_dados|ALU_1|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~58_combout\ = (\Caminho_de_dados|Mux2|outMux[29]~29_combout\ & ((\Caminho_de_dados|Mux4|outMux[29]~60_combout\ & (\Caminho_de_dados|ALU_1|Add1~57\ & VCC)) # (!\Caminho_de_dados|Mux4|outMux[29]~60_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add1~57\)))) # (!\Caminho_de_dados|Mux2|outMux[29]~29_combout\ & ((\Caminho_de_dados|Mux4|outMux[29]~60_combout\ & (!\Caminho_de_dados|ALU_1|Add1~57\)) # (!\Caminho_de_dados|Mux4|outMux[29]~60_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~57\) # (GND)))))
-- \Caminho_de_dados|ALU_1|Add1~59\ = CARRY((\Caminho_de_dados|Mux2|outMux[29]~29_combout\ & (!\Caminho_de_dados|Mux4|outMux[29]~60_combout\ & !\Caminho_de_dados|ALU_1|Add1~57\)) # (!\Caminho_de_dados|Mux2|outMux[29]~29_combout\ & 
-- ((!\Caminho_de_dados|ALU_1|Add1~57\) # (!\Caminho_de_dados|Mux4|outMux[29]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[29]~29_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[29]~60_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~57\,
	combout => \Caminho_de_dados|ALU_1|Add1~58_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~59\);

-- Location: LCCOMB_X24_Y29_N12
\Caminho_de_dados|Mux4|outMux[31]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[31]~63_combout\ = (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & ((\Unidade_de_Hazard|FowardBE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(31))) # (!\Unidade_de_Hazard|FowardBE~combout\ & 
-- ((\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a31\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(31),
	datab => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a31\,
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[31]~63_combout\);

-- Location: LCCOMB_X24_Y29_N18
\Caminho_de_dados|Mux4|outMux[31]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[31]~64_combout\ = (\Caminho_de_dados|Mux4|outMux[31]~63_combout\) # ((\Caminho_de_dados|Registrador_E|SignImmE\(15) & \Caminho_de_dados|Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|SignImmE\(15),
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Caminho_de_dados|Mux4|outMux[31]~63_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[31]~64_combout\);

-- Location: LCCOMB_X24_Y29_N22
\Caminho_de_dados|Mux2|outMux[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[31]~31_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(31))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(31),
	datab => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a31\,
	datac => \Unidade_de_Hazard|FowardAE~combout\,
	combout => \Caminho_de_dados|Mux2|outMux[31]~31_combout\);

-- Location: LCCOMB_X23_Y25_N28
\Caminho_de_dados|ALU_1|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~60_combout\ = ((\Caminho_de_dados|Mux2|outMux[30]~30_combout\ $ (\Caminho_de_dados|Mux4|outMux[30]~62_combout\ $ (!\Caminho_de_dados|ALU_1|Add1~59\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add1~61\ = CARRY((\Caminho_de_dados|Mux2|outMux[30]~30_combout\ & ((\Caminho_de_dados|Mux4|outMux[30]~62_combout\) # (!\Caminho_de_dados|ALU_1|Add1~59\))) # (!\Caminho_de_dados|Mux2|outMux[30]~30_combout\ & 
-- (\Caminho_de_dados|Mux4|outMux[30]~62_combout\ & !\Caminho_de_dados|ALU_1|Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[30]~30_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[30]~62_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~59\,
	combout => \Caminho_de_dados|ALU_1|Add1~60_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~61\);

-- Location: LCCOMB_X23_Y25_N30
\Caminho_de_dados|ALU_1|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~62_combout\ = \Caminho_de_dados|Mux4|outMux[31]~64_combout\ $ (\Caminho_de_dados|ALU_1|Add1~61\ $ (\Caminho_de_dados|Mux2|outMux[31]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Mux4|outMux[31]~64_combout\,
	datad => \Caminho_de_dados|Mux2|outMux[31]~31_combout\,
	cin => \Caminho_de_dados|ALU_1|Add1~61\,
	combout => \Caminho_de_dados|ALU_1|Add1~62_combout\);

-- Location: LCCOMB_X21_Y25_N10
\Caminho_de_dados|Mux2|outMux[28]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[28]~28_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|Registrador_W|ALUOutW\(28)))) # (!\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a28\,
	datac => \Unidade_de_Hazard|FowardAE~combout\,
	datad => \Caminho_de_dados|Registrador_W|ALUOutW\(28),
	combout => \Caminho_de_dados|Mux2|outMux[28]~28_combout\);

-- Location: LCCOMB_X24_Y29_N26
\Caminho_de_dados|Mux2|outMux[27]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[27]~27_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(27))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(27),
	datac => \Unidade_de_Hazard|FowardAE~combout\,
	datad => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a27\,
	combout => \Caminho_de_dados|Mux2|outMux[27]~27_combout\);

-- Location: LCCOMB_X24_Y24_N26
\Caminho_de_dados|Mux4|outMux[26]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[26]~53_combout\ = (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & ((\Unidade_de_Hazard|FowardBE~combout\ & ((\Caminho_de_dados|Registrador_W|ALUOutW\(26)))) # (!\Unidade_de_Hazard|FowardBE~combout\ & 
-- (\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a26\,
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(26),
	datac => \Unidade_de_Hazard|FowardBE~combout\,
	datad => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	combout => \Caminho_de_dados|Mux4|outMux[26]~53_combout\);

-- Location: LCCOMB_X24_Y24_N22
\Caminho_de_dados|Mux4|outMux[26]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[26]~54_combout\ = (\Caminho_de_dados|Mux4|outMux[26]~53_combout\) # ((\Caminho_de_dados|Registrador_E|SignImmE\(15) & \Caminho_de_dados|Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|SignImmE\(15),
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Caminho_de_dados|Mux4|outMux[26]~53_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[26]~54_combout\);

-- Location: LCCOMB_X25_Y25_N18
\Caminho_de_dados|ALU_1|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~50_combout\ = (\Caminho_de_dados|Mux4|outMux[25]~52_combout\ & ((\Caminho_de_dados|Mux2|outMux[25]~25_combout\ & (!\Caminho_de_dados|ALU_1|Add0~49\)) # (!\Caminho_de_dados|Mux2|outMux[25]~25_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add0~49\) # (GND))))) # (!\Caminho_de_dados|Mux4|outMux[25]~52_combout\ & ((\Caminho_de_dados|Mux2|outMux[25]~25_combout\ & (\Caminho_de_dados|ALU_1|Add0~49\ & VCC)) # (!\Caminho_de_dados|Mux2|outMux[25]~25_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add0~49\))))
-- \Caminho_de_dados|ALU_1|Add0~51\ = CARRY((\Caminho_de_dados|Mux4|outMux[25]~52_combout\ & ((!\Caminho_de_dados|ALU_1|Add0~49\) # (!\Caminho_de_dados|Mux2|outMux[25]~25_combout\))) # (!\Caminho_de_dados|Mux4|outMux[25]~52_combout\ & 
-- (!\Caminho_de_dados|Mux2|outMux[25]~25_combout\ & !\Caminho_de_dados|ALU_1|Add0~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[25]~52_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[25]~25_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~49\,
	combout => \Caminho_de_dados|ALU_1|Add0~50_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~51\);

-- Location: LCCOMB_X25_Y25_N20
\Caminho_de_dados|ALU_1|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~52_combout\ = ((\Caminho_de_dados|Mux2|outMux[26]~26_combout\ $ (\Caminho_de_dados|Mux4|outMux[26]~54_combout\ $ (\Caminho_de_dados|ALU_1|Add0~51\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add0~53\ = CARRY((\Caminho_de_dados|Mux2|outMux[26]~26_combout\ & ((!\Caminho_de_dados|ALU_1|Add0~51\) # (!\Caminho_de_dados|Mux4|outMux[26]~54_combout\))) # (!\Caminho_de_dados|Mux2|outMux[26]~26_combout\ & 
-- (!\Caminho_de_dados|Mux4|outMux[26]~54_combout\ & !\Caminho_de_dados|ALU_1|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[26]~26_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[26]~54_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~51\,
	combout => \Caminho_de_dados|ALU_1|Add0~52_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~53\);

-- Location: LCCOMB_X25_Y25_N22
\Caminho_de_dados|ALU_1|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~54_combout\ = (\Caminho_de_dados|Mux4|outMux[27]~56_combout\ & ((\Caminho_de_dados|Mux2|outMux[27]~27_combout\ & (!\Caminho_de_dados|ALU_1|Add0~53\)) # (!\Caminho_de_dados|Mux2|outMux[27]~27_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add0~53\) # (GND))))) # (!\Caminho_de_dados|Mux4|outMux[27]~56_combout\ & ((\Caminho_de_dados|Mux2|outMux[27]~27_combout\ & (\Caminho_de_dados|ALU_1|Add0~53\ & VCC)) # (!\Caminho_de_dados|Mux2|outMux[27]~27_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add0~53\))))
-- \Caminho_de_dados|ALU_1|Add0~55\ = CARRY((\Caminho_de_dados|Mux4|outMux[27]~56_combout\ & ((!\Caminho_de_dados|ALU_1|Add0~53\) # (!\Caminho_de_dados|Mux2|outMux[27]~27_combout\))) # (!\Caminho_de_dados|Mux4|outMux[27]~56_combout\ & 
-- (!\Caminho_de_dados|Mux2|outMux[27]~27_combout\ & !\Caminho_de_dados|ALU_1|Add0~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[27]~56_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[27]~27_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~53\,
	combout => \Caminho_de_dados|ALU_1|Add0~54_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~55\);

-- Location: LCCOMB_X25_Y25_N24
\Caminho_de_dados|ALU_1|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~56_combout\ = ((\Caminho_de_dados|Mux4|outMux[28]~58_combout\ $ (\Caminho_de_dados|Mux2|outMux[28]~28_combout\ $ (\Caminho_de_dados|ALU_1|Add0~55\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add0~57\ = CARRY((\Caminho_de_dados|Mux4|outMux[28]~58_combout\ & (\Caminho_de_dados|Mux2|outMux[28]~28_combout\ & !\Caminho_de_dados|ALU_1|Add0~55\)) # (!\Caminho_de_dados|Mux4|outMux[28]~58_combout\ & 
-- ((\Caminho_de_dados|Mux2|outMux[28]~28_combout\) # (!\Caminho_de_dados|ALU_1|Add0~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[28]~58_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[28]~28_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~55\,
	combout => \Caminho_de_dados|ALU_1|Add0~56_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~57\);

-- Location: LCCOMB_X25_Y25_N26
\Caminho_de_dados|ALU_1|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~58_combout\ = (\Caminho_de_dados|Mux4|outMux[29]~60_combout\ & ((\Caminho_de_dados|Mux2|outMux[29]~29_combout\ & (!\Caminho_de_dados|ALU_1|Add0~57\)) # (!\Caminho_de_dados|Mux2|outMux[29]~29_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add0~57\) # (GND))))) # (!\Caminho_de_dados|Mux4|outMux[29]~60_combout\ & ((\Caminho_de_dados|Mux2|outMux[29]~29_combout\ & (\Caminho_de_dados|ALU_1|Add0~57\ & VCC)) # (!\Caminho_de_dados|Mux2|outMux[29]~29_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add0~57\))))
-- \Caminho_de_dados|ALU_1|Add0~59\ = CARRY((\Caminho_de_dados|Mux4|outMux[29]~60_combout\ & ((!\Caminho_de_dados|ALU_1|Add0~57\) # (!\Caminho_de_dados|Mux2|outMux[29]~29_combout\))) # (!\Caminho_de_dados|Mux4|outMux[29]~60_combout\ & 
-- (!\Caminho_de_dados|Mux2|outMux[29]~29_combout\ & !\Caminho_de_dados|ALU_1|Add0~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[29]~60_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[29]~29_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~57\,
	combout => \Caminho_de_dados|ALU_1|Add0~58_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~59\);

-- Location: LCCOMB_X25_Y25_N28
\Caminho_de_dados|ALU_1|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~60_combout\ = ((\Caminho_de_dados|Mux2|outMux[30]~30_combout\ $ (\Caminho_de_dados|Mux4|outMux[30]~62_combout\ $ (\Caminho_de_dados|ALU_1|Add0~59\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add0~61\ = CARRY((\Caminho_de_dados|Mux2|outMux[30]~30_combout\ & ((!\Caminho_de_dados|ALU_1|Add0~59\) # (!\Caminho_de_dados|Mux4|outMux[30]~62_combout\))) # (!\Caminho_de_dados|Mux2|outMux[30]~30_combout\ & 
-- (!\Caminho_de_dados|Mux4|outMux[30]~62_combout\ & !\Caminho_de_dados|ALU_1|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[30]~30_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[30]~62_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~59\,
	combout => \Caminho_de_dados|ALU_1|Add0~60_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~61\);

-- Location: LCCOMB_X25_Y25_N30
\Caminho_de_dados|ALU_1|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~62_combout\ = \Caminho_de_dados|Mux4|outMux[31]~64_combout\ $ (\Caminho_de_dados|ALU_1|Add0~61\ $ (!\Caminho_de_dados|Mux2|outMux[31]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[31]~64_combout\,
	datad => \Caminho_de_dados|Mux2|outMux[31]~31_combout\,
	cin => \Caminho_de_dados|ALU_1|Add0~61\,
	combout => \Caminho_de_dados|ALU_1|Add0~62_combout\);

-- Location: LCCOMB_X24_Y29_N24
\Caminho_de_dados|ALU_1|ALUOut[31]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[31]~63_combout\ = (\Caminho_de_dados|ALU_1|ALUOut[31]~62_combout\ & (((\Caminho_de_dados|ALU_1|Add0~62_combout\)) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1)))) # (!\Caminho_de_dados|ALU_1|ALUOut[31]~62_combout\ & 
-- (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (\Caminho_de_dados|ALU_1|Add1~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|ALUOut[31]~62_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|Add1~62_combout\,
	datad => \Caminho_de_dados|ALU_1|Add0~62_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[31]~63_combout\);

-- Location: LCFF_X24_Y29_N25
\Caminho_de_dados|Registrador_W|ALUOutW[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[31]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(31));

-- Location: LCCOMB_X24_Y28_N10
\Caminho_de_dados|Mux4|outMux[30]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[30]~61_combout\ = (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & ((\Unidade_de_Hazard|FowardBE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(30))) # (!\Unidade_de_Hazard|FowardBE~combout\ & 
-- ((\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a30\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(30),
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a30\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[30]~61_combout\);

-- Location: LCCOMB_X24_Y28_N8
\Caminho_de_dados|Mux4|outMux[30]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[30]~62_combout\ = (\Caminho_de_dados|Mux4|outMux[30]~61_combout\) # ((\Caminho_de_dados|Registrador_E|SignImmE\(15) & \Caminho_de_dados|Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_E|SignImmE\(15),
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Caminho_de_dados|Mux4|outMux[30]~61_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[30]~62_combout\);

-- Location: LCCOMB_X24_Y28_N26
\Caminho_de_dados|ALU_1|ALUOut[30]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[30]~60_combout\ = (\Caminho_de_dados|Mux2|outMux[30]~30_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # ((\Caminho_de_dados|Mux4|outMux[30]~62_combout\ & !\Caminho_de_dados|Registrador_E|ALUControlE\(1))))) # 
-- (!\Caminho_de_dados|Mux2|outMux[30]~30_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Mux4|outMux[30]~62_combout\) # (\Caminho_de_dados|Registrador_E|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[30]~30_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[30]~62_combout\,
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datad => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	combout => \Caminho_de_dados|ALU_1|ALUOut[30]~60_combout\);

-- Location: LCCOMB_X24_Y28_N20
\Caminho_de_dados|ALU_1|ALUOut[30]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[30]~61_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|ALUOut[30]~60_combout\ & (\Caminho_de_dados|ALU_1|Add0~60_combout\)) # (!\Caminho_de_dados|ALU_1|ALUOut[30]~60_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~60_combout\))))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (\Caminho_de_dados|ALU_1|ALUOut[30]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datab => \Caminho_de_dados|ALU_1|ALUOut[30]~60_combout\,
	datac => \Caminho_de_dados|ALU_1|Add0~60_combout\,
	datad => \Caminho_de_dados|ALU_1|Add1~60_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[30]~61_combout\);

-- Location: LCFF_X24_Y28_N21
\Caminho_de_dados|Registrador_W|ALUOutW[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[30]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(30));

-- Location: LCCOMB_X21_Y25_N18
\Caminho_de_dados|Mux2|outMux[29]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[29]~29_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(29))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(29),
	datac => \Unidade_de_Hazard|FowardAE~combout\,
	datad => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a29\,
	combout => \Caminho_de_dados|Mux2|outMux[29]~29_combout\);

-- Location: LCCOMB_X22_Y25_N22
\Caminho_de_dados|ALU_1|ALUOut[29]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[29]~59_combout\ = (\Caminho_de_dados|ALU_1|ALUOut[29]~58_combout\ & (((\Caminho_de_dados|ALU_1|Add0~58_combout\)) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1)))) # (!\Caminho_de_dados|ALU_1|ALUOut[29]~58_combout\ & 
-- (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (\Caminho_de_dados|ALU_1|Add1~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|ALUOut[29]~58_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|Add1~58_combout\,
	datad => \Caminho_de_dados|ALU_1|Add0~58_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[29]~59_combout\);

-- Location: LCFF_X22_Y25_N23
\Caminho_de_dados|Registrador_W|ALUOutW[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[29]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(29));

-- Location: LCCOMB_X24_Y25_N4
\Caminho_de_dados|Mux4|outMux[28]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[28]~57_combout\ = (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & ((\Unidade_de_Hazard|FowardBE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(28))) # (!\Unidade_de_Hazard|FowardBE~combout\ & 
-- ((\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a28\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(28),
	datab => \Unidade_de_Hazard|FowardBE~combout\,
	datac => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a28\,
	datad => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	combout => \Caminho_de_dados|Mux4|outMux[28]~57_combout\);

-- Location: LCCOMB_X24_Y25_N30
\Caminho_de_dados|Mux4|outMux[28]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[28]~58_combout\ = (\Caminho_de_dados|Mux4|outMux[28]~57_combout\) # ((\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & \Caminho_de_dados|Registrador_E|SignImmE\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|Mux4|outMux[28]~57_combout\,
	datad => \Caminho_de_dados|Registrador_E|SignImmE\(15),
	combout => \Caminho_de_dados|Mux4|outMux[28]~58_combout\);

-- Location: LCCOMB_X21_Y25_N12
\Caminho_de_dados|ALU_1|ALUOut[28]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[28]~56_combout\ = (\Caminho_de_dados|Mux2|outMux[28]~28_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # ((!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & \Caminho_de_dados|Mux4|outMux[28]~58_combout\)))) # 
-- (!\Caminho_de_dados|Mux2|outMux[28]~28_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Registrador_E|ALUControlE\(1)) # (\Caminho_de_dados|Mux4|outMux[28]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[28]~28_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datad => \Caminho_de_dados|Mux4|outMux[28]~58_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[28]~56_combout\);

-- Location: LCCOMB_X24_Y25_N12
\Caminho_de_dados|ALU_1|ALUOut[28]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[28]~57_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|ALUOut[28]~56_combout\ & ((\Caminho_de_dados|ALU_1|Add0~56_combout\))) # (!\Caminho_de_dados|ALU_1|ALUOut[28]~56_combout\ & 
-- (\Caminho_de_dados|ALU_1|Add1~56_combout\)))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (((\Caminho_de_dados|ALU_1|ALUOut[28]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datab => \Caminho_de_dados|ALU_1|Add1~56_combout\,
	datac => \Caminho_de_dados|ALU_1|ALUOut[28]~56_combout\,
	datad => \Caminho_de_dados|ALU_1|Add0~56_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[28]~57_combout\);

-- Location: LCFF_X24_Y25_N13
\Caminho_de_dados|Registrador_W|ALUOutW[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[28]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(28));

-- Location: LCCOMB_X24_Y29_N28
\Caminho_de_dados|Mux4|outMux[27]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[27]~55_combout\ = (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & ((\Unidade_de_Hazard|FowardBE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(27))) # (!\Unidade_de_Hazard|FowardBE~combout\ & 
-- ((\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a27\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(27),
	datab => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a27\,
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[27]~55_combout\);

-- Location: LCCOMB_X24_Y29_N14
\Caminho_de_dados|Mux4|outMux[27]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[27]~56_combout\ = (\Caminho_de_dados|Mux4|outMux[27]~55_combout\) # ((\Caminho_de_dados|Registrador_E|SignImmE\(15) & \Caminho_de_dados|Registrador_E|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|SignImmE\(15),
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Caminho_de_dados|Mux4|outMux[27]~55_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[27]~56_combout\);

-- Location: LCCOMB_X24_Y29_N6
\Caminho_de_dados|ALU_1|ALUOut[27]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[27]~55_combout\ = (\Caminho_de_dados|ALU_1|ALUOut[27]~54_combout\ & (((\Caminho_de_dados|ALU_1|Add0~54_combout\)) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1)))) # (!\Caminho_de_dados|ALU_1|ALUOut[27]~54_combout\ & 
-- (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (\Caminho_de_dados|ALU_1|Add1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|ALUOut[27]~54_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|Add1~54_combout\,
	datad => \Caminho_de_dados|ALU_1|Add0~54_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[27]~55_combout\);

-- Location: LCFF_X24_Y29_N7
\Caminho_de_dados|Registrador_W|ALUOutW[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(27));

-- Location: LCCOMB_X24_Y24_N14
\Caminho_de_dados|Mux2|outMux[26]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[26]~26_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(26))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(26),
	datac => \Unidade_de_Hazard|FowardAE~combout\,
	datad => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a26\,
	combout => \Caminho_de_dados|Mux2|outMux[26]~26_combout\);

-- Location: LCCOMB_X24_Y24_N8
\Caminho_de_dados|ALU_1|ALUOut[26]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[26]~53_combout\ = (\Caminho_de_dados|ALU_1|ALUOut[26]~52_combout\ & (((\Caminho_de_dados|ALU_1|Add0~52_combout\)) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1)))) # (!\Caminho_de_dados|ALU_1|ALUOut[26]~52_combout\ & 
-- (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (\Caminho_de_dados|ALU_1|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|ALUOut[26]~52_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|Add1~52_combout\,
	datad => \Caminho_de_dados|ALU_1|Add0~52_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[26]~53_combout\);

-- Location: LCFF_X24_Y24_N9
\Caminho_de_dados|Registrador_W|ALUOutW[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[26]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(26));

-- Location: LCCOMB_X24_Y24_N24
\Caminho_de_dados|Mux2|outMux[25]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[25]~25_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(25))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(25),
	datac => \Unidade_de_Hazard|FowardAE~combout\,
	datad => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a25\,
	combout => \Caminho_de_dados|Mux2|outMux[25]~25_combout\);

-- Location: LCCOMB_X24_Y24_N10
\Caminho_de_dados|ALU_1|ALUOut[25]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[25]~51_combout\ = (\Caminho_de_dados|ALU_1|ALUOut[25]~50_combout\ & (((\Caminho_de_dados|ALU_1|Add0~50_combout\)) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1)))) # (!\Caminho_de_dados|ALU_1|ALUOut[25]~50_combout\ & 
-- (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|Add1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|ALUOut[25]~50_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|Add0~50_combout\,
	datad => \Caminho_de_dados|ALU_1|Add1~50_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[25]~51_combout\);

-- Location: LCFF_X24_Y24_N11
\Caminho_de_dados|Registrador_W|ALUOutW[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[25]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(25));

-- Location: LCCOMB_X24_Y26_N6
\Caminho_de_dados|Mux4|outMux[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[4]~10_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Caminho_de_dados|Mux4|outMux[4]~9_combout\)) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & ((\Unidade_de_Hazard|FowardBE~combout\ & 
-- (\Caminho_de_dados|Mux4|outMux[4]~9_combout\)) # (!\Unidade_de_Hazard|FowardBE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[4]~9_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a4\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[4]~10_combout\);

-- Location: LCFF_X24_Y26_N17
\Caminho_de_dados|Registrador_E|SignImmE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|SignImmE\(3));

-- Location: LCCOMB_X24_Y26_N22
\Caminho_de_dados|Mux4|outMux[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[3]~7_combout\ = (\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a3\ & (((\Caminho_de_dados|Registrador_W|ALUOutW\(3) & \Unidade_de_Hazard|FowardBE~combout\)) # (!\Caminho_de_dados|Mux4|outMux[0]~0_combout\))) # 
-- (!\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a3\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(3) & ((\Unidade_de_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a3\,
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(3),
	datac => \Caminho_de_dados|Mux4|outMux[0]~0_combout\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[3]~7_combout\);

-- Location: LCCOMB_X24_Y26_N16
\Caminho_de_dados|Mux4|outMux[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[3]~8_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Caminho_de_dados|Registrador_E|SignImmE\(3))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & ((\Caminho_de_dados|Mux4|outMux[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|Registrador_E|SignImmE\(3),
	datad => \Caminho_de_dados|Mux4|outMux[3]~7_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[3]~8_combout\);

-- Location: LCCOMB_X25_Y26_N2
\Caminho_de_dados|ALU_1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~2_combout\ = (\Caminho_de_dados|Mux2|outMux[1]~1_combout\ & ((\Caminho_de_dados|Mux4|outMux[1]~4_combout\ & (!\Caminho_de_dados|ALU_1|Add0~1\)) # (!\Caminho_de_dados|Mux4|outMux[1]~4_combout\ & (\Caminho_de_dados|ALU_1|Add0~1\ 
-- & VCC)))) # (!\Caminho_de_dados|Mux2|outMux[1]~1_combout\ & ((\Caminho_de_dados|Mux4|outMux[1]~4_combout\ & ((\Caminho_de_dados|ALU_1|Add0~1\) # (GND))) # (!\Caminho_de_dados|Mux4|outMux[1]~4_combout\ & (!\Caminho_de_dados|ALU_1|Add0~1\))))
-- \Caminho_de_dados|ALU_1|Add0~3\ = CARRY((\Caminho_de_dados|Mux2|outMux[1]~1_combout\ & (\Caminho_de_dados|Mux4|outMux[1]~4_combout\ & !\Caminho_de_dados|ALU_1|Add0~1\)) # (!\Caminho_de_dados|Mux2|outMux[1]~1_combout\ & 
-- ((\Caminho_de_dados|Mux4|outMux[1]~4_combout\) # (!\Caminho_de_dados|ALU_1|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[1]~1_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[1]~4_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~1\,
	combout => \Caminho_de_dados|ALU_1|Add0~2_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~3\);

-- Location: LCCOMB_X25_Y26_N4
\Caminho_de_dados|ALU_1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~4_combout\ = ((\Caminho_de_dados|Mux2|outMux[2]~2_combout\ $ (\Caminho_de_dados|Mux4|outMux[2]~6_combout\ $ (\Caminho_de_dados|ALU_1|Add0~3\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add0~5\ = CARRY((\Caminho_de_dados|Mux2|outMux[2]~2_combout\ & ((!\Caminho_de_dados|ALU_1|Add0~3\) # (!\Caminho_de_dados|Mux4|outMux[2]~6_combout\))) # (!\Caminho_de_dados|Mux2|outMux[2]~2_combout\ & 
-- (!\Caminho_de_dados|Mux4|outMux[2]~6_combout\ & !\Caminho_de_dados|ALU_1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[2]~2_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[2]~6_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~3\,
	combout => \Caminho_de_dados|ALU_1|Add0~4_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~5\);

-- Location: LCCOMB_X25_Y26_N6
\Caminho_de_dados|ALU_1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~6_combout\ = (\Caminho_de_dados|Mux2|outMux[3]~3_combout\ & ((\Caminho_de_dados|Mux4|outMux[3]~8_combout\ & (!\Caminho_de_dados|ALU_1|Add0~5\)) # (!\Caminho_de_dados|Mux4|outMux[3]~8_combout\ & (\Caminho_de_dados|ALU_1|Add0~5\ 
-- & VCC)))) # (!\Caminho_de_dados|Mux2|outMux[3]~3_combout\ & ((\Caminho_de_dados|Mux4|outMux[3]~8_combout\ & ((\Caminho_de_dados|ALU_1|Add0~5\) # (GND))) # (!\Caminho_de_dados|Mux4|outMux[3]~8_combout\ & (!\Caminho_de_dados|ALU_1|Add0~5\))))
-- \Caminho_de_dados|ALU_1|Add0~7\ = CARRY((\Caminho_de_dados|Mux2|outMux[3]~3_combout\ & (\Caminho_de_dados|Mux4|outMux[3]~8_combout\ & !\Caminho_de_dados|ALU_1|Add0~5\)) # (!\Caminho_de_dados|Mux2|outMux[3]~3_combout\ & 
-- ((\Caminho_de_dados|Mux4|outMux[3]~8_combout\) # (!\Caminho_de_dados|ALU_1|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[3]~3_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[3]~8_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~5\,
	combout => \Caminho_de_dados|ALU_1|Add0~6_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~7\);

-- Location: LCCOMB_X25_Y26_N8
\Caminho_de_dados|ALU_1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~8_combout\ = ((\Caminho_de_dados|Mux2|outMux[4]~4_combout\ $ (\Caminho_de_dados|Mux4|outMux[4]~10_combout\ $ (\Caminho_de_dados|ALU_1|Add0~7\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add0~9\ = CARRY((\Caminho_de_dados|Mux2|outMux[4]~4_combout\ & ((!\Caminho_de_dados|ALU_1|Add0~7\) # (!\Caminho_de_dados|Mux4|outMux[4]~10_combout\))) # (!\Caminho_de_dados|Mux2|outMux[4]~4_combout\ & 
-- (!\Caminho_de_dados|Mux4|outMux[4]~10_combout\ & !\Caminho_de_dados|ALU_1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[4]~4_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[4]~10_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~7\,
	combout => \Caminho_de_dados|ALU_1|Add0~8_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~9\);

-- Location: LCCOMB_X25_Y26_N10
\Caminho_de_dados|ALU_1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~10_combout\ = (\Caminho_de_dados|Mux2|outMux[5]~5_combout\ & ((\Caminho_de_dados|Mux4|outMux[5]~12_combout\ & (!\Caminho_de_dados|ALU_1|Add0~9\)) # (!\Caminho_de_dados|Mux4|outMux[5]~12_combout\ & 
-- (\Caminho_de_dados|ALU_1|Add0~9\ & VCC)))) # (!\Caminho_de_dados|Mux2|outMux[5]~5_combout\ & ((\Caminho_de_dados|Mux4|outMux[5]~12_combout\ & ((\Caminho_de_dados|ALU_1|Add0~9\) # (GND))) # (!\Caminho_de_dados|Mux4|outMux[5]~12_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add0~9\))))
-- \Caminho_de_dados|ALU_1|Add0~11\ = CARRY((\Caminho_de_dados|Mux2|outMux[5]~5_combout\ & (\Caminho_de_dados|Mux4|outMux[5]~12_combout\ & !\Caminho_de_dados|ALU_1|Add0~9\)) # (!\Caminho_de_dados|Mux2|outMux[5]~5_combout\ & 
-- ((\Caminho_de_dados|Mux4|outMux[5]~12_combout\) # (!\Caminho_de_dados|ALU_1|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[5]~5_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[5]~12_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~9\,
	combout => \Caminho_de_dados|ALU_1|Add0~10_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~11\);

-- Location: LCCOMB_X25_Y26_N12
\Caminho_de_dados|ALU_1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~12_combout\ = ((\Caminho_de_dados|Mux4|outMux[6]~14_combout\ $ (\Caminho_de_dados|Mux2|outMux[6]~6_combout\ $ (\Caminho_de_dados|ALU_1|Add0~11\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add0~13\ = CARRY((\Caminho_de_dados|Mux4|outMux[6]~14_combout\ & (\Caminho_de_dados|Mux2|outMux[6]~6_combout\ & !\Caminho_de_dados|ALU_1|Add0~11\)) # (!\Caminho_de_dados|Mux4|outMux[6]~14_combout\ & 
-- ((\Caminho_de_dados|Mux2|outMux[6]~6_combout\) # (!\Caminho_de_dados|ALU_1|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[6]~14_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[6]~6_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~11\,
	combout => \Caminho_de_dados|ALU_1|Add0~12_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~13\);

-- Location: LCCOMB_X25_Y26_N14
\Caminho_de_dados|ALU_1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~14_combout\ = (\Caminho_de_dados|Mux2|outMux[7]~7_combout\ & ((\Caminho_de_dados|Mux4|outMux[7]~16_combout\ & (!\Caminho_de_dados|ALU_1|Add0~13\)) # (!\Caminho_de_dados|Mux4|outMux[7]~16_combout\ & 
-- (\Caminho_de_dados|ALU_1|Add0~13\ & VCC)))) # (!\Caminho_de_dados|Mux2|outMux[7]~7_combout\ & ((\Caminho_de_dados|Mux4|outMux[7]~16_combout\ & ((\Caminho_de_dados|ALU_1|Add0~13\) # (GND))) # (!\Caminho_de_dados|Mux4|outMux[7]~16_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add0~13\))))
-- \Caminho_de_dados|ALU_1|Add0~15\ = CARRY((\Caminho_de_dados|Mux2|outMux[7]~7_combout\ & (\Caminho_de_dados|Mux4|outMux[7]~16_combout\ & !\Caminho_de_dados|ALU_1|Add0~13\)) # (!\Caminho_de_dados|Mux2|outMux[7]~7_combout\ & 
-- ((\Caminho_de_dados|Mux4|outMux[7]~16_combout\) # (!\Caminho_de_dados|ALU_1|Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[7]~7_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[7]~16_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~13\,
	combout => \Caminho_de_dados|ALU_1|Add0~14_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~15\);

-- Location: LCCOMB_X25_Y26_N18
\Caminho_de_dados|ALU_1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~18_combout\ = (\Caminho_de_dados|Mux4|outMux[9]~20_combout\ & ((\Caminho_de_dados|Mux2|outMux[9]~9_combout\ & (!\Caminho_de_dados|ALU_1|Add0~17\)) # (!\Caminho_de_dados|Mux2|outMux[9]~9_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add0~17\) # (GND))))) # (!\Caminho_de_dados|Mux4|outMux[9]~20_combout\ & ((\Caminho_de_dados|Mux2|outMux[9]~9_combout\ & (\Caminho_de_dados|ALU_1|Add0~17\ & VCC)) # (!\Caminho_de_dados|Mux2|outMux[9]~9_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add0~17\))))
-- \Caminho_de_dados|ALU_1|Add0~19\ = CARRY((\Caminho_de_dados|Mux4|outMux[9]~20_combout\ & ((!\Caminho_de_dados|ALU_1|Add0~17\) # (!\Caminho_de_dados|Mux2|outMux[9]~9_combout\))) # (!\Caminho_de_dados|Mux4|outMux[9]~20_combout\ & 
-- (!\Caminho_de_dados|Mux2|outMux[9]~9_combout\ & !\Caminho_de_dados|ALU_1|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[9]~20_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[9]~9_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~17\,
	combout => \Caminho_de_dados|ALU_1|Add0~18_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~19\);

-- Location: LCCOMB_X25_Y26_N20
\Caminho_de_dados|ALU_1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~20_combout\ = ((\Caminho_de_dados|Mux4|outMux[10]~22_combout\ $ (\Caminho_de_dados|Mux2|outMux[10]~10_combout\ $ (\Caminho_de_dados|ALU_1|Add0~19\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add0~21\ = CARRY((\Caminho_de_dados|Mux4|outMux[10]~22_combout\ & (\Caminho_de_dados|Mux2|outMux[10]~10_combout\ & !\Caminho_de_dados|ALU_1|Add0~19\)) # (!\Caminho_de_dados|Mux4|outMux[10]~22_combout\ & 
-- ((\Caminho_de_dados|Mux2|outMux[10]~10_combout\) # (!\Caminho_de_dados|ALU_1|Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[10]~22_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[10]~10_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~19\,
	combout => \Caminho_de_dados|ALU_1|Add0~20_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~21\);

-- Location: LCCOMB_X25_Y26_N22
\Caminho_de_dados|ALU_1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~22_combout\ = (\Caminho_de_dados|Mux4|outMux[11]~24_combout\ & ((\Caminho_de_dados|Mux2|outMux[11]~11_combout\ & (!\Caminho_de_dados|ALU_1|Add0~21\)) # (!\Caminho_de_dados|Mux2|outMux[11]~11_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add0~21\) # (GND))))) # (!\Caminho_de_dados|Mux4|outMux[11]~24_combout\ & ((\Caminho_de_dados|Mux2|outMux[11]~11_combout\ & (\Caminho_de_dados|ALU_1|Add0~21\ & VCC)) # (!\Caminho_de_dados|Mux2|outMux[11]~11_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add0~21\))))
-- \Caminho_de_dados|ALU_1|Add0~23\ = CARRY((\Caminho_de_dados|Mux4|outMux[11]~24_combout\ & ((!\Caminho_de_dados|ALU_1|Add0~21\) # (!\Caminho_de_dados|Mux2|outMux[11]~11_combout\))) # (!\Caminho_de_dados|Mux4|outMux[11]~24_combout\ & 
-- (!\Caminho_de_dados|Mux2|outMux[11]~11_combout\ & !\Caminho_de_dados|ALU_1|Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[11]~24_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[11]~11_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~21\,
	combout => \Caminho_de_dados|ALU_1|Add0~22_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~23\);

-- Location: LCCOMB_X25_Y26_N24
\Caminho_de_dados|ALU_1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~24_combout\ = ((\Caminho_de_dados|Mux4|outMux[12]~26_combout\ $ (\Caminho_de_dados|Mux2|outMux[12]~12_combout\ $ (\Caminho_de_dados|ALU_1|Add0~23\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add0~25\ = CARRY((\Caminho_de_dados|Mux4|outMux[12]~26_combout\ & (\Caminho_de_dados|Mux2|outMux[12]~12_combout\ & !\Caminho_de_dados|ALU_1|Add0~23\)) # (!\Caminho_de_dados|Mux4|outMux[12]~26_combout\ & 
-- ((\Caminho_de_dados|Mux2|outMux[12]~12_combout\) # (!\Caminho_de_dados|ALU_1|Add0~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[12]~26_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[12]~12_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~23\,
	combout => \Caminho_de_dados|ALU_1|Add0~24_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~25\);

-- Location: LCCOMB_X25_Y26_N26
\Caminho_de_dados|ALU_1|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~26_combout\ = (\Caminho_de_dados|Mux2|outMux[13]~13_combout\ & ((\Caminho_de_dados|Mux4|outMux[13]~28_combout\ & (!\Caminho_de_dados|ALU_1|Add0~25\)) # (!\Caminho_de_dados|Mux4|outMux[13]~28_combout\ & 
-- (\Caminho_de_dados|ALU_1|Add0~25\ & VCC)))) # (!\Caminho_de_dados|Mux2|outMux[13]~13_combout\ & ((\Caminho_de_dados|Mux4|outMux[13]~28_combout\ & ((\Caminho_de_dados|ALU_1|Add0~25\) # (GND))) # (!\Caminho_de_dados|Mux4|outMux[13]~28_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add0~25\))))
-- \Caminho_de_dados|ALU_1|Add0~27\ = CARRY((\Caminho_de_dados|Mux2|outMux[13]~13_combout\ & (\Caminho_de_dados|Mux4|outMux[13]~28_combout\ & !\Caminho_de_dados|ALU_1|Add0~25\)) # (!\Caminho_de_dados|Mux2|outMux[13]~13_combout\ & 
-- ((\Caminho_de_dados|Mux4|outMux[13]~28_combout\) # (!\Caminho_de_dados|ALU_1|Add0~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[13]~13_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[13]~28_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~25\,
	combout => \Caminho_de_dados|ALU_1|Add0~26_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~27\);

-- Location: LCCOMB_X25_Y26_N28
\Caminho_de_dados|ALU_1|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~28_combout\ = ((\Caminho_de_dados|Mux2|outMux[14]~14_combout\ $ (\Caminho_de_dados|Mux4|outMux[14]~30_combout\ $ (\Caminho_de_dados|ALU_1|Add0~27\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add0~29\ = CARRY((\Caminho_de_dados|Mux2|outMux[14]~14_combout\ & ((!\Caminho_de_dados|ALU_1|Add0~27\) # (!\Caminho_de_dados|Mux4|outMux[14]~30_combout\))) # (!\Caminho_de_dados|Mux2|outMux[14]~14_combout\ & 
-- (!\Caminho_de_dados|Mux4|outMux[14]~30_combout\ & !\Caminho_de_dados|ALU_1|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[14]~14_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[14]~30_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~27\,
	combout => \Caminho_de_dados|ALU_1|Add0~28_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~29\);

-- Location: LCCOMB_X25_Y26_N30
\Caminho_de_dados|ALU_1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~30_combout\ = (\Caminho_de_dados|Mux2|outMux[15]~15_combout\ & ((\Caminho_de_dados|Mux4|outMux[15]~32_combout\ & (!\Caminho_de_dados|ALU_1|Add0~29\)) # (!\Caminho_de_dados|Mux4|outMux[15]~32_combout\ & 
-- (\Caminho_de_dados|ALU_1|Add0~29\ & VCC)))) # (!\Caminho_de_dados|Mux2|outMux[15]~15_combout\ & ((\Caminho_de_dados|Mux4|outMux[15]~32_combout\ & ((\Caminho_de_dados|ALU_1|Add0~29\) # (GND))) # (!\Caminho_de_dados|Mux4|outMux[15]~32_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add0~29\))))
-- \Caminho_de_dados|ALU_1|Add0~31\ = CARRY((\Caminho_de_dados|Mux2|outMux[15]~15_combout\ & (\Caminho_de_dados|Mux4|outMux[15]~32_combout\ & !\Caminho_de_dados|ALU_1|Add0~29\)) # (!\Caminho_de_dados|Mux2|outMux[15]~15_combout\ & 
-- ((\Caminho_de_dados|Mux4|outMux[15]~32_combout\) # (!\Caminho_de_dados|ALU_1|Add0~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[15]~15_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[15]~32_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~29\,
	combout => \Caminho_de_dados|ALU_1|Add0~30_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~31\);

-- Location: LCCOMB_X25_Y25_N0
\Caminho_de_dados|ALU_1|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~32_combout\ = ((\Caminho_de_dados|Mux2|outMux[16]~16_combout\ $ (\Caminho_de_dados|Mux4|outMux[16]~34_combout\ $ (\Caminho_de_dados|ALU_1|Add0~31\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add0~33\ = CARRY((\Caminho_de_dados|Mux2|outMux[16]~16_combout\ & ((!\Caminho_de_dados|ALU_1|Add0~31\) # (!\Caminho_de_dados|Mux4|outMux[16]~34_combout\))) # (!\Caminho_de_dados|Mux2|outMux[16]~16_combout\ & 
-- (!\Caminho_de_dados|Mux4|outMux[16]~34_combout\ & !\Caminho_de_dados|ALU_1|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[16]~16_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[16]~34_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~31\,
	combout => \Caminho_de_dados|ALU_1|Add0~32_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~33\);

-- Location: LCCOMB_X25_Y25_N2
\Caminho_de_dados|ALU_1|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~34_combout\ = (\Caminho_de_dados|Mux4|outMux[17]~36_combout\ & ((\Caminho_de_dados|Mux2|outMux[17]~17_combout\ & (!\Caminho_de_dados|ALU_1|Add0~33\)) # (!\Caminho_de_dados|Mux2|outMux[17]~17_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add0~33\) # (GND))))) # (!\Caminho_de_dados|Mux4|outMux[17]~36_combout\ & ((\Caminho_de_dados|Mux2|outMux[17]~17_combout\ & (\Caminho_de_dados|ALU_1|Add0~33\ & VCC)) # (!\Caminho_de_dados|Mux2|outMux[17]~17_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add0~33\))))
-- \Caminho_de_dados|ALU_1|Add0~35\ = CARRY((\Caminho_de_dados|Mux4|outMux[17]~36_combout\ & ((!\Caminho_de_dados|ALU_1|Add0~33\) # (!\Caminho_de_dados|Mux2|outMux[17]~17_combout\))) # (!\Caminho_de_dados|Mux4|outMux[17]~36_combout\ & 
-- (!\Caminho_de_dados|Mux2|outMux[17]~17_combout\ & !\Caminho_de_dados|ALU_1|Add0~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[17]~36_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[17]~17_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~33\,
	combout => \Caminho_de_dados|ALU_1|Add0~34_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~35\);

-- Location: LCCOMB_X25_Y25_N6
\Caminho_de_dados|ALU_1|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~38_combout\ = (\Caminho_de_dados|Mux4|outMux[19]~40_combout\ & ((\Caminho_de_dados|Mux2|outMux[19]~19_combout\ & (!\Caminho_de_dados|ALU_1|Add0~37\)) # (!\Caminho_de_dados|Mux2|outMux[19]~19_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add0~37\) # (GND))))) # (!\Caminho_de_dados|Mux4|outMux[19]~40_combout\ & ((\Caminho_de_dados|Mux2|outMux[19]~19_combout\ & (\Caminho_de_dados|ALU_1|Add0~37\ & VCC)) # (!\Caminho_de_dados|Mux2|outMux[19]~19_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add0~37\))))
-- \Caminho_de_dados|ALU_1|Add0~39\ = CARRY((\Caminho_de_dados|Mux4|outMux[19]~40_combout\ & ((!\Caminho_de_dados|ALU_1|Add0~37\) # (!\Caminho_de_dados|Mux2|outMux[19]~19_combout\))) # (!\Caminho_de_dados|Mux4|outMux[19]~40_combout\ & 
-- (!\Caminho_de_dados|Mux2|outMux[19]~19_combout\ & !\Caminho_de_dados|ALU_1|Add0~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[19]~40_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[19]~19_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~37\,
	combout => \Caminho_de_dados|ALU_1|Add0~38_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~39\);

-- Location: LCCOMB_X25_Y25_N8
\Caminho_de_dados|ALU_1|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~40_combout\ = ((\Caminho_de_dados|Mux2|outMux[20]~20_combout\ $ (\Caminho_de_dados|Mux4|outMux[20]~42_combout\ $ (\Caminho_de_dados|ALU_1|Add0~39\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add0~41\ = CARRY((\Caminho_de_dados|Mux2|outMux[20]~20_combout\ & ((!\Caminho_de_dados|ALU_1|Add0~39\) # (!\Caminho_de_dados|Mux4|outMux[20]~42_combout\))) # (!\Caminho_de_dados|Mux2|outMux[20]~20_combout\ & 
-- (!\Caminho_de_dados|Mux4|outMux[20]~42_combout\ & !\Caminho_de_dados|ALU_1|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[20]~20_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[20]~42_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~39\,
	combout => \Caminho_de_dados|ALU_1|Add0~40_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~41\);

-- Location: LCCOMB_X25_Y25_N10
\Caminho_de_dados|ALU_1|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~42_combout\ = (\Caminho_de_dados|Mux4|outMux[21]~44_combout\ & ((\Caminho_de_dados|Mux2|outMux[21]~21_combout\ & (!\Caminho_de_dados|ALU_1|Add0~41\)) # (!\Caminho_de_dados|Mux2|outMux[21]~21_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add0~41\) # (GND))))) # (!\Caminho_de_dados|Mux4|outMux[21]~44_combout\ & ((\Caminho_de_dados|Mux2|outMux[21]~21_combout\ & (\Caminho_de_dados|ALU_1|Add0~41\ & VCC)) # (!\Caminho_de_dados|Mux2|outMux[21]~21_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add0~41\))))
-- \Caminho_de_dados|ALU_1|Add0~43\ = CARRY((\Caminho_de_dados|Mux4|outMux[21]~44_combout\ & ((!\Caminho_de_dados|ALU_1|Add0~41\) # (!\Caminho_de_dados|Mux2|outMux[21]~21_combout\))) # (!\Caminho_de_dados|Mux4|outMux[21]~44_combout\ & 
-- (!\Caminho_de_dados|Mux2|outMux[21]~21_combout\ & !\Caminho_de_dados|ALU_1|Add0~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[21]~44_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[21]~21_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~41\,
	combout => \Caminho_de_dados|ALU_1|Add0~42_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~43\);

-- Location: LCCOMB_X25_Y25_N12
\Caminho_de_dados|ALU_1|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add0~44_combout\ = ((\Caminho_de_dados|Mux2|outMux[22]~22_combout\ $ (\Caminho_de_dados|Mux4|outMux[22]~46_combout\ $ (\Caminho_de_dados|ALU_1|Add0~43\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add0~45\ = CARRY((\Caminho_de_dados|Mux2|outMux[22]~22_combout\ & ((!\Caminho_de_dados|ALU_1|Add0~43\) # (!\Caminho_de_dados|Mux4|outMux[22]~46_combout\))) # (!\Caminho_de_dados|Mux2|outMux[22]~22_combout\ & 
-- (!\Caminho_de_dados|Mux4|outMux[22]~46_combout\ & !\Caminho_de_dados|ALU_1|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[22]~22_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[22]~46_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add0~43\,
	combout => \Caminho_de_dados|ALU_1|Add0~44_combout\,
	cout => \Caminho_de_dados|ALU_1|Add0~45\);

-- Location: LCCOMB_X22_Y25_N8
\Caminho_de_dados|ALU_1|ALUOut[23]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[23]~47_combout\ = (\Caminho_de_dados|ALU_1|ALUOut[23]~46_combout\ & (((\Caminho_de_dados|ALU_1|Add0~46_combout\)) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1)))) # (!\Caminho_de_dados|ALU_1|ALUOut[23]~46_combout\ & 
-- (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (\Caminho_de_dados|ALU_1|Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|ALUOut[23]~46_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|Add1~46_combout\,
	datad => \Caminho_de_dados|ALU_1|Add0~46_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[23]~47_combout\);

-- Location: LCFF_X22_Y25_N9
\Caminho_de_dados|Registrador_W|ALUOutW[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[23]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(23));

-- Location: LCCOMB_X22_Y25_N24
\Caminho_de_dados|Mux2|outMux[17]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[17]~17_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(17))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(17),
	datac => \Unidade_de_Hazard|FowardAE~combout\,
	datad => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a17\,
	combout => \Caminho_de_dados|Mux2|outMux[17]~17_combout\);

-- Location: LCCOMB_X24_Y28_N12
\Caminho_de_dados|Mux2|outMux[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[16]~16_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(16))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(16),
	datac => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a16\,
	datad => \Unidade_de_Hazard|FowardAE~combout\,
	combout => \Caminho_de_dados|Mux2|outMux[16]~16_combout\);

-- Location: LCCOMB_X22_Y27_N10
\Caminho_de_dados|Mux4|outMux[11]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[11]~23_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (((\Caminho_de_dados|Registrador_E|SignImmE\(11))))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & 
-- (\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a11\ & (!\Unidade_de_Hazard|FowardBE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a11\,
	datab => \Unidade_de_Hazard|FowardBE~combout\,
	datac => \Caminho_de_dados|Registrador_E|SignImmE\(11),
	datad => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	combout => \Caminho_de_dados|Mux4|outMux[11]~23_combout\);

-- Location: LCCOMB_X22_Y27_N28
\Caminho_de_dados|Mux4|outMux[11]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[11]~24_combout\ = (\Caminho_de_dados|Mux4|outMux[11]~23_combout\) # ((\Caminho_de_dados|Registrador_W|ALUOutW\(11) & (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & \Unidade_de_Hazard|FowardBE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(11),
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Unidade_de_Hazard|FowardBE~combout\,
	datad => \Caminho_de_dados|Mux4|outMux[11]~23_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[11]~24_combout\);

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X23_Y27_N26
\Caminho_de_dados|Registrador_D|InstrD[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_D|InstrD[6]~feeder_combout\ = \Instr~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(6),
	combout => \Caminho_de_dados|Registrador_D|InstrD[6]~feeder_combout\);

-- Location: LCFF_X23_Y27_N27
\Caminho_de_dados|Registrador_D|InstrD[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_D|InstrD[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(6));

-- Location: LCFF_X24_Y27_N23
\Caminho_de_dados|Registrador_E|SignImmE[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|SignImmE\(6));

-- Location: LCCOMB_X24_Y27_N22
\Caminho_de_dados|Mux4|outMux[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[6]~13_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (((\Caminho_de_dados|Registrador_E|SignImmE\(6))))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & 
-- (\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a6\ & ((!\Unidade_de_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a6\,
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|Registrador_E|SignImmE\(6),
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[6]~13_combout\);

-- Location: LCCOMB_X24_Y27_N8
\Caminho_de_dados|Mux4|outMux[6]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[6]~14_combout\ = (\Caminho_de_dados|Mux4|outMux[6]~13_combout\) # ((\Unidade_de_Hazard|FowardBE~combout\ & (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & \Caminho_de_dados|Registrador_W|ALUOutW\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidade_de_Hazard|FowardBE~combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|Registrador_W|ALUOutW\(6),
	datad => \Caminho_de_dados|Mux4|outMux[6]~13_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[6]~14_combout\);

-- Location: LCCOMB_X24_Y27_N14
\Caminho_de_dados|Mux2|outMux[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[2]~2_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(2))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(2),
	datab => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a2\,
	datad => \Unidade_de_Hazard|FowardAE~combout\,
	combout => \Caminho_de_dados|Mux2|outMux[2]~2_combout\);

-- Location: LCCOMB_X23_Y26_N4
\Caminho_de_dados|ALU_1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~4_combout\ = ((\Caminho_de_dados|Mux4|outMux[2]~6_combout\ $ (\Caminho_de_dados|Mux2|outMux[2]~2_combout\ $ (!\Caminho_de_dados|ALU_1|Add1~3\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add1~5\ = CARRY((\Caminho_de_dados|Mux4|outMux[2]~6_combout\ & ((\Caminho_de_dados|Mux2|outMux[2]~2_combout\) # (!\Caminho_de_dados|ALU_1|Add1~3\))) # (!\Caminho_de_dados|Mux4|outMux[2]~6_combout\ & 
-- (\Caminho_de_dados|Mux2|outMux[2]~2_combout\ & !\Caminho_de_dados|ALU_1|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[2]~6_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[2]~2_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~3\,
	combout => \Caminho_de_dados|ALU_1|Add1~4_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~5\);

-- Location: LCCOMB_X23_Y26_N6
\Caminho_de_dados|ALU_1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~6_combout\ = (\Caminho_de_dados|Mux4|outMux[3]~8_combout\ & ((\Caminho_de_dados|Mux2|outMux[3]~3_combout\ & (\Caminho_de_dados|ALU_1|Add1~5\ & VCC)) # (!\Caminho_de_dados|Mux2|outMux[3]~3_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add1~5\)))) # (!\Caminho_de_dados|Mux4|outMux[3]~8_combout\ & ((\Caminho_de_dados|Mux2|outMux[3]~3_combout\ & (!\Caminho_de_dados|ALU_1|Add1~5\)) # (!\Caminho_de_dados|Mux2|outMux[3]~3_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~5\) # (GND)))))
-- \Caminho_de_dados|ALU_1|Add1~7\ = CARRY((\Caminho_de_dados|Mux4|outMux[3]~8_combout\ & (!\Caminho_de_dados|Mux2|outMux[3]~3_combout\ & !\Caminho_de_dados|ALU_1|Add1~5\)) # (!\Caminho_de_dados|Mux4|outMux[3]~8_combout\ & ((!\Caminho_de_dados|ALU_1|Add1~5\) 
-- # (!\Caminho_de_dados|Mux2|outMux[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[3]~8_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[3]~3_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~5\,
	combout => \Caminho_de_dados|ALU_1|Add1~6_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~7\);

-- Location: LCCOMB_X23_Y26_N8
\Caminho_de_dados|ALU_1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~8_combout\ = ((\Caminho_de_dados|Mux4|outMux[4]~10_combout\ $ (\Caminho_de_dados|Mux2|outMux[4]~4_combout\ $ (!\Caminho_de_dados|ALU_1|Add1~7\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add1~9\ = CARRY((\Caminho_de_dados|Mux4|outMux[4]~10_combout\ & ((\Caminho_de_dados|Mux2|outMux[4]~4_combout\) # (!\Caminho_de_dados|ALU_1|Add1~7\))) # (!\Caminho_de_dados|Mux4|outMux[4]~10_combout\ & 
-- (\Caminho_de_dados|Mux2|outMux[4]~4_combout\ & !\Caminho_de_dados|ALU_1|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[4]~10_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[4]~4_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~7\,
	combout => \Caminho_de_dados|ALU_1|Add1~8_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~9\);

-- Location: LCCOMB_X23_Y26_N10
\Caminho_de_dados|ALU_1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~10_combout\ = (\Caminho_de_dados|Mux2|outMux[5]~5_combout\ & ((\Caminho_de_dados|Mux4|outMux[5]~12_combout\ & (\Caminho_de_dados|ALU_1|Add1~9\ & VCC)) # (!\Caminho_de_dados|Mux4|outMux[5]~12_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add1~9\)))) # (!\Caminho_de_dados|Mux2|outMux[5]~5_combout\ & ((\Caminho_de_dados|Mux4|outMux[5]~12_combout\ & (!\Caminho_de_dados|ALU_1|Add1~9\)) # (!\Caminho_de_dados|Mux4|outMux[5]~12_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~9\) # (GND)))))
-- \Caminho_de_dados|ALU_1|Add1~11\ = CARRY((\Caminho_de_dados|Mux2|outMux[5]~5_combout\ & (!\Caminho_de_dados|Mux4|outMux[5]~12_combout\ & !\Caminho_de_dados|ALU_1|Add1~9\)) # (!\Caminho_de_dados|Mux2|outMux[5]~5_combout\ & 
-- ((!\Caminho_de_dados|ALU_1|Add1~9\) # (!\Caminho_de_dados|Mux4|outMux[5]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[5]~5_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[5]~12_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~9\,
	combout => \Caminho_de_dados|ALU_1|Add1~10_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~11\);

-- Location: LCCOMB_X23_Y26_N12
\Caminho_de_dados|ALU_1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~12_combout\ = ((\Caminho_de_dados|Mux2|outMux[6]~6_combout\ $ (\Caminho_de_dados|Mux4|outMux[6]~14_combout\ $ (!\Caminho_de_dados|ALU_1|Add1~11\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add1~13\ = CARRY((\Caminho_de_dados|Mux2|outMux[6]~6_combout\ & ((\Caminho_de_dados|Mux4|outMux[6]~14_combout\) # (!\Caminho_de_dados|ALU_1|Add1~11\))) # (!\Caminho_de_dados|Mux2|outMux[6]~6_combout\ & 
-- (\Caminho_de_dados|Mux4|outMux[6]~14_combout\ & !\Caminho_de_dados|ALU_1|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[6]~6_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[6]~14_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~11\,
	combout => \Caminho_de_dados|ALU_1|Add1~12_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~13\);

-- Location: LCCOMB_X23_Y26_N14
\Caminho_de_dados|ALU_1|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~14_combout\ = (\Caminho_de_dados|Mux2|outMux[7]~7_combout\ & ((\Caminho_de_dados|Mux4|outMux[7]~16_combout\ & (\Caminho_de_dados|ALU_1|Add1~13\ & VCC)) # (!\Caminho_de_dados|Mux4|outMux[7]~16_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add1~13\)))) # (!\Caminho_de_dados|Mux2|outMux[7]~7_combout\ & ((\Caminho_de_dados|Mux4|outMux[7]~16_combout\ & (!\Caminho_de_dados|ALU_1|Add1~13\)) # (!\Caminho_de_dados|Mux4|outMux[7]~16_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~13\) # (GND)))))
-- \Caminho_de_dados|ALU_1|Add1~15\ = CARRY((\Caminho_de_dados|Mux2|outMux[7]~7_combout\ & (!\Caminho_de_dados|Mux4|outMux[7]~16_combout\ & !\Caminho_de_dados|ALU_1|Add1~13\)) # (!\Caminho_de_dados|Mux2|outMux[7]~7_combout\ & 
-- ((!\Caminho_de_dados|ALU_1|Add1~13\) # (!\Caminho_de_dados|Mux4|outMux[7]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[7]~7_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[7]~16_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~13\,
	combout => \Caminho_de_dados|ALU_1|Add1~14_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~15\);

-- Location: LCCOMB_X23_Y26_N16
\Caminho_de_dados|ALU_1|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~16_combout\ = ((\Caminho_de_dados|Mux2|outMux[8]~8_combout\ $ (\Caminho_de_dados|Mux4|outMux[8]~18_combout\ $ (!\Caminho_de_dados|ALU_1|Add1~15\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add1~17\ = CARRY((\Caminho_de_dados|Mux2|outMux[8]~8_combout\ & ((\Caminho_de_dados|Mux4|outMux[8]~18_combout\) # (!\Caminho_de_dados|ALU_1|Add1~15\))) # (!\Caminho_de_dados|Mux2|outMux[8]~8_combout\ & 
-- (\Caminho_de_dados|Mux4|outMux[8]~18_combout\ & !\Caminho_de_dados|ALU_1|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[8]~8_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[8]~18_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~15\,
	combout => \Caminho_de_dados|ALU_1|Add1~16_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~17\);

-- Location: LCCOMB_X23_Y26_N20
\Caminho_de_dados|ALU_1|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~20_combout\ = ((\Caminho_de_dados|Mux4|outMux[10]~22_combout\ $ (\Caminho_de_dados|Mux2|outMux[10]~10_combout\ $ (!\Caminho_de_dados|ALU_1|Add1~19\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add1~21\ = CARRY((\Caminho_de_dados|Mux4|outMux[10]~22_combout\ & ((\Caminho_de_dados|Mux2|outMux[10]~10_combout\) # (!\Caminho_de_dados|ALU_1|Add1~19\))) # (!\Caminho_de_dados|Mux4|outMux[10]~22_combout\ & 
-- (\Caminho_de_dados|Mux2|outMux[10]~10_combout\ & !\Caminho_de_dados|ALU_1|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[10]~22_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[10]~10_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~19\,
	combout => \Caminho_de_dados|ALU_1|Add1~20_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~21\);

-- Location: LCCOMB_X23_Y26_N22
\Caminho_de_dados|ALU_1|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~22_combout\ = (\Caminho_de_dados|Mux2|outMux[11]~11_combout\ & ((\Caminho_de_dados|Mux4|outMux[11]~24_combout\ & (\Caminho_de_dados|ALU_1|Add1~21\ & VCC)) # (!\Caminho_de_dados|Mux4|outMux[11]~24_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add1~21\)))) # (!\Caminho_de_dados|Mux2|outMux[11]~11_combout\ & ((\Caminho_de_dados|Mux4|outMux[11]~24_combout\ & (!\Caminho_de_dados|ALU_1|Add1~21\)) # (!\Caminho_de_dados|Mux4|outMux[11]~24_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~21\) # (GND)))))
-- \Caminho_de_dados|ALU_1|Add1~23\ = CARRY((\Caminho_de_dados|Mux2|outMux[11]~11_combout\ & (!\Caminho_de_dados|Mux4|outMux[11]~24_combout\ & !\Caminho_de_dados|ALU_1|Add1~21\)) # (!\Caminho_de_dados|Mux2|outMux[11]~11_combout\ & 
-- ((!\Caminho_de_dados|ALU_1|Add1~21\) # (!\Caminho_de_dados|Mux4|outMux[11]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[11]~11_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[11]~24_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~21\,
	combout => \Caminho_de_dados|ALU_1|Add1~22_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~23\);

-- Location: LCCOMB_X23_Y26_N24
\Caminho_de_dados|ALU_1|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~24_combout\ = ((\Caminho_de_dados|Mux2|outMux[12]~12_combout\ $ (\Caminho_de_dados|Mux4|outMux[12]~26_combout\ $ (!\Caminho_de_dados|ALU_1|Add1~23\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add1~25\ = CARRY((\Caminho_de_dados|Mux2|outMux[12]~12_combout\ & ((\Caminho_de_dados|Mux4|outMux[12]~26_combout\) # (!\Caminho_de_dados|ALU_1|Add1~23\))) # (!\Caminho_de_dados|Mux2|outMux[12]~12_combout\ & 
-- (\Caminho_de_dados|Mux4|outMux[12]~26_combout\ & !\Caminho_de_dados|ALU_1|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[12]~12_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[12]~26_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~23\,
	combout => \Caminho_de_dados|ALU_1|Add1~24_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~25\);

-- Location: LCCOMB_X23_Y26_N26
\Caminho_de_dados|ALU_1|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~26_combout\ = (\Caminho_de_dados|Mux2|outMux[13]~13_combout\ & ((\Caminho_de_dados|Mux4|outMux[13]~28_combout\ & (\Caminho_de_dados|ALU_1|Add1~25\ & VCC)) # (!\Caminho_de_dados|Mux4|outMux[13]~28_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add1~25\)))) # (!\Caminho_de_dados|Mux2|outMux[13]~13_combout\ & ((\Caminho_de_dados|Mux4|outMux[13]~28_combout\ & (!\Caminho_de_dados|ALU_1|Add1~25\)) # (!\Caminho_de_dados|Mux4|outMux[13]~28_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~25\) # (GND)))))
-- \Caminho_de_dados|ALU_1|Add1~27\ = CARRY((\Caminho_de_dados|Mux2|outMux[13]~13_combout\ & (!\Caminho_de_dados|Mux4|outMux[13]~28_combout\ & !\Caminho_de_dados|ALU_1|Add1~25\)) # (!\Caminho_de_dados|Mux2|outMux[13]~13_combout\ & 
-- ((!\Caminho_de_dados|ALU_1|Add1~25\) # (!\Caminho_de_dados|Mux4|outMux[13]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[13]~13_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[13]~28_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~25\,
	combout => \Caminho_de_dados|ALU_1|Add1~26_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~27\);

-- Location: LCCOMB_X23_Y26_N28
\Caminho_de_dados|ALU_1|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~28_combout\ = ((\Caminho_de_dados|Mux2|outMux[14]~14_combout\ $ (\Caminho_de_dados|Mux4|outMux[14]~30_combout\ $ (!\Caminho_de_dados|ALU_1|Add1~27\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add1~29\ = CARRY((\Caminho_de_dados|Mux2|outMux[14]~14_combout\ & ((\Caminho_de_dados|Mux4|outMux[14]~30_combout\) # (!\Caminho_de_dados|ALU_1|Add1~27\))) # (!\Caminho_de_dados|Mux2|outMux[14]~14_combout\ & 
-- (\Caminho_de_dados|Mux4|outMux[14]~30_combout\ & !\Caminho_de_dados|ALU_1|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[14]~14_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[14]~30_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~27\,
	combout => \Caminho_de_dados|ALU_1|Add1~28_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~29\);

-- Location: LCCOMB_X23_Y26_N30
\Caminho_de_dados|ALU_1|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~30_combout\ = (\Caminho_de_dados|Mux2|outMux[15]~15_combout\ & ((\Caminho_de_dados|Mux4|outMux[15]~32_combout\ & (\Caminho_de_dados|ALU_1|Add1~29\ & VCC)) # (!\Caminho_de_dados|Mux4|outMux[15]~32_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add1~29\)))) # (!\Caminho_de_dados|Mux2|outMux[15]~15_combout\ & ((\Caminho_de_dados|Mux4|outMux[15]~32_combout\ & (!\Caminho_de_dados|ALU_1|Add1~29\)) # (!\Caminho_de_dados|Mux4|outMux[15]~32_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~29\) # (GND)))))
-- \Caminho_de_dados|ALU_1|Add1~31\ = CARRY((\Caminho_de_dados|Mux2|outMux[15]~15_combout\ & (!\Caminho_de_dados|Mux4|outMux[15]~32_combout\ & !\Caminho_de_dados|ALU_1|Add1~29\)) # (!\Caminho_de_dados|Mux2|outMux[15]~15_combout\ & 
-- ((!\Caminho_de_dados|ALU_1|Add1~29\) # (!\Caminho_de_dados|Mux4|outMux[15]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[15]~15_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[15]~32_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~29\,
	combout => \Caminho_de_dados|ALU_1|Add1~30_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~31\);

-- Location: LCCOMB_X23_Y25_N4
\Caminho_de_dados|ALU_1|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~36_combout\ = ((\Caminho_de_dados|Mux4|outMux[18]~38_combout\ $ (\Caminho_de_dados|Mux2|outMux[18]~18_combout\ $ (!\Caminho_de_dados|ALU_1|Add1~35\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add1~37\ = CARRY((\Caminho_de_dados|Mux4|outMux[18]~38_combout\ & ((\Caminho_de_dados|Mux2|outMux[18]~18_combout\) # (!\Caminho_de_dados|ALU_1|Add1~35\))) # (!\Caminho_de_dados|Mux4|outMux[18]~38_combout\ & 
-- (\Caminho_de_dados|Mux2|outMux[18]~18_combout\ & !\Caminho_de_dados|ALU_1|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[18]~38_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[18]~18_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~35\,
	combout => \Caminho_de_dados|ALU_1|Add1~36_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~37\);

-- Location: LCCOMB_X23_Y25_N6
\Caminho_de_dados|ALU_1|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~38_combout\ = (\Caminho_de_dados|Mux4|outMux[19]~40_combout\ & ((\Caminho_de_dados|Mux2|outMux[19]~19_combout\ & (\Caminho_de_dados|ALU_1|Add1~37\ & VCC)) # (!\Caminho_de_dados|Mux2|outMux[19]~19_combout\ & 
-- (!\Caminho_de_dados|ALU_1|Add1~37\)))) # (!\Caminho_de_dados|Mux4|outMux[19]~40_combout\ & ((\Caminho_de_dados|Mux2|outMux[19]~19_combout\ & (!\Caminho_de_dados|ALU_1|Add1~37\)) # (!\Caminho_de_dados|Mux2|outMux[19]~19_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~37\) # (GND)))))
-- \Caminho_de_dados|ALU_1|Add1~39\ = CARRY((\Caminho_de_dados|Mux4|outMux[19]~40_combout\ & (!\Caminho_de_dados|Mux2|outMux[19]~19_combout\ & !\Caminho_de_dados|ALU_1|Add1~37\)) # (!\Caminho_de_dados|Mux4|outMux[19]~40_combout\ & 
-- ((!\Caminho_de_dados|ALU_1|Add1~37\) # (!\Caminho_de_dados|Mux2|outMux[19]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[19]~40_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[19]~19_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~37\,
	combout => \Caminho_de_dados|ALU_1|Add1~38_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~39\);

-- Location: LCCOMB_X23_Y25_N8
\Caminho_de_dados|ALU_1|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|Add1~40_combout\ = ((\Caminho_de_dados|Mux4|outMux[20]~42_combout\ $ (\Caminho_de_dados|Mux2|outMux[20]~20_combout\ $ (!\Caminho_de_dados|ALU_1|Add1~39\)))) # (GND)
-- \Caminho_de_dados|ALU_1|Add1~41\ = CARRY((\Caminho_de_dados|Mux4|outMux[20]~42_combout\ & ((\Caminho_de_dados|Mux2|outMux[20]~20_combout\) # (!\Caminho_de_dados|ALU_1|Add1~39\))) # (!\Caminho_de_dados|Mux4|outMux[20]~42_combout\ & 
-- (\Caminho_de_dados|Mux2|outMux[20]~20_combout\ & !\Caminho_de_dados|ALU_1|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[20]~42_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[20]~20_combout\,
	datad => VCC,
	cin => \Caminho_de_dados|ALU_1|Add1~39\,
	combout => \Caminho_de_dados|ALU_1|Add1~40_combout\,
	cout => \Caminho_de_dados|ALU_1|Add1~41\);

-- Location: LCCOMB_X22_Y25_N2
\Caminho_de_dados|ALU_1|ALUOut[22]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[22]~45_combout\ = (\Caminho_de_dados|ALU_1|ALUOut[22]~44_combout\ & (((\Caminho_de_dados|ALU_1|Add0~44_combout\)) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1)))) # (!\Caminho_de_dados|ALU_1|ALUOut[22]~44_combout\ & 
-- (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (\Caminho_de_dados|ALU_1|Add1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|ALUOut[22]~44_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|Add1~44_combout\,
	datad => \Caminho_de_dados|ALU_1|Add0~44_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[22]~45_combout\);

-- Location: LCFF_X22_Y25_N3
\Caminho_de_dados|Registrador_W|ALUOutW[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[22]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(22));

-- Location: LCCOMB_X24_Y25_N16
\Caminho_de_dados|Mux2|outMux[21]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[21]~21_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(21))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(21),
	datac => \Unidade_de_Hazard|FowardAE~combout\,
	datad => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a21\,
	combout => \Caminho_de_dados|Mux2|outMux[21]~21_combout\);

-- Location: LCCOMB_X24_Y25_N22
\Caminho_de_dados|ALU_1|ALUOut[21]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[21]~42_combout\ = (\Caminho_de_dados|Mux2|outMux[21]~21_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # ((!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & \Caminho_de_dados|Mux4|outMux[21]~44_combout\)))) # 
-- (!\Caminho_de_dados|Mux2|outMux[21]~21_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Registrador_E|ALUControlE\(1)) # (\Caminho_de_dados|Mux4|outMux[21]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[21]~21_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|Mux4|outMux[21]~44_combout\,
	datad => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	combout => \Caminho_de_dados|ALU_1|ALUOut[21]~42_combout\);

-- Location: LCCOMB_X24_Y25_N0
\Caminho_de_dados|ALU_1|ALUOut[21]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[21]~43_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|ALUOut[21]~42_combout\ & ((\Caminho_de_dados|ALU_1|Add0~42_combout\))) # (!\Caminho_de_dados|ALU_1|ALUOut[21]~42_combout\ & 
-- (\Caminho_de_dados|ALU_1|Add1~42_combout\)))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (((\Caminho_de_dados|ALU_1|ALUOut[21]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|Add1~42_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|Add0~42_combout\,
	datad => \Caminho_de_dados|ALU_1|ALUOut[21]~42_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[21]~43_combout\);

-- Location: LCFF_X24_Y25_N1
\Caminho_de_dados|Registrador_W|ALUOutW[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(21));

-- Location: LCCOMB_X24_Y25_N14
\Caminho_de_dados|Mux4|outMux[20]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[20]~41_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Caminho_de_dados|Registrador_E|SignImmE\(15))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (((!\Unidade_de_Hazard|FowardBE~combout\ & 
-- \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|SignImmE\(15),
	datab => \Unidade_de_Hazard|FowardBE~combout\,
	datac => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a20\,
	datad => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	combout => \Caminho_de_dados|Mux4|outMux[20]~41_combout\);

-- Location: LCCOMB_X24_Y25_N28
\Caminho_de_dados|Mux4|outMux[20]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[20]~42_combout\ = (\Caminho_de_dados|Mux4|outMux[20]~41_combout\) # ((!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(20) & \Unidade_de_Hazard|FowardBE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(20),
	datac => \Caminho_de_dados|Mux4|outMux[20]~41_combout\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[20]~42_combout\);

-- Location: LCCOMB_X24_Y25_N18
\Caminho_de_dados|ALU_1|ALUOut[20]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[20]~41_combout\ = (\Caminho_de_dados|ALU_1|ALUOut[20]~40_combout\ & (((\Caminho_de_dados|ALU_1|Add0~40_combout\)) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1)))) # (!\Caminho_de_dados|ALU_1|ALUOut[20]~40_combout\ & 
-- (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|Add1~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|ALUOut[20]~40_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|Add0~40_combout\,
	datad => \Caminho_de_dados|ALU_1|Add1~40_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[20]~41_combout\);

-- Location: LCFF_X24_Y25_N19
\Caminho_de_dados|Registrador_W|ALUOutW[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[20]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(20));

-- Location: LCCOMB_X22_Y25_N26
\Caminho_de_dados|Mux2|outMux[19]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[19]~19_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(19))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(19),
	datac => \Unidade_de_Hazard|FowardAE~combout\,
	datad => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a19\,
	combout => \Caminho_de_dados|Mux2|outMux[19]~19_combout\);

-- Location: LCCOMB_X22_Y25_N16
\Caminho_de_dados|ALU_1|ALUOut[19]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[19]~39_combout\ = (\Caminho_de_dados|ALU_1|ALUOut[19]~38_combout\ & (((\Caminho_de_dados|ALU_1|Add0~38_combout\)) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1)))) # (!\Caminho_de_dados|ALU_1|ALUOut[19]~38_combout\ & 
-- (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|Add1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|ALUOut[19]~38_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|Add0~38_combout\,
	datad => \Caminho_de_dados|ALU_1|Add1~38_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[19]~39_combout\);

-- Location: LCFF_X22_Y25_N17
\Caminho_de_dados|Registrador_W|ALUOutW[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[19]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(19));

-- Location: LCCOMB_X21_Y25_N30
\Caminho_de_dados|Mux2|outMux[18]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[18]~18_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(18))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(18),
	datac => \Unidade_de_Hazard|FowardAE~combout\,
	datad => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a18\,
	combout => \Caminho_de_dados|Mux2|outMux[18]~18_combout\);

-- Location: LCCOMB_X21_Y25_N16
\Caminho_de_dados|ALU_1|ALUOut[18]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[18]~36_combout\ = (\Caminho_de_dados|Mux4|outMux[18]~38_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # ((!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & \Caminho_de_dados|Mux2|outMux[18]~18_combout\)))) # 
-- (!\Caminho_de_dados|Mux4|outMux[18]~38_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Registrador_E|ALUControlE\(1)) # (\Caminho_de_dados|Mux2|outMux[18]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[18]~38_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datad => \Caminho_de_dados|Mux2|outMux[18]~18_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[18]~36_combout\);

-- Location: LCCOMB_X24_Y25_N24
\Caminho_de_dados|ALU_1|ALUOut[18]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[18]~37_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|ALUOut[18]~36_combout\ & (\Caminho_de_dados|ALU_1|Add0~36_combout\)) # (!\Caminho_de_dados|ALU_1|ALUOut[18]~36_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~36_combout\))))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (((\Caminho_de_dados|ALU_1|ALUOut[18]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|Add0~36_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|Add1~36_combout\,
	datad => \Caminho_de_dados|ALU_1|ALUOut[18]~36_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[18]~37_combout\);

-- Location: LCFF_X24_Y25_N25
\Caminho_de_dados|Registrador_W|ALUOutW[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[18]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(18));

-- Location: LCCOMB_X22_Y25_N10
\Caminho_de_dados|Mux4|outMux[17]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[17]~35_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Caminho_de_dados|Registrador_E|SignImmE\(15))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & 
-- (((\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a17\ & !\Unidade_de_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|SignImmE\(15),
	datab => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a17\,
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[17]~35_combout\);

-- Location: LCCOMB_X22_Y25_N12
\Caminho_de_dados|Mux4|outMux[17]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[17]~36_combout\ = (\Caminho_de_dados|Mux4|outMux[17]~35_combout\) # ((\Caminho_de_dados|Registrador_W|ALUOutW\(17) & (\Unidade_de_Hazard|FowardBE~combout\ & !\Caminho_de_dados|Registrador_E|ALUSrcE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(17),
	datab => \Unidade_de_Hazard|FowardBE~combout\,
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Caminho_de_dados|Mux4|outMux[17]~35_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[17]~36_combout\);

-- Location: LCCOMB_X21_Y25_N28
\Caminho_de_dados|ALU_1|ALUOut[17]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[17]~34_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (((\Caminho_de_dados|Registrador_E|ALUControlE\(0))))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & 
-- ((\Caminho_de_dados|Mux4|outMux[17]~36_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # (\Caminho_de_dados|Mux2|outMux[17]~17_combout\))) # (!\Caminho_de_dados|Mux4|outMux[17]~36_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & 
-- \Caminho_de_dados|Mux2|outMux[17]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datab => \Caminho_de_dados|Mux4|outMux[17]~36_combout\,
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datad => \Caminho_de_dados|Mux2|outMux[17]~17_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[17]~34_combout\);

-- Location: LCCOMB_X24_Y25_N26
\Caminho_de_dados|ALU_1|ALUOut[17]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[17]~35_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|ALUOut[17]~34_combout\ & ((\Caminho_de_dados|ALU_1|Add0~34_combout\))) # (!\Caminho_de_dados|ALU_1|ALUOut[17]~34_combout\ & 
-- (\Caminho_de_dados|ALU_1|Add1~34_combout\)))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (((\Caminho_de_dados|ALU_1|ALUOut[17]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|Add1~34_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|ALUOut[17]~34_combout\,
	datad => \Caminho_de_dados|ALU_1|Add0~34_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[17]~35_combout\);

-- Location: LCFF_X24_Y25_N27
\Caminho_de_dados|Registrador_W|ALUOutW[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[17]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(17));

-- Location: LCCOMB_X24_Y28_N30
\Caminho_de_dados|Mux4|outMux[16]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[16]~33_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (((\Caminho_de_dados|Registrador_E|SignImmE\(15))))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & 
-- (\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a16\ & ((!\Unidade_de_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datab => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a16\,
	datac => \Caminho_de_dados|Registrador_E|SignImmE\(15),
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[16]~33_combout\);

-- Location: LCCOMB_X24_Y28_N4
\Caminho_de_dados|Mux4|outMux[16]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[16]~34_combout\ = (\Caminho_de_dados|Mux4|outMux[16]~33_combout\) # ((\Caminho_de_dados|Registrador_W|ALUOutW\(16) & (\Unidade_de_Hazard|FowardBE~combout\ & !\Caminho_de_dados|Registrador_E|ALUSrcE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(16),
	datab => \Unidade_de_Hazard|FowardBE~combout\,
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Caminho_de_dados|Mux4|outMux[16]~33_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[16]~34_combout\);

-- Location: LCCOMB_X24_Y28_N22
\Caminho_de_dados|ALU_1|ALUOut[16]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[16]~32_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (((\Caminho_de_dados|Registrador_E|ALUControlE\(0))))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & 
-- ((\Caminho_de_dados|Mux4|outMux[16]~34_combout\ & ((\Caminho_de_dados|Mux2|outMux[16]~16_combout\) # (\Caminho_de_dados|Registrador_E|ALUControlE\(0)))) # (!\Caminho_de_dados|Mux4|outMux[16]~34_combout\ & (\Caminho_de_dados|Mux2|outMux[16]~16_combout\ & 
-- \Caminho_de_dados|Registrador_E|ALUControlE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datab => \Caminho_de_dados|Mux4|outMux[16]~34_combout\,
	datac => \Caminho_de_dados|Mux2|outMux[16]~16_combout\,
	datad => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	combout => \Caminho_de_dados|ALU_1|ALUOut[16]~32_combout\);

-- Location: LCCOMB_X24_Y25_N8
\Caminho_de_dados|ALU_1|ALUOut[16]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[16]~33_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|ALUOut[16]~32_combout\ & ((\Caminho_de_dados|ALU_1|Add0~32_combout\))) # (!\Caminho_de_dados|ALU_1|ALUOut[16]~32_combout\ & 
-- (\Caminho_de_dados|ALU_1|Add1~32_combout\)))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (((\Caminho_de_dados|ALU_1|ALUOut[16]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|Add1~32_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|Add0~32_combout\,
	datad => \Caminho_de_dados|ALU_1|ALUOut[16]~32_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[16]~33_combout\);

-- Location: LCFF_X24_Y25_N9
\Caminho_de_dados|Registrador_W|ALUOutW[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[16]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(16));

-- Location: LCCOMB_X24_Y28_N0
\Caminho_de_dados|Mux4|outMux[15]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[15]~31_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Caminho_de_dados|Registrador_E|SignImmE\(15))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & 
-- (((\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a15\ & !\Unidade_de_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datab => \Caminho_de_dados|Registrador_E|SignImmE\(15),
	datac => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a15\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[15]~31_combout\);

-- Location: LCCOMB_X24_Y28_N18
\Caminho_de_dados|Mux4|outMux[15]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[15]~32_combout\ = (\Caminho_de_dados|Mux4|outMux[15]~31_combout\) # ((\Caminho_de_dados|Registrador_W|ALUOutW\(15) & (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & \Unidade_de_Hazard|FowardBE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(15),
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Unidade_de_Hazard|FowardBE~combout\,
	datad => \Caminho_de_dados|Mux4|outMux[15]~31_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[15]~32_combout\);

-- Location: LCCOMB_X21_Y26_N6
\Caminho_de_dados|ALU_1|ALUOut[15]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[15]~31_combout\ = (\Caminho_de_dados|ALU_1|ALUOut[15]~30_combout\ & (((\Caminho_de_dados|ALU_1|Add0~30_combout\)) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1)))) # (!\Caminho_de_dados|ALU_1|ALUOut[15]~30_combout\ & 
-- (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (\Caminho_de_dados|ALU_1|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|ALUOut[15]~30_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|Add1~30_combout\,
	datad => \Caminho_de_dados|ALU_1|Add0~30_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[15]~31_combout\);

-- Location: LCFF_X21_Y26_N7
\Caminho_de_dados|Registrador_W|ALUOutW[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(15));

-- Location: LCCOMB_X27_Y26_N30
\Caminho_de_dados|Mux4|outMux[14]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[14]~29_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Caminho_de_dados|Registrador_E|SignImmE\(14))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & 
-- (((\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a14\ & !\Unidade_de_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|SignImmE\(14),
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a14\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[14]~29_combout\);

-- Location: LCCOMB_X27_Y26_N28
\Caminho_de_dados|Mux4|outMux[14]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[14]~30_combout\ = (\Caminho_de_dados|Mux4|outMux[14]~29_combout\) # ((\Caminho_de_dados|Registrador_W|ALUOutW\(14) & (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & \Unidade_de_Hazard|FowardBE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(14),
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Unidade_de_Hazard|FowardBE~combout\,
	datad => \Caminho_de_dados|Mux4|outMux[14]~29_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[14]~30_combout\);

-- Location: LCCOMB_X21_Y26_N14
\Caminho_de_dados|Mux2|outMux[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[14]~14_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(14))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(14),
	datac => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a14\,
	datad => \Unidade_de_Hazard|FowardAE~combout\,
	combout => \Caminho_de_dados|Mux2|outMux[14]~14_combout\);

-- Location: LCCOMB_X27_Y26_N26
\Caminho_de_dados|ALU_1|ALUOut[14]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[14]~28_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Registrador_E|ALUControlE\(1)) # ((\Caminho_de_dados|Mux2|outMux[14]~14_combout\) # (\Caminho_de_dados|Mux4|outMux[14]~30_combout\)))) 
-- # (!\Caminho_de_dados|Registrador_E|ALUControlE\(0) & (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (\Caminho_de_dados|Mux2|outMux[14]~14_combout\ & \Caminho_de_dados|Mux4|outMux[14]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|Mux2|outMux[14]~14_combout\,
	datad => \Caminho_de_dados|Mux4|outMux[14]~30_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[14]~28_combout\);

-- Location: LCCOMB_X24_Y26_N4
\Caminho_de_dados|ALU_1|ALUOut[14]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[14]~29_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|ALUOut[14]~28_combout\ & (\Caminho_de_dados|ALU_1|Add0~28_combout\)) # (!\Caminho_de_dados|ALU_1|ALUOut[14]~28_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~28_combout\))))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (((\Caminho_de_dados|ALU_1|ALUOut[14]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datab => \Caminho_de_dados|ALU_1|Add0~28_combout\,
	datac => \Caminho_de_dados|ALU_1|ALUOut[14]~28_combout\,
	datad => \Caminho_de_dados|ALU_1|Add1~28_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[14]~29_combout\);

-- Location: LCFF_X24_Y26_N5
\Caminho_de_dados|Registrador_W|ALUOutW[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(14));

-- Location: LCCOMB_X27_Y26_N0
\Caminho_de_dados|Mux4|outMux[13]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[13]~27_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Caminho_de_dados|Registrador_E|SignImmE\(13))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & 
-- (((\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a13\ & !\Unidade_de_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|SignImmE\(13),
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a13\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[13]~27_combout\);

-- Location: LCCOMB_X27_Y26_N22
\Caminho_de_dados|Mux4|outMux[13]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[13]~28_combout\ = (\Caminho_de_dados|Mux4|outMux[13]~27_combout\) # ((\Caminho_de_dados|Registrador_W|ALUOutW\(13) & (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & \Unidade_de_Hazard|FowardBE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(13),
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Unidade_de_Hazard|FowardBE~combout\,
	datad => \Caminho_de_dados|Mux4|outMux[13]~27_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[13]~28_combout\);

-- Location: LCCOMB_X24_Y26_N26
\Caminho_de_dados|ALU_1|ALUOut[13]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[13]~27_combout\ = (\Caminho_de_dados|ALU_1|ALUOut[13]~26_combout\ & (((\Caminho_de_dados|ALU_1|Add0~26_combout\)) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1)))) # (!\Caminho_de_dados|ALU_1|ALUOut[13]~26_combout\ & 
-- (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|ALUOut[13]~26_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|Add0~26_combout\,
	datad => \Caminho_de_dados|ALU_1|Add1~26_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[13]~27_combout\);

-- Location: LCFF_X24_Y26_N27
\Caminho_de_dados|Registrador_W|ALUOutW[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(13));

-- Location: LCCOMB_X24_Y29_N0
\Caminho_de_dados|Mux4|outMux[12]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[12]~25_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Caminho_de_dados|Registrador_E|SignImmE\(12))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & 
-- (((\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a12\ & !\Unidade_de_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datab => \Caminho_de_dados|Registrador_E|SignImmE\(12),
	datac => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a12\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[12]~25_combout\);

-- Location: LCCOMB_X24_Y29_N10
\Caminho_de_dados|Mux4|outMux[12]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[12]~26_combout\ = (\Caminho_de_dados|Mux4|outMux[12]~25_combout\) # ((\Unidade_de_Hazard|FowardBE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(12) & !\Caminho_de_dados|Registrador_E|ALUSrcE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidade_de_Hazard|FowardBE~combout\,
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(12),
	datac => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datad => \Caminho_de_dados|Mux4|outMux[12]~25_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[12]~26_combout\);

-- Location: LCCOMB_X24_Y29_N4
\Caminho_de_dados|ALU_1|ALUOut[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[12]~24_combout\ = (\Caminho_de_dados|Mux2|outMux[12]~12_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # ((!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & \Caminho_de_dados|Mux4|outMux[12]~26_combout\)))) # 
-- (!\Caminho_de_dados|Mux2|outMux[12]~12_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Registrador_E|ALUControlE\(1)) # (\Caminho_de_dados|Mux4|outMux[12]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[12]~12_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datad => \Caminho_de_dados|Mux4|outMux[12]~26_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[12]~24_combout\);

-- Location: LCCOMB_X24_Y29_N16
\Caminho_de_dados|ALU_1|ALUOut[12]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[12]~25_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|ALUOut[12]~24_combout\ & ((\Caminho_de_dados|ALU_1|Add0~24_combout\))) # (!\Caminho_de_dados|ALU_1|ALUOut[12]~24_combout\ & 
-- (\Caminho_de_dados|ALU_1|Add1~24_combout\)))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (\Caminho_de_dados|ALU_1|ALUOut[12]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datab => \Caminho_de_dados|ALU_1|ALUOut[12]~24_combout\,
	datac => \Caminho_de_dados|ALU_1|Add1~24_combout\,
	datad => \Caminho_de_dados|ALU_1|Add0~24_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[12]~25_combout\);

-- Location: LCFF_X24_Y29_N17
\Caminho_de_dados|Registrador_W|ALUOutW[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[12]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(12));

-- Location: LCCOMB_X22_Y27_N6
\Caminho_de_dados|Mux2|outMux[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[11]~11_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(11))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(11),
	datab => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a11\,
	datad => \Unidade_de_Hazard|FowardAE~combout\,
	combout => \Caminho_de_dados|Mux2|outMux[11]~11_combout\);

-- Location: LCCOMB_X21_Y26_N12
\Caminho_de_dados|ALU_1|ALUOut[11]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[11]~23_combout\ = (\Caminho_de_dados|ALU_1|ALUOut[11]~22_combout\ & (((\Caminho_de_dados|ALU_1|Add0~22_combout\)) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1)))) # (!\Caminho_de_dados|ALU_1|ALUOut[11]~22_combout\ & 
-- (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|ALUOut[11]~22_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|Add0~22_combout\,
	datad => \Caminho_de_dados|ALU_1|Add1~22_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[11]~23_combout\);

-- Location: LCFF_X21_Y26_N13
\Caminho_de_dados|Registrador_W|ALUOutW[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[11]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(11));

-- Location: LCCOMB_X22_Y26_N4
\Caminho_de_dados|Mux2|outMux[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[10]~10_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(10))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(10),
	datac => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a10\,
	datad => \Unidade_de_Hazard|FowardAE~combout\,
	combout => \Caminho_de_dados|Mux2|outMux[10]~10_combout\);

-- Location: LCCOMB_X24_Y26_N18
\Caminho_de_dados|ALU_1|ALUOut[10]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[10]~21_combout\ = (\Caminho_de_dados|ALU_1|ALUOut[10]~20_combout\ & (((\Caminho_de_dados|ALU_1|Add0~20_combout\) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1))))) # (!\Caminho_de_dados|ALU_1|ALUOut[10]~20_combout\ & 
-- (\Caminho_de_dados|ALU_1|Add1~20_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|ALUOut[10]~20_combout\,
	datab => \Caminho_de_dados|ALU_1|Add1~20_combout\,
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datad => \Caminho_de_dados|ALU_1|Add0~20_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[10]~21_combout\);

-- Location: LCFF_X24_Y26_N19
\Caminho_de_dados|Registrador_W|ALUOutW[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(10));

-- Location: LCCOMB_X24_Y24_N0
\Caminho_de_dados|Mux2|outMux[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[9]~9_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(9))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(9),
	datac => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a9\,
	datad => \Unidade_de_Hazard|FowardAE~combout\,
	combout => \Caminho_de_dados|Mux2|outMux[9]~9_combout\);

-- Location: LCCOMB_X24_Y24_N18
\Caminho_de_dados|ALU_1|ALUOut[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[9]~18_combout\ = (\Caminho_de_dados|Mux4|outMux[9]~20_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # ((\Caminho_de_dados|Mux2|outMux[9]~9_combout\ & !\Caminho_de_dados|Registrador_E|ALUControlE\(1))))) # 
-- (!\Caminho_de_dados|Mux4|outMux[9]~20_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Mux2|outMux[9]~9_combout\) # (\Caminho_de_dados|Registrador_E|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[9]~20_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[9]~9_combout\,
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datad => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	combout => \Caminho_de_dados|ALU_1|ALUOut[9]~18_combout\);

-- Location: LCCOMB_X24_Y24_N16
\Caminho_de_dados|ALU_1|ALUOut[9]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[9]~19_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|ALUOut[9]~18_combout\ & ((\Caminho_de_dados|ALU_1|Add0~18_combout\))) # (!\Caminho_de_dados|ALU_1|ALUOut[9]~18_combout\ & 
-- (\Caminho_de_dados|ALU_1|Add1~18_combout\)))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (((\Caminho_de_dados|ALU_1|ALUOut[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|Add1~18_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|ALUOut[9]~18_combout\,
	datad => \Caminho_de_dados|ALU_1|Add0~18_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[9]~19_combout\);

-- Location: LCFF_X24_Y24_N17
\Caminho_de_dados|Registrador_W|ALUOutW[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(9));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y26_N21
\Caminho_de_dados|Registrador_D|InstrD[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Instr~combout\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(8));

-- Location: LCFF_X22_Y26_N31
\Caminho_de_dados|Registrador_E|SignImmE[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|SignImmE\(8));

-- Location: LCCOMB_X22_Y26_N30
\Caminho_de_dados|Mux4|outMux[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[8]~17_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (((\Caminho_de_dados|Registrador_E|SignImmE\(8))))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & 
-- (\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a8\ & ((!\Unidade_de_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datab => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a8\,
	datac => \Caminho_de_dados|Registrador_E|SignImmE\(8),
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[8]~17_combout\);

-- Location: LCCOMB_X22_Y26_N24
\Caminho_de_dados|Mux4|outMux[8]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[8]~18_combout\ = (\Caminho_de_dados|Mux4|outMux[8]~17_combout\) # ((\Unidade_de_Hazard|FowardBE~combout\ & (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & \Caminho_de_dados|Registrador_W|ALUOutW\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidade_de_Hazard|FowardBE~combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|Registrador_W|ALUOutW\(8),
	datad => \Caminho_de_dados|Mux4|outMux[8]~17_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[8]~18_combout\);

-- Location: LCCOMB_X22_Y26_N8
\Caminho_de_dados|ALU_1|ALUOut[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[8]~17_combout\ = (\Caminho_de_dados|ALU_1|ALUOut[8]~16_combout\ & ((\Caminho_de_dados|ALU_1|Add0~16_combout\) # ((!\Caminho_de_dados|Registrador_E|ALUControlE\(1))))) # (!\Caminho_de_dados|ALU_1|ALUOut[8]~16_combout\ & 
-- (((\Caminho_de_dados|ALU_1|Add1~16_combout\ & \Caminho_de_dados|Registrador_E|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|Add0~16_combout\,
	datab => \Caminho_de_dados|ALU_1|ALUOut[8]~16_combout\,
	datac => \Caminho_de_dados|ALU_1|Add1~16_combout\,
	datad => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	combout => \Caminho_de_dados|ALU_1|ALUOut[8]~17_combout\);

-- Location: LCFF_X22_Y26_N9
\Caminho_de_dados|Registrador_W|ALUOutW[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[8]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(8));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X18_Y27_N16
\Caminho_de_dados|Registrador_D|InstrD[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Registrador_D|InstrD[7]~feeder_combout\ = \Instr~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instr~combout\(7),
	combout => \Caminho_de_dados|Registrador_D|InstrD[7]~feeder_combout\);

-- Location: LCFF_X18_Y27_N17
\Caminho_de_dados|Registrador_D|InstrD[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|Registrador_D|InstrD[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_D|InstrD\(7));

-- Location: LCFF_X22_Y26_N3
\Caminho_de_dados|Registrador_E|SignImmE[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Caminho_de_dados|Registrador_D|InstrD\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_E|SignImmE\(7));

-- Location: LCCOMB_X22_Y26_N2
\Caminho_de_dados|Mux4|outMux[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[7]~15_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (((\Caminho_de_dados|Registrador_E|SignImmE\(7))))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & 
-- (\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a7\ & ((!\Unidade_de_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datab => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a7\,
	datac => \Caminho_de_dados|Registrador_E|SignImmE\(7),
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[7]~15_combout\);

-- Location: LCCOMB_X22_Y26_N18
\Caminho_de_dados|Mux4|outMux[7]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[7]~16_combout\ = (\Caminho_de_dados|Mux4|outMux[7]~15_combout\) # ((\Unidade_de_Hazard|FowardBE~combout\ & (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & \Caminho_de_dados|Registrador_W|ALUOutW\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidade_de_Hazard|FowardBE~combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|Registrador_W|ALUOutW\(7),
	datad => \Caminho_de_dados|Mux4|outMux[7]~15_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[7]~16_combout\);

-- Location: LCCOMB_X21_Y26_N18
\Caminho_de_dados|ALU_1|ALUOut[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[7]~14_combout\ = (\Caminho_de_dados|Mux2|outMux[7]~7_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # ((\Caminho_de_dados|Mux4|outMux[7]~16_combout\ & !\Caminho_de_dados|Registrador_E|ALUControlE\(1))))) # 
-- (!\Caminho_de_dados|Mux2|outMux[7]~7_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Mux4|outMux[7]~16_combout\) # (\Caminho_de_dados|Registrador_E|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[7]~7_combout\,
	datab => \Caminho_de_dados|Mux4|outMux[7]~16_combout\,
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datad => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	combout => \Caminho_de_dados|ALU_1|ALUOut[7]~14_combout\);

-- Location: LCCOMB_X22_Y26_N14
\Caminho_de_dados|ALU_1|ALUOut[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[7]~15_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|ALUOut[7]~14_combout\ & ((\Caminho_de_dados|ALU_1|Add0~14_combout\))) # (!\Caminho_de_dados|ALU_1|ALUOut[7]~14_combout\ & 
-- (\Caminho_de_dados|ALU_1|Add1~14_combout\)))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (\Caminho_de_dados|ALU_1|ALUOut[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datab => \Caminho_de_dados|ALU_1|ALUOut[7]~14_combout\,
	datac => \Caminho_de_dados|ALU_1|Add1~14_combout\,
	datad => \Caminho_de_dados|ALU_1|Add0~14_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[7]~15_combout\);

-- Location: LCFF_X22_Y26_N15
\Caminho_de_dados|Registrador_W|ALUOutW[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(7));

-- Location: LCCOMB_X22_Y26_N28
\Caminho_de_dados|Mux2|outMux[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[6]~6_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(6))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(6),
	datac => \Unidade_de_Hazard|FowardAE~combout\,
	datad => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a6\,
	combout => \Caminho_de_dados|Mux2|outMux[6]~6_combout\);

-- Location: LCCOMB_X21_Y26_N4
\Caminho_de_dados|ALU_1|ALUOut[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[6]~12_combout\ = (\Caminho_de_dados|Mux4|outMux[6]~14_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # ((\Caminho_de_dados|Mux2|outMux[6]~6_combout\ & !\Caminho_de_dados|Registrador_E|ALUControlE\(1))))) # 
-- (!\Caminho_de_dados|Mux4|outMux[6]~14_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Mux2|outMux[6]~6_combout\) # (\Caminho_de_dados|Registrador_E|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[6]~14_combout\,
	datab => \Caminho_de_dados|Mux2|outMux[6]~6_combout\,
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datad => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	combout => \Caminho_de_dados|ALU_1|ALUOut[6]~12_combout\);

-- Location: LCCOMB_X22_Y26_N16
\Caminho_de_dados|ALU_1|ALUOut[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[6]~13_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|ALUOut[6]~12_combout\ & ((\Caminho_de_dados|ALU_1|Add0~12_combout\))) # (!\Caminho_de_dados|ALU_1|ALUOut[6]~12_combout\ & 
-- (\Caminho_de_dados|ALU_1|Add1~12_combout\)))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (\Caminho_de_dados|ALU_1|ALUOut[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datab => \Caminho_de_dados|ALU_1|ALUOut[6]~12_combout\,
	datac => \Caminho_de_dados|ALU_1|Add1~12_combout\,
	datad => \Caminho_de_dados|ALU_1|Add0~12_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[6]~13_combout\);

-- Location: LCFF_X22_Y26_N17
\Caminho_de_dados|Registrador_W|ALUOutW[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(6));

-- Location: LCCOMB_X24_Y26_N30
\Caminho_de_dados|Mux4|outMux[5]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[5]~12_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Caminho_de_dados|Mux4|outMux[5]~11_combout\)) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & ((\Unidade_de_Hazard|FowardBE~combout\ & 
-- (\Caminho_de_dados|Mux4|outMux[5]~11_combout\)) # (!\Unidade_de_Hazard|FowardBE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[5]~11_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a5\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[5]~12_combout\);

-- Location: LCCOMB_X21_Y26_N26
\Caminho_de_dados|ALU_1|ALUOut[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[5]~10_combout\ = (\Caminho_de_dados|Mux2|outMux[5]~5_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # ((!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & \Caminho_de_dados|Mux4|outMux[5]~12_combout\)))) # 
-- (!\Caminho_de_dados|Mux2|outMux[5]~5_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Registrador_E|ALUControlE\(1)) # (\Caminho_de_dados|Mux4|outMux[5]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux2|outMux[5]~5_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datad => \Caminho_de_dados|Mux4|outMux[5]~12_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[5]~10_combout\);

-- Location: LCCOMB_X24_Y26_N0
\Caminho_de_dados|ALU_1|ALUOut[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[5]~11_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|ALUOut[5]~10_combout\ & (\Caminho_de_dados|ALU_1|Add0~10_combout\)) # (!\Caminho_de_dados|ALU_1|ALUOut[5]~10_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~10_combout\))))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (((\Caminho_de_dados|ALU_1|ALUOut[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datab => \Caminho_de_dados|ALU_1|Add0~10_combout\,
	datac => \Caminho_de_dados|ALU_1|ALUOut[5]~10_combout\,
	datad => \Caminho_de_dados|ALU_1|Add1~10_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[5]~11_combout\);

-- Location: LCFF_X24_Y26_N1
\Caminho_de_dados|Registrador_W|ALUOutW[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(5));

-- Location: LCCOMB_X22_Y26_N26
\Caminho_de_dados|Mux2|outMux[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[4]~4_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(4))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(4),
	datab => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a4\,
	datac => \Unidade_de_Hazard|FowardAE~combout\,
	combout => \Caminho_de_dados|Mux2|outMux[4]~4_combout\);

-- Location: LCCOMB_X21_Y26_N16
\Caminho_de_dados|ALU_1|ALUOut[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[4]~8_combout\ = (\Caminho_de_dados|Mux4|outMux[4]~10_combout\ & ((\Caminho_de_dados|Registrador_E|ALUControlE\(0)) # ((\Caminho_de_dados|Mux2|outMux[4]~4_combout\ & !\Caminho_de_dados|Registrador_E|ALUControlE\(1))))) # 
-- (!\Caminho_de_dados|Mux4|outMux[4]~10_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Mux2|outMux[4]~4_combout\) # (\Caminho_de_dados|Registrador_E|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Mux4|outMux[4]~10_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datac => \Caminho_de_dados|Mux2|outMux[4]~4_combout\,
	datad => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	combout => \Caminho_de_dados|ALU_1|ALUOut[4]~8_combout\);

-- Location: LCCOMB_X24_Y26_N8
\Caminho_de_dados|ALU_1|ALUOut[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[4]~9_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|ALUOut[4]~8_combout\ & (\Caminho_de_dados|ALU_1|Add0~8_combout\)) # (!\Caminho_de_dados|ALU_1|ALUOut[4]~8_combout\ & 
-- ((\Caminho_de_dados|ALU_1|Add1~8_combout\))))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (\Caminho_de_dados|ALU_1|ALUOut[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datab => \Caminho_de_dados|ALU_1|ALUOut[4]~8_combout\,
	datac => \Caminho_de_dados|ALU_1|Add0~8_combout\,
	datad => \Caminho_de_dados|ALU_1|Add1~8_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[4]~9_combout\);

-- Location: LCFF_X24_Y26_N9
\Caminho_de_dados|Registrador_W|ALUOutW[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(4));

-- Location: LCCOMB_X24_Y26_N14
\Caminho_de_dados|Mux2|outMux[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[3]~3_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|Registrador_W|ALUOutW\(3))) # (!\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(3),
	datac => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a3\,
	datad => \Unidade_de_Hazard|FowardAE~combout\,
	combout => \Caminho_de_dados|Mux2|outMux[3]~3_combout\);

-- Location: LCCOMB_X24_Y26_N28
\Caminho_de_dados|ALU_1|ALUOut[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[3]~7_combout\ = (\Caminho_de_dados|ALU_1|ALUOut[3]~6_combout\ & (((\Caminho_de_dados|ALU_1|Add0~6_combout\) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1))))) # (!\Caminho_de_dados|ALU_1|ALUOut[3]~6_combout\ & 
-- (\Caminho_de_dados|ALU_1|Add1~6_combout\ & (\Caminho_de_dados|Registrador_E|ALUControlE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|ALUOut[3]~6_combout\,
	datab => \Caminho_de_dados|ALU_1|Add1~6_combout\,
	datac => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datad => \Caminho_de_dados|ALU_1|Add0~6_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[3]~7_combout\);

-- Location: LCFF_X24_Y26_N29
\Caminho_de_dados|Registrador_W|ALUOutW[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(3));

-- Location: LCCOMB_X24_Y27_N28
\Caminho_de_dados|Mux4|outMux[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[2]~5_combout\ = (\Caminho_de_dados|Registrador_W|ALUOutW\(2) & ((\Unidade_de_Hazard|FowardBE~combout\) # ((\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a2\ & !\Caminho_de_dados|Mux4|outMux[0]~0_combout\)))) # 
-- (!\Caminho_de_dados|Registrador_W|ALUOutW\(2) & (\Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a2\ & (!\Caminho_de_dados|Mux4|outMux[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_W|ALUOutW\(2),
	datab => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a2\,
	datac => \Caminho_de_dados|Mux4|outMux[0]~0_combout\,
	datad => \Unidade_de_Hazard|FowardBE~combout\,
	combout => \Caminho_de_dados|Mux4|outMux[2]~5_combout\);

-- Location: LCCOMB_X24_Y27_N0
\Caminho_de_dados|Mux4|outMux[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[2]~6_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Caminho_de_dados|Registrador_E|SignImmE\(2))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & ((\Caminho_de_dados|Mux4|outMux[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|Registrador_E|SignImmE\(2),
	datad => \Caminho_de_dados|Mux4|outMux[2]~5_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[2]~6_combout\);

-- Location: LCCOMB_X24_Y27_N6
\Caminho_de_dados|ALU_1|ALUOut[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[2]~5_combout\ = (\Caminho_de_dados|ALU_1|ALUOut[2]~4_combout\ & (((\Caminho_de_dados|ALU_1|Add0~4_combout\)) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1)))) # (!\Caminho_de_dados|ALU_1|ALUOut[2]~4_combout\ & 
-- (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|ALUOut[2]~4_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|Add0~4_combout\,
	datad => \Caminho_de_dados|ALU_1|Add1~4_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[2]~5_combout\);

-- Location: LCFF_X24_Y27_N7
\Caminho_de_dados|Registrador_W|ALUOutW[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(2));

-- Location: LCCOMB_X24_Y27_N2
\Caminho_de_dados|Mux4|outMux[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[1]~3_combout\ = (\Unidade_de_Hazard|FowardBE~combout\ & ((\Caminho_de_dados|Registrador_W|ALUOutW\(1)) # ((!\Caminho_de_dados|Mux4|outMux[0]~0_combout\ & \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a1\)))) # 
-- (!\Unidade_de_Hazard|FowardBE~combout\ & (((!\Caminho_de_dados|Mux4|outMux[0]~0_combout\ & \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidade_de_Hazard|FowardBE~combout\,
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(1),
	datac => \Caminho_de_dados|Mux4|outMux[0]~0_combout\,
	datad => \Caminho_de_dados|RF|registers_rtl_1|auto_generated|ram_block1a1\,
	combout => \Caminho_de_dados|Mux4|outMux[1]~3_combout\);

-- Location: LCCOMB_X24_Y27_N26
\Caminho_de_dados|Mux4|outMux[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux4|outMux[1]~4_combout\ = (\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & (\Caminho_de_dados|Registrador_E|SignImmE\(1))) # (!\Caminho_de_dados|Registrador_E|ALUSrcE~regout\ & ((\Caminho_de_dados|Mux4|outMux[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Caminho_de_dados|Registrador_E|ALUSrcE~regout\,
	datac => \Caminho_de_dados|Registrador_E|SignImmE\(1),
	datad => \Caminho_de_dados|Mux4|outMux[1]~3_combout\,
	combout => \Caminho_de_dados|Mux4|outMux[1]~4_combout\);

-- Location: LCCOMB_X24_Y27_N18
\Caminho_de_dados|Mux2|outMux[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|Mux2|outMux[1]~1_combout\ = (\Unidade_de_Hazard|FowardAE~combout\ & ((\Caminho_de_dados|Registrador_W|ALUOutW\(1)))) # (!\Unidade_de_Hazard|FowardAE~combout\ & (\Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|RF|registers_rtl_0|auto_generated|ram_block1a1\,
	datab => \Caminho_de_dados|Registrador_W|ALUOutW\(1),
	datad => \Unidade_de_Hazard|FowardAE~combout\,
	combout => \Caminho_de_dados|Mux2|outMux[1]~1_combout\);

-- Location: LCCOMB_X24_Y27_N20
\Caminho_de_dados|ALU_1|ALUOut[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[1]~2_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(0) & ((\Caminho_de_dados|Registrador_E|ALUControlE\(1)) # ((\Caminho_de_dados|Mux4|outMux[1]~4_combout\) # (\Caminho_de_dados|Mux2|outMux[1]~1_combout\)))) # 
-- (!\Caminho_de_dados|Registrador_E|ALUControlE\(0) & (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (\Caminho_de_dados|Mux4|outMux[1]~4_combout\ & \Caminho_de_dados|Mux2|outMux[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|Registrador_E|ALUControlE\(0),
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|Mux4|outMux[1]~4_combout\,
	datad => \Caminho_de_dados|Mux2|outMux[1]~1_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[1]~2_combout\);

-- Location: LCCOMB_X24_Y27_N4
\Caminho_de_dados|ALU_1|ALUOut[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Caminho_de_dados|ALU_1|ALUOut[1]~3_combout\ = (\Caminho_de_dados|Registrador_E|ALUControlE\(1) & ((\Caminho_de_dados|ALU_1|ALUOut[1]~2_combout\ & ((\Caminho_de_dados|ALU_1|Add0~2_combout\))) # (!\Caminho_de_dados|ALU_1|ALUOut[1]~2_combout\ & 
-- (\Caminho_de_dados|ALU_1|Add1~2_combout\)))) # (!\Caminho_de_dados|Registrador_E|ALUControlE\(1) & (((\Caminho_de_dados|ALU_1|ALUOut[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Caminho_de_dados|ALU_1|Add1~2_combout\,
	datab => \Caminho_de_dados|Registrador_E|ALUControlE\(1),
	datac => \Caminho_de_dados|ALU_1|ALUOut[1]~2_combout\,
	datad => \Caminho_de_dados|ALU_1|Add0~2_combout\,
	combout => \Caminho_de_dados|ALU_1|ALUOut[1]~3_combout\);

-- Location: LCFF_X24_Y27_N5
\Caminho_de_dados|Registrador_W|ALUOutW[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Caminho_de_dados|ALU_1|ALUOut[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Caminho_de_dados|Registrador_W|ALUOutW\(1));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|RegWriteW~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegWriteW);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|WriteRegW\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteRegW(0));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|WriteRegW\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteRegW(1));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|WriteRegW\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteRegW(2));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|WriteRegW\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteRegW(3));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|WriteRegW\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteRegW(4));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(0));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(1));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(2));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(3));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(4));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(5));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(6));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(7));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(8));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(9));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(10));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(11));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(12));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(13));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(14));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(15));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(16));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(17));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(18));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(19));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(20));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(21));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(22));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(23));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(24));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(25));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(26));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(27));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(28));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(29));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(30));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Caminho_de_dados|Registrador_W|ALUOutW\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AluOutW(31));
END structure;


