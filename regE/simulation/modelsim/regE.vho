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

-- DATE "12/01/2019 11:25:43"

-- 
-- Device: Altera EP2C50F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	regE IS
    PORT (
	clock : IN std_logic;
	RD1 : IN std_logic_vector(31 DOWNTO 0);
	RD2 : IN std_logic_vector(31 DOWNTO 0);
	RD1s : OUT std_logic_vector(31 DOWNTO 0);
	RD2s : OUT std_logic_vector(31 DOWNTO 0);
	RsD : IN std_logic_vector(4 DOWNTO 0);
	RtD : IN std_logic_vector(4 DOWNTO 0);
	RdD : IN std_logic_vector(4 DOWNTO 0);
	RsE : OUT std_logic_vector(4 DOWNTO 0);
	RtE : OUT std_logic_vector(4 DOWNTO 0);
	RdE : OUT std_logic_vector(4 DOWNTO 0);
	RegDstD : IN std_logic;
	ALUSrcD : IN std_logic;
	RegWriteD : IN std_logic;
	RegDstE : OUT std_logic;
	ALUSrcE : OUT std_logic;
	RegWriteE : OUT std_logic;
	ALUControlD : IN std_logic_vector(1 DOWNTO 0);
	ALUControlE : OUT std_logic_vector(1 DOWNTO 0)
	);
END regE;

