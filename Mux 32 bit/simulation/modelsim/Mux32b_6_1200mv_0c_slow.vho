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

-- DATE "11/30/2019 12:48:48"

-- 
-- Device: Altera EP4CGX30CF23C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Mux32b IS
    PORT (
	selection : IN std_logic_vector(1 DOWNTO 0);
	inA : IN std_logic_vector(31 DOWNTO 0);
	inB : IN std_logic_vector(31 DOWNTO 0);
	inC : IN std_logic_vector(31 DOWNTO 0);
	outMux : OUT std_logic_vector(31 DOWNTO 0)
	);
END Mux32b;

-- Design Ports Information
-- outMux[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[3]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[4]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[5]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[6]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[7]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[8]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[9]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[10]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[11]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[12]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[13]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[14]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[15]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[16]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[17]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[18]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[19]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[20]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[21]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[22]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[23]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[24]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[25]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[26]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[27]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[28]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[29]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[30]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outMux[31]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[0]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selection[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selection[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[0]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[1]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[2]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[3]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[4]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[5]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[5]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[6]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[7]	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[7]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[7]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[8]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[8]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[8]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[9]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[9]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[9]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[10]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[10]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[10]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[11]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[11]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[11]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[12]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[12]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[12]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[13]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[13]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[13]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[14]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[14]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[14]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[15]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[15]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[15]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[16]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[16]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[16]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[17]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[17]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[17]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[18]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[18]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[18]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[19]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[19]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[19]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[20]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[20]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[20]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[21]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[21]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[21]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[22]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[22]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[22]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[23]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[23]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[23]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[24]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[24]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[24]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[25]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[25]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[25]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[26]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[26]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[26]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[27]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[27]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[27]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[28]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[28]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[28]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[29]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[29]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[29]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[30]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[30]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[30]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inC[31]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[31]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[31]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Mux32b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_selection : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_inA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_inB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_inC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_outMux : std_logic_vector(31 DOWNTO 0);
SIGNAL \inA[0]~input_o\ : std_logic;
SIGNAL \inA[1]~input_o\ : std_logic;
SIGNAL \inC[3]~input_o\ : std_logic;
SIGNAL \inC[5]~input_o\ : std_logic;
SIGNAL \inC[6]~input_o\ : std_logic;
SIGNAL \inA[16]~input_o\ : std_logic;
SIGNAL \inA[19]~input_o\ : std_logic;
SIGNAL \inC[23]~input_o\ : std_logic;
SIGNAL \inC[26]~input_o\ : std_logic;
SIGNAL \inC[27]~input_o\ : std_logic;
SIGNAL \inA[28]~input_o\ : std_logic;
SIGNAL \inC[29]~input_o\ : std_logic;
SIGNAL \inA[31]~input_o\ : std_logic;
SIGNAL \outMux[0]~output_o\ : std_logic;
SIGNAL \outMux[1]~output_o\ : std_logic;
SIGNAL \outMux[2]~output_o\ : std_logic;
SIGNAL \outMux[3]~output_o\ : std_logic;
SIGNAL \outMux[4]~output_o\ : std_logic;
SIGNAL \outMux[5]~output_o\ : std_logic;
SIGNAL \outMux[6]~output_o\ : std_logic;
SIGNAL \outMux[7]~output_o\ : std_logic;
SIGNAL \outMux[8]~output_o\ : std_logic;
SIGNAL \outMux[9]~output_o\ : std_logic;
SIGNAL \outMux[10]~output_o\ : std_logic;
SIGNAL \outMux[11]~output_o\ : std_logic;
SIGNAL \outMux[12]~output_o\ : std_logic;
SIGNAL \outMux[13]~output_o\ : std_logic;
SIGNAL \outMux[14]~output_o\ : std_logic;
SIGNAL \outMux[15]~output_o\ : std_logic;
SIGNAL \outMux[16]~output_o\ : std_logic;
SIGNAL \outMux[17]~output_o\ : std_logic;
SIGNAL \outMux[18]~output_o\ : std_logic;
SIGNAL \outMux[19]~output_o\ : std_logic;
SIGNAL \outMux[20]~output_o\ : std_logic;
SIGNAL \outMux[21]~output_o\ : std_logic;
SIGNAL \outMux[22]~output_o\ : std_logic;
SIGNAL \outMux[23]~output_o\ : std_logic;
SIGNAL \outMux[24]~output_o\ : std_logic;
SIGNAL \outMux[25]~output_o\ : std_logic;
SIGNAL \outMux[26]~output_o\ : std_logic;
SIGNAL \outMux[27]~output_o\ : std_logic;
SIGNAL \outMux[28]~output_o\ : std_logic;
SIGNAL \outMux[29]~output_o\ : std_logic;
SIGNAL \outMux[30]~output_o\ : std_logic;
SIGNAL \outMux[31]~output_o\ : std_logic;
SIGNAL \selection[0]~input_o\ : std_logic;
SIGNAL \selection[1]~input_o\ : std_logic;
SIGNAL \inB[0]~input_o\ : std_logic;
SIGNAL \inC[0]~input_o\ : std_logic;
SIGNAL \outMux~0_combout\ : std_logic;
SIGNAL \outMux~1_combout\ : std_logic;
SIGNAL \inB[1]~input_o\ : std_logic;
SIGNAL \inC[1]~input_o\ : std_logic;
SIGNAL \outMux~2_combout\ : std_logic;
SIGNAL \outMux~3_combout\ : std_logic;
SIGNAL \inC[2]~input_o\ : std_logic;
SIGNAL \inA[2]~input_o\ : std_logic;
SIGNAL \outMux~4_combout\ : std_logic;
SIGNAL \inB[2]~input_o\ : std_logic;
SIGNAL \outMux~5_combout\ : std_logic;
SIGNAL \inA[3]~input_o\ : std_logic;
SIGNAL \outMux~6_combout\ : std_logic;
SIGNAL \inB[3]~input_o\ : std_logic;
SIGNAL \outMux~7_combout\ : std_logic;
SIGNAL \inA[4]~input_o\ : std_logic;
SIGNAL \inC[4]~input_o\ : std_logic;
SIGNAL \outMux~8_combout\ : std_logic;
SIGNAL \inB[4]~input_o\ : std_logic;
SIGNAL \outMux~9_combout\ : std_logic;
SIGNAL \inA[5]~input_o\ : std_logic;
SIGNAL \outMux~10_combout\ : std_logic;
SIGNAL \inB[5]~input_o\ : std_logic;
SIGNAL \outMux~11_combout\ : std_logic;
SIGNAL \inB[6]~input_o\ : std_logic;
SIGNAL \inA[6]~input_o\ : std_logic;
SIGNAL \outMux~12_combout\ : std_logic;
SIGNAL \outMux~13_combout\ : std_logic;
SIGNAL \inB[7]~input_o\ : std_logic;
SIGNAL \inC[7]~input_o\ : std_logic;
SIGNAL \inA[7]~input_o\ : std_logic;
SIGNAL \outMux~14_combout\ : std_logic;
SIGNAL \outMux~15_combout\ : std_logic;
SIGNAL \inC[8]~input_o\ : std_logic;
SIGNAL \inA[8]~input_o\ : std_logic;
SIGNAL \outMux~16_combout\ : std_logic;
SIGNAL \inB[8]~input_o\ : std_logic;
SIGNAL \outMux~17_combout\ : std_logic;
SIGNAL \inB[9]~input_o\ : std_logic;
SIGNAL \inA[9]~input_o\ : std_logic;
SIGNAL \inC[9]~input_o\ : std_logic;
SIGNAL \outMux~18_combout\ : std_logic;
SIGNAL \outMux~19_combout\ : std_logic;
SIGNAL \inC[10]~input_o\ : std_logic;
SIGNAL \inA[10]~input_o\ : std_logic;
SIGNAL \outMux~20_combout\ : std_logic;
SIGNAL \inB[10]~input_o\ : std_logic;
SIGNAL \outMux~21_combout\ : std_logic;
SIGNAL \inA[11]~input_o\ : std_logic;
SIGNAL \inC[11]~input_o\ : std_logic;
SIGNAL \outMux~22_combout\ : std_logic;
SIGNAL \inB[11]~input_o\ : std_logic;
SIGNAL \outMux~23_combout\ : std_logic;
SIGNAL \inA[12]~input_o\ : std_logic;
SIGNAL \inC[12]~input_o\ : std_logic;
SIGNAL \outMux~24_combout\ : std_logic;
SIGNAL \inB[12]~input_o\ : std_logic;
SIGNAL \outMux~25_combout\ : std_logic;
SIGNAL \inC[13]~input_o\ : std_logic;
SIGNAL \inA[13]~input_o\ : std_logic;
SIGNAL \outMux~26_combout\ : std_logic;
SIGNAL \inB[13]~input_o\ : std_logic;
SIGNAL \outMux~27_combout\ : std_logic;
SIGNAL \inB[14]~input_o\ : std_logic;
SIGNAL \inC[14]~input_o\ : std_logic;
SIGNAL \inA[14]~input_o\ : std_logic;
SIGNAL \outMux~28_combout\ : std_logic;
SIGNAL \outMux~29_combout\ : std_logic;
SIGNAL \inB[15]~input_o\ : std_logic;
SIGNAL \inA[15]~input_o\ : std_logic;
SIGNAL \inC[15]~input_o\ : std_logic;
SIGNAL \outMux~30_combout\ : std_logic;
SIGNAL \outMux~31_combout\ : std_logic;
SIGNAL \inB[16]~input_o\ : std_logic;
SIGNAL \inC[16]~input_o\ : std_logic;
SIGNAL \outMux~32_combout\ : std_logic;
SIGNAL \outMux~33_combout\ : std_logic;
SIGNAL \inB[17]~input_o\ : std_logic;
SIGNAL \inA[17]~input_o\ : std_logic;
SIGNAL \inC[17]~input_o\ : std_logic;
SIGNAL \outMux~34_combout\ : std_logic;
SIGNAL \outMux~35_combout\ : std_logic;
SIGNAL \inC[18]~input_o\ : std_logic;
SIGNAL \inA[18]~input_o\ : std_logic;
SIGNAL \outMux~36_combout\ : std_logic;
SIGNAL \inB[18]~input_o\ : std_logic;
SIGNAL \outMux~37_combout\ : std_logic;
SIGNAL \inC[19]~input_o\ : std_logic;
SIGNAL \outMux~38_combout\ : std_logic;
SIGNAL \inB[19]~input_o\ : std_logic;
SIGNAL \outMux~39_combout\ : std_logic;
SIGNAL \inB[20]~input_o\ : std_logic;
SIGNAL \inA[20]~input_o\ : std_logic;
SIGNAL \inC[20]~input_o\ : std_logic;
SIGNAL \outMux~40_combout\ : std_logic;
SIGNAL \outMux~41_combout\ : std_logic;
SIGNAL \inB[21]~input_o\ : std_logic;
SIGNAL \inA[21]~input_o\ : std_logic;
SIGNAL \inC[21]~input_o\ : std_logic;
SIGNAL \outMux~42_combout\ : std_logic;
SIGNAL \outMux~43_combout\ : std_logic;
SIGNAL \inB[22]~input_o\ : std_logic;
SIGNAL \inC[22]~input_o\ : std_logic;
SIGNAL \inA[22]~input_o\ : std_logic;
SIGNAL \outMux~44_combout\ : std_logic;
SIGNAL \outMux~45_combout\ : std_logic;
SIGNAL \inA[23]~input_o\ : std_logic;
SIGNAL \outMux~46_combout\ : std_logic;
SIGNAL \inB[23]~input_o\ : std_logic;
SIGNAL \outMux~47_combout\ : std_logic;
SIGNAL \inC[24]~input_o\ : std_logic;
SIGNAL \inA[24]~input_o\ : std_logic;
SIGNAL \outMux~48_combout\ : std_logic;
SIGNAL \inB[24]~input_o\ : std_logic;
SIGNAL \outMux~49_combout\ : std_logic;
SIGNAL \inB[25]~input_o\ : std_logic;
SIGNAL \inA[25]~input_o\ : std_logic;
SIGNAL \inC[25]~input_o\ : std_logic;
SIGNAL \outMux~50_combout\ : std_logic;
SIGNAL \outMux~51_combout\ : std_logic;
SIGNAL \inA[26]~input_o\ : std_logic;
SIGNAL \outMux~52_combout\ : std_logic;
SIGNAL \inB[26]~input_o\ : std_logic;
SIGNAL \outMux~53_combout\ : std_logic;
SIGNAL \inB[27]~input_o\ : std_logic;
SIGNAL \inA[27]~input_o\ : std_logic;
SIGNAL \outMux~54_combout\ : std_logic;
SIGNAL \outMux~55_combout\ : std_logic;
SIGNAL \inB[28]~input_o\ : std_logic;
SIGNAL \inC[28]~input_o\ : std_logic;
SIGNAL \outMux~56_combout\ : std_logic;
SIGNAL \outMux~57_combout\ : std_logic;
SIGNAL \inA[29]~input_o\ : std_logic;
SIGNAL \outMux~58_combout\ : std_logic;
SIGNAL \inB[29]~input_o\ : std_logic;
SIGNAL \outMux~59_combout\ : std_logic;
SIGNAL \inB[30]~input_o\ : std_logic;
SIGNAL \inC[30]~input_o\ : std_logic;
SIGNAL \inA[30]~input_o\ : std_logic;
SIGNAL \outMux~60_combout\ : std_logic;
SIGNAL \outMux~61_combout\ : std_logic;
SIGNAL \inB[31]~input_o\ : std_logic;
SIGNAL \inC[31]~input_o\ : std_logic;
SIGNAL \outMux~62_combout\ : std_logic;
SIGNAL \outMux~63_combout\ : std_logic;

BEGIN

ww_selection <= selection;
ww_inA <= inA;
ww_inB <= inB;
ww_inC <= inC;
outMux <= ww_outMux;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X24_Y67_N1
\inA[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(0),
	o => \inA[0]~input_o\);

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

-- Location: IOIBUF_X26_Y0_N1
\inC[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(3),
	o => \inC[3]~input_o\);

-- Location: IOIBUF_X22_Y67_N1
\inC[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(5),
	o => \inC[5]~input_o\);

-- Location: IOIBUF_X22_Y67_N8
\inC[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(6),
	o => \inC[6]~input_o\);

-- Location: IOIBUF_X61_Y67_N1
\inA[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(16),
	o => \inA[16]~input_o\);

-- Location: IOIBUF_X65_Y67_N1
\inA[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(19),
	o => \inA[19]~input_o\);

-- Location: IOIBUF_X54_Y67_N15
\inC[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(23),
	o => \inC[23]~input_o\);

-- Location: IOIBUF_X52_Y67_N15
\inC[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(26),
	o => \inC[26]~input_o\);

-- Location: IOIBUF_X54_Y67_N1
\inC[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(27),
	o => \inC[27]~input_o\);

-- Location: IOIBUF_X49_Y67_N15
\inA[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(28),
	o => \inA[28]~input_o\);

-- Location: IOIBUF_X52_Y67_N22
\inC[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(29),
	o => \inC[29]~input_o\);

-- Location: IOIBUF_X61_Y67_N8
\inA[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(31),
	o => \inA[31]~input_o\);

-- Location: IOOBUF_X19_Y67_N23
\outMux[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~1_combout\,
	devoe => ww_devoe,
	o => \outMux[0]~output_o\);

-- Location: IOOBUF_X29_Y67_N23
\outMux[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~3_combout\,
	devoe => ww_devoe,
	o => \outMux[1]~output_o\);

-- Location: IOOBUF_X26_Y67_N23
\outMux[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~5_combout\,
	devoe => ww_devoe,
	o => \outMux[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\outMux[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~7_combout\,
	devoe => ww_devoe,
	o => \outMux[3]~output_o\);

-- Location: IOOBUF_X13_Y67_N9
\outMux[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~9_combout\,
	devoe => ww_devoe,
	o => \outMux[4]~output_o\);

-- Location: IOOBUF_X19_Y67_N2
\outMux[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~11_combout\,
	devoe => ww_devoe,
	o => \outMux[5]~output_o\);

-- Location: IOOBUF_X17_Y67_N9
\outMux[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~13_combout\,
	devoe => ww_devoe,
	o => \outMux[6]~output_o\);

-- Location: IOOBUF_X19_Y67_N16
\outMux[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~15_combout\,
	devoe => ww_devoe,
	o => \outMux[7]~output_o\);

-- Location: IOOBUF_X81_Y46_N9
\outMux[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~17_combout\,
	devoe => ww_devoe,
	o => \outMux[8]~output_o\);

-- Location: IOOBUF_X81_Y52_N9
\outMux[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~19_combout\,
	devoe => ww_devoe,
	o => \outMux[9]~output_o\);

-- Location: IOOBUF_X81_Y55_N9
\outMux[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~21_combout\,
	devoe => ww_devoe,
	o => \outMux[10]~output_o\);

-- Location: IOOBUF_X81_Y56_N9
\outMux[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~23_combout\,
	devoe => ww_devoe,
	o => \outMux[11]~output_o\);

-- Location: IOOBUF_X81_Y59_N16
\outMux[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~25_combout\,
	devoe => ww_devoe,
	o => \outMux[12]~output_o\);

-- Location: IOOBUF_X81_Y25_N2
\outMux[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~27_combout\,
	devoe => ww_devoe,
	o => \outMux[13]~output_o\);

-- Location: IOOBUF_X81_Y46_N2
\outMux[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~29_combout\,
	devoe => ww_devoe,
	o => \outMux[14]~output_o\);

-- Location: IOOBUF_X81_Y49_N16
\outMux[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~31_combout\,
	devoe => ww_devoe,
	o => \outMux[15]~output_o\);

-- Location: IOOBUF_X58_Y67_N2
\outMux[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~33_combout\,
	devoe => ww_devoe,
	o => \outMux[16]~output_o\);

-- Location: IOOBUF_X70_Y67_N23
\outMux[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~35_combout\,
	devoe => ww_devoe,
	o => \outMux[17]~output_o\);

-- Location: IOOBUF_X68_Y67_N2
\outMux[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~37_combout\,
	devoe => ww_devoe,
	o => \outMux[18]~output_o\);

-- Location: IOOBUF_X63_Y67_N2
\outMux[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~39_combout\,
	devoe => ww_devoe,
	o => \outMux[19]~output_o\);

-- Location: IOOBUF_X58_Y67_N9
\outMux[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~41_combout\,
	devoe => ww_devoe,
	o => \outMux[20]~output_o\);

-- Location: IOOBUF_X81_Y65_N23
\outMux[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~43_combout\,
	devoe => ww_devoe,
	o => \outMux[21]~output_o\);

-- Location: IOOBUF_X58_Y67_N23
\outMux[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~45_combout\,
	devoe => ww_devoe,
	o => \outMux[22]~output_o\);

-- Location: IOOBUF_X33_Y67_N9
\outMux[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~47_combout\,
	devoe => ww_devoe,
	o => \outMux[23]~output_o\);

-- Location: IOOBUF_X47_Y67_N9
\outMux[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~49_combout\,
	devoe => ww_devoe,
	o => \outMux[24]~output_o\);

-- Location: IOOBUF_X42_Y0_N2
\outMux[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~51_combout\,
	devoe => ww_devoe,
	o => \outMux[25]~output_o\);

-- Location: IOOBUF_X52_Y67_N2
\outMux[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~53_combout\,
	devoe => ww_devoe,
	o => \outMux[26]~output_o\);

-- Location: IOOBUF_X47_Y67_N2
\outMux[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~55_combout\,
	devoe => ww_devoe,
	o => \outMux[27]~output_o\);

-- Location: IOOBUF_X33_Y67_N23
\outMux[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~57_combout\,
	devoe => ww_devoe,
	o => \outMux[28]~output_o\);

-- Location: IOOBUF_X56_Y67_N16
\outMux[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~59_combout\,
	devoe => ww_devoe,
	o => \outMux[29]~output_o\);

-- Location: IOOBUF_X42_Y0_N9
\outMux[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~61_combout\,
	devoe => ww_devoe,
	o => \outMux[30]~output_o\);

-- Location: IOOBUF_X81_Y62_N2
\outMux[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outMux~63_combout\,
	devoe => ww_devoe,
	o => \outMux[31]~output_o\);

-- Location: IOIBUF_X54_Y67_N22
\selection[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selection(0),
	o => \selection[0]~input_o\);

-- Location: IOIBUF_X31_Y67_N1
\selection[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selection(1),
	o => \selection[1]~input_o\);

-- Location: IOIBUF_X26_Y67_N15
\inB[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(0),
	o => \inB[0]~input_o\);

-- Location: IOIBUF_X17_Y67_N1
\inC[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(0),
	o => \inC[0]~input_o\);

-- Location: LCCOMB_X25_Y66_N16
\outMux~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~0_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & ((\inC[0]~input_o\))) # (!\selection[1]~input_o\ & (\inA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[0]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \inC[0]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~0_combout\);

-- Location: LCCOMB_X25_Y66_N2
\outMux~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~1_combout\ = (\outMux~0_combout\) # ((\selection[0]~input_o\ & (!\selection[1]~input_o\ & \inB[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \inB[0]~input_o\,
	datad => \outMux~0_combout\,
	combout => \outMux~1_combout\);

-- Location: IOIBUF_X31_Y67_N8
\inB[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(1),
	o => \inB[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\inC[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(1),
	o => \inC[1]~input_o\);

-- Location: LCCOMB_X25_Y66_N4
\outMux~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~2_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & ((\inC[1]~input_o\))) # (!\selection[1]~input_o\ & (\inA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[1]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \inC[1]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~2_combout\);

-- Location: LCCOMB_X25_Y66_N6
\outMux~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~3_combout\ = (\outMux~2_combout\) # ((\inB[1]~input_o\ & (!\selection[1]~input_o\ & \selection[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inB[1]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \outMux~2_combout\,
	datad => \selection[0]~input_o\,
	combout => \outMux~3_combout\);

-- Location: IOIBUF_X17_Y67_N15
\inC[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(2),
	o => \inC[2]~input_o\);

-- Location: IOIBUF_X15_Y67_N8
\inA[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(2),
	o => \inA[2]~input_o\);

-- Location: LCCOMB_X25_Y66_N0
\outMux~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~4_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\inC[2]~input_o\)) # (!\selection[1]~input_o\ & ((\inA[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \inC[2]~input_o\,
	datac => \inA[2]~input_o\,
	datad => \selection[1]~input_o\,
	combout => \outMux~4_combout\);

