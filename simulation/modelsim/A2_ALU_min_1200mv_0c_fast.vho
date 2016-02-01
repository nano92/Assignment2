-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Full Version"

-- DATE "02/01/2016 12:02:26"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	OPCODE : IN IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0);
	DATA0 : IN IEEE.NUMERIC_STD.signed(15 DOWNTO 0);
	DATA1 : IN IEEE.NUMERIC_STD.signed(15 DOWNTO 0);
	RESET : IN std_logic;
	CLK : IN std_logic;
	STATUS : OUT IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0);
	DATA_OUT : OUT IEEE.NUMERIC_STD.signed(15 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- STATUS[0]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[1]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[3]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[0]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[1]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[2]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[3]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[4]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[5]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[6]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[7]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[8]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[9]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[10]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[11]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[12]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[13]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[14]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[15]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[2]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[0]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[1]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[15]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[4]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[5]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[6]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[7]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[8]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[9]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[10]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[11]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[12]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[13]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[14]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[15]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[3]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[13]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[12]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[1]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[14]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[11]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[9]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[10]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[8]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA1[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[1]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[0]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[3]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[7]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[6]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[5]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA0[4]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_OPCODE : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DATA0 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DATA1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_STATUS : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DATA_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \STATUS[0]~output_o\ : std_logic;
SIGNAL \STATUS[1]~output_o\ : std_logic;
SIGNAL \STATUS[2]~output_o\ : std_logic;
SIGNAL \STATUS[3]~output_o\ : std_logic;
SIGNAL \DATA_OUT[0]~output_o\ : std_logic;
SIGNAL \DATA_OUT[1]~output_o\ : std_logic;
SIGNAL \DATA_OUT[2]~output_o\ : std_logic;
SIGNAL \DATA_OUT[3]~output_o\ : std_logic;
SIGNAL \DATA_OUT[4]~output_o\ : std_logic;
SIGNAL \DATA_OUT[5]~output_o\ : std_logic;
SIGNAL \DATA_OUT[6]~output_o\ : std_logic;
SIGNAL \DATA_OUT[7]~output_o\ : std_logic;
SIGNAL \DATA_OUT[8]~output_o\ : std_logic;
SIGNAL \DATA_OUT[9]~output_o\ : std_logic;
SIGNAL \DATA_OUT[10]~output_o\ : std_logic;
SIGNAL \DATA_OUT[11]~output_o\ : std_logic;
SIGNAL \DATA_OUT[12]~output_o\ : std_logic;
SIGNAL \DATA_OUT[13]~output_o\ : std_logic;
SIGNAL \DATA_OUT[14]~output_o\ : std_logic;
SIGNAL \DATA_OUT[15]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \OPCODE[3]~input_o\ : std_logic;
SIGNAL \OPCODE[2]~input_o\ : std_logic;
SIGNAL \OPCODE[0]~input_o\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \OPCODE[1]~input_o\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \DATA0[12]~input_o\ : std_logic;
SIGNAL \DATA0[13]~input_o\ : std_logic;
SIGNAL \DATA1[1]~input_o\ : std_logic;
SIGNAL \DATA1[0]~input_o\ : std_logic;
SIGNAL \ShiftRight0~0_combout\ : std_logic;
SIGNAL \DATA0[15]~input_o\ : std_logic;
SIGNAL \DATA0[14]~input_o\ : std_logic;
SIGNAL \ShiftRight1~0_combout\ : std_logic;
SIGNAL \ShiftRight0~1_combout\ : std_logic;
SIGNAL \DATA0[11]~input_o\ : std_logic;
SIGNAL \DATA0[9]~input_o\ : std_logic;
SIGNAL \ShiftRight0~2_combout\ : std_logic;
SIGNAL \DATA0[10]~input_o\ : std_logic;
SIGNAL \DATA0[8]~input_o\ : std_logic;
SIGNAL \ShiftRight0~3_combout\ : std_logic;
SIGNAL \ShiftRight0~4_combout\ : std_logic;
SIGNAL \DATA1[2]~input_o\ : std_logic;
SIGNAL \DATA1[3]~input_o\ : std_logic;
SIGNAL \ShiftRight0~5_combout\ : std_logic;
SIGNAL \DATA0[6]~input_o\ : std_logic;
SIGNAL \DATA0[7]~input_o\ : std_logic;
SIGNAL \ShiftRight0~8_combout\ : std_logic;
SIGNAL \DATA0[4]~input_o\ : std_logic;
SIGNAL \DATA0[5]~input_o\ : std_logic;
SIGNAL \ShiftRight1~2_combout\ : std_logic;
SIGNAL \ShiftRight0~9_combout\ : std_logic;
SIGNAL \DATA0[2]~input_o\ : std_logic;
SIGNAL \DATA0[3]~input_o\ : std_logic;
SIGNAL \ShiftRight1~1_combout\ : std_logic;
SIGNAL \DATA0[0]~input_o\ : std_logic;
SIGNAL \DATA0[1]~input_o\ : std_logic;
SIGNAL \ShiftRight0~6_combout\ : std_logic;
SIGNAL \ShiftRight0~7_combout\ : std_logic;
SIGNAL \ShiftRight0~10_combout\ : std_logic;
SIGNAL \DATA1[15]~input_o\ : std_logic;
SIGNAL \DATA1[13]~input_o\ : std_logic;
SIGNAL \DATA1[14]~input_o\ : std_logic;
SIGNAL \DATA1[12]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \DATA1[4]~input_o\ : std_logic;
SIGNAL \DATA1[7]~input_o\ : std_logic;
SIGNAL \DATA1[5]~input_o\ : std_logic;
SIGNAL \DATA1[6]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \DATA1[11]~input_o\ : std_logic;
SIGNAL \DATA1[9]~input_o\ : std_logic;
SIGNAL \DATA1[8]~input_o\ : std_logic;
SIGNAL \DATA1[10]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \temp_data_out[2]~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~48_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ShiftRight0~16_combout\ : std_logic;
SIGNAL \ShiftRight0~17_combout\ : std_logic;
SIGNAL \ShiftRight1~5_combout\ : std_logic;
SIGNAL \ShiftRight0~18_combout\ : std_logic;
SIGNAL \ShiftRight0~19_combout\ : std_logic;
SIGNAL \ShiftRight1~4_combout\ : std_logic;
SIGNAL \ShiftRight0~13_combout\ : std_logic;
SIGNAL \ShiftRight0~14_combout\ : std_logic;
SIGNAL \ShiftRight1~3_combout\ : std_logic;
SIGNAL \ShiftRight0~11_combout\ : std_logic;
SIGNAL \ShiftRight0~12_combout\ : std_logic;
SIGNAL \ShiftRight0~15_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \ShiftRight1~6_combout\ : std_logic;
SIGNAL \ShiftRight1~7_combout\ : std_logic;
SIGNAL \ShiftRight1~8_combout\ : std_logic;
SIGNAL \Mux14~9_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \Mux14~10_combout\ : std_logic;
SIGNAL \temp_data_out[2]~16_combout\ : std_logic;
SIGNAL \ShiftRight1~11_combout\ : std_logic;
SIGNAL \ShiftRight1~12_combout\ : std_logic;
SIGNAL \ShiftRight1~13_combout\ : std_logic;
SIGNAL \temp_data_out[2]~10_combout\ : std_logic;
SIGNAL \temp_data_out[2]~11_combout\ : std_logic;
SIGNAL \temp_data_out[2]~15_combout\ : std_logic;
SIGNAL \temp_data_out[2]~12_combout\ : std_logic;
SIGNAL \ShiftRight0~20_combout\ : std_logic;
SIGNAL \ShiftRight1~9_combout\ : std_logic;
SIGNAL \ShiftRight1~10_combout\ : std_logic;
SIGNAL \ShiftRight0~21_combout\ : std_logic;
SIGNAL \temp_data_out[2]~13_combout\ : std_logic;
SIGNAL \ShiftLeft0~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~11_combout\ : std_logic;
SIGNAL \temp_data_out[2]~14_combout\ : std_logic;
SIGNAL \RESULT~0_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \ShiftRight1~14_combout\ : std_logic;
SIGNAL \Mux13~9_combout\ : std_logic;
SIGNAL \temp_data_out[2]~0_combout\ : std_logic;
SIGNAL \temp_data_out[2]~17_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \RESULT~1_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \temp_data_out[2]~18_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \ShiftRight1~17_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \RESULT~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ShiftLeft0~13_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \ShiftRight1~15_combout\ : std_logic;
SIGNAL \ShiftRight1~16_combout\ : std_logic;
SIGNAL \ShiftRight0~22_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \ShiftRight1~18_combout\ : std_logic;
SIGNAL \ShiftRight1~19_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \temp_data_out[3]~1_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \temp_data_out[4]~19_combout\ : std_logic;
SIGNAL \temp_data_out[4]~20_combout\ : std_logic;
SIGNAL \ShiftRight1~20_combout\ : std_logic;
SIGNAL \ShiftRight0~23_combout\ : std_logic;
SIGNAL \ShiftLeft0~16_combout\ : std_logic;
SIGNAL \ShiftLeft0~15_combout\ : std_logic;
SIGNAL \ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ShiftLeft0~14_combout\ : std_logic;
SIGNAL \ShiftLeft0~18_combout\ : std_logic;
SIGNAL \RESULT~3_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \RESULT~4_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \ShiftRight0~24_combout\ : std_logic;
SIGNAL \RESULT~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~19_combout\ : std_logic;
SIGNAL \ShiftLeft0~20_combout\ : std_logic;
SIGNAL \ShiftLeft0~21_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \ShiftRight1~21_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \RESULT~7_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \ShiftRight1~22_combout\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ShiftRight0~25_combout\ : std_logic;
SIGNAL \ShiftLeft0~22_combout\ : std_logic;
SIGNAL \ShiftLeft0~23_combout\ : std_logic;
SIGNAL \ShiftLeft0~24_combout\ : std_logic;
SIGNAL \RESULT~6_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~11_combout\ : std_logic;
SIGNAL \Mux8~13_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \Mux8~10_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~26_combout\ : std_logic;
SIGNAL \ShiftLeft0~27_combout\ : std_logic;
SIGNAL \ShiftLeft0~25_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~12_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~28_combout\ : std_logic;
SIGNAL \ShiftLeft0~29_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~11_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \temp_data_out[9]~21_combout\ : std_logic;
SIGNAL \temp_data_out[9]~24_combout\ : std_logic;
SIGNAL \temp_data_out[9]~25_combout\ : std_logic;
SIGNAL \ShiftLeft0~30_combout\ : std_logic;
SIGNAL \ShiftLeft0~31_combout\ : std_logic;
SIGNAL \RESULT~8_combout\ : std_logic;
SIGNAL \temp_data_out[9]~22_combout\ : std_logic;
SIGNAL \temp_data_out[9]~23_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \RESULT~10_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~33_combout\ : std_logic;
SIGNAL \ShiftLeft0~32_combout\ : std_logic;
SIGNAL \ShiftLeft0~34_combout\ : std_logic;
SIGNAL \RESULT~9_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~36_combout\ : std_logic;
SIGNAL \ShiftLeft0~35_combout\ : std_logic;
SIGNAL \ShiftLeft0~37_combout\ : std_logic;
SIGNAL \RESULT~11_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \temp_data_out[12]~28_combout\ : std_logic;
SIGNAL \RESULT~12_combout\ : std_logic;
SIGNAL \temp_data_out[12]~26_combout\ : std_logic;
SIGNAL \ShiftLeft0~38_combout\ : std_logic;
SIGNAL \temp_data_out[12]~27_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \temp_data_out[12]~29_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \temp_data_out[12]~2_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \RESULT~13_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~39_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \RESULT~14_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \temp_data_out[13]~3_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~40_combout\ : std_logic;
SIGNAL \ShiftLeft0~41_combout\ : std_logic;
SIGNAL \ShiftLeft0~42_combout\ : std_logic;
SIGNAL \ShiftLeft0~43_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~44_combout\ : std_logic;
SIGNAL \ShiftLeft0~45_combout\ : std_logic;
SIGNAL \ShiftLeft0~46_combout\ : std_logic;
SIGNAL \ShiftLeft0~47_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \temp_data_out[15]~4_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL temp_data_out : std_logic_vector(15 DOWNTO 0);
SIGNAL temp_status : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_OPCODE[3]~input_o\ : std_logic;

BEGIN

ww_OPCODE <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(OPCODE);
ww_DATA0 <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(DATA0);
ww_DATA1 <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(DATA1);
ww_RESET <= RESET;
ww_CLK <= CLK;
STATUS <= IEEE.NUMERIC_STD.UNSIGNED(ww_STATUS);
DATA_OUT <= IEEE.NUMERIC_STD.SIGNED(ww_DATA_OUT);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RESET~inputclkctrl_outclk\ <= NOT \RESET~inputclkctrl_outclk\;
\ALT_INV_OPCODE[3]~input_o\ <= NOT \OPCODE[3]~input_o\;

-- Location: IOOBUF_X34_Y18_N16
\STATUS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_status(0),
	devoe => ww_devoe,
	o => \STATUS[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\STATUS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_status(1),
	devoe => ww_devoe,
	o => \STATUS[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\STATUS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_status(2),
	devoe => ww_devoe,
	o => \STATUS[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\STATUS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_status(3),
	devoe => ww_devoe,
	o => \STATUS[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\DATA_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_data_out(0),
	devoe => ww_devoe,
	o => \DATA_OUT[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\DATA_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_data_out(1),
	devoe => ww_devoe,
	o => \DATA_OUT[1]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\DATA_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_data_out(2),
	devoe => ww_devoe,
	o => \DATA_OUT[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\DATA_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_data_out(3),
	devoe => ww_devoe,
	o => \DATA_OUT[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\DATA_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_data_out(4),
	devoe => ww_devoe,
	o => \DATA_OUT[4]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\DATA_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_data_out(5),
	devoe => ww_devoe,
	o => \DATA_OUT[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\DATA_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_data_out(6),
	devoe => ww_devoe,
	o => \DATA_OUT[6]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\DATA_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_data_out(7),
	devoe => ww_devoe,
	o => \DATA_OUT[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\DATA_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_data_out(8),
	devoe => ww_devoe,
	o => \DATA_OUT[8]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\DATA_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_data_out(9),
	devoe => ww_devoe,
	o => \DATA_OUT[9]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\DATA_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_data_out(10),
	devoe => ww_devoe,
	o => \DATA_OUT[10]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\DATA_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_data_out(11),
	devoe => ww_devoe,
	o => \DATA_OUT[11]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\DATA_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_data_out(12),
	devoe => ww_devoe,
	o => \DATA_OUT[12]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\DATA_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_data_out(13),
	devoe => ww_devoe,
	o => \DATA_OUT[13]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\DATA_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_data_out(14),
	devoe => ww_devoe,
	o => \DATA_OUT[14]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\DATA_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp_data_out(15),
	devoe => ww_devoe,
	o => \DATA_OUT[15]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X13_Y0_N1
\OPCODE[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(3),
	o => \OPCODE[3]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\OPCODE[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(2),
	o => \OPCODE[2]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\OPCODE[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(0),
	o => \OPCODE[0]~input_o\);

-- Location: LCCOMB_X21_Y10_N26
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\OPCODE[0]~input_o\ & ((!\OPCODE[2]~input_o\) # (!\OPCODE[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[3]~input_o\,
	datab => \OPCODE[2]~input_o\,
	datad => \OPCODE[0]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: IOIBUF_X0_Y11_N15
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G4
\RESET~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X21_Y10_N27
\temp_status[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux19~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_status(0));

-- Location: IOIBUF_X16_Y24_N15
\OPCODE[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(1),
	o => \OPCODE[1]~input_o\);

-- Location: LCCOMB_X21_Y10_N20
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\OPCODE[1]~input_o\ & ((!\OPCODE[2]~input_o\) # (!\OPCODE[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[3]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: FF_X21_Y10_N21
\temp_status[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux18~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_status(1));

-- Location: LCCOMB_X14_Y11_N2
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\OPCODE[2]~input_o\ & (((!\OPCODE[1]~input_o\ & !\OPCODE[0]~input_o\)) # (!\OPCODE[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[3]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \OPCODE[0]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: FF_X14_Y11_N3
\temp_status[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux17~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_status(2));

-- Location: LCCOMB_X14_Y11_N20
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\OPCODE[3]~input_o\ & (((!\OPCODE[1]~input_o\ & !\OPCODE[0]~input_o\)) # (!\OPCODE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[3]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \OPCODE[0]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: FF_X14_Y11_N21
\temp_status[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux16~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_status(3));

-- Location: IOIBUF_X18_Y0_N22
\DATA0[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(12),
	o => \DATA0[12]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\DATA0[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(13),
	o => \DATA0[13]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\DATA1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(1),
	o => \DATA1[1]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\DATA1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(0),
	o => \DATA1[0]~input_o\);

-- Location: LCCOMB_X22_Y10_N0
\ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~0_combout\ = (!\DATA1[1]~input_o\ & ((\DATA1[0]~input_o\ & ((\DATA0[13]~input_o\))) # (!\DATA1[0]~input_o\ & (\DATA0[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[12]~input_o\,
	datab => \DATA0[13]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA1[0]~input_o\,
	combout => \ShiftRight0~0_combout\);

-- Location: IOIBUF_X23_Y0_N8
\DATA0[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(15),
	o => \DATA0[15]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\DATA0[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(14),
	o => \DATA0[14]~input_o\);

-- Location: LCCOMB_X22_Y10_N2
\ShiftRight1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~0_combout\ = (\DATA1[0]~input_o\ & (\DATA0[15]~input_o\)) # (!\DATA1[0]~input_o\ & ((\DATA0[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[15]~input_o\,
	datab => \DATA1[0]~input_o\,
	datad => \DATA0[14]~input_o\,
	combout => \ShiftRight1~0_combout\);

-- Location: LCCOMB_X22_Y10_N20
\ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~1_combout\ = (\ShiftRight0~0_combout\) # ((\DATA1[1]~input_o\ & \ShiftRight1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~0_combout\,
	datac => \DATA1[1]~input_o\,
	datad => \ShiftRight1~0_combout\,
	combout => \ShiftRight0~1_combout\);

-- Location: IOIBUF_X34_Y7_N8
\DATA0[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(11),
	o => \DATA0[11]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\DATA0[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(9),
	o => \DATA0[9]~input_o\);

-- Location: LCCOMB_X18_Y11_N18
\ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~2_combout\ = (\DATA1[1]~input_o\ & (\DATA0[11]~input_o\)) # (!\DATA1[1]~input_o\ & ((\DATA0[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[11]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA0[9]~input_o\,
	combout => \ShiftRight0~2_combout\);

-- Location: IOIBUF_X34_Y12_N15
\DATA0[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(10),
	o => \DATA0[10]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\DATA0[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(8),
	o => \DATA0[8]~input_o\);

-- Location: LCCOMB_X22_Y13_N24
\ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~3_combout\ = (\DATA1[1]~input_o\ & (\DATA0[10]~input_o\)) # (!\DATA1[1]~input_o\ & ((\DATA0[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[10]~input_o\,
	datab => \DATA0[8]~input_o\,
	datac => \DATA1[1]~input_o\,
	combout => \ShiftRight0~3_combout\);

-- Location: LCCOMB_X22_Y11_N10
\ShiftRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~4_combout\ = (\DATA1[0]~input_o\ & (\ShiftRight0~2_combout\)) # (!\DATA1[0]~input_o\ & ((\ShiftRight0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~2_combout\,
	datab => \ShiftRight0~3_combout\,
	datac => \DATA1[0]~input_o\,
	combout => \ShiftRight0~4_combout\);

-- Location: IOIBUF_X34_Y9_N1
\DATA1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(2),
	o => \DATA1[2]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\DATA1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(3),
	o => \DATA1[3]~input_o\);

-- Location: LCCOMB_X22_Y12_N8
\ShiftRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~5_combout\ = (\DATA1[3]~input_o\ & ((\DATA1[2]~input_o\ & (\ShiftRight0~1_combout\)) # (!\DATA1[2]~input_o\ & ((\ShiftRight0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~1_combout\,
	datab => \ShiftRight0~4_combout\,
	datac => \DATA1[2]~input_o\,
	datad => \DATA1[3]~input_o\,
	combout => \ShiftRight0~5_combout\);

-- Location: IOIBUF_X13_Y24_N15
\DATA0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(6),
	o => \DATA0[6]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\DATA0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(7),
	o => \DATA0[7]~input_o\);

-- Location: LCCOMB_X22_Y13_N18
\ShiftRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~8_combout\ = (\DATA1[1]~input_o\ & ((\DATA1[0]~input_o\ & ((\DATA0[7]~input_o\))) # (!\DATA1[0]~input_o\ & (\DATA0[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[6]~input_o\,
	datab => \DATA1[0]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA0[7]~input_o\,
	combout => \ShiftRight0~8_combout\);

-- Location: IOIBUF_X18_Y24_N15
\DATA0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(4),
	o => \DATA0[4]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\DATA0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(5),
	o => \DATA0[5]~input_o\);

-- Location: LCCOMB_X22_Y14_N22
\ShiftRight1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~2_combout\ = (\DATA1[0]~input_o\ & ((\DATA0[5]~input_o\))) # (!\DATA1[0]~input_o\ & (\DATA0[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[0]~input_o\,
	datab => \DATA0[4]~input_o\,
	datad => \DATA0[5]~input_o\,
	combout => \ShiftRight1~2_combout\);

-- Location: LCCOMB_X22_Y14_N16
\ShiftRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~9_combout\ = (\ShiftRight0~8_combout\) # ((!\DATA1[1]~input_o\ & \ShiftRight1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~8_combout\,
	datac => \DATA1[1]~input_o\,
	datad => \ShiftRight1~2_combout\,
	combout => \ShiftRight0~9_combout\);

-- Location: IOIBUF_X18_Y24_N22
\DATA0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(2),
	o => \DATA0[2]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\DATA0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(3),
	o => \DATA0[3]~input_o\);

-- Location: LCCOMB_X22_Y14_N26
\ShiftRight1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~1_combout\ = (\DATA1[0]~input_o\ & ((\DATA0[3]~input_o\))) # (!\DATA1[0]~input_o\ & (\DATA0[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[0]~input_o\,
	datab => \DATA0[2]~input_o\,
	datad => \DATA0[3]~input_o\,
	combout => \ShiftRight1~1_combout\);

-- Location: IOIBUF_X28_Y24_N8
\DATA0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(0),
	o => \DATA0[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\DATA0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA0(1),
	o => \DATA0[1]~input_o\);

-- Location: LCCOMB_X22_Y14_N0
\ShiftRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~6_combout\ = (!\DATA1[1]~input_o\ & ((\DATA1[0]~input_o\ & ((\DATA0[1]~input_o\))) # (!\DATA1[0]~input_o\ & (\DATA0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[0]~input_o\,
	datab => \DATA0[1]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA1[0]~input_o\,
	combout => \ShiftRight0~6_combout\);

-- Location: LCCOMB_X22_Y14_N12
\ShiftRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~7_combout\ = (!\DATA1[2]~input_o\ & ((\ShiftRight0~6_combout\) # ((\ShiftRight1~1_combout\ & \DATA1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~1_combout\,
	datab => \DATA1[2]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \ShiftRight0~6_combout\,
	combout => \ShiftRight0~7_combout\);

-- Location: LCCOMB_X22_Y12_N26
\ShiftRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~10_combout\ = (!\DATA1[3]~input_o\ & ((\ShiftRight0~7_combout\) # ((\ShiftRight0~9_combout\ & \DATA1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~9_combout\,
	datab => \ShiftRight0~7_combout\,
	datac => \DATA1[2]~input_o\,
	datad => \DATA1[3]~input_o\,
	combout => \ShiftRight0~10_combout\);

-- Location: IOIBUF_X28_Y24_N15
\DATA1[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(15),
	o => \DATA1[15]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\DATA1[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(13),
	o => \DATA1[13]~input_o\);

-- Location: IOIBUF_X34_Y9_N8
\DATA1[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(14),
	o => \DATA1[14]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\DATA1[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(12),
	o => \DATA1[12]~input_o\);

-- Location: LCCOMB_X21_Y12_N18
\ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = (!\DATA1[15]~input_o\ & (!\DATA1[13]~input_o\ & (!\DATA1[14]~input_o\ & !\DATA1[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[15]~input_o\,
	datab => \DATA1[13]~input_o\,
	datac => \DATA1[14]~input_o\,
	datad => \DATA1[12]~input_o\,
	combout => \ShiftLeft0~4_combout\);

-- Location: IOIBUF_X28_Y24_N1
\DATA1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(4),
	o => \DATA1[4]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\DATA1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(7),
	o => \DATA1[7]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\DATA1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(5),
	o => \DATA1[5]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\DATA1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(6),
	o => \DATA1[6]~input_o\);

-- Location: LCCOMB_X21_Y12_N24
\ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = (!\DATA1[4]~input_o\ & (!\DATA1[7]~input_o\ & (!\DATA1[5]~input_o\ & !\DATA1[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[4]~input_o\,
	datab => \DATA1[7]~input_o\,
	datac => \DATA1[5]~input_o\,
	datad => \DATA1[6]~input_o\,
	combout => \ShiftLeft0~2_combout\);

-- Location: IOIBUF_X0_Y8_N15
\DATA1[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(11),
	o => \DATA1[11]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\DATA1[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(9),
	o => \DATA1[9]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\DATA1[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(8),
	o => \DATA1[8]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\DATA1[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA1(10),
	o => \DATA1[10]~input_o\);

-- Location: LCCOMB_X24_Y12_N24
\ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = (!\DATA1[11]~input_o\ & (!\DATA1[9]~input_o\ & (!\DATA1[8]~input_o\ & !\DATA1[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[11]~input_o\,
	datab => \DATA1[9]~input_o\,
	datac => \DATA1[8]~input_o\,
	datad => \DATA1[10]~input_o\,
	combout => \ShiftLeft0~3_combout\);

-- Location: LCCOMB_X21_Y12_N20
\ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = (\ShiftLeft0~4_combout\ & (\ShiftLeft0~2_combout\ & \ShiftLeft0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \ShiftLeft0~2_combout\,
	datad => \ShiftLeft0~3_combout\,
	combout => \ShiftLeft0~5_combout\);

-- Location: LCCOMB_X19_Y12_N28
\Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (!\OPCODE[0]~input_o\ & (!\OPCODE[1]~input_o\ & \ShiftLeft0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datad => \ShiftLeft0~5_combout\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X23_Y10_N18
\Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = (\Mux15~7_combout\ & ((\ShiftRight0~5_combout\) # (\ShiftRight0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~5_combout\,
	datac => \ShiftRight0~10_combout\,
	datad => \Mux15~7_combout\,
	combout => \Mux15~8_combout\);

-- Location: LCCOMB_X18_Y12_N0
\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\DATA1[0]~input_o\ & ((\OPCODE[1]~input_o\ & (!\DATA0[0]~input_o\ & \OPCODE[0]~input_o\)) # (!\OPCODE[1]~input_o\ & ((\OPCODE[0]~input_o\) # (!\DATA0[0]~input_o\))))) # (!\DATA1[0]~input_o\ & ((\DATA0[0]~input_o\ & 
-- ((\OPCODE[0]~input_o\) # (!\OPCODE[1]~input_o\))) # (!\DATA0[0]~input_o\ & ((!\OPCODE[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[1]~input_o\,
	datab => \DATA1[0]~input_o\,
	datac => \DATA0[0]~input_o\,
	datad => \OPCODE[0]~input_o\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X18_Y12_N12
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \OPCODE[0]~input_o\ $ (\DATA1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datad => \DATA1[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X18_Y12_N16
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(\OPCODE[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X18_Y12_N18
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~0_combout\ & ((\DATA0[0]~input_o\ & (\Add0~2_cout\ & VCC)) # (!\DATA0[0]~input_o\ & (!\Add0~2_cout\)))) # (!\Add0~0_combout\ & ((\DATA0[0]~input_o\ & (!\Add0~2_cout\)) # (!\DATA0[0]~input_o\ & ((\Add0~2_cout\) # (GND)))))
-- \Add0~4\ = CARRY((\Add0~0_combout\ & (!\DATA0[0]~input_o\ & !\Add0~2_cout\)) # (!\Add0~0_combout\ & ((!\Add0~2_cout\) # (!\DATA0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \DATA0[0]~input_o\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X18_Y12_N2
\Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\OPCODE[1]~input_o\ & ((\DATA0[0]~input_o\ & (\DATA1[0]~input_o\ & \OPCODE[0]~input_o\)) # (!\DATA0[0]~input_o\ & ((!\OPCODE[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[1]~input_o\,
	datab => \DATA1[0]~input_o\,
	datac => \DATA0[0]~input_o\,
	datad => \OPCODE[0]~input_o\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X18_Y12_N6
\Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\Mux15~4_combout\) # ((\Add0~3_combout\ & !\OPCODE[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~3_combout\,
	datac => \OPCODE[1]~input_o\,
	datad => \Mux15~4_combout\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X18_Y12_N8
\Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\OPCODE[3]~input_o\ & (((\OPCODE[2]~input_o\)))) # (!\OPCODE[3]~input_o\ & ((\OPCODE[2]~input_o\ & (\Mux15~3_combout\)) # (!\OPCODE[2]~input_o\ & ((\Mux15~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[3]~input_o\,
	datab => \Mux15~3_combout\,
	datac => \OPCODE[2]~input_o\,
	datad => \Mux15~5_combout\,
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X23_Y10_N20
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\ShiftLeft0~5_combout\ & ((\ShiftRight0~10_combout\) # ((\ShiftRight0~5_combout\)))) # (!\ShiftLeft0~5_combout\ & (((\DATA0[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~10_combout\,
	datab => \DATA0[15]~input_o\,
	datac => \ShiftRight0~5_combout\,
	datad => \ShiftLeft0~5_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X23_Y10_N6
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\OPCODE[1]~input_o\ & (((\Mux15~0_combout\)))) # (!\OPCODE[1]~input_o\ & (\DATA0[0]~input_o\ $ (((!\DATA1[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[0]~input_o\,
	datab => \Mux15~0_combout\,
	datac => \OPCODE[1]~input_o\,
	datad => \DATA1[0]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X21_Y12_N30
\temp_data_out[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[2]~9_combout\ = (\ShiftLeft0~4_combout\ & (\ShiftLeft0~2_combout\ & (!\DATA1[3]~input_o\ & \ShiftLeft0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \ShiftLeft0~2_combout\,
	datac => \DATA1[3]~input_o\,
	datad => \ShiftLeft0~3_combout\,
	combout => \temp_data_out[2]~9_combout\);

-- Location: LCCOMB_X23_Y10_N12
\ShiftLeft0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~48_combout\ = (\DATA1[1]~input_o\) # ((\DATA1[0]~input_o\) # ((\DATA1[2]~input_o\) # (!\temp_data_out[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[1]~input_o\,
	datab => \DATA1[0]~input_o\,
	datac => \temp_data_out[2]~9_combout\,
	datad => \DATA1[2]~input_o\,
	combout => \ShiftLeft0~48_combout\);

-- Location: LCCOMB_X23_Y10_N24
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\OPCODE[0]~input_o\ & (((\DATA0[0]~input_o\ & !\ShiftLeft0~48_combout\)))) # (!\OPCODE[0]~input_o\ & (\Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \OPCODE[0]~input_o\,
	datac => \DATA0[0]~input_o\,
	datad => \ShiftLeft0~48_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X23_Y10_N8
\Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~9_combout\ = (\OPCODE[3]~input_o\ & ((\Mux15~6_combout\ & (\Mux15~8_combout\)) # (!\Mux15~6_combout\ & ((\Mux15~2_combout\))))) # (!\OPCODE[3]~input_o\ & (((\Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[3]~input_o\,
	datab => \Mux15~8_combout\,
	datac => \Mux15~6_combout\,
	datad => \Mux15~2_combout\,
	combout => \Mux15~9_combout\);

-- Location: FF_X23_Y10_N9
\temp_data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux15~9_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_data_out(0));

-- Location: LCCOMB_X21_Y13_N2
\ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = (\DATA1[0]~input_o\ & ((\DATA0[0]~input_o\))) # (!\DATA1[0]~input_o\ & (\DATA0[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[1]~input_o\,
	datac => \DATA0[0]~input_o\,
	datad => \DATA1[0]~input_o\,
	combout => \ShiftLeft0~7_combout\);

-- Location: LCCOMB_X24_Y12_N4
\ShiftLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~8_combout\ = (!\DATA1[2]~input_o\ & (!\DATA1[1]~input_o\ & \ShiftLeft0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[2]~input_o\,
	datab => \DATA1[1]~input_o\,
	datac => \ShiftLeft0~7_combout\,
	combout => \ShiftLeft0~8_combout\);

-- Location: LCCOMB_X22_Y10_N6
\ShiftRight0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~16_combout\ = (\DATA1[0]~input_o\ & (\DATA0[14]~input_o\)) # (!\DATA1[0]~input_o\ & ((\DATA0[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[14]~input_o\,
	datab => \DATA0[13]~input_o\,
	datad => \DATA1[0]~input_o\,
	combout => \ShiftRight0~16_combout\);

-- Location: LCCOMB_X21_Y11_N24
\ShiftRight0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~17_combout\ = (\DATA1[2]~input_o\ & ((\DATA1[1]~input_o\ & (\DATA0[15]~input_o\)) # (!\DATA1[1]~input_o\ & ((\ShiftRight0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[15]~input_o\,
	datab => \ShiftRight0~16_combout\,
	datac => \DATA1[2]~input_o\,
	datad => \DATA1[1]~input_o\,
	combout => \ShiftRight0~17_combout\);

-- Location: LCCOMB_X17_Y11_N20
\ShiftRight1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~5_combout\ = (\DATA1[1]~input_o\ & (\DATA0[12]~input_o\)) # (!\DATA1[1]~input_o\ & ((\DATA0[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[12]~input_o\,
	datac => \DATA0[10]~input_o\,
	datad => \DATA1[1]~input_o\,
	combout => \ShiftRight1~5_combout\);

-- Location: LCCOMB_X22_Y11_N6
\ShiftRight0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~18_combout\ = (\DATA1[0]~input_o\ & (\ShiftRight1~5_combout\)) # (!\DATA1[0]~input_o\ & ((\ShiftRight0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~5_combout\,
	datac => \DATA1[0]~input_o\,
	datad => \ShiftRight0~2_combout\,
	combout => \ShiftRight0~18_combout\);

-- Location: LCCOMB_X21_Y11_N26
\ShiftRight0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~19_combout\ = (\ShiftRight0~17_combout\) # ((!\DATA1[2]~input_o\ & \ShiftRight0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~17_combout\,
	datac => \DATA1[2]~input_o\,
	datad => \ShiftRight0~18_combout\,
	combout => \ShiftRight0~19_combout\);

-- Location: LCCOMB_X23_Y11_N16
\ShiftRight1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~4_combout\ = (\DATA1[0]~input_o\ & (\DATA0[6]~input_o\)) # (!\DATA1[0]~input_o\ & ((\DATA0[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA0[6]~input_o\,
	datac => \DATA1[0]~input_o\,
	datad => \DATA0[5]~input_o\,
	combout => \ShiftRight1~4_combout\);

-- Location: LCCOMB_X22_Y13_N20
\ShiftRight0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~13_combout\ = (\DATA1[1]~input_o\ & ((\DATA1[0]~input_o\ & (\DATA0[8]~input_o\)) # (!\DATA1[0]~input_o\ & ((\DATA0[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[1]~input_o\,
	datab => \DATA1[0]~input_o\,
	datac => \DATA0[8]~input_o\,
	datad => \DATA0[7]~input_o\,
	combout => \ShiftRight0~13_combout\);

-- Location: LCCOMB_X22_Y11_N28
\ShiftRight0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~14_combout\ = (\ShiftRight0~13_combout\) # ((\ShiftRight1~4_combout\ & !\DATA1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~4_combout\,
	datac => \ShiftRight0~13_combout\,
	datad => \DATA1[1]~input_o\,
	combout => \ShiftRight0~14_combout\);

-- Location: LCCOMB_X21_Y13_N6
\ShiftRight1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~3_combout\ = (\DATA1[0]~input_o\ & (\DATA0[4]~input_o\)) # (!\DATA1[0]~input_o\ & ((\DATA0[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[4]~input_o\,
	datab => \DATA1[0]~input_o\,
	datad => \DATA0[3]~input_o\,
	combout => \ShiftRight1~3_combout\);

-- Location: LCCOMB_X21_Y13_N20
\ShiftRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~11_combout\ = (!\DATA1[1]~input_o\ & ((\DATA1[0]~input_o\ & ((\DATA0[2]~input_o\))) # (!\DATA1[0]~input_o\ & (\DATA0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[1]~input_o\,
	datab => \DATA0[2]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA1[0]~input_o\,
	combout => \ShiftRight0~11_combout\);

-- Location: LCCOMB_X21_Y13_N0
\ShiftRight0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~12_combout\ = (!\DATA1[2]~input_o\ & ((\ShiftRight0~11_combout\) # ((\ShiftRight1~3_combout\ & \DATA1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~3_combout\,
	datab => \ShiftRight0~11_combout\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA1[2]~input_o\,
	combout => \ShiftRight0~12_combout\);

-- Location: LCCOMB_X21_Y11_N22
\ShiftRight0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~15_combout\ = (!\DATA1[3]~input_o\ & ((\ShiftRight0~12_combout\) # ((\ShiftRight0~14_combout\ & \DATA1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~14_combout\,
	datab => \ShiftRight0~12_combout\,
	datac => \DATA1[2]~input_o\,
	datad => \DATA1[3]~input_o\,
	combout => \ShiftRight0~15_combout\);

-- Location: LCCOMB_X21_Y11_N20
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\ShiftLeft0~5_combout\ & ((\ShiftRight0~15_combout\) # ((\ShiftRight0~19_combout\ & \DATA1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~19_combout\,
	datab => \DATA1[3]~input_o\,
	datac => \ShiftRight0~15_combout\,
	datad => \ShiftLeft0~5_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X21_Y11_N30
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\OPCODE[1]~input_o\ & ((\Mux14~1_combout\) # ((\DATA0[15]~input_o\ & !\ShiftLeft0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[1]~input_o\,
	datab => \Mux14~1_combout\,
	datac => \DATA0[15]~input_o\,
	datad => \ShiftLeft0~5_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X21_Y10_N6
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~2_combout\) # ((!\OPCODE[1]~input_o\ & (\DATA1[1]~input_o\ $ (!\DATA0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \OPCODE[1]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA0[1]~input_o\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X24_Y12_N10
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\OPCODE[0]~input_o\ & (\ShiftLeft0~5_combout\ & !\DATA1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \ShiftLeft0~5_combout\,
	datad => \DATA1[3]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X24_Y12_N22
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\OPCODE[0]~input_o\ & (\ShiftLeft0~8_combout\ & ((\Mux14~0_combout\)))) # (!\OPCODE[0]~input_o\ & ((\Mux14~3_combout\) # ((\ShiftLeft0~8_combout\ & \Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \ShiftLeft0~8_combout\,
	datac => \Mux14~3_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X22_Y10_N8
\ShiftRight1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~6_combout\ = (!\DATA1[0]~input_o\ & ((\DATA1[1]~input_o\ & (\DATA0[15]~input_o\)) # (!\DATA1[1]~input_o\ & ((\DATA0[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[15]~input_o\,
	datab => \DATA1[0]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA0[13]~input_o\,
	combout => \ShiftRight1~6_combout\);

-- Location: LCCOMB_X22_Y10_N10
\ShiftRight1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~7_combout\ = (\ShiftRight1~6_combout\) # ((\DATA0[14]~input_o\ & (!\DATA1[1]~input_o\ & \DATA1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[14]~input_o\,
	datab => \ShiftRight1~6_combout\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA1[0]~input_o\,
	combout => \ShiftRight1~7_combout\);

-- Location: LCCOMB_X22_Y11_N0
\ShiftRight1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~8_combout\ = (\DATA1[2]~input_o\ & ((\ShiftRight1~7_combout\))) # (!\DATA1[2]~input_o\ & (\ShiftRight0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~18_combout\,
	datab => \DATA1[2]~input_o\,
	datac => \ShiftRight1~7_combout\,
	combout => \ShiftRight1~8_combout\);

-- Location: LCCOMB_X21_Y11_N18
\Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~9_combout\ = (\Mux15~7_combout\ & ((\ShiftRight0~15_combout\) # ((\ShiftRight1~8_combout\ & \DATA1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~15_combout\,
	datab => \Mux15~7_combout\,
	datac => \ShiftRight1~8_combout\,
	datad => \DATA1[3]~input_o\,
	combout => \Mux14~9_combout\);

-- Location: LCCOMB_X17_Y11_N14
\Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\OPCODE[1]~input_o\ & ((\OPCODE[0]~input_o\ & (\DATA0[1]~input_o\ & \DATA1[1]~input_o\)) # (!\OPCODE[0]~input_o\ & (!\DATA0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \DATA0[1]~input_o\,
	datad => \DATA1[1]~input_o\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X21_Y13_N26
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \DATA1[1]~input_o\ $ (\OPCODE[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATA1[1]~input_o\,
	datad => \OPCODE[0]~input_o\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X18_Y12_N20
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((\Add0~5_combout\ $ (\DATA0[1]~input_o\ $ (!\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((\Add0~5_combout\ & ((\DATA0[1]~input_o\) # (!\Add0~4\))) # (!\Add0~5_combout\ & (\DATA0[1]~input_o\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \DATA0[1]~input_o\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X17_Y11_N16
\Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (\Mux14~6_combout\) # ((!\OPCODE[1]~input_o\ & \Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux14~6_combout\,
	datac => \OPCODE[1]~input_o\,
	datad => \Add0~6_combout\,
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X21_Y10_N0
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\OPCODE[0]~input_o\ & ((\DATA1[1]~input_o\ & ((!\DATA0[1]~input_o\) # (!\OPCODE[1]~input_o\))) # (!\DATA1[1]~input_o\ & ((\DATA0[1]~input_o\))))) # (!\OPCODE[0]~input_o\ & ((\OPCODE[1]~input_o\ & (!\DATA1[1]~input_o\ & 
-- !\DATA0[1]~input_o\)) # (!\OPCODE[1]~input_o\ & ((!\DATA0[1]~input_o\) # (!\DATA1[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA0[1]~input_o\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X21_Y11_N0
\Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (\OPCODE[3]~input_o\ & (((\OPCODE[2]~input_o\)))) # (!\OPCODE[3]~input_o\ & ((\OPCODE[2]~input_o\ & ((\Mux14~5_combout\))) # (!\OPCODE[2]~input_o\ & (\Mux14~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~7_combout\,
	datab => \Mux14~5_combout\,
	datac => \OPCODE[3]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \Mux14~8_combout\);

-- Location: LCCOMB_X21_Y11_N8
\Mux14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~10_combout\ = (\OPCODE[3]~input_o\ & ((\Mux14~8_combout\ & ((\Mux14~9_combout\))) # (!\Mux14~8_combout\ & (\Mux14~4_combout\)))) # (!\OPCODE[3]~input_o\ & (((\Mux14~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datab => \Mux14~9_combout\,
	datac => \OPCODE[3]~input_o\,
	datad => \Mux14~8_combout\,
	combout => \Mux14~10_combout\);

-- Location: FF_X21_Y11_N9
\temp_data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux14~10_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_data_out(1));

-- Location: LCCOMB_X19_Y12_N22
\temp_data_out[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[2]~16_combout\ = (\OPCODE[2]~input_o\ & ((\DATA1[3]~input_o\) # (!\Mux15~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[3]~input_o\,
	datab => \Mux15~7_combout\,
	datad => \OPCODE[2]~input_o\,
	combout => \temp_data_out[2]~16_combout\);

-- Location: LCCOMB_X22_Y13_N6
\ShiftRight1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~11_combout\ = (!\DATA1[0]~input_o\ & ((\DATA1[1]~input_o\ & ((\DATA0[8]~input_o\))) # (!\DATA1[1]~input_o\ & (\DATA0[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[6]~input_o\,
	datab => \DATA0[8]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA1[0]~input_o\,
	combout => \ShiftRight1~11_combout\);

-- Location: LCCOMB_X22_Y13_N16
\ShiftRight1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~12_combout\ = (\DATA1[1]~input_o\ & (\DATA0[9]~input_o\)) # (!\DATA1[1]~input_o\ & ((\DATA0[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[9]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA0[7]~input_o\,
	combout => \ShiftRight1~12_combout\);

-- Location: LCCOMB_X22_Y13_N10
\ShiftRight1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~13_combout\ = (\ShiftRight1~11_combout\) # ((\ShiftRight1~12_combout\ & \DATA1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~11_combout\,
	datab => \ShiftRight1~12_combout\,
	datad => \DATA1[0]~input_o\,
	combout => \ShiftRight1~13_combout\);

-- Location: LCCOMB_X22_Y12_N28
\temp_data_out[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[2]~10_combout\ = (\temp_data_out[2]~9_combout\ & (!\OPCODE[0]~input_o\ & (\OPCODE[2]~input_o\ $ (\OPCODE[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~9_combout\,
	datab => \OPCODE[0]~input_o\,
	datac => \OPCODE[2]~input_o\,
	datad => \OPCODE[1]~input_o\,
	combout => \temp_data_out[2]~10_combout\);

-- Location: LCCOMB_X22_Y11_N26
\temp_data_out[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[2]~11_combout\ = (\temp_data_out[2]~10_combout\ & ((\DATA1[2]~input_o\) # (\DATA1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA1[2]~input_o\,
	datac => \temp_data_out[2]~10_combout\,
	datad => \DATA1[1]~input_o\,
	combout => \temp_data_out[2]~11_combout\);

-- Location: LCCOMB_X22_Y11_N8
\temp_data_out[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[2]~15_combout\ = (\DATA1[2]~input_o\) # (!\temp_data_out[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA1[2]~input_o\,
	datac => \temp_data_out[2]~10_combout\,
	combout => \temp_data_out[2]~15_combout\);

-- Location: LCCOMB_X21_Y13_N4
\temp_data_out[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[2]~12_combout\ = (\OPCODE[1]~input_o\ & !\OPCODE[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPCODE[1]~input_o\,
	datad => \OPCODE[0]~input_o\,
	combout => \temp_data_out[2]~12_combout\);

-- Location: LCCOMB_X22_Y10_N4
\ShiftRight0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~20_combout\ = (\DATA1[0]~input_o\ & (\DATA0[15]~input_o\)) # (!\DATA1[0]~input_o\ & ((\DATA1[1]~input_o\ & (\DATA0[15]~input_o\)) # (!\DATA1[1]~input_o\ & ((\DATA0[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[15]~input_o\,
	datab => \DATA1[0]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA0[14]~input_o\,
	combout => \ShiftRight0~20_combout\);

-- Location: LCCOMB_X18_Y11_N20
\ShiftRight1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~9_combout\ = (\DATA1[0]~input_o\ & ((\DATA1[1]~input_o\ & (\DATA0[13]~input_o\)) # (!\DATA1[1]~input_o\ & ((\DATA0[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[0]~input_o\,
	datab => \DATA0[13]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA0[11]~input_o\,
	combout => \ShiftRight1~9_combout\);

-- Location: LCCOMB_X22_Y11_N20
\ShiftRight1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~10_combout\ = (\ShiftRight1~9_combout\) # ((\ShiftRight1~5_combout\ & !\DATA1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~5_combout\,
	datac => \DATA1[0]~input_o\,
	datad => \ShiftRight1~9_combout\,
	combout => \ShiftRight1~10_combout\);

-- Location: LCCOMB_X22_Y11_N30
\ShiftRight0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~21_combout\ = (\DATA1[2]~input_o\ & (\ShiftRight0~20_combout\)) # (!\DATA1[2]~input_o\ & ((\ShiftRight1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~20_combout\,
	datab => \ShiftRight1~10_combout\,
	datac => \DATA1[2]~input_o\,
	combout => \ShiftRight0~21_combout\);

-- Location: LCCOMB_X23_Y12_N12
\temp_data_out[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[2]~13_combout\ = (\OPCODE[0]~input_o\ & ((\temp_data_out[2]~9_combout\))) # (!\OPCODE[0]~input_o\ & (!\OPCODE[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \temp_data_out[2]~9_combout\,
	combout => \temp_data_out[2]~13_combout\);

-- Location: LCCOMB_X22_Y14_N10
\ShiftLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~9_combout\ = (!\DATA1[0]~input_o\ & ((\DATA1[1]~input_o\ & (\DATA0[0]~input_o\)) # (!\DATA1[1]~input_o\ & ((\DATA0[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[0]~input_o\,
	datab => \DATA0[2]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA1[0]~input_o\,
	combout => \ShiftLeft0~9_combout\);

-- Location: LCCOMB_X22_Y14_N28
\ShiftLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~10_combout\ = (\ShiftLeft0~9_combout\) # ((\DATA0[1]~input_o\ & (!\DATA1[1]~input_o\ & \DATA1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~9_combout\,
	datab => \DATA0[1]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA1[0]~input_o\,
	combout => \ShiftLeft0~10_combout\);

-- Location: LCCOMB_X23_Y12_N8
\ShiftLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~11_combout\ = (\ShiftLeft0~10_combout\ & !\DATA1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftLeft0~10_combout\,
	datad => \DATA1[2]~input_o\,
	combout => \ShiftLeft0~11_combout\);

-- Location: LCCOMB_X23_Y12_N30
\temp_data_out[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[2]~14_combout\ = (\OPCODE[0]~input_o\) # ((\OPCODE[1]~input_o\ & !\ShiftLeft0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datac => \OPCODE[1]~input_o\,
	datad => \ShiftLeft0~5_combout\,
	combout => \temp_data_out[2]~14_combout\);

-- Location: LCCOMB_X23_Y12_N10
\RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~0_combout\ = \DATA0[2]~input_o\ $ (\DATA1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATA0[2]~input_o\,
	datad => \DATA1[2]~input_o\,
	combout => \RESULT~0_combout\);

-- Location: LCCOMB_X23_Y12_N0
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\temp_data_out[2]~13_combout\ & ((\temp_data_out[2]~14_combout\ & (\ShiftLeft0~11_combout\)) # (!\temp_data_out[2]~14_combout\ & ((!\RESULT~0_combout\))))) # (!\temp_data_out[2]~13_combout\ & (((!\temp_data_out[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~13_combout\,
	datab => \ShiftLeft0~11_combout\,
	datac => \temp_data_out[2]~14_combout\,
	datad => \RESULT~0_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X23_Y11_N18
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\temp_data_out[2]~12_combout\ & ((\Mux13~2_combout\ & (\ShiftRight0~21_combout\)) # (!\Mux13~2_combout\ & ((\DATA0[15]~input_o\))))) # (!\temp_data_out[2]~12_combout\ & (((\Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~12_combout\,
	datab => \ShiftRight0~21_combout\,
	datac => \DATA0[15]~input_o\,
	datad => \Mux13~2_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X22_Y11_N2
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\temp_data_out[2]~11_combout\ & (((\temp_data_out[2]~15_combout\)))) # (!\temp_data_out[2]~11_combout\ & ((\temp_data_out[2]~15_combout\ & ((\Mux13~3_combout\))) # (!\temp_data_out[2]~15_combout\ & (\ShiftRight1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~11_combout\,
	datab => \ShiftRight1~1_combout\,
	datac => \temp_data_out[2]~15_combout\,
	datad => \Mux13~3_combout\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X22_Y11_N4
\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\temp_data_out[2]~11_combout\ & ((\Mux13~4_combout\ & (\ShiftRight1~13_combout\)) # (!\Mux13~4_combout\ & ((\ShiftRight1~2_combout\))))) # (!\temp_data_out[2]~11_combout\ & (((\Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~13_combout\,
	datab => \ShiftRight1~2_combout\,
	datac => \temp_data_out[2]~11_combout\,
	datad => \Mux13~4_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X22_Y10_N14
\ShiftRight1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~14_combout\ = (\DATA1[2]~input_o\ & (((\ShiftRight1~0_combout\ & !\DATA1[1]~input_o\)))) # (!\DATA1[2]~input_o\ & (\ShiftRight1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~10_combout\,
	datab => \ShiftRight1~0_combout\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA1[2]~input_o\,
	combout => \ShiftRight1~14_combout\);

-- Location: LCCOMB_X23_Y12_N6
\Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~9_combout\ = (!\OPCODE[0]~input_o\ & (!\OPCODE[1]~input_o\ & (\ShiftRight1~14_combout\ & \ShiftLeft0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \ShiftRight1~14_combout\,
	datad => \ShiftLeft0~5_combout\,
	combout => \Mux13~9_combout\);

-- Location: LCCOMB_X19_Y12_N16
\temp_data_out[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[2]~0_combout\ = (\temp_data_out[2]~16_combout\ & ((\Mux13~9_combout\))) # (!\temp_data_out[2]~16_combout\ & (\Mux13~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~16_combout\,
	datab => \Mux13~5_combout\,
	datad => \Mux13~9_combout\,
	combout => \temp_data_out[2]~0_combout\);

-- Location: LCCOMB_X14_Y11_N0
\temp_data_out[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[2]~17_combout\ = (\OPCODE[2]~input_o\) # ((\OPCODE[0]~input_o\ & \OPCODE[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datac => \OPCODE[1]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \temp_data_out[2]~17_combout\);

-- Location: LCCOMB_X19_Y12_N24
\Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\OPCODE[0]~input_o\ & ((\DATA0[2]~input_o\ & ((!\DATA1[2]~input_o\) # (!\OPCODE[1]~input_o\))) # (!\DATA0[2]~input_o\ & ((\DATA1[2]~input_o\))))) # (!\OPCODE[0]~input_o\ & ((\OPCODE[1]~input_o\ & (!\DATA0[2]~input_o\ & 
-- !\DATA1[2]~input_o\)) # (!\OPCODE[1]~input_o\ & ((!\DATA1[2]~input_o\) # (!\DATA0[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \DATA0[2]~input_o\,
	datad => \DATA1[2]~input_o\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X19_Y12_N14
\RESULT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~1_combout\ = (\DATA0[2]~input_o\ & \DATA1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATA0[2]~input_o\,
	datad => \DATA1[2]~input_o\,
	combout => \RESULT~1_combout\);

-- Location: LCCOMB_X24_Y12_N0
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \OPCODE[0]~input_o\ $ (\DATA1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datac => \DATA1[2]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X18_Y12_N22
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8_combout\ & ((\DATA0[2]~input_o\ & (\Add0~7\ & VCC)) # (!\DATA0[2]~input_o\ & (!\Add0~7\)))) # (!\Add0~8_combout\ & ((\DATA0[2]~input_o\ & (!\Add0~7\)) # (!\DATA0[2]~input_o\ & ((\Add0~7\) # (GND)))))
-- \Add0~10\ = CARRY((\Add0~8_combout\ & (!\DATA0[2]~input_o\ & !\Add0~7\)) # (!\Add0~8_combout\ & ((!\Add0~7\) # (!\DATA0[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \DATA0[2]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X19_Y12_N10
\temp_data_out[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[2]~18_combout\ = (\OPCODE[1]~input_o\ & !\OPCODE[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OPCODE[1]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \temp_data_out[2]~18_combout\);

-- Location: LCCOMB_X19_Y12_N20
\Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (\temp_data_out[2]~17_combout\ & (((\temp_data_out[2]~18_combout\)))) # (!\temp_data_out[2]~17_combout\ & ((\temp_data_out[2]~18_combout\ & ((!\DATA0[2]~input_o\))) # (!\temp_data_out[2]~18_combout\ & (\Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \temp_data_out[2]~17_combout\,
	datac => \DATA0[2]~input_o\,
	datad => \temp_data_out[2]~18_combout\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X19_Y12_N8
\Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (\temp_data_out[2]~17_combout\ & ((\Mux13~7_combout\ & ((\RESULT~1_combout\))) # (!\Mux13~7_combout\ & (\Mux13~6_combout\)))) # (!\temp_data_out[2]~17_combout\ & (((\Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~17_combout\,
	datab => \Mux13~6_combout\,
	datac => \RESULT~1_combout\,
	datad => \Mux13~7_combout\,
	combout => \Mux13~8_combout\);

-- Location: FF_X19_Y12_N17
\temp_data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \temp_data_out[2]~0_combout\,
	asdata => \Mux13~8_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \ALT_INV_OPCODE[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_data_out(2));

-- Location: LCCOMB_X22_Y11_N18
\ShiftRight1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~17_combout\ = (\DATA1[0]~input_o\ & ((\ShiftRight0~3_combout\))) # (!\DATA1[0]~input_o\ & (\ShiftRight1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[0]~input_o\,
	datab => \ShiftRight1~12_combout\,
	datac => \ShiftRight0~3_combout\,
	combout => \ShiftRight1~17_combout\);

-- Location: LCCOMB_X22_Y11_N16
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\temp_data_out[2]~15_combout\ & (((\temp_data_out[2]~11_combout\)))) # (!\temp_data_out[2]~15_combout\ & ((\temp_data_out[2]~11_combout\ & ((\ShiftRight1~4_combout\))) # (!\temp_data_out[2]~11_combout\ & (\ShiftRight1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~3_combout\,
	datab => \temp_data_out[2]~15_combout\,
	datac => \temp_data_out[2]~11_combout\,
	datad => \ShiftRight1~4_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X19_Y12_N18
\RESULT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~2_combout\ = \DATA0[3]~input_o\ $ (\DATA1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[3]~input_o\,
	datad => \DATA1[3]~input_o\,
	combout => \RESULT~2_combout\);

-- Location: LCCOMB_X22_Y14_N6
\ShiftLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~12_combout\ = (!\DATA1[1]~input_o\ & ((\DATA1[0]~input_o\ & (\DATA0[2]~input_o\)) # (!\DATA1[0]~input_o\ & ((\DATA0[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[0]~input_o\,
	datab => \DATA0[2]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA0[3]~input_o\,
	combout => \ShiftLeft0~12_combout\);

-- Location: LCCOMB_X24_Y12_N18
\ShiftLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~13_combout\ = (!\DATA1[2]~input_o\ & ((\ShiftLeft0~12_combout\) # ((\ShiftLeft0~7_combout\ & \DATA1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~7_combout\,
	datab => \DATA1[1]~input_o\,
	datac => \DATA1[2]~input_o\,
	datad => \ShiftLeft0~12_combout\,
	combout => \ShiftLeft0~13_combout\);

-- Location: LCCOMB_X23_Y12_N26
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\temp_data_out[2]~13_combout\ & ((\temp_data_out[2]~14_combout\ & ((\ShiftLeft0~13_combout\))) # (!\temp_data_out[2]~14_combout\ & (!\RESULT~2_combout\)))) # (!\temp_data_out[2]~13_combout\ & (((!\temp_data_out[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~13_combout\,
	datab => \RESULT~2_combout\,
	datac => \temp_data_out[2]~14_combout\,
	datad => \ShiftLeft0~13_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X22_Y10_N16
\ShiftRight1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~15_combout\ = (\DATA1[0]~input_o\ & ((\DATA1[1]~input_o\ & ((\DATA0[14]~input_o\))) # (!\DATA1[1]~input_o\ & (\DATA0[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[12]~input_o\,
	datab => \DATA1[0]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA0[14]~input_o\,
	combout => \ShiftRight1~15_combout\);

-- Location: LCCOMB_X22_Y10_N26
\ShiftRight1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~16_combout\ = (!\DATA1[0]~input_o\ & ((\DATA1[1]~input_o\ & ((\DATA0[13]~input_o\))) # (!\DATA1[1]~input_o\ & (\DATA0[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[1]~input_o\,
	datab => \DATA1[0]~input_o\,
	datac => \DATA0[11]~input_o\,
	datad => \DATA0[13]~input_o\,
	combout => \ShiftRight1~16_combout\);

-- Location: LCCOMB_X22_Y10_N12
\ShiftRight0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~22_combout\ = (\DATA1[2]~input_o\ & (\DATA0[15]~input_o\)) # (!\DATA1[2]~input_o\ & (((\ShiftRight1~15_combout\) # (\ShiftRight1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[15]~input_o\,
	datab => \ShiftRight1~15_combout\,
	datac => \ShiftRight1~16_combout\,
	datad => \DATA1[2]~input_o\,
	combout => \ShiftRight0~22_combout\);

-- Location: LCCOMB_X22_Y11_N22
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & ((\ShiftRight0~22_combout\) # ((!\temp_data_out[2]~12_combout\)))) # (!\Mux12~0_combout\ & (((\DATA0[15]~input_o\ & \temp_data_out[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \ShiftRight0~22_combout\,
	datac => \DATA0[15]~input_o\,
	datad => \temp_data_out[2]~12_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X22_Y11_N12
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux12~2_combout\ & ((\ShiftRight1~17_combout\) # ((!\temp_data_out[2]~15_combout\)))) # (!\Mux12~2_combout\ & (((\temp_data_out[2]~15_combout\ & \Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~17_combout\,
	datab => \Mux12~2_combout\,
	datac => \temp_data_out[2]~15_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X22_Y10_N30
\ShiftRight1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~18_combout\ = (\DATA0[15]~input_o\ & (!\DATA1[0]~input_o\ & (!\DATA1[1]~input_o\ & \DATA1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[15]~input_o\,
	datab => \DATA1[0]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA1[2]~input_o\,
	combout => \ShiftRight1~18_combout\);

-- Location: LCCOMB_X22_Y10_N24
\ShiftRight1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~19_combout\ = (\ShiftRight1~18_combout\) # ((!\DATA1[2]~input_o\ & ((\ShiftRight1~15_combout\) # (\ShiftRight1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~18_combout\,
	datab => \ShiftRight1~15_combout\,
	datac => \ShiftRight1~16_combout\,
	datad => \DATA1[2]~input_o\,
	combout => \ShiftRight1~19_combout\);

-- Location: LCCOMB_X19_Y12_N12
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (!\OPCODE[0]~input_o\ & (!\OPCODE[1]~input_o\ & (\ShiftRight1~19_combout\ & \ShiftLeft0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \ShiftRight1~19_combout\,
	datad => \ShiftLeft0~5_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X19_Y12_N2
\temp_data_out[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[3]~1_combout\ = (\temp_data_out[2]~16_combout\ & ((\Mux12~4_combout\))) # (!\temp_data_out[2]~16_combout\ & (\Mux12~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~16_combout\,
	datab => \Mux12~3_combout\,
	datad => \Mux12~4_combout\,
	combout => \temp_data_out[3]~1_combout\);

-- Location: LCCOMB_X18_Y12_N10
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \OPCODE[0]~input_o\ $ (\DATA1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datad => \DATA1[3]~input_o\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X18_Y12_N24
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Add0~11_combout\ $ (\DATA0[3]~input_o\ $ (!\Add0~10\)))) # (GND)
-- \Add0~13\ = CARRY((\Add0~11_combout\ & ((\DATA0[3]~input_o\) # (!\Add0~10\))) # (!\Add0~11_combout\ & (\DATA0[3]~input_o\ & !\Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \DATA0[3]~input_o\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X23_Y10_N28
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\DATA1[3]~input_o\ & ((\DATA0[3]~input_o\ & (!\OPCODE[1]~input_o\ & \OPCODE[0]~input_o\)) # (!\DATA0[3]~input_o\ & ((\OPCODE[0]~input_o\) # (!\OPCODE[1]~input_o\))))) # (!\DATA1[3]~input_o\ & ((\DATA0[3]~input_o\ & 
-- ((\OPCODE[0]~input_o\) # (!\OPCODE[1]~input_o\))) # (!\DATA0[3]~input_o\ & ((!\OPCODE[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[3]~input_o\,
	datab => \DATA0[3]~input_o\,
	datac => \OPCODE[1]~input_o\,
	datad => \OPCODE[0]~input_o\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X19_Y12_N30
\Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\temp_data_out[2]~18_combout\ & (((\temp_data_out[2]~17_combout\)))) # (!\temp_data_out[2]~18_combout\ & ((\temp_data_out[2]~17_combout\ & ((\Mux12~5_combout\))) # (!\temp_data_out[2]~17_combout\ & (\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~18_combout\,
	datab => \Add0~12_combout\,
	datac => \temp_data_out[2]~17_combout\,
	datad => \Mux12~5_combout\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X19_Y12_N0
\Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (\DATA0[3]~input_o\ & (\Mux12~6_combout\ & ((\DATA1[3]~input_o\) # (!\temp_data_out[2]~18_combout\)))) # (!\DATA0[3]~input_o\ & ((\Mux12~6_combout\ $ (\temp_data_out[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[3]~input_o\,
	datab => \DATA1[3]~input_o\,
	datac => \Mux12~6_combout\,
	datad => \temp_data_out[2]~18_combout\,
	combout => \Mux12~7_combout\);

-- Location: FF_X19_Y12_N3
\temp_data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \temp_data_out[3]~1_combout\,
	asdata => \Mux12~7_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \ALT_INV_OPCODE[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_data_out(3));

-- Location: LCCOMB_X22_Y12_N2
\temp_data_out[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[4]~19_combout\ = (!\temp_data_out[2]~10_combout\ & ((\Mux15~7_combout\) # (!\OPCODE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~7_combout\,
	datac => \OPCODE[2]~input_o\,
	datad => \temp_data_out[2]~10_combout\,
	combout => \temp_data_out[4]~19_combout\);

-- Location: LCCOMB_X22_Y12_N20
\temp_data_out[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[4]~20_combout\ = (\temp_data_out[2]~10_combout\ & (\DATA1[2]~input_o\)) # (!\temp_data_out[2]~10_combout\ & ((\OPCODE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[2]~input_o\,
	datab => \temp_data_out[2]~10_combout\,
	datac => \OPCODE[2]~input_o\,
	combout => \temp_data_out[4]~20_combout\);

-- Location: LCCOMB_X22_Y10_N18
\ShiftRight1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~20_combout\ = (!\DATA1[2]~input_o\ & ((\ShiftRight0~0_combout\) # ((\ShiftRight1~0_combout\ & \DATA1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~0_combout\,
	datab => \ShiftRight1~0_combout\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA1[2]~input_o\,
	combout => \ShiftRight1~20_combout\);

-- Location: LCCOMB_X22_Y12_N22
\ShiftRight0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~23_combout\ = (\DATA1[2]~input_o\ & ((\DATA0[15]~input_o\))) # (!\DATA1[2]~input_o\ & (\ShiftRight0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~1_combout\,
	datab => \DATA0[15]~input_o\,
	datac => \DATA1[2]~input_o\,
	combout => \ShiftRight0~23_combout\);

-- Location: LCCOMB_X21_Y13_N10
\ShiftLeft0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~16_combout\ = (\DATA1[1]~input_o\ & ((\DATA0[2]~input_o\))) # (!\DATA1[1]~input_o\ & (\DATA0[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[4]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA0[2]~input_o\,
	combout => \ShiftLeft0~16_combout\);

-- Location: LCCOMB_X21_Y13_N16
\ShiftLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~15_combout\ = (\DATA1[0]~input_o\ & ((\DATA1[1]~input_o\ & (\DATA0[1]~input_o\)) # (!\DATA1[1]~input_o\ & ((\DATA0[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[1]~input_o\,
	datab => \DATA1[0]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA0[3]~input_o\,
	combout => \ShiftLeft0~15_combout\);

-- Location: LCCOMB_X21_Y13_N12
\ShiftLeft0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~17_combout\ = (\ShiftLeft0~15_combout\) # ((\ShiftLeft0~16_combout\ & !\DATA1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~16_combout\,
	datab => \ShiftLeft0~15_combout\,
	datad => \DATA1[0]~input_o\,
	combout => \ShiftLeft0~17_combout\);

-- Location: LCCOMB_X21_Y13_N22
\ShiftLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~14_combout\ = (\DATA0[0]~input_o\ & (!\DATA1[0]~input_o\ & (!\DATA1[1]~input_o\ & \DATA1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[0]~input_o\,
	datab => \DATA1[0]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA1[2]~input_o\,
	combout => \ShiftLeft0~14_combout\);

-- Location: LCCOMB_X21_Y13_N30
\ShiftLeft0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~18_combout\ = (\ShiftLeft0~14_combout\) # ((\ShiftLeft0~17_combout\ & !\DATA1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~17_combout\,
	datac => \ShiftLeft0~14_combout\,
	datad => \DATA1[2]~input_o\,
	combout => \ShiftLeft0~18_combout\);

-- Location: LCCOMB_X23_Y12_N20
\RESULT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~3_combout\ = \DATA0[4]~input_o\ $ (\DATA1[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[4]~input_o\,
	datad => \DATA1[4]~input_o\,
	combout => \RESULT~3_combout\);

-- Location: LCCOMB_X23_Y12_N22
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\temp_data_out[2]~14_combout\ & (\ShiftLeft0~18_combout\ & ((\temp_data_out[2]~13_combout\)))) # (!\temp_data_out[2]~14_combout\ & (((!\temp_data_out[2]~13_combout\) # (!\RESULT~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~18_combout\,
	datab => \RESULT~3_combout\,
	datac => \temp_data_out[2]~14_combout\,
	datad => \temp_data_out[2]~13_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X22_Y12_N24
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\temp_data_out[2]~12_combout\ & ((\Mux11~0_combout\ & (\ShiftRight0~23_combout\)) # (!\Mux11~0_combout\ & ((\DATA0[15]~input_o\))))) # (!\temp_data_out[2]~12_combout\ & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \temp_data_out[2]~12_combout\,
	datac => \DATA0[15]~input_o\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X22_Y12_N14
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\temp_data_out[4]~19_combout\ & ((\temp_data_out[4]~20_combout\ & (\ShiftRight1~20_combout\)) # (!\temp_data_out[4]~20_combout\ & ((\Mux11~1_combout\))))) # (!\temp_data_out[4]~19_combout\ & (!\temp_data_out[4]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[4]~19_combout\,
	datab => \temp_data_out[4]~20_combout\,
	datac => \ShiftRight1~20_combout\,
	datad => \Mux11~1_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X22_Y12_N16
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux11~2_combout\ & ((\ShiftRight0~9_combout\) # ((!\temp_data_out[2]~10_combout\)))) # (!\Mux11~2_combout\ & (((\ShiftRight0~4_combout\ & \temp_data_out[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~9_combout\,
	datab => \Mux11~2_combout\,
	datac => \ShiftRight0~4_combout\,
	datad => \temp_data_out[2]~10_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X23_Y12_N28
\RESULT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~4_combout\ = (\DATA0[4]~input_o\ & \DATA1[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[4]~input_o\,
	datad => \DATA1[4]~input_o\,
	combout => \RESULT~4_combout\);

-- Location: LCCOMB_X23_Y12_N2
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \DATA1[4]~input_o\ $ (\OPCODE[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA1[4]~input_o\,
	datad => \OPCODE[0]~input_o\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X18_Y12_N26
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~14_combout\ & ((\DATA0[4]~input_o\ & (\Add0~13\ & VCC)) # (!\DATA0[4]~input_o\ & (!\Add0~13\)))) # (!\Add0~14_combout\ & ((\DATA0[4]~input_o\ & (!\Add0~13\)) # (!\DATA0[4]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~16\ = CARRY((\Add0~14_combout\ & (!\DATA0[4]~input_o\ & !\Add0~13\)) # (!\Add0~14_combout\ & ((!\Add0~13\) # (!\DATA0[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \DATA0[4]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X19_Y12_N26
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\temp_data_out[2]~17_combout\ & (((\temp_data_out[2]~18_combout\)))) # (!\temp_data_out[2]~17_combout\ & ((\temp_data_out[2]~18_combout\ & (!\DATA0[4]~input_o\)) # (!\temp_data_out[2]~18_combout\ & ((\Add0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[4]~input_o\,
	datab => \temp_data_out[2]~17_combout\,
	datac => \Add0~15_combout\,
	datad => \temp_data_out[2]~18_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X23_Y12_N24
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\OPCODE[0]~input_o\ & ((\DATA0[4]~input_o\ & ((!\DATA1[4]~input_o\) # (!\OPCODE[1]~input_o\))) # (!\DATA0[4]~input_o\ & ((\DATA1[4]~input_o\))))) # (!\OPCODE[0]~input_o\ & ((\OPCODE[1]~input_o\ & (!\DATA0[4]~input_o\ & 
-- !\DATA1[4]~input_o\)) # (!\OPCODE[1]~input_o\ & ((!\DATA1[4]~input_o\) # (!\DATA0[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \DATA0[4]~input_o\,
	datad => \DATA1[4]~input_o\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X23_Y12_N14
\Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\temp_data_out[2]~17_combout\ & ((\Mux11~5_combout\ & (\RESULT~4_combout\)) # (!\Mux11~5_combout\ & ((\Mux11~4_combout\))))) # (!\temp_data_out[2]~17_combout\ & (((\Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~17_combout\,
	datab => \RESULT~4_combout\,
	datac => \Mux11~5_combout\,
	datad => \Mux11~4_combout\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X22_Y7_N24
\Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (\OPCODE[3]~input_o\ & (\Mux11~3_combout\)) # (!\OPCODE[3]~input_o\ & ((\Mux11~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datab => \OPCODE[3]~input_o\,
	datad => \Mux11~6_combout\,
	combout => \Mux11~7_combout\);

-- Location: FF_X22_Y7_N25
\temp_data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux11~7_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_data_out(4));

-- Location: LCCOMB_X18_Y12_N14
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = \OPCODE[0]~input_o\ $ (\DATA1[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datac => \DATA1[5]~input_o\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X18_Y12_N28
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = ((\DATA0[5]~input_o\ $ (\Add0~17_combout\ $ (!\Add0~16\)))) # (GND)
-- \Add0~19\ = CARRY((\DATA0[5]~input_o\ & ((\Add0~17_combout\) # (!\Add0~16\))) # (!\DATA0[5]~input_o\ & (\Add0~17_combout\ & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[5]~input_o\,
	datab => \Add0~17_combout\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X18_Y12_N4
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\DATA1[5]~input_o\ & ((\OPCODE[1]~input_o\ & (!\DATA0[5]~input_o\ & \OPCODE[0]~input_o\)) # (!\OPCODE[1]~input_o\ & ((\OPCODE[0]~input_o\) # (!\DATA0[5]~input_o\))))) # (!\DATA1[5]~input_o\ & ((\DATA0[5]~input_o\ & 
-- ((\OPCODE[0]~input_o\) # (!\OPCODE[1]~input_o\))) # (!\DATA0[5]~input_o\ & ((!\OPCODE[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[1]~input_o\,
	datab => \DATA1[5]~input_o\,
	datac => \DATA0[5]~input_o\,
	datad => \OPCODE[0]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X19_Y12_N4
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\temp_data_out[2]~17_combout\ & (((\Mux10~4_combout\) # (\temp_data_out[2]~18_combout\)))) # (!\temp_data_out[2]~17_combout\ & (\Add0~18_combout\ & ((!\temp_data_out[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~17_combout\,
	datab => \Add0~18_combout\,
	datac => \Mux10~4_combout\,
	datad => \temp_data_out[2]~18_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X21_Y11_N16
\Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\DATA0[5]~input_o\ & (\Mux10~5_combout\ & ((\DATA1[5]~input_o\) # (!\temp_data_out[2]~18_combout\)))) # (!\DATA0[5]~input_o\ & ((\temp_data_out[2]~18_combout\ $ (\Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[5]~input_o\,
	datab => \DATA1[5]~input_o\,
	datac => \temp_data_out[2]~18_combout\,
	datad => \Mux10~5_combout\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X21_Y11_N12
\ShiftRight0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~24_combout\ = (\DATA1[2]~input_o\ & (\DATA0[15]~input_o\)) # (!\DATA1[2]~input_o\ & ((\DATA1[1]~input_o\ & (\DATA0[15]~input_o\)) # (!\DATA1[1]~input_o\ & ((\ShiftRight0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[15]~input_o\,
	datab => \ShiftRight0~16_combout\,
	datac => \DATA1[2]~input_o\,
	datad => \DATA1[1]~input_o\,
	combout => \ShiftRight0~24_combout\);

-- Location: LCCOMB_X23_Y12_N16
\RESULT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~5_combout\ = \DATA1[5]~input_o\ $ (\DATA0[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA1[5]~input_o\,
	datac => \DATA0[5]~input_o\,
	combout => \RESULT~5_combout\);

-- Location: LCCOMB_X22_Y14_N24
\ShiftLeft0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~19_combout\ = (\DATA1[1]~input_o\ & ((\DATA0[3]~input_o\))) # (!\DATA1[1]~input_o\ & (\DATA0[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[5]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA0[3]~input_o\,
	combout => \ShiftLeft0~19_combout\);

-- Location: LCCOMB_X21_Y13_N24
\ShiftLeft0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~20_combout\ = (\DATA1[0]~input_o\ & (\ShiftLeft0~16_combout\)) # (!\DATA1[0]~input_o\ & ((\ShiftLeft0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~16_combout\,
	datab => \DATA1[0]~input_o\,
	datad => \ShiftLeft0~19_combout\,
	combout => \ShiftLeft0~20_combout\);

-- Location: LCCOMB_X23_Y13_N16
\ShiftLeft0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~21_combout\ = (\DATA1[2]~input_o\ & (\ShiftLeft0~7_combout\ & ((!\DATA1[1]~input_o\)))) # (!\DATA1[2]~input_o\ & (((\ShiftLeft0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~7_combout\,
	datab => \DATA1[2]~input_o\,
	datac => \ShiftLeft0~20_combout\,
	datad => \DATA1[1]~input_o\,
	combout => \ShiftLeft0~21_combout\);

-- Location: LCCOMB_X23_Y12_N18
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\temp_data_out[2]~13_combout\ & ((\temp_data_out[2]~14_combout\ & ((\ShiftLeft0~21_combout\))) # (!\temp_data_out[2]~14_combout\ & (!\RESULT~5_combout\)))) # (!\temp_data_out[2]~13_combout\ & (((!\temp_data_out[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~13_combout\,
	datab => \RESULT~5_combout\,
	datac => \temp_data_out[2]~14_combout\,
	datad => \ShiftLeft0~21_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X22_Y12_N12
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\temp_data_out[2]~12_combout\ & ((\Mux10~0_combout\ & (\ShiftRight0~24_combout\)) # (!\Mux10~0_combout\ & ((\DATA0[15]~input_o\))))) # (!\temp_data_out[2]~12_combout\ & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~24_combout\,
	datab => \temp_data_out[2]~12_combout\,
	datac => \DATA0[15]~input_o\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X22_Y12_N18
\ShiftRight1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~21_combout\ = (!\DATA1[2]~input_o\ & \ShiftRight1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[2]~input_o\,
	datac => \ShiftRight1~7_combout\,
	combout => \ShiftRight1~21_combout\);

-- Location: LCCOMB_X22_Y12_N6
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\temp_data_out[4]~20_combout\ & (((\temp_data_out[4]~19_combout\ & \ShiftRight1~21_combout\)))) # (!\temp_data_out[4]~20_combout\ & ((\Mux10~1_combout\) # ((!\temp_data_out[4]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \temp_data_out[4]~20_combout\,
	datac => \temp_data_out[4]~19_combout\,
	datad => \ShiftRight1~21_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X21_Y11_N6
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux10~2_combout\ & (((\ShiftRight0~14_combout\) # (!\temp_data_out[2]~10_combout\)))) # (!\Mux10~2_combout\ & (\ShiftRight0~18_combout\ & ((\temp_data_out[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~18_combout\,
	datab => \Mux10~2_combout\,
	datac => \ShiftRight0~14_combout\,
	datad => \temp_data_out[2]~10_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X21_Y11_N2
\Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\OPCODE[3]~input_o\ & ((\Mux10~3_combout\))) # (!\OPCODE[3]~input_o\ & (\Mux10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[3]~input_o\,
	datab => \Mux10~6_combout\,
	datad => \Mux10~3_combout\,
	combout => \Mux10~7_combout\);

-- Location: FF_X21_Y11_N3
\temp_data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux10~7_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_data_out(5));

-- Location: LCCOMB_X14_Y11_N12
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \DATA1[6]~input_o\ $ (\OPCODE[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA1[6]~input_o\,
	datac => \OPCODE[0]~input_o\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X18_Y12_N30
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Add0~20_combout\ & ((\DATA0[6]~input_o\ & (\Add0~19\ & VCC)) # (!\DATA0[6]~input_o\ & (!\Add0~19\)))) # (!\Add0~20_combout\ & ((\DATA0[6]~input_o\ & (!\Add0~19\)) # (!\DATA0[6]~input_o\ & ((\Add0~19\) # (GND)))))
-- \Add0~22\ = CARRY((\Add0~20_combout\ & (!\DATA0[6]~input_o\ & !\Add0~19\)) # (!\Add0~20_combout\ & ((!\Add0~19\) # (!\DATA0[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \DATA0[6]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X14_Y11_N22
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\temp_data_out[2]~17_combout\ & (((\temp_data_out[2]~18_combout\)))) # (!\temp_data_out[2]~17_combout\ & ((\temp_data_out[2]~18_combout\ & ((!\DATA0[6]~input_o\))) # (!\temp_data_out[2]~18_combout\ & (\Add0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~21_combout\,
	datab => \temp_data_out[2]~17_combout\,
	datac => \DATA0[6]~input_o\,
	datad => \temp_data_out[2]~18_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X14_Y11_N18
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\OPCODE[0]~input_o\ & ((\DATA0[6]~input_o\ & ((!\DATA1[6]~input_o\) # (!\OPCODE[1]~input_o\))) # (!\DATA0[6]~input_o\ & ((\DATA1[6]~input_o\))))) # (!\OPCODE[0]~input_o\ & ((\DATA0[6]~input_o\ & (!\OPCODE[1]~input_o\ & 
-- !\DATA1[6]~input_o\)) # (!\DATA0[6]~input_o\ & ((!\DATA1[6]~input_o\) # (!\OPCODE[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \DATA0[6]~input_o\,
	datac => \OPCODE[1]~input_o\,
	datad => \DATA1[6]~input_o\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X14_Y11_N8
\RESULT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~7_combout\ = (\DATA0[6]~input_o\ & \DATA1[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATA0[6]~input_o\,
	datad => \DATA1[6]~input_o\,
	combout => \RESULT~7_combout\);

-- Location: LCCOMB_X14_Y11_N26
\Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\Mux9~5_combout\ & (((\RESULT~7_combout\) # (!\temp_data_out[2]~17_combout\)))) # (!\Mux9~5_combout\ & (\Mux9~4_combout\ & ((\temp_data_out[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~5_combout\,
	datab => \Mux9~4_combout\,
	datac => \RESULT~7_combout\,
	datad => \temp_data_out[2]~17_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X22_Y10_N28
\ShiftRight1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~22_combout\ = (\ShiftRight1~0_combout\ & (!\DATA1[1]~input_o\ & !\DATA1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~0_combout\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA1[2]~input_o\,
	combout => \ShiftRight1~22_combout\);

-- Location: LCCOMB_X21_Y13_N8
\ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = (\DATA1[0]~input_o\) # ((\DATA1[1]~input_o\) # (\DATA1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA1[0]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA1[2]~input_o\,
	combout => \ShiftLeft0~6_combout\);

-- Location: LCCOMB_X21_Y12_N16
\ShiftRight0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~25_combout\ = (\ShiftLeft0~6_combout\ & (\DATA0[15]~input_o\)) # (!\ShiftLeft0~6_combout\ & ((\DATA0[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~6_combout\,
	datab => \DATA0[15]~input_o\,
	datac => \DATA0[14]~input_o\,
	combout => \ShiftRight0~25_combout\);

-- Location: LCCOMB_X22_Y14_N2
\ShiftLeft0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~22_combout\ = (\DATA1[1]~input_o\ & ((\DATA0[4]~input_o\))) # (!\DATA1[1]~input_o\ & (\DATA0[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[6]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA0[4]~input_o\,
	combout => \ShiftLeft0~22_combout\);

-- Location: LCCOMB_X22_Y14_N4
\ShiftLeft0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~23_combout\ = (\DATA1[0]~input_o\ & ((\ShiftLeft0~19_combout\))) # (!\DATA1[0]~input_o\ & (\ShiftLeft0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[0]~input_o\,
	datab => \ShiftLeft0~22_combout\,
	datad => \ShiftLeft0~19_combout\,
	combout => \ShiftLeft0~23_combout\);

-- Location: LCCOMB_X22_Y14_N30
\ShiftLeft0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~24_combout\ = (\DATA1[2]~input_o\ & (\ShiftLeft0~10_combout\)) # (!\DATA1[2]~input_o\ & ((\ShiftLeft0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~10_combout\,
	datac => \DATA1[2]~input_o\,
	datad => \ShiftLeft0~23_combout\,
	combout => \ShiftLeft0~24_combout\);

-- Location: LCCOMB_X22_Y14_N8
\RESULT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~6_combout\ = \DATA1[6]~input_o\ $ (\DATA0[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA1[6]~input_o\,
	datac => \DATA0[6]~input_o\,
	combout => \RESULT~6_combout\);

-- Location: LCCOMB_X22_Y14_N18
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\temp_data_out[2]~13_combout\ & ((\temp_data_out[2]~14_combout\ & (\ShiftLeft0~24_combout\)) # (!\temp_data_out[2]~14_combout\ & ((!\RESULT~6_combout\))))) # (!\temp_data_out[2]~13_combout\ & (((!\temp_data_out[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~24_combout\,
	datab => \temp_data_out[2]~13_combout\,
	datac => \RESULT~6_combout\,
	datad => \temp_data_out[2]~14_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X21_Y12_N2
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\temp_data_out[2]~12_combout\ & ((\Mux9~0_combout\ & (\ShiftRight0~25_combout\)) # (!\Mux9~0_combout\ & ((\DATA0[15]~input_o\))))) # (!\temp_data_out[2]~12_combout\ & (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~12_combout\,
	datab => \ShiftRight0~25_combout\,
	datac => \DATA0[15]~input_o\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X22_Y12_N0
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\temp_data_out[4]~19_combout\ & ((\temp_data_out[4]~20_combout\ & (\ShiftRight1~22_combout\)) # (!\temp_data_out[4]~20_combout\ & ((\Mux9~1_combout\))))) # (!\temp_data_out[4]~19_combout\ & (((!\temp_data_out[4]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~22_combout\,
	datab => \temp_data_out[4]~19_combout\,
	datac => \Mux9~1_combout\,
	datad => \temp_data_out[4]~20_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X21_Y12_N4
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\temp_data_out[2]~10_combout\ & ((\Mux9~2_combout\ & (\ShiftRight1~13_combout\)) # (!\Mux9~2_combout\ & ((\ShiftRight1~10_combout\))))) # (!\temp_data_out[2]~10_combout\ & (((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~13_combout\,
	datab => \temp_data_out[2]~10_combout\,
	datac => \Mux9~2_combout\,
	datad => \ShiftRight1~10_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X14_Y11_N30
\Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (\OPCODE[3]~input_o\ & ((\Mux9~3_combout\))) # (!\OPCODE[3]~input_o\ & (\Mux9~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[3]~input_o\,
	datac => \Mux9~6_combout\,
	datad => \Mux9~3_combout\,
	combout => \Mux9~7_combout\);

-- Location: FF_X14_Y11_N31
\temp_data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux9~7_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_data_out(6));

-- Location: LCCOMB_X22_Y10_N22
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\DATA1[2]~input_o\ & (((\ShiftRight1~15_combout\) # (\ShiftRight1~16_combout\)))) # (!\DATA1[2]~input_o\ & (\ShiftRight1~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~17_combout\,
	datab => \ShiftRight1~15_combout\,
	datac => \ShiftRight1~16_combout\,
	datad => \DATA1[2]~input_o\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X21_Y12_N6
\Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~11_combout\ = (\DATA1[3]~input_o\ & (!\ShiftLeft0~6_combout\ & (\DATA0[15]~input_o\))) # (!\DATA1[3]~input_o\ & (((\Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~6_combout\,
	datab => \DATA0[15]~input_o\,
	datac => \DATA1[3]~input_o\,
	datad => \Mux8~3_combout\,
	combout => \Mux8~11_combout\);

-- Location: LCCOMB_X24_Y13_N22
\Mux8~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~13_combout\ = (!\OPCODE[0]~input_o\ & (\Mux8~11_combout\ & (\ShiftLeft0~5_combout\ & !\OPCODE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \Mux8~11_combout\,
	datac => \ShiftLeft0~5_combout\,
	datad => \OPCODE[1]~input_o\,
	combout => \Mux8~13_combout\);

-- Location: LCCOMB_X24_Y13_N10
\Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\DATA1[7]~input_o\ & ((\OPCODE[1]~input_o\ & (\OPCODE[0]~input_o\ & !\DATA0[7]~input_o\)) # (!\OPCODE[1]~input_o\ & ((\OPCODE[0]~input_o\) # (!\DATA0[7]~input_o\))))) # (!\DATA1[7]~input_o\ & ((\OPCODE[0]~input_o\ & 
-- ((\DATA0[7]~input_o\))) # (!\OPCODE[0]~input_o\ & ((!\DATA0[7]~input_o\) # (!\OPCODE[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[1]~input_o\,
	datab => \DATA1[7]~input_o\,
	datac => \OPCODE[0]~input_o\,
	datad => \DATA0[7]~input_o\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X24_Y13_N4
\Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\OPCODE[1]~input_o\ & ((\OPCODE[0]~input_o\ & (\DATA1[7]~input_o\ & \DATA0[7]~input_o\)) # (!\OPCODE[0]~input_o\ & ((!\DATA0[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[1]~input_o\,
	datab => \DATA1[7]~input_o\,
	datac => \OPCODE[0]~input_o\,
	datad => \DATA0[7]~input_o\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X23_Y12_N4
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = \DATA1[7]~input_o\ $ (\OPCODE[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[7]~input_o\,
	datad => \OPCODE[0]~input_o\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X18_Y11_N0
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\Add0~23_combout\ $ (\DATA0[7]~input_o\ $ (!\Add0~22\)))) # (GND)
-- \Add0~25\ = CARRY((\Add0~23_combout\ & ((\DATA0[7]~input_o\) # (!\Add0~22\))) # (!\Add0~23_combout\ & (\DATA0[7]~input_o\ & !\Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~23_combout\,
	datab => \DATA0[7]~input_o\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X24_Y13_N30
\Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (\Mux8~8_combout\) # ((!\OPCODE[1]~input_o\ & \Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[1]~input_o\,
	datab => \Mux8~8_combout\,
	datac => \Add0~24_combout\,
	combout => \Mux8~9_combout\);

-- Location: LCCOMB_X24_Y13_N0
\Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~10_combout\ = (\OPCODE[3]~input_o\ & (((\OPCODE[2]~input_o\)))) # (!\OPCODE[3]~input_o\ & ((\OPCODE[2]~input_o\ & (\Mux8~7_combout\)) # (!\OPCODE[2]~input_o\ & ((\Mux8~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~7_combout\,
	datab => \OPCODE[3]~input_o\,
	datac => \Mux8~9_combout\,
	datad => \OPCODE[2]~input_o\,
	combout => \Mux8~10_combout\);

-- Location: LCCOMB_X21_Y10_N2
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\OPCODE[1]~input_o\ & ((\temp_data_out[2]~9_combout\ & ((\Mux8~3_combout\))) # (!\temp_data_out[2]~9_combout\ & (\DATA0[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~9_combout\,
	datab => \OPCODE[1]~input_o\,
	datac => \DATA0[15]~input_o\,
	datad => \Mux8~3_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X24_Y13_N14
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux8~4_combout\) # ((!\OPCODE[1]~input_o\ & (\DATA0[7]~input_o\ $ (!\DATA1[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \DATA0[7]~input_o\,
	datac => \DATA1[7]~input_o\,
	datad => \OPCODE[1]~input_o\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X22_Y14_N20
\ShiftLeft0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~26_combout\ = (\DATA1[1]~input_o\ & (\DATA0[5]~input_o\)) # (!\DATA1[1]~input_o\ & ((\DATA0[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[5]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA0[7]~input_o\,
	combout => \ShiftLeft0~26_combout\);

-- Location: LCCOMB_X22_Y14_N14
\ShiftLeft0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~27_combout\ = (\DATA1[0]~input_o\ & (\ShiftLeft0~22_combout\)) # (!\DATA1[0]~input_o\ & ((\ShiftLeft0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[0]~input_o\,
	datab => \ShiftLeft0~22_combout\,
	datad => \ShiftLeft0~26_combout\,
	combout => \ShiftLeft0~27_combout\);

-- Location: LCCOMB_X24_Y12_N12
\ShiftLeft0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~25_combout\ = (\ShiftLeft0~12_combout\) # ((\DATA1[1]~input_o\ & \ShiftLeft0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~12_combout\,
	datab => \DATA1[1]~input_o\,
	datac => \ShiftLeft0~7_combout\,
	combout => \ShiftLeft0~25_combout\);

-- Location: LCCOMB_X24_Y13_N20
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\DATA1[2]~input_o\ & ((\ShiftLeft0~25_combout\))) # (!\DATA1[2]~input_o\ & (\ShiftLeft0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[2]~input_o\,
	datab => \ShiftLeft0~27_combout\,
	datac => \ShiftLeft0~25_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X24_Y13_N24
\Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux14~0_combout\ & ((\Mux8~2_combout\) # ((\Mux8~5_combout\ & !\OPCODE[0]~input_o\)))) # (!\Mux14~0_combout\ & (\Mux8~5_combout\ & (!\OPCODE[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux8~5_combout\,
	datac => \OPCODE[0]~input_o\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X24_Y13_N8
\Mux8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~12_combout\ = (\Mux8~10_combout\ & ((\Mux8~13_combout\) # ((!\OPCODE[3]~input_o\)))) # (!\Mux8~10_combout\ & (((\OPCODE[3]~input_o\ & \Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~13_combout\,
	datab => \Mux8~10_combout\,
	datac => \OPCODE[3]~input_o\,
	datad => \Mux8~6_combout\,
	combout => \Mux8~12_combout\);

-- Location: FF_X24_Y13_N9
\temp_data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux8~12_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_data_out(7));

-- Location: LCCOMB_X24_Y13_N6
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\OPCODE[0]~input_o\ & ((\DATA0[8]~input_o\ & ((!\OPCODE[1]~input_o\) # (!\DATA1[8]~input_o\))) # (!\DATA0[8]~input_o\ & (\DATA1[8]~input_o\)))) # (!\OPCODE[0]~input_o\ & ((\DATA0[8]~input_o\ & (!\DATA1[8]~input_o\ & 
-- !\OPCODE[1]~input_o\)) # (!\DATA0[8]~input_o\ & ((!\OPCODE[1]~input_o\) # (!\DATA1[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \DATA0[8]~input_o\,
	datac => \DATA1[8]~input_o\,
	datad => \OPCODE[1]~input_o\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X21_Y10_N12
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = \DATA1[8]~input_o\ $ (\OPCODE[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA1[8]~input_o\,
	datad => \OPCODE[0]~input_o\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X18_Y11_N2
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\Add0~26_combout\ & ((\DATA0[8]~input_o\ & (\Add0~25\ & VCC)) # (!\DATA0[8]~input_o\ & (!\Add0~25\)))) # (!\Add0~26_combout\ & ((\DATA0[8]~input_o\ & (!\Add0~25\)) # (!\DATA0[8]~input_o\ & ((\Add0~25\) # (GND)))))
-- \Add0~28\ = CARRY((\Add0~26_combout\ & (!\DATA0[8]~input_o\ & !\Add0~25\)) # (!\Add0~26_combout\ & ((!\Add0~25\) # (!\DATA0[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \DATA0[8]~input_o\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X24_Y13_N16
\Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\OPCODE[1]~input_o\ & ((\OPCODE[0]~input_o\ & (\DATA0[8]~input_o\ & \DATA1[8]~input_o\)) # (!\OPCODE[0]~input_o\ & (!\DATA0[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \DATA0[8]~input_o\,
	datac => \DATA1[8]~input_o\,
	datad => \OPCODE[1]~input_o\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X24_Y13_N18
\Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\Mux7~7_combout\) # ((!\OPCODE[1]~input_o\ & \Add0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[1]~input_o\,
	datac => \Add0~27_combout\,
	datad => \Mux7~7_combout\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X24_Y13_N28
\Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (\OPCODE[3]~input_o\ & (((\OPCODE[2]~input_o\)))) # (!\OPCODE[3]~input_o\ & ((\OPCODE[2]~input_o\ & (\Mux7~6_combout\)) # (!\OPCODE[2]~input_o\ & ((\Mux7~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~6_combout\,
	datab => \Mux7~8_combout\,
	datac => \OPCODE[3]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X22_Y12_N10
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\temp_data_out[2]~9_combout\ & ((\DATA1[2]~input_o\ & (\ShiftRight0~1_combout\)) # (!\DATA1[2]~input_o\ & ((\ShiftRight0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~1_combout\,
	datab => \ShiftRight0~4_combout\,
	datac => \DATA1[2]~input_o\,
	datad => \temp_data_out[2]~9_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X22_Y12_N30
\Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~10_combout\ = (!\OPCODE[1]~input_o\ & (!\OPCODE[0]~input_o\ & \Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OPCODE[1]~input_o\,
	datac => \OPCODE[0]~input_o\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~10_combout\);

-- Location: LCCOMB_X22_Y13_N28
\ShiftLeft0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~28_combout\ = (\DATA1[1]~input_o\ & (\DATA0[6]~input_o\)) # (!\DATA1[1]~input_o\ & ((\DATA0[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[6]~input_o\,
	datab => \DATA0[8]~input_o\,
	datac => \DATA1[1]~input_o\,
	combout => \ShiftLeft0~28_combout\);

-- Location: LCCOMB_X22_Y13_N22
\ShiftLeft0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~29_combout\ = (\DATA1[0]~input_o\ & (\ShiftLeft0~26_combout\)) # (!\DATA1[0]~input_o\ & ((\ShiftLeft0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~26_combout\,
	datab => \ShiftLeft0~28_combout\,
	datad => \DATA1[0]~input_o\,
	combout => \ShiftLeft0~29_combout\);

-- Location: LCCOMB_X21_Y13_N18
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\DATA1[3]~input_o\ & ((\DATA1[2]~input_o\ & (\ShiftLeft0~17_combout\)) # (!\DATA1[2]~input_o\ & ((\ShiftLeft0~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~17_combout\,
	datab => \ShiftLeft0~29_combout\,
	datac => \DATA1[3]~input_o\,
	datad => \DATA1[2]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X21_Y13_N28
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\) # ((\DATA0[0]~input_o\ & (\DATA1[3]~input_o\ & !\ShiftLeft0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[0]~input_o\,
	datab => \Mux7~0_combout\,
	datac => \DATA1[3]~input_o\,
	datad => \ShiftLeft0~6_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X22_Y12_N4
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\OPCODE[1]~input_o\ & ((\Mux7~2_combout\) # ((\DATA0[15]~input_o\ & !\temp_data_out[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \DATA0[15]~input_o\,
	datac => \temp_data_out[2]~9_combout\,
	datad => \OPCODE[1]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X24_Y13_N26
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux7~3_combout\) # ((!\OPCODE[1]~input_o\ & (\DATA0[8]~input_o\ $ (!\DATA1[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \DATA0[8]~input_o\,
	datac => \DATA1[8]~input_o\,
	datad => \OPCODE[1]~input_o\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X24_Y13_N12
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\OPCODE[0]~input_o\ & (\ShiftLeft0~5_combout\ & (\Mux7~1_combout\))) # (!\OPCODE[0]~input_o\ & (((\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~5_combout\,
	datab => \Mux7~1_combout\,
	datac => \Mux7~4_combout\,
	datad => \OPCODE[0]~input_o\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X24_Y13_N2
\Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~11_combout\ = (\OPCODE[3]~input_o\ & ((\Mux7~9_combout\ & (\Mux7~10_combout\)) # (!\Mux7~9_combout\ & ((\Mux7~5_combout\))))) # (!\OPCODE[3]~input_o\ & (\Mux7~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[3]~input_o\,
	datab => \Mux7~9_combout\,
	datac => \Mux7~10_combout\,
	datad => \Mux7~5_combout\,
	combout => \Mux7~11_combout\);

-- Location: FF_X24_Y13_N3
\temp_data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux7~11_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_data_out(8));

-- Location: LCCOMB_X18_Y11_N22
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\OPCODE[0]~input_o\ & ((\DATA1[9]~input_o\ & ((!\DATA0[9]~input_o\) # (!\OPCODE[1]~input_o\))) # (!\DATA1[9]~input_o\ & ((\DATA0[9]~input_o\))))) # (!\OPCODE[0]~input_o\ & ((\DATA1[9]~input_o\ & (!\OPCODE[1]~input_o\ & 
-- !\DATA0[9]~input_o\)) # (!\DATA1[9]~input_o\ & ((!\DATA0[9]~input_o\) # (!\OPCODE[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \DATA1[9]~input_o\,
	datac => \OPCODE[1]~input_o\,
	datad => \DATA0[9]~input_o\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X18_Y11_N24
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = \DATA1[9]~input_o\ $ (\OPCODE[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA1[9]~input_o\,
	datad => \OPCODE[0]~input_o\,
	combout => \Add0~29_combout\);

-- Location: LCCOMB_X18_Y11_N4
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = ((\Add0~29_combout\ $ (\DATA0[9]~input_o\ $ (!\Add0~28\)))) # (GND)
-- \Add0~31\ = CARRY((\Add0~29_combout\ & ((\DATA0[9]~input_o\) # (!\Add0~28\))) # (!\Add0~29_combout\ & (\DATA0[9]~input_o\ & !\Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~29_combout\,
	datab => \DATA0[9]~input_o\,
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X21_Y11_N28
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\temp_data_out[2]~17_combout\ & ((\Mux6~4_combout\) # ((\temp_data_out[2]~18_combout\)))) # (!\temp_data_out[2]~17_combout\ & (((!\temp_data_out[2]~18_combout\ & \Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~17_combout\,
	datab => \Mux6~4_combout\,
	datac => \temp_data_out[2]~18_combout\,
	datad => \Add0~30_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X21_Y11_N14
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\DATA0[9]~input_o\ & (\Mux6~5_combout\ & ((\DATA1[9]~input_o\) # (!\temp_data_out[2]~18_combout\)))) # (!\DATA0[9]~input_o\ & ((\temp_data_out[2]~18_combout\ $ (\Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[9]~input_o\,
	datab => \DATA1[9]~input_o\,
	datac => \temp_data_out[2]~18_combout\,
	datad => \Mux6~5_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X14_Y11_N4
\temp_data_out[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[9]~21_combout\ = (!\OPCODE[0]~input_o\ & (\OPCODE[1]~input_o\ & !\OPCODE[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datac => \OPCODE[1]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \temp_data_out[9]~21_combout\);

-- Location: LCCOMB_X23_Y11_N6
\temp_data_out[9]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[9]~24_combout\ = (\OPCODE[2]~input_o\) # ((!\OPCODE[0]~input_o\ & (\OPCODE[1]~input_o\ & !\temp_data_out[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \temp_data_out[2]~9_combout\,
	datad => \OPCODE[2]~input_o\,
	combout => \temp_data_out[9]~24_combout\);

-- Location: LCCOMB_X23_Y11_N0
\temp_data_out[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[9]~25_combout\ = (!\temp_data_out[9]~21_combout\ & (((\Mux15~7_combout\ & !\DATA1[3]~input_o\)) # (!\temp_data_out[9]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[9]~24_combout\,
	datab => \temp_data_out[9]~21_combout\,
	datac => \Mux15~7_combout\,
	datad => \DATA1[3]~input_o\,
	combout => \temp_data_out[9]~25_combout\);

-- Location: LCCOMB_X22_Y13_N0
\ShiftLeft0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~30_combout\ = (!\DATA1[0]~input_o\ & ((\DATA1[1]~input_o\ & ((\DATA0[7]~input_o\))) # (!\DATA1[1]~input_o\ & (\DATA0[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[9]~input_o\,
	datab => \DATA1[0]~input_o\,
	datac => \DATA1[1]~input_o\,
	datad => \DATA0[7]~input_o\,
	combout => \ShiftLeft0~30_combout\);

-- Location: LCCOMB_X22_Y13_N2
\ShiftLeft0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~31_combout\ = (\ShiftLeft0~30_combout\) # ((\DATA1[0]~input_o\ & \ShiftLeft0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~30_combout\,
	datac => \DATA1[0]~input_o\,
	datad => \ShiftLeft0~28_combout\,
	combout => \ShiftLeft0~31_combout\);

-- Location: LCCOMB_X24_Y12_N6
\RESULT~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~8_combout\ = \DATA0[9]~input_o\ $ (\DATA1[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA0[9]~input_o\,
	datac => \DATA1[9]~input_o\,
	combout => \RESULT~8_combout\);

-- Location: LCCOMB_X24_Y12_N8
\temp_data_out[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[9]~22_combout\ = ((\ShiftLeft0~5_combout\ & \DATA1[3]~input_o\)) # (!\OPCODE[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \ShiftLeft0~5_combout\,
	datad => \DATA1[3]~input_o\,
	combout => \temp_data_out[9]~22_combout\);

-- Location: LCCOMB_X24_Y12_N2
\temp_data_out[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[9]~23_combout\ = (\OPCODE[0]~input_o\ & ((\DATA1[2]~input_o\) # (!\temp_data_out[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \temp_data_out[2]~9_combout\,
	datac => \DATA1[2]~input_o\,
	combout => \temp_data_out[9]~23_combout\);

-- Location: LCCOMB_X24_Y12_N28
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\temp_data_out[9]~22_combout\ & ((\temp_data_out[9]~23_combout\ & ((\ShiftLeft0~8_combout\))) # (!\temp_data_out[9]~23_combout\ & (!\RESULT~8_combout\)))) # (!\temp_data_out[9]~22_combout\ & (((!\temp_data_out[9]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESULT~8_combout\,
	datab => \temp_data_out[9]~22_combout\,
	datac => \ShiftLeft0~8_combout\,
	datad => \temp_data_out[9]~23_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X23_Y11_N20
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux14~0_combout\ & ((\Mux6~0_combout\ & (\ShiftLeft0~31_combout\)) # (!\Mux6~0_combout\ & ((\ShiftLeft0~20_combout\))))) # (!\Mux14~0_combout\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \ShiftLeft0~31_combout\,
	datac => \ShiftLeft0~20_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X23_Y11_N2
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\temp_data_out[9]~24_combout\ & (\temp_data_out[9]~25_combout\ & (\ShiftRight1~8_combout\))) # (!\temp_data_out[9]~24_combout\ & (((\Mux6~1_combout\)) # (!\temp_data_out[9]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[9]~24_combout\,
	datab => \temp_data_out[9]~25_combout\,
	datac => \ShiftRight1~8_combout\,
	datad => \Mux6~1_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X21_Y11_N10
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\temp_data_out[9]~21_combout\ & ((\Mux6~2_combout\ & (\ShiftRight0~19_combout\)) # (!\Mux6~2_combout\ & ((\DATA0[15]~input_o\))))) # (!\temp_data_out[9]~21_combout\ & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~19_combout\,
	datab => \temp_data_out[9]~21_combout\,
	datac => \DATA0[15]~input_o\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X21_Y11_N4
\Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\OPCODE[3]~input_o\ & ((\Mux6~3_combout\))) # (!\OPCODE[3]~input_o\ & (\Mux6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[3]~input_o\,
	datab => \Mux6~6_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~7_combout\);

-- Location: FF_X21_Y11_N5
\temp_data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux6~7_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_data_out(9));

-- Location: LCCOMB_X17_Y11_N28
\RESULT~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~10_combout\ = (\DATA0[10]~input_o\ & \DATA1[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATA0[10]~input_o\,
	datad => \DATA1[10]~input_o\,
	combout => \RESULT~10_combout\);

-- Location: LCCOMB_X17_Y11_N26
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\DATA0[10]~input_o\ & ((\OPCODE[1]~input_o\ & (\OPCODE[0]~input_o\ & !\DATA1[10]~input_o\)) # (!\OPCODE[1]~input_o\ & ((\OPCODE[0]~input_o\) # (!\DATA1[10]~input_o\))))) # (!\DATA0[10]~input_o\ & ((\OPCODE[0]~input_o\ & 
-- ((\DATA1[10]~input_o\))) # (!\OPCODE[0]~input_o\ & ((!\DATA1[10]~input_o\) # (!\OPCODE[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[1]~input_o\,
	datab => \DATA0[10]~input_o\,
	datac => \OPCODE[0]~input_o\,
	datad => \DATA1[10]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X24_Y12_N26
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = \OPCODE[0]~input_o\ $ (\DATA1[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datad => \DATA1[10]~input_o\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X18_Y11_N6
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\Add0~32_combout\ & ((\DATA0[10]~input_o\ & (\Add0~31\ & VCC)) # (!\DATA0[10]~input_o\ & (!\Add0~31\)))) # (!\Add0~32_combout\ & ((\DATA0[10]~input_o\ & (!\Add0~31\)) # (!\DATA0[10]~input_o\ & ((\Add0~31\) # (GND)))))
-- \Add0~34\ = CARRY((\Add0~32_combout\ & (!\DATA0[10]~input_o\ & !\Add0~31\)) # (!\Add0~32_combout\ & ((!\Add0~31\) # (!\DATA0[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \DATA0[10]~input_o\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X18_Y11_N26
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\temp_data_out[2]~18_combout\ & ((\temp_data_out[2]~17_combout\) # ((!\DATA0[10]~input_o\)))) # (!\temp_data_out[2]~18_combout\ & (!\temp_data_out[2]~17_combout\ & ((\Add0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~18_combout\,
	datab => \temp_data_out[2]~17_combout\,
	datac => \DATA0[10]~input_o\,
	datad => \Add0~33_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X17_Y11_N22
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\temp_data_out[2]~17_combout\ & ((\Mux5~5_combout\ & (\RESULT~10_combout\)) # (!\Mux5~5_combout\ & ((\Mux5~4_combout\))))) # (!\temp_data_out[2]~17_combout\ & (((\Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~17_combout\,
	datab => \RESULT~10_combout\,
	datac => \Mux5~4_combout\,
	datad => \Mux5~5_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X22_Y13_N14
\ShiftLeft0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~33_combout\ = (\DATA1[0]~input_o\ & ((\DATA0[9]~input_o\))) # (!\DATA1[0]~input_o\ & (\DATA0[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA1[0]~input_o\,
	datac => \DATA0[10]~input_o\,
	datad => \DATA0[9]~input_o\,
	combout => \ShiftLeft0~33_combout\);

-- Location: LCCOMB_X22_Y13_N12
\ShiftLeft0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~32_combout\ = (\DATA1[1]~input_o\ & ((\DATA1[0]~input_o\ & ((\DATA0[7]~input_o\))) # (!\DATA1[0]~input_o\ & (\DATA0[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[1]~input_o\,
	datab => \DATA1[0]~input_o\,
	datac => \DATA0[8]~input_o\,
	datad => \DATA0[7]~input_o\,
	combout => \ShiftLeft0~32_combout\);

-- Location: LCCOMB_X22_Y13_N8
\ShiftLeft0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~34_combout\ = (\ShiftLeft0~32_combout\) # ((\ShiftLeft0~33_combout\ & !\DATA1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~33_combout\,
	datac => \DATA1[1]~input_o\,
	datad => \ShiftLeft0~32_combout\,
	combout => \ShiftLeft0~34_combout\);

-- Location: LCCOMB_X24_Y12_N30
\RESULT~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~9_combout\ = \DATA1[10]~input_o\ $ (\DATA0[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA1[10]~input_o\,
	datad => \DATA0[10]~input_o\,
	combout => \RESULT~9_combout\);

-- Location: LCCOMB_X24_Y12_N16
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\temp_data_out[9]~22_combout\ & ((\temp_data_out[9]~23_combout\ & (\ShiftLeft0~11_combout\)) # (!\temp_data_out[9]~23_combout\ & ((!\RESULT~9_combout\))))) # (!\temp_data_out[9]~22_combout\ & (((!\temp_data_out[9]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~11_combout\,
	datab => \temp_data_out[9]~22_combout\,
	datac => \RESULT~9_combout\,
	datad => \temp_data_out[9]~23_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X23_Y11_N28
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux14~0_combout\ & ((\Mux5~0_combout\ & ((\ShiftLeft0~34_combout\))) # (!\Mux5~0_combout\ & (\ShiftLeft0~23_combout\)))) # (!\Mux14~0_combout\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \ShiftLeft0~23_combout\,
	datac => \ShiftLeft0~34_combout\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X23_Y11_N22
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\temp_data_out[9]~24_combout\ & (\temp_data_out[9]~25_combout\ & (\ShiftRight1~14_combout\))) # (!\temp_data_out[9]~24_combout\ & (((\Mux5~1_combout\)) # (!\temp_data_out[9]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[9]~24_combout\,
	datab => \temp_data_out[9]~25_combout\,
	datac => \ShiftRight1~14_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X23_Y11_N8
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~2_combout\ & (((\ShiftRight0~21_combout\)) # (!\temp_data_out[9]~21_combout\))) # (!\Mux5~2_combout\ & (\temp_data_out[9]~21_combout\ & (\DATA0[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \temp_data_out[9]~21_combout\,
	datac => \DATA0[15]~input_o\,
	datad => \ShiftRight0~21_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X17_Y11_N18
\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\OPCODE[3]~input_o\ & ((\Mux5~3_combout\))) # (!\OPCODE[3]~input_o\ & (\Mux5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~6_combout\,
	datab => \Mux5~3_combout\,
	datac => \OPCODE[3]~input_o\,
	combout => \Mux5~7_combout\);

-- Location: FF_X17_Y11_N19
\temp_data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux5~7_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_data_out(10));

-- Location: LCCOMB_X17_Y11_N24
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\OPCODE[0]~input_o\ & ((\DATA1[11]~input_o\ & ((!\DATA0[11]~input_o\) # (!\OPCODE[1]~input_o\))) # (!\DATA1[11]~input_o\ & ((\DATA0[11]~input_o\))))) # (!\OPCODE[0]~input_o\ & ((\DATA1[11]~input_o\ & (!\OPCODE[1]~input_o\ & 
-- !\DATA0[11]~input_o\)) # (!\DATA1[11]~input_o\ & ((!\DATA0[11]~input_o\) # (!\OPCODE[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \DATA1[11]~input_o\,
	datac => \OPCODE[1]~input_o\,
	datad => \DATA0[11]~input_o\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X18_Y11_N28
\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = \DATA1[11]~input_o\ $ (\OPCODE[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA1[11]~input_o\,
	datad => \OPCODE[0]~input_o\,
	combout => \Add0~35_combout\);

-- Location: LCCOMB_X18_Y11_N8
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\DATA0[11]~input_o\ $ (\Add0~35_combout\ $ (!\Add0~34\)))) # (GND)
-- \Add0~37\ = CARRY((\DATA0[11]~input_o\ & ((\Add0~35_combout\) # (!\Add0~34\))) # (!\DATA0[11]~input_o\ & (\Add0~35_combout\ & !\Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[11]~input_o\,
	datab => \Add0~35_combout\,
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X17_Y11_N10
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\temp_data_out[2]~17_combout\ & ((\Mux4~4_combout\) # ((\temp_data_out[2]~18_combout\)))) # (!\temp_data_out[2]~17_combout\ & (((\Add0~36_combout\ & !\temp_data_out[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~17_combout\,
	datab => \Mux4~4_combout\,
	datac => \Add0~36_combout\,
	datad => \temp_data_out[2]~18_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X17_Y11_N12
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\DATA0[11]~input_o\ & (\Mux4~5_combout\ & ((\DATA1[11]~input_o\) # (!\temp_data_out[2]~18_combout\)))) # (!\DATA0[11]~input_o\ & (\temp_data_out[2]~18_combout\ $ ((\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[11]~input_o\,
	datab => \temp_data_out[2]~18_combout\,
	datac => \Mux4~5_combout\,
	datad => \DATA1[11]~input_o\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X23_Y13_N10
\ShiftLeft0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~36_combout\ = (\DATA1[0]~input_o\ & ((\DATA0[10]~input_o\))) # (!\DATA1[0]~input_o\ & (\DATA0[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[11]~input_o\,
	datab => \DATA1[0]~input_o\,
	datad => \DATA0[10]~input_o\,
	combout => \ShiftLeft0~36_combout\);

-- Location: LCCOMB_X22_Y13_N26
\ShiftLeft0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~35_combout\ = (\DATA1[1]~input_o\ & ((\DATA1[0]~input_o\ & (\DATA0[8]~input_o\)) # (!\DATA1[0]~input_o\ & ((\DATA0[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[1]~input_o\,
	datab => \DATA1[0]~input_o\,
	datac => \DATA0[8]~input_o\,
	datad => \DATA0[9]~input_o\,
	combout => \ShiftLeft0~35_combout\);

-- Location: LCCOMB_X23_Y13_N12
\ShiftLeft0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~37_combout\ = (\ShiftLeft0~35_combout\) # ((\ShiftLeft0~36_combout\ & !\DATA1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~36_combout\,
	datac => \ShiftLeft0~35_combout\,
	datad => \DATA1[1]~input_o\,
	combout => \ShiftLeft0~37_combout\);

-- Location: LCCOMB_X24_Y12_N20
\RESULT~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~11_combout\ = \DATA0[11]~input_o\ $ (\DATA1[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[11]~input_o\,
	datad => \DATA1[11]~input_o\,
	combout => \RESULT~11_combout\);

-- Location: LCCOMB_X24_Y12_N14
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\temp_data_out[9]~23_combout\ & (((\temp_data_out[9]~22_combout\ & \ShiftLeft0~13_combout\)))) # (!\temp_data_out[9]~23_combout\ & (((!\temp_data_out[9]~22_combout\)) # (!\RESULT~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[9]~23_combout\,
	datab => \RESULT~11_combout\,
	datac => \temp_data_out[9]~22_combout\,
	datad => \ShiftLeft0~13_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X23_Y11_N10
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux14~0_combout\ & ((\Mux4~0_combout\ & ((\ShiftLeft0~37_combout\))) # (!\Mux4~0_combout\ & (\ShiftLeft0~27_combout\)))) # (!\Mux14~0_combout\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~27_combout\,
	datab => \ShiftLeft0~37_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X23_Y11_N4
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\temp_data_out[9]~24_combout\ & (\temp_data_out[9]~25_combout\ & (\ShiftRight1~19_combout\))) # (!\temp_data_out[9]~24_combout\ & (((\Mux4~1_combout\)) # (!\temp_data_out[9]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[9]~24_combout\,
	datab => \temp_data_out[9]~25_combout\,
	datac => \ShiftRight1~19_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X22_Y11_N14
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\temp_data_out[9]~21_combout\ & ((\Mux4~2_combout\ & (\ShiftRight0~22_combout\)) # (!\Mux4~2_combout\ & ((\DATA0[15]~input_o\))))) # (!\temp_data_out[9]~21_combout\ & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[9]~21_combout\,
	datab => \ShiftRight0~22_combout\,
	datac => \DATA0[15]~input_o\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X22_Y11_N24
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\OPCODE[3]~input_o\ & ((\Mux4~3_combout\))) # (!\OPCODE[3]~input_o\ & (\Mux4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~6_combout\,
	datab => \OPCODE[3]~input_o\,
	datac => \Mux4~3_combout\,
	combout => \Mux4~7_combout\);

-- Location: FF_X22_Y11_N25
\temp_data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux4~7_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_data_out(11));

-- Location: LCCOMB_X23_Y11_N14
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\ShiftRight1~20_combout\ & (\Mux15~7_combout\ & !\DATA1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~20_combout\,
	datac => \Mux15~7_combout\,
	datad => \DATA1[3]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X21_Y12_N10
\temp_data_out[12]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[12]~28_combout\ = (\OPCODE[0]~input_o\ & ((\ShiftLeft0~5_combout\))) # (!\OPCODE[0]~input_o\ & (!\OPCODE[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[1]~input_o\,
	datab => \OPCODE[0]~input_o\,
	datad => \ShiftLeft0~5_combout\,
	combout => \temp_data_out[12]~28_combout\);

-- Location: LCCOMB_X21_Y12_N0
\RESULT~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~12_combout\ = \DATA1[12]~input_o\ $ (\DATA0[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA1[12]~input_o\,
	datad => \DATA0[12]~input_o\,
	combout => \RESULT~12_combout\);

-- Location: LCCOMB_X23_Y13_N6
\temp_data_out[12]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[12]~26_combout\ = (\DATA1[2]~input_o\) # (\DATA1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA1[2]~input_o\,
	datad => \DATA1[3]~input_o\,
	combout => \temp_data_out[12]~26_combout\);

-- Location: LCCOMB_X23_Y13_N18
\ShiftLeft0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~38_combout\ = (\DATA1[0]~input_o\ & ((\DATA0[11]~input_o\))) # (!\DATA1[0]~input_o\ & (\DATA0[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[12]~input_o\,
	datab => \DATA1[0]~input_o\,
	datac => \DATA0[11]~input_o\,
	combout => \ShiftLeft0~38_combout\);

-- Location: LCCOMB_X23_Y13_N24
\temp_data_out[12]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[12]~27_combout\ = (\DATA1[3]~input_o\) # ((!\DATA1[2]~input_o\ & \DATA1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[3]~input_o\,
	datab => \DATA1[2]~input_o\,
	datad => \DATA1[1]~input_o\,
	combout => \temp_data_out[12]~27_combout\);

-- Location: LCCOMB_X22_Y13_N4
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\temp_data_out[12]~26_combout\ & (((\temp_data_out[12]~27_combout\)))) # (!\temp_data_out[12]~26_combout\ & ((\temp_data_out[12]~27_combout\ & ((\ShiftLeft0~33_combout\))) # (!\temp_data_out[12]~27_combout\ & 
-- (\ShiftLeft0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[12]~26_combout\,
	datab => \ShiftLeft0~38_combout\,
	datac => \ShiftLeft0~33_combout\,
	datad => \temp_data_out[12]~27_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X22_Y13_N30
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((\ShiftLeft0~18_combout\) # (!\temp_data_out[12]~26_combout\)))) # (!\Mux3~0_combout\ & (\ShiftLeft0~29_combout\ & ((\temp_data_out[12]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~29_combout\,
	datab => \ShiftLeft0~18_combout\,
	datac => \Mux3~0_combout\,
	datad => \temp_data_out[12]~26_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X21_Y12_N12
\temp_data_out[12]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[12]~29_combout\ = (\OPCODE[0]~input_o\) # ((\OPCODE[1]~input_o\ & !\temp_data_out[2]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[1]~input_o\,
	datab => \OPCODE[0]~input_o\,
	datac => \temp_data_out[2]~9_combout\,
	combout => \temp_data_out[12]~29_combout\);

-- Location: LCCOMB_X21_Y12_N26
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\temp_data_out[12]~28_combout\ & ((\temp_data_out[12]~29_combout\ & ((\Mux3~1_combout\))) # (!\temp_data_out[12]~29_combout\ & (!\RESULT~12_combout\)))) # (!\temp_data_out[12]~28_combout\ & (((!\temp_data_out[12]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[12]~28_combout\,
	datab => \RESULT~12_combout\,
	datac => \Mux3~1_combout\,
	datad => \temp_data_out[12]~29_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X21_Y12_N28
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & (((\ShiftRight0~23_combout\) # (!\temp_data_out[2]~12_combout\)))) # (!\Mux3~2_combout\ & (\DATA0[15]~input_o\ & (\temp_data_out[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \DATA0[15]~input_o\,
	datac => \temp_data_out[2]~12_combout\,
	datad => \ShiftRight0~23_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X17_Y11_N0
\temp_data_out[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[12]~2_combout\ = (\OPCODE[2]~input_o\ & (\Mux3~4_combout\)) # (!\OPCODE[2]~input_o\ & ((\Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \Mux3~3_combout\,
	datad => \OPCODE[2]~input_o\,
	combout => \temp_data_out[12]~2_combout\);

-- Location: LCCOMB_X17_Y11_N8
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \DATA1[12]~input_o\ $ (\OPCODE[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA1[12]~input_o\,
	datac => \OPCODE[0]~input_o\,
	combout => \Add0~38_combout\);

-- Location: LCCOMB_X18_Y11_N10
\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\Add0~38_combout\ & ((\DATA0[12]~input_o\ & (\Add0~37\ & VCC)) # (!\DATA0[12]~input_o\ & (!\Add0~37\)))) # (!\Add0~38_combout\ & ((\DATA0[12]~input_o\ & (!\Add0~37\)) # (!\DATA0[12]~input_o\ & ((\Add0~37\) # (GND)))))
-- \Add0~40\ = CARRY((\Add0~38_combout\ & (!\DATA0[12]~input_o\ & !\Add0~37\)) # (!\Add0~38_combout\ & ((!\Add0~37\) # (!\DATA0[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \DATA0[12]~input_o\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X17_Y11_N2
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\temp_data_out[2]~17_combout\ & (((\temp_data_out[2]~18_combout\)))) # (!\temp_data_out[2]~17_combout\ & ((\temp_data_out[2]~18_combout\ & ((!\DATA0[12]~input_o\))) # (!\temp_data_out[2]~18_combout\ & (\Add0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~17_combout\,
	datab => \Add0~39_combout\,
	datac => \DATA0[12]~input_o\,
	datad => \temp_data_out[2]~18_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X17_Y11_N4
\RESULT~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~13_combout\ = (\DATA1[12]~input_o\ & \DATA0[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA1[12]~input_o\,
	datac => \DATA0[12]~input_o\,
	combout => \RESULT~13_combout\);

-- Location: LCCOMB_X17_Y11_N6
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\OPCODE[0]~input_o\ & ((\DATA1[12]~input_o\ & ((!\OPCODE[1]~input_o\) # (!\DATA0[12]~input_o\))) # (!\DATA1[12]~input_o\ & (\DATA0[12]~input_o\)))) # (!\OPCODE[0]~input_o\ & ((\DATA1[12]~input_o\ & (!\DATA0[12]~input_o\ & 
-- !\OPCODE[1]~input_o\)) # (!\DATA1[12]~input_o\ & ((!\OPCODE[1]~input_o\) # (!\DATA0[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \DATA1[12]~input_o\,
	datac => \DATA0[12]~input_o\,
	datad => \OPCODE[1]~input_o\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X17_Y11_N30
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\temp_data_out[2]~17_combout\ & ((\Mux3~6_combout\ & (\RESULT~13_combout\)) # (!\Mux3~6_combout\ & ((\Mux3~5_combout\))))) # (!\temp_data_out[2]~17_combout\ & (\Mux3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~17_combout\,
	datab => \Mux3~6_combout\,
	datac => \RESULT~13_combout\,
	datad => \Mux3~5_combout\,
	combout => \Mux3~7_combout\);

-- Location: FF_X17_Y11_N1
\temp_data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \temp_data_out[12]~2_combout\,
	asdata => \Mux3~7_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \ALT_INV_OPCODE[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_data_out(12));

-- Location: LCCOMB_X23_Y13_N20
\ShiftLeft0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~39_combout\ = (\DATA1[0]~input_o\ & (\DATA0[12]~input_o\)) # (!\DATA1[0]~input_o\ & ((\DATA0[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[12]~input_o\,
	datab => \DATA1[0]~input_o\,
	datac => \DATA0[13]~input_o\,
	combout => \ShiftLeft0~39_combout\);

-- Location: LCCOMB_X23_Y13_N30
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\temp_data_out[12]~26_combout\ & ((\ShiftLeft0~31_combout\) # ((\temp_data_out[12]~27_combout\)))) # (!\temp_data_out[12]~26_combout\ & (((\ShiftLeft0~39_combout\ & !\temp_data_out[12]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~31_combout\,
	datab => \ShiftLeft0~39_combout\,
	datac => \temp_data_out[12]~26_combout\,
	datad => \temp_data_out[12]~27_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X23_Y13_N0
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\ & (((\ShiftLeft0~21_combout\) # (!\temp_data_out[12]~27_combout\)))) # (!\Mux2~2_combout\ & (\ShiftLeft0~36_combout\ & ((\temp_data_out[12]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~36_combout\,
	datab => \ShiftLeft0~21_combout\,
	datac => \Mux2~2_combout\,
	datad => \temp_data_out[12]~27_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X14_Y11_N6
\RESULT~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~14_combout\ = \DATA0[13]~input_o\ $ (\DATA1[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[13]~input_o\,
	datac => \DATA1[13]~input_o\,
	combout => \RESULT~14_combout\);

-- Location: LCCOMB_X21_Y12_N22
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\temp_data_out[12]~29_combout\ & (\Mux2~3_combout\ & ((\temp_data_out[12]~28_combout\)))) # (!\temp_data_out[12]~29_combout\ & (((!\temp_data_out[12]~28_combout\) # (!\RESULT~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[12]~29_combout\,
	datab => \Mux2~3_combout\,
	datac => \RESULT~14_combout\,
	datad => \temp_data_out[12]~28_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X21_Y12_N8
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\temp_data_out[2]~12_combout\ & ((\Mux2~4_combout\ & ((\ShiftRight0~24_combout\))) # (!\Mux2~4_combout\ & (\DATA0[15]~input_o\)))) # (!\temp_data_out[2]~12_combout\ & (((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~12_combout\,
	datab => \DATA0[15]~input_o\,
	datac => \Mux2~4_combout\,
	datad => \ShiftRight0~24_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X23_Y11_N24
\Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\ShiftRight1~7_combout\ & (!\DATA1[2]~input_o\ & (\Mux15~7_combout\ & !\DATA1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~7_combout\,
	datab => \DATA1[2]~input_o\,
	datac => \Mux15~7_combout\,
	datad => \DATA1[3]~input_o\,
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X14_Y11_N24
\temp_data_out[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[13]~3_combout\ = (\OPCODE[2]~input_o\ & ((\Mux2~9_combout\))) # (!\OPCODE[2]~input_o\ & (\Mux2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datab => \Mux2~9_combout\,
	datad => \OPCODE[2]~input_o\,
	combout => \temp_data_out[13]~3_combout\);

-- Location: LCCOMB_X14_Y11_N16
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\DATA1[13]~input_o\ & ((\OPCODE[1]~input_o\ & (\OPCODE[0]~input_o\ & !\DATA0[13]~input_o\)) # (!\OPCODE[1]~input_o\ & ((\OPCODE[0]~input_o\) # (!\DATA0[13]~input_o\))))) # (!\DATA1[13]~input_o\ & ((\OPCODE[0]~input_o\ & 
-- ((\DATA0[13]~input_o\))) # (!\OPCODE[0]~input_o\ & ((!\DATA0[13]~input_o\) # (!\OPCODE[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[13]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \OPCODE[0]~input_o\,
	datad => \DATA0[13]~input_o\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X14_Y11_N10
\Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = \OPCODE[0]~input_o\ $ (\DATA1[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datac => \DATA1[13]~input_o\,
	combout => \Add0~41_combout\);

-- Location: LCCOMB_X18_Y11_N12
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = ((\DATA0[13]~input_o\ $ (\Add0~41_combout\ $ (!\Add0~40\)))) # (GND)
-- \Add0~43\ = CARRY((\DATA0[13]~input_o\ & ((\Add0~41_combout\) # (!\Add0~40\))) # (!\DATA0[13]~input_o\ & (\Add0~41_combout\ & !\Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[13]~input_o\,
	datab => \Add0~41_combout\,
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X14_Y11_N28
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\temp_data_out[2]~17_combout\ & ((\Mux2~6_combout\) # ((\temp_data_out[2]~18_combout\)))) # (!\temp_data_out[2]~17_combout\ & (((\Add0~42_combout\ & !\temp_data_out[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~6_combout\,
	datab => \temp_data_out[2]~17_combout\,
	datac => \Add0~42_combout\,
	datad => \temp_data_out[2]~18_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X14_Y11_N14
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\DATA0[13]~input_o\ & (\Mux2~7_combout\ & ((\DATA1[13]~input_o\) # (!\temp_data_out[2]~18_combout\)))) # (!\DATA0[13]~input_o\ & (\Mux2~7_combout\ $ (((\temp_data_out[2]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[13]~input_o\,
	datab => \Mux2~7_combout\,
	datac => \DATA1[13]~input_o\,
	datad => \temp_data_out[2]~18_combout\,
	combout => \Mux2~8_combout\);

-- Location: FF_X14_Y11_N25
\temp_data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \temp_data_out[13]~3_combout\,
	asdata => \Mux2~8_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \ALT_INV_OPCODE[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_data_out(13));

-- Location: LCCOMB_X18_Y11_N30
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = \OPCODE[0]~input_o\ $ (\DATA1[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datac => \DATA1[14]~input_o\,
	combout => \Add0~44_combout\);

-- Location: LCCOMB_X18_Y11_N14
\Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (\Add0~44_combout\ & ((\DATA0[14]~input_o\ & (\Add0~43\ & VCC)) # (!\DATA0[14]~input_o\ & (!\Add0~43\)))) # (!\Add0~44_combout\ & ((\DATA0[14]~input_o\ & (!\Add0~43\)) # (!\DATA0[14]~input_o\ & ((\Add0~43\) # (GND)))))
-- \Add0~46\ = CARRY((\Add0~44_combout\ & (!\DATA0[14]~input_o\ & !\Add0~43\)) # (!\Add0~44_combout\ & ((!\Add0~43\) # (!\DATA0[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \DATA0[14]~input_o\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X19_Y12_N6
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\OPCODE[1]~input_o\ & ((\OPCODE[0]~input_o\ & (\DATA1[14]~input_o\ & \DATA0[14]~input_o\)) # (!\OPCODE[0]~input_o\ & ((!\DATA0[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \DATA1[14]~input_o\,
	datad => \DATA0[14]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X19_Y10_N0
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\Mux1~4_combout\) # ((!\OPCODE[1]~input_o\ & \Add0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[1]~input_o\,
	datac => \Add0~45_combout\,
	datad => \Mux1~4_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X23_Y10_N14
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\DATA0[14]~input_o\ & ((\OPCODE[1]~input_o\ & (!\DATA1[14]~input_o\ & \OPCODE[0]~input_o\)) # (!\OPCODE[1]~input_o\ & ((\OPCODE[0]~input_o\) # (!\DATA1[14]~input_o\))))) # (!\DATA0[14]~input_o\ & ((\DATA1[14]~input_o\ & 
-- ((\OPCODE[0]~input_o\) # (!\OPCODE[1]~input_o\))) # (!\DATA1[14]~input_o\ & ((!\OPCODE[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[14]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \DATA1[14]~input_o\,
	datad => \OPCODE[0]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X23_Y10_N0
\Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\OPCODE[3]~input_o\ & (((\OPCODE[2]~input_o\)))) # (!\OPCODE[3]~input_o\ & ((\OPCODE[2]~input_o\ & ((\Mux1~3_combout\))) # (!\OPCODE[2]~input_o\ & (\Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~5_combout\,
	datab => \Mux1~3_combout\,
	datac => \OPCODE[3]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X23_Y10_N16
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\OPCODE[1]~input_o\ & ((\ShiftLeft0~48_combout\ & (\DATA0[15]~input_o\)) # (!\ShiftLeft0~48_combout\ & ((\DATA0[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~48_combout\,
	datab => \DATA0[15]~input_o\,
	datac => \OPCODE[1]~input_o\,
	datad => \DATA0[14]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X23_Y10_N10
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\) # ((!\OPCODE[1]~input_o\ & (\DATA0[14]~input_o\ $ (!\DATA1[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[14]~input_o\,
	datab => \DATA1[14]~input_o\,
	datac => \OPCODE[1]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X23_Y13_N2
\ShiftLeft0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~40_combout\ = (!\DATA1[1]~input_o\ & ((\DATA1[0]~input_o\ & ((\DATA0[13]~input_o\))) # (!\DATA1[0]~input_o\ & (\DATA0[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[14]~input_o\,
	datab => \DATA1[0]~input_o\,
	datac => \DATA0[13]~input_o\,
	datad => \DATA1[1]~input_o\,
	combout => \ShiftLeft0~40_combout\);

-- Location: LCCOMB_X23_Y13_N4
\ShiftLeft0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~41_combout\ = (!\DATA1[2]~input_o\ & ((\ShiftLeft0~40_combout\) # ((\ShiftLeft0~38_combout\ & \DATA1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~38_combout\,
	datab => \DATA1[2]~input_o\,
	datac => \ShiftLeft0~40_combout\,
	datad => \DATA1[1]~input_o\,
	combout => \ShiftLeft0~41_combout\);

-- Location: LCCOMB_X23_Y13_N14
\ShiftLeft0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~42_combout\ = (!\DATA1[3]~input_o\ & ((\ShiftLeft0~41_combout\) # ((\ShiftLeft0~34_combout\ & \DATA1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~34_combout\,
	datab => \DATA1[2]~input_o\,
	datac => \ShiftLeft0~41_combout\,
	datad => \DATA1[3]~input_o\,
	combout => \ShiftLeft0~42_combout\);

-- Location: LCCOMB_X23_Y10_N22
\ShiftLeft0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~43_combout\ = (\ShiftLeft0~42_combout\) # ((\DATA1[3]~input_o\ & \ShiftLeft0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~42_combout\,
	datac => \DATA1[3]~input_o\,
	datad => \ShiftLeft0~24_combout\,
	combout => \ShiftLeft0~43_combout\);

-- Location: LCCOMB_X23_Y10_N4
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\OPCODE[0]~input_o\ & (((\ShiftLeft0~5_combout\ & \ShiftLeft0~43_combout\)))) # (!\OPCODE[0]~input_o\ & (\Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \ShiftLeft0~5_combout\,
	datac => \ShiftLeft0~43_combout\,
	datad => \OPCODE[0]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X23_Y10_N2
\Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\ShiftRight1~22_combout\ & (!\DATA1[3]~input_o\ & \Mux15~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~22_combout\,
	datac => \DATA1[3]~input_o\,
	datad => \Mux15~7_combout\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X23_Y10_N26
\Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\OPCODE[3]~input_o\ & ((\Mux1~6_combout\ & ((\Mux1~7_combout\))) # (!\Mux1~6_combout\ & (\Mux1~2_combout\)))) # (!\OPCODE[3]~input_o\ & (\Mux1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[3]~input_o\,
	datab => \Mux1~6_combout\,
	datac => \Mux1~2_combout\,
	datad => \Mux1~7_combout\,
	combout => \Mux1~8_combout\);

-- Location: FF_X23_Y10_N27
\temp_data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux1~8_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_data_out(14));

-- Location: LCCOMB_X23_Y13_N8
\ShiftLeft0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~44_combout\ = (\DATA1[2]~input_o\ & ((\DATA1[3]~input_o\ & (\ShiftLeft0~25_combout\)) # (!\DATA1[3]~input_o\ & ((\ShiftLeft0~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~25_combout\,
	datab => \DATA1[2]~input_o\,
	datac => \ShiftLeft0~37_combout\,
	datad => \DATA1[3]~input_o\,
	combout => \ShiftLeft0~44_combout\);

-- Location: LCCOMB_X23_Y13_N26
\ShiftLeft0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~45_combout\ = (!\DATA1[1]~input_o\ & ((\DATA1[0]~input_o\ & (\DATA0[14]~input_o\)) # (!\DATA1[0]~input_o\ & ((\DATA0[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[14]~input_o\,
	datab => \DATA0[15]~input_o\,
	datac => \DATA1[0]~input_o\,
	datad => \DATA1[1]~input_o\,
	combout => \ShiftLeft0~45_combout\);

-- Location: LCCOMB_X23_Y13_N28
\ShiftLeft0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~46_combout\ = (!\DATA1[3]~input_o\ & ((\ShiftLeft0~45_combout\) # ((\ShiftLeft0~39_combout\ & \DATA1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[3]~input_o\,
	datab => \ShiftLeft0~39_combout\,
	datac => \ShiftLeft0~45_combout\,
	datad => \DATA1[1]~input_o\,
	combout => \ShiftLeft0~46_combout\);

-- Location: LCCOMB_X23_Y13_N22
\ShiftLeft0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~47_combout\ = (!\DATA1[2]~input_o\ & ((\ShiftLeft0~46_combout\) # ((\DATA1[3]~input_o\ & \ShiftLeft0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA1[3]~input_o\,
	datab => \ShiftLeft0~46_combout\,
	datac => \ShiftLeft0~27_combout\,
	datad => \DATA1[2]~input_o\,
	combout => \ShiftLeft0~47_combout\);

-- Location: LCCOMB_X21_Y10_N14
\Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (\ShiftLeft0~5_combout\ & (!\OPCODE[2]~input_o\ & ((\ShiftLeft0~44_combout\) # (\ShiftLeft0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~44_combout\,
	datab => \ShiftLeft0~5_combout\,
	datac => \ShiftLeft0~47_combout\,
	datad => \OPCODE[2]~input_o\,
	combout => \Add0~47_combout\);

-- Location: LCCOMB_X21_Y10_N16
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\OPCODE[1]~input_o\ & (!\DATA0[15]~input_o\ & ((!\OPCODE[2]~input_o\)))) # (!\OPCODE[1]~input_o\ & (\DATA0[15]~input_o\ $ (((\DATA1[15]~input_o\ & !\OPCODE[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[15]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \DATA1[15]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X21_Y10_N18
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & (\temp_data_out[2]~9_combout\ & (!\ShiftLeft0~6_combout\ & \OPCODE[2]~input_o\))) # (!\Mux0~0_combout\ & (((!\OPCODE[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_data_out[2]~9_combout\,
	datab => \Mux0~0_combout\,
	datac => \ShiftLeft0~6_combout\,
	datad => \OPCODE[2]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X21_Y10_N8
\temp_data_out[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_data_out[15]~4_combout\ = (\OPCODE[0]~input_o\ & (\Add0~47_combout\)) # (!\OPCODE[0]~input_o\ & ((\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[0]~input_o\,
	datab => \Add0~47_combout\,
	datad => \Mux0~1_combout\,
	combout => \temp_data_out[15]~4_combout\);

-- Location: LCCOMB_X21_Y10_N22
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\DATA0[15]~input_o\ & ((\OPCODE[1]~input_o\ & (\OPCODE[0]~input_o\)) # (!\OPCODE[1]~input_o\ & (!\OPCODE[0]~input_o\ & \OPCODE[2]~input_o\)))) # (!\DATA0[15]~input_o\ & ((\OPCODE[0]~input_o\ & ((\OPCODE[2]~input_o\))) # 
-- (!\OPCODE[0]~input_o\ & (\OPCODE[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[15]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \OPCODE[0]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X21_Y10_N28
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\OPCODE[0]~input_o\ & ((\OPCODE[2]~input_o\ & (!\DATA0[15]~input_o\)) # (!\OPCODE[2]~input_o\ & ((\OPCODE[1]~input_o\))))) # (!\OPCODE[0]~input_o\ & (\DATA0[15]~input_o\ & (\OPCODE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA0[15]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \OPCODE[0]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X21_Y10_N24
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (!\OPCODE[3]~input_o\ & (!\OPCODE[1]~input_o\ & (\DATA0[15]~input_o\ & !\OPCODE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[3]~input_o\,
	datab => \OPCODE[1]~input_o\,
	datac => \DATA0[15]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \Add0~48_combout\);

-- Location: LCCOMB_X21_Y10_N10
\Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = \OPCODE[0]~input_o\ $ (\DATA1[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OPCODE[0]~input_o\,
	datac => \DATA1[15]~input_o\,
	combout => \Add0~49_combout\);

-- Location: LCCOMB_X18_Y11_N16
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = \Add0~48_combout\ $ (\Add0~46\ $ (!\Add0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~48_combout\,
	datad => \Add0~49_combout\,
	cin => \Add0~46\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X21_Y10_N4
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux0~3_combout\ & ((\DATA1[15]~input_o\))) # (!\Mux0~3_combout\ & (\Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Add0~50_combout\,
	datac => \DATA1[15]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X21_Y10_N30
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Mux0~3_combout\ & ((\Mux0~2_combout\ & (\Mux0~4_combout\)) # (!\Mux0~2_combout\ & ((!\OPCODE[2]~input_o\) # (!\Mux0~4_combout\))))) # (!\Mux0~3_combout\ & (!\Mux0~2_combout\ & ((\Mux0~4_combout\) # (\OPCODE[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux0~2_combout\,
	datac => \Mux0~4_combout\,
	datad => \OPCODE[2]~input_o\,
	combout => \Mux0~5_combout\);

-- Location: FF_X21_Y10_N9
\temp_data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \temp_data_out[15]~4_combout\,
	asdata => \Mux0~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \ALT_INV_OPCODE[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_data_out(15));

ww_STATUS(0) <= \STATUS[0]~output_o\;

ww_STATUS(1) <= \STATUS[1]~output_o\;

ww_STATUS(2) <= \STATUS[2]~output_o\;

ww_STATUS(3) <= \STATUS[3]~output_o\;

ww_DATA_OUT(0) <= \DATA_OUT[0]~output_o\;

ww_DATA_OUT(1) <= \DATA_OUT[1]~output_o\;

ww_DATA_OUT(2) <= \DATA_OUT[2]~output_o\;

ww_DATA_OUT(3) <= \DATA_OUT[3]~output_o\;

ww_DATA_OUT(4) <= \DATA_OUT[4]~output_o\;

ww_DATA_OUT(5) <= \DATA_OUT[5]~output_o\;

ww_DATA_OUT(6) <= \DATA_OUT[6]~output_o\;

ww_DATA_OUT(7) <= \DATA_OUT[7]~output_o\;

ww_DATA_OUT(8) <= \DATA_OUT[8]~output_o\;

ww_DATA_OUT(9) <= \DATA_OUT[9]~output_o\;

ww_DATA_OUT(10) <= \DATA_OUT[10]~output_o\;

ww_DATA_OUT(11) <= \DATA_OUT[11]~output_o\;

ww_DATA_OUT(12) <= \DATA_OUT[12]~output_o\;

ww_DATA_OUT(13) <= \DATA_OUT[13]~output_o\;

ww_DATA_OUT(14) <= \DATA_OUT[14]~output_o\;

ww_DATA_OUT(15) <= \DATA_OUT[15]~output_o\;
END structure;