-- Design Ports Information
-- RD1s[0]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[1]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[2]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[3]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[4]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[6]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[7]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[8]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[9]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[10]	=>  Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[11]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[12]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[13]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[14]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[15]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[16]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[17]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[18]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[19]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[20]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[21]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[22]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[23]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[24]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[25]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[26]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[27]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[28]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[29]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[30]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1s[31]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[1]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[2]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[3]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[4]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[5]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[6]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[8]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[9]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[10]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[11]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[12]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[13]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[14]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[15]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[16]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[17]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[18]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[19]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[20]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[21]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[22]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[23]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[24]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[25]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[26]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[27]	=>  Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[28]	=>  Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[29]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[30]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD2s[31]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RsE[0]	=>  Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RsE[1]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RsE[2]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RsE[3]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RsE[4]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RtE[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RtE[1]	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RtE[2]	=>  Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RtE[3]	=>  Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RtE[4]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RdE[0]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RdE[1]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RdE[2]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RdE[3]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RdE[4]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegDstE	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUSrcE	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegWriteE	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUControlE[0]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUControlE[1]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD1[0]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[1]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[2]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[3]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[4]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[5]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[6]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[7]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[8]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[9]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[10]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[11]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[12]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[13]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[14]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[15]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[16]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[17]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[18]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[19]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[20]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[21]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[22]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[23]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[24]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[25]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[26]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[27]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[28]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[29]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[30]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD1[31]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[0]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[2]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[3]	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[4]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[5]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[6]	=>  Location: PIN_AC20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[7]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[8]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[9]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[10]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[11]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[12]	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[13]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[14]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[15]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[16]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[17]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[18]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[19]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[20]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[21]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[22]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[23]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[24]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[25]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[26]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[27]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[28]	=>  Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[29]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[30]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD2[31]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RsD[0]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RsD[1]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RsD[2]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RsD[3]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RsD[4]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RtD[0]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RtD[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RtD[2]	=>  Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RtD[3]	=>  Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RtD[4]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RdD[0]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RdD[1]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RdD[2]	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RdD[3]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RdD[4]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegDstD	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALUSrcD	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegWriteD	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALUControlD[0]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALUControlD[1]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF regE IS
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
SIGNAL ww_RD1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RD2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RD1s : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RD2s : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RsD : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RtD : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RdD : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RsE : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RtE : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RdE : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RegDstD : std_logic;
SIGNAL ww_ALUSrcD : std_logic;
SIGNAL ww_RegWriteD : std_logic;
SIGNAL ww_RegDstE : std_logic;
SIGNAL ww_ALUSrcE : std_logic;
SIGNAL ww_RegWriteE : std_logic;
SIGNAL ww_ALUControlD : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ALUControlE : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \RD1s[0]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[0]~reg0_regout\ : std_logic;
SIGNAL \RD1s[1]~reg0_regout\ : std_logic;
SIGNAL \RD1s[2]~reg0_regout\ : std_logic;
SIGNAL \RD1s[3]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[3]~reg0_regout\ : std_logic;
SIGNAL \RD1s[4]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[4]~reg0_regout\ : std_logic;
SIGNAL \RD1s[5]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[5]~reg0_regout\ : std_logic;
SIGNAL \RD1s[6]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[6]~reg0_regout\ : std_logic;
SIGNAL \RD1s[7]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[7]~reg0_regout\ : std_logic;
SIGNAL \RD1s[8]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[8]~reg0_regout\ : std_logic;
SIGNAL \RD1s[9]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[9]~reg0_regout\ : std_logic;
SIGNAL \RD1s[10]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[10]~reg0_regout\ : std_logic;
SIGNAL \RD1s[11]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[11]~reg0_regout\ : std_logic;
SIGNAL \RD1s[12]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[12]~reg0_regout\ : std_logic;
SIGNAL \RD1s[13]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[13]~reg0_regout\ : std_logic;
SIGNAL \RD1s[14]~reg0_regout\ : std_logic;
SIGNAL \RD1s[15]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[15]~reg0_regout\ : std_logic;
SIGNAL \RD1s[16]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[16]~reg0_regout\ : std_logic;
SIGNAL \RD1s[17]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[17]~reg0_regout\ : std_logic;
SIGNAL \RD1s[18]~reg0_regout\ : std_logic;
SIGNAL \RD1s[19]~reg0_regout\ : std_logic;
SIGNAL \RD1s[20]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[20]~reg0_regout\ : std_logic;
SIGNAL \RD1s[21]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[21]~reg0_regout\ : std_logic;
SIGNAL \RD1s[22]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[22]~reg0_regout\ : std_logic;
SIGNAL \RD1s[23]~reg0_regout\ : std_logic;
SIGNAL \RD1s[24]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[24]~reg0_regout\ : std_logic;
SIGNAL \RD1s[25]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[25]~reg0_regout\ : std_logic;
SIGNAL \RD1s[26]~reg0_regout\ : std_logic;
SIGNAL \RD1s[27]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[27]~reg0_regout\ : std_logic;
SIGNAL \RD1s[28]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[28]~reg0_regout\ : std_logic;
SIGNAL \RD1s[29]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[29]~reg0_regout\ : std_logic;
SIGNAL \RD1s[30]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[30]~reg0_regout\ : std_logic;
SIGNAL \RD1s[31]~reg0feeder_combout\ : std_logic;
SIGNAL \RD1s[31]~reg0_regout\ : std_logic;
SIGNAL \RD2s[0]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[0]~reg0_regout\ : std_logic;
SIGNAL \RD2s[1]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[1]~reg0_regout\ : std_logic;
SIGNAL \RD2s[2]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[2]~reg0_regout\ : std_logic;
SIGNAL \RD2s[3]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[3]~reg0_regout\ : std_logic;
SIGNAL \RD2s[4]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[4]~reg0_regout\ : std_logic;
SIGNAL \RD2s[5]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[5]~reg0_regout\ : std_logic;
SIGNAL \RD2s[6]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[6]~reg0_regout\ : std_logic;
SIGNAL \RD2s[7]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[7]~reg0_regout\ : std_logic;
SIGNAL \RD2s[8]~reg0_regout\ : std_logic;
SIGNAL \RD2s[9]~reg0_regout\ : std_logic;
SIGNAL \RD2s[10]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[10]~reg0_regout\ : std_logic;
SIGNAL \RD2s[11]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[11]~reg0_regout\ : std_logic;
SIGNAL \RD2s[12]~reg0_regout\ : std_logic;
SIGNAL \RD2s[13]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[13]~reg0_regout\ : std_logic;
SIGNAL \RD2s[14]~reg0_regout\ : std_logic;
SIGNAL \RD2s[15]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[15]~reg0_regout\ : std_logic;
SIGNAL \RD2s[16]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[16]~reg0_regout\ : std_logic;
SIGNAL \RD2s[17]~reg0_regout\ : std_logic;
SIGNAL \RD2s[18]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[18]~reg0_regout\ : std_logic;
SIGNAL \RD2s[19]~reg0_regout\ : std_logic;
SIGNAL \RD2s[20]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[20]~reg0_regout\ : std_logic;
SIGNAL \RD2s[21]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[21]~reg0_regout\ : std_logic;
SIGNAL \RD2s[22]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[22]~reg0_regout\ : std_logic;
SIGNAL \RD2s[23]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[23]~reg0_regout\ : std_logic;
SIGNAL \RD2s[24]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[24]~reg0_regout\ : std_logic;
SIGNAL \RD2s[25]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[25]~reg0_regout\ : std_logic;
SIGNAL \RD2s[26]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[26]~reg0_regout\ : std_logic;
SIGNAL \RD2s[27]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[27]~reg0_regout\ : std_logic;
SIGNAL \RD2s[28]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[28]~reg0_regout\ : std_logic;
SIGNAL \RD2s[29]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[29]~reg0_regout\ : std_logic;
SIGNAL \RD2s[30]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[30]~reg0_regout\ : std_logic;
SIGNAL \RD2s[31]~reg0feeder_combout\ : std_logic;
SIGNAL \RD2s[31]~reg0_regout\ : std_logic;
SIGNAL \RsE[0]~reg0feeder_combout\ : std_logic;
SIGNAL \RsE[0]~reg0_regout\ : std_logic;
SIGNAL \RsE[1]~reg0_regout\ : std_logic;
SIGNAL \RsE[2]~reg0feeder_combout\ : std_logic;
SIGNAL \RsE[2]~reg0_regout\ : std_logic;
SIGNAL \RsE[3]~reg0feeder_combout\ : std_logic;
SIGNAL \RsE[3]~reg0_regout\ : std_logic;
SIGNAL \RsE[4]~reg0feeder_combout\ : std_logic;
SIGNAL \RsE[4]~reg0_regout\ : std_logic;
SIGNAL \RtE[0]~reg0_regout\ : std_logic;
SIGNAL \RtE[1]~reg0feeder_combout\ : std_logic;
SIGNAL \RtE[1]~reg0_regout\ : std_logic;
SIGNAL \RtE[2]~reg0feeder_combout\ : std_logic;
SIGNAL \RtE[2]~reg0_regout\ : std_logic;
SIGNAL \RtE[3]~reg0feeder_combout\ : std_logic;
SIGNAL \RtE[3]~reg0_regout\ : std_logic;
SIGNAL \RtE[4]~reg0feeder_combout\ : std_logic;
SIGNAL \RtE[4]~reg0_regout\ : std_logic;
SIGNAL \RdE[0]~reg0feeder_combout\ : std_logic;
SIGNAL \RdE[0]~reg0_regout\ : std_logic;
SIGNAL \RdE[1]~reg0_regout\ : std_logic;
SIGNAL \RdE[2]~reg0feeder_combout\ : std_logic;
SIGNAL \RdE[2]~reg0_regout\ : std_logic;
SIGNAL \RdE[3]~reg0feeder_combout\ : std_logic;
SIGNAL \RdE[3]~reg0_regout\ : std_logic;
SIGNAL \RdE[4]~reg0_regout\ : std_logic;
SIGNAL \RegDstD~combout\ : std_logic;
SIGNAL \RegDstE~reg0feeder_combout\ : std_logic;
SIGNAL \RegDstE~reg0_regout\ : std_logic;
SIGNAL \ALUSrcD~combout\ : std_logic;
SIGNAL \ALUSrcE~reg0feeder_combout\ : std_logic;
SIGNAL \ALUSrcE~reg0_regout\ : std_logic;
SIGNAL \RegWriteD~combout\ : std_logic;
SIGNAL \RegWriteE~reg0feeder_combout\ : std_logic;
SIGNAL \RegWriteE~reg0_regout\ : std_logic;
SIGNAL \ALUControlE[0]~reg0feeder_combout\ : std_logic;
SIGNAL \ALUControlE[0]~reg0_regout\ : std_logic;
SIGNAL \ALUControlE[1]~reg0feeder_combout\ : std_logic;
SIGNAL \ALUControlE[1]~reg0_regout\ : std_logic;
SIGNAL \RtD~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RsD~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RdD~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RD2~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RD1~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALUControlD~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_RD1 <= RD1;
ww_RD2 <= RD2;
RD1s <= ww_RD1s;
RD2s <= ww_RD2s;
ww_RsD <= RsD;
ww_RtD <= RtD;
ww_RdD <= RdD;
RsE <= ww_RsE;
RtE <= ww_RtE;
RdE <= ww_RdE;
ww_RegDstD <= RegDstD;
ww_ALUSrcD <= ALUSrcD;
ww_RegWriteD <= RegWriteD;
RegDstE <= ww_RegDstE;
ALUSrcE <= ww_ALUSrcE;
RegWriteE <= ww_RegWriteE;
ww_ALUControlD <= ALUControlD;
ALUControlE <= ww_ALUControlE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

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

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(0),
	combout => \RD1~combout\(0));

-- Location: LCCOMB_X41_Y1_N16
\RD1s[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[0]~reg0feeder_combout\ = \RD1~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(0),
	combout => \RD1s[0]~reg0feeder_combout\);

-- Location: LCFF_X41_Y1_N17
\RD1s[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[0]~reg0_regout\);

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(1),
	combout => \RD1~combout\(1));

