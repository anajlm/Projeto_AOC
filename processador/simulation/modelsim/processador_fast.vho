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

-- DATE "12/06/2019 13:08:33"

-- 
-- Device: Altera EP2C70F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processador IS
    PORT (
	clock : IN std_logic;
	PC_atual_out : OUT std_logic_vector(31 DOWNTO 0);
	RD : IN std_logic_vector(31 DOWNTO 0);
	ALUOutW_out : OUT std_logic_vector(31 DOWNTO 0);
	WriteRegW_out : OUT std_logic_vector(4 DOWNTO 0);
	RegWriteW_out : OUT std_logic
	);
END processador;

-- Design Ports Information
-- PC_atual_out[0]	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[2]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[3]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[4]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[5]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[6]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[7]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[8]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[9]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[10]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[11]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[12]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[13]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[14]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[15]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[16]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[17]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[18]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[19]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[20]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[21]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[22]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[23]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[24]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[25]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[26]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[27]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[28]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[29]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[30]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_atual_out[31]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[0]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[1]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[2]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[3]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[4]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[5]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[6]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[7]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[8]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[9]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[10]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[11]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[12]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[13]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[14]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[15]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[16]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[17]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[18]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[19]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[20]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[21]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[22]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[23]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[24]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[25]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[26]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[27]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[28]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[29]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[30]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOutW_out[31]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteRegW_out[0]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteRegW_out[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteRegW_out[2]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteRegW_out[3]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteRegW_out[4]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegWriteW_out	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[16]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[17]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[18]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[19]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[20]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[21]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[22]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[23]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[24]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[25]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[0]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[31]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[28]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[30]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[26]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[27]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[29]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[5]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[3]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[4]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[2]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[1]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[6]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[7]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[8]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[9]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[10]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[11]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[12]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[13]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[14]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD[15]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF processador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_PC_atual_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RD : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ALUOutW_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_WriteRegW_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RegWriteW_out : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \instancia_ALU|Add1~12_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~14_combout\ : std_logic;
SIGNAL \instancia_Hazard|Equal0~0_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[1]~2_combout\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[3]~3_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[3]~6_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[11]~22_combout\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[13]~13_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[13]~26_combout\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[14]~14_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[15]~30_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[17]~35_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[17]~36_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[17]~34_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[18]~37_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[18]~38_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[18]~36_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[19]~39_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[19]~40_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[19]~38_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[21]~42_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[26]~53_combout\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[30]~30_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[30]~60_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[31]~63_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[31]~64_combout\ : std_logic;
SIGNAL \instancia_control|Equal4~0_combout\ : std_logic;
SIGNAL \instancia_regD|InstrD[30]~2_combout\ : std_logic;
SIGNAL \instancia_regE|RsE[1]~feeder_combout\ : std_logic;
SIGNAL \instancia_regE|RsE[2]~feeder_combout\ : std_logic;
SIGNAL \instancia_regD|InstrD[23]~feeder_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \instancia_regPC|saida[2]~87_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[3]~29_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[3]~30\ : std_logic;
SIGNAL \instancia_regPC|saida[4]~31_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[4]~32\ : std_logic;
SIGNAL \instancia_regPC|saida[5]~33_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[5]~34\ : std_logic;
SIGNAL \instancia_regPC|saida[6]~35_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[6]~36\ : std_logic;
SIGNAL \instancia_regPC|saida[7]~37_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[7]~38\ : std_logic;
SIGNAL \instancia_regPC|saida[8]~39_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[8]~40\ : std_logic;
SIGNAL \instancia_regPC|saida[9]~41_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[9]~42\ : std_logic;
SIGNAL \instancia_regPC|saida[10]~43_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[10]~44\ : std_logic;
SIGNAL \instancia_regPC|saida[11]~45_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[11]~46\ : std_logic;
SIGNAL \instancia_regPC|saida[12]~47_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[12]~48\ : std_logic;
SIGNAL \instancia_regPC|saida[13]~49_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[13]~50\ : std_logic;
SIGNAL \instancia_regPC|saida[14]~51_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[14]~52\ : std_logic;
SIGNAL \instancia_regPC|saida[15]~53_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[15]~54\ : std_logic;
SIGNAL \instancia_regPC|saida[16]~55_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[16]~56\ : std_logic;
SIGNAL \instancia_regPC|saida[17]~57_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[17]~58\ : std_logic;
SIGNAL \instancia_regPC|saida[18]~59_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[18]~60\ : std_logic;
SIGNAL \instancia_regPC|saida[19]~61_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[19]~62\ : std_logic;
SIGNAL \instancia_regPC|saida[20]~63_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[20]~64\ : std_logic;
SIGNAL \instancia_regPC|saida[21]~65_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[21]~66\ : std_logic;
SIGNAL \instancia_regPC|saida[22]~67_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[22]~68\ : std_logic;
SIGNAL \instancia_regPC|saida[23]~69_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[23]~70\ : std_logic;
SIGNAL \instancia_regPC|saida[24]~71_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[24]~72\ : std_logic;
SIGNAL \instancia_regPC|saida[25]~73_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[25]~74\ : std_logic;
SIGNAL \instancia_regPC|saida[26]~75_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[26]~76\ : std_logic;
SIGNAL \instancia_regPC|saida[27]~77_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[27]~78\ : std_logic;
SIGNAL \instancia_regPC|saida[28]~79_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[28]~80\ : std_logic;
SIGNAL \instancia_regPC|saida[29]~81_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[29]~82\ : std_logic;
SIGNAL \instancia_regPC|saida[30]~83_combout\ : std_logic;
SIGNAL \instancia_regPC|saida[30]~84\ : std_logic;
SIGNAL \instancia_regPC|saida[31]~85_combout\ : std_logic;
SIGNAL \instancia_regD|InstrD[26]~feeder_combout\ : std_logic;
SIGNAL \instancia_regD|InstrD[28]~1_combout\ : std_logic;
SIGNAL \instancia_control|Equal0~0_combout\ : std_logic;
SIGNAL \instancia_regD|InstrD[31]~0_combout\ : std_logic;
SIGNAL \instancia_control|RegWrite~combout\ : std_logic;
SIGNAL \instancia_regE|RegWriteE~regout\ : std_logic;
SIGNAL \instancia_regW|RegWriteW~regout\ : std_logic;
SIGNAL \instancia_regD|InstrD[29]~3_combout\ : std_logic;
SIGNAL \instancia_control|Equal0~1_combout\ : std_logic;
SIGNAL \instancia_regE|RegDstE~regout\ : std_logic;
SIGNAL \instancia_regD|InstrD[16]~feeder_combout\ : std_logic;
SIGNAL \instancia_regD|InstrD[11]~feeder_combout\ : std_logic;
SIGNAL \instancia_mux5bits|outMux[0]~0_combout\ : std_logic;
SIGNAL \instancia_mux5bits|outMux[1]~1_combout\ : std_logic;
SIGNAL \instancia_regD|InstrD[13]~feeder_combout\ : std_logic;
SIGNAL \instancia_mux5bits|outMux[2]~2_combout\ : std_logic;
SIGNAL \instancia_regD|InstrD[19]~feeder_combout\ : std_logic;
SIGNAL \instancia_mux5bits|outMux[3]~3_combout\ : std_logic;
SIGNAL \instancia_mux5bits|outMux[4]~4_combout\ : std_logic;
SIGNAL \instancia_control|ALUControlID[1]~0_combout\ : std_logic;
SIGNAL \instancia_regD|InstrD[0]~feeder_combout\ : std_logic;
SIGNAL \instancia_control|ALUControlID[1]~1_combout\ : std_logic;
SIGNAL \instancia_control|ALUControlID[1]~2_combout\ : std_logic;
SIGNAL \instancia_control|Equal1~0_combout\ : std_logic;
SIGNAL \instancia_regE|ALUSrcE~feeder_combout\ : std_logic;
SIGNAL \instancia_regE|ALUSrcE~regout\ : std_logic;
SIGNAL \instancia_regD|InstrD[20]~feeder_combout\ : std_logic;
SIGNAL \instancia_Hazard|FowardBE~1_combout\ : std_logic;
SIGNAL \instancia_Hazard|Equal2~0_combout\ : std_logic;
SIGNAL \instancia_Hazard|FowardBE~0_combout\ : std_logic;
SIGNAL \instancia_Hazard|FowardBE~2_combout\ : std_logic;
SIGNAL \instancia_Hazard|FowardBE~combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[0]~0_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[1]~3_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[1]~4_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[0]~1_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[0]~2_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~1\ : std_logic;
SIGNAL \instancia_ALU|Add1~2_combout\ : std_logic;
SIGNAL \instancia_Hazard|FowardAE~1_combout\ : std_logic;
SIGNAL \instancia_regE|RsE[0]~feeder_combout\ : std_logic;
SIGNAL \instancia_Hazard|FowardAE~0_combout\ : std_logic;
SIGNAL \instancia_Hazard|FowardAE~2_combout\ : std_logic;
SIGNAL \instancia_Hazard|FowardAE~combout\ : std_logic;
SIGNAL \instancia_control|ALUControlID~3_combout\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[7]~7_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[7]~14_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[7]~15_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[7]~16_combout\ : std_logic;
SIGNAL \instancia_regD|InstrD[5]~feeder_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[5]~11_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[5]~12_combout\ : std_logic;
SIGNAL \instancia_regD|InstrD[9]~feeder_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[9]~19_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[9]~20_combout\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[12]~12_combout\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[8]~8_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~15\ : std_logic;
SIGNAL \instancia_ALU|Add1~17\ : std_logic;
SIGNAL \instancia_ALU|Add1~19\ : std_logic;
SIGNAL \instancia_ALU|Add1~21\ : std_logic;
SIGNAL \instancia_ALU|Add1~23\ : std_logic;
SIGNAL \instancia_ALU|Add1~24_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[12]~25_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[12]~26_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[12]~24_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[31]~31_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[31]~62_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[29]~29_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[27]~27_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[26]~54_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[21]~43_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[21]~44_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~25\ : std_logic;
SIGNAL \instancia_ALU|Add0~27\ : std_logic;
SIGNAL \instancia_ALU|Add0~29\ : std_logic;
SIGNAL \instancia_ALU|Add0~31\ : std_logic;
SIGNAL \instancia_ALU|Add0~33\ : std_logic;
SIGNAL \instancia_ALU|Add0~35\ : std_logic;
SIGNAL \instancia_ALU|Add0~37\ : std_logic;
SIGNAL \instancia_ALU|Add0~39\ : std_logic;
SIGNAL \instancia_ALU|Add0~41\ : std_logic;
SIGNAL \instancia_ALU|Add0~43\ : std_logic;
SIGNAL \instancia_ALU|Add0~45\ : std_logic;
SIGNAL \instancia_ALU|Add0~47\ : std_logic;
SIGNAL \instancia_ALU|Add0~49\ : std_logic;
SIGNAL \instancia_ALU|Add0~51\ : std_logic;
SIGNAL \instancia_ALU|Add0~53\ : std_logic;
SIGNAL \instancia_ALU|Add0~55\ : std_logic;
SIGNAL \instancia_ALU|Add0~57\ : std_logic;
SIGNAL \instancia_ALU|Add0~59\ : std_logic;
SIGNAL \instancia_ALU|Add0~61\ : std_logic;
SIGNAL \instancia_ALU|Add0~62_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[23]~23_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[22]~45_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[22]~46_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[20]~41_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[20]~42_combout\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[16]~16_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[15]~31_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[15]~32_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~25\ : std_logic;
SIGNAL \instancia_ALU|Add1~27\ : std_logic;
SIGNAL \instancia_ALU|Add1~29\ : std_logic;
SIGNAL \instancia_ALU|Add1~31\ : std_logic;
SIGNAL \instancia_ALU|Add1~33\ : std_logic;
SIGNAL \instancia_ALU|Add1~35\ : std_logic;
SIGNAL \instancia_ALU|Add1~37\ : std_logic;
SIGNAL \instancia_ALU|Add1~39\ : std_logic;
SIGNAL \instancia_ALU|Add1~41\ : std_logic;
SIGNAL \instancia_ALU|Add1~43\ : std_logic;
SIGNAL \instancia_ALU|Add1~45\ : std_logic;
SIGNAL \instancia_ALU|Add1~47\ : std_logic;
SIGNAL \instancia_ALU|Add1~49\ : std_logic;
SIGNAL \instancia_ALU|Add1~51\ : std_logic;
SIGNAL \instancia_ALU|Add1~53\ : std_logic;
SIGNAL \instancia_ALU|Add1~55\ : std_logic;
SIGNAL \instancia_ALU|Add1~57\ : std_logic;
SIGNAL \instancia_ALU|Add1~59\ : std_logic;
SIGNAL \instancia_ALU|Add1~61\ : std_logic;
SIGNAL \instancia_ALU|Add1~62_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[31]~63_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[30]~61_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[30]~62_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~60_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~60_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[30]~61_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[29]~59_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[29]~60_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[29]~58_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~58_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~58_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[29]~59_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[28]~28_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~56_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[28]~57_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[28]~58_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[28]~56_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~56_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[28]~57_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[27]~55_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[27]~56_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[27]~54_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~54_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~54_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[27]~55_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[26]~26_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[26]~52_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~52_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~52_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[26]~53_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[25]~25_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~50_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[25]~51_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[25]~52_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[25]~50_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~50_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[25]~51_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[24]~24_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~48_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[24]~49_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[24]~50_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[24]~48_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~48_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[24]~49_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[23]~47_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[23]~48_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[23]~46_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~46_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~46_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[23]~47_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[22]~22_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[22]~44_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~44_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~44_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[22]~45_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[21]~21_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~42_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~42_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[21]~43_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[20]~20_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[20]~40_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~40_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~40_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[20]~41_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[19]~19_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~38_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~38_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[19]~39_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[18]~18_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~36_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~36_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[18]~37_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[17]~17_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~34_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~34_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[17]~35_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[16]~33_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[16]~34_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~32_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~32_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[16]~32_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[16]~33_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[15]~15_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~30_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~30_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[15]~31_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[14]~29_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[14]~30_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[14]~28_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~28_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~28_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[14]~29_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[13]~27_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[13]~28_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~26_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~26_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[13]~27_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[11]~11_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[10]~21_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[10]~22_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~19\ : std_logic;
SIGNAL \instancia_ALU|Add0~21\ : std_logic;
SIGNAL \instancia_ALU|Add0~23\ : std_logic;
SIGNAL \instancia_ALU|Add0~24_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[12]~25_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[11]~23_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[11]~24_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~22_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~22_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[11]~23_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[10]~10_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~20_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~20_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[10]~20_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[10]~21_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[4]~9_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[4]~10_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~1\ : std_logic;
SIGNAL \instancia_ALU|Add0~3\ : std_logic;
SIGNAL \instancia_ALU|Add0~5\ : std_logic;
SIGNAL \instancia_ALU|Add0~7\ : std_logic;
SIGNAL \instancia_ALU|Add0~9\ : std_logic;
SIGNAL \instancia_ALU|Add0~11\ : std_logic;
SIGNAL \instancia_ALU|Add0~13\ : std_logic;
SIGNAL \instancia_ALU|Add0~15\ : std_logic;
SIGNAL \instancia_ALU|Add0~17\ : std_logic;
SIGNAL \instancia_ALU|Add0~18_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[9]~9_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[9]~18_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~18_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[9]~19_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \instancia_regD|InstrD[8]~feeder_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[8]~17_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[8]~18_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[8]~16_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~16_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~16_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[8]~17_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[2]~2_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~3\ : std_logic;
SIGNAL \instancia_ALU|Add1~5\ : std_logic;
SIGNAL \instancia_ALU|Add1~7\ : std_logic;
SIGNAL \instancia_ALU|Add1~9\ : std_logic;
SIGNAL \instancia_ALU|Add1~11\ : std_logic;
SIGNAL \instancia_ALU|Add1~13\ : std_logic;
SIGNAL \instancia_ALU|Add1~14_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[7]~15_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[6]~6_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \instancia_regD|InstrD[6]~feeder_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[6]~13_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[6]~14_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[6]~12_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~12_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[6]~13_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[5]~5_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[5]~10_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~10_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~10_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[5]~11_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[4]~4_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[4]~8_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~8_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~8_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[4]~9_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[3]~7_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[3]~8_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~6_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~6_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[3]~7_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[2]~5_combout\ : std_logic;
SIGNAL \instancia_mux_imm|outMux[2]~6_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[2]~4_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~4_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~4_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[2]~5_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[1]~1_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~2_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[1]~3_combout\ : std_logic;
SIGNAL \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \instancia_mux_ForwardA|outMux[0]~0_combout\ : std_logic;
SIGNAL \instancia_ALU|Add0~0_combout\ : std_logic;
SIGNAL \instancia_ALU|Add1~0_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[0]~0_combout\ : std_logic;
SIGNAL \instancia_ALU|ALUOut[0]~1_combout\ : std_logic;
SIGNAL \instancia_regW|ALUOutW\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \instancia_regE|SignImmE\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \instancia_regD|InstrD\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \instancia_regW|WriteRegW\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \instancia_regE|ALUControlE\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \instancia_regE|RtE\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \instancia_regE|RsE\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \instancia_regPC|saida\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RD~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clock~clkctrl_outclk\ : std_logic;

BEGIN

ww_clock <= clock;
PC_atual_out <= ww_PC_atual_out;
ww_RD <= RD;
ALUOutW_out <= ww_ALUOutW_out;
WriteRegW_out <= ww_WriteRegW_out;
RegWriteW_out <= ww_RegWriteW_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\instancia_regW|ALUOutW\(31) & \instancia_regW|ALUOutW\(30) & \instancia_regW|ALUOutW\(29) & \instancia_regW|ALUOutW\(28) & \instancia_regW|ALUOutW\(27) & 
\instancia_regW|ALUOutW\(26) & \instancia_regW|ALUOutW\(25) & \instancia_regW|ALUOutW\(24) & \instancia_regW|ALUOutW\(23) & \instancia_regW|ALUOutW\(22) & \instancia_regW|ALUOutW\(21) & \instancia_regW|ALUOutW\(20) & \instancia_regW|ALUOutW\(19)
& \instancia_regW|ALUOutW\(18) & \instancia_regW|ALUOutW\(17) & \instancia_regW|ALUOutW\(16) & \instancia_regW|ALUOutW\(15) & \instancia_regW|ALUOutW\(14) & \instancia_regW|ALUOutW\(13) & \instancia_regW|ALUOutW\(12) & \instancia_regW|ALUOutW\(11)
& \instancia_regW|ALUOutW\(10) & \instancia_regW|ALUOutW\(9) & \instancia_regW|ALUOutW\(8) & \instancia_regW|ALUOutW\(7) & \instancia_regW|ALUOutW\(6) & \instancia_regW|ALUOutW\(5) & \instancia_regW|ALUOutW\(4) & \instancia_regW|ALUOutW\(3)
& \instancia_regW|ALUOutW\(2) & \instancia_regW|ALUOutW\(1) & \instancia_regW|ALUOutW\(0));

\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\instancia_regW|WriteRegW\(4) & \instancia_regW|WriteRegW\(3) & \instancia_regW|WriteRegW\(2) & \instancia_regW|WriteRegW\(1) & \instancia_regW|WriteRegW\(0));

\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\RD~combout\(20) & \RD~combout\(19) & \RD~combout\(18) & \RD~combout\(17) & \RD~combout\(16));

\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a1\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a2\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a3\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a4\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a5\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a6\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a7\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a8\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a9\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a10\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a11\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a12\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a13\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a14\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a15\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a16\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a17\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a18\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a19\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a20\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a21\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a22\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a23\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a24\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a25\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a26\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a27\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a28\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a29\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a30\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a31\ <= \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\instancia_regW|ALUOutW\(31) & \instancia_regW|ALUOutW\(30) & \instancia_regW|ALUOutW\(29) & \instancia_regW|ALUOutW\(28) & \instancia_regW|ALUOutW\(27) & 
\instancia_regW|ALUOutW\(26) & \instancia_regW|ALUOutW\(25) & \instancia_regW|ALUOutW\(24) & \instancia_regW|ALUOutW\(23) & \instancia_regW|ALUOutW\(22) & \instancia_regW|ALUOutW\(21) & \instancia_regW|ALUOutW\(20) & \instancia_regW|ALUOutW\(19)
& \instancia_regW|ALUOutW\(18) & \instancia_regW|ALUOutW\(17) & \instancia_regW|ALUOutW\(16) & \instancia_regW|ALUOutW\(15) & \instancia_regW|ALUOutW\(14) & \instancia_regW|ALUOutW\(13) & \instancia_regW|ALUOutW\(12) & \instancia_regW|ALUOutW\(11)
& \instancia_regW|ALUOutW\(10) & \instancia_regW|ALUOutW\(9) & \instancia_regW|ALUOutW\(8) & \instancia_regW|ALUOutW\(7) & \instancia_regW|ALUOutW\(6) & \instancia_regW|ALUOutW\(5) & \instancia_regW|ALUOutW\(4) & \instancia_regW|ALUOutW\(3)
& \instancia_regW|ALUOutW\(2) & \instancia_regW|ALUOutW\(1) & \instancia_regW|ALUOutW\(0));

\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\instancia_regW|WriteRegW\(4) & \instancia_regW|WriteRegW\(3) & \instancia_regW|WriteRegW\(2) & \instancia_regW|WriteRegW\(1) & \instancia_regW|WriteRegW\(0));

\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\RD~combout\(25) & \RD~combout\(24) & \RD~combout\(23) & \RD~combout\(22) & \RD~combout\(21));

\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a1\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a2\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a3\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a4\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a5\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a6\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a7\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a8\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a9\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a10\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a11\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a12\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a13\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a14\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a15\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a16\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a17\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a18\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a19\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a20\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a21\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a22\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a23\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a24\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a25\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a26\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a27\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a28\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a29\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a30\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a31\ <= \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);
\ALT_INV_clock~clkctrl_outclk\ <= NOT \clock~clkctrl_outclk\;

-- Location: M4K_X55_Y35
\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processador.ram0_register_file_87c776fc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "register_file:instancia_reg_file|altsyncram:registers_rtl_1|altsyncram_bqh1:auto_generated|ALTSYNCRAM",
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
	portawe => \instancia_regW|RegWriteW~regout\,
	portbrewe => VCC,
	clk0 => \ALT_INV_clock~clkctrl_outclk\,
	clk1 => \clock~clkctrl_outclk\,
	ena0 => \instancia_regW|RegWriteW~regout\,
	portadatain => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M4K_X55_Y36
\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processador.ram0_register_file_87c776fc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "register_file:instancia_reg_file|altsyncram:registers_rtl_0|altsyncram_bqh1:auto_generated|ALTSYNCRAM",
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
	portawe => \instancia_regW|RegWriteW~regout\,
	portbrewe => VCC,
	clk0 => \ALT_INV_clock~clkctrl_outclk\,
	clk1 => \clock~clkctrl_outclk\,
	ena0 => \instancia_regW|RegWriteW~regout\,
	portadatain => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X51_Y37_N12