-- Location: IOIBUF_X24_Y67_N22
\inB[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(2),
	o => \inB[2]~input_o\);

-- Location: LCCOMB_X25_Y66_N18
\outMux~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~5_combout\ = (\outMux~4_combout\) # ((\selection[0]~input_o\ & (\inB[2]~input_o\ & !\selection[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \outMux~4_combout\,
	datac => \inB[2]~input_o\,
	datad => \selection[1]~input_o\,
	combout => \outMux~5_combout\);

-- Location: IOIBUF_X81_Y34_N8
\inA[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(3),
	o => \inA[3]~input_o\);

-- Location: LCCOMB_X25_Y66_N12
\outMux~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~6_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\inC[3]~input_o\)) # (!\selection[1]~input_o\ & ((\inA[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inC[3]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \inA[3]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~6_combout\);

-- Location: IOIBUF_X81_Y34_N1
\inB[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(3),
	o => \inB[3]~input_o\);

-- Location: LCCOMB_X25_Y66_N22
\outMux~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~7_combout\ = (\outMux~6_combout\) # ((!\selection[1]~input_o\ & (\inB[3]~input_o\ & \selection[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outMux~6_combout\,
	datab => \selection[1]~input_o\,
	datac => \inB[3]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~7_combout\);

-- Location: IOIBUF_X29_Y67_N15
\inA[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(4),
	o => \inA[4]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\inC[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(4),
	o => \inC[4]~input_o\);

-- Location: LCCOMB_X25_Y66_N24
\outMux~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~8_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & ((\inC[4]~input_o\))) # (!\selection[1]~input_o\ & (\inA[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \inA[4]~input_o\,
	datac => \inC[4]~input_o\,
	datad => \selection[1]~input_o\,
	combout => \outMux~8_combout\);