-- Location: LCFF_X40_Y1_N25
\RD1s[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD1~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[1]~reg0_regout\);

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(2),
	combout => \RD1~combout\(2));

-- Location: LCFF_X78_Y36_N17
\RD1s[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD1~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[2]~reg0_regout\);

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(3),
	combout => \RD1~combout\(3));

-- Location: LCCOMB_X3_Y38_N24
\RD1s[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[3]~reg0feeder_combout\ = \RD1~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(3),
	combout => \RD1s[3]~reg0feeder_combout\);

-- Location: LCFF_X3_Y38_N25
\RD1s[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[3]~reg0_regout\);

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(4),
	combout => \RD1~combout\(4));

-- Location: LCCOMB_X32_Y1_N16
\RD1s[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[4]~reg0feeder_combout\ = \RD1~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(4),
	combout => \RD1s[4]~reg0feeder_combout\);

-- Location: LCFF_X32_Y1_N17
\RD1s[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[4]~reg0_regout\);

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(5),
	combout => \RD1~combout\(5));

-- Location: LCCOMB_X61_Y43_N0
\RD1s[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[5]~reg0feeder_combout\ = \RD1~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(5),
	combout => \RD1s[5]~reg0feeder_combout\);

-- Location: LCFF_X61_Y43_N1
\RD1s[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[5]~reg0_regout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(6),
	combout => \RD1~combout\(6));

-- Location: LCCOMB_X79_Y18_N16
\RD1s[6]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[6]~reg0feeder_combout\ = \RD1~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(6),
	combout => \RD1s[6]~reg0feeder_combout\);

-- Location: LCFF_X79_Y18_N17
\RD1s[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[6]~reg0_regout\);

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(7),
	combout => \RD1~combout\(7));

-- Location: LCCOMB_X79_Y16_N16
\RD1s[7]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[7]~reg0feeder_combout\ = \RD1~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(7),
	combout => \RD1s[7]~reg0feeder_combout\);

-- Location: LCFF_X79_Y16_N17
\RD1s[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[7]~reg0_regout\);

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(8),
	combout => \RD1~combout\(8));

-- Location: LCCOMB_X71_Y43_N0
\RD1s[8]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[8]~reg0feeder_combout\ = \RD1~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(8),
	combout => \RD1s[8]~reg0feeder_combout\);

-- Location: LCFF_X71_Y43_N1
\RD1s[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[8]~reg0_regout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(9),
	combout => \RD1~combout\(9));

-- Location: LCCOMB_X48_Y43_N0
\RD1s[9]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[9]~reg0feeder_combout\ = \RD1~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(9),
	combout => \RD1s[9]~reg0feeder_combout\);

-- Location: LCFF_X48_Y43_N1
\RD1s[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[9]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[9]~reg0_regout\);

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(10),
	combout => \RD1~combout\(10));

-- Location: LCCOMB_X72_Y1_N16
\RD1s[10]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[10]~reg0feeder_combout\ = \RD1~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(10),
	combout => \RD1s[10]~reg0feeder_combout\);

-- Location: LCFF_X72_Y1_N17
\RD1s[10]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[10]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[10]~reg0_regout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(11),
	combout => \RD1~combout\(11));

