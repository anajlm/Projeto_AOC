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

-- DATE "11/29/2019 22:59:16"

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

ENTITY 	ALU IS
    PORT (
	SrcA : IN std_logic_vector(31 DOWNTO 0);
	SrcB : IN std_logic_vector(31 DOWNTO 0);
	ALUOut : OUT std_logic_vector(31 DOWNTO 0);
	ALUControl : IN std_logic_vector(1 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- ALUOut[0]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[2]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[4]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[5]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[6]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[7]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[8]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[9]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[10]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[11]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[12]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[13]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[14]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[15]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[16]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[17]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[18]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[19]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[20]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[21]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[22]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[23]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[24]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[25]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[26]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[27]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[28]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[29]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[30]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUOut[31]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SrcB[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALUControl[1]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALUControl[0]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[1]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[1]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[2]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[2]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[3]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[3]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[4]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[5]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[5]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[6]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[6]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[7]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[7]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[8]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[8]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[9]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[9]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[10]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[10]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[11]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[11]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[12]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[12]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[13]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[13]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[14]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[14]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[15]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[15]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[16]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[16]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[17]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[17]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[18]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[18]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[19]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[19]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[20]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[20]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[21]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[21]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[22]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[22]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[23]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[23]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[24]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[24]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[25]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[25]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[26]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[26]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[27]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[27]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[28]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[28]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[29]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[29]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[30]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[30]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcB[31]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SrcA[31]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SrcA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_SrcB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ALUOut : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ALUControl : std_logic_vector(1 DOWNTO 0);
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \ALUOut~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \ALUOut~1_combout\ : std_logic;
SIGNAL \ALUOut~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \ALUOut~3_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \ALUOut~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \ALUOut~5_combout\ : std_logic;
SIGNAL \ALUOut~6_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \ALUOut~7_combout\ : std_logic;
SIGNAL \ALUOut~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \ALUOut~9_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \ALUOut~10_combout\ : std_logic;
SIGNAL \ALUOut~11_combout\ : std_logic;
SIGNAL \ALUOut~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \ALUOut~13_combout\ : std_logic;
SIGNAL \ALUOut~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \ALUOut~15_combout\ : std_logic;
SIGNAL \ALUOut~16_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \ALUOut~17_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \ALUOut~18_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \ALUOut~19_combout\ : std_logic;
SIGNAL \ALUOut~20_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \ALUOut~21_combout\ : std_logic;
SIGNAL \ALUOut~22_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \ALUOut~23_combout\ : std_logic;
SIGNAL \ALUOut~24_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \ALUOut~25_combout\ : std_logic;
SIGNAL \ALUOut~26_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \ALUOut~27_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \ALUOut~28_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \ALUOut~29_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \ALUOut~30_combout\ : std_logic;
SIGNAL \ALUOut~31_combout\ : std_logic;
SIGNAL \ALUOut~32_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \ALUOut~33_combout\ : std_logic;
SIGNAL \ALUOut~34_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \ALUOut~35_combout\ : std_logic;
SIGNAL \ALUOut~36_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \ALUOut~37_combout\ : std_logic;
SIGNAL \ALUOut~38_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \ALUOut~39_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \ALUOut~40_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \ALUOut~41_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \ALUOut~42_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \ALUOut~43_combout\ : std_logic;
SIGNAL \ALUOut~44_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \ALUOut~45_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \ALUOut~46_combout\ : std_logic;
SIGNAL \ALUOut~47_combout\ : std_logic;
SIGNAL \ALUOut~48_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \ALUOut~49_combout\ : std_logic;
SIGNAL \ALUOut~50_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \ALUOut~51_combout\ : std_logic;
SIGNAL \ALUOut~52_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \ALUOut~53_combout\ : std_logic;
SIGNAL \ALUOut~54_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \ALUOut~55_combout\ : std_logic;
SIGNAL \ALUOut~56_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \ALUOut~57_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \ALUOut~58_combout\ : std_logic;
SIGNAL \ALUOut~59_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \ALUOut~60_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \ALUOut~61_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \ALUOut~62_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \ALUOut~63_combout\ : std_logic;
SIGNAL \SrcB~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \SrcA~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALUControl~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_SrcA <= SrcA;
ww_SrcB <= SrcB;
ALUOut <= ww_ALUOut;
ww_ALUControl <= ALUControl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(7),
	combout => \SrcB~combout\(7));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[12]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(12),
	combout => \SrcB~combout\(12));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(0),
	combout => \SrcA~combout\(0));