-- Location: IOIBUF_X29_Y67_N8
\inB[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(4),
	o => \inB[4]~input_o\);

-- Location: LCCOMB_X25_Y66_N26
\outMux~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~9_combout\ = (\outMux~8_combout\) # ((\selection[0]~input_o\ & (\inB[4]~input_o\ & !\selection[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \outMux~8_combout\,
	datac => \inB[4]~input_o\,
	datad => \selection[1]~input_o\,
	combout => \outMux~9_combout\);

-- Location: IOIBUF_X24_Y67_N8
\inA[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(5),
	o => \inA[5]~input_o\);

-- Location: LCCOMB_X25_Y66_N28
\outMux~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~10_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\inC[5]~input_o\)) # (!\selection[1]~input_o\ & ((\inA[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inC[5]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \inA[5]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~10_combout\);

-- Location: IOIBUF_X17_Y67_N22
\inB[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(5),
	o => \inB[5]~input_o\);

-- Location: LCCOMB_X25_Y66_N30
\outMux~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~11_combout\ = (\outMux~10_combout\) # ((\selection[0]~input_o\ & (\inB[5]~input_o\ & !\selection[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \outMux~10_combout\,
	datac => \inB[5]~input_o\,
	datad => \selection[1]~input_o\,
	combout => \outMux~11_combout\);