-- Location: LCCOMB_X50_Y43_N24
\RD1s[11]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[11]~reg0feeder_combout\ = \RD1~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(11),
	combout => \RD1s[11]~reg0feeder_combout\);

-- Location: LCFF_X50_Y43_N25
\RD1s[11]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[11]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[11]~reg0_regout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[12]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(12),
	combout => \RD1~combout\(12));

-- Location: LCCOMB_X79_Y28_N16
\RD1s[12]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[12]~reg0feeder_combout\ = \RD1~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(12),
	combout => \RD1s[12]~reg0feeder_combout\);

-- Location: LCFF_X79_Y28_N17
\RD1s[12]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[12]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[12]~reg0_regout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[13]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(13),
	combout => \RD1~combout\(13));

-- Location: LCCOMB_X79_Y24_N0
\RD1s[13]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[13]~reg0feeder_combout\ = \RD1~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(13),
	combout => \RD1s[13]~reg0feeder_combout\);

-- Location: LCFF_X79_Y24_N1
\RD1s[13]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[13]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[13]~reg0_regout\);

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[14]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(14),
	combout => \RD1~combout\(14));

-- Location: LCFF_X22_Y43_N1
\RD1s[14]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD1~combout\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[14]~reg0_regout\);

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[15]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(15),
	combout => \RD1~combout\(15));

-- Location: LCCOMB_X79_Y22_N16
\RD1s[15]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[15]~reg0feeder_combout\ = \RD1~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(15),
	combout => \RD1s[15]~reg0feeder_combout\);

-- Location: LCFF_X79_Y22_N17
\RD1s[15]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[15]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[15]~reg0_regout\);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[16]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(16),
	combout => \RD1~combout\(16));

-- Location: LCCOMB_X58_Y43_N0
\RD1s[16]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[16]~reg0feeder_combout\ = \RD1~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(16),
	combout => \RD1s[16]~reg0feeder_combout\);

-- Location: LCFF_X58_Y43_N1
\RD1s[16]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[16]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[16]~reg0_regout\);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[17]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(17),
	combout => \RD1~combout\(17));

-- Location: LCCOMB_X12_Y43_N0
\RD1s[17]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[17]~reg0feeder_combout\ = \RD1~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(17),
	combout => \RD1s[17]~reg0feeder_combout\);

-- Location: LCFF_X12_Y43_N1
\RD1s[17]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[17]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[17]~reg0_regout\);

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[18]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(18),
	combout => \RD1~combout\(18));

-- Location: LCFF_X2_Y33_N17
\RD1s[18]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD1~combout\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[18]~reg0_regout\);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[19]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(19),
	combout => \RD1~combout\(19));

-- Location: LCFF_X44_Y43_N1
\RD1s[19]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD1~combout\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[19]~reg0_regout\);

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[20]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(20),
	combout => \RD1~combout\(20));

-- Location: LCCOMB_X79_Y36_N0
\RD1s[20]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[20]~reg0feeder_combout\ = \RD1~combout\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(20),
	combout => \RD1s[20]~reg0feeder_combout\);

-- Location: LCFF_X79_Y36_N1
\RD1s[20]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[20]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[20]~reg0_regout\);

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[21]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(21),
	combout => \RD1~combout\(21));

-- Location: LCCOMB_X11_Y43_N0
\RD1s[21]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[21]~reg0feeder_combout\ = \RD1~combout\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(21),
	combout => \RD1s[21]~reg0feeder_combout\);

-- Location: LCFF_X11_Y43_N1
\RD1s[21]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[21]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[21]~reg0_regout\);

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[22]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(22),
	combout => \RD1~combout\(22));

-- Location: LCCOMB_X19_Y1_N16
\RD1s[22]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[22]~reg0feeder_combout\ = \RD1~combout\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(22),
	combout => \RD1s[22]~reg0feeder_combout\);

-- Location: LCFF_X19_Y1_N17
\RD1s[22]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[22]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[22]~reg0_regout\);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[23]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(23),
	combout => \RD1~combout\(23));

-- Location: LCFF_X23_Y43_N1
\RD1s[23]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD1~combout\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[23]~reg0_regout\);

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[24]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(24),
	combout => \RD1~combout\(24));

-- Location: LCCOMB_X79_Y33_N16
\RD1s[24]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[24]~reg0feeder_combout\ = \RD1~combout\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(24),
	combout => \RD1s[24]~reg0feeder_combout\);

-- Location: LCFF_X79_Y33_N17
\RD1s[24]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[24]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[24]~reg0_regout\);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[25]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(25),
	combout => \RD1~combout\(25));

-- Location: LCCOMB_X51_Y43_N0
\RD1s[25]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[25]~reg0feeder_combout\ = \RD1~combout\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(25),
	combout => \RD1s[25]~reg0feeder_combout\);

-- Location: LCFF_X51_Y43_N1
\RD1s[25]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[25]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[25]~reg0_regout\);

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[26]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(26),
	combout => \RD1~combout\(26));

-- Location: LCFF_X45_Y1_N17
\RD1s[26]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD1~combout\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[26]~reg0_regout\);

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[27]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(27),
	combout => \RD1~combout\(27));

-- Location: LCCOMB_X5_Y43_N0
\RD1s[27]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[27]~reg0feeder_combout\ = \RD1~combout\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(27),
	combout => \RD1s[27]~reg0feeder_combout\);

-- Location: LCFF_X5_Y43_N1
\RD1s[27]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[27]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[27]~reg0_regout\);

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[28]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(28),
	combout => \RD1~combout\(28));