\instancia_ALU|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~12_combout\ = ((\instancia_mux_imm|outMux[6]~14_combout\ $ (\instancia_mux_ForwardA|outMux[6]~6_combout\ $ (!\instancia_ALU|Add1~11\)))) # (GND)
-- \instancia_ALU|Add1~13\ = CARRY((\instancia_mux_imm|outMux[6]~14_combout\ & ((\instancia_mux_ForwardA|outMux[6]~6_combout\) # (!\instancia_ALU|Add1~11\))) # (!\instancia_mux_imm|outMux[6]~14_combout\ & (\instancia_mux_ForwardA|outMux[6]~6_combout\ & 
-- !\instancia_ALU|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[6]~14_combout\,
	datab => \instancia_mux_ForwardA|outMux[6]~6_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~11\,
	combout => \instancia_ALU|Add1~12_combout\,
	cout => \instancia_ALU|Add1~13\);

-- Location: LCCOMB_X53_Y37_N14
\instancia_ALU|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~14_combout\ = (\instancia_mux_imm|outMux[7]~16_combout\ & ((\instancia_mux_ForwardA|outMux[7]~7_combout\ & (!\instancia_ALU|Add0~13\)) # (!\instancia_mux_ForwardA|outMux[7]~7_combout\ & ((\instancia_ALU|Add0~13\) # (GND))))) # 
-- (!\instancia_mux_imm|outMux[7]~16_combout\ & ((\instancia_mux_ForwardA|outMux[7]~7_combout\ & (\instancia_ALU|Add0~13\ & VCC)) # (!\instancia_mux_ForwardA|outMux[7]~7_combout\ & (!\instancia_ALU|Add0~13\))))
-- \instancia_ALU|Add0~15\ = CARRY((\instancia_mux_imm|outMux[7]~16_combout\ & ((!\instancia_ALU|Add0~13\) # (!\instancia_mux_ForwardA|outMux[7]~7_combout\))) # (!\instancia_mux_imm|outMux[7]~16_combout\ & (!\instancia_mux_ForwardA|outMux[7]~7_combout\ & 
-- !\instancia_ALU|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[7]~16_combout\,
	datab => \instancia_mux_ForwardA|outMux[7]~7_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~13\,
	combout => \instancia_ALU|Add0~14_combout\,
	cout => \instancia_ALU|Add0~15\);

-- Location: LCFF_X51_Y35_N21
\instancia_regE|RsE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regE|RsE[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|RsE\(1));

-- Location: LCFF_X51_Y35_N15
\instancia_regE|RsE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regE|RsE[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|RsE\(2));

-- Location: LCCOMB_X51_Y35_N0
\instancia_Hazard|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Hazard|Equal0~0_combout\ = (!\instancia_regE|RsE\(1) & (!\instancia_regE|RsE\(0) & (!\instancia_regE|RsE\(2) & !\instancia_regE|RsE\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|RsE\(1),
	datab => \instancia_regE|RsE\(0),
	datac => \instancia_regE|RsE\(2),
	datad => \instancia_regE|RsE\(3),
	combout => \instancia_Hazard|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y35_N6
\instancia_ALU|ALUOut[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[1]~2_combout\ = (\instancia_mux_ForwardA|outMux[1]~1_combout\ & ((\instancia_regE|ALUControlE\(0)) # ((\instancia_mux_imm|outMux[1]~4_combout\ & !\instancia_regE|ALUControlE\(1))))) # (!\instancia_mux_ForwardA|outMux[1]~1_combout\ & 
-- (\instancia_regE|ALUControlE\(0) & ((\instancia_mux_imm|outMux[1]~4_combout\) # (\instancia_regE|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[1]~1_combout\,
	datab => \instancia_regE|ALUControlE\(0),
	datac => \instancia_mux_imm|outMux[1]~4_combout\,
	datad => \instancia_regE|ALUControlE\(1),
	combout => \instancia_ALU|ALUOut[1]~2_combout\);

-- Location: LCCOMB_X52_Y37_N4
\instancia_mux_ForwardA|outMux[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[3]~3_combout\ = (\instancia_Hazard|FowardAE~combout\ & ((\instancia_regW|ALUOutW\(3)))) # (!\instancia_Hazard|FowardAE~combout\ & (\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a3\,
	datab => \instancia_regW|ALUOutW\(3),
	datac => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[3]~3_combout\);

-- Location: LCCOMB_X52_Y37_N28
\instancia_ALU|ALUOut[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[3]~6_combout\ = (\instancia_regE|ALUControlE\(0) & ((\instancia_mux_imm|outMux[3]~8_combout\) # ((\instancia_mux_ForwardA|outMux[3]~3_combout\) # (\instancia_regE|ALUControlE\(1))))) # (!\instancia_regE|ALUControlE\(0) & 
-- (\instancia_mux_imm|outMux[3]~8_combout\ & (\instancia_mux_ForwardA|outMux[3]~3_combout\ & !\instancia_regE|ALUControlE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(0),
	datab => \instancia_mux_imm|outMux[3]~8_combout\,
	datac => \instancia_mux_ForwardA|outMux[3]~3_combout\,
	datad => \instancia_regE|ALUControlE\(1),
	combout => \instancia_ALU|ALUOut[3]~6_combout\);

-- Location: LCCOMB_X54_Y37_N10
\instancia_ALU|ALUOut[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[11]~22_combout\ = (\instancia_regE|ALUControlE\(0) & ((\instancia_mux_ForwardA|outMux[11]~11_combout\) # ((\instancia_regE|ALUControlE\(1)) # (\instancia_mux_imm|outMux[11]~24_combout\)))) # (!\instancia_regE|ALUControlE\(0) & 
-- (\instancia_mux_ForwardA|outMux[11]~11_combout\ & (!\instancia_regE|ALUControlE\(1) & \instancia_mux_imm|outMux[11]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(0),
	datab => \instancia_mux_ForwardA|outMux[11]~11_combout\,
	datac => \instancia_regE|ALUControlE\(1),
	datad => \instancia_mux_imm|outMux[11]~24_combout\,
	combout => \instancia_ALU|ALUOut[11]~22_combout\);

-- Location: LCCOMB_X52_Y35_N12
\instancia_mux_ForwardA|outMux[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[13]~13_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(13))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(13),
	datab => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a13\,
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[13]~13_combout\);

-- Location: LCCOMB_X54_Y35_N10
\instancia_ALU|ALUOut[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[13]~26_combout\ = (\instancia_mux_imm|outMux[13]~28_combout\ & ((\instancia_regE|ALUControlE\(0)) # ((!\instancia_regE|ALUControlE\(1) & \instancia_mux_ForwardA|outMux[13]~13_combout\)))) # (!\instancia_mux_imm|outMux[13]~28_combout\ 
-- & (\instancia_regE|ALUControlE\(0) & ((\instancia_regE|ALUControlE\(1)) # (\instancia_mux_ForwardA|outMux[13]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[13]~28_combout\,
	datab => \instancia_regE|ALUControlE\(1),
	datac => \instancia_regE|ALUControlE\(0),
	datad => \instancia_mux_ForwardA|outMux[13]~13_combout\,
	combout => \instancia_ALU|ALUOut[13]~26_combout\);

-- Location: LCCOMB_X51_Y35_N12
\instancia_mux_ForwardA|outMux[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[14]~14_combout\ = (\instancia_Hazard|FowardAE~combout\ & ((\instancia_regW|ALUOutW\(14)))) # (!\instancia_Hazard|FowardAE~combout\ & (\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a14\,
	datab => \instancia_Hazard|FowardAE~combout\,
	datad => \instancia_regW|ALUOutW\(14),
	combout => \instancia_mux_ForwardA|outMux[14]~14_combout\);

-- Location: LCCOMB_X54_Y36_N16
\instancia_ALU|ALUOut[15]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[15]~30_combout\ = (\instancia_regE|ALUControlE\(0) & ((\instancia_mux_ForwardA|outMux[15]~15_combout\) # ((\instancia_regE|ALUControlE\(1)) # (\instancia_mux_imm|outMux[15]~32_combout\)))) # (!\instancia_regE|ALUControlE\(0) & 
-- (\instancia_mux_ForwardA|outMux[15]~15_combout\ & (!\instancia_regE|ALUControlE\(1) & \instancia_mux_imm|outMux[15]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(0),
	datab => \instancia_mux_ForwardA|outMux[15]~15_combout\,
	datac => \instancia_regE|ALUControlE\(1),
	datad => \instancia_mux_imm|outMux[15]~32_combout\,
	combout => \instancia_ALU|ALUOut[15]~30_combout\);

-- Location: LCCOMB_X50_Y36_N6
\instancia_mux_imm|outMux[17]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[17]~35_combout\ = (\instancia_regE|ALUSrcE~regout\ & (((\instancia_regE|SignImmE\(15))))) # (!\instancia_regE|ALUSrcE~regout\ & (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a17\ & 
-- ((!\instancia_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a17\,
	datab => \instancia_regE|SignImmE\(15),
	datac => \instancia_regE|ALUSrcE~regout\,
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[17]~35_combout\);

-- Location: LCCOMB_X50_Y36_N12
\instancia_mux_imm|outMux[17]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[17]~36_combout\ = (\instancia_mux_imm|outMux[17]~35_combout\) # ((\instancia_regW|ALUOutW\(17) & (\instancia_Hazard|FowardBE~combout\ & !\instancia_regE|ALUSrcE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(17),
	datab => \instancia_Hazard|FowardBE~combout\,
	datac => \instancia_regE|ALUSrcE~regout\,
	datad => \instancia_mux_imm|outMux[17]~35_combout\,
	combout => \instancia_mux_imm|outMux[17]~36_combout\);

-- Location: LCCOMB_X49_Y36_N12
\instancia_ALU|ALUOut[17]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[17]~34_combout\ = (\instancia_regE|ALUControlE\(0) & ((\instancia_regE|ALUControlE\(1)) # ((\instancia_mux_ForwardA|outMux[17]~17_combout\) # (\instancia_mux_imm|outMux[17]~36_combout\)))) # (!\instancia_regE|ALUControlE\(0) & 
-- (!\instancia_regE|ALUControlE\(1) & (\instancia_mux_ForwardA|outMux[17]~17_combout\ & \instancia_mux_imm|outMux[17]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(0),
	datab => \instancia_regE|ALUControlE\(1),
	datac => \instancia_mux_ForwardA|outMux[17]~17_combout\,
	datad => \instancia_mux_imm|outMux[17]~36_combout\,
	combout => \instancia_ALU|ALUOut[17]~34_combout\);

-- Location: LCCOMB_X50_Y36_N4
\instancia_mux_imm|outMux[18]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[18]~37_combout\ = (\instancia_regE|ALUSrcE~regout\ & (\instancia_regE|SignImmE\(15))) # (!\instancia_regE|ALUSrcE~regout\ & (((\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a18\ & 
-- !\instancia_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|SignImmE\(15),
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a18\,
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[18]~37_combout\);

-- Location: LCCOMB_X50_Y36_N10
\instancia_mux_imm|outMux[18]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[18]~38_combout\ = (\instancia_mux_imm|outMux[18]~37_combout\) # ((!\instancia_regE|ALUSrcE~regout\ & (\instancia_regW|ALUOutW\(18) & \instancia_Hazard|FowardBE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_regW|ALUOutW\(18),
	datac => \instancia_mux_imm|outMux[18]~37_combout\,
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[18]~38_combout\);

-- Location: LCCOMB_X49_Y36_N14
\instancia_ALU|ALUOut[18]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[18]~36_combout\ = (\instancia_regE|ALUControlE\(0) & ((\instancia_regE|ALUControlE\(1)) # ((\instancia_mux_imm|outMux[18]~38_combout\) # (\instancia_mux_ForwardA|outMux[18]~18_combout\)))) # (!\instancia_regE|ALUControlE\(0) & 
-- (!\instancia_regE|ALUControlE\(1) & (\instancia_mux_imm|outMux[18]~38_combout\ & \instancia_mux_ForwardA|outMux[18]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(0),
	datab => \instancia_regE|ALUControlE\(1),
	datac => \instancia_mux_imm|outMux[18]~38_combout\,
	datad => \instancia_mux_ForwardA|outMux[18]~18_combout\,
	combout => \instancia_ALU|ALUOut[18]~36_combout\);

-- Location: LCCOMB_X49_Y36_N20
\instancia_mux_imm|outMux[19]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[19]~39_combout\ = (\instancia_regE|ALUSrcE~regout\ & (((\instancia_regE|SignImmE\(15))))) # (!\instancia_regE|ALUSrcE~regout\ & (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a19\ & 
-- ((!\instancia_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a19\,
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_regE|SignImmE\(15),
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[19]~39_combout\);

-- Location: LCCOMB_X50_Y36_N14
\instancia_mux_imm|outMux[19]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[19]~40_combout\ = (\instancia_mux_imm|outMux[19]~39_combout\) # ((\instancia_regW|ALUOutW\(19) & (\instancia_Hazard|FowardBE~combout\ & !\instancia_regE|ALUSrcE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(19),
	datab => \instancia_Hazard|FowardBE~combout\,
	datac => \instancia_mux_imm|outMux[19]~39_combout\,
	datad => \instancia_regE|ALUSrcE~regout\,
	combout => \instancia_mux_imm|outMux[19]~40_combout\);

-- Location: LCCOMB_X49_Y36_N30
\instancia_ALU|ALUOut[19]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[19]~38_combout\ = (\instancia_mux_ForwardA|outMux[19]~19_combout\ & ((\instancia_regE|ALUControlE\(0)) # ((\instancia_mux_imm|outMux[19]~40_combout\ & !\instancia_regE|ALUControlE\(1))))) # 
-- (!\instancia_mux_ForwardA|outMux[19]~19_combout\ & (\instancia_regE|ALUControlE\(0) & ((\instancia_mux_imm|outMux[19]~40_combout\) # (\instancia_regE|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[19]~19_combout\,
	datab => \instancia_regE|ALUControlE\(0),
	datac => \instancia_mux_imm|outMux[19]~40_combout\,
	datad => \instancia_regE|ALUControlE\(1),
	combout => \instancia_ALU|ALUOut[19]~38_combout\);

-- Location: LCCOMB_X49_Y36_N24
\instancia_ALU|ALUOut[21]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[21]~42_combout\ = (\instancia_regE|ALUControlE\(0) & ((\instancia_regE|ALUControlE\(1)) # ((\instancia_mux_imm|outMux[21]~44_combout\) # (\instancia_mux_ForwardA|outMux[21]~21_combout\)))) # (!\instancia_regE|ALUControlE\(0) & 
-- (!\instancia_regE|ALUControlE\(1) & (\instancia_mux_imm|outMux[21]~44_combout\ & \instancia_mux_ForwardA|outMux[21]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(0),
	datab => \instancia_regE|ALUControlE\(1),
	datac => \instancia_mux_imm|outMux[21]~44_combout\,
	datad => \instancia_mux_ForwardA|outMux[21]~21_combout\,
	combout => \instancia_ALU|ALUOut[21]~42_combout\);

-- Location: LCCOMB_X52_Y38_N12
\instancia_mux_imm|outMux[26]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[26]~53_combout\ = (!\instancia_regE|ALUSrcE~regout\ & ((\instancia_Hazard|FowardBE~combout\ & ((\instancia_regW|ALUOutW\(26)))) # (!\instancia_Hazard|FowardBE~combout\ & 
-- (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a26\,
	datac => \instancia_regW|ALUOutW\(26),
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[26]~53_combout\);

-- Location: LCCOMB_X54_Y36_N26
\instancia_mux_ForwardA|outMux[30]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[30]~30_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(30))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(30),
	datab => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a30\,
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[30]~30_combout\);

-- Location: LCCOMB_X54_Y36_N24
\instancia_ALU|ALUOut[30]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[30]~60_combout\ = (\instancia_regE|ALUControlE\(0) & ((\instancia_mux_imm|outMux[30]~62_combout\) # ((\instancia_regE|ALUControlE\(1)) # (\instancia_mux_ForwardA|outMux[30]~30_combout\)))) # (!\instancia_regE|ALUControlE\(0) & 
-- (\instancia_mux_imm|outMux[30]~62_combout\ & (!\instancia_regE|ALUControlE\(1) & \instancia_mux_ForwardA|outMux[30]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(0),
	datab => \instancia_mux_imm|outMux[30]~62_combout\,
	datac => \instancia_regE|ALUControlE\(1),
	datad => \instancia_mux_ForwardA|outMux[30]~30_combout\,
	combout => \instancia_ALU|ALUOut[30]~60_combout\);

-- Location: LCCOMB_X49_Y36_N28
\instancia_mux_imm|outMux[31]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[31]~63_combout\ = (!\instancia_regE|ALUSrcE~regout\ & ((\instancia_Hazard|FowardBE~combout\ & (\instancia_regW|ALUOutW\(31))) # (!\instancia_Hazard|FowardBE~combout\ & 
-- ((\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a31\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(31),
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a31\,
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[31]~63_combout\);

-- Location: LCCOMB_X49_Y36_N22
\instancia_mux_imm|outMux[31]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[31]~64_combout\ = (\instancia_mux_imm|outMux[31]~63_combout\) # ((\instancia_regE|SignImmE\(15) & \instancia_regE|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|SignImmE\(15),
	datab => \instancia_regE|ALUSrcE~regout\,
	datad => \instancia_mux_imm|outMux[31]~63_combout\,
	combout => \instancia_mux_imm|outMux[31]~64_combout\);

-- Location: LCFF_X53_Y34_N11
\instancia_regD|InstrD[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regD|InstrD[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(30));

-- Location: LCFF_X52_Y35_N13
\instancia_regD|InstrD[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD~combout\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(22));

-- Location: LCFF_X51_Y35_N31
\instancia_regD|InstrD[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regD|InstrD[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(23));

-- Location: LCCOMB_X50_Y37_N28
\instancia_control|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_control|Equal4~0_combout\ = (\instancia_regD|InstrD\(5) & (!\instancia_regD|InstrD\(3) & !\instancia_regD|InstrD\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regD|InstrD\(5),
	datac => \instancia_regD|InstrD\(3),
	datad => \instancia_regD|InstrD\(4),
	combout => \instancia_control|Equal4~0_combout\);

-- Location: LCCOMB_X53_Y34_N10
\instancia_regD|InstrD[30]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regD|InstrD[30]~2_combout\ = !\RD~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RD~combout\(30),
	combout => \instancia_regD|InstrD[30]~2_combout\);

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[30]~I\ : cycloneii_io
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
	padio => ww_RD(30),
	combout => \RD~combout\(30));

-- Location: LCCOMB_X51_Y35_N20
\instancia_regE|RsE[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regE|RsE[1]~feeder_combout\ = \instancia_regD|InstrD\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_regD|InstrD\(22),
	combout => \instancia_regE|RsE[1]~feeder_combout\);

-- Location: LCCOMB_X51_Y35_N14
\instancia_regE|RsE[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regE|RsE[2]~feeder_combout\ = \instancia_regD|InstrD\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_regD|InstrD\(23),
	combout => \instancia_regE|RsE[2]~feeder_combout\);

-- Location: LCCOMB_X51_Y35_N30
\instancia_regD|InstrD[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regD|InstrD[23]~feeder_combout\ = \RD~combout\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD~combout\(23),
	combout => \instancia_regD|InstrD[23]~feeder_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y48_N0
\instancia_regPC|saida[2]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[2]~87_combout\ = !\instancia_regPC|saida\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_regPC|saida\(2),
	combout => \instancia_regPC|saida[2]~87_combout\);

-- Location: LCFF_X1_Y48_N1
\instancia_regPC|saida[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[2]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(2));

-- Location: LCCOMB_X1_Y48_N4
\instancia_regPC|saida[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[3]~29_combout\ = (\instancia_regPC|saida\(2) & (\instancia_regPC|saida\(3) $ (VCC))) # (!\instancia_regPC|saida\(2) & (\instancia_regPC|saida\(3) & VCC))
-- \instancia_regPC|saida[3]~30\ = CARRY((\instancia_regPC|saida\(2) & \instancia_regPC|saida\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regPC|saida\(2),
	datab => \instancia_regPC|saida\(3),
	datad => VCC,
	combout => \instancia_regPC|saida[3]~29_combout\,
	cout => \instancia_regPC|saida[3]~30\);

-- Location: LCFF_X1_Y48_N5
\instancia_regPC|saida[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(3));

-- Location: LCCOMB_X1_Y48_N6
\instancia_regPC|saida[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[4]~31_combout\ = (\instancia_regPC|saida\(4) & (!\instancia_regPC|saida[3]~30\)) # (!\instancia_regPC|saida\(4) & ((\instancia_regPC|saida[3]~30\) # (GND)))
-- \instancia_regPC|saida[4]~32\ = CARRY((!\instancia_regPC|saida[3]~30\) # (!\instancia_regPC|saida\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regPC|saida\(4),
	datad => VCC,
	cin => \instancia_regPC|saida[3]~30\,
	combout => \instancia_regPC|saida[4]~31_combout\,
	cout => \instancia_regPC|saida[4]~32\);

-- Location: LCFF_X1_Y48_N7
\instancia_regPC|saida[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(4));

-- Location: LCCOMB_X1_Y48_N8
\instancia_regPC|saida[5]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[5]~33_combout\ = (\instancia_regPC|saida\(5) & (\instancia_regPC|saida[4]~32\ $ (GND))) # (!\instancia_regPC|saida\(5) & (!\instancia_regPC|saida[4]~32\ & VCC))
-- \instancia_regPC|saida[5]~34\ = CARRY((\instancia_regPC|saida\(5) & !\instancia_regPC|saida[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regPC|saida\(5),
	datad => VCC,
	cin => \instancia_regPC|saida[4]~32\,
	combout => \instancia_regPC|saida[5]~33_combout\,
	cout => \instancia_regPC|saida[5]~34\);

-- Location: LCFF_X1_Y48_N9
\instancia_regPC|saida[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(5));

-- Location: LCCOMB_X1_Y48_N10
\instancia_regPC|saida[6]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[6]~35_combout\ = (\instancia_regPC|saida\(6) & (!\instancia_regPC|saida[5]~34\)) # (!\instancia_regPC|saida\(6) & ((\instancia_regPC|saida[5]~34\) # (GND)))
-- \instancia_regPC|saida[6]~36\ = CARRY((!\instancia_regPC|saida[5]~34\) # (!\instancia_regPC|saida\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regPC|saida\(6),
	datad => VCC,
	cin => \instancia_regPC|saida[5]~34\,
	combout => \instancia_regPC|saida[6]~35_combout\,
	cout => \instancia_regPC|saida[6]~36\);

-- Location: LCFF_X1_Y48_N11
\instancia_regPC|saida[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[6]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(6));

-- Location: LCCOMB_X1_Y48_N12
\instancia_regPC|saida[7]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[7]~37_combout\ = (\instancia_regPC|saida\(7) & (\instancia_regPC|saida[6]~36\ $ (GND))) # (!\instancia_regPC|saida\(7) & (!\instancia_regPC|saida[6]~36\ & VCC))
-- \instancia_regPC|saida[7]~38\ = CARRY((\instancia_regPC|saida\(7) & !\instancia_regPC|saida[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regPC|saida\(7),
	datad => VCC,
	cin => \instancia_regPC|saida[6]~36\,
	combout => \instancia_regPC|saida[7]~37_combout\,
	cout => \instancia_regPC|saida[7]~38\);

-- Location: LCFF_X1_Y48_N13
\instancia_regPC|saida[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(7));

-- Location: LCCOMB_X1_Y48_N14
\instancia_regPC|saida[8]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[8]~39_combout\ = (\instancia_regPC|saida\(8) & (!\instancia_regPC|saida[7]~38\)) # (!\instancia_regPC|saida\(8) & ((\instancia_regPC|saida[7]~38\) # (GND)))
-- \instancia_regPC|saida[8]~40\ = CARRY((!\instancia_regPC|saida[7]~38\) # (!\instancia_regPC|saida\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regPC|saida\(8),
	datad => VCC,
	cin => \instancia_regPC|saida[7]~38\,
	combout => \instancia_regPC|saida[8]~39_combout\,
	cout => \instancia_regPC|saida[8]~40\);

-- Location: LCFF_X1_Y48_N15
\instancia_regPC|saida[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[8]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(8));

-- Location: LCCOMB_X1_Y48_N16
\instancia_regPC|saida[9]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[9]~41_combout\ = (\instancia_regPC|saida\(9) & (\instancia_regPC|saida[8]~40\ $ (GND))) # (!\instancia_regPC|saida\(9) & (!\instancia_regPC|saida[8]~40\ & VCC))
-- \instancia_regPC|saida[9]~42\ = CARRY((\instancia_regPC|saida\(9) & !\instancia_regPC|saida[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regPC|saida\(9),
	datad => VCC,
	cin => \instancia_regPC|saida[8]~40\,
	combout => \instancia_regPC|saida[9]~41_combout\,
	cout => \instancia_regPC|saida[9]~42\);

-- Location: LCFF_X1_Y48_N17
\instancia_regPC|saida[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(9));

-- Location: LCCOMB_X1_Y48_N18
\instancia_regPC|saida[10]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[10]~43_combout\ = (\instancia_regPC|saida\(10) & (!\instancia_regPC|saida[9]~42\)) # (!\instancia_regPC|saida\(10) & ((\instancia_regPC|saida[9]~42\) # (GND)))
-- \instancia_regPC|saida[10]~44\ = CARRY((!\instancia_regPC|saida[9]~42\) # (!\instancia_regPC|saida\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regPC|saida\(10),
	datad => VCC,
	cin => \instancia_regPC|saida[9]~42\,
	combout => \instancia_regPC|saida[10]~43_combout\,
	cout => \instancia_regPC|saida[10]~44\);

-- Location: LCFF_X1_Y48_N19
\instancia_regPC|saida[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(10));

-- Location: LCCOMB_X1_Y48_N20
\instancia_regPC|saida[11]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[11]~45_combout\ = (\instancia_regPC|saida\(11) & (\instancia_regPC|saida[10]~44\ $ (GND))) # (!\instancia_regPC|saida\(11) & (!\instancia_regPC|saida[10]~44\ & VCC))
-- \instancia_regPC|saida[11]~46\ = CARRY((\instancia_regPC|saida\(11) & !\instancia_regPC|saida[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regPC|saida\(11),
	datad => VCC,
	cin => \instancia_regPC|saida[10]~44\,
	combout => \instancia_regPC|saida[11]~45_combout\,
	cout => \instancia_regPC|saida[11]~46\);

-- Location: LCFF_X1_Y48_N21
\instancia_regPC|saida[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[11]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(11));

-- Location: LCCOMB_X1_Y48_N22
\instancia_regPC|saida[12]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[12]~47_combout\ = (\instancia_regPC|saida\(12) & (!\instancia_regPC|saida[11]~46\)) # (!\instancia_regPC|saida\(12) & ((\instancia_regPC|saida[11]~46\) # (GND)))
-- \instancia_regPC|saida[12]~48\ = CARRY((!\instancia_regPC|saida[11]~46\) # (!\instancia_regPC|saida\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regPC|saida\(12),
	datad => VCC,
	cin => \instancia_regPC|saida[11]~46\,
	combout => \instancia_regPC|saida[12]~47_combout\,
	cout => \instancia_regPC|saida[12]~48\);

-- Location: LCFF_X1_Y48_N23
\instancia_regPC|saida[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(12));

-- Location: LCCOMB_X1_Y48_N24
\instancia_regPC|saida[13]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[13]~49_combout\ = (\instancia_regPC|saida\(13) & (\instancia_regPC|saida[12]~48\ $ (GND))) # (!\instancia_regPC|saida\(13) & (!\instancia_regPC|saida[12]~48\ & VCC))
-- \instancia_regPC|saida[13]~50\ = CARRY((\instancia_regPC|saida\(13) & !\instancia_regPC|saida[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regPC|saida\(13),
	datad => VCC,
	cin => \instancia_regPC|saida[12]~48\,
	combout => \instancia_regPC|saida[13]~49_combout\,
	cout => \instancia_regPC|saida[13]~50\);

-- Location: LCFF_X1_Y48_N25
\instancia_regPC|saida[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[13]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(13));

-- Location: LCCOMB_X1_Y48_N26
\instancia_regPC|saida[14]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[14]~51_combout\ = (\instancia_regPC|saida\(14) & (!\instancia_regPC|saida[13]~50\)) # (!\instancia_regPC|saida\(14) & ((\instancia_regPC|saida[13]~50\) # (GND)))
-- \instancia_regPC|saida[14]~52\ = CARRY((!\instancia_regPC|saida[13]~50\) # (!\instancia_regPC|saida\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regPC|saida\(14),
	datad => VCC,
	cin => \instancia_regPC|saida[13]~50\,
	combout => \instancia_regPC|saida[14]~51_combout\,
	cout => \instancia_regPC|saida[14]~52\);

-- Location: LCFF_X1_Y48_N27
\instancia_regPC|saida[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[14]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(14));

-- Location: LCCOMB_X1_Y48_N28
\instancia_regPC|saida[15]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[15]~53_combout\ = (\instancia_regPC|saida\(15) & (\instancia_regPC|saida[14]~52\ $ (GND))) # (!\instancia_regPC|saida\(15) & (!\instancia_regPC|saida[14]~52\ & VCC))
-- \instancia_regPC|saida[15]~54\ = CARRY((\instancia_regPC|saida\(15) & !\instancia_regPC|saida[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regPC|saida\(15),
	datad => VCC,
	cin => \instancia_regPC|saida[14]~52\,
	combout => \instancia_regPC|saida[15]~53_combout\,
	cout => \instancia_regPC|saida[15]~54\);

-- Location: LCFF_X1_Y48_N29
\instancia_regPC|saida[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[15]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(15));

-- Location: LCCOMB_X1_Y48_N30
\instancia_regPC|saida[16]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[16]~55_combout\ = (\instancia_regPC|saida\(16) & (!\instancia_regPC|saida[15]~54\)) # (!\instancia_regPC|saida\(16) & ((\instancia_regPC|saida[15]~54\) # (GND)))
-- \instancia_regPC|saida[16]~56\ = CARRY((!\instancia_regPC|saida[15]~54\) # (!\instancia_regPC|saida\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regPC|saida\(16),
	datad => VCC,
	cin => \instancia_regPC|saida[15]~54\,
	combout => \instancia_regPC|saida[16]~55_combout\,
	cout => \instancia_regPC|saida[16]~56\);

-- Location: LCFF_X1_Y48_N31
\instancia_regPC|saida[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[16]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(16));

-- Location: LCCOMB_X1_Y47_N0
\instancia_regPC|saida[17]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[17]~57_combout\ = (\instancia_regPC|saida\(17) & (\instancia_regPC|saida[16]~56\ $ (GND))) # (!\instancia_regPC|saida\(17) & (!\instancia_regPC|saida[16]~56\ & VCC))
-- \instancia_regPC|saida[17]~58\ = CARRY((\instancia_regPC|saida\(17) & !\instancia_regPC|saida[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regPC|saida\(17),
	datad => VCC,
	cin => \instancia_regPC|saida[16]~56\,
	combout => \instancia_regPC|saida[17]~57_combout\,
	cout => \instancia_regPC|saida[17]~58\);

-- Location: LCFF_X1_Y47_N1
\instancia_regPC|saida[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[17]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(17));

-- Location: LCCOMB_X1_Y47_N2
\instancia_regPC|saida[18]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[18]~59_combout\ = (\instancia_regPC|saida\(18) & (!\instancia_regPC|saida[17]~58\)) # (!\instancia_regPC|saida\(18) & ((\instancia_regPC|saida[17]~58\) # (GND)))
-- \instancia_regPC|saida[18]~60\ = CARRY((!\instancia_regPC|saida[17]~58\) # (!\instancia_regPC|saida\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regPC|saida\(18),
	datad => VCC,
	cin => \instancia_regPC|saida[17]~58\,
	combout => \instancia_regPC|saida[18]~59_combout\,
	cout => \instancia_regPC|saida[18]~60\);

-- Location: LCFF_X1_Y47_N3
\instancia_regPC|saida[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[18]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(18));

-- Location: LCCOMB_X1_Y47_N4
\instancia_regPC|saida[19]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[19]~61_combout\ = (\instancia_regPC|saida\(19) & (\instancia_regPC|saida[18]~60\ $ (GND))) # (!\instancia_regPC|saida\(19) & (!\instancia_regPC|saida[18]~60\ & VCC))
-- \instancia_regPC|saida[19]~62\ = CARRY((\instancia_regPC|saida\(19) & !\instancia_regPC|saida[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regPC|saida\(19),
	datad => VCC,
	cin => \instancia_regPC|saida[18]~60\,
	combout => \instancia_regPC|saida[19]~61_combout\,
	cout => \instancia_regPC|saida[19]~62\);

-- Location: LCFF_X1_Y47_N5
\instancia_regPC|saida[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[19]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(19));

-- Location: LCCOMB_X1_Y47_N6
\instancia_regPC|saida[20]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[20]~63_combout\ = (\instancia_regPC|saida\(20) & (!\instancia_regPC|saida[19]~62\)) # (!\instancia_regPC|saida\(20) & ((\instancia_regPC|saida[19]~62\) # (GND)))
-- \instancia_regPC|saida[20]~64\ = CARRY((!\instancia_regPC|saida[19]~62\) # (!\instancia_regPC|saida\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regPC|saida\(20),
	datad => VCC,
	cin => \instancia_regPC|saida[19]~62\,
	combout => \instancia_regPC|saida[20]~63_combout\,
	cout => \instancia_regPC|saida[20]~64\);

-- Location: LCFF_X1_Y47_N7
\instancia_regPC|saida[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[20]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(20));

-- Location: LCCOMB_X1_Y47_N8
\instancia_regPC|saida[21]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[21]~65_combout\ = (\instancia_regPC|saida\(21) & (\instancia_regPC|saida[20]~64\ $ (GND))) # (!\instancia_regPC|saida\(21) & (!\instancia_regPC|saida[20]~64\ & VCC))
-- \instancia_regPC|saida[21]~66\ = CARRY((\instancia_regPC|saida\(21) & !\instancia_regPC|saida[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regPC|saida\(21),
	datad => VCC,
	cin => \instancia_regPC|saida[20]~64\,
	combout => \instancia_regPC|saida[21]~65_combout\,
	cout => \instancia_regPC|saida[21]~66\);

-- Location: LCFF_X1_Y47_N9
\instancia_regPC|saida[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[21]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(21));

-- Location: LCCOMB_X1_Y47_N10
\instancia_regPC|saida[22]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[22]~67_combout\ = (\instancia_regPC|saida\(22) & (!\instancia_regPC|saida[21]~66\)) # (!\instancia_regPC|saida\(22) & ((\instancia_regPC|saida[21]~66\) # (GND)))
-- \instancia_regPC|saida[22]~68\ = CARRY((!\instancia_regPC|saida[21]~66\) # (!\instancia_regPC|saida\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regPC|saida\(22),
	datad => VCC,
	cin => \instancia_regPC|saida[21]~66\,
	combout => \instancia_regPC|saida[22]~67_combout\,
	cout => \instancia_regPC|saida[22]~68\);

-- Location: LCFF_X1_Y47_N11
\instancia_regPC|saida[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[22]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(22));

-- Location: LCCOMB_X1_Y47_N12
\instancia_regPC|saida[23]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[23]~69_combout\ = (\instancia_regPC|saida\(23) & (\instancia_regPC|saida[22]~68\ $ (GND))) # (!\instancia_regPC|saida\(23) & (!\instancia_regPC|saida[22]~68\ & VCC))
-- \instancia_regPC|saida[23]~70\ = CARRY((\instancia_regPC|saida\(23) & !\instancia_regPC|saida[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regPC|saida\(23),
	datad => VCC,
	cin => \instancia_regPC|saida[22]~68\,
	combout => \instancia_regPC|saida[23]~69_combout\,
	cout => \instancia_regPC|saida[23]~70\);

-- Location: LCFF_X1_Y47_N13
\instancia_regPC|saida[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[23]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(23));

-- Location: LCCOMB_X1_Y47_N14
\instancia_regPC|saida[24]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[24]~71_combout\ = (\instancia_regPC|saida\(24) & (!\instancia_regPC|saida[23]~70\)) # (!\instancia_regPC|saida\(24) & ((\instancia_regPC|saida[23]~70\) # (GND)))
-- \instancia_regPC|saida[24]~72\ = CARRY((!\instancia_regPC|saida[23]~70\) # (!\instancia_regPC|saida\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regPC|saida\(24),
	datad => VCC,
	cin => \instancia_regPC|saida[23]~70\,
	combout => \instancia_regPC|saida[24]~71_combout\,
	cout => \instancia_regPC|saida[24]~72\);

-- Location: LCFF_X1_Y47_N15
\instancia_regPC|saida[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[24]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(24));

-- Location: LCCOMB_X1_Y47_N16
\instancia_regPC|saida[25]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[25]~73_combout\ = (\instancia_regPC|saida\(25) & (\instancia_regPC|saida[24]~72\ $ (GND))) # (!\instancia_regPC|saida\(25) & (!\instancia_regPC|saida[24]~72\ & VCC))
-- \instancia_regPC|saida[25]~74\ = CARRY((\instancia_regPC|saida\(25) & !\instancia_regPC|saida[24]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regPC|saida\(25),
	datad => VCC,
	cin => \instancia_regPC|saida[24]~72\,
	combout => \instancia_regPC|saida[25]~73_combout\,
	cout => \instancia_regPC|saida[25]~74\);

-- Location: LCFF_X1_Y47_N17
\instancia_regPC|saida[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[25]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(25));

-- Location: LCCOMB_X1_Y47_N18
\instancia_regPC|saida[26]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[26]~75_combout\ = (\instancia_regPC|saida\(26) & (!\instancia_regPC|saida[25]~74\)) # (!\instancia_regPC|saida\(26) & ((\instancia_regPC|saida[25]~74\) # (GND)))
-- \instancia_regPC|saida[26]~76\ = CARRY((!\instancia_regPC|saida[25]~74\) # (!\instancia_regPC|saida\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regPC|saida\(26),
	datad => VCC,
	cin => \instancia_regPC|saida[25]~74\,
	combout => \instancia_regPC|saida[26]~75_combout\,
	cout => \instancia_regPC|saida[26]~76\);

-- Location: LCFF_X1_Y47_N19
\instancia_regPC|saida[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[26]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(26));

-- Location: LCCOMB_X1_Y47_N20
\instancia_regPC|saida[27]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[27]~77_combout\ = (\instancia_regPC|saida\(27) & (\instancia_regPC|saida[26]~76\ $ (GND))) # (!\instancia_regPC|saida\(27) & (!\instancia_regPC|saida[26]~76\ & VCC))
-- \instancia_regPC|saida[27]~78\ = CARRY((\instancia_regPC|saida\(27) & !\instancia_regPC|saida[26]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regPC|saida\(27),
	datad => VCC,
	cin => \instancia_regPC|saida[26]~76\,
	combout => \instancia_regPC|saida[27]~77_combout\,
	cout => \instancia_regPC|saida[27]~78\);

-- Location: LCFF_X1_Y47_N21
\instancia_regPC|saida[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[27]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(27));

-- Location: LCCOMB_X1_Y47_N22
\instancia_regPC|saida[28]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[28]~79_combout\ = (\instancia_regPC|saida\(28) & (!\instancia_regPC|saida[27]~78\)) # (!\instancia_regPC|saida\(28) & ((\instancia_regPC|saida[27]~78\) # (GND)))
-- \instancia_regPC|saida[28]~80\ = CARRY((!\instancia_regPC|saida[27]~78\) # (!\instancia_regPC|saida\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regPC|saida\(28),
	datad => VCC,
	cin => \instancia_regPC|saida[27]~78\,
	combout => \instancia_regPC|saida[28]~79_combout\,
	cout => \instancia_regPC|saida[28]~80\);

-- Location: LCFF_X1_Y47_N23
\instancia_regPC|saida[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[28]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(28));

-- Location: LCCOMB_X1_Y47_N24
\instancia_regPC|saida[29]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[29]~81_combout\ = (\instancia_regPC|saida\(29) & (\instancia_regPC|saida[28]~80\ $ (GND))) # (!\instancia_regPC|saida\(29) & (!\instancia_regPC|saida[28]~80\ & VCC))
-- \instancia_regPC|saida[29]~82\ = CARRY((\instancia_regPC|saida\(29) & !\instancia_regPC|saida[28]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regPC|saida\(29),
	datad => VCC,
	cin => \instancia_regPC|saida[28]~80\,
	combout => \instancia_regPC|saida[29]~81_combout\,
	cout => \instancia_regPC|saida[29]~82\);

-- Location: LCFF_X1_Y47_N25
\instancia_regPC|saida[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[29]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(29));

-- Location: LCCOMB_X1_Y47_N26
\instancia_regPC|saida[30]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[30]~83_combout\ = (\instancia_regPC|saida\(30) & (!\instancia_regPC|saida[29]~82\)) # (!\instancia_regPC|saida\(30) & ((\instancia_regPC|saida[29]~82\) # (GND)))
-- \instancia_regPC|saida[30]~84\ = CARRY((!\instancia_regPC|saida[29]~82\) # (!\instancia_regPC|saida\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regPC|saida\(30),
	datad => VCC,
	cin => \instancia_regPC|saida[29]~82\,
	combout => \instancia_regPC|saida[30]~83_combout\,
	cout => \instancia_regPC|saida[30]~84\);

-- Location: LCFF_X1_Y47_N27
\instancia_regPC|saida[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[30]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(30));

-- Location: LCCOMB_X1_Y47_N28
\instancia_regPC|saida[31]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regPC|saida[31]~85_combout\ = \instancia_regPC|saida[30]~84\ $ (!\instancia_regPC|saida\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \instancia_regPC|saida\(31),
	cin => \instancia_regPC|saida[30]~84\,
	combout => \instancia_regPC|saida[31]~85_combout\);

-- Location: LCFF_X1_Y47_N29
\instancia_regPC|saida[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regPC|saida[31]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regPC|saida\(31));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[26]~I\ : cycloneii_io
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
	padio => ww_RD(26),
	combout => \RD~combout\(26));

-- Location: LCCOMB_X53_Y34_N0
\instancia_regD|InstrD[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regD|InstrD[26]~feeder_combout\ = \RD~combout\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD~combout\(26),
	combout => \instancia_regD|InstrD[26]~feeder_combout\);

-- Location: LCFF_X53_Y34_N1
\instancia_regD|InstrD[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regD|InstrD[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(26));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[27]~I\ : cycloneii_io
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
	padio => ww_RD(27),
	combout => \RD~combout\(27));

-- Location: LCFF_X53_Y34_N23
\instancia_regD|InstrD[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD~combout\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(27));

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[28]~I\ : cycloneii_io
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
	padio => ww_RD(28),
	combout => \RD~combout\(28));

-- Location: LCCOMB_X53_Y34_N28
\instancia_regD|InstrD[28]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regD|InstrD[28]~1_combout\ = !\RD~combout\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD~combout\(28),
	combout => \instancia_regD|InstrD[28]~1_combout\);

-- Location: LCFF_X53_Y34_N29
\instancia_regD|InstrD[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regD|InstrD[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(28));

-- Location: LCCOMB_X53_Y34_N22
\instancia_control|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_control|Equal0~0_combout\ = (\instancia_regD|InstrD\(30) & (!\instancia_regD|InstrD\(26) & (!\instancia_regD|InstrD\(27) & \instancia_regD|InstrD\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regD|InstrD\(30),
	datab => \instancia_regD|InstrD\(26),
	datac => \instancia_regD|InstrD\(27),
	datad => \instancia_regD|InstrD\(28),
	combout => \instancia_control|Equal0~0_combout\);

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[31]~I\ : cycloneii_io
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
	padio => ww_RD(31),
	combout => \RD~combout\(31));

-- Location: LCCOMB_X53_Y34_N18
\instancia_regD|InstrD[31]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regD|InstrD[31]~0_combout\ = !\RD~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD~combout\(31),
	combout => \instancia_regD|InstrD[31]~0_combout\);

-- Location: LCFF_X53_Y34_N19
\instancia_regD|InstrD[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regD|InstrD[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(31));

-- Location: LCCOMB_X53_Y34_N12
\instancia_control|RegWrite\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_control|RegWrite~combout\ = (\instancia_control|Equal0~0_combout\ & \instancia_regD|InstrD\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_control|Equal0~0_combout\,
	datad => \instancia_regD|InstrD\(31),
	combout => \instancia_control|RegWrite~combout\);

-- Location: LCFF_X53_Y34_N13
\instancia_regE|RegWriteE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_control|RegWrite~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|RegWriteE~regout\);

-- Location: LCFF_X53_Y35_N19
\instancia_regW|RegWriteW\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regE|RegWriteE~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|RegWriteW~regout\);

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[29]~I\ : cycloneii_io
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
	padio => ww_RD(29),
	combout => \RD~combout\(29));

-- Location: LCCOMB_X53_Y34_N24
\instancia_regD|InstrD[29]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regD|InstrD[29]~3_combout\ = !\RD~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD~combout\(29),
	combout => \instancia_regD|InstrD[29]~3_combout\);

-- Location: LCFF_X53_Y34_N25
\instancia_regD|InstrD[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regD|InstrD[29]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(29));

-- Location: LCCOMB_X53_Y34_N6
\instancia_control|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_control|Equal0~1_combout\ = (\instancia_control|Equal0~0_combout\ & (\instancia_regD|InstrD\(29) & \instancia_regD|InstrD\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_control|Equal0~0_combout\,
	datac => \instancia_regD|InstrD\(29),
	datad => \instancia_regD|InstrD\(31),
	combout => \instancia_control|Equal0~1_combout\);

-- Location: LCFF_X53_Y34_N7
\instancia_regE|RegDstE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_control|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|RegDstE~regout\);

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[16]~I\ : cycloneii_io
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
	padio => ww_RD(16),
	combout => \RD~combout\(16));

-- Location: LCCOMB_X54_Y35_N14
\instancia_regD|InstrD[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regD|InstrD[16]~feeder_combout\ = \RD~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD~combout\(16),
	combout => \instancia_regD|InstrD[16]~feeder_combout\);

-- Location: LCFF_X54_Y35_N15
\instancia_regD|InstrD[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regD|InstrD[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(16));

-- Location: LCFF_X53_Y35_N3
\instancia_regE|RtE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|RtE\(0));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[11]~I\ : cycloneii_io
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
	padio => ww_RD(11),
	combout => \RD~combout\(11));

-- Location: LCCOMB_X54_Y37_N24
\instancia_regD|InstrD[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regD|InstrD[11]~feeder_combout\ = \RD~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD~combout\(11),
	combout => \instancia_regD|InstrD[11]~feeder_combout\);

-- Location: LCFF_X54_Y37_N25
\instancia_regD|InstrD[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regD|InstrD[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(11));

-- Location: LCFF_X54_Y37_N29
\instancia_regE|SignImmE[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|SignImmE\(11));

-- Location: LCCOMB_X53_Y35_N12
\instancia_mux5bits|outMux[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux5bits|outMux[0]~0_combout\ = (\instancia_regE|RegDstE~regout\ & ((\instancia_regE|SignImmE\(11)))) # (!\instancia_regE|RegDstE~regout\ & (\instancia_regE|RtE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regE|RegDstE~regout\,
	datac => \instancia_regE|RtE\(0),
	datad => \instancia_regE|SignImmE\(11),
	combout => \instancia_mux5bits|outMux[0]~0_combout\);

-- Location: LCFF_X53_Y35_N13
\instancia_regW|WriteRegW[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_mux5bits|outMux[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|WriteRegW\(0));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[17]~I\ : cycloneii_io
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
	padio => ww_RD(17),
	combout => \RD~combout\(17));

-- Location: LCFF_X54_Y35_N9
\instancia_regD|InstrD[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(17));

-- Location: LCFF_X53_Y35_N1
\instancia_regE|RtE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|RtE\(1));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[12]~I\ : cycloneii_io
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
	padio => ww_RD(12),
	combout => \RD~combout\(12));

-- Location: LCFF_X50_Y37_N21
\instancia_regD|InstrD[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD~combout\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(12));

-- Location: LCFF_X50_Y37_N1
\instancia_regE|SignImmE[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|SignImmE\(12));

-- Location: LCCOMB_X53_Y35_N26
\instancia_mux5bits|outMux[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux5bits|outMux[1]~1_combout\ = (\instancia_regE|RegDstE~regout\ & ((\instancia_regE|SignImmE\(12)))) # (!\instancia_regE|RegDstE~regout\ & (\instancia_regE|RtE\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regE|RtE\(1),
	datac => \instancia_regE|SignImmE\(12),
	datad => \instancia_regE|RegDstE~regout\,
	combout => \instancia_mux5bits|outMux[1]~1_combout\);

-- Location: LCFF_X53_Y35_N27
\instancia_regW|WriteRegW[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_mux5bits|outMux[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|WriteRegW\(1));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[13]~I\ : cycloneii_io
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
	padio => ww_RD(13),
	combout => \RD~combout\(13));

-- Location: LCCOMB_X53_Y35_N6
\instancia_regD|InstrD[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regD|InstrD[13]~feeder_combout\ = \RD~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD~combout\(13),
	combout => \instancia_regD|InstrD[13]~feeder_combout\);

-- Location: LCFF_X53_Y35_N7
\instancia_regD|InstrD[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regD|InstrD[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(13));

-- Location: LCFF_X54_Y35_N21
\instancia_regE|SignImmE[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|SignImmE\(13));

-- Location: LCCOMB_X53_Y35_N4
\instancia_mux5bits|outMux[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux5bits|outMux[2]~2_combout\ = (\instancia_regE|RegDstE~regout\ & ((\instancia_regE|SignImmE\(13)))) # (!\instancia_regE|RegDstE~regout\ & (\instancia_regE|RtE\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|RtE\(2),
	datab => \instancia_regE|RegDstE~regout\,
	datad => \instancia_regE|SignImmE\(13),
	combout => \instancia_mux5bits|outMux[2]~2_combout\);

-- Location: LCFF_X53_Y35_N5
\instancia_regW|WriteRegW[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_mux5bits|outMux[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|WriteRegW\(2));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[19]~I\ : cycloneii_io
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
	padio => ww_RD(19),
	combout => \RD~combout\(19));

-- Location: LCCOMB_X54_Y35_N12
\instancia_regD|InstrD[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regD|InstrD[19]~feeder_combout\ = \RD~combout\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD~combout\(19),
	combout => \instancia_regD|InstrD[19]~feeder_combout\);

-- Location: LCFF_X54_Y35_N13
\instancia_regD|InstrD[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regD|InstrD[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(19));

-- Location: LCFF_X53_Y35_N9
\instancia_regE|RtE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|RtE\(3));

-- Location: LCCOMB_X53_Y35_N10
\instancia_mux5bits|outMux[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux5bits|outMux[3]~3_combout\ = (\instancia_regE|RegDstE~regout\ & (\instancia_regE|SignImmE\(14))) # (!\instancia_regE|RegDstE~regout\ & ((\instancia_regE|RtE\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|SignImmE\(14),
	datab => \instancia_regE|RegDstE~regout\,
	datad => \instancia_regE|RtE\(3),
	combout => \instancia_mux5bits|outMux[3]~3_combout\);

-- Location: LCFF_X53_Y35_N11
\instancia_regW|WriteRegW[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_mux5bits|outMux[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|WriteRegW\(3));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[15]~I\ : cycloneii_io
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
	padio => ww_RD(15),
	combout => \RD~combout\(15));

-- Location: LCFF_X54_Y36_N5
\instancia_regD|InstrD[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD~combout\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(15));

-- Location: LCFF_X54_Y36_N31
\instancia_regE|SignImmE[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|SignImmE\(15));

-- Location: LCCOMB_X53_Y35_N20
\instancia_mux5bits|outMux[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux5bits|outMux[4]~4_combout\ = (\instancia_regE|RegDstE~regout\ & ((\instancia_regE|SignImmE\(15)))) # (!\instancia_regE|RegDstE~regout\ & (\instancia_regE|RtE\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|RtE\(4),
	datac => \instancia_regE|SignImmE\(15),
	datad => \instancia_regE|RegDstE~regout\,
	combout => \instancia_mux5bits|outMux[4]~4_combout\);

-- Location: LCFF_X53_Y35_N21
\instancia_regW|WriteRegW[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_mux5bits|outMux[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|WriteRegW\(4));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[21]~I\ : cycloneii_io
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
	padio => ww_RD(21),
	combout => \RD~combout\(21));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[22]~I\ : cycloneii_io
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
	padio => ww_RD(22),
	combout => \RD~combout\(22));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[23]~I\ : cycloneii_io
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
	padio => ww_RD(23),
	combout => \RD~combout\(23));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[24]~I\ : cycloneii_io
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
	padio => ww_RD(24),
	combout => \RD~combout\(24));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[25]~I\ : cycloneii_io
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
	padio => ww_RD(25),
	combout => \RD~combout\(25));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[2]~I\ : cycloneii_io
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
	padio => ww_RD(2),
	combout => \RD~combout\(2));

-- Location: LCFF_X49_Y37_N19
\instancia_regD|InstrD[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(2));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[3]~I\ : cycloneii_io
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
	padio => ww_RD(3),
	combout => \RD~combout\(3));

-- Location: LCFF_X50_Y37_N29
\instancia_regD|InstrD[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(3));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[4]~I\ : cycloneii_io
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
	padio => ww_RD(4),
	combout => \RD~combout\(4));

-- Location: LCFF_X52_Y37_N11
\instancia_regD|InstrD[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD~combout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(4));

-- Location: LCCOMB_X50_Y37_N0
\instancia_control|ALUControlID[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_control|ALUControlID[1]~0_combout\ = (\instancia_regD|InstrD\(5) & (!\instancia_regD|InstrD\(3) & !\instancia_regD|InstrD\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regD|InstrD\(5),
	datab => \instancia_regD|InstrD\(3),
	datad => \instancia_regD|InstrD\(4),
	combout => \instancia_control|ALUControlID[1]~0_combout\);

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[0]~I\ : cycloneii_io
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
	padio => ww_RD(0),
	combout => \RD~combout\(0));

-- Location: LCCOMB_X49_Y37_N2
\instancia_regD|InstrD[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regD|InstrD[0]~feeder_combout\ = \RD~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD~combout\(0),
	combout => \instancia_regD|InstrD[0]~feeder_combout\);

-- Location: LCFF_X49_Y37_N3
\instancia_regD|InstrD[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regD|InstrD[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(0));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[1]~I\ : cycloneii_io
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
	padio => ww_RD(1),
	combout => \RD~combout\(1));

-- Location: LCFF_X49_Y37_N17
\instancia_regD|InstrD[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(1));

-- Location: LCCOMB_X49_Y37_N22
\instancia_control|ALUControlID[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_control|ALUControlID[1]~1_combout\ = (\instancia_regD|InstrD\(2) & ((\instancia_regD|InstrD\(1)))) # (!\instancia_regD|InstrD\(2) & (\instancia_regD|InstrD\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regD|InstrD\(0),
	datac => \instancia_regD|InstrD\(1),
	datad => \instancia_regD|InstrD\(2),
	combout => \instancia_control|ALUControlID[1]~1_combout\);

-- Location: LCCOMB_X49_Y37_N12
\instancia_control|ALUControlID[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_control|ALUControlID[1]~2_combout\ = (\instancia_control|ALUControlID[1]~0_combout\ & ((\instancia_control|ALUControlID[1]~1_combout\ & (\instancia_control|Equal1~0_combout\)) # (!\instancia_control|ALUControlID[1]~1_combout\ & 
-- ((!\instancia_regD|InstrD\(2)))))) # (!\instancia_control|ALUControlID[1]~0_combout\ & (\instancia_control|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_control|Equal1~0_combout\,
	datab => \instancia_regD|InstrD\(2),
	datac => \instancia_control|ALUControlID[1]~0_combout\,
	datad => \instancia_control|ALUControlID[1]~1_combout\,
	combout => \instancia_control|ALUControlID[1]~2_combout\);

-- Location: LCFF_X49_Y37_N13
\instancia_regE|ALUControlE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_control|ALUControlID[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|ALUControlE\(1));

-- Location: LCCOMB_X53_Y34_N26
\instancia_control|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_control|Equal1~0_combout\ = (\instancia_control|Equal0~0_combout\ & (!\instancia_regD|InstrD\(29) & \instancia_regD|InstrD\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_control|Equal0~0_combout\,
	datac => \instancia_regD|InstrD\(29),
	datad => \instancia_regD|InstrD\(31),
	combout => \instancia_control|Equal1~0_combout\);

-- Location: LCCOMB_X53_Y34_N20
\instancia_regE|ALUSrcE~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regE|ALUSrcE~feeder_combout\ = \instancia_control|Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_control|Equal1~0_combout\,
	combout => \instancia_regE|ALUSrcE~feeder_combout\);

-- Location: LCFF_X53_Y34_N21
\instancia_regE|ALUSrcE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regE|ALUSrcE~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|ALUSrcE~regout\);

-- Location: LCFF_X52_Y35_N17
\instancia_regE|SignImmE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|SignImmE\(1));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[20]~I\ : cycloneii_io
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
	padio => ww_RD(20),
	combout => \RD~combout\(20));

-- Location: LCCOMB_X54_Y35_N16
\instancia_regD|InstrD[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regD|InstrD[20]~feeder_combout\ = \RD~combout\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD~combout\(20),
	combout => \instancia_regD|InstrD[20]~feeder_combout\);

-- Location: LCFF_X54_Y35_N17
\instancia_regD|InstrD[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regD|InstrD[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(20));

-- Location: LCFF_X53_Y35_N25
\instancia_regE|RtE[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|RtE\(4));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[18]~I\ : cycloneii_io
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
	padio => ww_RD(18),
	combout => \RD~combout\(18));

-- Location: LCFF_X54_Y35_N27
\instancia_regD|InstrD[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD~combout\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(18));

-- Location: LCFF_X53_Y35_N15
\instancia_regE|RtE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|RtE\(2));

-- Location: LCCOMB_X53_Y35_N8
\instancia_Hazard|FowardBE~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Hazard|FowardBE~1_combout\ = (\instancia_regW|WriteRegW\(3) & (\instancia_regE|RtE\(3) & (\instancia_regW|WriteRegW\(2) $ (!\instancia_regE|RtE\(2))))) # (!\instancia_regW|WriteRegW\(3) & (!\instancia_regE|RtE\(3) & 
-- (\instancia_regW|WriteRegW\(2) $ (!\instancia_regE|RtE\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|WriteRegW\(3),
	datab => \instancia_regW|WriteRegW\(2),
	datac => \instancia_regE|RtE\(3),
	datad => \instancia_regE|RtE\(2),
	combout => \instancia_Hazard|FowardBE~1_combout\);

-- Location: LCCOMB_X53_Y35_N14
\instancia_Hazard|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Hazard|Equal2~0_combout\ = (!\instancia_regE|RtE\(0) & (!\instancia_regE|RtE\(1) & (!\instancia_regE|RtE\(2) & !\instancia_regE|RtE\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|RtE\(0),
	datab => \instancia_regE|RtE\(1),
	datac => \instancia_regE|RtE\(2),
	datad => \instancia_regE|RtE\(3),
	combout => \instancia_Hazard|Equal2~0_combout\);

-- Location: LCCOMB_X53_Y35_N2
\instancia_Hazard|FowardBE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Hazard|FowardBE~0_combout\ = (\instancia_regW|WriteRegW\(0) & (\instancia_regE|RtE\(0) & (\instancia_regE|RtE\(1) $ (!\instancia_regW|WriteRegW\(1))))) # (!\instancia_regW|WriteRegW\(0) & (!\instancia_regE|RtE\(0) & (\instancia_regE|RtE\(1) $ 
-- (!\instancia_regW|WriteRegW\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|WriteRegW\(0),
	datab => \instancia_regE|RtE\(1),
	datac => \instancia_regE|RtE\(0),
	datad => \instancia_regW|WriteRegW\(1),
	combout => \instancia_Hazard|FowardBE~0_combout\);

-- Location: LCCOMB_X53_Y35_N22
\instancia_Hazard|FowardBE~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Hazard|FowardBE~2_combout\ = (\instancia_Hazard|FowardBE~1_combout\ & (\instancia_Hazard|FowardBE~0_combout\ & ((\instancia_regE|RtE\(4)) # (!\instancia_Hazard|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|RtE\(4),
	datab => \instancia_Hazard|FowardBE~1_combout\,
	datac => \instancia_Hazard|Equal2~0_combout\,
	datad => \instancia_Hazard|FowardBE~0_combout\,
	combout => \instancia_Hazard|FowardBE~2_combout\);

-- Location: LCCOMB_X53_Y35_N24
\instancia_Hazard|FowardBE\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Hazard|FowardBE~combout\ = (\instancia_regW|RegWriteW~regout\ & (\instancia_Hazard|FowardBE~2_combout\ & (\instancia_regW|WriteRegW\(4) $ (!\instancia_regE|RtE\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|WriteRegW\(4),
	datab => \instancia_regW|RegWriteW~regout\,
	datac => \instancia_regE|RtE\(4),
	datad => \instancia_Hazard|FowardBE~2_combout\,
	combout => \instancia_Hazard|FowardBE~combout\);

-- Location: LCCOMB_X53_Y35_N18
\instancia_mux_imm|outMux[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[0]~0_combout\ = (\instancia_regW|RegWriteW~regout\ & (\instancia_Hazard|FowardBE~2_combout\ & (\instancia_regE|RtE\(4) $ (!\instancia_regW|WriteRegW\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|RtE\(4),
	datab => \instancia_regW|WriteRegW\(4),
	datac => \instancia_regW|RegWriteW~regout\,
	datad => \instancia_Hazard|FowardBE~2_combout\,
	combout => \instancia_mux_imm|outMux[0]~0_combout\);

-- Location: LCCOMB_X52_Y35_N26
\instancia_mux_imm|outMux[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[1]~3_combout\ = (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a1\ & (((\instancia_Hazard|FowardBE~combout\ & \instancia_regW|ALUOutW\(1))) # (!\instancia_mux_imm|outMux[0]~0_combout\))) # 
-- (!\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a1\ & (\instancia_Hazard|FowardBE~combout\ & (\instancia_regW|ALUOutW\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a1\,
	datab => \instancia_Hazard|FowardBE~combout\,
	datac => \instancia_regW|ALUOutW\(1),
	datad => \instancia_mux_imm|outMux[0]~0_combout\,
	combout => \instancia_mux_imm|outMux[1]~3_combout\);

-- Location: LCCOMB_X52_Y35_N16
\instancia_mux_imm|outMux[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[1]~4_combout\ = (\instancia_regE|ALUSrcE~regout\ & (\instancia_regE|SignImmE\(1))) # (!\instancia_regE|ALUSrcE~regout\ & ((\instancia_mux_imm|outMux[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_regE|SignImmE\(1),
	datad => \instancia_mux_imm|outMux[1]~3_combout\,
	combout => \instancia_mux_imm|outMux[1]~4_combout\);

-- Location: LCFF_X52_Y37_N15
\instancia_regE|SignImmE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|SignImmE\(0));

-- Location: LCCOMB_X52_Y37_N30
\instancia_mux_imm|outMux[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[0]~1_combout\ = (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ & (((\instancia_regW|ALUOutW\(0) & \instancia_Hazard|FowardBE~combout\)) # (!\instancia_mux_imm|outMux[0]~0_combout\))) # 
-- (!\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ & (\instancia_regW|ALUOutW\(0) & (\instancia_Hazard|FowardBE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datab => \instancia_regW|ALUOutW\(0),
	datac => \instancia_Hazard|FowardBE~combout\,
	datad => \instancia_mux_imm|outMux[0]~0_combout\,
	combout => \instancia_mux_imm|outMux[0]~1_combout\);

-- Location: LCCOMB_X52_Y37_N14
\instancia_mux_imm|outMux[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[0]~2_combout\ = (\instancia_regE|ALUSrcE~regout\ & (\instancia_regE|SignImmE\(0))) # (!\instancia_regE|ALUSrcE~regout\ & ((\instancia_mux_imm|outMux[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_regE|SignImmE\(0),
	datad => \instancia_mux_imm|outMux[0]~1_combout\,
	combout => \instancia_mux_imm|outMux[0]~2_combout\);

-- Location: LCCOMB_X51_Y37_N0
\instancia_ALU|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~0_combout\ = (\instancia_mux_ForwardA|outMux[0]~0_combout\ & (\instancia_mux_imm|outMux[0]~2_combout\ $ (VCC))) # (!\instancia_mux_ForwardA|outMux[0]~0_combout\ & (\instancia_mux_imm|outMux[0]~2_combout\ & VCC))
-- \instancia_ALU|Add1~1\ = CARRY((\instancia_mux_ForwardA|outMux[0]~0_combout\ & \instancia_mux_imm|outMux[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[0]~0_combout\,
	datab => \instancia_mux_imm|outMux[0]~2_combout\,
	datad => VCC,
	combout => \instancia_ALU|Add1~0_combout\,
	cout => \instancia_ALU|Add1~1\);

-- Location: LCCOMB_X51_Y37_N2
\instancia_ALU|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~2_combout\ = (\instancia_mux_ForwardA|outMux[1]~1_combout\ & ((\instancia_mux_imm|outMux[1]~4_combout\ & (\instancia_ALU|Add1~1\ & VCC)) # (!\instancia_mux_imm|outMux[1]~4_combout\ & (!\instancia_ALU|Add1~1\)))) # 
-- (!\instancia_mux_ForwardA|outMux[1]~1_combout\ & ((\instancia_mux_imm|outMux[1]~4_combout\ & (!\instancia_ALU|Add1~1\)) # (!\instancia_mux_imm|outMux[1]~4_combout\ & ((\instancia_ALU|Add1~1\) # (GND)))))
-- \instancia_ALU|Add1~3\ = CARRY((\instancia_mux_ForwardA|outMux[1]~1_combout\ & (!\instancia_mux_imm|outMux[1]~4_combout\ & !\instancia_ALU|Add1~1\)) # (!\instancia_mux_ForwardA|outMux[1]~1_combout\ & ((!\instancia_ALU|Add1~1\) # 
-- (!\instancia_mux_imm|outMux[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[1]~1_combout\,
	datab => \instancia_mux_imm|outMux[1]~4_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~1\,
	combout => \instancia_ALU|Add1~2_combout\,
	cout => \instancia_ALU|Add1~3\);

-- Location: LCFF_X52_Y35_N1
\instancia_regE|SignImmE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|SignImmE\(2));

-- Location: LCFF_X52_Y37_N19
\instancia_regE|SignImmE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|SignImmE\(3));

-- Location: LCFF_X52_Y35_N15
\instancia_regD|InstrD[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD~combout\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(25));

-- Location: LCFF_X51_Y35_N23
\instancia_regE|RsE[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|RsE\(4));

-- Location: LCFF_X54_Y35_N23
\instancia_regD|InstrD[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD~combout\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(24));

-- Location: LCFF_X51_Y35_N3
\instancia_regE|RsE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|RsE\(3));

-- Location: LCCOMB_X51_Y35_N28
\instancia_Hazard|FowardAE~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Hazard|FowardAE~1_combout\ = (\instancia_regE|RsE\(2) & (\instancia_regW|WriteRegW\(2) & (\instancia_regE|RsE\(3) $ (!\instancia_regW|WriteRegW\(3))))) # (!\instancia_regE|RsE\(2) & (!\instancia_regW|WriteRegW\(2) & (\instancia_regE|RsE\(3) $ 
-- (!\instancia_regW|WriteRegW\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|RsE\(2),
	datab => \instancia_regE|RsE\(3),
	datac => \instancia_regW|WriteRegW\(2),
	datad => \instancia_regW|WriteRegW\(3),
	combout => \instancia_Hazard|FowardAE~1_combout\);

-- Location: LCFF_X51_Y35_N13
\instancia_regD|InstrD[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD~combout\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(21));

-- Location: LCCOMB_X51_Y35_N4
\instancia_regE|RsE[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regE|RsE[0]~feeder_combout\ = \instancia_regD|InstrD\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_regD|InstrD\(21),
	combout => \instancia_regE|RsE[0]~feeder_combout\);

-- Location: LCFF_X51_Y35_N5
\instancia_regE|RsE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regE|RsE[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|RsE\(0));

-- Location: LCCOMB_X51_Y35_N18
\instancia_Hazard|FowardAE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Hazard|FowardAE~0_combout\ = (\instancia_regE|RsE\(1) & (\instancia_regW|WriteRegW\(1) & (\instancia_regE|RsE\(0) $ (!\instancia_regW|WriteRegW\(0))))) # (!\instancia_regE|RsE\(1) & (!\instancia_regW|WriteRegW\(1) & (\instancia_regE|RsE\(0) $ 
-- (!\instancia_regW|WriteRegW\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|RsE\(1),
	datab => \instancia_regE|RsE\(0),
	datac => \instancia_regW|WriteRegW\(1),
	datad => \instancia_regW|WriteRegW\(0),
	combout => \instancia_Hazard|FowardAE~0_combout\);

-- Location: LCCOMB_X51_Y35_N22
\instancia_Hazard|FowardAE~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Hazard|FowardAE~2_combout\ = (\instancia_Hazard|FowardAE~1_combout\ & (\instancia_Hazard|FowardAE~0_combout\ & ((\instancia_regE|RsE\(4)) # (!\instancia_Hazard|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Hazard|Equal0~0_combout\,
	datab => \instancia_Hazard|FowardAE~1_combout\,
	datac => \instancia_regE|RsE\(4),
	datad => \instancia_Hazard|FowardAE~0_combout\,
	combout => \instancia_Hazard|FowardAE~2_combout\);

-- Location: LCCOMB_X51_Y35_N8
\instancia_Hazard|FowardAE\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Hazard|FowardAE~combout\ = (\instancia_regW|RegWriteW~regout\ & (\instancia_Hazard|FowardAE~2_combout\ & (\instancia_regW|WriteRegW\(4) $ (!\instancia_regE|RsE\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|WriteRegW\(4),
	datab => \instancia_regE|RsE\(4),
	datac => \instancia_regW|RegWriteW~regout\,
	datad => \instancia_Hazard|FowardAE~2_combout\,
	combout => \instancia_Hazard|FowardAE~combout\);

-- Location: LCCOMB_X49_Y37_N10
\instancia_control|ALUControlID~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_control|ALUControlID~3_combout\ = (\instancia_control|Equal4~0_combout\ & ((\instancia_regD|InstrD\(2) & (!\instancia_regD|InstrD\(1) & \instancia_regD|InstrD\(0))) # (!\instancia_regD|InstrD\(2) & (\instancia_regD|InstrD\(1) & 
-- !\instancia_regD|InstrD\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_control|Equal4~0_combout\,
	datab => \instancia_regD|InstrD\(2),
	datac => \instancia_regD|InstrD\(1),
	datad => \instancia_regD|InstrD\(0),
	combout => \instancia_control|ALUControlID~3_combout\);

-- Location: LCFF_X49_Y37_N11
\instancia_regE|ALUControlE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_control|ALUControlID~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|ALUControlE\(0));

-- Location: LCCOMB_X52_Y35_N4
\instancia_mux_ForwardA|outMux[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[7]~7_combout\ = (\instancia_Hazard|FowardAE~combout\ & ((\instancia_regW|ALUOutW\(7)))) # (!\instancia_Hazard|FowardAE~combout\ & (\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a7\,
	datab => \instancia_regW|ALUOutW\(7),
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[7]~7_combout\);

-- Location: LCCOMB_X53_Y35_N30
\instancia_ALU|ALUOut[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[7]~14_combout\ = (\instancia_mux_imm|outMux[7]~16_combout\ & ((\instancia_regE|ALUControlE\(0)) # ((\instancia_mux_ForwardA|outMux[7]~7_combout\ & !\instancia_regE|ALUControlE\(1))))) # (!\instancia_mux_imm|outMux[7]~16_combout\ & 
-- (\instancia_regE|ALUControlE\(0) & ((\instancia_mux_ForwardA|outMux[7]~7_combout\) # (\instancia_regE|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[7]~16_combout\,
	datab => \instancia_regE|ALUControlE\(0),
	datac => \instancia_mux_ForwardA|outMux[7]~7_combout\,
	datad => \instancia_regE|ALUControlE\(1),
	combout => \instancia_ALU|ALUOut[7]~14_combout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[7]~I\ : cycloneii_io
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
	padio => ww_RD(7),
	combout => \RD~combout\(7));

-- Location: LCFF_X52_Y35_N5
\instancia_regD|InstrD[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD~combout\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(7));

-- Location: LCFF_X52_Y35_N31
\instancia_regE|SignImmE[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|SignImmE\(7));

-- Location: LCCOMB_X52_Y35_N30
\instancia_mux_imm|outMux[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[7]~15_combout\ = (\instancia_regE|ALUSrcE~regout\ & (((\instancia_regE|SignImmE\(7))))) # (!\instancia_regE|ALUSrcE~regout\ & (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a7\ & 
-- ((!\instancia_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a7\,
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_regE|SignImmE\(7),
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[7]~15_combout\);

-- Location: LCCOMB_X52_Y35_N22
\instancia_mux_imm|outMux[7]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[7]~16_combout\ = (\instancia_mux_imm|outMux[7]~15_combout\) # ((!\instancia_regE|ALUSrcE~regout\ & (\instancia_Hazard|FowardBE~combout\ & \instancia_regW|ALUOutW\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_Hazard|FowardBE~combout\,
	datac => \instancia_regW|ALUOutW\(7),
	datad => \instancia_mux_imm|outMux[7]~15_combout\,
	combout => \instancia_mux_imm|outMux[7]~16_combout\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[5]~I\ : cycloneii_io
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
	padio => ww_RD(5),
	combout => \RD~combout\(5));

-- Location: LCCOMB_X49_Y37_N0
\instancia_regD|InstrD[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regD|InstrD[5]~feeder_combout\ = \RD~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD~combout\(5),
	combout => \instancia_regD|InstrD[5]~feeder_combout\);

-- Location: LCFF_X49_Y37_N1
\instancia_regD|InstrD[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regD|InstrD[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(5));

-- Location: LCFF_X50_Y37_N9
\instancia_regE|SignImmE[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|SignImmE\(5));

-- Location: LCCOMB_X50_Y37_N8
\instancia_mux_imm|outMux[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[5]~11_combout\ = (\instancia_regE|ALUSrcE~regout\ & ((\instancia_regE|SignImmE\(5)))) # (!\instancia_regE|ALUSrcE~regout\ & (\instancia_regW|ALUOutW\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(5),
	datac => \instancia_regE|SignImmE\(5),
	datad => \instancia_regE|ALUSrcE~regout\,
	combout => \instancia_mux_imm|outMux[5]~11_combout\);

-- Location: LCCOMB_X50_Y37_N22
\instancia_mux_imm|outMux[5]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[5]~12_combout\ = (\instancia_Hazard|FowardBE~combout\ & (((\instancia_mux_imm|outMux[5]~11_combout\)))) # (!\instancia_Hazard|FowardBE~combout\ & ((\instancia_regE|ALUSrcE~regout\ & ((\instancia_mux_imm|outMux[5]~11_combout\))) # 
-- (!\instancia_regE|ALUSrcE~regout\ & (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a5\,
	datab => \instancia_mux_imm|outMux[5]~11_combout\,
	datac => \instancia_Hazard|FowardBE~combout\,
	datad => \instancia_regE|ALUSrcE~regout\,
	combout => \instancia_mux_imm|outMux[5]~12_combout\);

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[9]~I\ : cycloneii_io
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
	padio => ww_RD(9),
	combout => \RD~combout\(9));

-- Location: LCCOMB_X52_Y34_N20
\instancia_regD|InstrD[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regD|InstrD[9]~feeder_combout\ = \RD~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD~combout\(9),
	combout => \instancia_regD|InstrD[9]~feeder_combout\);

-- Location: LCFF_X52_Y34_N21
\instancia_regD|InstrD[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regD|InstrD[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(9));

-- Location: LCFF_X52_Y34_N29
\instancia_regE|SignImmE[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|SignImmE\(9));

-- Location: LCCOMB_X52_Y34_N28
\instancia_mux_imm|outMux[9]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[9]~19_combout\ = (\instancia_regE|ALUSrcE~regout\ & (((\instancia_regE|SignImmE\(9))))) # (!\instancia_regE|ALUSrcE~regout\ & (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a9\ & 
-- ((!\instancia_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a9\,
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_regE|SignImmE\(9),
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[9]~19_combout\);

-- Location: LCCOMB_X52_Y34_N10
\instancia_mux_imm|outMux[9]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[9]~20_combout\ = (\instancia_mux_imm|outMux[9]~19_combout\) # ((\instancia_regW|ALUOutW\(9) & (\instancia_Hazard|FowardBE~combout\ & !\instancia_regE|ALUSrcE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(9),
	datab => \instancia_Hazard|FowardBE~combout\,
	datac => \instancia_regE|ALUSrcE~regout\,
	datad => \instancia_mux_imm|outMux[9]~19_combout\,
	combout => \instancia_mux_imm|outMux[9]~20_combout\);

-- Location: LCCOMB_X50_Y37_N20
\instancia_mux_ForwardA|outMux[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[12]~12_combout\ = (\instancia_Hazard|FowardAE~combout\ & ((\instancia_regW|ALUOutW\(12)))) # (!\instancia_Hazard|FowardAE~combout\ & (\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a12\,
	datab => \instancia_regW|ALUOutW\(12),
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[12]~12_combout\);

-- Location: LCCOMB_X52_Y37_N20
\instancia_mux_ForwardA|outMux[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[8]~8_combout\ = (\instancia_Hazard|FowardAE~combout\ & ((\instancia_regW|ALUOutW\(8)))) # (!\instancia_Hazard|FowardAE~combout\ & (\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a8\,
	datab => \instancia_regW|ALUOutW\(8),
	datac => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[8]~8_combout\);

-- Location: LCCOMB_X51_Y37_N14
\instancia_ALU|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~14_combout\ = (\instancia_mux_ForwardA|outMux[7]~7_combout\ & ((\instancia_mux_imm|outMux[7]~16_combout\ & (\instancia_ALU|Add1~13\ & VCC)) # (!\instancia_mux_imm|outMux[7]~16_combout\ & (!\instancia_ALU|Add1~13\)))) # 
-- (!\instancia_mux_ForwardA|outMux[7]~7_combout\ & ((\instancia_mux_imm|outMux[7]~16_combout\ & (!\instancia_ALU|Add1~13\)) # (!\instancia_mux_imm|outMux[7]~16_combout\ & ((\instancia_ALU|Add1~13\) # (GND)))))
-- \instancia_ALU|Add1~15\ = CARRY((\instancia_mux_ForwardA|outMux[7]~7_combout\ & (!\instancia_mux_imm|outMux[7]~16_combout\ & !\instancia_ALU|Add1~13\)) # (!\instancia_mux_ForwardA|outMux[7]~7_combout\ & ((!\instancia_ALU|Add1~13\) # 
-- (!\instancia_mux_imm|outMux[7]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[7]~7_combout\,
	datab => \instancia_mux_imm|outMux[7]~16_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~13\,
	combout => \instancia_ALU|Add1~14_combout\,
	cout => \instancia_ALU|Add1~15\);

-- Location: LCCOMB_X51_Y37_N16
\instancia_ALU|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~16_combout\ = ((\instancia_mux_imm|outMux[8]~18_combout\ $ (\instancia_mux_ForwardA|outMux[8]~8_combout\ $ (!\instancia_ALU|Add1~15\)))) # (GND)
-- \instancia_ALU|Add1~17\ = CARRY((\instancia_mux_imm|outMux[8]~18_combout\ & ((\instancia_mux_ForwardA|outMux[8]~8_combout\) # (!\instancia_ALU|Add1~15\))) # (!\instancia_mux_imm|outMux[8]~18_combout\ & (\instancia_mux_ForwardA|outMux[8]~8_combout\ & 
-- !\instancia_ALU|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[8]~18_combout\,
	datab => \instancia_mux_ForwardA|outMux[8]~8_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~15\,
	combout => \instancia_ALU|Add1~16_combout\,
	cout => \instancia_ALU|Add1~17\);

-- Location: LCCOMB_X51_Y37_N18
\instancia_ALU|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~18_combout\ = (\instancia_mux_ForwardA|outMux[9]~9_combout\ & ((\instancia_mux_imm|outMux[9]~20_combout\ & (\instancia_ALU|Add1~17\ & VCC)) # (!\instancia_mux_imm|outMux[9]~20_combout\ & (!\instancia_ALU|Add1~17\)))) # 
-- (!\instancia_mux_ForwardA|outMux[9]~9_combout\ & ((\instancia_mux_imm|outMux[9]~20_combout\ & (!\instancia_ALU|Add1~17\)) # (!\instancia_mux_imm|outMux[9]~20_combout\ & ((\instancia_ALU|Add1~17\) # (GND)))))
-- \instancia_ALU|Add1~19\ = CARRY((\instancia_mux_ForwardA|outMux[9]~9_combout\ & (!\instancia_mux_imm|outMux[9]~20_combout\ & !\instancia_ALU|Add1~17\)) # (!\instancia_mux_ForwardA|outMux[9]~9_combout\ & ((!\instancia_ALU|Add1~17\) # 
-- (!\instancia_mux_imm|outMux[9]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[9]~9_combout\,
	datab => \instancia_mux_imm|outMux[9]~20_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~17\,
	combout => \instancia_ALU|Add1~18_combout\,
	cout => \instancia_ALU|Add1~19\);

-- Location: LCCOMB_X51_Y37_N20
\instancia_ALU|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~20_combout\ = ((\instancia_mux_imm|outMux[10]~22_combout\ $ (\instancia_mux_ForwardA|outMux[10]~10_combout\ $ (!\instancia_ALU|Add1~19\)))) # (GND)
-- \instancia_ALU|Add1~21\ = CARRY((\instancia_mux_imm|outMux[10]~22_combout\ & ((\instancia_mux_ForwardA|outMux[10]~10_combout\) # (!\instancia_ALU|Add1~19\))) # (!\instancia_mux_imm|outMux[10]~22_combout\ & (\instancia_mux_ForwardA|outMux[10]~10_combout\ & 
-- !\instancia_ALU|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[10]~22_combout\,
	datab => \instancia_mux_ForwardA|outMux[10]~10_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~19\,
	combout => \instancia_ALU|Add1~20_combout\,
	cout => \instancia_ALU|Add1~21\);

-- Location: LCCOMB_X51_Y37_N22
\instancia_ALU|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~22_combout\ = (\instancia_mux_ForwardA|outMux[11]~11_combout\ & ((\instancia_mux_imm|outMux[11]~24_combout\ & (\instancia_ALU|Add1~21\ & VCC)) # (!\instancia_mux_imm|outMux[11]~24_combout\ & (!\instancia_ALU|Add1~21\)))) # 
-- (!\instancia_mux_ForwardA|outMux[11]~11_combout\ & ((\instancia_mux_imm|outMux[11]~24_combout\ & (!\instancia_ALU|Add1~21\)) # (!\instancia_mux_imm|outMux[11]~24_combout\ & ((\instancia_ALU|Add1~21\) # (GND)))))
-- \instancia_ALU|Add1~23\ = CARRY((\instancia_mux_ForwardA|outMux[11]~11_combout\ & (!\instancia_mux_imm|outMux[11]~24_combout\ & !\instancia_ALU|Add1~21\)) # (!\instancia_mux_ForwardA|outMux[11]~11_combout\ & ((!\instancia_ALU|Add1~21\) # 
-- (!\instancia_mux_imm|outMux[11]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[11]~11_combout\,
	datab => \instancia_mux_imm|outMux[11]~24_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~21\,
	combout => \instancia_ALU|Add1~22_combout\,
	cout => \instancia_ALU|Add1~23\);

-- Location: LCCOMB_X51_Y37_N24
\instancia_ALU|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~24_combout\ = ((\instancia_mux_imm|outMux[12]~26_combout\ $ (\instancia_mux_ForwardA|outMux[12]~12_combout\ $ (!\instancia_ALU|Add1~23\)))) # (GND)
-- \instancia_ALU|Add1~25\ = CARRY((\instancia_mux_imm|outMux[12]~26_combout\ & ((\instancia_mux_ForwardA|outMux[12]~12_combout\) # (!\instancia_ALU|Add1~23\))) # (!\instancia_mux_imm|outMux[12]~26_combout\ & (\instancia_mux_ForwardA|outMux[12]~12_combout\ & 
-- !\instancia_ALU|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[12]~26_combout\,
	datab => \instancia_mux_ForwardA|outMux[12]~12_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~23\,
	combout => \instancia_ALU|Add1~24_combout\,
	cout => \instancia_ALU|Add1~25\);

-- Location: LCCOMB_X50_Y37_N12
\instancia_mux_imm|outMux[12]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[12]~25_combout\ = (\instancia_regE|ALUSrcE~regout\ & (((\instancia_regE|SignImmE\(12))))) # (!\instancia_regE|ALUSrcE~regout\ & (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a12\ & 
-- ((!\instancia_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a12\,
	datab => \instancia_regE|SignImmE\(12),
	datac => \instancia_Hazard|FowardBE~combout\,
	datad => \instancia_regE|ALUSrcE~regout\,
	combout => \instancia_mux_imm|outMux[12]~25_combout\);

-- Location: LCCOMB_X50_Y37_N30
\instancia_mux_imm|outMux[12]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[12]~26_combout\ = (\instancia_mux_imm|outMux[12]~25_combout\) # ((!\instancia_regE|ALUSrcE~regout\ & (\instancia_regW|ALUOutW\(12) & \instancia_Hazard|FowardBE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_regW|ALUOutW\(12),
	datac => \instancia_Hazard|FowardBE~combout\,
	datad => \instancia_mux_imm|outMux[12]~25_combout\,
	combout => \instancia_mux_imm|outMux[12]~26_combout\);

-- Location: LCCOMB_X50_Y37_N4
\instancia_ALU|ALUOut[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[12]~24_combout\ = (\instancia_regE|ALUControlE\(0) & ((\instancia_mux_imm|outMux[12]~26_combout\) # ((\instancia_mux_ForwardA|outMux[12]~12_combout\) # (\instancia_regE|ALUControlE\(1))))) # (!\instancia_regE|ALUControlE\(0) & 
-- (\instancia_mux_imm|outMux[12]~26_combout\ & (\instancia_mux_ForwardA|outMux[12]~12_combout\ & !\instancia_regE|ALUControlE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(0),
	datab => \instancia_mux_imm|outMux[12]~26_combout\,
	datac => \instancia_mux_ForwardA|outMux[12]~12_combout\,
	datad => \instancia_regE|ALUControlE\(1),
	combout => \instancia_ALU|ALUOut[12]~24_combout\);

-- Location: LCCOMB_X49_Y36_N26
\instancia_mux_ForwardA|outMux[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[31]~31_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(31))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(31),
	datac => \instancia_Hazard|FowardAE~combout\,
	datad => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a31\,
	combout => \instancia_mux_ForwardA|outMux[31]~31_combout\);

-- Location: LCCOMB_X49_Y36_N0
\instancia_ALU|ALUOut[31]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[31]~62_combout\ = (\instancia_mux_imm|outMux[31]~64_combout\ & ((\instancia_regE|ALUControlE\(0)) # ((!\instancia_regE|ALUControlE\(1) & \instancia_mux_ForwardA|outMux[31]~31_combout\)))) # (!\instancia_mux_imm|outMux[31]~64_combout\ 
-- & (\instancia_regE|ALUControlE\(0) & ((\instancia_regE|ALUControlE\(1)) # (\instancia_mux_ForwardA|outMux[31]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[31]~64_combout\,
	datab => \instancia_regE|ALUControlE\(1),
	datac => \instancia_regE|ALUControlE\(0),
	datad => \instancia_mux_ForwardA|outMux[31]~31_combout\,
	combout => \instancia_ALU|ALUOut[31]~62_combout\);

-- Location: LCCOMB_X52_Y36_N22
\instancia_mux_ForwardA|outMux[29]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[29]~29_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(29))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regW|ALUOutW\(29),
	datac => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a29\,
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[29]~29_combout\);

-- Location: LCCOMB_X52_Y38_N6
\instancia_mux_ForwardA|outMux[27]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[27]~27_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(27))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regW|ALUOutW\(27),
	datac => \instancia_Hazard|FowardAE~combout\,
	datad => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a27\,
	combout => \instancia_mux_ForwardA|outMux[27]~27_combout\);

-- Location: LCCOMB_X52_Y38_N10
\instancia_mux_imm|outMux[26]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[26]~54_combout\ = (\instancia_mux_imm|outMux[26]~53_combout\) # ((\instancia_regE|SignImmE\(15) & \instancia_regE|ALUSrcE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[26]~53_combout\,
	datab => \instancia_regE|SignImmE\(15),
	datac => \instancia_regE|ALUSrcE~regout\,
	combout => \instancia_mux_imm|outMux[26]~54_combout\);

-- Location: LCCOMB_X50_Y36_N0
\instancia_mux_imm|outMux[21]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[21]~43_combout\ = (\instancia_regE|ALUSrcE~regout\ & (((\instancia_regE|SignImmE\(15))))) # (!\instancia_regE|ALUSrcE~regout\ & (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a21\ & 
-- ((!\instancia_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a21\,
	datac => \instancia_regE|SignImmE\(15),
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[21]~43_combout\);

-- Location: LCCOMB_X50_Y36_N2
\instancia_mux_imm|outMux[21]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[21]~44_combout\ = (\instancia_mux_imm|outMux[21]~43_combout\) # ((!\instancia_regE|ALUSrcE~regout\ & (\instancia_regW|ALUOutW\(21) & \instancia_Hazard|FowardBE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_regW|ALUOutW\(21),
	datac => \instancia_Hazard|FowardBE~combout\,
	datad => \instancia_mux_imm|outMux[21]~43_combout\,
	combout => \instancia_mux_imm|outMux[21]~44_combout\);

-- Location: LCCOMB_X53_Y37_N24
\instancia_ALU|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~24_combout\ = ((\instancia_mux_ForwardA|outMux[12]~12_combout\ $ (\instancia_mux_imm|outMux[12]~26_combout\ $ (\instancia_ALU|Add0~23\)))) # (GND)
-- \instancia_ALU|Add0~25\ = CARRY((\instancia_mux_ForwardA|outMux[12]~12_combout\ & ((!\instancia_ALU|Add0~23\) # (!\instancia_mux_imm|outMux[12]~26_combout\))) # (!\instancia_mux_ForwardA|outMux[12]~12_combout\ & (!\instancia_mux_imm|outMux[12]~26_combout\ 
-- & !\instancia_ALU|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[12]~12_combout\,
	datab => \instancia_mux_imm|outMux[12]~26_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~23\,
	combout => \instancia_ALU|Add0~24_combout\,
	cout => \instancia_ALU|Add0~25\);

-- Location: LCCOMB_X53_Y37_N26
\instancia_ALU|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~26_combout\ = (\instancia_mux_ForwardA|outMux[13]~13_combout\ & ((\instancia_mux_imm|outMux[13]~28_combout\ & (!\instancia_ALU|Add0~25\)) # (!\instancia_mux_imm|outMux[13]~28_combout\ & (\instancia_ALU|Add0~25\ & VCC)))) # 
-- (!\instancia_mux_ForwardA|outMux[13]~13_combout\ & ((\instancia_mux_imm|outMux[13]~28_combout\ & ((\instancia_ALU|Add0~25\) # (GND))) # (!\instancia_mux_imm|outMux[13]~28_combout\ & (!\instancia_ALU|Add0~25\))))
-- \instancia_ALU|Add0~27\ = CARRY((\instancia_mux_ForwardA|outMux[13]~13_combout\ & (\instancia_mux_imm|outMux[13]~28_combout\ & !\instancia_ALU|Add0~25\)) # (!\instancia_mux_ForwardA|outMux[13]~13_combout\ & ((\instancia_mux_imm|outMux[13]~28_combout\) # 
-- (!\instancia_ALU|Add0~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[13]~13_combout\,
	datab => \instancia_mux_imm|outMux[13]~28_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~25\,
	combout => \instancia_ALU|Add0~26_combout\,
	cout => \instancia_ALU|Add0~27\);

-- Location: LCCOMB_X53_Y37_N28
\instancia_ALU|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~28_combout\ = ((\instancia_mux_ForwardA|outMux[14]~14_combout\ $ (\instancia_mux_imm|outMux[14]~30_combout\ $ (\instancia_ALU|Add0~27\)))) # (GND)
-- \instancia_ALU|Add0~29\ = CARRY((\instancia_mux_ForwardA|outMux[14]~14_combout\ & ((!\instancia_ALU|Add0~27\) # (!\instancia_mux_imm|outMux[14]~30_combout\))) # (!\instancia_mux_ForwardA|outMux[14]~14_combout\ & (!\instancia_mux_imm|outMux[14]~30_combout\ 
-- & !\instancia_ALU|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[14]~14_combout\,
	datab => \instancia_mux_imm|outMux[14]~30_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~27\,
	combout => \instancia_ALU|Add0~28_combout\,
	cout => \instancia_ALU|Add0~29\);

-- Location: LCCOMB_X53_Y37_N30
\instancia_ALU|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~30_combout\ = (\instancia_mux_imm|outMux[15]~32_combout\ & ((\instancia_mux_ForwardA|outMux[15]~15_combout\ & (!\instancia_ALU|Add0~29\)) # (!\instancia_mux_ForwardA|outMux[15]~15_combout\ & ((\instancia_ALU|Add0~29\) # (GND))))) # 
-- (!\instancia_mux_imm|outMux[15]~32_combout\ & ((\instancia_mux_ForwardA|outMux[15]~15_combout\ & (\instancia_ALU|Add0~29\ & VCC)) # (!\instancia_mux_ForwardA|outMux[15]~15_combout\ & (!\instancia_ALU|Add0~29\))))
-- \instancia_ALU|Add0~31\ = CARRY((\instancia_mux_imm|outMux[15]~32_combout\ & ((!\instancia_ALU|Add0~29\) # (!\instancia_mux_ForwardA|outMux[15]~15_combout\))) # (!\instancia_mux_imm|outMux[15]~32_combout\ & (!\instancia_mux_ForwardA|outMux[15]~15_combout\ 
-- & !\instancia_ALU|Add0~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[15]~32_combout\,
	datab => \instancia_mux_ForwardA|outMux[15]~15_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~29\,
	combout => \instancia_ALU|Add0~30_combout\,
	cout => \instancia_ALU|Add0~31\);

-- Location: LCCOMB_X53_Y36_N0
\instancia_ALU|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~32_combout\ = ((\instancia_mux_ForwardA|outMux[16]~16_combout\ $ (\instancia_mux_imm|outMux[16]~34_combout\ $ (\instancia_ALU|Add0~31\)))) # (GND)
-- \instancia_ALU|Add0~33\ = CARRY((\instancia_mux_ForwardA|outMux[16]~16_combout\ & ((!\instancia_ALU|Add0~31\) # (!\instancia_mux_imm|outMux[16]~34_combout\))) # (!\instancia_mux_ForwardA|outMux[16]~16_combout\ & (!\instancia_mux_imm|outMux[16]~34_combout\ 
-- & !\instancia_ALU|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[16]~16_combout\,
	datab => \instancia_mux_imm|outMux[16]~34_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~31\,
	combout => \instancia_ALU|Add0~32_combout\,
	cout => \instancia_ALU|Add0~33\);

-- Location: LCCOMB_X53_Y36_N2
\instancia_ALU|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~34_combout\ = (\instancia_mux_imm|outMux[17]~36_combout\ & ((\instancia_mux_ForwardA|outMux[17]~17_combout\ & (!\instancia_ALU|Add0~33\)) # (!\instancia_mux_ForwardA|outMux[17]~17_combout\ & ((\instancia_ALU|Add0~33\) # (GND))))) # 
-- (!\instancia_mux_imm|outMux[17]~36_combout\ & ((\instancia_mux_ForwardA|outMux[17]~17_combout\ & (\instancia_ALU|Add0~33\ & VCC)) # (!\instancia_mux_ForwardA|outMux[17]~17_combout\ & (!\instancia_ALU|Add0~33\))))
-- \instancia_ALU|Add0~35\ = CARRY((\instancia_mux_imm|outMux[17]~36_combout\ & ((!\instancia_ALU|Add0~33\) # (!\instancia_mux_ForwardA|outMux[17]~17_combout\))) # (!\instancia_mux_imm|outMux[17]~36_combout\ & (!\instancia_mux_ForwardA|outMux[17]~17_combout\ 
-- & !\instancia_ALU|Add0~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[17]~36_combout\,
	datab => \instancia_mux_ForwardA|outMux[17]~17_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~33\,
	combout => \instancia_ALU|Add0~34_combout\,
	cout => \instancia_ALU|Add0~35\);

-- Location: LCCOMB_X53_Y36_N4
\instancia_ALU|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~36_combout\ = ((\instancia_mux_imm|outMux[18]~38_combout\ $ (\instancia_mux_ForwardA|outMux[18]~18_combout\ $ (\instancia_ALU|Add0~35\)))) # (GND)
-- \instancia_ALU|Add0~37\ = CARRY((\instancia_mux_imm|outMux[18]~38_combout\ & (\instancia_mux_ForwardA|outMux[18]~18_combout\ & !\instancia_ALU|Add0~35\)) # (!\instancia_mux_imm|outMux[18]~38_combout\ & ((\instancia_mux_ForwardA|outMux[18]~18_combout\) # 
-- (!\instancia_ALU|Add0~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[18]~38_combout\,
	datab => \instancia_mux_ForwardA|outMux[18]~18_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~35\,
	combout => \instancia_ALU|Add0~36_combout\,
	cout => \instancia_ALU|Add0~37\);

-- Location: LCCOMB_X53_Y36_N6
\instancia_ALU|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~38_combout\ = (\instancia_mux_imm|outMux[19]~40_combout\ & ((\instancia_mux_ForwardA|outMux[19]~19_combout\ & (!\instancia_ALU|Add0~37\)) # (!\instancia_mux_ForwardA|outMux[19]~19_combout\ & ((\instancia_ALU|Add0~37\) # (GND))))) # 
-- (!\instancia_mux_imm|outMux[19]~40_combout\ & ((\instancia_mux_ForwardA|outMux[19]~19_combout\ & (\instancia_ALU|Add0~37\ & VCC)) # (!\instancia_mux_ForwardA|outMux[19]~19_combout\ & (!\instancia_ALU|Add0~37\))))
-- \instancia_ALU|Add0~39\ = CARRY((\instancia_mux_imm|outMux[19]~40_combout\ & ((!\instancia_ALU|Add0~37\) # (!\instancia_mux_ForwardA|outMux[19]~19_combout\))) # (!\instancia_mux_imm|outMux[19]~40_combout\ & (!\instancia_mux_ForwardA|outMux[19]~19_combout\ 
-- & !\instancia_ALU|Add0~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[19]~40_combout\,
	datab => \instancia_mux_ForwardA|outMux[19]~19_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~37\,
	combout => \instancia_ALU|Add0~38_combout\,
	cout => \instancia_ALU|Add0~39\);

-- Location: LCCOMB_X53_Y36_N8
\instancia_ALU|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~40_combout\ = ((\instancia_mux_imm|outMux[20]~42_combout\ $ (\instancia_mux_ForwardA|outMux[20]~20_combout\ $ (\instancia_ALU|Add0~39\)))) # (GND)
-- \instancia_ALU|Add0~41\ = CARRY((\instancia_mux_imm|outMux[20]~42_combout\ & (\instancia_mux_ForwardA|outMux[20]~20_combout\ & !\instancia_ALU|Add0~39\)) # (!\instancia_mux_imm|outMux[20]~42_combout\ & ((\instancia_mux_ForwardA|outMux[20]~20_combout\) # 
-- (!\instancia_ALU|Add0~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[20]~42_combout\,
	datab => \instancia_mux_ForwardA|outMux[20]~20_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~39\,
	combout => \instancia_ALU|Add0~40_combout\,
	cout => \instancia_ALU|Add0~41\);

-- Location: LCCOMB_X53_Y36_N10
\instancia_ALU|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~42_combout\ = (\instancia_mux_ForwardA|outMux[21]~21_combout\ & ((\instancia_mux_imm|outMux[21]~44_combout\ & (!\instancia_ALU|Add0~41\)) # (!\instancia_mux_imm|outMux[21]~44_combout\ & (\instancia_ALU|Add0~41\ & VCC)))) # 
-- (!\instancia_mux_ForwardA|outMux[21]~21_combout\ & ((\instancia_mux_imm|outMux[21]~44_combout\ & ((\instancia_ALU|Add0~41\) # (GND))) # (!\instancia_mux_imm|outMux[21]~44_combout\ & (!\instancia_ALU|Add0~41\))))
-- \instancia_ALU|Add0~43\ = CARRY((\instancia_mux_ForwardA|outMux[21]~21_combout\ & (\instancia_mux_imm|outMux[21]~44_combout\ & !\instancia_ALU|Add0~41\)) # (!\instancia_mux_ForwardA|outMux[21]~21_combout\ & ((\instancia_mux_imm|outMux[21]~44_combout\) # 
-- (!\instancia_ALU|Add0~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[21]~21_combout\,
	datab => \instancia_mux_imm|outMux[21]~44_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~41\,
	combout => \instancia_ALU|Add0~42_combout\,
	cout => \instancia_ALU|Add0~43\);

-- Location: LCCOMB_X53_Y36_N12
\instancia_ALU|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~44_combout\ = ((\instancia_mux_imm|outMux[22]~46_combout\ $ (\instancia_mux_ForwardA|outMux[22]~22_combout\ $ (\instancia_ALU|Add0~43\)))) # (GND)
-- \instancia_ALU|Add0~45\ = CARRY((\instancia_mux_imm|outMux[22]~46_combout\ & (\instancia_mux_ForwardA|outMux[22]~22_combout\ & !\instancia_ALU|Add0~43\)) # (!\instancia_mux_imm|outMux[22]~46_combout\ & ((\instancia_mux_ForwardA|outMux[22]~22_combout\) # 
-- (!\instancia_ALU|Add0~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[22]~46_combout\,
	datab => \instancia_mux_ForwardA|outMux[22]~22_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~43\,
	combout => \instancia_ALU|Add0~44_combout\,
	cout => \instancia_ALU|Add0~45\);

-- Location: LCCOMB_X53_Y36_N14
\instancia_ALU|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~46_combout\ = (\instancia_mux_ForwardA|outMux[23]~23_combout\ & ((\instancia_mux_imm|outMux[23]~48_combout\ & (!\instancia_ALU|Add0~45\)) # (!\instancia_mux_imm|outMux[23]~48_combout\ & (\instancia_ALU|Add0~45\ & VCC)))) # 
-- (!\instancia_mux_ForwardA|outMux[23]~23_combout\ & ((\instancia_mux_imm|outMux[23]~48_combout\ & ((\instancia_ALU|Add0~45\) # (GND))) # (!\instancia_mux_imm|outMux[23]~48_combout\ & (!\instancia_ALU|Add0~45\))))
-- \instancia_ALU|Add0~47\ = CARRY((\instancia_mux_ForwardA|outMux[23]~23_combout\ & (\instancia_mux_imm|outMux[23]~48_combout\ & !\instancia_ALU|Add0~45\)) # (!\instancia_mux_ForwardA|outMux[23]~23_combout\ & ((\instancia_mux_imm|outMux[23]~48_combout\) # 
-- (!\instancia_ALU|Add0~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[23]~23_combout\,
	datab => \instancia_mux_imm|outMux[23]~48_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~45\,
	combout => \instancia_ALU|Add0~46_combout\,
	cout => \instancia_ALU|Add0~47\);

-- Location: LCCOMB_X53_Y36_N16
\instancia_ALU|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~48_combout\ = ((\instancia_mux_imm|outMux[24]~50_combout\ $ (\instancia_mux_ForwardA|outMux[24]~24_combout\ $ (\instancia_ALU|Add0~47\)))) # (GND)
-- \instancia_ALU|Add0~49\ = CARRY((\instancia_mux_imm|outMux[24]~50_combout\ & (\instancia_mux_ForwardA|outMux[24]~24_combout\ & !\instancia_ALU|Add0~47\)) # (!\instancia_mux_imm|outMux[24]~50_combout\ & ((\instancia_mux_ForwardA|outMux[24]~24_combout\) # 
-- (!\instancia_ALU|Add0~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[24]~50_combout\,
	datab => \instancia_mux_ForwardA|outMux[24]~24_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~47\,
	combout => \instancia_ALU|Add0~48_combout\,
	cout => \instancia_ALU|Add0~49\);

-- Location: LCCOMB_X53_Y36_N18
\instancia_ALU|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~50_combout\ = (\instancia_mux_imm|outMux[25]~52_combout\ & ((\instancia_mux_ForwardA|outMux[25]~25_combout\ & (!\instancia_ALU|Add0~49\)) # (!\instancia_mux_ForwardA|outMux[25]~25_combout\ & ((\instancia_ALU|Add0~49\) # (GND))))) # 
-- (!\instancia_mux_imm|outMux[25]~52_combout\ & ((\instancia_mux_ForwardA|outMux[25]~25_combout\ & (\instancia_ALU|Add0~49\ & VCC)) # (!\instancia_mux_ForwardA|outMux[25]~25_combout\ & (!\instancia_ALU|Add0~49\))))
-- \instancia_ALU|Add0~51\ = CARRY((\instancia_mux_imm|outMux[25]~52_combout\ & ((!\instancia_ALU|Add0~49\) # (!\instancia_mux_ForwardA|outMux[25]~25_combout\))) # (!\instancia_mux_imm|outMux[25]~52_combout\ & (!\instancia_mux_ForwardA|outMux[25]~25_combout\ 
-- & !\instancia_ALU|Add0~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[25]~52_combout\,
	datab => \instancia_mux_ForwardA|outMux[25]~25_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~49\,
	combout => \instancia_ALU|Add0~50_combout\,
	cout => \instancia_ALU|Add0~51\);

-- Location: LCCOMB_X53_Y36_N20
\instancia_ALU|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~52_combout\ = ((\instancia_mux_ForwardA|outMux[26]~26_combout\ $ (\instancia_mux_imm|outMux[26]~54_combout\ $ (\instancia_ALU|Add0~51\)))) # (GND)
-- \instancia_ALU|Add0~53\ = CARRY((\instancia_mux_ForwardA|outMux[26]~26_combout\ & ((!\instancia_ALU|Add0~51\) # (!\instancia_mux_imm|outMux[26]~54_combout\))) # (!\instancia_mux_ForwardA|outMux[26]~26_combout\ & (!\instancia_mux_imm|outMux[26]~54_combout\ 
-- & !\instancia_ALU|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[26]~26_combout\,
	datab => \instancia_mux_imm|outMux[26]~54_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~51\,
	combout => \instancia_ALU|Add0~52_combout\,
	cout => \instancia_ALU|Add0~53\);

-- Location: LCCOMB_X53_Y36_N22
\instancia_ALU|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~54_combout\ = (\instancia_mux_imm|outMux[27]~56_combout\ & ((\instancia_mux_ForwardA|outMux[27]~27_combout\ & (!\instancia_ALU|Add0~53\)) # (!\instancia_mux_ForwardA|outMux[27]~27_combout\ & ((\instancia_ALU|Add0~53\) # (GND))))) # 
-- (!\instancia_mux_imm|outMux[27]~56_combout\ & ((\instancia_mux_ForwardA|outMux[27]~27_combout\ & (\instancia_ALU|Add0~53\ & VCC)) # (!\instancia_mux_ForwardA|outMux[27]~27_combout\ & (!\instancia_ALU|Add0~53\))))
-- \instancia_ALU|Add0~55\ = CARRY((\instancia_mux_imm|outMux[27]~56_combout\ & ((!\instancia_ALU|Add0~53\) # (!\instancia_mux_ForwardA|outMux[27]~27_combout\))) # (!\instancia_mux_imm|outMux[27]~56_combout\ & (!\instancia_mux_ForwardA|outMux[27]~27_combout\ 
-- & !\instancia_ALU|Add0~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[27]~56_combout\,
	datab => \instancia_mux_ForwardA|outMux[27]~27_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~53\,
	combout => \instancia_ALU|Add0~54_combout\,
	cout => \instancia_ALU|Add0~55\);

-- Location: LCCOMB_X53_Y36_N24
\instancia_ALU|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~56_combout\ = ((\instancia_mux_imm|outMux[28]~58_combout\ $ (\instancia_mux_ForwardA|outMux[28]~28_combout\ $ (\instancia_ALU|Add0~55\)))) # (GND)
-- \instancia_ALU|Add0~57\ = CARRY((\instancia_mux_imm|outMux[28]~58_combout\ & (\instancia_mux_ForwardA|outMux[28]~28_combout\ & !\instancia_ALU|Add0~55\)) # (!\instancia_mux_imm|outMux[28]~58_combout\ & ((\instancia_mux_ForwardA|outMux[28]~28_combout\) # 
-- (!\instancia_ALU|Add0~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[28]~58_combout\,
	datab => \instancia_mux_ForwardA|outMux[28]~28_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~55\,
	combout => \instancia_ALU|Add0~56_combout\,
	cout => \instancia_ALU|Add0~57\);

-- Location: LCCOMB_X53_Y36_N26
\instancia_ALU|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~58_combout\ = (\instancia_mux_imm|outMux[29]~60_combout\ & ((\instancia_mux_ForwardA|outMux[29]~29_combout\ & (!\instancia_ALU|Add0~57\)) # (!\instancia_mux_ForwardA|outMux[29]~29_combout\ & ((\instancia_ALU|Add0~57\) # (GND))))) # 
-- (!\instancia_mux_imm|outMux[29]~60_combout\ & ((\instancia_mux_ForwardA|outMux[29]~29_combout\ & (\instancia_ALU|Add0~57\ & VCC)) # (!\instancia_mux_ForwardA|outMux[29]~29_combout\ & (!\instancia_ALU|Add0~57\))))
-- \instancia_ALU|Add0~59\ = CARRY((\instancia_mux_imm|outMux[29]~60_combout\ & ((!\instancia_ALU|Add0~57\) # (!\instancia_mux_ForwardA|outMux[29]~29_combout\))) # (!\instancia_mux_imm|outMux[29]~60_combout\ & (!\instancia_mux_ForwardA|outMux[29]~29_combout\ 
-- & !\instancia_ALU|Add0~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[29]~60_combout\,
	datab => \instancia_mux_ForwardA|outMux[29]~29_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~57\,
	combout => \instancia_ALU|Add0~58_combout\,
	cout => \instancia_ALU|Add0~59\);

-- Location: LCCOMB_X53_Y36_N28
\instancia_ALU|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~60_combout\ = ((\instancia_mux_ForwardA|outMux[30]~30_combout\ $ (\instancia_mux_imm|outMux[30]~62_combout\ $ (\instancia_ALU|Add0~59\)))) # (GND)
-- \instancia_ALU|Add0~61\ = CARRY((\instancia_mux_ForwardA|outMux[30]~30_combout\ & ((!\instancia_ALU|Add0~59\) # (!\instancia_mux_imm|outMux[30]~62_combout\))) # (!\instancia_mux_ForwardA|outMux[30]~30_combout\ & (!\instancia_mux_imm|outMux[30]~62_combout\ 
-- & !\instancia_ALU|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[30]~30_combout\,
	datab => \instancia_mux_imm|outMux[30]~62_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~59\,
	combout => \instancia_ALU|Add0~60_combout\,
	cout => \instancia_ALU|Add0~61\);

-- Location: LCCOMB_X53_Y36_N30
\instancia_ALU|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~62_combout\ = \instancia_mux_imm|outMux[31]~64_combout\ $ (\instancia_ALU|Add0~61\ $ (!\instancia_mux_ForwardA|outMux[31]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[31]~64_combout\,
	datad => \instancia_mux_ForwardA|outMux[31]~31_combout\,
	cin => \instancia_ALU|Add0~61\,
	combout => \instancia_ALU|Add0~62_combout\);

-- Location: LCCOMB_X54_Y36_N4
\instancia_mux_ForwardA|outMux[23]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[23]~23_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(23))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(23),
	datab => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a23\,
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[23]~23_combout\);

-- Location: LCCOMB_X52_Y36_N6
\instancia_mux_imm|outMux[22]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[22]~45_combout\ = (\instancia_regE|ALUSrcE~regout\ & (((\instancia_regE|SignImmE\(15))))) # (!\instancia_regE|ALUSrcE~regout\ & (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a22\ & 
-- ((!\instancia_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a22\,
	datab => \instancia_regE|SignImmE\(15),
	datac => \instancia_Hazard|FowardBE~combout\,
	datad => \instancia_regE|ALUSrcE~regout\,
	combout => \instancia_mux_imm|outMux[22]~45_combout\);

-- Location: LCCOMB_X52_Y36_N26
\instancia_mux_imm|outMux[22]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[22]~46_combout\ = (\instancia_mux_imm|outMux[22]~45_combout\) # ((!\instancia_regE|ALUSrcE~regout\ & (\instancia_regW|ALUOutW\(22) & \instancia_Hazard|FowardBE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_regW|ALUOutW\(22),
	datac => \instancia_Hazard|FowardBE~combout\,
	datad => \instancia_mux_imm|outMux[22]~45_combout\,
	combout => \instancia_mux_imm|outMux[22]~46_combout\);

-- Location: LCCOMB_X49_Y36_N16
\instancia_mux_imm|outMux[20]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[20]~41_combout\ = (\instancia_regE|ALUSrcE~regout\ & (((\instancia_regE|SignImmE\(15))))) # (!\instancia_regE|ALUSrcE~regout\ & (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a20\ & 
-- ((!\instancia_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a20\,
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_regE|SignImmE\(15),
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[20]~41_combout\);

-- Location: LCCOMB_X50_Y36_N28
\instancia_mux_imm|outMux[20]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[20]~42_combout\ = (\instancia_mux_imm|outMux[20]~41_combout\) # ((\instancia_regW|ALUOutW\(20) & (\instancia_Hazard|FowardBE~combout\ & !\instancia_regE|ALUSrcE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(20),
	datab => \instancia_Hazard|FowardBE~combout\,
	datac => \instancia_regE|ALUSrcE~regout\,
	datad => \instancia_mux_imm|outMux[20]~41_combout\,
	combout => \instancia_mux_imm|outMux[20]~42_combout\);

-- Location: LCCOMB_X52_Y35_N14
\instancia_mux_ForwardA|outMux[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[16]~16_combout\ = (\instancia_Hazard|FowardAE~combout\ & ((\instancia_regW|ALUOutW\(16)))) # (!\instancia_Hazard|FowardAE~combout\ & (\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a16\,
	datab => \instancia_regW|ALUOutW\(16),
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[16]~16_combout\);

-- Location: LCCOMB_X54_Y36_N30
\instancia_mux_imm|outMux[15]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[15]~31_combout\ = (\instancia_regE|ALUSrcE~regout\ & (((\instancia_regE|SignImmE\(15))))) # (!\instancia_regE|ALUSrcE~regout\ & (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a15\ & 
-- ((!\instancia_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a15\,
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_regE|SignImmE\(15),
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[15]~31_combout\);

-- Location: LCCOMB_X54_Y36_N0
\instancia_mux_imm|outMux[15]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[15]~32_combout\ = (\instancia_mux_imm|outMux[15]~31_combout\) # ((!\instancia_regE|ALUSrcE~regout\ & (\instancia_Hazard|FowardBE~combout\ & \instancia_regW|ALUOutW\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_Hazard|FowardBE~combout\,
	datac => \instancia_regW|ALUOutW\(15),
	datad => \instancia_mux_imm|outMux[15]~31_combout\,
	combout => \instancia_mux_imm|outMux[15]~32_combout\);

-- Location: LCCOMB_X51_Y37_N26
\instancia_ALU|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~26_combout\ = (\instancia_mux_ForwardA|outMux[13]~13_combout\ & ((\instancia_mux_imm|outMux[13]~28_combout\ & (\instancia_ALU|Add1~25\ & VCC)) # (!\instancia_mux_imm|outMux[13]~28_combout\ & (!\instancia_ALU|Add1~25\)))) # 
-- (!\instancia_mux_ForwardA|outMux[13]~13_combout\ & ((\instancia_mux_imm|outMux[13]~28_combout\ & (!\instancia_ALU|Add1~25\)) # (!\instancia_mux_imm|outMux[13]~28_combout\ & ((\instancia_ALU|Add1~25\) # (GND)))))
-- \instancia_ALU|Add1~27\ = CARRY((\instancia_mux_ForwardA|outMux[13]~13_combout\ & (!\instancia_mux_imm|outMux[13]~28_combout\ & !\instancia_ALU|Add1~25\)) # (!\instancia_mux_ForwardA|outMux[13]~13_combout\ & ((!\instancia_ALU|Add1~25\) # 
-- (!\instancia_mux_imm|outMux[13]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[13]~13_combout\,
	datab => \instancia_mux_imm|outMux[13]~28_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~25\,
	combout => \instancia_ALU|Add1~26_combout\,
	cout => \instancia_ALU|Add1~27\);

-- Location: LCCOMB_X51_Y37_N28
\instancia_ALU|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~28_combout\ = ((\instancia_mux_ForwardA|outMux[14]~14_combout\ $ (\instancia_mux_imm|outMux[14]~30_combout\ $ (!\instancia_ALU|Add1~27\)))) # (GND)
-- \instancia_ALU|Add1~29\ = CARRY((\instancia_mux_ForwardA|outMux[14]~14_combout\ & ((\instancia_mux_imm|outMux[14]~30_combout\) # (!\instancia_ALU|Add1~27\))) # (!\instancia_mux_ForwardA|outMux[14]~14_combout\ & (\instancia_mux_imm|outMux[14]~30_combout\ & 
-- !\instancia_ALU|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[14]~14_combout\,
	datab => \instancia_mux_imm|outMux[14]~30_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~27\,
	combout => \instancia_ALU|Add1~28_combout\,
	cout => \instancia_ALU|Add1~29\);

-- Location: LCCOMB_X51_Y37_N30
\instancia_ALU|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~30_combout\ = (\instancia_mux_ForwardA|outMux[15]~15_combout\ & ((\instancia_mux_imm|outMux[15]~32_combout\ & (\instancia_ALU|Add1~29\ & VCC)) # (!\instancia_mux_imm|outMux[15]~32_combout\ & (!\instancia_ALU|Add1~29\)))) # 
-- (!\instancia_mux_ForwardA|outMux[15]~15_combout\ & ((\instancia_mux_imm|outMux[15]~32_combout\ & (!\instancia_ALU|Add1~29\)) # (!\instancia_mux_imm|outMux[15]~32_combout\ & ((\instancia_ALU|Add1~29\) # (GND)))))
-- \instancia_ALU|Add1~31\ = CARRY((\instancia_mux_ForwardA|outMux[15]~15_combout\ & (!\instancia_mux_imm|outMux[15]~32_combout\ & !\instancia_ALU|Add1~29\)) # (!\instancia_mux_ForwardA|outMux[15]~15_combout\ & ((!\instancia_ALU|Add1~29\) # 
-- (!\instancia_mux_imm|outMux[15]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[15]~15_combout\,
	datab => \instancia_mux_imm|outMux[15]~32_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~29\,
	combout => \instancia_ALU|Add1~30_combout\,
	cout => \instancia_ALU|Add1~31\);

-- Location: LCCOMB_X51_Y36_N0
\instancia_ALU|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~32_combout\ = ((\instancia_mux_imm|outMux[16]~34_combout\ $ (\instancia_mux_ForwardA|outMux[16]~16_combout\ $ (!\instancia_ALU|Add1~31\)))) # (GND)
-- \instancia_ALU|Add1~33\ = CARRY((\instancia_mux_imm|outMux[16]~34_combout\ & ((\instancia_mux_ForwardA|outMux[16]~16_combout\) # (!\instancia_ALU|Add1~31\))) # (!\instancia_mux_imm|outMux[16]~34_combout\ & (\instancia_mux_ForwardA|outMux[16]~16_combout\ & 
-- !\instancia_ALU|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[16]~34_combout\,
	datab => \instancia_mux_ForwardA|outMux[16]~16_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~31\,
	combout => \instancia_ALU|Add1~32_combout\,
	cout => \instancia_ALU|Add1~33\);

-- Location: LCCOMB_X51_Y36_N2
\instancia_ALU|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~34_combout\ = (\instancia_mux_imm|outMux[17]~36_combout\ & ((\instancia_mux_ForwardA|outMux[17]~17_combout\ & (\instancia_ALU|Add1~33\ & VCC)) # (!\instancia_mux_ForwardA|outMux[17]~17_combout\ & (!\instancia_ALU|Add1~33\)))) # 
-- (!\instancia_mux_imm|outMux[17]~36_combout\ & ((\instancia_mux_ForwardA|outMux[17]~17_combout\ & (!\instancia_ALU|Add1~33\)) # (!\instancia_mux_ForwardA|outMux[17]~17_combout\ & ((\instancia_ALU|Add1~33\) # (GND)))))
-- \instancia_ALU|Add1~35\ = CARRY((\instancia_mux_imm|outMux[17]~36_combout\ & (!\instancia_mux_ForwardA|outMux[17]~17_combout\ & !\instancia_ALU|Add1~33\)) # (!\instancia_mux_imm|outMux[17]~36_combout\ & ((!\instancia_ALU|Add1~33\) # 
-- (!\instancia_mux_ForwardA|outMux[17]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[17]~36_combout\,
	datab => \instancia_mux_ForwardA|outMux[17]~17_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~33\,
	combout => \instancia_ALU|Add1~34_combout\,
	cout => \instancia_ALU|Add1~35\);

-- Location: LCCOMB_X51_Y36_N4
\instancia_ALU|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~36_combout\ = ((\instancia_mux_imm|outMux[18]~38_combout\ $ (\instancia_mux_ForwardA|outMux[18]~18_combout\ $ (!\instancia_ALU|Add1~35\)))) # (GND)
-- \instancia_ALU|Add1~37\ = CARRY((\instancia_mux_imm|outMux[18]~38_combout\ & ((\instancia_mux_ForwardA|outMux[18]~18_combout\) # (!\instancia_ALU|Add1~35\))) # (!\instancia_mux_imm|outMux[18]~38_combout\ & (\instancia_mux_ForwardA|outMux[18]~18_combout\ & 
-- !\instancia_ALU|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[18]~38_combout\,
	datab => \instancia_mux_ForwardA|outMux[18]~18_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~35\,
	combout => \instancia_ALU|Add1~36_combout\,
	cout => \instancia_ALU|Add1~37\);

-- Location: LCCOMB_X51_Y36_N6
\instancia_ALU|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~38_combout\ = (\instancia_mux_imm|outMux[19]~40_combout\ & ((\instancia_mux_ForwardA|outMux[19]~19_combout\ & (\instancia_ALU|Add1~37\ & VCC)) # (!\instancia_mux_ForwardA|outMux[19]~19_combout\ & (!\instancia_ALU|Add1~37\)))) # 
-- (!\instancia_mux_imm|outMux[19]~40_combout\ & ((\instancia_mux_ForwardA|outMux[19]~19_combout\ & (!\instancia_ALU|Add1~37\)) # (!\instancia_mux_ForwardA|outMux[19]~19_combout\ & ((\instancia_ALU|Add1~37\) # (GND)))))
-- \instancia_ALU|Add1~39\ = CARRY((\instancia_mux_imm|outMux[19]~40_combout\ & (!\instancia_mux_ForwardA|outMux[19]~19_combout\ & !\instancia_ALU|Add1~37\)) # (!\instancia_mux_imm|outMux[19]~40_combout\ & ((!\instancia_ALU|Add1~37\) # 
-- (!\instancia_mux_ForwardA|outMux[19]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[19]~40_combout\,
	datab => \instancia_mux_ForwardA|outMux[19]~19_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~37\,
	combout => \instancia_ALU|Add1~38_combout\,
	cout => \instancia_ALU|Add1~39\);

-- Location: LCCOMB_X51_Y36_N8
\instancia_ALU|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~40_combout\ = ((\instancia_mux_ForwardA|outMux[20]~20_combout\ $ (\instancia_mux_imm|outMux[20]~42_combout\ $ (!\instancia_ALU|Add1~39\)))) # (GND)
-- \instancia_ALU|Add1~41\ = CARRY((\instancia_mux_ForwardA|outMux[20]~20_combout\ & ((\instancia_mux_imm|outMux[20]~42_combout\) # (!\instancia_ALU|Add1~39\))) # (!\instancia_mux_ForwardA|outMux[20]~20_combout\ & (\instancia_mux_imm|outMux[20]~42_combout\ & 
-- !\instancia_ALU|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[20]~20_combout\,
	datab => \instancia_mux_imm|outMux[20]~42_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~39\,
	combout => \instancia_ALU|Add1~40_combout\,
	cout => \instancia_ALU|Add1~41\);

-- Location: LCCOMB_X51_Y36_N10
\instancia_ALU|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~42_combout\ = (\instancia_mux_imm|outMux[21]~44_combout\ & ((\instancia_mux_ForwardA|outMux[21]~21_combout\ & (\instancia_ALU|Add1~41\ & VCC)) # (!\instancia_mux_ForwardA|outMux[21]~21_combout\ & (!\instancia_ALU|Add1~41\)))) # 
-- (!\instancia_mux_imm|outMux[21]~44_combout\ & ((\instancia_mux_ForwardA|outMux[21]~21_combout\ & (!\instancia_ALU|Add1~41\)) # (!\instancia_mux_ForwardA|outMux[21]~21_combout\ & ((\instancia_ALU|Add1~41\) # (GND)))))
-- \instancia_ALU|Add1~43\ = CARRY((\instancia_mux_imm|outMux[21]~44_combout\ & (!\instancia_mux_ForwardA|outMux[21]~21_combout\ & !\instancia_ALU|Add1~41\)) # (!\instancia_mux_imm|outMux[21]~44_combout\ & ((!\instancia_ALU|Add1~41\) # 
-- (!\instancia_mux_ForwardA|outMux[21]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[21]~44_combout\,
	datab => \instancia_mux_ForwardA|outMux[21]~21_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~41\,
	combout => \instancia_ALU|Add1~42_combout\,
	cout => \instancia_ALU|Add1~43\);

-- Location: LCCOMB_X51_Y36_N12
\instancia_ALU|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~44_combout\ = ((\instancia_mux_ForwardA|outMux[22]~22_combout\ $ (\instancia_mux_imm|outMux[22]~46_combout\ $ (!\instancia_ALU|Add1~43\)))) # (GND)
-- \instancia_ALU|Add1~45\ = CARRY((\instancia_mux_ForwardA|outMux[22]~22_combout\ & ((\instancia_mux_imm|outMux[22]~46_combout\) # (!\instancia_ALU|Add1~43\))) # (!\instancia_mux_ForwardA|outMux[22]~22_combout\ & (\instancia_mux_imm|outMux[22]~46_combout\ & 
-- !\instancia_ALU|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[22]~22_combout\,
	datab => \instancia_mux_imm|outMux[22]~46_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~43\,
	combout => \instancia_ALU|Add1~44_combout\,
	cout => \instancia_ALU|Add1~45\);

-- Location: LCCOMB_X51_Y36_N14
\instancia_ALU|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~46_combout\ = (\instancia_mux_imm|outMux[23]~48_combout\ & ((\instancia_mux_ForwardA|outMux[23]~23_combout\ & (\instancia_ALU|Add1~45\ & VCC)) # (!\instancia_mux_ForwardA|outMux[23]~23_combout\ & (!\instancia_ALU|Add1~45\)))) # 
-- (!\instancia_mux_imm|outMux[23]~48_combout\ & ((\instancia_mux_ForwardA|outMux[23]~23_combout\ & (!\instancia_ALU|Add1~45\)) # (!\instancia_mux_ForwardA|outMux[23]~23_combout\ & ((\instancia_ALU|Add1~45\) # (GND)))))
-- \instancia_ALU|Add1~47\ = CARRY((\instancia_mux_imm|outMux[23]~48_combout\ & (!\instancia_mux_ForwardA|outMux[23]~23_combout\ & !\instancia_ALU|Add1~45\)) # (!\instancia_mux_imm|outMux[23]~48_combout\ & ((!\instancia_ALU|Add1~45\) # 
-- (!\instancia_mux_ForwardA|outMux[23]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[23]~48_combout\,
	datab => \instancia_mux_ForwardA|outMux[23]~23_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~45\,
	combout => \instancia_ALU|Add1~46_combout\,
	cout => \instancia_ALU|Add1~47\);

-- Location: LCCOMB_X51_Y36_N16
\instancia_ALU|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~48_combout\ = ((\instancia_mux_imm|outMux[24]~50_combout\ $ (\instancia_mux_ForwardA|outMux[24]~24_combout\ $ (!\instancia_ALU|Add1~47\)))) # (GND)
-- \instancia_ALU|Add1~49\ = CARRY((\instancia_mux_imm|outMux[24]~50_combout\ & ((\instancia_mux_ForwardA|outMux[24]~24_combout\) # (!\instancia_ALU|Add1~47\))) # (!\instancia_mux_imm|outMux[24]~50_combout\ & (\instancia_mux_ForwardA|outMux[24]~24_combout\ & 
-- !\instancia_ALU|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[24]~50_combout\,
	datab => \instancia_mux_ForwardA|outMux[24]~24_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~47\,
	combout => \instancia_ALU|Add1~48_combout\,
	cout => \instancia_ALU|Add1~49\);

-- Location: LCCOMB_X51_Y36_N18
\instancia_ALU|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~50_combout\ = (\instancia_mux_imm|outMux[25]~52_combout\ & ((\instancia_mux_ForwardA|outMux[25]~25_combout\ & (\instancia_ALU|Add1~49\ & VCC)) # (!\instancia_mux_ForwardA|outMux[25]~25_combout\ & (!\instancia_ALU|Add1~49\)))) # 
-- (!\instancia_mux_imm|outMux[25]~52_combout\ & ((\instancia_mux_ForwardA|outMux[25]~25_combout\ & (!\instancia_ALU|Add1~49\)) # (!\instancia_mux_ForwardA|outMux[25]~25_combout\ & ((\instancia_ALU|Add1~49\) # (GND)))))
-- \instancia_ALU|Add1~51\ = CARRY((\instancia_mux_imm|outMux[25]~52_combout\ & (!\instancia_mux_ForwardA|outMux[25]~25_combout\ & !\instancia_ALU|Add1~49\)) # (!\instancia_mux_imm|outMux[25]~52_combout\ & ((!\instancia_ALU|Add1~49\) # 
-- (!\instancia_mux_ForwardA|outMux[25]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[25]~52_combout\,
	datab => \instancia_mux_ForwardA|outMux[25]~25_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~49\,
	combout => \instancia_ALU|Add1~50_combout\,
	cout => \instancia_ALU|Add1~51\);

-- Location: LCCOMB_X51_Y36_N20
\instancia_ALU|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~52_combout\ = ((\instancia_mux_imm|outMux[26]~54_combout\ $ (\instancia_mux_ForwardA|outMux[26]~26_combout\ $ (!\instancia_ALU|Add1~51\)))) # (GND)
-- \instancia_ALU|Add1~53\ = CARRY((\instancia_mux_imm|outMux[26]~54_combout\ & ((\instancia_mux_ForwardA|outMux[26]~26_combout\) # (!\instancia_ALU|Add1~51\))) # (!\instancia_mux_imm|outMux[26]~54_combout\ & (\instancia_mux_ForwardA|outMux[26]~26_combout\ & 
-- !\instancia_ALU|Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[26]~54_combout\,
	datab => \instancia_mux_ForwardA|outMux[26]~26_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~51\,
	combout => \instancia_ALU|Add1~52_combout\,
	cout => \instancia_ALU|Add1~53\);

-- Location: LCCOMB_X51_Y36_N22
\instancia_ALU|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~54_combout\ = (\instancia_mux_ForwardA|outMux[27]~27_combout\ & ((\instancia_mux_imm|outMux[27]~56_combout\ & (\instancia_ALU|Add1~53\ & VCC)) # (!\instancia_mux_imm|outMux[27]~56_combout\ & (!\instancia_ALU|Add1~53\)))) # 
-- (!\instancia_mux_ForwardA|outMux[27]~27_combout\ & ((\instancia_mux_imm|outMux[27]~56_combout\ & (!\instancia_ALU|Add1~53\)) # (!\instancia_mux_imm|outMux[27]~56_combout\ & ((\instancia_ALU|Add1~53\) # (GND)))))
-- \instancia_ALU|Add1~55\ = CARRY((\instancia_mux_ForwardA|outMux[27]~27_combout\ & (!\instancia_mux_imm|outMux[27]~56_combout\ & !\instancia_ALU|Add1~53\)) # (!\instancia_mux_ForwardA|outMux[27]~27_combout\ & ((!\instancia_ALU|Add1~53\) # 
-- (!\instancia_mux_imm|outMux[27]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[27]~27_combout\,
	datab => \instancia_mux_imm|outMux[27]~56_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~53\,
	combout => \instancia_ALU|Add1~54_combout\,
	cout => \instancia_ALU|Add1~55\);

-- Location: LCCOMB_X51_Y36_N24
\instancia_ALU|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~56_combout\ = ((\instancia_mux_imm|outMux[28]~58_combout\ $ (\instancia_mux_ForwardA|outMux[28]~28_combout\ $ (!\instancia_ALU|Add1~55\)))) # (GND)
-- \instancia_ALU|Add1~57\ = CARRY((\instancia_mux_imm|outMux[28]~58_combout\ & ((\instancia_mux_ForwardA|outMux[28]~28_combout\) # (!\instancia_ALU|Add1~55\))) # (!\instancia_mux_imm|outMux[28]~58_combout\ & (\instancia_mux_ForwardA|outMux[28]~28_combout\ & 
-- !\instancia_ALU|Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[28]~58_combout\,
	datab => \instancia_mux_ForwardA|outMux[28]~28_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~55\,
	combout => \instancia_ALU|Add1~56_combout\,
	cout => \instancia_ALU|Add1~57\);

-- Location: LCCOMB_X51_Y36_N26
\instancia_ALU|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~58_combout\ = (\instancia_mux_imm|outMux[29]~60_combout\ & ((\instancia_mux_ForwardA|outMux[29]~29_combout\ & (\instancia_ALU|Add1~57\ & VCC)) # (!\instancia_mux_ForwardA|outMux[29]~29_combout\ & (!\instancia_ALU|Add1~57\)))) # 
-- (!\instancia_mux_imm|outMux[29]~60_combout\ & ((\instancia_mux_ForwardA|outMux[29]~29_combout\ & (!\instancia_ALU|Add1~57\)) # (!\instancia_mux_ForwardA|outMux[29]~29_combout\ & ((\instancia_ALU|Add1~57\) # (GND)))))
-- \instancia_ALU|Add1~59\ = CARRY((\instancia_mux_imm|outMux[29]~60_combout\ & (!\instancia_mux_ForwardA|outMux[29]~29_combout\ & !\instancia_ALU|Add1~57\)) # (!\instancia_mux_imm|outMux[29]~60_combout\ & ((!\instancia_ALU|Add1~57\) # 
-- (!\instancia_mux_ForwardA|outMux[29]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[29]~60_combout\,
	datab => \instancia_mux_ForwardA|outMux[29]~29_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~57\,
	combout => \instancia_ALU|Add1~58_combout\,
	cout => \instancia_ALU|Add1~59\);

-- Location: LCCOMB_X51_Y36_N28
\instancia_ALU|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~60_combout\ = ((\instancia_mux_ForwardA|outMux[30]~30_combout\ $ (\instancia_mux_imm|outMux[30]~62_combout\ $ (!\instancia_ALU|Add1~59\)))) # (GND)
-- \instancia_ALU|Add1~61\ = CARRY((\instancia_mux_ForwardA|outMux[30]~30_combout\ & ((\instancia_mux_imm|outMux[30]~62_combout\) # (!\instancia_ALU|Add1~59\))) # (!\instancia_mux_ForwardA|outMux[30]~30_combout\ & (\instancia_mux_imm|outMux[30]~62_combout\ & 
-- !\instancia_ALU|Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[30]~30_combout\,
	datab => \instancia_mux_imm|outMux[30]~62_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~59\,
	combout => \instancia_ALU|Add1~60_combout\,
	cout => \instancia_ALU|Add1~61\);

-- Location: LCCOMB_X51_Y36_N30
\instancia_ALU|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~62_combout\ = \instancia_mux_imm|outMux[31]~64_combout\ $ (\instancia_mux_ForwardA|outMux[31]~31_combout\ $ (\instancia_ALU|Add1~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[31]~64_combout\,
	datab => \instancia_mux_ForwardA|outMux[31]~31_combout\,
	cin => \instancia_ALU|Add1~61\,
	combout => \instancia_ALU|Add1~62_combout\);

-- Location: LCCOMB_X54_Y36_N14
\instancia_ALU|ALUOut[31]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[31]~63_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[31]~62_combout\ & (\instancia_ALU|Add0~62_combout\)) # (!\instancia_ALU|ALUOut[31]~62_combout\ & ((\instancia_ALU|Add1~62_combout\))))) # 
-- (!\instancia_regE|ALUControlE\(1) & (\instancia_ALU|ALUOut[31]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|ALUOut[31]~62_combout\,
	datac => \instancia_ALU|Add0~62_combout\,
	datad => \instancia_ALU|Add1~62_combout\,
	combout => \instancia_ALU|ALUOut[31]~63_combout\);

-- Location: LCFF_X54_Y36_N15
\instancia_regW|ALUOutW[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[31]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(31));

-- Location: LCCOMB_X54_Y35_N4
\instancia_mux_imm|outMux[30]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[30]~61_combout\ = (!\instancia_regE|ALUSrcE~regout\ & ((\instancia_Hazard|FowardBE~combout\ & ((\instancia_regW|ALUOutW\(30)))) # (!\instancia_Hazard|FowardBE~combout\ & 
-- (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a30\,
	datac => \instancia_regW|ALUOutW\(30),
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[30]~61_combout\);

-- Location: LCCOMB_X54_Y35_N30
\instancia_mux_imm|outMux[30]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[30]~62_combout\ = (\instancia_mux_imm|outMux[30]~61_combout\) # ((\instancia_regE|ALUSrcE~regout\ & \instancia_regE|SignImmE\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_regE|SignImmE\(15),
	datac => \instancia_mux_imm|outMux[30]~61_combout\,
	combout => \instancia_mux_imm|outMux[30]~62_combout\);

-- Location: LCCOMB_X54_Y36_N12
\instancia_ALU|ALUOut[30]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[30]~61_combout\ = (\instancia_ALU|ALUOut[30]~60_combout\ & ((\instancia_ALU|Add0~60_combout\) # ((!\instancia_regE|ALUControlE\(1))))) # (!\instancia_ALU|ALUOut[30]~60_combout\ & (((\instancia_regE|ALUControlE\(1) & 
-- \instancia_ALU|Add1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_ALU|ALUOut[30]~60_combout\,
	datab => \instancia_ALU|Add0~60_combout\,
	datac => \instancia_regE|ALUControlE\(1),
	datad => \instancia_ALU|Add1~60_combout\,
	combout => \instancia_ALU|ALUOut[30]~61_combout\);

-- Location: LCFF_X54_Y36_N13
\instancia_regW|ALUOutW[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[30]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(30));

-- Location: LCCOMB_X53_Y35_N16
\instancia_mux_imm|outMux[29]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[29]~59_combout\ = (!\instancia_regE|ALUSrcE~regout\ & ((\instancia_Hazard|FowardBE~combout\ & (\instancia_regW|ALUOutW\(29))) # (!\instancia_Hazard|FowardBE~combout\ & 
-- ((\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a29\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_regW|ALUOutW\(29),
	datac => \instancia_Hazard|FowardBE~combout\,
	datad => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a29\,
	combout => \instancia_mux_imm|outMux[29]~59_combout\);

-- Location: LCCOMB_X52_Y36_N18
\instancia_mux_imm|outMux[29]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[29]~60_combout\ = (\instancia_mux_imm|outMux[29]~59_combout\) # ((\instancia_regE|ALUSrcE~regout\ & \instancia_regE|SignImmE\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_regE|SignImmE\(15),
	datad => \instancia_mux_imm|outMux[29]~59_combout\,
	combout => \instancia_mux_imm|outMux[29]~60_combout\);

-- Location: LCCOMB_X52_Y36_N14
\instancia_ALU|ALUOut[29]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[29]~58_combout\ = (\instancia_regE|ALUControlE\(0) & ((\instancia_mux_imm|outMux[29]~60_combout\) # ((\instancia_regE|ALUControlE\(1)) # (\instancia_mux_ForwardA|outMux[29]~29_combout\)))) # (!\instancia_regE|ALUControlE\(0) & 
-- (\instancia_mux_imm|outMux[29]~60_combout\ & (!\instancia_regE|ALUControlE\(1) & \instancia_mux_ForwardA|outMux[29]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(0),
	datab => \instancia_mux_imm|outMux[29]~60_combout\,
	datac => \instancia_regE|ALUControlE\(1),
	datad => \instancia_mux_ForwardA|outMux[29]~29_combout\,
	combout => \instancia_ALU|ALUOut[29]~58_combout\);

-- Location: LCCOMB_X52_Y36_N30
\instancia_ALU|ALUOut[29]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[29]~59_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[29]~58_combout\ & (\instancia_ALU|Add0~58_combout\)) # (!\instancia_ALU|ALUOut[29]~58_combout\ & ((\instancia_ALU|Add1~58_combout\))))) # 
-- (!\instancia_regE|ALUControlE\(1) & (\instancia_ALU|ALUOut[29]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|ALUOut[29]~58_combout\,
	datac => \instancia_ALU|Add0~58_combout\,
	datad => \instancia_ALU|Add1~58_combout\,
	combout => \instancia_ALU|ALUOut[29]~59_combout\);

-- Location: LCFF_X52_Y36_N31
\instancia_regW|ALUOutW[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[29]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(29));

-- Location: LCCOMB_X54_Y36_N28
\instancia_mux_ForwardA|outMux[28]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[28]~28_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(28))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(28),
	datac => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a28\,
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[28]~28_combout\);

-- Location: LCCOMB_X49_Y36_N18
\instancia_mux_imm|outMux[28]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[28]~57_combout\ = (!\instancia_regE|ALUSrcE~regout\ & ((\instancia_Hazard|FowardBE~combout\ & ((\instancia_regW|ALUOutW\(28)))) # (!\instancia_Hazard|FowardBE~combout\ & 
-- (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a28\,
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_regW|ALUOutW\(28),
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[28]~57_combout\);

-- Location: LCCOMB_X49_Y36_N4
\instancia_mux_imm|outMux[28]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[28]~58_combout\ = (\instancia_mux_imm|outMux[28]~57_combout\) # ((\instancia_regE|ALUSrcE~regout\ & \instancia_regE|SignImmE\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_regE|SignImmE\(15),
	datad => \instancia_mux_imm|outMux[28]~57_combout\,
	combout => \instancia_mux_imm|outMux[28]~58_combout\);

-- Location: LCCOMB_X54_Y36_N8
\instancia_ALU|ALUOut[28]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[28]~56_combout\ = (\instancia_regE|ALUControlE\(0) & ((\instancia_mux_ForwardA|outMux[28]~28_combout\) # ((\instancia_regE|ALUControlE\(1)) # (\instancia_mux_imm|outMux[28]~58_combout\)))) # (!\instancia_regE|ALUControlE\(0) & 
-- (\instancia_mux_ForwardA|outMux[28]~28_combout\ & (!\instancia_regE|ALUControlE\(1) & \instancia_mux_imm|outMux[28]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(0),
	datab => \instancia_mux_ForwardA|outMux[28]~28_combout\,
	datac => \instancia_regE|ALUControlE\(1),
	datad => \instancia_mux_imm|outMux[28]~58_combout\,
	combout => \instancia_ALU|ALUOut[28]~56_combout\);

-- Location: LCCOMB_X54_Y36_N6
\instancia_ALU|ALUOut[28]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[28]~57_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[28]~56_combout\ & (\instancia_ALU|Add0~56_combout\)) # (!\instancia_ALU|ALUOut[28]~56_combout\ & ((\instancia_ALU|Add1~56_combout\))))) # 
-- (!\instancia_regE|ALUControlE\(1) & (((\instancia_ALU|ALUOut[28]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|Add0~56_combout\,
	datac => \instancia_ALU|ALUOut[28]~56_combout\,
	datad => \instancia_ALU|Add1~56_combout\,
	combout => \instancia_ALU|ALUOut[28]~57_combout\);

-- Location: LCFF_X54_Y36_N7
\instancia_regW|ALUOutW[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[28]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(28));

-- Location: LCCOMB_X52_Y38_N24
\instancia_mux_imm|outMux[27]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[27]~55_combout\ = (!\instancia_regE|ALUSrcE~regout\ & ((\instancia_Hazard|FowardBE~combout\ & ((\instancia_regW|ALUOutW\(27)))) # (!\instancia_Hazard|FowardBE~combout\ & 
-- (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a27\,
	datac => \instancia_regW|ALUOutW\(27),
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[27]~55_combout\);

-- Location: LCCOMB_X52_Y38_N14
\instancia_mux_imm|outMux[27]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[27]~56_combout\ = (\instancia_mux_imm|outMux[27]~55_combout\) # ((\instancia_regE|ALUSrcE~regout\ & \instancia_regE|SignImmE\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_regE|SignImmE\(15),
	datac => \instancia_mux_imm|outMux[27]~55_combout\,
	combout => \instancia_mux_imm|outMux[27]~56_combout\);

-- Location: LCCOMB_X52_Y38_N0
\instancia_ALU|ALUOut[27]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[27]~54_combout\ = (\instancia_mux_ForwardA|outMux[27]~27_combout\ & ((\instancia_regE|ALUControlE\(0)) # ((\instancia_mux_imm|outMux[27]~56_combout\ & !\instancia_regE|ALUControlE\(1))))) # 
-- (!\instancia_mux_ForwardA|outMux[27]~27_combout\ & (\instancia_regE|ALUControlE\(0) & ((\instancia_mux_imm|outMux[27]~56_combout\) # (\instancia_regE|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[27]~27_combout\,
	datab => \instancia_mux_imm|outMux[27]~56_combout\,
	datac => \instancia_regE|ALUControlE\(0),
	datad => \instancia_regE|ALUControlE\(1),
	combout => \instancia_ALU|ALUOut[27]~54_combout\);

-- Location: LCCOMB_X52_Y38_N4
\instancia_ALU|ALUOut[27]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[27]~55_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[27]~54_combout\ & ((\instancia_ALU|Add0~54_combout\))) # (!\instancia_ALU|ALUOut[27]~54_combout\ & (\instancia_ALU|Add1~54_combout\)))) # 
-- (!\instancia_regE|ALUControlE\(1) & (\instancia_ALU|ALUOut[27]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|ALUOut[27]~54_combout\,
	datac => \instancia_ALU|Add1~54_combout\,
	datad => \instancia_ALU|Add0~54_combout\,
	combout => \instancia_ALU|ALUOut[27]~55_combout\);

-- Location: LCFF_X52_Y38_N5
\instancia_regW|ALUOutW[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(27));

-- Location: LCCOMB_X52_Y38_N26
\instancia_mux_ForwardA|outMux[26]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[26]~26_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(26))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regW|ALUOutW\(26),
	datac => \instancia_Hazard|FowardAE~combout\,
	datad => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a26\,
	combout => \instancia_mux_ForwardA|outMux[26]~26_combout\);

-- Location: LCCOMB_X52_Y38_N8
\instancia_ALU|ALUOut[26]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[26]~52_combout\ = (\instancia_regE|ALUControlE\(1) & (((\instancia_regE|ALUControlE\(0))))) # (!\instancia_regE|ALUControlE\(1) & ((\instancia_mux_ForwardA|outMux[26]~26_combout\ & ((\instancia_regE|ALUControlE\(0)) # 
-- (\instancia_mux_imm|outMux[26]~54_combout\))) # (!\instancia_mux_ForwardA|outMux[26]~26_combout\ & (\instancia_regE|ALUControlE\(0) & \instancia_mux_imm|outMux[26]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_mux_ForwardA|outMux[26]~26_combout\,
	datac => \instancia_regE|ALUControlE\(0),
	datad => \instancia_mux_imm|outMux[26]~54_combout\,
	combout => \instancia_ALU|ALUOut[26]~52_combout\);

-- Location: LCCOMB_X52_Y36_N20
\instancia_ALU|ALUOut[26]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[26]~53_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[26]~52_combout\ & ((\instancia_ALU|Add0~52_combout\))) # (!\instancia_ALU|ALUOut[26]~52_combout\ & (\instancia_ALU|Add1~52_combout\)))) # 
-- (!\instancia_regE|ALUControlE\(1) & (\instancia_ALU|ALUOut[26]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|ALUOut[26]~52_combout\,
	datac => \instancia_ALU|Add1~52_combout\,
	datad => \instancia_ALU|Add0~52_combout\,
	combout => \instancia_ALU|ALUOut[26]~53_combout\);

-- Location: LCFF_X52_Y36_N21
\instancia_regW|ALUOutW[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[26]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(26));

-- Location: LCCOMB_X52_Y34_N8
\instancia_mux_ForwardA|outMux[25]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[25]~25_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(25))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regW|ALUOutW\(25),
	datac => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a25\,
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[25]~25_combout\);

-- Location: LCCOMB_X52_Y34_N22
\instancia_mux_imm|outMux[25]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[25]~51_combout\ = (!\instancia_regE|ALUSrcE~regout\ & ((\instancia_Hazard|FowardBE~combout\ & ((\instancia_regW|ALUOutW\(25)))) # (!\instancia_Hazard|FowardBE~combout\ & 
-- (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a25\,
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_Hazard|FowardBE~combout\,
	datad => \instancia_regW|ALUOutW\(25),
	combout => \instancia_mux_imm|outMux[25]~51_combout\);

-- Location: LCCOMB_X52_Y34_N16
\instancia_mux_imm|outMux[25]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[25]~52_combout\ = (\instancia_mux_imm|outMux[25]~51_combout\) # ((\instancia_regE|ALUSrcE~regout\ & \instancia_regE|SignImmE\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_regE|SignImmE\(15),
	datad => \instancia_mux_imm|outMux[25]~51_combout\,
	combout => \instancia_mux_imm|outMux[25]~52_combout\);

-- Location: LCCOMB_X52_Y34_N18
\instancia_ALU|ALUOut[25]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[25]~50_combout\ = (\instancia_regE|ALUControlE\(0) & ((\instancia_regE|ALUControlE\(1)) # ((\instancia_mux_imm|outMux[25]~52_combout\) # (\instancia_mux_ForwardA|outMux[25]~25_combout\)))) # (!\instancia_regE|ALUControlE\(0) & 
-- (!\instancia_regE|ALUControlE\(1) & (\instancia_mux_imm|outMux[25]~52_combout\ & \instancia_mux_ForwardA|outMux[25]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(0),
	datab => \instancia_regE|ALUControlE\(1),
	datac => \instancia_mux_imm|outMux[25]~52_combout\,
	datad => \instancia_mux_ForwardA|outMux[25]~25_combout\,
	combout => \instancia_ALU|ALUOut[25]~50_combout\);

-- Location: LCCOMB_X52_Y36_N8
\instancia_ALU|ALUOut[25]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[25]~51_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[25]~50_combout\ & ((\instancia_ALU|Add0~50_combout\))) # (!\instancia_ALU|ALUOut[25]~50_combout\ & (\instancia_ALU|Add1~50_combout\)))) # 
-- (!\instancia_regE|ALUControlE\(1) & (((\instancia_ALU|ALUOut[25]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|Add1~50_combout\,
	datac => \instancia_ALU|ALUOut[25]~50_combout\,
	datad => \instancia_ALU|Add0~50_combout\,
	combout => \instancia_ALU|ALUOut[25]~51_combout\);

-- Location: LCFF_X52_Y36_N9
\instancia_regW|ALUOutW[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[25]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(25));

-- Location: LCCOMB_X52_Y34_N24
\instancia_mux_ForwardA|outMux[24]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[24]~24_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(24))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(24),
	datac => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a24\,
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[24]~24_combout\);

-- Location: LCCOMB_X52_Y34_N30
\instancia_mux_imm|outMux[24]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[24]~49_combout\ = (!\instancia_regE|ALUSrcE~regout\ & ((\instancia_Hazard|FowardBE~combout\ & (\instancia_regW|ALUOutW\(24))) # (!\instancia_Hazard|FowardBE~combout\ & 
-- ((\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a24\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(24),
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_Hazard|FowardBE~combout\,
	datad => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a24\,
	combout => \instancia_mux_imm|outMux[24]~49_combout\);

-- Location: LCCOMB_X52_Y34_N4
\instancia_mux_imm|outMux[24]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[24]~50_combout\ = (\instancia_mux_imm|outMux[24]~49_combout\) # ((\instancia_regE|ALUSrcE~regout\ & \instancia_regE|SignImmE\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_regE|SignImmE\(15),
	datad => \instancia_mux_imm|outMux[24]~49_combout\,
	combout => \instancia_mux_imm|outMux[24]~50_combout\);

-- Location: LCCOMB_X52_Y34_N26
\instancia_ALU|ALUOut[24]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[24]~48_combout\ = (\instancia_regE|ALUControlE\(0) & ((\instancia_mux_imm|outMux[24]~50_combout\) # ((\instancia_mux_ForwardA|outMux[24]~24_combout\) # (\instancia_regE|ALUControlE\(1))))) # (!\instancia_regE|ALUControlE\(0) & 
-- (\instancia_mux_imm|outMux[24]~50_combout\ & (\instancia_mux_ForwardA|outMux[24]~24_combout\ & !\instancia_regE|ALUControlE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(0),
	datab => \instancia_mux_imm|outMux[24]~50_combout\,
	datac => \instancia_mux_ForwardA|outMux[24]~24_combout\,
	datad => \instancia_regE|ALUControlE\(1),
	combout => \instancia_ALU|ALUOut[24]~48_combout\);

-- Location: LCCOMB_X54_Y36_N18
\instancia_ALU|ALUOut[24]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[24]~49_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[24]~48_combout\ & (\instancia_ALU|Add0~48_combout\)) # (!\instancia_ALU|ALUOut[24]~48_combout\ & ((\instancia_ALU|Add1~48_combout\))))) # 
-- (!\instancia_regE|ALUControlE\(1) & (((\instancia_ALU|ALUOut[24]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|Add0~48_combout\,
	datac => \instancia_ALU|ALUOut[24]~48_combout\,
	datad => \instancia_ALU|Add1~48_combout\,
	combout => \instancia_ALU|ALUOut[24]~49_combout\);

-- Location: LCFF_X54_Y36_N19
\instancia_regW|ALUOutW[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[24]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(24));

-- Location: LCCOMB_X54_Y36_N20
\instancia_mux_imm|outMux[23]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[23]~47_combout\ = (\instancia_regE|ALUSrcE~regout\ & (\instancia_regE|SignImmE\(15))) # (!\instancia_regE|ALUSrcE~regout\ & (((\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a23\ & 
-- !\instancia_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|SignImmE\(15),
	datab => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a23\,
	datac => \instancia_Hazard|FowardBE~combout\,
	datad => \instancia_regE|ALUSrcE~regout\,
	combout => \instancia_mux_imm|outMux[23]~47_combout\);

-- Location: LCCOMB_X54_Y36_N22
\instancia_mux_imm|outMux[23]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[23]~48_combout\ = (\instancia_mux_imm|outMux[23]~47_combout\) # ((!\instancia_regE|ALUSrcE~regout\ & (\instancia_Hazard|FowardBE~combout\ & \instancia_regW|ALUOutW\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_Hazard|FowardBE~combout\,
	datac => \instancia_mux_imm|outMux[23]~47_combout\,
	datad => \instancia_regW|ALUOutW\(23),
	combout => \instancia_mux_imm|outMux[23]~48_combout\);

-- Location: LCCOMB_X54_Y36_N2
\instancia_ALU|ALUOut[23]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[23]~46_combout\ = (\instancia_regE|ALUControlE\(1) & (((\instancia_regE|ALUControlE\(0))))) # (!\instancia_regE|ALUControlE\(1) & ((\instancia_mux_imm|outMux[23]~48_combout\ & ((\instancia_regE|ALUControlE\(0)) # 
-- (\instancia_mux_ForwardA|outMux[23]~23_combout\))) # (!\instancia_mux_imm|outMux[23]~48_combout\ & (\instancia_regE|ALUControlE\(0) & \instancia_mux_ForwardA|outMux[23]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_mux_imm|outMux[23]~48_combout\,
	datac => \instancia_regE|ALUControlE\(0),
	datad => \instancia_mux_ForwardA|outMux[23]~23_combout\,
	combout => \instancia_ALU|ALUOut[23]~46_combout\);

-- Location: LCCOMB_X54_Y36_N10
\instancia_ALU|ALUOut[23]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[23]~47_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[23]~46_combout\ & ((\instancia_ALU|Add0~46_combout\))) # (!\instancia_ALU|ALUOut[23]~46_combout\ & (\instancia_ALU|Add1~46_combout\)))) # 
-- (!\instancia_regE|ALUControlE\(1) & (\instancia_ALU|ALUOut[23]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|ALUOut[23]~46_combout\,
	datac => \instancia_ALU|Add1~46_combout\,
	datad => \instancia_ALU|Add0~46_combout\,
	combout => \instancia_ALU|ALUOut[23]~47_combout\);

-- Location: LCFF_X54_Y36_N11
\instancia_regW|ALUOutW[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[23]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(23));

-- Location: LCCOMB_X52_Y36_N2
\instancia_mux_ForwardA|outMux[22]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[22]~22_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(22))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regW|ALUOutW\(22),
	datac => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a22\,
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[22]~22_combout\);

-- Location: LCCOMB_X52_Y36_N4
\instancia_ALU|ALUOut[22]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[22]~44_combout\ = (\instancia_regE|ALUControlE\(0) & ((\instancia_mux_ForwardA|outMux[22]~22_combout\) # ((\instancia_regE|ALUControlE\(1)) # (\instancia_mux_imm|outMux[22]~46_combout\)))) # (!\instancia_regE|ALUControlE\(0) & 
-- (\instancia_mux_ForwardA|outMux[22]~22_combout\ & (!\instancia_regE|ALUControlE\(1) & \instancia_mux_imm|outMux[22]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(0),
	datab => \instancia_mux_ForwardA|outMux[22]~22_combout\,
	datac => \instancia_regE|ALUControlE\(1),
	datad => \instancia_mux_imm|outMux[22]~46_combout\,
	combout => \instancia_ALU|ALUOut[22]~44_combout\);

-- Location: LCCOMB_X52_Y36_N28
\instancia_ALU|ALUOut[22]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[22]~45_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[22]~44_combout\ & (\instancia_ALU|Add0~44_combout\)) # (!\instancia_ALU|ALUOut[22]~44_combout\ & ((\instancia_ALU|Add1~44_combout\))))) # 
-- (!\instancia_regE|ALUControlE\(1) & (\instancia_ALU|ALUOut[22]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|ALUOut[22]~44_combout\,
	datac => \instancia_ALU|Add0~44_combout\,
	datad => \instancia_ALU|Add1~44_combout\,
	combout => \instancia_ALU|ALUOut[22]~45_combout\);

-- Location: LCFF_X52_Y36_N29
\instancia_regW|ALUOutW[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[22]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(22));

-- Location: LCCOMB_X50_Y36_N30
\instancia_mux_ForwardA|outMux[21]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[21]~21_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(21))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regW|ALUOutW\(21),
	datac => \instancia_Hazard|FowardAE~combout\,
	datad => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a21\,
	combout => \instancia_mux_ForwardA|outMux[21]~21_combout\);

-- Location: LCCOMB_X50_Y36_N22
\instancia_ALU|ALUOut[21]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[21]~43_combout\ = (\instancia_ALU|ALUOut[21]~42_combout\ & (((\instancia_ALU|Add0~42_combout\)) # (!\instancia_regE|ALUControlE\(1)))) # (!\instancia_ALU|ALUOut[21]~42_combout\ & (\instancia_regE|ALUControlE\(1) & 
-- (\instancia_ALU|Add1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_ALU|ALUOut[21]~42_combout\,
	datab => \instancia_regE|ALUControlE\(1),
	datac => \instancia_ALU|Add1~42_combout\,
	datad => \instancia_ALU|Add0~42_combout\,
	combout => \instancia_ALU|ALUOut[21]~43_combout\);

-- Location: LCFF_X50_Y36_N23
\instancia_regW|ALUOutW[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(21));

-- Location: LCCOMB_X52_Y36_N16
\instancia_mux_ForwardA|outMux[20]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[20]~20_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(20))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(20),
	datab => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a20\,
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[20]~20_combout\);

-- Location: LCCOMB_X49_Y36_N2
\instancia_ALU|ALUOut[20]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[20]~40_combout\ = (\instancia_regE|ALUControlE\(0) & ((\instancia_regE|ALUControlE\(1)) # ((\instancia_mux_ForwardA|outMux[20]~20_combout\) # (\instancia_mux_imm|outMux[20]~42_combout\)))) # (!\instancia_regE|ALUControlE\(0) & 
-- (!\instancia_regE|ALUControlE\(1) & (\instancia_mux_ForwardA|outMux[20]~20_combout\ & \instancia_mux_imm|outMux[20]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(0),
	datab => \instancia_regE|ALUControlE\(1),
	datac => \instancia_mux_ForwardA|outMux[20]~20_combout\,
	datad => \instancia_mux_imm|outMux[20]~42_combout\,
	combout => \instancia_ALU|ALUOut[20]~40_combout\);

-- Location: LCCOMB_X52_Y36_N24
\instancia_ALU|ALUOut[20]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[20]~41_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[20]~40_combout\ & (\instancia_ALU|Add0~40_combout\)) # (!\instancia_ALU|ALUOut[20]~40_combout\ & ((\instancia_ALU|Add1~40_combout\))))) # 
-- (!\instancia_regE|ALUControlE\(1) & (\instancia_ALU|ALUOut[20]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|ALUOut[20]~40_combout\,
	datac => \instancia_ALU|Add0~40_combout\,
	datad => \instancia_ALU|Add1~40_combout\,
	combout => \instancia_ALU|ALUOut[20]~41_combout\);

-- Location: LCFF_X52_Y36_N25
\instancia_regW|ALUOutW[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[20]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(20));

-- Location: LCCOMB_X50_Y36_N20
\instancia_mux_ForwardA|outMux[19]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[19]~19_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(19))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(19),
	datac => \instancia_Hazard|FowardAE~combout\,
	datad => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a19\,
	combout => \instancia_mux_ForwardA|outMux[19]~19_combout\);

-- Location: LCCOMB_X50_Y36_N24
\instancia_ALU|ALUOut[19]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[19]~39_combout\ = (\instancia_ALU|ALUOut[19]~38_combout\ & (((\instancia_ALU|Add0~38_combout\)) # (!\instancia_regE|ALUControlE\(1)))) # (!\instancia_ALU|ALUOut[19]~38_combout\ & (\instancia_regE|ALUControlE\(1) & 
-- ((\instancia_ALU|Add1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_ALU|ALUOut[19]~38_combout\,
	datab => \instancia_regE|ALUControlE\(1),
	datac => \instancia_ALU|Add0~38_combout\,
	datad => \instancia_ALU|Add1~38_combout\,
	combout => \instancia_ALU|ALUOut[19]~39_combout\);

-- Location: LCFF_X50_Y36_N25
\instancia_regW|ALUOutW[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[19]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(19));

-- Location: LCCOMB_X50_Y36_N18
\instancia_mux_ForwardA|outMux[18]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[18]~18_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(18))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regW|ALUOutW\(18),
	datac => \instancia_Hazard|FowardAE~combout\,
	datad => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a18\,
	combout => \instancia_mux_ForwardA|outMux[18]~18_combout\);

-- Location: LCCOMB_X50_Y36_N26
\instancia_ALU|ALUOut[18]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[18]~37_combout\ = (\instancia_ALU|ALUOut[18]~36_combout\ & (((\instancia_ALU|Add0~36_combout\)) # (!\instancia_regE|ALUControlE\(1)))) # (!\instancia_ALU|ALUOut[18]~36_combout\ & (\instancia_regE|ALUControlE\(1) & 
-- ((\instancia_ALU|Add1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_ALU|ALUOut[18]~36_combout\,
	datab => \instancia_regE|ALUControlE\(1),
	datac => \instancia_ALU|Add0~36_combout\,
	datad => \instancia_ALU|Add1~36_combout\,
	combout => \instancia_ALU|ALUOut[18]~37_combout\);

-- Location: LCFF_X50_Y36_N27
\instancia_regW|ALUOutW[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[18]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(18));

-- Location: LCCOMB_X50_Y36_N16
\instancia_mux_ForwardA|outMux[17]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[17]~17_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(17))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regW|ALUOutW\(17),
	datac => \instancia_Hazard|FowardAE~combout\,
	datad => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a17\,
	combout => \instancia_mux_ForwardA|outMux[17]~17_combout\);

-- Location: LCCOMB_X50_Y36_N8
\instancia_ALU|ALUOut[17]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[17]~35_combout\ = (\instancia_ALU|ALUOut[17]~34_combout\ & (((\instancia_ALU|Add0~34_combout\)) # (!\instancia_regE|ALUControlE\(1)))) # (!\instancia_ALU|ALUOut[17]~34_combout\ & (\instancia_regE|ALUControlE\(1) & 
-- ((\instancia_ALU|Add1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_ALU|ALUOut[17]~34_combout\,
	datab => \instancia_regE|ALUControlE\(1),
	datac => \instancia_ALU|Add0~34_combout\,
	datad => \instancia_ALU|Add1~34_combout\,
	combout => \instancia_ALU|ALUOut[17]~35_combout\);

-- Location: LCFF_X50_Y36_N9
\instancia_regW|ALUOutW[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[17]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(17));

-- Location: LCCOMB_X54_Y35_N28
\instancia_mux_imm|outMux[16]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[16]~33_combout\ = (\instancia_regE|ALUSrcE~regout\ & (((\instancia_regE|SignImmE\(15))))) # (!\instancia_regE|ALUSrcE~regout\ & (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a16\ & 
-- ((!\instancia_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a16\,
	datac => \instancia_regE|SignImmE\(15),
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[16]~33_combout\);

-- Location: LCCOMB_X54_Y35_N2
\instancia_mux_imm|outMux[16]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[16]~34_combout\ = (\instancia_mux_imm|outMux[16]~33_combout\) # ((!\instancia_regE|ALUSrcE~regout\ & (\instancia_Hazard|FowardBE~combout\ & \instancia_regW|ALUOutW\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_Hazard|FowardBE~combout\,
	datac => \instancia_regW|ALUOutW\(16),
	datad => \instancia_mux_imm|outMux[16]~33_combout\,
	combout => \instancia_mux_imm|outMux[16]~34_combout\);

-- Location: LCCOMB_X51_Y35_N6
\instancia_ALU|ALUOut[16]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[16]~32_combout\ = (\instancia_regE|ALUControlE\(1) & (\instancia_regE|ALUControlE\(0))) # (!\instancia_regE|ALUControlE\(1) & ((\instancia_regE|ALUControlE\(0) & ((\instancia_mux_imm|outMux[16]~34_combout\) # 
-- (\instancia_mux_ForwardA|outMux[16]~16_combout\))) # (!\instancia_regE|ALUControlE\(0) & (\instancia_mux_imm|outMux[16]~34_combout\ & \instancia_mux_ForwardA|outMux[16]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_regE|ALUControlE\(0),
	datac => \instancia_mux_imm|outMux[16]~34_combout\,
	datad => \instancia_mux_ForwardA|outMux[16]~16_combout\,
	combout => \instancia_ALU|ALUOut[16]~32_combout\);

-- Location: LCCOMB_X52_Y36_N12
\instancia_ALU|ALUOut[16]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[16]~33_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[16]~32_combout\ & (\instancia_ALU|Add0~32_combout\)) # (!\instancia_ALU|ALUOut[16]~32_combout\ & ((\instancia_ALU|Add1~32_combout\))))) # 
-- (!\instancia_regE|ALUControlE\(1) & (((\instancia_ALU|ALUOut[16]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|Add0~32_combout\,
	datac => \instancia_ALU|Add1~32_combout\,
	datad => \instancia_ALU|ALUOut[16]~32_combout\,
	combout => \instancia_ALU|ALUOut[16]~33_combout\);

-- Location: LCFF_X52_Y36_N13
\instancia_regW|ALUOutW[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[16]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(16));

-- Location: LCCOMB_X54_Y37_N12
\instancia_mux_ForwardA|outMux[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[15]~15_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(15))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regW|ALUOutW\(15),
	datac => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a15\,
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[15]~15_combout\);

-- Location: LCCOMB_X54_Y37_N16
\instancia_ALU|ALUOut[15]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[15]~31_combout\ = (\instancia_ALU|ALUOut[15]~30_combout\ & (((\instancia_ALU|Add0~30_combout\)) # (!\instancia_regE|ALUControlE\(1)))) # (!\instancia_ALU|ALUOut[15]~30_combout\ & (\instancia_regE|ALUControlE\(1) & 
-- ((\instancia_ALU|Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_ALU|ALUOut[15]~30_combout\,
	datab => \instancia_regE|ALUControlE\(1),
	datac => \instancia_ALU|Add0~30_combout\,
	datad => \instancia_ALU|Add1~30_combout\,
	combout => \instancia_ALU|ALUOut[15]~31_combout\);

-- Location: LCFF_X54_Y37_N17
\instancia_regW|ALUOutW[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(15));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[14]~I\ : cycloneii_io
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
	padio => ww_RD(14),
	combout => \RD~combout\(14));

-- Location: LCFF_X51_Y35_N25
\instancia_regD|InstrD[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD~combout\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(14));

-- Location: LCFF_X51_Y35_N11
\instancia_regE|SignImmE[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|SignImmE\(14));

-- Location: LCCOMB_X51_Y35_N10
\instancia_mux_imm|outMux[14]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[14]~29_combout\ = (\instancia_regE|ALUSrcE~regout\ & (((\instancia_regE|SignImmE\(14))))) # (!\instancia_regE|ALUSrcE~regout\ & (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a14\ & 
-- ((!\instancia_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a14\,
	datac => \instancia_regE|SignImmE\(14),
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[14]~29_combout\);

-- Location: LCCOMB_X51_Y35_N26
\instancia_mux_imm|outMux[14]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[14]~30_combout\ = (\instancia_mux_imm|outMux[14]~29_combout\) # ((!\instancia_regE|ALUSrcE~regout\ & (\instancia_Hazard|FowardBE~combout\ & \instancia_regW|ALUOutW\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_Hazard|FowardBE~combout\,
	datac => \instancia_regW|ALUOutW\(14),
	datad => \instancia_mux_imm|outMux[14]~29_combout\,
	combout => \instancia_mux_imm|outMux[14]~30_combout\);

-- Location: LCCOMB_X51_Y35_N16
\instancia_ALU|ALUOut[14]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[14]~28_combout\ = (\instancia_mux_ForwardA|outMux[14]~14_combout\ & ((\instancia_regE|ALUControlE\(0)) # ((!\instancia_regE|ALUControlE\(1) & \instancia_mux_imm|outMux[14]~30_combout\)))) # 
-- (!\instancia_mux_ForwardA|outMux[14]~14_combout\ & (\instancia_regE|ALUControlE\(0) & ((\instancia_regE|ALUControlE\(1)) # (\instancia_mux_imm|outMux[14]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[14]~14_combout\,
	datab => \instancia_regE|ALUControlE\(0),
	datac => \instancia_regE|ALUControlE\(1),
	datad => \instancia_mux_imm|outMux[14]~30_combout\,
	combout => \instancia_ALU|ALUOut[14]~28_combout\);

-- Location: LCCOMB_X50_Y37_N26
\instancia_ALU|ALUOut[14]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[14]~29_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[14]~28_combout\ & (\instancia_ALU|Add0~28_combout\)) # (!\instancia_ALU|ALUOut[14]~28_combout\ & ((\instancia_ALU|Add1~28_combout\))))) # 
-- (!\instancia_regE|ALUControlE\(1) & (\instancia_ALU|ALUOut[14]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|ALUOut[14]~28_combout\,
	datac => \instancia_ALU|Add0~28_combout\,
	datad => \instancia_ALU|Add1~28_combout\,
	combout => \instancia_ALU|ALUOut[14]~29_combout\);

-- Location: LCFF_X50_Y37_N27
\instancia_regW|ALUOutW[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(14));

-- Location: LCCOMB_X54_Y35_N18
\instancia_mux_imm|outMux[13]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[13]~27_combout\ = (\instancia_regE|ALUSrcE~regout\ & (((\instancia_regE|SignImmE\(13))))) # (!\instancia_regE|ALUSrcE~regout\ & (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a13\ & 
-- ((!\instancia_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a13\,
	datac => \instancia_regE|SignImmE\(13),
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[13]~27_combout\);

-- Location: LCCOMB_X54_Y35_N24
\instancia_mux_imm|outMux[13]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[13]~28_combout\ = (\instancia_mux_imm|outMux[13]~27_combout\) # ((\instancia_regW|ALUOutW\(13) & (\instancia_Hazard|FowardBE~combout\ & !\instancia_regE|ALUSrcE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(13),
	datab => \instancia_Hazard|FowardBE~combout\,
	datac => \instancia_regE|ALUSrcE~regout\,
	datad => \instancia_mux_imm|outMux[13]~27_combout\,
	combout => \instancia_mux_imm|outMux[13]~28_combout\);

-- Location: LCCOMB_X54_Y37_N18
\instancia_ALU|ALUOut[13]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[13]~27_combout\ = (\instancia_ALU|ALUOut[13]~26_combout\ & (((\instancia_ALU|Add0~26_combout\)) # (!\instancia_regE|ALUControlE\(1)))) # (!\instancia_ALU|ALUOut[13]~26_combout\ & (\instancia_regE|ALUControlE\(1) & 
-- (\instancia_ALU|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_ALU|ALUOut[13]~26_combout\,
	datab => \instancia_regE|ALUControlE\(1),
	datac => \instancia_ALU|Add1~26_combout\,
	datad => \instancia_ALU|Add0~26_combout\,
	combout => \instancia_ALU|ALUOut[13]~27_combout\);

-- Location: LCFF_X54_Y37_N19
\instancia_regW|ALUOutW[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(13));

-- Location: LCCOMB_X54_Y37_N22
\instancia_mux_ForwardA|outMux[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[11]~11_combout\ = (\instancia_Hazard|FowardAE~combout\ & ((\instancia_regW|ALUOutW\(11)))) # (!\instancia_Hazard|FowardAE~combout\ & (\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a11\,
	datac => \instancia_regW|ALUOutW\(11),
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[11]~11_combout\);

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[10]~I\ : cycloneii_io
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
	padio => ww_RD(10),
	combout => \RD~combout\(10));

-- Location: LCFF_X52_Y36_N17
\instancia_regD|InstrD[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD~combout\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(10));

-- Location: LCFF_X52_Y36_N11
\instancia_regE|SignImmE[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|SignImmE\(10));

-- Location: LCCOMB_X52_Y36_N10
\instancia_mux_imm|outMux[10]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[10]~21_combout\ = (\instancia_regE|ALUSrcE~regout\ & (((\instancia_regE|SignImmE\(10))))) # (!\instancia_regE|ALUSrcE~regout\ & (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a10\ & 
-- ((!\instancia_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a10\,
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_regE|SignImmE\(10),
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[10]~21_combout\);

-- Location: LCCOMB_X52_Y36_N0
\instancia_mux_imm|outMux[10]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[10]~22_combout\ = (\instancia_mux_imm|outMux[10]~21_combout\) # ((\instancia_regW|ALUOutW\(10) & (!\instancia_regE|ALUSrcE~regout\ & \instancia_Hazard|FowardBE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(10),
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_Hazard|FowardBE~combout\,
	datad => \instancia_mux_imm|outMux[10]~21_combout\,
	combout => \instancia_mux_imm|outMux[10]~22_combout\);

-- Location: LCCOMB_X53_Y37_N18
\instancia_ALU|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~18_combout\ = (\instancia_mux_ForwardA|outMux[9]~9_combout\ & ((\instancia_mux_imm|outMux[9]~20_combout\ & (!\instancia_ALU|Add0~17\)) # (!\instancia_mux_imm|outMux[9]~20_combout\ & (\instancia_ALU|Add0~17\ & VCC)))) # 
-- (!\instancia_mux_ForwardA|outMux[9]~9_combout\ & ((\instancia_mux_imm|outMux[9]~20_combout\ & ((\instancia_ALU|Add0~17\) # (GND))) # (!\instancia_mux_imm|outMux[9]~20_combout\ & (!\instancia_ALU|Add0~17\))))
-- \instancia_ALU|Add0~19\ = CARRY((\instancia_mux_ForwardA|outMux[9]~9_combout\ & (\instancia_mux_imm|outMux[9]~20_combout\ & !\instancia_ALU|Add0~17\)) # (!\instancia_mux_ForwardA|outMux[9]~9_combout\ & ((\instancia_mux_imm|outMux[9]~20_combout\) # 
-- (!\instancia_ALU|Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[9]~9_combout\,
	datab => \instancia_mux_imm|outMux[9]~20_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~17\,
	combout => \instancia_ALU|Add0~18_combout\,
	cout => \instancia_ALU|Add0~19\);

-- Location: LCCOMB_X53_Y37_N20
\instancia_ALU|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~20_combout\ = ((\instancia_mux_ForwardA|outMux[10]~10_combout\ $ (\instancia_mux_imm|outMux[10]~22_combout\ $ (\instancia_ALU|Add0~19\)))) # (GND)
-- \instancia_ALU|Add0~21\ = CARRY((\instancia_mux_ForwardA|outMux[10]~10_combout\ & ((!\instancia_ALU|Add0~19\) # (!\instancia_mux_imm|outMux[10]~22_combout\))) # (!\instancia_mux_ForwardA|outMux[10]~10_combout\ & (!\instancia_mux_imm|outMux[10]~22_combout\ 
-- & !\instancia_ALU|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[10]~10_combout\,
	datab => \instancia_mux_imm|outMux[10]~22_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~19\,
	combout => \instancia_ALU|Add0~20_combout\,
	cout => \instancia_ALU|Add0~21\);

-- Location: LCCOMB_X53_Y37_N22
\instancia_ALU|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~22_combout\ = (\instancia_mux_imm|outMux[11]~24_combout\ & ((\instancia_mux_ForwardA|outMux[11]~11_combout\ & (!\instancia_ALU|Add0~21\)) # (!\instancia_mux_ForwardA|outMux[11]~11_combout\ & ((\instancia_ALU|Add0~21\) # (GND))))) # 
-- (!\instancia_mux_imm|outMux[11]~24_combout\ & ((\instancia_mux_ForwardA|outMux[11]~11_combout\ & (\instancia_ALU|Add0~21\ & VCC)) # (!\instancia_mux_ForwardA|outMux[11]~11_combout\ & (!\instancia_ALU|Add0~21\))))
-- \instancia_ALU|Add0~23\ = CARRY((\instancia_mux_imm|outMux[11]~24_combout\ & ((!\instancia_ALU|Add0~21\) # (!\instancia_mux_ForwardA|outMux[11]~11_combout\))) # (!\instancia_mux_imm|outMux[11]~24_combout\ & (!\instancia_mux_ForwardA|outMux[11]~11_combout\ 
-- & !\instancia_ALU|Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[11]~24_combout\,
	datab => \instancia_mux_ForwardA|outMux[11]~11_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~21\,
	combout => \instancia_ALU|Add0~22_combout\,
	cout => \instancia_ALU|Add0~23\);

-- Location: LCCOMB_X50_Y37_N2
\instancia_ALU|ALUOut[12]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[12]~25_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[12]~24_combout\ & ((\instancia_ALU|Add0~24_combout\))) # (!\instancia_ALU|ALUOut[12]~24_combout\ & (\instancia_ALU|Add1~24_combout\)))) # 
-- (!\instancia_regE|ALUControlE\(1) & (((\instancia_ALU|ALUOut[12]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|Add1~24_combout\,
	datac => \instancia_ALU|ALUOut[12]~24_combout\,
	datad => \instancia_ALU|Add0~24_combout\,
	combout => \instancia_ALU|ALUOut[12]~25_combout\);

-- Location: LCFF_X50_Y37_N3
\instancia_regW|ALUOutW[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[12]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(12));

-- Location: LCCOMB_X54_Y37_N28
\instancia_mux_imm|outMux[11]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[11]~23_combout\ = (\instancia_regE|ALUSrcE~regout\ & (((\instancia_regE|SignImmE\(11))))) # (!\instancia_regE|ALUSrcE~regout\ & (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a11\ & 
-- ((!\instancia_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a11\,
	datac => \instancia_regE|SignImmE\(11),
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[11]~23_combout\);

-- Location: LCCOMB_X54_Y37_N2
\instancia_mux_imm|outMux[11]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[11]~24_combout\ = (\instancia_mux_imm|outMux[11]~23_combout\) # ((!\instancia_regE|ALUSrcE~regout\ & (\instancia_regW|ALUOutW\(11) & \instancia_Hazard|FowardBE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_regW|ALUOutW\(11),
	datac => \instancia_Hazard|FowardBE~combout\,
	datad => \instancia_mux_imm|outMux[11]~23_combout\,
	combout => \instancia_mux_imm|outMux[11]~24_combout\);

-- Location: LCCOMB_X54_Y37_N20
\instancia_ALU|ALUOut[11]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[11]~23_combout\ = (\instancia_ALU|ALUOut[11]~22_combout\ & (((\instancia_ALU|Add0~22_combout\)) # (!\instancia_regE|ALUControlE\(1)))) # (!\instancia_ALU|ALUOut[11]~22_combout\ & (\instancia_regE|ALUControlE\(1) & 
-- (\instancia_ALU|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_ALU|ALUOut[11]~22_combout\,
	datab => \instancia_regE|ALUControlE\(1),
	datac => \instancia_ALU|Add1~22_combout\,
	datad => \instancia_ALU|Add0~22_combout\,
	combout => \instancia_ALU|ALUOut[11]~23_combout\);

-- Location: LCFF_X54_Y37_N21
\instancia_regW|ALUOutW[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[11]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(11));

-- Location: LCCOMB_X50_Y37_N16
\instancia_mux_ForwardA|outMux[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[10]~10_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(10))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regW|ALUOutW\(10),
	datac => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a10\,
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[10]~10_combout\);

-- Location: LCCOMB_X50_Y37_N10
\instancia_ALU|ALUOut[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[10]~20_combout\ = (\instancia_regE|ALUControlE\(1) & (((\instancia_regE|ALUControlE\(0))))) # (!\instancia_regE|ALUControlE\(1) & ((\instancia_mux_ForwardA|outMux[10]~10_combout\ & ((\instancia_mux_imm|outMux[10]~22_combout\) # 
-- (\instancia_regE|ALUControlE\(0)))) # (!\instancia_mux_ForwardA|outMux[10]~10_combout\ & (\instancia_mux_imm|outMux[10]~22_combout\ & \instancia_regE|ALUControlE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_mux_ForwardA|outMux[10]~10_combout\,
	datac => \instancia_mux_imm|outMux[10]~22_combout\,
	datad => \instancia_regE|ALUControlE\(0),
	combout => \instancia_ALU|ALUOut[10]~20_combout\);

-- Location: LCCOMB_X50_Y37_N18
\instancia_ALU|ALUOut[10]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[10]~21_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[10]~20_combout\ & ((\instancia_ALU|Add0~20_combout\))) # (!\instancia_ALU|ALUOut[10]~20_combout\ & (\instancia_ALU|Add1~20_combout\)))) # 
-- (!\instancia_regE|ALUControlE\(1) & (((\instancia_ALU|ALUOut[10]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|Add1~20_combout\,
	datac => \instancia_ALU|Add0~20_combout\,
	datad => \instancia_ALU|ALUOut[10]~20_combout\,
	combout => \instancia_ALU|ALUOut[10]~21_combout\);

-- Location: LCFF_X50_Y37_N19
\instancia_regW|ALUOutW[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(10));

-- Location: LCFF_X52_Y37_N9
\instancia_regE|SignImmE[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|SignImmE\(4));

-- Location: LCCOMB_X52_Y37_N8
\instancia_mux_imm|outMux[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[4]~9_combout\ = (\instancia_regE|ALUSrcE~regout\ & (\instancia_regE|SignImmE\(4))) # (!\instancia_regE|ALUSrcE~regout\ & ((\instancia_regW|ALUOutW\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_regE|SignImmE\(4),
	datad => \instancia_regW|ALUOutW\(4),
	combout => \instancia_mux_imm|outMux[4]~9_combout\);

-- Location: LCCOMB_X52_Y37_N2
\instancia_mux_imm|outMux[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[4]~10_combout\ = (\instancia_regE|ALUSrcE~regout\ & (((\instancia_mux_imm|outMux[4]~9_combout\)))) # (!\instancia_regE|ALUSrcE~regout\ & ((\instancia_Hazard|FowardBE~combout\ & ((\instancia_mux_imm|outMux[4]~9_combout\))) # 
-- (!\instancia_Hazard|FowardBE~combout\ & (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a4\,
	datac => \instancia_mux_imm|outMux[4]~9_combout\,
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[4]~10_combout\);

-- Location: LCCOMB_X53_Y37_N0
\instancia_ALU|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~0_combout\ = (\instancia_mux_imm|outMux[0]~2_combout\ & (\instancia_mux_ForwardA|outMux[0]~0_combout\ $ (VCC))) # (!\instancia_mux_imm|outMux[0]~2_combout\ & ((\instancia_mux_ForwardA|outMux[0]~0_combout\) # (GND)))
-- \instancia_ALU|Add0~1\ = CARRY((\instancia_mux_ForwardA|outMux[0]~0_combout\) # (!\instancia_mux_imm|outMux[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[0]~2_combout\,
	datab => \instancia_mux_ForwardA|outMux[0]~0_combout\,
	datad => VCC,
	combout => \instancia_ALU|Add0~0_combout\,
	cout => \instancia_ALU|Add0~1\);

-- Location: LCCOMB_X53_Y37_N2
\instancia_ALU|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~2_combout\ = (\instancia_mux_imm|outMux[1]~4_combout\ & ((\instancia_mux_ForwardA|outMux[1]~1_combout\ & (!\instancia_ALU|Add0~1\)) # (!\instancia_mux_ForwardA|outMux[1]~1_combout\ & ((\instancia_ALU|Add0~1\) # (GND))))) # 
-- (!\instancia_mux_imm|outMux[1]~4_combout\ & ((\instancia_mux_ForwardA|outMux[1]~1_combout\ & (\instancia_ALU|Add0~1\ & VCC)) # (!\instancia_mux_ForwardA|outMux[1]~1_combout\ & (!\instancia_ALU|Add0~1\))))
-- \instancia_ALU|Add0~3\ = CARRY((\instancia_mux_imm|outMux[1]~4_combout\ & ((!\instancia_ALU|Add0~1\) # (!\instancia_mux_ForwardA|outMux[1]~1_combout\))) # (!\instancia_mux_imm|outMux[1]~4_combout\ & (!\instancia_mux_ForwardA|outMux[1]~1_combout\ & 
-- !\instancia_ALU|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[1]~4_combout\,
	datab => \instancia_mux_ForwardA|outMux[1]~1_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~1\,
	combout => \instancia_ALU|Add0~2_combout\,
	cout => \instancia_ALU|Add0~3\);

-- Location: LCCOMB_X53_Y37_N4
\instancia_ALU|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~4_combout\ = ((\instancia_mux_imm|outMux[2]~6_combout\ $ (\instancia_mux_ForwardA|outMux[2]~2_combout\ $ (\instancia_ALU|Add0~3\)))) # (GND)
-- \instancia_ALU|Add0~5\ = CARRY((\instancia_mux_imm|outMux[2]~6_combout\ & (\instancia_mux_ForwardA|outMux[2]~2_combout\ & !\instancia_ALU|Add0~3\)) # (!\instancia_mux_imm|outMux[2]~6_combout\ & ((\instancia_mux_ForwardA|outMux[2]~2_combout\) # 
-- (!\instancia_ALU|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[2]~6_combout\,
	datab => \instancia_mux_ForwardA|outMux[2]~2_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~3\,
	combout => \instancia_ALU|Add0~4_combout\,
	cout => \instancia_ALU|Add0~5\);

-- Location: LCCOMB_X53_Y37_N6
\instancia_ALU|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~6_combout\ = (\instancia_mux_ForwardA|outMux[3]~3_combout\ & ((\instancia_mux_imm|outMux[3]~8_combout\ & (!\instancia_ALU|Add0~5\)) # (!\instancia_mux_imm|outMux[3]~8_combout\ & (\instancia_ALU|Add0~5\ & VCC)))) # 
-- (!\instancia_mux_ForwardA|outMux[3]~3_combout\ & ((\instancia_mux_imm|outMux[3]~8_combout\ & ((\instancia_ALU|Add0~5\) # (GND))) # (!\instancia_mux_imm|outMux[3]~8_combout\ & (!\instancia_ALU|Add0~5\))))
-- \instancia_ALU|Add0~7\ = CARRY((\instancia_mux_ForwardA|outMux[3]~3_combout\ & (\instancia_mux_imm|outMux[3]~8_combout\ & !\instancia_ALU|Add0~5\)) # (!\instancia_mux_ForwardA|outMux[3]~3_combout\ & ((\instancia_mux_imm|outMux[3]~8_combout\) # 
-- (!\instancia_ALU|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[3]~3_combout\,
	datab => \instancia_mux_imm|outMux[3]~8_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~5\,
	combout => \instancia_ALU|Add0~6_combout\,
	cout => \instancia_ALU|Add0~7\);

-- Location: LCCOMB_X53_Y37_N8
\instancia_ALU|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~8_combout\ = ((\instancia_mux_ForwardA|outMux[4]~4_combout\ $ (\instancia_mux_imm|outMux[4]~10_combout\ $ (\instancia_ALU|Add0~7\)))) # (GND)
-- \instancia_ALU|Add0~9\ = CARRY((\instancia_mux_ForwardA|outMux[4]~4_combout\ & ((!\instancia_ALU|Add0~7\) # (!\instancia_mux_imm|outMux[4]~10_combout\))) # (!\instancia_mux_ForwardA|outMux[4]~4_combout\ & (!\instancia_mux_imm|outMux[4]~10_combout\ & 
-- !\instancia_ALU|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[4]~4_combout\,
	datab => \instancia_mux_imm|outMux[4]~10_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~7\,
	combout => \instancia_ALU|Add0~8_combout\,
	cout => \instancia_ALU|Add0~9\);

-- Location: LCCOMB_X53_Y37_N10
\instancia_ALU|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~10_combout\ = (\instancia_mux_ForwardA|outMux[5]~5_combout\ & ((\instancia_mux_imm|outMux[5]~12_combout\ & (!\instancia_ALU|Add0~9\)) # (!\instancia_mux_imm|outMux[5]~12_combout\ & (\instancia_ALU|Add0~9\ & VCC)))) # 
-- (!\instancia_mux_ForwardA|outMux[5]~5_combout\ & ((\instancia_mux_imm|outMux[5]~12_combout\ & ((\instancia_ALU|Add0~9\) # (GND))) # (!\instancia_mux_imm|outMux[5]~12_combout\ & (!\instancia_ALU|Add0~9\))))
-- \instancia_ALU|Add0~11\ = CARRY((\instancia_mux_ForwardA|outMux[5]~5_combout\ & (\instancia_mux_imm|outMux[5]~12_combout\ & !\instancia_ALU|Add0~9\)) # (!\instancia_mux_ForwardA|outMux[5]~5_combout\ & ((\instancia_mux_imm|outMux[5]~12_combout\) # 
-- (!\instancia_ALU|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[5]~5_combout\,
	datab => \instancia_mux_imm|outMux[5]~12_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~9\,
	combout => \instancia_ALU|Add0~10_combout\,
	cout => \instancia_ALU|Add0~11\);

-- Location: LCCOMB_X53_Y37_N12
\instancia_ALU|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~12_combout\ = ((\instancia_mux_imm|outMux[6]~14_combout\ $ (\instancia_mux_ForwardA|outMux[6]~6_combout\ $ (\instancia_ALU|Add0~11\)))) # (GND)
-- \instancia_ALU|Add0~13\ = CARRY((\instancia_mux_imm|outMux[6]~14_combout\ & (\instancia_mux_ForwardA|outMux[6]~6_combout\ & !\instancia_ALU|Add0~11\)) # (!\instancia_mux_imm|outMux[6]~14_combout\ & ((\instancia_mux_ForwardA|outMux[6]~6_combout\) # 
-- (!\instancia_ALU|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[6]~14_combout\,
	datab => \instancia_mux_ForwardA|outMux[6]~6_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~11\,
	combout => \instancia_ALU|Add0~12_combout\,
	cout => \instancia_ALU|Add0~13\);

-- Location: LCCOMB_X53_Y37_N16
\instancia_ALU|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add0~16_combout\ = ((\instancia_mux_ForwardA|outMux[8]~8_combout\ $ (\instancia_mux_imm|outMux[8]~18_combout\ $ (\instancia_ALU|Add0~15\)))) # (GND)
-- \instancia_ALU|Add0~17\ = CARRY((\instancia_mux_ForwardA|outMux[8]~8_combout\ & ((!\instancia_ALU|Add0~15\) # (!\instancia_mux_imm|outMux[8]~18_combout\))) # (!\instancia_mux_ForwardA|outMux[8]~8_combout\ & (!\instancia_mux_imm|outMux[8]~18_combout\ & 
-- !\instancia_ALU|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[8]~8_combout\,
	datab => \instancia_mux_imm|outMux[8]~18_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add0~15\,
	combout => \instancia_ALU|Add0~16_combout\,
	cout => \instancia_ALU|Add0~17\);

-- Location: LCCOMB_X52_Y37_N10
\instancia_mux_ForwardA|outMux[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[9]~9_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(9))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(9),
	datab => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a9\,
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[9]~9_combout\);

-- Location: LCCOMB_X52_Y38_N20
\instancia_ALU|ALUOut[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[9]~18_combout\ = (\instancia_regE|ALUControlE\(1) & (\instancia_regE|ALUControlE\(0))) # (!\instancia_regE|ALUControlE\(1) & ((\instancia_regE|ALUControlE\(0) & ((\instancia_mux_imm|outMux[9]~20_combout\) # 
-- (\instancia_mux_ForwardA|outMux[9]~9_combout\))) # (!\instancia_regE|ALUControlE\(0) & (\instancia_mux_imm|outMux[9]~20_combout\ & \instancia_mux_ForwardA|outMux[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_regE|ALUControlE\(0),
	datac => \instancia_mux_imm|outMux[9]~20_combout\,
	datad => \instancia_mux_ForwardA|outMux[9]~9_combout\,
	combout => \instancia_ALU|ALUOut[9]~18_combout\);

-- Location: LCCOMB_X52_Y37_N12
\instancia_ALU|ALUOut[9]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[9]~19_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[9]~18_combout\ & (\instancia_ALU|Add0~18_combout\)) # (!\instancia_ALU|ALUOut[9]~18_combout\ & ((\instancia_ALU|Add1~18_combout\))))) # 
-- (!\instancia_regE|ALUControlE\(1) & (((\instancia_ALU|ALUOut[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|Add0~18_combout\,
	datac => \instancia_ALU|ALUOut[9]~18_combout\,
	datad => \instancia_ALU|Add1~18_combout\,
	combout => \instancia_ALU|ALUOut[9]~19_combout\);

-- Location: LCFF_X52_Y37_N13
\instancia_regW|ALUOutW[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(9));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[8]~I\ : cycloneii_io
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
	padio => ww_RD(8),
	combout => \RD~combout\(8));

-- Location: LCCOMB_X52_Y38_N30
\instancia_regD|InstrD[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regD|InstrD[8]~feeder_combout\ = \RD~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD~combout\(8),
	combout => \instancia_regD|InstrD[8]~feeder_combout\);

-- Location: LCFF_X52_Y38_N31
\instancia_regD|InstrD[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regD|InstrD[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(8));

-- Location: LCFF_X52_Y38_N23
\instancia_regE|SignImmE[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|SignImmE\(8));

-- Location: LCCOMB_X52_Y38_N22
\instancia_mux_imm|outMux[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[8]~17_combout\ = (\instancia_regE|ALUSrcE~regout\ & (((\instancia_regE|SignImmE\(8))))) # (!\instancia_regE|ALUSrcE~regout\ & (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a8\ & 
-- ((!\instancia_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a8\,
	datac => \instancia_regE|SignImmE\(8),
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[8]~17_combout\);

-- Location: LCCOMB_X52_Y38_N16
\instancia_mux_imm|outMux[8]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[8]~18_combout\ = (\instancia_mux_imm|outMux[8]~17_combout\) # ((!\instancia_regE|ALUSrcE~regout\ & (\instancia_regW|ALUOutW\(8) & \instancia_Hazard|FowardBE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_regW|ALUOutW\(8),
	datac => \instancia_Hazard|FowardBE~combout\,
	datad => \instancia_mux_imm|outMux[8]~17_combout\,
	combout => \instancia_mux_imm|outMux[8]~18_combout\);

-- Location: LCCOMB_X52_Y38_N18
\instancia_ALU|ALUOut[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[8]~16_combout\ = (\instancia_regE|ALUControlE\(1) & (\instancia_regE|ALUControlE\(0))) # (!\instancia_regE|ALUControlE\(1) & ((\instancia_regE|ALUControlE\(0) & ((\instancia_mux_imm|outMux[8]~18_combout\) # 
-- (\instancia_mux_ForwardA|outMux[8]~8_combout\))) # (!\instancia_regE|ALUControlE\(0) & (\instancia_mux_imm|outMux[8]~18_combout\ & \instancia_mux_ForwardA|outMux[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_regE|ALUControlE\(0),
	datac => \instancia_mux_imm|outMux[8]~18_combout\,
	datad => \instancia_mux_ForwardA|outMux[8]~8_combout\,
	combout => \instancia_ALU|ALUOut[8]~16_combout\);

-- Location: LCCOMB_X52_Y37_N0
\instancia_ALU|ALUOut[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[8]~17_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[8]~16_combout\ & (\instancia_ALU|Add0~16_combout\)) # (!\instancia_ALU|ALUOut[8]~16_combout\ & ((\instancia_ALU|Add1~16_combout\))))) # 
-- (!\instancia_regE|ALUControlE\(1) & (\instancia_ALU|ALUOut[8]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|ALUOut[8]~16_combout\,
	datac => \instancia_ALU|Add0~16_combout\,
	datad => \instancia_ALU|Add1~16_combout\,
	combout => \instancia_ALU|ALUOut[8]~17_combout\);

-- Location: LCFF_X52_Y37_N1
\instancia_regW|ALUOutW[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[8]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(8));

-- Location: LCCOMB_X52_Y35_N10
\instancia_mux_ForwardA|outMux[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[2]~2_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(2))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(2),
	datac => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a2\,
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[2]~2_combout\);

-- Location: LCCOMB_X51_Y37_N4
\instancia_ALU|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~4_combout\ = ((\instancia_mux_imm|outMux[2]~6_combout\ $ (\instancia_mux_ForwardA|outMux[2]~2_combout\ $ (!\instancia_ALU|Add1~3\)))) # (GND)
-- \instancia_ALU|Add1~5\ = CARRY((\instancia_mux_imm|outMux[2]~6_combout\ & ((\instancia_mux_ForwardA|outMux[2]~2_combout\) # (!\instancia_ALU|Add1~3\))) # (!\instancia_mux_imm|outMux[2]~6_combout\ & (\instancia_mux_ForwardA|outMux[2]~2_combout\ & 
-- !\instancia_ALU|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[2]~6_combout\,
	datab => \instancia_mux_ForwardA|outMux[2]~2_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~3\,
	combout => \instancia_ALU|Add1~4_combout\,
	cout => \instancia_ALU|Add1~5\);

-- Location: LCCOMB_X51_Y37_N6
\instancia_ALU|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~6_combout\ = (\instancia_mux_ForwardA|outMux[3]~3_combout\ & ((\instancia_mux_imm|outMux[3]~8_combout\ & (\instancia_ALU|Add1~5\ & VCC)) # (!\instancia_mux_imm|outMux[3]~8_combout\ & (!\instancia_ALU|Add1~5\)))) # 
-- (!\instancia_mux_ForwardA|outMux[3]~3_combout\ & ((\instancia_mux_imm|outMux[3]~8_combout\ & (!\instancia_ALU|Add1~5\)) # (!\instancia_mux_imm|outMux[3]~8_combout\ & ((\instancia_ALU|Add1~5\) # (GND)))))
-- \instancia_ALU|Add1~7\ = CARRY((\instancia_mux_ForwardA|outMux[3]~3_combout\ & (!\instancia_mux_imm|outMux[3]~8_combout\ & !\instancia_ALU|Add1~5\)) # (!\instancia_mux_ForwardA|outMux[3]~3_combout\ & ((!\instancia_ALU|Add1~5\) # 
-- (!\instancia_mux_imm|outMux[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[3]~3_combout\,
	datab => \instancia_mux_imm|outMux[3]~8_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~5\,
	combout => \instancia_ALU|Add1~6_combout\,
	cout => \instancia_ALU|Add1~7\);

-- Location: LCCOMB_X51_Y37_N8
\instancia_ALU|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~8_combout\ = ((\instancia_mux_imm|outMux[4]~10_combout\ $ (\instancia_mux_ForwardA|outMux[4]~4_combout\ $ (!\instancia_ALU|Add1~7\)))) # (GND)
-- \instancia_ALU|Add1~9\ = CARRY((\instancia_mux_imm|outMux[4]~10_combout\ & ((\instancia_mux_ForwardA|outMux[4]~4_combout\) # (!\instancia_ALU|Add1~7\))) # (!\instancia_mux_imm|outMux[4]~10_combout\ & (\instancia_mux_ForwardA|outMux[4]~4_combout\ & 
-- !\instancia_ALU|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_imm|outMux[4]~10_combout\,
	datab => \instancia_mux_ForwardA|outMux[4]~4_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~7\,
	combout => \instancia_ALU|Add1~8_combout\,
	cout => \instancia_ALU|Add1~9\);

-- Location: LCCOMB_X51_Y37_N10
\instancia_ALU|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|Add1~10_combout\ = (\instancia_mux_ForwardA|outMux[5]~5_combout\ & ((\instancia_mux_imm|outMux[5]~12_combout\ & (\instancia_ALU|Add1~9\ & VCC)) # (!\instancia_mux_imm|outMux[5]~12_combout\ & (!\instancia_ALU|Add1~9\)))) # 
-- (!\instancia_mux_ForwardA|outMux[5]~5_combout\ & ((\instancia_mux_imm|outMux[5]~12_combout\ & (!\instancia_ALU|Add1~9\)) # (!\instancia_mux_imm|outMux[5]~12_combout\ & ((\instancia_ALU|Add1~9\) # (GND)))))
-- \instancia_ALU|Add1~11\ = CARRY((\instancia_mux_ForwardA|outMux[5]~5_combout\ & (!\instancia_mux_imm|outMux[5]~12_combout\ & !\instancia_ALU|Add1~9\)) # (!\instancia_mux_ForwardA|outMux[5]~5_combout\ & ((!\instancia_ALU|Add1~9\) # 
-- (!\instancia_mux_imm|outMux[5]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[5]~5_combout\,
	datab => \instancia_mux_imm|outMux[5]~12_combout\,
	datad => VCC,
	cin => \instancia_ALU|Add1~9\,
	combout => \instancia_ALU|Add1~10_combout\,
	cout => \instancia_ALU|Add1~11\);

-- Location: LCCOMB_X54_Y37_N6
\instancia_ALU|ALUOut[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[7]~15_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[7]~14_combout\ & (\instancia_ALU|Add0~14_combout\)) # (!\instancia_ALU|ALUOut[7]~14_combout\ & ((\instancia_ALU|Add1~14_combout\))))) # 
-- (!\instancia_regE|ALUControlE\(1) & (((\instancia_ALU|ALUOut[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_ALU|Add0~14_combout\,
	datab => \instancia_regE|ALUControlE\(1),
	datac => \instancia_ALU|ALUOut[7]~14_combout\,
	datad => \instancia_ALU|Add1~14_combout\,
	combout => \instancia_ALU|ALUOut[7]~15_combout\);

-- Location: LCFF_X54_Y37_N7
\instancia_regW|ALUOutW[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(7));

-- Location: LCCOMB_X54_Y37_N4
\instancia_mux_ForwardA|outMux[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[6]~6_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(6))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regW|ALUOutW\(6),
	datac => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a6\,
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[6]~6_combout\);

-- Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD[6]~I\ : cycloneii_io
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
	padio => ww_RD(6),
	combout => \RD~combout\(6));

-- Location: LCCOMB_X54_Y37_N14
\instancia_regD|InstrD[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_regD|InstrD[6]~feeder_combout\ = \RD~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD~combout\(6),
	combout => \instancia_regD|InstrD[6]~feeder_combout\);

-- Location: LCFF_X54_Y37_N15
\instancia_regD|InstrD[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_regD|InstrD[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regD|InstrD\(6));

-- Location: LCFF_X54_Y37_N31
\instancia_regE|SignImmE[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_regD|InstrD\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regE|SignImmE\(6));

-- Location: LCCOMB_X54_Y37_N30
\instancia_mux_imm|outMux[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[6]~13_combout\ = (\instancia_regE|ALUSrcE~regout\ & (((\instancia_regE|SignImmE\(6))))) # (!\instancia_regE|ALUSrcE~regout\ & (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a6\ & 
-- ((!\instancia_Hazard|FowardBE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUSrcE~regout\,
	datab => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a6\,
	datac => \instancia_regE|SignImmE\(6),
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[6]~13_combout\);

-- Location: LCCOMB_X54_Y37_N26
\instancia_mux_imm|outMux[6]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[6]~14_combout\ = (\instancia_mux_imm|outMux[6]~13_combout\) # ((\instancia_Hazard|FowardBE~combout\ & (\instancia_regW|ALUOutW\(6) & !\instancia_regE|ALUSrcE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Hazard|FowardBE~combout\,
	datab => \instancia_regW|ALUOutW\(6),
	datac => \instancia_regE|ALUSrcE~regout\,
	datad => \instancia_mux_imm|outMux[6]~13_combout\,
	combout => \instancia_mux_imm|outMux[6]~14_combout\);

-- Location: LCCOMB_X54_Y37_N8
\instancia_ALU|ALUOut[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[6]~12_combout\ = (\instancia_regE|ALUControlE\(0) & ((\instancia_mux_ForwardA|outMux[6]~6_combout\) # ((\instancia_regE|ALUControlE\(1)) # (\instancia_mux_imm|outMux[6]~14_combout\)))) # (!\instancia_regE|ALUControlE\(0) & 
-- (\instancia_mux_ForwardA|outMux[6]~6_combout\ & (!\instancia_regE|ALUControlE\(1) & \instancia_mux_imm|outMux[6]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(0),
	datab => \instancia_mux_ForwardA|outMux[6]~6_combout\,
	datac => \instancia_regE|ALUControlE\(1),
	datad => \instancia_mux_imm|outMux[6]~14_combout\,
	combout => \instancia_ALU|ALUOut[6]~12_combout\);

-- Location: LCCOMB_X54_Y37_N0
\instancia_ALU|ALUOut[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[6]~13_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[6]~12_combout\ & ((\instancia_ALU|Add0~12_combout\))) # (!\instancia_ALU|ALUOut[6]~12_combout\ & (\instancia_ALU|Add1~12_combout\)))) # 
-- (!\instancia_regE|ALUControlE\(1) & (((\instancia_ALU|ALUOut[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_ALU|Add1~12_combout\,
	datab => \instancia_regE|ALUControlE\(1),
	datac => \instancia_ALU|ALUOut[6]~12_combout\,
	datad => \instancia_ALU|Add0~12_combout\,
	combout => \instancia_ALU|ALUOut[6]~13_combout\);

-- Location: LCFF_X54_Y37_N1
\instancia_regW|ALUOutW[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(6));

-- Location: LCCOMB_X52_Y37_N16
\instancia_mux_ForwardA|outMux[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[5]~5_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(5))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(5),
	datab => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a5\,
	datac => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[5]~5_combout\);

-- Location: LCCOMB_X50_Y37_N14
\instancia_ALU|ALUOut[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[5]~10_combout\ = (\instancia_regE|ALUControlE\(1) & (((\instancia_regE|ALUControlE\(0))))) # (!\instancia_regE|ALUControlE\(1) & ((\instancia_mux_ForwardA|outMux[5]~5_combout\ & ((\instancia_mux_imm|outMux[5]~12_combout\) # 
-- (\instancia_regE|ALUControlE\(0)))) # (!\instancia_mux_ForwardA|outMux[5]~5_combout\ & (\instancia_mux_imm|outMux[5]~12_combout\ & \instancia_regE|ALUControlE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_mux_ForwardA|outMux[5]~5_combout\,
	datac => \instancia_mux_imm|outMux[5]~12_combout\,
	datad => \instancia_regE|ALUControlE\(0),
	combout => \instancia_ALU|ALUOut[5]~10_combout\);

-- Location: LCCOMB_X50_Y37_N6
\instancia_ALU|ALUOut[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[5]~11_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[5]~10_combout\ & ((\instancia_ALU|Add0~10_combout\))) # (!\instancia_ALU|ALUOut[5]~10_combout\ & (\instancia_ALU|Add1~10_combout\)))) # 
-- (!\instancia_regE|ALUControlE\(1) & (\instancia_ALU|ALUOut[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|ALUOut[5]~10_combout\,
	datac => \instancia_ALU|Add1~10_combout\,
	datad => \instancia_ALU|Add0~10_combout\,
	combout => \instancia_ALU|ALUOut[5]~11_combout\);

-- Location: LCFF_X50_Y37_N7
\instancia_regW|ALUOutW[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(5));

-- Location: LCCOMB_X52_Y37_N24
\instancia_mux_ForwardA|outMux[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[4]~4_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(4))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regW|ALUOutW\(4),
	datac => \instancia_Hazard|FowardAE~combout\,
	datad => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a4\,
	combout => \instancia_mux_ForwardA|outMux[4]~4_combout\);

-- Location: LCCOMB_X49_Y37_N24
\instancia_ALU|ALUOut[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[4]~8_combout\ = (\instancia_regE|ALUControlE\(0) & ((\instancia_regE|ALUControlE\(1)) # ((\instancia_mux_ForwardA|outMux[4]~4_combout\) # (\instancia_mux_imm|outMux[4]~10_combout\)))) # (!\instancia_regE|ALUControlE\(0) & 
-- (!\instancia_regE|ALUControlE\(1) & (\instancia_mux_ForwardA|outMux[4]~4_combout\ & \instancia_mux_imm|outMux[4]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(0),
	datab => \instancia_regE|ALUControlE\(1),
	datac => \instancia_mux_ForwardA|outMux[4]~4_combout\,
	datad => \instancia_mux_imm|outMux[4]~10_combout\,
	combout => \instancia_ALU|ALUOut[4]~8_combout\);

-- Location: LCCOMB_X50_Y37_N24
\instancia_ALU|ALUOut[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[4]~9_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[4]~8_combout\ & ((\instancia_ALU|Add0~8_combout\))) # (!\instancia_ALU|ALUOut[4]~8_combout\ & (\instancia_ALU|Add1~8_combout\)))) # 
-- (!\instancia_regE|ALUControlE\(1) & (\instancia_ALU|ALUOut[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|ALUOut[4]~8_combout\,
	datac => \instancia_ALU|Add1~8_combout\,
	datad => \instancia_ALU|Add0~8_combout\,
	combout => \instancia_ALU|ALUOut[4]~9_combout\);

-- Location: LCFF_X50_Y37_N25
\instancia_regW|ALUOutW[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(4));

-- Location: LCCOMB_X53_Y35_N28
\instancia_mux_imm|outMux[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[3]~7_combout\ = (\instancia_regW|ALUOutW\(3) & ((\instancia_Hazard|FowardBE~combout\) # ((!\instancia_mux_imm|outMux[0]~0_combout\ & \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a3\)))) # 
-- (!\instancia_regW|ALUOutW\(3) & (!\instancia_mux_imm|outMux[0]~0_combout\ & (\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(3),
	datab => \instancia_mux_imm|outMux[0]~0_combout\,
	datac => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a3\,
	datad => \instancia_Hazard|FowardBE~combout\,
	combout => \instancia_mux_imm|outMux[3]~7_combout\);

-- Location: LCCOMB_X52_Y37_N18
\instancia_mux_imm|outMux[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[3]~8_combout\ = (\instancia_regE|ALUSrcE~regout\ & (\instancia_regE|SignImmE\(3))) # (!\instancia_regE|ALUSrcE~regout\ & ((\instancia_mux_imm|outMux[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_regE|SignImmE\(3),
	datad => \instancia_mux_imm|outMux[3]~7_combout\,
	combout => \instancia_mux_imm|outMux[3]~8_combout\);

-- Location: LCCOMB_X52_Y37_N22
\instancia_ALU|ALUOut[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[3]~7_combout\ = (\instancia_ALU|ALUOut[3]~6_combout\ & (((\instancia_ALU|Add0~6_combout\)) # (!\instancia_regE|ALUControlE\(1)))) # (!\instancia_ALU|ALUOut[3]~6_combout\ & (\instancia_regE|ALUControlE\(1) & 
-- (\instancia_ALU|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_ALU|ALUOut[3]~6_combout\,
	datab => \instancia_regE|ALUControlE\(1),
	datac => \instancia_ALU|Add1~6_combout\,
	datad => \instancia_ALU|Add0~6_combout\,
	combout => \instancia_ALU|ALUOut[3]~7_combout\);

-- Location: LCFF_X52_Y37_N23
\instancia_regW|ALUOutW[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(3));

-- Location: LCCOMB_X52_Y35_N2
\instancia_mux_imm|outMux[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[2]~5_combout\ = (\instancia_regW|ALUOutW\(2) & ((\instancia_Hazard|FowardBE~combout\) # ((\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a2\ & !\instancia_mux_imm|outMux[0]~0_combout\)))) # 
-- (!\instancia_regW|ALUOutW\(2) & (((\instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a2\ & !\instancia_mux_imm|outMux[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(2),
	datab => \instancia_Hazard|FowardBE~combout\,
	datac => \instancia_reg_file|registers_rtl_1|auto_generated|ram_block1a2\,
	datad => \instancia_mux_imm|outMux[0]~0_combout\,
	combout => \instancia_mux_imm|outMux[2]~5_combout\);

-- Location: LCCOMB_X52_Y35_N0
\instancia_mux_imm|outMux[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_imm|outMux[2]~6_combout\ = (\instancia_regE|ALUSrcE~regout\ & (\instancia_regE|SignImmE\(2))) # (!\instancia_regE|ALUSrcE~regout\ & ((\instancia_mux_imm|outMux[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regE|ALUSrcE~regout\,
	datac => \instancia_regE|SignImmE\(2),
	datad => \instancia_mux_imm|outMux[2]~5_combout\,
	combout => \instancia_mux_imm|outMux[2]~6_combout\);

-- Location: LCCOMB_X52_Y35_N28
\instancia_ALU|ALUOut[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[2]~4_combout\ = (\instancia_mux_ForwardA|outMux[2]~2_combout\ & ((\instancia_regE|ALUControlE\(0)) # ((\instancia_mux_imm|outMux[2]~6_combout\ & !\instancia_regE|ALUControlE\(1))))) # (!\instancia_mux_ForwardA|outMux[2]~2_combout\ & 
-- (\instancia_regE|ALUControlE\(0) & ((\instancia_mux_imm|outMux[2]~6_combout\) # (\instancia_regE|ALUControlE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_ForwardA|outMux[2]~2_combout\,
	datab => \instancia_mux_imm|outMux[2]~6_combout\,
	datac => \instancia_regE|ALUControlE\(0),
	datad => \instancia_regE|ALUControlE\(1),
	combout => \instancia_ALU|ALUOut[2]~4_combout\);

-- Location: LCCOMB_X52_Y35_N20
\instancia_ALU|ALUOut[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[2]~5_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[2]~4_combout\ & (\instancia_ALU|Add0~4_combout\)) # (!\instancia_ALU|ALUOut[2]~4_combout\ & ((\instancia_ALU|Add1~4_combout\))))) # 
-- (!\instancia_regE|ALUControlE\(1) & (\instancia_ALU|ALUOut[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|ALUOut[2]~4_combout\,
	datac => \instancia_ALU|Add0~4_combout\,
	datad => \instancia_ALU|Add1~4_combout\,
	combout => \instancia_ALU|ALUOut[2]~5_combout\);

-- Location: LCFF_X52_Y35_N21
\instancia_regW|ALUOutW[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(2));

-- Location: LCCOMB_X52_Y35_N24
\instancia_mux_ForwardA|outMux[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[1]~1_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(1))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_regW|ALUOutW\(1),
	datac => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a1\,
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[1]~1_combout\);

-- Location: LCCOMB_X52_Y35_N8
\instancia_ALU|ALUOut[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[1]~3_combout\ = (\instancia_ALU|ALUOut[1]~2_combout\ & (((\instancia_ALU|Add0~2_combout\)) # (!\instancia_regE|ALUControlE\(1)))) # (!\instancia_ALU|ALUOut[1]~2_combout\ & (\instancia_regE|ALUControlE\(1) & 
-- (\instancia_ALU|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_ALU|ALUOut[1]~2_combout\,
	datab => \instancia_regE|ALUControlE\(1),
	datac => \instancia_ALU|Add1~2_combout\,
	datad => \instancia_ALU|Add0~2_combout\,
	combout => \instancia_ALU|ALUOut[1]~3_combout\);

-- Location: LCFF_X52_Y35_N9
\instancia_regW|ALUOutW[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(1));

-- Location: LCCOMB_X52_Y35_N18
\instancia_mux_ForwardA|outMux[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_mux_ForwardA|outMux[0]~0_combout\ = (\instancia_Hazard|FowardAE~combout\ & (\instancia_regW|ALUOutW\(0))) # (!\instancia_Hazard|FowardAE~combout\ & ((\instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regW|ALUOutW\(0),
	datac => \instancia_reg_file|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \instancia_Hazard|FowardAE~combout\,
	combout => \instancia_mux_ForwardA|outMux[0]~0_combout\);

-- Location: LCCOMB_X52_Y37_N6
\instancia_ALU|ALUOut[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[0]~0_combout\ = (\instancia_regE|ALUControlE\(1) & (((\instancia_regE|ALUControlE\(0))))) # (!\instancia_regE|ALUControlE\(1) & ((\instancia_mux_ForwardA|outMux[0]~0_combout\ & ((\instancia_mux_imm|outMux[0]~2_combout\) # 
-- (\instancia_regE|ALUControlE\(0)))) # (!\instancia_mux_ForwardA|outMux[0]~0_combout\ & (\instancia_mux_imm|outMux[0]~2_combout\ & \instancia_regE|ALUControlE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_mux_ForwardA|outMux[0]~0_combout\,
	datac => \instancia_mux_imm|outMux[0]~2_combout\,
	datad => \instancia_regE|ALUControlE\(0),
	combout => \instancia_ALU|ALUOut[0]~0_combout\);

-- Location: LCCOMB_X52_Y37_N26
\instancia_ALU|ALUOut[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_ALU|ALUOut[0]~1_combout\ = (\instancia_regE|ALUControlE\(1) & ((\instancia_ALU|ALUOut[0]~0_combout\ & (\instancia_ALU|Add0~0_combout\)) # (!\instancia_ALU|ALUOut[0]~0_combout\ & ((\instancia_ALU|Add1~0_combout\))))) # 
-- (!\instancia_regE|ALUControlE\(1) & (((\instancia_ALU|ALUOut[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_regE|ALUControlE\(1),
	datab => \instancia_ALU|Add0~0_combout\,
	datac => \instancia_ALU|Add1~0_combout\,
	datad => \instancia_ALU|ALUOut[0]~0_combout\,
	combout => \instancia_ALU|ALUOut[0]~1_combout\);

-- Location: LCFF_X52_Y37_N27
\instancia_regW|ALUOutW[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_ALU|ALUOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_regW|ALUOutW\(0));

-- Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(0));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(1));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[2]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(2));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[3]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(3));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[4]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(4));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[5]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(5));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[6]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(6));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[7]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(7));

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[8]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(8));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[9]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(9));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[10]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(10));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[11]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(11));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[12]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(12));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[13]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(13));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[14]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(14));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[15]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(15));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[16]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(16));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[17]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(17));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[18]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(18));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[19]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(19));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[20]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(20));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[21]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(21));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[22]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(22));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[23]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(23));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[24]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(24));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[25]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(25));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[26]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(26));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[27]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(27));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[28]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(28));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[29]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(29));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[30]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(30));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_atual_out[31]~I\ : cycloneii_io
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
	datain => \instancia_regPC|saida\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_atual_out(31));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[0]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(0));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[1]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(1));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[2]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(2));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[3]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(3));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[4]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(4));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[5]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(5));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[6]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(6));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[7]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(7));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[8]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(8));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[9]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(9));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[10]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(10));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[11]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(11));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[12]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(12));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[13]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(13));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[14]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(14));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[15]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(15));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[16]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(16));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[17]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(17));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[18]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(18));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[19]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(19));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[20]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(20));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[21]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(21));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[22]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(22));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[23]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(23));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[24]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(24));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[25]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(25));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[26]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(26));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[27]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(27));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[28]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(28));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[29]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(29));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[30]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(30));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOutW_out[31]~I\ : cycloneii_io
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
	datain => \instancia_regW|ALUOutW\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOutW_out(31));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\WriteRegW_out[0]~I\ : cycloneii_io
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
	datain => \instancia_regW|WriteRegW\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteRegW_out(0));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\WriteRegW_out[1]~I\ : cycloneii_io
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
	datain => \instancia_regW|WriteRegW\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteRegW_out(1));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\WriteRegW_out[2]~I\ : cycloneii_io
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
	datain => \instancia_regW|WriteRegW\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteRegW_out(2));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\WriteRegW_out[3]~I\ : cycloneii_io
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
	datain => \instancia_regW|WriteRegW\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteRegW_out(3));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\WriteRegW_out[4]~I\ : cycloneii_io
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
	datain => \instancia_regW|WriteRegW\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteRegW_out(4));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegWriteW_out~I\ : cycloneii_io
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
	datain => \instancia_regW|RegWriteW~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegWriteW_out);
END structure;