-- Location: IOIBUF_X29_Y67_N1
\inB[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(6),
	o => \inB[6]~input_o\);

-- Location: IOIBUF_X26_Y67_N1
\inA[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(6),
	o => \inA[6]~input_o\);

-- Location: LCCOMB_X25_Y66_N8
\outMux~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~12_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\inC[6]~input_o\)) # (!\selection[1]~input_o\ & ((\inA[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inC[6]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \inA[6]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~12_combout\);

-- Location: LCCOMB_X25_Y66_N10
\outMux~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~13_combout\ = (\outMux~12_combout\) # ((\selection[0]~input_o\ & (\inB[6]~input_o\ & !\selection[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \inB[6]~input_o\,
	datac => \outMux~12_combout\,
	datad => \selection[1]~input_o\,
	combout => \outMux~13_combout\);

-- Location: IOIBUF_X24_Y67_N15
\inB[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(7),
	o => \inB[7]~input_o\);

-- Location: IOIBUF_X26_Y67_N8
\inC[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(7),
	o => \inC[7]~input_o\);

-- Location: IOIBUF_X19_Y67_N8
\inA[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(7),
	o => \inA[7]~input_o\);

-- Location: LCCOMB_X25_Y66_N20
\outMux~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~14_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\inC[7]~input_o\)) # (!\selection[1]~input_o\ & ((\inA[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \inC[7]~input_o\,
	datac => \inA[7]~input_o\,
	datad => \selection[1]~input_o\,
	combout => \outMux~14_combout\);