-- Location: LCCOMB_X62_Y43_N0
\RD1s[28]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[28]~reg0feeder_combout\ = \RD1~combout\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(28),
	combout => \RD1s[28]~reg0feeder_combout\);

-- Location: LCFF_X62_Y43_N1
\RD1s[28]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[28]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[28]~reg0_regout\);

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[29]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(29),
	combout => \RD1~combout\(29));

-- Location: LCCOMB_X79_Y21_N0
\RD1s[29]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[29]~reg0feeder_combout\ = \RD1~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(29),
	combout => \RD1s[29]~reg0feeder_combout\);

-- Location: LCFF_X79_Y21_N1
\RD1s[29]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[29]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[29]~reg0_regout\);

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[30]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(30),
	combout => \RD1~combout\(30));

-- Location: LCCOMB_X22_Y1_N0
\RD1s[30]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[30]~reg0feeder_combout\ = \RD1~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(30),
	combout => \RD1s[30]~reg0feeder_combout\);

-- Location: LCFF_X22_Y1_N1
\RD1s[30]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[30]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[30]~reg0_regout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD1[31]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD1(31),
	combout => \RD1~combout\(31));

-- Location: LCCOMB_X41_Y43_N0
\RD1s[31]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD1s[31]~reg0feeder_combout\ = \RD1~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD1~combout\(31),
	combout => \RD1s[31]~reg0feeder_combout\);

-- Location: LCFF_X41_Y43_N1
\RD1s[31]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD1s[31]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD1s[31]~reg0_regout\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(0),
	combout => \RD2~combout\(0));

-- Location: LCCOMB_X59_Y43_N0
\RD2s[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[0]~reg0feeder_combout\ = \RD2~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(0),
	combout => \RD2s[0]~reg0feeder_combout\);

-- Location: LCFF_X59_Y43_N1
\RD2s[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[0]~reg0_regout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(1),
	combout => \RD2~combout\(1));

-- Location: LCCOMB_X26_Y43_N0
\RD2s[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[1]~reg0feeder_combout\ = \RD2~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(1),
	combout => \RD2s[1]~reg0feeder_combout\);

-- Location: LCFF_X26_Y43_N1
\RD2s[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[1]~reg0_regout\);

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(2),
	combout => \RD2~combout\(2));

-- Location: LCCOMB_X1_Y2_N8
\RD2s[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[2]~reg0feeder_combout\ = \RD2~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(2),
	combout => \RD2s[2]~reg0feeder_combout\);

-- Location: LCFF_X1_Y2_N9
\RD2s[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[2]~reg0_regout\);

-- Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(3),
	combout => \RD2~combout\(3));

-- Location: LCCOMB_X1_Y12_N24
\RD2s[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[3]~reg0feeder_combout\ = \RD2~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(3),
	combout => \RD2s[3]~reg0feeder_combout\);

-- Location: LCFF_X1_Y12_N25
\RD2s[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[3]~reg0_regout\);

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(4),
	combout => \RD2~combout\(4));

-- Location: LCCOMB_X20_Y43_N0
\RD2s[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[4]~reg0feeder_combout\ = \RD2~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(4),
	combout => \RD2s[4]~reg0feeder_combout\);

-- Location: LCFF_X20_Y43_N1
\RD2s[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[4]~reg0_regout\);

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(5),
	combout => \RD2~combout\(5));

-- Location: LCCOMB_X44_Y1_N0
\RD2s[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[5]~reg0feeder_combout\ = \RD2~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(5),
	combout => \RD2s[5]~reg0feeder_combout\);

-- Location: LCFF_X44_Y1_N1
\RD2s[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[5]~reg0_regout\);

-- Location: PIN_AC20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(6),
	combout => \RD2~combout\(6));

-- Location: LCCOMB_X70_Y1_N16
\RD2s[6]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[6]~reg0feeder_combout\ = \RD2~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(6),
	combout => \RD2s[6]~reg0feeder_combout\);

-- Location: LCFF_X70_Y1_N17
\RD2s[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[6]~reg0_regout\);

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(7),
	combout => \RD2~combout\(7));

-- Location: LCCOMB_X46_Y1_N16
\RD2s[7]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[7]~reg0feeder_combout\ = \RD2~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(7),
	combout => \RD2s[7]~reg0feeder_combout\);

-- Location: LCFF_X46_Y1_N17
\RD2s[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[7]~reg0_regout\);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(8),
	combout => \RD2~combout\(8));

-- Location: LCFF_X57_Y43_N17
\RD2s[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD2~combout\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[8]~reg0_regout\);

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(9),
	combout => \RD2~combout\(9));

-- Location: LCFF_X18_Y43_N17
\RD2s[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD2~combout\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[9]~reg0_regout\);

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(10),
	combout => \RD2~combout\(10));

-- Location: LCCOMB_X79_Y10_N16
\RD2s[10]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[10]~reg0feeder_combout\ = \RD2~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(10),
	combout => \RD2s[10]~reg0feeder_combout\);

-- Location: LCFF_X79_Y10_N17
\RD2s[10]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[10]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[10]~reg0_regout\);

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(11),
	combout => \RD2~combout\(11));

-- Location: LCCOMB_X1_Y21_N8
\RD2s[11]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[11]~reg0feeder_combout\ = \RD2~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(11),
	combout => \RD2s[11]~reg0feeder_combout\);

-- Location: LCFF_X1_Y21_N9
\RD2s[11]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[11]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[11]~reg0_regout\);

-- Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[12]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(12),
	combout => \RD2~combout\(12));

-- Location: LCFF_X20_Y1_N17
\RD2s[12]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD2~combout\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[12]~reg0_regout\);

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[13]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(13),
	combout => \RD2~combout\(13));