-- Location: LCCOMB_X44_Y30_N0
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\SrcB~combout\(0) & (\SrcA~combout\(0) $ (VCC))) # (!\SrcB~combout\(0) & (\SrcA~combout\(0) & VCC))
-- \Add1~1\ = CARRY((\SrcB~combout\(0) & \SrcA~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(0),
	datab => \SrcA~combout\(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(0),
	combout => \SrcB~combout\(0));

-- Location: LCCOMB_X45_Y31_N0
\ALUOut~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~0_combout\ = (\SrcA~combout\(0) & ((\ALUControl~combout\(0)) # ((!\ALUControl~combout\(1) & \SrcB~combout\(0))))) # (!\SrcA~combout\(0) & (\ALUControl~combout\(0) & ((\ALUControl~combout\(1)) # (\SrcB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(0),
	datab => \ALUControl~combout\(0),
	datac => \ALUControl~combout\(1),
	datad => \SrcB~combout\(0),
	combout => \ALUOut~0_combout\);

-- Location: LCCOMB_X46_Y30_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\SrcB~combout\(0) & (\SrcA~combout\(0) $ (VCC))) # (!\SrcB~combout\(0) & ((\SrcA~combout\(0)) # (GND)))
-- \Add0~1\ = CARRY((\SrcA~combout\(0)) # (!\SrcB~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(0),
	datab => \SrcA~combout\(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X45_Y31_N10
\ALUOut~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~1_combout\ = (\ALUOut~0_combout\ & (((\Add0~0_combout\) # (!\ALUControl~combout\(1))))) # (!\ALUOut~0_combout\ & (\Add1~0_combout\ & (\ALUControl~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \ALUOut~0_combout\,
	datac => \ALUControl~combout\(1),
	datad => \Add0~0_combout\,
	combout => \ALUOut~1_combout\);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(1),
	combout => \SrcB~combout\(1));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(1),
	combout => \SrcA~combout\(1));

-- Location: LCCOMB_X45_Y31_N28
\ALUOut~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~2_combout\ = (\ALUControl~combout\(1) & (((\ALUControl~combout\(0))))) # (!\ALUControl~combout\(1) & ((\SrcB~combout\(1) & ((\ALUControl~combout\(0)) # (\SrcA~combout\(1)))) # (!\SrcB~combout\(1) & (\ALUControl~combout\(0) & \SrcA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \SrcB~combout\(1),
	datac => \ALUControl~combout\(0),
	datad => \SrcA~combout\(1),
	combout => \ALUOut~2_combout\);

-- Location: LCCOMB_X46_Y30_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\SrcA~combout\(1) & ((\SrcB~combout\(1) & (!\Add0~1\)) # (!\SrcB~combout\(1) & (\Add0~1\ & VCC)))) # (!\SrcA~combout\(1) & ((\SrcB~combout\(1) & ((\Add0~1\) # (GND))) # (!\SrcB~combout\(1) & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\SrcA~combout\(1) & (\SrcB~combout\(1) & !\Add0~1\)) # (!\SrcA~combout\(1) & ((\SrcB~combout\(1)) # (!\Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(1),
	datab => \SrcB~combout\(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X44_Y30_N2
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\SrcA~combout\(1) & ((\SrcB~combout\(1) & (\Add1~1\ & VCC)) # (!\SrcB~combout\(1) & (!\Add1~1\)))) # (!\SrcA~combout\(1) & ((\SrcB~combout\(1) & (!\Add1~1\)) # (!\SrcB~combout\(1) & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\SrcA~combout\(1) & (!\SrcB~combout\(1) & !\Add1~1\)) # (!\SrcA~combout\(1) & ((!\Add1~1\) # (!\SrcB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(1),
	datab => \SrcB~combout\(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X45_Y31_N6
\ALUOut~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~3_combout\ = (\ALUControl~combout\(1) & ((\ALUOut~2_combout\ & (\Add0~2_combout\)) # (!\ALUOut~2_combout\ & ((\Add1~2_combout\))))) # (!\ALUControl~combout\(1) & (\ALUOut~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \ALUOut~2_combout\,
	datac => \Add0~2_combout\,
	datad => \Add1~2_combout\,
	combout => \ALUOut~3_combout\);

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(2),
	combout => \SrcA~combout\(2));

-- Location: LCCOMB_X46_Y30_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\SrcB~combout\(2) $ (\SrcA~combout\(2) $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\SrcB~combout\(2) & (\SrcA~combout\(2) & !\Add0~3\)) # (!\SrcB~combout\(2) & ((\SrcA~combout\(2)) # (!\Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(2),
	datab => \SrcA~combout\(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(2),
	combout => \SrcB~combout\(2));

-- Location: LCCOMB_X45_Y31_N16
\ALUOut~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~4_combout\ = (\ALUControl~combout\(1) & (\ALUControl~combout\(0))) # (!\ALUControl~combout\(1) & ((\ALUControl~combout\(0) & ((\SrcA~combout\(2)) # (\SrcB~combout\(2)))) # (!\ALUControl~combout\(0) & (\SrcA~combout\(2) & \SrcB~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \ALUControl~combout\(0),
	datac => \SrcA~combout\(2),
	datad => \SrcB~combout\(2),
	combout => \ALUOut~4_combout\);

-- Location: LCCOMB_X44_Y30_N4
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\SrcB~combout\(2) $ (\SrcA~combout\(2) $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\SrcB~combout\(2) & ((\SrcA~combout\(2)) # (!\Add1~3\))) # (!\SrcB~combout\(2) & (\SrcA~combout\(2) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(2),
	datab => \SrcA~combout\(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X45_Y31_N18
\ALUOut~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~5_combout\ = (\ALUControl~combout\(1) & ((\ALUOut~4_combout\ & (\Add0~4_combout\)) # (!\ALUOut~4_combout\ & ((\Add1~4_combout\))))) # (!\ALUControl~combout\(1) & (((\ALUOut~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \Add0~4_combout\,
	datac => \ALUOut~4_combout\,
	datad => \Add1~4_combout\,
	combout => \ALUOut~5_combout\);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(3),
	combout => \SrcB~combout\(3));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(3),
	combout => \SrcA~combout\(3));

-- Location: LCCOMB_X45_Y31_N4
\ALUOut~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~6_combout\ = (\ALUControl~combout\(1) & (((\ALUControl~combout\(0))))) # (!\ALUControl~combout\(1) & ((\SrcB~combout\(3) & ((\SrcA~combout\(3)) # (\ALUControl~combout\(0)))) # (!\SrcB~combout\(3) & (\SrcA~combout\(3) & \ALUControl~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \SrcB~combout\(3),
	datac => \SrcA~combout\(3),
	datad => \ALUControl~combout\(0),
	combout => \ALUOut~6_combout\);

-- Location: LCCOMB_X44_Y30_N6
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\SrcA~combout\(3) & ((\SrcB~combout\(3) & (\Add1~5\ & VCC)) # (!\SrcB~combout\(3) & (!\Add1~5\)))) # (!\SrcA~combout\(3) & ((\SrcB~combout\(3) & (!\Add1~5\)) # (!\SrcB~combout\(3) & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\SrcA~combout\(3) & (!\SrcB~combout\(3) & !\Add1~5\)) # (!\SrcA~combout\(3) & ((!\Add1~5\) # (!\SrcB~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(3),
	datab => \SrcB~combout\(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X46_Y30_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\SrcA~combout\(3) & ((\SrcB~combout\(3) & (!\Add0~5\)) # (!\SrcB~combout\(3) & (\Add0~5\ & VCC)))) # (!\SrcA~combout\(3) & ((\SrcB~combout\(3) & ((\Add0~5\) # (GND))) # (!\SrcB~combout\(3) & (!\Add0~5\))))
-- \Add0~7\ = CARRY((\SrcA~combout\(3) & (\SrcB~combout\(3) & !\Add0~5\)) # (!\SrcA~combout\(3) & ((\SrcB~combout\(3)) # (!\Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(3),
	datab => \SrcB~combout\(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X45_Y31_N30
\ALUOut~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~7_combout\ = (\ALUControl~combout\(1) & ((\ALUOut~6_combout\ & ((\Add0~6_combout\))) # (!\ALUOut~6_combout\ & (\Add1~6_combout\)))) # (!\ALUControl~combout\(1) & (\ALUOut~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \ALUOut~6_combout\,
	datac => \Add1~6_combout\,
	datad => \Add0~6_combout\,
	combout => \ALUOut~7_combout\);

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(4),
	combout => \SrcA~combout\(4));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(4),
	combout => \SrcB~combout\(4));

-- Location: LCCOMB_X45_Y31_N8
\ALUOut~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~8_combout\ = (\ALUControl~combout\(1) & (\ALUControl~combout\(0))) # (!\ALUControl~combout\(1) & ((\ALUControl~combout\(0) & ((\SrcA~combout\(4)) # (\SrcB~combout\(4)))) # (!\ALUControl~combout\(0) & (\SrcA~combout\(4) & \SrcB~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \ALUControl~combout\(0),
	datac => \SrcA~combout\(4),
	datad => \SrcB~combout\(4),
	combout => \ALUOut~8_combout\);

-- Location: LCCOMB_X44_Y30_N8
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\SrcB~combout\(4) $ (\SrcA~combout\(4) $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\SrcB~combout\(4) & ((\SrcA~combout\(4)) # (!\Add1~7\))) # (!\SrcB~combout\(4) & (\SrcA~combout\(4) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(4),
	datab => \SrcA~combout\(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X46_Y30_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\SrcB~combout\(4) $ (\SrcA~combout\(4) $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\SrcB~combout\(4) & (\SrcA~combout\(4) & !\Add0~7\)) # (!\SrcB~combout\(4) & ((\SrcA~combout\(4)) # (!\Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(4),
	datab => \SrcA~combout\(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X45_Y31_N2
\ALUOut~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~9_combout\ = (\ALUControl~combout\(1) & ((\ALUOut~8_combout\ & ((\Add0~8_combout\))) # (!\ALUOut~8_combout\ & (\Add1~8_combout\)))) # (!\ALUControl~combout\(1) & (\ALUOut~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \ALUOut~8_combout\,
	datac => \Add1~8_combout\,
	datad => \Add0~8_combout\,
	combout => \ALUOut~9_combout\);

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(5),
	combout => \SrcB~combout\(5));

-- Location: LCCOMB_X44_Y30_N10
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\SrcA~combout\(5) & ((\SrcB~combout\(5) & (\Add1~9\ & VCC)) # (!\SrcB~combout\(5) & (!\Add1~9\)))) # (!\SrcA~combout\(5) & ((\SrcB~combout\(5) & (!\Add1~9\)) # (!\SrcB~combout\(5) & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\SrcA~combout\(5) & (!\SrcB~combout\(5) & !\Add1~9\)) # (!\SrcA~combout\(5) & ((!\Add1~9\) # (!\SrcB~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(5),
	datab => \SrcB~combout\(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(5),
	combout => \SrcA~combout\(5));

-- Location: LCCOMB_X46_Y30_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\SrcB~combout\(5) & ((\SrcA~combout\(5) & (!\Add0~9\)) # (!\SrcA~combout\(5) & ((\Add0~9\) # (GND))))) # (!\SrcB~combout\(5) & ((\SrcA~combout\(5) & (\Add0~9\ & VCC)) # (!\SrcA~combout\(5) & (!\Add0~9\))))
-- \Add0~11\ = CARRY((\SrcB~combout\(5) & ((!\Add0~9\) # (!\SrcA~combout\(5)))) # (!\SrcB~combout\(5) & (!\SrcA~combout\(5) & !\Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(5),
	datab => \SrcA~combout\(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X45_Y31_N12
\ALUOut~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~10_combout\ = (\ALUControl~combout\(1) & (\ALUControl~combout\(0))) # (!\ALUControl~combout\(1) & ((\ALUControl~combout\(0) & ((\SrcA~combout\(5)) # (\SrcB~combout\(5)))) # (!\ALUControl~combout\(0) & (\SrcA~combout\(5) & \SrcB~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \ALUControl~combout\(0),
	datac => \SrcA~combout\(5),
	datad => \SrcB~combout\(5),
	combout => \ALUOut~10_combout\);

-- Location: LCCOMB_X45_Y31_N22
\ALUOut~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~11_combout\ = (\ALUControl~combout\(1) & ((\ALUOut~10_combout\ & ((\Add0~10_combout\))) # (!\ALUOut~10_combout\ & (\Add1~10_combout\)))) # (!\ALUControl~combout\(1) & (((\ALUOut~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \Add1~10_combout\,
	datac => \Add0~10_combout\,
	datad => \ALUOut~10_combout\,
	combout => \ALUOut~11_combout\);

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(6),
	combout => \SrcA~combout\(6));

-- Location: LCCOMB_X45_Y30_N8
\ALUOut~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~12_combout\ = (\SrcB~combout\(6) & ((\ALUControl~combout\(0)) # ((\SrcA~combout\(6) & !\ALUControl~combout\(1))))) # (!\SrcB~combout\(6) & (\ALUControl~combout\(0) & ((\SrcA~combout\(6)) # (\ALUControl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(6),
	datab => \SrcA~combout\(6),
	datac => \ALUControl~combout\(1),
	datad => \ALUControl~combout\(0),
	combout => \ALUOut~12_combout\);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(6),
	combout => \SrcB~combout\(6));

-- Location: LCCOMB_X46_Y30_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\SrcA~combout\(6) $ (\SrcB~combout\(6) $ (\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\SrcA~combout\(6) & ((!\Add0~11\) # (!\SrcB~combout\(6)))) # (!\SrcA~combout\(6) & (!\SrcB~combout\(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(6),
	datab => \SrcB~combout\(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X44_Y30_N12
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\SrcB~combout\(6) $ (\SrcA~combout\(6) $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\SrcB~combout\(6) & ((\SrcA~combout\(6)) # (!\Add1~11\))) # (!\SrcB~combout\(6) & (\SrcA~combout\(6) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(6),
	datab => \SrcA~combout\(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X45_Y30_N26
\ALUOut~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~13_combout\ = (\ALUControl~combout\(1) & ((\ALUOut~12_combout\ & (\Add0~12_combout\)) # (!\ALUOut~12_combout\ & ((\Add1~12_combout\))))) # (!\ALUControl~combout\(1) & (\ALUOut~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \ALUOut~12_combout\,
	datac => \Add0~12_combout\,
	datad => \Add1~12_combout\,
	combout => \ALUOut~13_combout\);

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(7),
	combout => \SrcA~combout\(7));

-- Location: LCCOMB_X45_Y30_N4
\ALUOut~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~14_combout\ = (\SrcB~combout\(7) & ((\ALUControl~combout\(0)) # ((\SrcA~combout\(7) & !\ALUControl~combout\(1))))) # (!\SrcB~combout\(7) & (\ALUControl~combout\(0) & ((\SrcA~combout\(7)) # (\ALUControl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(7),
	datab => \SrcA~combout\(7),
	datac => \ALUControl~combout\(1),
	datad => \ALUControl~combout\(0),
	combout => \ALUOut~14_combout\);

-- Location: LCCOMB_X46_Y30_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\SrcB~combout\(7) & ((\SrcA~combout\(7) & (!\Add0~13\)) # (!\SrcA~combout\(7) & ((\Add0~13\) # (GND))))) # (!\SrcB~combout\(7) & ((\SrcA~combout\(7) & (\Add0~13\ & VCC)) # (!\SrcA~combout\(7) & (!\Add0~13\))))
-- \Add0~15\ = CARRY((\SrcB~combout\(7) & ((!\Add0~13\) # (!\SrcA~combout\(7)))) # (!\SrcB~combout\(7) & (!\SrcA~combout\(7) & !\Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(7),
	datab => \SrcA~combout\(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X44_Y30_N14
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\SrcB~combout\(7) & ((\SrcA~combout\(7) & (\Add1~13\ & VCC)) # (!\SrcA~combout\(7) & (!\Add1~13\)))) # (!\SrcB~combout\(7) & ((\SrcA~combout\(7) & (!\Add1~13\)) # (!\SrcA~combout\(7) & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((\SrcB~combout\(7) & (!\SrcA~combout\(7) & !\Add1~13\)) # (!\SrcB~combout\(7) & ((!\Add1~13\) # (!\SrcA~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(7),
	datab => \SrcA~combout\(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X45_Y30_N6
\ALUOut~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~15_combout\ = (\ALUControl~combout\(1) & ((\ALUOut~14_combout\ & (\Add0~14_combout\)) # (!\ALUOut~14_combout\ & ((\Add1~14_combout\))))) # (!\ALUControl~combout\(1) & (\ALUOut~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \ALUOut~14_combout\,
	datac => \Add0~14_combout\,
	datad => \Add1~14_combout\,
	combout => \ALUOut~15_combout\);

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(8),
	combout => \SrcB~combout\(8));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(8),
	combout => \SrcA~combout\(8));

-- Location: LCCOMB_X45_Y30_N24
\ALUOut~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~16_combout\ = (\ALUControl~combout\(1) & (\ALUControl~combout\(0))) # (!\ALUControl~combout\(1) & ((\ALUControl~combout\(0) & ((\SrcB~combout\(8)) # (\SrcA~combout\(8)))) # (!\ALUControl~combout\(0) & (\SrcB~combout\(8) & \SrcA~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \ALUControl~combout\(0),
	datac => \SrcB~combout\(8),
	datad => \SrcA~combout\(8),
	combout => \ALUOut~16_combout\);

-- Location: LCCOMB_X44_Y30_N16
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\SrcB~combout\(8) $ (\SrcA~combout\(8) $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\SrcB~combout\(8) & ((\SrcA~combout\(8)) # (!\Add1~15\))) # (!\SrcB~combout\(8) & (\SrcA~combout\(8) & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(8),
	datab => \SrcA~combout\(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X46_Y30_N16
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\SrcB~combout\(8) $ (\SrcA~combout\(8) $ (\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\SrcB~combout\(8) & (\SrcA~combout\(8) & !\Add0~15\)) # (!\SrcB~combout\(8) & ((\SrcA~combout\(8)) # (!\Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(8),
	datab => \SrcA~combout\(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X45_Y30_N10
\ALUOut~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~17_combout\ = (\ALUOut~16_combout\ & (((\Add0~16_combout\) # (!\ALUControl~combout\(1))))) # (!\ALUOut~16_combout\ & (\Add1~16_combout\ & ((\ALUControl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOut~16_combout\,
	datab => \Add1~16_combout\,
	datac => \Add0~16_combout\,
	datad => \ALUControl~combout\(1),
	combout => \ALUOut~17_combout\);

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(9),
	combout => \SrcA~combout\(9));

-- Location: LCCOMB_X44_Y30_N18
\Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\SrcB~combout\(9) & ((\SrcA~combout\(9) & (\Add1~17\ & VCC)) # (!\SrcA~combout\(9) & (!\Add1~17\)))) # (!\SrcB~combout\(9) & ((\SrcA~combout\(9) & (!\Add1~17\)) # (!\SrcA~combout\(9) & ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((\SrcB~combout\(9) & (!\SrcA~combout\(9) & !\Add1~17\)) # (!\SrcB~combout\(9) & ((!\Add1~17\) # (!\SrcA~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(9),
	datab => \SrcA~combout\(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(9),
	combout => \SrcB~combout\(9));

-- Location: LCCOMB_X45_Y30_N28
\ALUOut~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~18_combout\ = (\SrcA~combout\(9) & ((\ALUControl~combout\(0)) # ((\SrcB~combout\(9) & !\ALUControl~combout\(1))))) # (!\SrcA~combout\(9) & (\ALUControl~combout\(0) & ((\SrcB~combout\(9)) # (\ALUControl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(9),
	datab => \SrcB~combout\(9),
	datac => \ALUControl~combout\(1),
	datad => \ALUControl~combout\(0),
	combout => \ALUOut~18_combout\);

-- Location: LCCOMB_X46_Y30_N18
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\SrcB~combout\(9) & ((\SrcA~combout\(9) & (!\Add0~17\)) # (!\SrcA~combout\(9) & ((\Add0~17\) # (GND))))) # (!\SrcB~combout\(9) & ((\SrcA~combout\(9) & (\Add0~17\ & VCC)) # (!\SrcA~combout\(9) & (!\Add0~17\))))
-- \Add0~19\ = CARRY((\SrcB~combout\(9) & ((!\Add0~17\) # (!\SrcA~combout\(9)))) # (!\SrcB~combout\(9) & (!\SrcA~combout\(9) & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(9),
	datab => \SrcA~combout\(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X45_Y30_N22
\ALUOut~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~19_combout\ = (\ALUOut~18_combout\ & (((\Add0~18_combout\) # (!\ALUControl~combout\(1))))) # (!\ALUOut~18_combout\ & (\Add1~18_combout\ & (\ALUControl~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \ALUOut~18_combout\,
	datac => \ALUControl~combout\(1),
	datad => \Add0~18_combout\,
	combout => \ALUOut~19_combout\);

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(10),
	combout => \SrcB~combout\(10));

-- Location: LCCOMB_X45_Y30_N0
\ALUOut~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~20_combout\ = (\SrcA~combout\(10) & ((\ALUControl~combout\(0)) # ((\SrcB~combout\(10) & !\ALUControl~combout\(1))))) # (!\SrcA~combout\(10) & (\ALUControl~combout\(0) & ((\SrcB~combout\(10)) # (\ALUControl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(10),
	datab => \SrcB~combout\(10),
	datac => \ALUControl~combout\(1),
	datad => \ALUControl~combout\(0),
	combout => \ALUOut~20_combout\);

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(10),
	combout => \SrcA~combout\(10));

-- Location: LCCOMB_X44_Y30_N20
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\SrcB~combout\(10) $ (\SrcA~combout\(10) $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\SrcB~combout\(10) & ((\SrcA~combout\(10)) # (!\Add1~19\))) # (!\SrcB~combout\(10) & (\SrcA~combout\(10) & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(10),
	datab => \SrcA~combout\(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X46_Y30_N20
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\SrcA~combout\(10) $ (\SrcB~combout\(10) $ (\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\SrcA~combout\(10) & ((!\Add0~19\) # (!\SrcB~combout\(10)))) # (!\SrcA~combout\(10) & (!\SrcB~combout\(10) & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(10),
	datab => \SrcB~combout\(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X45_Y30_N2
\ALUOut~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~21_combout\ = (\ALUControl~combout\(1) & ((\ALUOut~20_combout\ & ((\Add0~20_combout\))) # (!\ALUOut~20_combout\ & (\Add1~20_combout\)))) # (!\ALUControl~combout\(1) & (\ALUOut~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \ALUOut~20_combout\,
	datac => \Add1~20_combout\,
	datad => \Add0~20_combout\,
	combout => \ALUOut~21_combout\);

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(11),
	combout => \SrcA~combout\(11));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(11),
	combout => \SrcB~combout\(11));

-- Location: LCCOMB_X45_Y30_N12
\ALUOut~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~22_combout\ = (\ALUControl~combout\(1) & (\ALUControl~combout\(0))) # (!\ALUControl~combout\(1) & ((\ALUControl~combout\(0) & ((\SrcA~combout\(11)) # (\SrcB~combout\(11)))) # (!\ALUControl~combout\(0) & (\SrcA~combout\(11) & \SrcB~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \ALUControl~combout\(0),
	datac => \SrcA~combout\(11),
	datad => \SrcB~combout\(11),
	combout => \ALUOut~22_combout\);

-- Location: LCCOMB_X44_Y30_N22
\Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\SrcB~combout\(11) & ((\SrcA~combout\(11) & (\Add1~21\ & VCC)) # (!\SrcA~combout\(11) & (!\Add1~21\)))) # (!\SrcB~combout\(11) & ((\SrcA~combout\(11) & (!\Add1~21\)) # (!\SrcA~combout\(11) & ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((\SrcB~combout\(11) & (!\SrcA~combout\(11) & !\Add1~21\)) # (!\SrcB~combout\(11) & ((!\Add1~21\) # (!\SrcA~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(11),
	datab => \SrcA~combout\(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X46_Y30_N22
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\SrcB~combout\(11) & ((\SrcA~combout\(11) & (!\Add0~21\)) # (!\SrcA~combout\(11) & ((\Add0~21\) # (GND))))) # (!\SrcB~combout\(11) & ((\SrcA~combout\(11) & (\Add0~21\ & VCC)) # (!\SrcA~combout\(11) & (!\Add0~21\))))
-- \Add0~23\ = CARRY((\SrcB~combout\(11) & ((!\Add0~21\) # (!\SrcA~combout\(11)))) # (!\SrcB~combout\(11) & (!\SrcA~combout\(11) & !\Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(11),
	datab => \SrcA~combout\(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X45_Y30_N14
\ALUOut~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~23_combout\ = (\ALUOut~22_combout\ & (((\Add0~22_combout\) # (!\ALUControl~combout\(1))))) # (!\ALUOut~22_combout\ & (\Add1~22_combout\ & ((\ALUControl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOut~22_combout\,
	datab => \Add1~22_combout\,
	datac => \Add0~22_combout\,
	datad => \ALUControl~combout\(1),
	combout => \ALUOut~23_combout\);

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[12]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(12),
	combout => \SrcA~combout\(12));

-- Location: LCCOMB_X45_Y30_N16
\ALUOut~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~24_combout\ = (\SrcB~combout\(12) & ((\ALUControl~combout\(0)) # ((!\ALUControl~combout\(1) & \SrcA~combout\(12))))) # (!\SrcB~combout\(12) & (\ALUControl~combout\(0) & ((\ALUControl~combout\(1)) # (\SrcA~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(12),
	datab => \ALUControl~combout\(0),
	datac => \ALUControl~combout\(1),
	datad => \SrcA~combout\(12),
	combout => \ALUOut~24_combout\);

-- Location: LCCOMB_X44_Y30_N24
\Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\SrcB~combout\(12) $ (\SrcA~combout\(12) $ (!\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\SrcB~combout\(12) & ((\SrcA~combout\(12)) # (!\Add1~23\))) # (!\SrcB~combout\(12) & (\SrcA~combout\(12) & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(12),
	datab => \SrcA~combout\(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X46_Y30_N24
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\SrcB~combout\(12) $ (\SrcA~combout\(12) $ (\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\SrcB~combout\(12) & (\SrcA~combout\(12) & !\Add0~23\)) # (!\SrcB~combout\(12) & ((\SrcA~combout\(12)) # (!\Add0~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(12),
	datab => \SrcA~combout\(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X45_Y30_N18
\ALUOut~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~25_combout\ = (\ALUOut~24_combout\ & (((\Add0~24_combout\) # (!\ALUControl~combout\(1))))) # (!\ALUOut~24_combout\ & (\Add1~24_combout\ & ((\ALUControl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOut~24_combout\,
	datab => \Add1~24_combout\,
	datac => \Add0~24_combout\,
	datad => \ALUControl~combout\(1),
	combout => \ALUOut~25_combout\);

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[13]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(13),
	combout => \SrcB~combout\(13));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[13]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(13),
	combout => \SrcA~combout\(13));

-- Location: LCCOMB_X45_Y32_N8
\ALUOut~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~26_combout\ = (\ALUControl~combout\(0) & ((\ALUControl~combout\(1)) # ((\SrcB~combout\(13)) # (\SrcA~combout\(13))))) # (!\ALUControl~combout\(0) & (!\ALUControl~combout\(1) & (\SrcB~combout\(13) & \SrcA~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(0),
	datab => \ALUControl~combout\(1),
	datac => \SrcB~combout\(13),
	datad => \SrcA~combout\(13),
	combout => \ALUOut~26_combout\);

-- Location: LCCOMB_X46_Y30_N26
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\SrcA~combout\(13) & ((\SrcB~combout\(13) & (!\Add0~25\)) # (!\SrcB~combout\(13) & (\Add0~25\ & VCC)))) # (!\SrcA~combout\(13) & ((\SrcB~combout\(13) & ((\Add0~25\) # (GND))) # (!\SrcB~combout\(13) & (!\Add0~25\))))
-- \Add0~27\ = CARRY((\SrcA~combout\(13) & (\SrcB~combout\(13) & !\Add0~25\)) # (!\SrcA~combout\(13) & ((\SrcB~combout\(13)) # (!\Add0~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(13),
	datab => \SrcB~combout\(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X44_Y30_N26
\Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\SrcA~combout\(13) & ((\SrcB~combout\(13) & (\Add1~25\ & VCC)) # (!\SrcB~combout\(13) & (!\Add1~25\)))) # (!\SrcA~combout\(13) & ((\SrcB~combout\(13) & (!\Add1~25\)) # (!\SrcB~combout\(13) & ((\Add1~25\) # (GND)))))
-- \Add1~27\ = CARRY((\SrcA~combout\(13) & (!\SrcB~combout\(13) & !\Add1~25\)) # (!\SrcA~combout\(13) & ((!\Add1~25\) # (!\SrcB~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(13),
	datab => \SrcB~combout\(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X45_Y32_N18
\ALUOut~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~27_combout\ = (\ALUControl~combout\(1) & ((\ALUOut~26_combout\ & (\Add0~26_combout\)) # (!\ALUOut~26_combout\ & ((\Add1~26_combout\))))) # (!\ALUControl~combout\(1) & (\ALUOut~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \ALUOut~26_combout\,
	datac => \Add0~26_combout\,
	datad => \Add1~26_combout\,
	combout => \ALUOut~27_combout\);

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[14]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(14),
	combout => \SrcB~combout\(14));

-- Location: LCCOMB_X44_Y30_N28
\Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\SrcA~combout\(14) $ (\SrcB~combout\(14) $ (!\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\SrcA~combout\(14) & ((\SrcB~combout\(14)) # (!\Add1~27\))) # (!\SrcA~combout\(14) & (\SrcB~combout\(14) & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(14),
	datab => \SrcB~combout\(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[14]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(14),
	combout => \SrcA~combout\(14));

-- Location: LCCOMB_X45_Y32_N28
\ALUOut~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~28_combout\ = (\ALUControl~combout\(0) & ((\SrcA~combout\(14)) # ((\ALUControl~combout\(1)) # (\SrcB~combout\(14))))) # (!\ALUControl~combout\(0) & (\SrcA~combout\(14) & (!\ALUControl~combout\(1) & \SrcB~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(0),
	datab => \SrcA~combout\(14),
	datac => \ALUControl~combout\(1),
	datad => \SrcB~combout\(14),
	combout => \ALUOut~28_combout\);

-- Location: LCCOMB_X46_Y30_N28
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((\SrcA~combout\(14) $ (\SrcB~combout\(14) $ (\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((\SrcA~combout\(14) & ((!\Add0~27\) # (!\SrcB~combout\(14)))) # (!\SrcA~combout\(14) & (!\SrcB~combout\(14) & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(14),
	datab => \SrcB~combout\(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X45_Y32_N6
\ALUOut~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~29_combout\ = (\ALUOut~28_combout\ & (((\Add0~28_combout\) # (!\ALUControl~combout\(1))))) # (!\ALUOut~28_combout\ & (\Add1~28_combout\ & (\ALUControl~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datab => \ALUOut~28_combout\,
	datac => \ALUControl~combout\(1),
	datad => \Add0~28_combout\,
	combout => \ALUOut~29_combout\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[15]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(15),
	combout => \SrcB~combout\(15));

-- Location: LCCOMB_X44_Y30_N30
\Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\SrcA~combout\(15) & ((\SrcB~combout\(15) & (\Add1~29\ & VCC)) # (!\SrcB~combout\(15) & (!\Add1~29\)))) # (!\SrcA~combout\(15) & ((\SrcB~combout\(15) & (!\Add1~29\)) # (!\SrcB~combout\(15) & ((\Add1~29\) # (GND)))))
-- \Add1~31\ = CARRY((\SrcA~combout\(15) & (!\SrcB~combout\(15) & !\Add1~29\)) # (!\SrcA~combout\(15) & ((!\Add1~29\) # (!\SrcB~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(15),
	datab => \SrcB~combout\(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X46_Y30_N30
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\SrcA~combout\(15) & ((\SrcB~combout\(15) & (!\Add0~29\)) # (!\SrcB~combout\(15) & (\Add0~29\ & VCC)))) # (!\SrcA~combout\(15) & ((\SrcB~combout\(15) & ((\Add0~29\) # (GND))) # (!\SrcB~combout\(15) & (!\Add0~29\))))
-- \Add0~31\ = CARRY((\SrcA~combout\(15) & (\SrcB~combout\(15) & !\Add0~29\)) # (!\SrcA~combout\(15) & ((\SrcB~combout\(15)) # (!\Add0~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(15),
	datab => \SrcB~combout\(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[15]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(15),
	combout => \SrcA~combout\(15));

-- Location: LCCOMB_X45_Y32_N0
\ALUOut~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~30_combout\ = (\ALUControl~combout\(0) & ((\SrcA~combout\(15)) # ((\ALUControl~combout\(1)) # (\SrcB~combout\(15))))) # (!\ALUControl~combout\(0) & (\SrcA~combout\(15) & (!\ALUControl~combout\(1) & \SrcB~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(0),
	datab => \SrcA~combout\(15),
	datac => \ALUControl~combout\(1),
	datad => \SrcB~combout\(15),
	combout => \ALUOut~30_combout\);

-- Location: LCCOMB_X45_Y32_N10
\ALUOut~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~31_combout\ = (\ALUControl~combout\(1) & ((\ALUOut~30_combout\ & ((\Add0~30_combout\))) # (!\ALUOut~30_combout\ & (\Add1~30_combout\)))) # (!\ALUControl~combout\(1) & (((\ALUOut~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \ALUControl~combout\(1),
	datac => \Add0~30_combout\,
	datad => \ALUOut~30_combout\,
	combout => \ALUOut~31_combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[16]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(16),
	combout => \SrcA~combout\(16));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[16]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(16),
	combout => \SrcB~combout\(16));

-- Location: LCCOMB_X45_Y32_N20
\ALUOut~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~32_combout\ = (\ALUControl~combout\(0) & ((\SrcA~combout\(16)) # ((\ALUControl~combout\(1)) # (\SrcB~combout\(16))))) # (!\ALUControl~combout\(0) & (\SrcA~combout\(16) & (!\ALUControl~combout\(1) & \SrcB~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(0),
	datab => \SrcA~combout\(16),
	datac => \ALUControl~combout\(1),
	datad => \SrcB~combout\(16),
	combout => \ALUOut~32_combout\);

-- Location: LCCOMB_X44_Y29_N0
\Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((\SrcB~combout\(16) $ (\SrcA~combout\(16) $ (!\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((\SrcB~combout\(16) & ((\SrcA~combout\(16)) # (!\Add1~31\))) # (!\SrcB~combout\(16) & (\SrcA~combout\(16) & !\Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(16),
	datab => \SrcA~combout\(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X46_Y29_N0
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((\SrcA~combout\(16) $ (\SrcB~combout\(16) $ (\Add0~31\)))) # (GND)
-- \Add0~33\ = CARRY((\SrcA~combout\(16) & ((!\Add0~31\) # (!\SrcB~combout\(16)))) # (!\SrcA~combout\(16) & (!\SrcB~combout\(16) & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(16),
	datab => \SrcB~combout\(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X45_Y32_N30
\ALUOut~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~33_combout\ = (\ALUOut~32_combout\ & (((\Add0~32_combout\)) # (!\ALUControl~combout\(1)))) # (!\ALUOut~32_combout\ & (\ALUControl~combout\(1) & (\Add1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOut~32_combout\,
	datab => \ALUControl~combout\(1),
	datac => \Add1~32_combout\,
	datad => \Add0~32_combout\,
	combout => \ALUOut~33_combout\);

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[17]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(17),
	combout => \SrcA~combout\(17));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[17]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(17),
	combout => \SrcB~combout\(17));

-- Location: LCCOMB_X45_Y32_N16
\ALUOut~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~34_combout\ = (\ALUControl~combout\(0) & ((\ALUControl~combout\(1)) # ((\SrcA~combout\(17)) # (\SrcB~combout\(17))))) # (!\ALUControl~combout\(0) & (!\ALUControl~combout\(1) & (\SrcA~combout\(17) & \SrcB~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(0),
	datab => \ALUControl~combout\(1),
	datac => \SrcA~combout\(17),
	datad => \SrcB~combout\(17),
	combout => \ALUOut~34_combout\);

-- Location: LCCOMB_X44_Y29_N2
\Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\SrcA~combout\(17) & ((\SrcB~combout\(17) & (\Add1~33\ & VCC)) # (!\SrcB~combout\(17) & (!\Add1~33\)))) # (!\SrcA~combout\(17) & ((\SrcB~combout\(17) & (!\Add1~33\)) # (!\SrcB~combout\(17) & ((\Add1~33\) # (GND)))))
-- \Add1~35\ = CARRY((\SrcA~combout\(17) & (!\SrcB~combout\(17) & !\Add1~33\)) # (!\SrcA~combout\(17) & ((!\Add1~33\) # (!\SrcB~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(17),
	datab => \SrcB~combout\(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X46_Y29_N2
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\SrcB~combout\(17) & ((\SrcA~combout\(17) & (!\Add0~33\)) # (!\SrcA~combout\(17) & ((\Add0~33\) # (GND))))) # (!\SrcB~combout\(17) & ((\SrcA~combout\(17) & (\Add0~33\ & VCC)) # (!\SrcA~combout\(17) & (!\Add0~33\))))
-- \Add0~35\ = CARRY((\SrcB~combout\(17) & ((!\Add0~33\) # (!\SrcA~combout\(17)))) # (!\SrcB~combout\(17) & (!\SrcA~combout\(17) & !\Add0~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(17),
	datab => \SrcA~combout\(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X45_Y32_N2
\ALUOut~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~35_combout\ = (\ALUOut~34_combout\ & (((\Add0~34_combout\) # (!\ALUControl~combout\(1))))) # (!\ALUOut~34_combout\ & (\Add1~34_combout\ & (\ALUControl~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOut~34_combout\,
	datab => \Add1~34_combout\,
	datac => \ALUControl~combout\(1),
	datad => \Add0~34_combout\,
	combout => \ALUOut~35_combout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[18]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(18),
	combout => \SrcB~combout\(18));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[18]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(18),
	combout => \SrcA~combout\(18));

-- Location: LCCOMB_X45_Y32_N12
\ALUOut~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~36_combout\ = (\ALUControl~combout\(0) & ((\ALUControl~combout\(1)) # ((\SrcB~combout\(18)) # (\SrcA~combout\(18))))) # (!\ALUControl~combout\(0) & (!\ALUControl~combout\(1) & (\SrcB~combout\(18) & \SrcA~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(0),
	datab => \ALUControl~combout\(1),
	datac => \SrcB~combout\(18),
	datad => \SrcA~combout\(18),
	combout => \ALUOut~36_combout\);

-- Location: LCCOMB_X44_Y29_N4
\Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((\SrcA~combout\(18) $ (\SrcB~combout\(18) $ (!\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((\SrcA~combout\(18) & ((\SrcB~combout\(18)) # (!\Add1~35\))) # (!\SrcA~combout\(18) & (\SrcB~combout\(18) & !\Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(18),
	datab => \SrcB~combout\(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X46_Y29_N4
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\SrcA~combout\(18) $ (\SrcB~combout\(18) $ (\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((\SrcA~combout\(18) & ((!\Add0~35\) # (!\SrcB~combout\(18)))) # (!\SrcA~combout\(18) & (!\SrcB~combout\(18) & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(18),
	datab => \SrcB~combout\(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X45_Y32_N22
\ALUOut~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~37_combout\ = (\ALUOut~36_combout\ & (((\Add0~36_combout\) # (!\ALUControl~combout\(1))))) # (!\ALUOut~36_combout\ & (\Add1~36_combout\ & ((\ALUControl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOut~36_combout\,
	datab => \Add1~36_combout\,
	datac => \Add0~36_combout\,
	datad => \ALUControl~combout\(1),
	combout => \ALUOut~37_combout\);

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[19]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(19),
	combout => \SrcB~combout\(19));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[19]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(19),
	combout => \SrcA~combout\(19));

-- Location: LCCOMB_X45_Y32_N24
\ALUOut~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~38_combout\ = (\ALUControl~combout\(0) & ((\SrcB~combout\(19)) # ((\ALUControl~combout\(1)) # (\SrcA~combout\(19))))) # (!\ALUControl~combout\(0) & (\SrcB~combout\(19) & (!\ALUControl~combout\(1) & \SrcA~combout\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(0),
	datab => \SrcB~combout\(19),
	datac => \ALUControl~combout\(1),
	datad => \SrcA~combout\(19),
	combout => \ALUOut~38_combout\);

-- Location: LCCOMB_X44_Y29_N6
\Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\SrcB~combout\(19) & ((\SrcA~combout\(19) & (\Add1~37\ & VCC)) # (!\SrcA~combout\(19) & (!\Add1~37\)))) # (!\SrcB~combout\(19) & ((\SrcA~combout\(19) & (!\Add1~37\)) # (!\SrcA~combout\(19) & ((\Add1~37\) # (GND)))))
-- \Add1~39\ = CARRY((\SrcB~combout\(19) & (!\SrcA~combout\(19) & !\Add1~37\)) # (!\SrcB~combout\(19) & ((!\Add1~37\) # (!\SrcA~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(19),
	datab => \SrcA~combout\(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X46_Y29_N6
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\SrcA~combout\(19) & ((\SrcB~combout\(19) & (!\Add0~37\)) # (!\SrcB~combout\(19) & (\Add0~37\ & VCC)))) # (!\SrcA~combout\(19) & ((\SrcB~combout\(19) & ((\Add0~37\) # (GND))) # (!\SrcB~combout\(19) & (!\Add0~37\))))
-- \Add0~39\ = CARRY((\SrcA~combout\(19) & (\SrcB~combout\(19) & !\Add0~37\)) # (!\SrcA~combout\(19) & ((\SrcB~combout\(19)) # (!\Add0~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(19),
	datab => \SrcB~combout\(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X45_Y32_N26
\ALUOut~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~39_combout\ = (\ALUOut~38_combout\ & (((\Add0~38_combout\)) # (!\ALUControl~combout\(1)))) # (!\ALUOut~38_combout\ & (\ALUControl~combout\(1) & (\Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOut~38_combout\,
	datab => \ALUControl~combout\(1),
	datac => \Add1~38_combout\,
	datad => \Add0~38_combout\,
	combout => \ALUOut~39_combout\);

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[20]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(20),
	combout => \SrcA~combout\(20));

-- Location: LCCOMB_X44_Y29_N8
\Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = ((\SrcB~combout\(20) $ (\SrcA~combout\(20) $ (!\Add1~39\)))) # (GND)
-- \Add1~41\ = CARRY((\SrcB~combout\(20) & ((\SrcA~combout\(20)) # (!\Add1~39\))) # (!\SrcB~combout\(20) & (\SrcA~combout\(20) & !\Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(20),
	datab => \SrcA~combout\(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[20]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(20),
	combout => \SrcB~combout\(20));

-- Location: LCCOMB_X45_Y29_N0
\ALUOut~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~40_combout\ = (\ALUControl~combout\(1) & (((\ALUControl~combout\(0))))) # (!\ALUControl~combout\(1) & ((\SrcA~combout\(20) & ((\ALUControl~combout\(0)) # (\SrcB~combout\(20)))) # (!\SrcA~combout\(20) & (\ALUControl~combout\(0) & 
-- \SrcB~combout\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \SrcA~combout\(20),
	datac => \ALUControl~combout\(0),
	datad => \SrcB~combout\(20),
	combout => \ALUOut~40_combout\);

-- Location: LCCOMB_X46_Y29_N8
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((\SrcB~combout\(20) $ (\SrcA~combout\(20) $ (\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((\SrcB~combout\(20) & (\SrcA~combout\(20) & !\Add0~39\)) # (!\SrcB~combout\(20) & ((\SrcA~combout\(20)) # (!\Add0~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(20),
	datab => \SrcA~combout\(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X45_Y29_N18
\ALUOut~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~41_combout\ = (\ALUOut~40_combout\ & (((\Add0~40_combout\) # (!\ALUControl~combout\(1))))) # (!\ALUOut~40_combout\ & (\Add1~40_combout\ & ((\ALUControl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \ALUOut~40_combout\,
	datac => \Add0~40_combout\,
	datad => \ALUControl~combout\(1),
	combout => \ALUOut~41_combout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[21]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(21),
	combout => \SrcA~combout\(21));

-- Location: LCCOMB_X44_Y29_N10
\Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\SrcB~combout\(21) & ((\SrcA~combout\(21) & (\Add1~41\ & VCC)) # (!\SrcA~combout\(21) & (!\Add1~41\)))) # (!\SrcB~combout\(21) & ((\SrcA~combout\(21) & (!\Add1~41\)) # (!\SrcA~combout\(21) & ((\Add1~41\) # (GND)))))
-- \Add1~43\ = CARRY((\SrcB~combout\(21) & (!\SrcA~combout\(21) & !\Add1~41\)) # (!\SrcB~combout\(21) & ((!\Add1~41\) # (!\SrcA~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(21),
	datab => \SrcA~combout\(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[21]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(21),
	combout => \SrcB~combout\(21));

-- Location: LCCOMB_X45_Y29_N28
\ALUOut~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~42_combout\ = (\ALUControl~combout\(1) & (\ALUControl~combout\(0))) # (!\ALUControl~combout\(1) & ((\ALUControl~combout\(0) & ((\SrcA~combout\(21)) # (\SrcB~combout\(21)))) # (!\ALUControl~combout\(0) & (\SrcA~combout\(21) & \SrcB~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \ALUControl~combout\(0),
	datac => \SrcA~combout\(21),
	datad => \SrcB~combout\(21),
	combout => \ALUOut~42_combout\);

-- Location: LCCOMB_X46_Y29_N10
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\SrcA~combout\(21) & ((\SrcB~combout\(21) & (!\Add0~41\)) # (!\SrcB~combout\(21) & (\Add0~41\ & VCC)))) # (!\SrcA~combout\(21) & ((\SrcB~combout\(21) & ((\Add0~41\) # (GND))) # (!\SrcB~combout\(21) & (!\Add0~41\))))
-- \Add0~43\ = CARRY((\SrcA~combout\(21) & (\SrcB~combout\(21) & !\Add0~41\)) # (!\SrcA~combout\(21) & ((\SrcB~combout\(21)) # (!\Add0~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(21),
	datab => \SrcB~combout\(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X45_Y29_N22
\ALUOut~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~43_combout\ = (\ALUOut~42_combout\ & (((\Add0~42_combout\) # (!\ALUControl~combout\(1))))) # (!\ALUOut~42_combout\ & (\Add1~42_combout\ & (\ALUControl~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~42_combout\,
	datab => \ALUOut~42_combout\,
	datac => \ALUControl~combout\(1),
	datad => \Add0~42_combout\,
	combout => \ALUOut~43_combout\);

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[22]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(22),
	combout => \SrcB~combout\(22));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[22]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(22),
	combout => \SrcA~combout\(22));

-- Location: LCCOMB_X45_Y29_N16
\ALUOut~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~44_combout\ = (\ALUControl~combout\(1) & (((\ALUControl~combout\(0))))) # (!\ALUControl~combout\(1) & ((\SrcB~combout\(22) & ((\ALUControl~combout\(0)) # (\SrcA~combout\(22)))) # (!\SrcB~combout\(22) & (\ALUControl~combout\(0) & 
-- \SrcA~combout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \SrcB~combout\(22),
	datac => \ALUControl~combout\(0),
	datad => \SrcA~combout\(22),
	combout => \ALUOut~44_combout\);

-- Location: LCCOMB_X44_Y29_N12
\Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = ((\SrcA~combout\(22) $ (\SrcB~combout\(22) $ (!\Add1~43\)))) # (GND)
-- \Add1~45\ = CARRY((\SrcA~combout\(22) & ((\SrcB~combout\(22)) # (!\Add1~43\))) # (!\SrcA~combout\(22) & (\SrcB~combout\(22) & !\Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(22),
	datab => \SrcB~combout\(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X46_Y29_N12
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((\SrcA~combout\(22) $ (\SrcB~combout\(22) $ (\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((\SrcA~combout\(22) & ((!\Add0~43\) # (!\SrcB~combout\(22)))) # (!\SrcA~combout\(22) & (!\SrcB~combout\(22) & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(22),
	datab => \SrcB~combout\(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X45_Y29_N2
\ALUOut~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~45_combout\ = (\ALUOut~44_combout\ & (((\Add0~44_combout\) # (!\ALUControl~combout\(1))))) # (!\ALUOut~44_combout\ & (\Add1~44_combout\ & ((\ALUControl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOut~44_combout\,
	datab => \Add1~44_combout\,
	datac => \Add0~44_combout\,
	datad => \ALUControl~combout\(1),
	combout => \ALUOut~45_combout\);

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[23]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(23),
	combout => \SrcA~combout\(23));

-- Location: LCCOMB_X44_Y29_N14
\Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\SrcB~combout\(23) & ((\SrcA~combout\(23) & (\Add1~45\ & VCC)) # (!\SrcA~combout\(23) & (!\Add1~45\)))) # (!\SrcB~combout\(23) & ((\SrcA~combout\(23) & (!\Add1~45\)) # (!\SrcA~combout\(23) & ((\Add1~45\) # (GND)))))
-- \Add1~47\ = CARRY((\SrcB~combout\(23) & (!\SrcA~combout\(23) & !\Add1~45\)) # (!\SrcB~combout\(23) & ((!\Add1~45\) # (!\SrcA~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(23),
	datab => \SrcA~combout\(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[23]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(23),
	combout => \SrcB~combout\(23));

-- Location: LCCOMB_X46_Y29_N14
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\SrcA~combout\(23) & ((\SrcB~combout\(23) & (!\Add0~45\)) # (!\SrcB~combout\(23) & (\Add0~45\ & VCC)))) # (!\SrcA~combout\(23) & ((\SrcB~combout\(23) & ((\Add0~45\) # (GND))) # (!\SrcB~combout\(23) & (!\Add0~45\))))
-- \Add0~47\ = CARRY((\SrcA~combout\(23) & (\SrcB~combout\(23) & !\Add0~45\)) # (!\SrcA~combout\(23) & ((\SrcB~combout\(23)) # (!\Add0~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(23),
	datab => \SrcB~combout\(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X45_Y29_N12
\ALUOut~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~46_combout\ = (\ALUControl~combout\(1) & (((\ALUControl~combout\(0))))) # (!\ALUControl~combout\(1) & ((\SrcA~combout\(23) & ((\ALUControl~combout\(0)) # (\SrcB~combout\(23)))) # (!\SrcA~combout\(23) & (\ALUControl~combout\(0) & 
-- \SrcB~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \SrcA~combout\(23),
	datac => \ALUControl~combout\(0),
	datad => \SrcB~combout\(23),
	combout => \ALUOut~46_combout\);

-- Location: LCCOMB_X45_Y29_N6
\ALUOut~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~47_combout\ = (\ALUControl~combout\(1) & ((\ALUOut~46_combout\ & ((\Add0~46_combout\))) # (!\ALUOut~46_combout\ & (\Add1~46_combout\)))) # (!\ALUControl~combout\(1) & (((\ALUOut~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \Add1~46_combout\,
	datac => \Add0~46_combout\,
	datad => \ALUOut~46_combout\,
	combout => \ALUOut~47_combout\);

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[24]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(24),
	combout => \SrcB~combout\(24));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[24]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(24),
	combout => \SrcA~combout\(24));

-- Location: LCCOMB_X45_Y29_N8
\ALUOut~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~48_combout\ = (\ALUControl~combout\(1) & (((\ALUControl~combout\(0))))) # (!\ALUControl~combout\(1) & ((\SrcB~combout\(24) & ((\ALUControl~combout\(0)) # (\SrcA~combout\(24)))) # (!\SrcB~combout\(24) & (\ALUControl~combout\(0) & 
-- \SrcA~combout\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \SrcB~combout\(24),
	datac => \ALUControl~combout\(0),
	datad => \SrcA~combout\(24),
	combout => \ALUOut~48_combout\);

-- Location: LCCOMB_X46_Y29_N16
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\SrcB~combout\(24) $ (\SrcA~combout\(24) $ (\Add0~47\)))) # (GND)
-- \Add0~49\ = CARRY((\SrcB~combout\(24) & (\SrcA~combout\(24) & !\Add0~47\)) # (!\SrcB~combout\(24) & ((\SrcA~combout\(24)) # (!\Add0~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(24),
	datab => \SrcA~combout\(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X44_Y29_N16
\Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((\SrcA~combout\(24) $ (\SrcB~combout\(24) $ (!\Add1~47\)))) # (GND)
-- \Add1~49\ = CARRY((\SrcA~combout\(24) & ((\SrcB~combout\(24)) # (!\Add1~47\))) # (!\SrcA~combout\(24) & (\SrcB~combout\(24) & !\Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(24),
	datab => \SrcB~combout\(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X45_Y29_N10
\ALUOut~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~49_combout\ = (\ALUControl~combout\(1) & ((\ALUOut~48_combout\ & (\Add0~48_combout\)) # (!\ALUOut~48_combout\ & ((\Add1~48_combout\))))) # (!\ALUControl~combout\(1) & (\ALUOut~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \ALUOut~48_combout\,
	datac => \Add0~48_combout\,
	datad => \Add1~48_combout\,
	combout => \ALUOut~49_combout\);

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[25]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(25),
	combout => \SrcB~combout\(25));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[25]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(25),
	combout => \SrcA~combout\(25));

-- Location: LCCOMB_X45_Y29_N20
\ALUOut~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~50_combout\ = (\ALUControl~combout\(1) & (\ALUControl~combout\(0))) # (!\ALUControl~combout\(1) & ((\ALUControl~combout\(0) & ((\SrcB~combout\(25)) # (\SrcA~combout\(25)))) # (!\ALUControl~combout\(0) & (\SrcB~combout\(25) & \SrcA~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \ALUControl~combout\(0),
	datac => \SrcB~combout\(25),
	datad => \SrcA~combout\(25),
	combout => \ALUOut~50_combout\);

-- Location: LCCOMB_X44_Y29_N18
\Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\SrcB~combout\(25) & ((\SrcA~combout\(25) & (\Add1~49\ & VCC)) # (!\SrcA~combout\(25) & (!\Add1~49\)))) # (!\SrcB~combout\(25) & ((\SrcA~combout\(25) & (!\Add1~49\)) # (!\SrcA~combout\(25) & ((\Add1~49\) # (GND)))))
-- \Add1~51\ = CARRY((\SrcB~combout\(25) & (!\SrcA~combout\(25) & !\Add1~49\)) # (!\SrcB~combout\(25) & ((!\Add1~49\) # (!\SrcA~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(25),
	datab => \SrcA~combout\(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X46_Y29_N18
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\SrcB~combout\(25) & ((\SrcA~combout\(25) & (!\Add0~49\)) # (!\SrcA~combout\(25) & ((\Add0~49\) # (GND))))) # (!\SrcB~combout\(25) & ((\SrcA~combout\(25) & (\Add0~49\ & VCC)) # (!\SrcA~combout\(25) & (!\Add0~49\))))
-- \Add0~51\ = CARRY((\SrcB~combout\(25) & ((!\Add0~49\) # (!\SrcA~combout\(25)))) # (!\SrcB~combout\(25) & (!\SrcA~combout\(25) & !\Add0~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(25),
	datab => \SrcA~combout\(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X45_Y29_N14
\ALUOut~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~51_combout\ = (\ALUOut~50_combout\ & (((\Add0~50_combout\) # (!\ALUControl~combout\(1))))) # (!\ALUOut~50_combout\ & (\Add1~50_combout\ & ((\ALUControl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOut~50_combout\,
	datab => \Add1~50_combout\,
	datac => \Add0~50_combout\,
	datad => \ALUControl~combout\(1),
	combout => \ALUOut~51_combout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[26]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(26),
	combout => \SrcA~combout\(26));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[26]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(26),
	combout => \SrcB~combout\(26));

-- Location: LCCOMB_X43_Y29_N0
\ALUOut~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~52_combout\ = (\ALUControl~combout\(0) & ((\SrcA~combout\(26)) # ((\SrcB~combout\(26)) # (\ALUControl~combout\(1))))) # (!\ALUControl~combout\(0) & (\SrcA~combout\(26) & (\SrcB~combout\(26) & !\ALUControl~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(0),
	datab => \SrcA~combout\(26),
	datac => \SrcB~combout\(26),
	datad => \ALUControl~combout\(1),
	combout => \ALUOut~52_combout\);

-- Location: LCCOMB_X44_Y29_N20
\Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = ((\SrcB~combout\(26) $ (\SrcA~combout\(26) $ (!\Add1~51\)))) # (GND)
-- \Add1~53\ = CARRY((\SrcB~combout\(26) & ((\SrcA~combout\(26)) # (!\Add1~51\))) # (!\SrcB~combout\(26) & (\SrcA~combout\(26) & !\Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(26),
	datab => \SrcA~combout\(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X46_Y29_N20
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = ((\SrcA~combout\(26) $ (\SrcB~combout\(26) $ (\Add0~51\)))) # (GND)
-- \Add0~53\ = CARRY((\SrcA~combout\(26) & ((!\Add0~51\) # (!\SrcB~combout\(26)))) # (!\SrcA~combout\(26) & (!\SrcB~combout\(26) & !\Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(26),
	datab => \SrcB~combout\(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X43_Y29_N2
\ALUOut~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~53_combout\ = (\ALUControl~combout\(1) & ((\ALUOut~52_combout\ & ((\Add0~52_combout\))) # (!\ALUOut~52_combout\ & (\Add1~52_combout\)))) # (!\ALUControl~combout\(1) & (\ALUOut~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \ALUOut~52_combout\,
	datac => \Add1~52_combout\,
	datad => \Add0~52_combout\,
	combout => \ALUOut~53_combout\);

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[27]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(27),
	combout => \SrcA~combout\(27));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[27]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(27),
	combout => \SrcB~combout\(27));

-- Location: LCCOMB_X43_Y29_N28
\ALUOut~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~54_combout\ = (\ALUControl~combout\(1) & (((\ALUControl~combout\(0))))) # (!\ALUControl~combout\(1) & ((\SrcA~combout\(27) & ((\ALUControl~combout\(0)) # (\SrcB~combout\(27)))) # (!\SrcA~combout\(27) & (\ALUControl~combout\(0) & 
-- \SrcB~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \SrcA~combout\(27),
	datac => \ALUControl~combout\(0),
	datad => \SrcB~combout\(27),
	combout => \ALUOut~54_combout\);

-- Location: LCCOMB_X44_Y29_N22
\Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\SrcA~combout\(27) & ((\SrcB~combout\(27) & (\Add1~53\ & VCC)) # (!\SrcB~combout\(27) & (!\Add1~53\)))) # (!\SrcA~combout\(27) & ((\SrcB~combout\(27) & (!\Add1~53\)) # (!\SrcB~combout\(27) & ((\Add1~53\) # (GND)))))
-- \Add1~55\ = CARRY((\SrcA~combout\(27) & (!\SrcB~combout\(27) & !\Add1~53\)) # (!\SrcA~combout\(27) & ((!\Add1~53\) # (!\SrcB~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(27),
	datab => \SrcB~combout\(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X46_Y29_N22
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\SrcB~combout\(27) & ((\SrcA~combout\(27) & (!\Add0~53\)) # (!\SrcA~combout\(27) & ((\Add0~53\) # (GND))))) # (!\SrcB~combout\(27) & ((\SrcA~combout\(27) & (\Add0~53\ & VCC)) # (!\SrcA~combout\(27) & (!\Add0~53\))))
-- \Add0~55\ = CARRY((\SrcB~combout\(27) & ((!\Add0~53\) # (!\SrcA~combout\(27)))) # (!\SrcB~combout\(27) & (!\SrcA~combout\(27) & !\Add0~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(27),
	datab => \SrcA~combout\(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X43_Y29_N22
\ALUOut~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~55_combout\ = (\ALUControl~combout\(1) & ((\ALUOut~54_combout\ & ((\Add0~54_combout\))) # (!\ALUOut~54_combout\ & (\Add1~54_combout\)))) # (!\ALUControl~combout\(1) & (\ALUOut~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \ALUOut~54_combout\,
	datac => \Add1~54_combout\,
	datad => \Add0~54_combout\,
	combout => \ALUOut~55_combout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[28]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(28),
	combout => \SrcA~combout\(28));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[28]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(28),
	combout => \SrcB~combout\(28));

-- Location: LCCOMB_X43_Y29_N24
\ALUOut~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~56_combout\ = (\ALUControl~combout\(0) & ((\SrcA~combout\(28)) # ((\SrcB~combout\(28)) # (\ALUControl~combout\(1))))) # (!\ALUControl~combout\(0) & (\SrcA~combout\(28) & (\SrcB~combout\(28) & !\ALUControl~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(0),
	datab => \SrcA~combout\(28),
	datac => \SrcB~combout\(28),
	datad => \ALUControl~combout\(1),
	combout => \ALUOut~56_combout\);

-- Location: LCCOMB_X44_Y29_N24
\Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = ((\SrcA~combout\(28) $ (\SrcB~combout\(28) $ (!\Add1~55\)))) # (GND)
-- \Add1~57\ = CARRY((\SrcA~combout\(28) & ((\SrcB~combout\(28)) # (!\Add1~55\))) # (!\SrcA~combout\(28) & (\SrcB~combout\(28) & !\Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(28),
	datab => \SrcB~combout\(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X46_Y29_N24
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = ((\SrcA~combout\(28) $ (\SrcB~combout\(28) $ (\Add0~55\)))) # (GND)
-- \Add0~57\ = CARRY((\SrcA~combout\(28) & ((!\Add0~55\) # (!\SrcB~combout\(28)))) # (!\SrcA~combout\(28) & (!\SrcB~combout\(28) & !\Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA~combout\(28),
	datab => \SrcB~combout\(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X43_Y29_N26
\ALUOut~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~57_combout\ = (\ALUOut~56_combout\ & (((\Add0~56_combout\) # (!\ALUControl~combout\(1))))) # (!\ALUOut~56_combout\ & (\Add1~56_combout\ & ((\ALUControl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOut~56_combout\,
	datab => \Add1~56_combout\,
	datac => \Add0~56_combout\,
	datad => \ALUControl~combout\(1),
	combout => \ALUOut~57_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[29]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(29),
	combout => \SrcA~combout\(29));

-- Location: LCCOMB_X46_Y29_N26
\Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\SrcB~combout\(29) & ((\SrcA~combout\(29) & (!\Add0~57\)) # (!\SrcA~combout\(29) & ((\Add0~57\) # (GND))))) # (!\SrcB~combout\(29) & ((\SrcA~combout\(29) & (\Add0~57\ & VCC)) # (!\SrcA~combout\(29) & (!\Add0~57\))))
-- \Add0~59\ = CARRY((\SrcB~combout\(29) & ((!\Add0~57\) # (!\SrcA~combout\(29)))) # (!\SrcB~combout\(29) & (!\SrcA~combout\(29) & !\Add0~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(29),
	datab => \SrcA~combout\(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X44_Y29_N26
\Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\SrcB~combout\(29) & ((\SrcA~combout\(29) & (\Add1~57\ & VCC)) # (!\SrcA~combout\(29) & (!\Add1~57\)))) # (!\SrcB~combout\(29) & ((\SrcA~combout\(29) & (!\Add1~57\)) # (!\SrcA~combout\(29) & ((\Add1~57\) # (GND)))))
-- \Add1~59\ = CARRY((\SrcB~combout\(29) & (!\SrcA~combout\(29) & !\Add1~57\)) # (!\SrcB~combout\(29) & ((!\Add1~57\) # (!\SrcA~combout\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(29),
	datab => \SrcA~combout\(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[29]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(29),
	combout => \SrcB~combout\(29));

-- Location: LCCOMB_X43_Y29_N12
\ALUOut~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~58_combout\ = (\ALUControl~combout\(0) & ((\SrcA~combout\(29)) # ((\SrcB~combout\(29)) # (\ALUControl~combout\(1))))) # (!\ALUControl~combout\(0) & (\SrcA~combout\(29) & (\SrcB~combout\(29) & !\ALUControl~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(0),
	datab => \SrcA~combout\(29),
	datac => \SrcB~combout\(29),
	datad => \ALUControl~combout\(1),
	combout => \ALUOut~58_combout\);

-- Location: LCCOMB_X43_Y29_N6
\ALUOut~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~59_combout\ = (\ALUControl~combout\(1) & ((\ALUOut~58_combout\ & (\Add0~58_combout\)) # (!\ALUOut~58_combout\ & ((\Add1~58_combout\))))) # (!\ALUControl~combout\(1) & (((\ALUOut~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \Add0~58_combout\,
	datac => \Add1~58_combout\,
	datad => \ALUOut~58_combout\,
	combout => \ALUOut~59_combout\);

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[30]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(30),
	combout => \SrcA~combout\(30));

-- Location: LCCOMB_X44_Y29_N28
\Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = ((\SrcB~combout\(30) $ (\SrcA~combout\(30) $ (!\Add1~59\)))) # (GND)
-- \Add1~61\ = CARRY((\SrcB~combout\(30) & ((\SrcA~combout\(30)) # (!\Add1~59\))) # (!\SrcB~combout\(30) & (\SrcA~combout\(30) & !\Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(30),
	datab => \SrcA~combout\(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[30]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(30),
	combout => \SrcB~combout\(30));

-- Location: LCCOMB_X45_Y29_N24
\ALUOut~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~60_combout\ = (\ALUControl~combout\(1) & (((\ALUControl~combout\(0))))) # (!\ALUControl~combout\(1) & ((\SrcB~combout\(30) & ((\ALUControl~combout\(0)) # (\SrcA~combout\(30)))) # (!\SrcB~combout\(30) & (\ALUControl~combout\(0) & 
-- \SrcA~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \SrcB~combout\(30),
	datac => \ALUControl~combout\(0),
	datad => \SrcA~combout\(30),
	combout => \ALUOut~60_combout\);

-- Location: LCCOMB_X46_Y29_N28
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((\SrcB~combout\(30) $ (\SrcA~combout\(30) $ (\Add0~59\)))) # (GND)
-- \Add0~61\ = CARRY((\SrcB~combout\(30) & (\SrcA~combout\(30) & !\Add0~59\)) # (!\SrcB~combout\(30) & ((\SrcA~combout\(30)) # (!\Add0~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(30),
	datab => \SrcA~combout\(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X45_Y29_N26
\ALUOut~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~61_combout\ = (\ALUControl~combout\(1) & ((\ALUOut~60_combout\ & ((\Add0~60_combout\))) # (!\ALUOut~60_combout\ & (\Add1~60_combout\)))) # (!\ALUControl~combout\(1) & (((\ALUOut~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \Add1~60_combout\,
	datac => \ALUOut~60_combout\,
	datad => \Add0~60_combout\,
	combout => \ALUOut~61_combout\);

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcA[31]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcA(31),
	combout => \SrcA~combout\(31));

-- Location: LCCOMB_X46_Y29_N30
\Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \SrcB~combout\(31) $ (\SrcA~combout\(31) $ (!\Add0~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(31),
	datab => \SrcA~combout\(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SrcB[31]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SrcB(31),
	combout => \SrcB~combout\(31));

-- Location: LCCOMB_X45_Y31_N24
\ALUOut~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~62_combout\ = (\ALUControl~combout\(1) & (\ALUControl~combout\(0))) # (!\ALUControl~combout\(1) & ((\ALUControl~combout\(0) & ((\SrcB~combout\(31)) # (\SrcA~combout\(31)))) # (!\ALUControl~combout\(0) & (\SrcB~combout\(31) & \SrcA~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \ALUControl~combout\(0),
	datac => \SrcB~combout\(31),
	datad => \SrcA~combout\(31),
	combout => \ALUOut~62_combout\);

-- Location: LCCOMB_X44_Y29_N30
\Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \SrcB~combout\(31) $ (\SrcA~combout\(31) $ (\Add1~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB~combout\(31),
	datab => \SrcA~combout\(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X45_Y31_N26
\ALUOut~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUOut~63_combout\ = (\ALUControl~combout\(1) & ((\ALUOut~62_combout\ & (\Add0~62_combout\)) # (!\ALUOut~62_combout\ & ((\Add1~62_combout\))))) # (!\ALUControl~combout\(1) & (((\ALUOut~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUControl~combout\(1),
	datab => \Add0~62_combout\,
	datac => \ALUOut~62_combout\,
	datad => \Add1~62_combout\,
	combout => \ALUOut~63_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(0));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(1));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(2));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(3));

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(4));

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(5));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(6));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[7]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(7));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[8]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(8));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[9]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(9));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[10]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(10));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[11]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(11));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[12]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(12));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[13]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(13));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[14]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(14));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[15]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(15));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[16]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(16));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[17]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(17));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[18]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(18));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[19]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(19));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[20]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(20));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[21]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(21));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[22]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(22));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[23]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(23));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[24]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(24));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[25]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(25));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[26]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(26));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[27]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(27));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[28]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(28));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[29]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(29));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[30]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(30));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUOut[31]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUOut~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUOut(31));
END structure;