-- Location: LCCOMB_X25_Y66_N14
\outMux~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~15_combout\ = (\outMux~14_combout\) # ((\selection[0]~input_o\ & (!\selection[1]~input_o\ & \inB[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \inB[7]~input_o\,
	datad => \outMux~14_combout\,
	combout => \outMux~15_combout\);

-- Location: IOIBUF_X81_Y50_N8
\inC[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(8),
	o => \inC[8]~input_o\);

-- Location: IOIBUF_X81_Y53_N1
\inA[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(8),
	o => \inA[8]~input_o\);

-- Location: LCCOMB_X80_Y50_N0
\outMux~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~16_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\inC[8]~input_o\)) # (!\selection[1]~input_o\ & ((\inA[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \inC[8]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \inA[8]~input_o\,
	combout => \outMux~16_combout\);

-- Location: IOIBUF_X81_Y26_N8
\inB[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(8),
	o => \inB[8]~input_o\);

-- Location: LCCOMB_X80_Y50_N18
\outMux~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~17_combout\ = (\outMux~16_combout\) # ((!\selection[1]~input_o\ & (\selection[0]~input_o\ & \inB[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \outMux~16_combout\,
	datac => \selection[0]~input_o\,
	datad => \inB[8]~input_o\,
	combout => \outMux~17_combout\);

-- Location: IOIBUF_X81_Y26_N1
\inB[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(9),
	o => \inB[9]~input_o\);

-- Location: IOIBUF_X81_Y42_N1
\inA[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(9),
	o => \inA[9]~input_o\);

-- Location: IOIBUF_X81_Y47_N8
\inC[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(9),
	o => \inC[9]~input_o\);

-- Location: LCCOMB_X80_Y50_N12
\outMux~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~18_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & ((\inC[9]~input_o\))) # (!\selection[1]~input_o\ & (\inA[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \inA[9]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \inC[9]~input_o\,
	combout => \outMux~18_combout\);

-- Location: LCCOMB_X80_Y50_N22
\outMux~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~19_combout\ = (\outMux~18_combout\) # ((!\selection[1]~input_o\ & (\selection[0]~input_o\ & \inB[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \selection[0]~input_o\,
	datac => \inB[9]~input_o\,
	datad => \outMux~18_combout\,
	combout => \outMux~19_combout\);

-- Location: IOIBUF_X81_Y52_N15
\inC[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(10),
	o => \inC[10]~input_o\);

-- Location: IOIBUF_X81_Y58_N1
\inA[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(10),
	o => \inA[10]~input_o\);

-- Location: LCCOMB_X80_Y50_N8
\outMux~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~20_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\inC[10]~input_o\)) # (!\selection[1]~input_o\ & ((\inA[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \inC[10]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \inA[10]~input_o\,
	combout => \outMux~20_combout\);

-- Location: IOIBUF_X81_Y47_N1
\inB[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(10),
	o => \inB[10]~input_o\);

-- Location: LCCOMB_X80_Y50_N2
\outMux~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~21_combout\ = (\outMux~20_combout\) # ((!\selection[1]~input_o\ & (\selection[0]~input_o\ & \inB[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \outMux~20_combout\,
	datac => \selection[0]~input_o\,
	datad => \inB[10]~input_o\,
	combout => \outMux~21_combout\);

-- Location: IOIBUF_X81_Y49_N1
\inA[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(11),
	o => \inA[11]~input_o\);

-- Location: IOIBUF_X81_Y52_N1
\inC[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(11),
	o => \inC[11]~input_o\);

-- Location: LCCOMB_X80_Y50_N4
\outMux~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~22_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & ((\inC[11]~input_o\))) # (!\selection[1]~input_o\ & (\inA[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \inA[11]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \inC[11]~input_o\,
	combout => \outMux~22_combout\);

-- Location: IOIBUF_X81_Y55_N1
\inB[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(11),
	o => \inB[11]~input_o\);

-- Location: LCCOMB_X80_Y50_N14
\outMux~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~23_combout\ = (\outMux~22_combout\) # ((!\selection[1]~input_o\ & (\selection[0]~input_o\ & \inB[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \outMux~22_combout\,
	datac => \selection[0]~input_o\,
	datad => \inB[11]~input_o\,
	combout => \outMux~23_combout\);

-- Location: IOIBUF_X81_Y39_N1
\inA[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(12),
	o => \inA[12]~input_o\);

-- Location: IOIBUF_X81_Y44_N8
\inC[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(12),
	o => \inC[12]~input_o\);

-- Location: LCCOMB_X80_Y50_N16
\outMux~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~24_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & ((\inC[12]~input_o\))) # (!\selection[1]~input_o\ & (\inA[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \inA[12]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \inC[12]~input_o\,
	combout => \outMux~24_combout\);

-- Location: IOIBUF_X81_Y42_N8
\inB[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(12),
	o => \inB[12]~input_o\);