-- Location: LCCOMB_X19_Y43_N0
\RD2s[13]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[13]~reg0feeder_combout\ = \RD2~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(13),
	combout => \RD2s[13]~reg0feeder_combout\);

-- Location: LCFF_X19_Y43_N1
\RD2s[13]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[13]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[13]~reg0_regout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[14]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(14),
	combout => \RD2~combout\(14));

-- Location: LCFF_X31_Y43_N1
\RD2s[14]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD2~combout\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[14]~reg0_regout\);

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[15]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(15),
	combout => \RD2~combout\(15));

-- Location: LCCOMB_X1_Y29_N8
\RD2s[15]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[15]~reg0feeder_combout\ = \RD2~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(15),
	combout => \RD2s[15]~reg0feeder_combout\);

-- Location: LCFF_X1_Y29_N9
\RD2s[15]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[15]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[15]~reg0_regout\);

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[16]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(16),
	combout => \RD2~combout\(16));

-- Location: LCCOMB_X8_Y43_N0
\RD2s[16]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[16]~reg0feeder_combout\ = \RD2~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(16),
	combout => \RD2s[16]~reg0feeder_combout\);

-- Location: LCFF_X8_Y43_N1
\RD2s[16]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[16]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[16]~reg0_regout\);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[17]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(17),
	combout => \RD2~combout\(17));

-- Location: LCFF_X46_Y43_N1
\RD2s[17]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD2~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[17]~reg0_regout\);

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[18]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(18),
	combout => \RD2~combout\(18));

-- Location: LCCOMB_X79_Y27_N0
\RD2s[18]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[18]~reg0feeder_combout\ = \RD2~combout\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(18),
	combout => \RD2s[18]~reg0feeder_combout\);

-- Location: LCFF_X79_Y27_N1
\RD2s[18]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[18]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[18]~reg0_regout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[19]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(19),
	combout => \RD2~combout\(19));

-- Location: LCFF_X33_Y43_N1
\RD2s[19]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RD2~combout\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[19]~reg0_regout\);

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[20]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(20),
	combout => \RD2~combout\(20));

-- Location: LCCOMB_X74_Y1_N0
\RD2s[20]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[20]~reg0feeder_combout\ = \RD2~combout\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(20),
	combout => \RD2s[20]~reg0feeder_combout\);

-- Location: LCFF_X74_Y1_N1
\RD2s[20]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[20]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[20]~reg0_regout\);

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[21]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(21),
	combout => \RD2~combout\(21));

-- Location: LCCOMB_X2_Y43_N0
\RD2s[21]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[21]~reg0feeder_combout\ = \RD2~combout\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(21),
	combout => \RD2s[21]~reg0feeder_combout\);

-- Location: LCFF_X2_Y43_N1
\RD2s[21]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[21]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[21]~reg0_regout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[22]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(22),
	combout => \RD2~combout\(22));

-- Location: LCCOMB_X1_Y28_N24
\RD2s[22]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[22]~reg0feeder_combout\ = \RD2~combout\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(22),
	combout => \RD2s[22]~reg0feeder_combout\);

-- Location: LCFF_X1_Y28_N25
\RD2s[22]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[22]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[22]~reg0_regout\);

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[23]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(23),
	combout => \RD2~combout\(23));

-- Location: LCCOMB_X27_Y1_N16
\RD2s[23]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[23]~reg0feeder_combout\ = \RD2~combout\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(23),
	combout => \RD2s[23]~reg0feeder_combout\);

-- Location: LCFF_X27_Y1_N17
\RD2s[23]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[23]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[23]~reg0_regout\);

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[24]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(24),
	combout => \RD2~combout\(24));

-- Location: LCCOMB_X2_Y38_N16
\RD2s[24]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[24]~reg0feeder_combout\ = \RD2~combout\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(24),
	combout => \RD2s[24]~reg0feeder_combout\);

-- Location: LCFF_X2_Y38_N17
\RD2s[24]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[24]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[24]~reg0_regout\);

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[25]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(25),
	combout => \RD2~combout\(25));

-- Location: LCCOMB_X1_Y17_N24
\RD2s[25]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[25]~reg0feeder_combout\ = \RD2~combout\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(25),
	combout => \RD2s[25]~reg0feeder_combout\);

-- Location: LCFF_X1_Y17_N25
\RD2s[25]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[25]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[25]~reg0_regout\);

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[26]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(26),
	combout => \RD2~combout\(26));

-- Location: LCCOMB_X1_Y27_N16
\RD2s[26]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[26]~reg0feeder_combout\ = \RD2~combout\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(26),
	combout => \RD2s[26]~reg0feeder_combout\);

-- Location: LCFF_X1_Y27_N17
\RD2s[26]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[26]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[26]~reg0_regout\);

-- Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[27]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(27),
	combout => \RD2~combout\(27));

-- Location: LCCOMB_X1_Y1_N0
\RD2s[27]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[27]~reg0feeder_combout\ = \RD2~combout\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(27),
	combout => \RD2s[27]~reg0feeder_combout\);

-- Location: LCFF_X1_Y1_N1
\RD2s[27]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[27]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[27]~reg0_regout\);

-- Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[28]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(28),
	combout => \RD2~combout\(28));

-- Location: LCCOMB_X2_Y1_N16
\RD2s[28]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[28]~reg0feeder_combout\ = \RD2~combout\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(28),
	combout => \RD2s[28]~reg0feeder_combout\);

-- Location: LCFF_X2_Y1_N17
\RD2s[28]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[28]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[28]~reg0_regout\);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[29]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(29),
	combout => \RD2~combout\(29));