-- Location: LCCOMB_X80_Y50_N26
\outMux~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~25_combout\ = (\outMux~24_combout\) # ((!\selection[1]~input_o\ & (\selection[0]~input_o\ & \inB[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \outMux~24_combout\,
	datac => \selection[0]~input_o\,
	datad => \inB[12]~input_o\,
	combout => \outMux~25_combout\);

-- Location: IOIBUF_X81_Y56_N1
\inC[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(13),
	o => \inC[13]~input_o\);

-- Location: IOIBUF_X81_Y43_N1
\inA[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(13),
	o => \inA[13]~input_o\);

-- Location: LCCOMB_X80_Y50_N20
\outMux~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~26_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\inC[13]~input_o\)) # (!\selection[1]~input_o\ & ((\inA[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \selection[0]~input_o\,
	datac => \inC[13]~input_o\,
	datad => \inA[13]~input_o\,
	combout => \outMux~26_combout\);

-- Location: IOIBUF_X81_Y50_N1
\inB[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(13),
	o => \inB[13]~input_o\);

-- Location: LCCOMB_X80_Y50_N6
\outMux~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~27_combout\ = (\outMux~26_combout\) # ((!\selection[1]~input_o\ & (\selection[0]~input_o\ & \inB[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \outMux~26_combout\,
	datac => \selection[0]~input_o\,
	datad => \inB[13]~input_o\,
	combout => \outMux~27_combout\);

-- Location: IOIBUF_X81_Y41_N1
\inB[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(14),
	o => \inB[14]~input_o\);

-- Location: IOIBUF_X81_Y39_N8
\inC[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(14),
	o => \inC[14]~input_o\);

-- Location: IOIBUF_X81_Y44_N1
\inA[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(14),
	o => \inA[14]~input_o\);

-- Location: LCCOMB_X80_Y50_N24
\outMux~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~28_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\inC[14]~input_o\)) # (!\selection[1]~input_o\ & ((\inA[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \inC[14]~input_o\,
	datac => \inA[14]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~28_combout\);

-- Location: LCCOMB_X80_Y50_N10
\outMux~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~29_combout\ = (\outMux~28_combout\) # ((!\selection[1]~input_o\ & (\selection[0]~input_o\ & \inB[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \selection[0]~input_o\,
	datac => \inB[14]~input_o\,
	datad => \outMux~28_combout\,
	combout => \outMux~29_combout\);

-- Location: IOIBUF_X81_Y49_N8
\inB[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(15),
	o => \inB[15]~input_o\);

-- Location: IOIBUF_X81_Y46_N15
\inA[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(15),
	o => \inA[15]~input_o\);

-- Location: IOIBUF_X81_Y53_N8
\inC[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(15),
	o => \inC[15]~input_o\);

-- Location: LCCOMB_X80_Y50_N28
\outMux~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~30_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & ((\inC[15]~input_o\))) # (!\selection[1]~input_o\ & (\inA[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \inA[15]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \inC[15]~input_o\,
	combout => \outMux~30_combout\);

-- Location: LCCOMB_X80_Y50_N30
\outMux~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~31_combout\ = (\outMux~30_combout\) # ((!\selection[1]~input_o\ & (\selection[0]~input_o\ & \inB[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \selection[0]~input_o\,
	datac => \inB[15]~input_o\,
	datad => \outMux~30_combout\,
	combout => \outMux~31_combout\);

-- Location: IOIBUF_X81_Y64_N8
\inB[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(16),
	o => \inB[16]~input_o\);

-- Location: IOIBUF_X81_Y64_N22
\inC[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(16),
	o => \inC[16]~input_o\);

-- Location: LCCOMB_X73_Y66_N0
\outMux~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~32_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & ((\inC[16]~input_o\))) # (!\selection[1]~input_o\ & (\inA[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[16]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \inC[16]~input_o\,
	combout => \outMux~32_combout\);

-- Location: LCCOMB_X73_Y66_N18
\outMux~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~33_combout\ = (\outMux~32_combout\) # ((\selection[0]~input_o\ & (!\selection[1]~input_o\ & \inB[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \inB[16]~input_o\,
	datad => \outMux~32_combout\,
	combout => \outMux~33_combout\);

-- Location: IOIBUF_X63_Y67_N15
\inB[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(17),
	o => \inB[17]~input_o\);

-- Location: IOIBUF_X81_Y65_N15
\inA[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(17),
	o => \inA[17]~input_o\);

-- Location: IOIBUF_X70_Y67_N15
\inC[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(17),
	o => \inC[17]~input_o\);

-- Location: LCCOMB_X73_Y66_N12
\outMux~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~34_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & ((\inC[17]~input_o\))) # (!\selection[1]~input_o\ & (\inA[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \inA[17]~input_o\,
	datad => \inC[17]~input_o\,
	combout => \outMux~34_combout\);

-- Location: LCCOMB_X73_Y66_N22
\outMux~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~35_combout\ = (\outMux~34_combout\) # ((\inB[17]~input_o\ & (!\selection[1]~input_o\ & \selection[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inB[17]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \outMux~34_combout\,
	combout => \outMux~35_combout\);

-- Location: IOIBUF_X81_Y65_N1
\inC[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(18),
	o => \inC[18]~input_o\);

-- Location: IOIBUF_X70_Y67_N8
\inA[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(18),
	o => \inA[18]~input_o\);

-- Location: LCCOMB_X73_Y66_N8
\outMux~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~36_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\inC[18]~input_o\)) # (!\selection[1]~input_o\ & ((\inA[18]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \inC[18]~input_o\,
	datad => \inA[18]~input_o\,
	combout => \outMux~36_combout\);

-- Location: IOIBUF_X81_Y58_N8
\inB[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(18),
	o => \inB[18]~input_o\);

-- Location: LCCOMB_X73_Y66_N2
\outMux~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~37_combout\ = (\outMux~36_combout\) # ((\selection[0]~input_o\ & (!\selection[1]~input_o\ & \inB[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \outMux~36_combout\,
	datad => \inB[18]~input_o\,
	combout => \outMux~37_combout\);

-- Location: IOIBUF_X70_Y67_N1
\inC[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(19),
	o => \inC[19]~input_o\);

-- Location: LCCOMB_X73_Y66_N4
\outMux~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~38_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & ((\inC[19]~input_o\))) # (!\selection[1]~input_o\ & (\inA[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[19]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \inC[19]~input_o\,
	combout => \outMux~38_combout\);

-- Location: IOIBUF_X63_Y67_N8
\inB[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(19),
	o => \inB[19]~input_o\);

-- Location: LCCOMB_X73_Y66_N14
\outMux~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~39_combout\ = (\outMux~38_combout\) # ((\selection[0]~input_o\ & (!\selection[1]~input_o\ & \inB[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \outMux~38_combout\,
	datad => \inB[19]~input_o\,
	combout => \outMux~39_combout\);

-- Location: IOIBUF_X65_Y67_N8
\inB[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(20),
	o => \inB[20]~input_o\);

-- Location: IOIBUF_X81_Y63_N1
\inA[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(20),
	o => \inA[20]~input_o\);

-- Location: IOIBUF_X81_Y61_N8
\inC[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(20),
	o => \inC[20]~input_o\);

-- Location: LCCOMB_X73_Y66_N16
\outMux~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~40_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & ((\inC[20]~input_o\))) # (!\selection[1]~input_o\ & (\inA[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \inA[20]~input_o\,
	datad => \inC[20]~input_o\,
	combout => \outMux~40_combout\);

-- Location: LCCOMB_X73_Y66_N26
\outMux~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~41_combout\ = (\outMux~40_combout\) # ((\inB[20]~input_o\ & (!\selection[1]~input_o\ & \selection[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inB[20]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \outMux~40_combout\,
	combout => \outMux~41_combout\);

-- Location: IOIBUF_X81_Y61_N15
\inB[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(21),
	o => \inB[21]~input_o\);

-- Location: IOIBUF_X81_Y65_N8
\inA[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(21),
	o => \inA[21]~input_o\);

-- Location: IOIBUF_X81_Y64_N15
\inC[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(21),
	o => \inC[21]~input_o\);

-- Location: LCCOMB_X73_Y66_N20
\outMux~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~42_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & ((\inC[21]~input_o\))) # (!\selection[1]~input_o\ & (\inA[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \inA[21]~input_o\,
	datad => \inC[21]~input_o\,
	combout => \outMux~42_combout\);

-- Location: LCCOMB_X73_Y66_N30
\outMux~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~43_combout\ = (\outMux~42_combout\) # ((\selection[0]~input_o\ & (!\selection[1]~input_o\ & \inB[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \inB[21]~input_o\,
	datad => \outMux~42_combout\,
	combout => \outMux~43_combout\);

-- Location: IOIBUF_X81_Y62_N15
\inB[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(22),
	o => \inB[22]~input_o\);

-- Location: IOIBUF_X81_Y61_N1
\inC[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(22),
	o => \inC[22]~input_o\);

-- Location: IOIBUF_X81_Y64_N1
\inA[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(22),
	o => \inA[22]~input_o\);

-- Location: LCCOMB_X73_Y66_N24
\outMux~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~44_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\inC[22]~input_o\)) # (!\selection[1]~input_o\ & ((\inA[22]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \inC[22]~input_o\,
	datad => \inA[22]~input_o\,
	combout => \outMux~44_combout\);

-- Location: LCCOMB_X73_Y66_N10
\outMux~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~45_combout\ = (\outMux~44_combout\) # ((\inB[22]~input_o\ & (!\selection[1]~input_o\ & \selection[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inB[22]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \outMux~44_combout\,
	combout => \outMux~45_combout\);

-- Location: IOIBUF_X44_Y67_N22
\inA[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(23),
	o => \inA[23]~input_o\);

-- Location: LCCOMB_X44_Y66_N24
\outMux~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~46_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\inC[23]~input_o\)) # (!\selection[1]~input_o\ & ((\inA[23]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inC[23]~input_o\,
	datab => \inA[23]~input_o\,
	datac => \selection[1]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~46_combout\);

-- Location: IOIBUF_X52_Y67_N8
\inB[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(23),
	o => \inB[23]~input_o\);

-- Location: LCCOMB_X44_Y66_N2
\outMux~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~47_combout\ = (\outMux~46_combout\) # ((!\selection[1]~input_o\ & (\inB[23]~input_o\ & \selection[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \outMux~46_combout\,
	datac => \inB[23]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~47_combout\);

-- Location: IOIBUF_X49_Y67_N22
\inC[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(24),
	o => \inC[24]~input_o\);

-- Location: IOIBUF_X44_Y0_N8
\inA[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(24),
	o => \inA[24]~input_o\);

-- Location: LCCOMB_X44_Y66_N20
\outMux~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~48_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\inC[24]~input_o\)) # (!\selection[1]~input_o\ & ((\inA[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \inC[24]~input_o\,
	datac => \inA[24]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~48_combout\);

-- Location: IOIBUF_X56_Y67_N8
\inB[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(24),
	o => \inB[24]~input_o\);

-- Location: LCCOMB_X44_Y66_N6
\outMux~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~49_combout\ = (\outMux~48_combout\) # ((\selection[0]~input_o\ & (!\selection[1]~input_o\ & \inB[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \outMux~48_combout\,
	datac => \selection[1]~input_o\,
	datad => \inB[24]~input_o\,
	combout => \outMux~49_combout\);

-- Location: IOIBUF_X44_Y67_N8
\inB[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(25),
	o => \inB[25]~input_o\);

-- Location: IOIBUF_X56_Y67_N1
\inA[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(25),
	o => \inA[25]~input_o\);

-- Location: IOIBUF_X44_Y0_N22
\inC[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(25),
	o => \inC[25]~input_o\);

-- Location: LCCOMB_X44_Y66_N0
\outMux~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~50_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & ((\inC[25]~input_o\))) # (!\selection[1]~input_o\ & (\inA[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \inA[25]~input_o\,
	datac => \inC[25]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~50_combout\);

-- Location: LCCOMB_X44_Y66_N18
\outMux~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~51_combout\ = (\outMux~50_combout\) # ((\inB[25]~input_o\ & (!\selection[1]~input_o\ & \selection[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inB[25]~input_o\,
	datab => \outMux~50_combout\,
	datac => \selection[1]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~51_combout\);

-- Location: IOIBUF_X42_Y67_N22
\inA[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(26),
	o => \inA[26]~input_o\);

-- Location: LCCOMB_X44_Y66_N12
\outMux~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~52_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\inC[26]~input_o\)) # (!\selection[1]~input_o\ & ((\inA[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inC[26]~input_o\,
	datab => \inA[26]~input_o\,
	datac => \selection[1]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~52_combout\);

-- Location: IOIBUF_X44_Y67_N15
\inB[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(26),
	o => \inB[26]~input_o\);