-- Location: LCCOMB_X25_Y43_N0
\RD2s[29]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[29]~reg0feeder_combout\ = \RD2~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(29),
	combout => \RD2s[29]~reg0feeder_combout\);

-- Location: LCFF_X25_Y43_N1
\RD2s[29]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[29]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[29]~reg0_regout\);

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[30]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(30),
	combout => \RD2~combout\(30));

-- Location: LCCOMB_X1_Y19_N8
\RD2s[30]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[30]~reg0feeder_combout\ = \RD2~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(30),
	combout => \RD2s[30]~reg0feeder_combout\);

-- Location: LCFF_X1_Y19_N9
\RD2s[30]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[30]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[30]~reg0_regout\);

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RD2[31]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RD2(31),
	combout => \RD2~combout\(31));

-- Location: LCCOMB_X1_Y41_N16
\RD2s[31]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RD2s[31]~reg0feeder_combout\ = \RD2~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RD2~combout\(31),
	combout => \RD2s[31]~reg0feeder_combout\);

-- Location: LCFF_X1_Y41_N17
\RD2s[31]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RD2s[31]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RD2s[31]~reg0_regout\);

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RsD[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RsD(0),
	combout => \RsD~combout\(0));

-- Location: LCCOMB_X1_Y5_N8
\RsE[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RsE[0]~reg0feeder_combout\ = \RsD~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RsD~combout\(0),
	combout => \RsE[0]~reg0feeder_combout\);

-- Location: LCFF_X1_Y5_N9
\RsE[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RsE[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RsE[0]~reg0_regout\);

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RsD[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RsD(1),
	combout => \RsD~combout\(1));

-- Location: LCFF_X2_Y29_N1
\RsE[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RsD~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RsE[1]~reg0_regout\);

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RsD[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RsD(2),
	combout => \RsD~combout\(2));

-- Location: LCCOMB_X1_Y38_N8
\RsE[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RsE[2]~reg0feeder_combout\ = \RsD~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RsD~combout\(2),
	combout => \RsE[2]~reg0feeder_combout\);

-- Location: LCFF_X1_Y38_N9
\RsE[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RsE[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RsE[2]~reg0_regout\);

-- Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RsD[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RsD(3),
	combout => \RsD~combout\(3));

-- Location: LCCOMB_X49_Y1_N16
\RsE[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RsE[3]~reg0feeder_combout\ = \RsD~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RsD~combout\(3),
	combout => \RsE[3]~reg0feeder_combout\);

-- Location: LCFF_X49_Y1_N17
\RsE[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RsE[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RsE[3]~reg0_regout\);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RsD[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RsD(4),
	combout => \RsD~combout\(4));

-- Location: LCCOMB_X3_Y43_N16
\RsE[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RsE[4]~reg0feeder_combout\ = \RsD~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RsD~combout\(4),
	combout => \RsE[4]~reg0feeder_combout\);

-- Location: LCFF_X3_Y43_N17
\RsE[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RsE[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RsE[4]~reg0_regout\);

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RtD[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RtD(0),
	combout => \RtD~combout\(0));

-- Location: LCFF_X3_Y41_N17
\RtE[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RtD~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RtE[0]~reg0_regout\);

-- Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RtD[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RtD(1),
	combout => \RtD~combout\(1));

-- Location: LCCOMB_X1_Y9_N8
\RtE[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RtE[1]~reg0feeder_combout\ = \RtD~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RtD~combout\(1),
	combout => \RtE[1]~reg0feeder_combout\);

-- Location: LCFF_X1_Y9_N9
\RtE[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RtE[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RtE[1]~reg0_regout\);

-- Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RtD[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RtD(2),
	combout => \RtD~combout\(2));

-- Location: LCCOMB_X3_Y1_N16
\RtE[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RtE[2]~reg0feeder_combout\ = \RtD~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RtD~combout\(2),
	combout => \RtE[2]~reg0feeder_combout\);

-- Location: LCFF_X3_Y1_N17
\RtE[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RtE[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RtE[2]~reg0_regout\);

-- Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RtD[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RtD(3),
	combout => \RtD~combout\(3));

-- Location: LCCOMB_X24_Y1_N16
\RtE[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RtE[3]~reg0feeder_combout\ = \RtD~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RtD~combout\(3),
	combout => \RtE[3]~reg0feeder_combout\);

-- Location: LCFF_X24_Y1_N17
\RtE[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RtE[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RtE[3]~reg0_regout\);

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RtD[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RtD(4),
	combout => \RtD~combout\(4));

-- Location: LCCOMB_X2_Y9_N24
\RtE[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RtE[4]~reg0feeder_combout\ = \RtD~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RtD~combout\(4),
	combout => \RtE[4]~reg0feeder_combout\);

-- Location: LCFF_X2_Y9_N25
\RtE[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RtE[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RtE[4]~reg0_regout\);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RdD[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RdD(0),
	combout => \RdD~combout\(0));

-- Location: LCCOMB_X4_Y41_N8
\RdE[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RdE[0]~reg0feeder_combout\ = \RdD~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RdD~combout\(0),
	combout => \RdE[0]~reg0feeder_combout\);

-- Location: LCFF_X4_Y41_N9
\RdE[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RdE[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RdE[0]~reg0_regout\);

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RdD[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RdD(1),
	combout => \RdD~combout\(1));

-- Location: LCFF_X78_Y43_N1
\RdE[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RdD~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RdE[1]~reg0_regout\);

-- Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RdD[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RdD(2),
	combout => \RdD~combout\(2));

-- Location: LCCOMB_X79_Y17_N16
\RdE[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RdE[2]~reg0feeder_combout\ = \RdD~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RdD~combout\(2),
	combout => \RdE[2]~reg0feeder_combout\);

-- Location: LCFF_X79_Y17_N17
\RdE[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RdE[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RdE[2]~reg0_regout\);

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RdD[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RdD(3),
	combout => \RdD~combout\(3));

-- Location: LCCOMB_X2_Y41_N24
\RdE[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RdE[3]~reg0feeder_combout\ = \RdD~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RdD~combout\(3),
	combout => \RdE[3]~reg0feeder_combout\);

-- Location: LCFF_X2_Y41_N25
\RdE[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RdE[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RdE[3]~reg0_regout\);

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RdD[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RdD(4),
	combout => \RdD~combout\(4));

-- Location: LCFF_X70_Y43_N17
\RdE[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RdD~combout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RdE[4]~reg0_regout\);

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegDstD~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RegDstD,
	combout => \RegDstD~combout\);

-- Location: LCCOMB_X1_Y33_N0
\RegDstE~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegDstE~reg0feeder_combout\ = \RegDstD~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegDstD~combout\,
	combout => \RegDstE~reg0feeder_combout\);

-- Location: LCFF_X1_Y33_N1
\RegDstE~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RegDstE~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDstE~reg0_regout\);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALUSrcD~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALUSrcD,
	combout => \ALUSrcD~combout\);

-- Location: LCCOMB_X78_Y1_N0
\ALUSrcE~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUSrcE~reg0feeder_combout\ = \ALUSrcD~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALUSrcD~combout\,
	combout => \ALUSrcE~reg0feeder_combout\);

-- Location: LCFF_X78_Y1_N1
\ALUSrcE~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ALUSrcE~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUSrcE~reg0_regout\);

-- Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegWriteD~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_RegWriteD,
	combout => \RegWriteD~combout\);

-- Location: LCCOMB_X57_Y1_N16
\RegWriteE~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegWriteE~reg0feeder_combout\ = \RegWriteD~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegWriteD~combout\,
	combout => \RegWriteE~reg0feeder_combout\);

-- Location: LCFF_X57_Y1_N17
\RegWriteE~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RegWriteE~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegWriteE~reg0_regout\);

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALUControlD[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALUControlD(0),
	combout => \ALUControlD~combout\(0));

-- Location: LCCOMB_X77_Y36_N16
\ALUControlE[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUControlE[0]~reg0feeder_combout\ = \ALUControlD~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALUControlD~combout\(0),
	combout => \ALUControlE[0]~reg0feeder_combout\);

-- Location: LCFF_X77_Y36_N17
\ALUControlE[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ALUControlE[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUControlE[0]~reg0_regout\);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALUControlD[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_ALUControlD(1),
	combout => \ALUControlD~combout\(1));

-- Location: LCCOMB_X1_Y43_N16
\ALUControlE[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUControlE[1]~reg0feeder_combout\ = \ALUControlD~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALUControlD~combout\(1),
	combout => \ALUControlE[1]~reg0feeder_combout\);

-- Location: LCFF_X1_Y43_N17
\ALUControlE[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ALUControlE[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUControlE[1]~reg0_regout\);

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(0));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(1));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(2));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(3));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(4));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(5));

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(6));

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[7]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(7));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[8]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[8]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(8));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[9]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[9]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(9));

-- Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[10]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[10]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(10));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[11]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[11]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(11));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[12]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[12]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(12));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[13]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[13]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(13));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[14]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[14]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(14));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[15]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[15]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(15));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[16]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[16]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(16));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[17]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[17]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(17));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[18]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[18]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(18));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[19]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[19]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(19));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[20]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[20]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(20));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[21]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[21]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(21));

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[22]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[22]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(22));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[23]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[23]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(23));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[24]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[24]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(24));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[25]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[25]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(25));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[26]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[26]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(26));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[27]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[27]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(27));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[28]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[28]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(28));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[29]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[29]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(29));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[30]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[30]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(30));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD1s[31]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD1s[31]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD1s(31));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(0));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(1));

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(2));

-- Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(3));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(4));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(5));

-- Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(6));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[7]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(7));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[8]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[8]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(8));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[9]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[9]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(9));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[10]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[10]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(10));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[11]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[11]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(11));

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[12]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[12]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(12));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[13]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[13]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(13));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[14]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[14]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(14));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[15]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[15]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(15));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[16]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[16]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(16));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[17]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[17]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(17));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[18]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[18]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(18));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[19]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[19]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(19));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[20]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[20]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(20));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[21]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[21]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(21));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[22]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[22]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(22));

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[23]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[23]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(23));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[24]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[24]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(24));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[25]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[25]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(25));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[26]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[26]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(26));

-- Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[27]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[27]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(27));

-- Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[28]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[28]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(28));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[29]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[29]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(29));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[30]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[30]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(30));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD2s[31]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RD2s[31]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD2s(31));

-- Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \RsE[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RsE(0));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \RsE[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RsE(1));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \RsE[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RsE(2));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \RsE[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RsE(3));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \RsE[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RsE(4));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \RtE[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RtE(0));

-- Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \RtE[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RtE(1));

-- Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \RtE[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RtE(2));

-- Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \RtE[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RtE(3));

-- Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \RtE[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RtE(4));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RdE[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RdE[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RdE(0));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RdE[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RdE[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RdE(1));

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RdE[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RdE[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RdE(2));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RdE[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RdE[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RdE(3));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RdE[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RdE[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RdE(4));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegDstE~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RegDstE~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegDstE);

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUSrcE~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUSrcE~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUSrcE);

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegWriteE~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \RegWriteE~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegWriteE);

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUControlE[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUControlE[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUControlE(0));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUControlE[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALUControlE[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUControlE(1));
END structure;