-- Location: LCCOMB_X44_Y66_N14
\outMux~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~53_combout\ = (\outMux~52_combout\) # ((\inB[26]~input_o\ & (!\selection[1]~input_o\ & \selection[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outMux~52_combout\,
	datab => \inB[26]~input_o\,
	datac => \selection[1]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~53_combout\);

-- Location: IOIBUF_X44_Y0_N1
\inB[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(27),
	o => \inB[27]~input_o\);

-- Location: IOIBUF_X42_Y67_N15
\inA[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(27),
	o => \inA[27]~input_o\);

-- Location: LCCOMB_X44_Y66_N8
\outMux~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~54_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\inC[27]~input_o\)) # (!\selection[1]~input_o\ & ((\inA[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inC[27]~input_o\,
	datab => \inA[27]~input_o\,
	datac => \selection[1]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~54_combout\);

-- Location: LCCOMB_X44_Y66_N26
\outMux~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~55_combout\ = (\outMux~54_combout\) # ((!\selection[1]~input_o\ & (\inB[27]~input_o\ & \selection[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \inB[27]~input_o\,
	datac => \outMux~54_combout\,
	datad => \selection[0]~input_o\,
	combout => \outMux~55_combout\);

-- Location: IOIBUF_X49_Y67_N1
\inB[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(28),
	o => \inB[28]~input_o\);

-- Location: IOIBUF_X44_Y67_N1
\inC[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(28),
	o => \inC[28]~input_o\);

-- Location: LCCOMB_X44_Y66_N4
\outMux~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~56_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & ((\inC[28]~input_o\))) # (!\selection[1]~input_o\ & (\inA[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[28]~input_o\,
	datab => \inC[28]~input_o\,
	datac => \selection[1]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~56_combout\);

-- Location: LCCOMB_X44_Y66_N22
\outMux~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~57_combout\ = (\outMux~56_combout\) # ((\inB[28]~input_o\ & (!\selection[1]~input_o\ & \selection[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inB[28]~input_o\,
	datab => \outMux~56_combout\,
	datac => \selection[1]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~57_combout\);

-- Location: IOIBUF_X42_Y0_N15
\inA[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(29),
	o => \inA[29]~input_o\);

-- Location: LCCOMB_X44_Y66_N16
\outMux~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~58_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\inC[29]~input_o\)) # (!\selection[1]~input_o\ & ((\inA[29]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inC[29]~input_o\,
	datab => \inA[29]~input_o\,
	datac => \selection[1]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~58_combout\);

-- Location: IOIBUF_X42_Y67_N1
\inB[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(29),
	o => \inB[29]~input_o\);

-- Location: LCCOMB_X44_Y66_N10
\outMux~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~59_combout\ = (\outMux~58_combout\) # ((!\selection[1]~input_o\ & (\inB[29]~input_o\ & \selection[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \outMux~58_combout\,
	datac => \inB[29]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~59_combout\);

-- Location: IOIBUF_X40_Y67_N1
\inB[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(30),
	o => \inB[30]~input_o\);

-- Location: IOIBUF_X49_Y67_N8
\inC[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(30),
	o => \inC[30]~input_o\);

-- Location: IOIBUF_X42_Y67_N8
\inA[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(30),
	o => \inA[30]~input_o\);

-- Location: LCCOMB_X44_Y66_N28
\outMux~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~60_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\inC[30]~input_o\)) # (!\selection[1]~input_o\ & ((\inA[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \inC[30]~input_o\,
	datac => \inA[30]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~60_combout\);

-- Location: LCCOMB_X44_Y66_N30
\outMux~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~61_combout\ = (\outMux~60_combout\) # ((\inB[30]~input_o\ & (!\selection[1]~input_o\ & \selection[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inB[30]~input_o\,
	datab => \outMux~60_combout\,
	datac => \selection[1]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \outMux~61_combout\);

-- Location: IOIBUF_X65_Y67_N15
\inB[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(31),
	o => \inB[31]~input_o\);

-- Location: IOIBUF_X81_Y62_N8
\inC[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inC(31),
	o => \inC[31]~input_o\);

-- Location: LCCOMB_X73_Y66_N28
\outMux~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~62_combout\ = (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & ((\inC[31]~input_o\))) # (!\selection[1]~input_o\ & (\inA[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[31]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \inC[31]~input_o\,
	combout => \outMux~62_combout\);

-- Location: LCCOMB_X73_Y66_N6
\outMux~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outMux~63_combout\ = (\outMux~62_combout\) # ((\inB[31]~input_o\ & (!\selection[1]~input_o\ & \selection[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inB[31]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \outMux~62_combout\,
	combout => \outMux~63_combout\);

ww_outMux(0) <= \outMux[0]~output_o\;

ww_outMux(1) <= \outMux[1]~output_o\;

ww_outMux(2) <= \outMux[2]~output_o\;

ww_outMux(3) <= \outMux[3]~output_o\;

ww_outMux(4) <= \outMux[4]~output_o\;

ww_outMux(5) <= \outMux[5]~output_o\;

ww_outMux(6) <= \outMux[6]~output_o\;

ww_outMux(7) <= \outMux[7]~output_o\;

ww_outMux(8) <= \outMux[8]~output_o\;

ww_outMux(9) <= \outMux[9]~output_o\;

ww_outMux(10) <= \outMux[10]~output_o\;

ww_outMux(11) <= \outMux[11]~output_o\;

ww_outMux(12) <= \outMux[12]~output_o\;

ww_outMux(13) <= \outMux[13]~output_o\;

ww_outMux(14) <= \outMux[14]~output_o\;

ww_outMux(15) <= \outMux[15]~output_o\;

ww_outMux(16) <= \outMux[16]~output_o\;

ww_outMux(17) <= \outMux[17]~output_o\;

ww_outMux(18) <= \outMux[18]~output_o\;

ww_outMux(19) <= \outMux[19]~output_o\;

ww_outMux(20) <= \outMux[20]~output_o\;

ww_outMux(21) <= \outMux[21]~output_o\;

ww_outMux(22) <= \outMux[22]~output_o\;

ww_outMux(23) <= \outMux[23]~output_o\;

ww_outMux(24) <= \outMux[24]~output_o\;

ww_outMux(25) <= \outMux[25]~output_o\;

ww_outMux(26) <= \outMux[26]~output_o\;

ww_outMux(27) <= \outMux[27]~output_o\;

ww_outMux(28) <= \outMux[28]~output_o\;

ww_outMux(29) <= \outMux[29]~output_o\;

ww_outMux(30) <= \outMux[30]~output_o\;

ww_outMux(31) <= \outMux[31]~output_o\;
END structure;


