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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "11/07/2014 09:58:34"

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

ENTITY 	lab5_pong IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	VGA_R : OUT std_logic_vector(9 DOWNTO 0);
	VGA_G : OUT std_logic_vector(9 DOWNTO 0);
	VGA_B : OUT std_logic_vector(9 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_BLANK : OUT std_logic;
	VGA_SYNC : OUT std_logic;
	VGA_CLK : OUT std_logic
	);
END lab5_pong;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[0]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[3]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[4]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[5]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[6]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[7]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[8]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[9]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[2]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[5]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[6]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[7]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[8]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[9]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[0]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[4]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[5]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[6]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[8]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[9]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_HS	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_VS	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLANK	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_SYNC	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_CLK	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab5_pong IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_BLANK : std_logic;
SIGNAL ww_VGA_SYNC : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_u0|mypll|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \vga_u0|mypll|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vga_u0|mypll|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\ : std_logic;
SIGNAL \vga_u0|mypll|altpll_component|_clk1\ : std_logic;
SIGNAL \vga_u0|mypll|altpll_component|_clk2\ : std_logic;
SIGNAL \U0|Add0~3_combout\ : std_logic;
SIGNAL \U0|Add0~7\ : std_logic;
SIGNAL \U0|Add0~9_combout\ : std_logic;
SIGNAL \U0|Add1~3_combout\ : std_logic;
SIGNAL \U0|Add1~6_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~4_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~6_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~8_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~10_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~14_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~16_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~2_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~4_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~10_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~8_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~10_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~12_combout\ : std_logic;
SIGNAL \U1|screen|Add2~6_combout\ : std_logic;
SIGNAL \U1|screen|Add3~2_combout\ : std_logic;
SIGNAL \U1|screen|LessThan10~1_cout\ : std_logic;
SIGNAL \U1|screen|LessThan10~3_cout\ : std_logic;
SIGNAL \U1|screen|LessThan10~5_cout\ : std_logic;
SIGNAL \U1|screen|LessThan10~7_cout\ : std_logic;
SIGNAL \U1|screen|LessThan10~9_cout\ : std_logic;
SIGNAL \U1|screen|LessThan10~11_cout\ : std_logic;
SIGNAL \U1|screen|LessThan10~12_combout\ : std_logic;
SIGNAL \U1|screen|Add1~0_combout\ : std_logic;
SIGNAL \U1|screen|Add1~8_combout\ : std_logic;
SIGNAL \U1|screen|Add5~1\ : std_logic;
SIGNAL \U1|screen|Add5~3\ : std_logic;
SIGNAL \U1|screen|Add5~2_combout\ : std_logic;
SIGNAL \U1|screen|Add5~5\ : std_logic;
SIGNAL \U1|screen|Add5~4_combout\ : std_logic;
SIGNAL \U1|screen|Add5~7\ : std_logic;
SIGNAL \U1|screen|Add5~6_combout\ : std_logic;
SIGNAL \U1|screen|Add5~9\ : std_logic;
SIGNAL \U1|screen|Add5~8_combout\ : std_logic;
SIGNAL \U1|screen|Add5~11\ : std_logic;
SIGNAL \U1|screen|Add5~10_combout\ : std_logic;
SIGNAL \U1|screen|Add5~12_combout\ : std_logic;
SIGNAL \U1|P1_forward|y_coord[1]~4_combout\ : std_logic;
SIGNAL \U1|Collision|Add7~10_combout\ : std_logic;
SIGNAL \U1|Collision|Add13~6_combout\ : std_logic;
SIGNAL \U1|Collision|Add5~2_combout\ : std_logic;
SIGNAL \U1|Collision|Add5~11\ : std_logic;
SIGNAL \U1|Collision|Add5~12_combout\ : std_logic;
SIGNAL \U1|Collision|Add12~0_combout\ : std_logic;
SIGNAL \U1|Collision|Add12~4_combout\ : std_logic;
SIGNAL \U1|Collision|Add12~6_combout\ : std_logic;
SIGNAL \U1|Collision|Add12~8_combout\ : std_logic;
SIGNAL \U1|Collision|LessThan0~1_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan0~3_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan0~5_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan0~7_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan0~9_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan0~11_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan0~12_combout\ : std_logic;
SIGNAL \U1|Collision|Add9~2_combout\ : std_logic;
SIGNAL \U1|Collision|Add9~11\ : std_logic;
SIGNAL \U1|Collision|Add9~12_combout\ : std_logic;
SIGNAL \U1|Collision|LessThan4~1_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan4~3_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan4~5_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan4~7_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan4~9_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan4~11_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan4~12_combout\ : std_logic;
SIGNAL \U1|Collision|Add14~0_combout\ : std_logic;
SIGNAL \U1|Collision|Add14~4_combout\ : std_logic;
SIGNAL \U1|Collision|Add14~6_combout\ : std_logic;
SIGNAL \U1|Collision|Add14~8_combout\ : std_logic;
SIGNAL \U1|Collision|Add11~6_combout\ : std_logic;
SIGNAL \U1|Collision|Add15~1\ : std_logic;
SIGNAL \U1|Collision|Add15~0_combout\ : std_logic;
SIGNAL \U1|Collision|Add15~3\ : std_logic;
SIGNAL \U1|Collision|Add15~2_combout\ : std_logic;
SIGNAL \U1|Collision|Add15~5\ : std_logic;
SIGNAL \U1|Collision|Add15~4_combout\ : std_logic;
SIGNAL \U1|Collision|Add15~7\ : std_logic;
SIGNAL \U1|Collision|Add15~6_combout\ : std_logic;
SIGNAL \U1|Collision|Add15~9\ : std_logic;
SIGNAL \U1|Collision|Add15~8_combout\ : std_logic;
SIGNAL \U1|Collision|Add15~10_combout\ : std_logic;
SIGNAL \U1|Collision|LessThan7~1_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan7~3_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan7~5_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan7~7_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan7~9_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan7~11_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan7~12_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[1]~26_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[4]~32_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[6]~36_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~2_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~6_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~38_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[22]~70\ : std_logic;
SIGNAL \U1|DiffClock|count[23]~71_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|Equal0~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|always1~1_combout\ : std_logic;
SIGNAL \vga_u0|LessThan3~0_combout\ : std_logic;
SIGNAL \U1|screen|plot~regout\ : std_logic;
SIGNAL \vga_u0|writeEn~0_combout\ : std_logic;
SIGNAL \vga_u0|writeEn~1_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0_combout\ : std_logic;
SIGNAL \U1|Collision|Equal16~0_combout\ : std_logic;
SIGNAL \U1|Collision|Equal16~1_combout\ : std_logic;
SIGNAL \U1|screen|Equal2~0_combout\ : std_logic;
SIGNAL \U1|screen|process_0~0_combout\ : std_logic;
SIGNAL \U1|screen|process_0~1_combout\ : std_logic;
SIGNAL \U1|screen|process_0~2_combout\ : std_logic;
SIGNAL \U1|screen|process_0~3_combout\ : std_logic;
SIGNAL \U1|screen|process_0~4_combout\ : std_logic;
SIGNAL \U1|screen|Equal2~1_combout\ : std_logic;
SIGNAL \U1|screen|Equal2~2_combout\ : std_logic;
SIGNAL \U1|screen|colour[1]~4_combout\ : std_logic;
SIGNAL \U1|screen|colour[1]~5_combout\ : std_logic;
SIGNAL \U1|screen|colour[1]~6_combout\ : std_logic;
SIGNAL \U1|screen|colour[1]~10_combout\ : std_logic;
SIGNAL \U1|screen|colour~13_combout\ : std_logic;
SIGNAL \U1|screen|colour~14_combout\ : std_logic;
SIGNAL \U1|Puck_Movement|Add5~1_combout\ : std_logic;
SIGNAL \U0|NEXT_STATE.soft_reset_state~regout\ : std_logic;
SIGNAL \U1|DiffClock|Equal0~1_combout\ : std_logic;
SIGNAL \U1|DiffClock|Equal0~2_combout\ : std_logic;
SIGNAL \U1|DiffClock|Equal0~3_combout\ : std_logic;
SIGNAL \U1|DiffClock|Equal0~4_combout\ : std_logic;
SIGNAL \U1|DiffClock|Equal0~5_combout\ : std_logic;
SIGNAL \U1|DiffClock|Equal0~6_combout\ : std_logic;
SIGNAL \U1|Collision|puck_player~0_combout\ : std_logic;
SIGNAL \U1|Collision|Equal4~0_combout\ : std_logic;
SIGNAL \U1|Collision|Equal6~0_combout\ : std_logic;
SIGNAL \U1|Collision|Equal6~1_combout\ : std_logic;
SIGNAL \U1|Collision|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Collision|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Collision|Equal2~0_combout\ : std_logic;
SIGNAL \U1|Collision|Equal3~0_combout\ : std_logic;
SIGNAL \U0|Selector1~1_combout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan1~0_combout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan1~1_combout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan1~2_combout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan1~3_combout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan1~4_combout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan1~5_combout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan1~6_combout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan1~7_combout\ : std_logic;
SIGNAL \U1|DiffClock|count_to[2]~1_combout\ : std_logic;
SIGNAL \U1|screen|plot~3_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \U0|winner2[0]~feeder_combout\ : std_logic;
SIGNAL \KEY[3]~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \KEY[3]~clkctrl_outclk\ : std_logic;
SIGNAL \U0|button_state~0_combout\ : std_logic;
SIGNAL \U0|button_state~regout\ : std_logic;
SIGNAL \U0|nextStep_pulse~0_combout\ : std_logic;
SIGNAL \U0|nextStep_pulse~regout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_y_vector[0]~1_combout\ : std_logic;
SIGNAL \U0|Selector5~0_combout\ : std_logic;
SIGNAL \U0|Selector2~0_combout\ : std_logic;
SIGNAL \U0|NEXT_STATE.reset_state~regout\ : std_logic;
SIGNAL \U0|Selector0~0_combout\ : std_logic;
SIGNAL \U0|reset_connect~regout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_coord[0]~6_combout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_coord[0]~7\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_coord[1]~8_combout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_coord[1]~9\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_coord[2]~10_combout\ : std_logic;
SIGNAL \U1|Collision|Equal17~1_combout\ : std_logic;
SIGNAL \U1|Collision|Equal17~2_combout\ : std_logic;
SIGNAL \U1|Collision|score_p2~0_combout\ : std_logic;
SIGNAL \U1|Collision|score_p2~regout\ : std_logic;
SIGNAL \U0|Selector4~0_combout\ : std_logic;
SIGNAL \U0|Selector5~1_combout\ : std_logic;
SIGNAL \U0|NEXT_STATE.score_state~regout\ : std_logic;
SIGNAL \U0|Selector8~0_combout\ : std_logic;
SIGNAL \U0|idle_connect~regout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_direction[0]~0_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~1_cout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~3\ : std_logic;
SIGNAL \U1|DiffClock|Add1~4_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~27\ : std_logic;
SIGNAL \U1|DiffClock|Add1~29\ : std_logic;
SIGNAL \U1|DiffClock|Add1~30_combout\ : std_logic;
SIGNAL \U1|DiffClock|count_to[17]~7_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~31\ : std_logic;
SIGNAL \U1|DiffClock|Add1~33\ : std_logic;
SIGNAL \U1|DiffClock|Add1~34_combout\ : std_logic;
SIGNAL \U1|DiffClock|count_to[19]~2_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~35\ : std_logic;
SIGNAL \U1|DiffClock|Add1~36_combout\ : std_logic;
SIGNAL \U1|DiffClock|count_to[20]~8_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~37\ : std_logic;
SIGNAL \U1|DiffClock|Add1~39\ : std_logic;
SIGNAL \U1|DiffClock|Add1~40_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~41\ : std_logic;
SIGNAL \U1|DiffClock|Add1~42_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[0]~24_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[23]~64_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[0]~25\ : std_logic;
SIGNAL \U1|DiffClock|count[1]~27\ : std_logic;
SIGNAL \U1|DiffClock|count[2]~29\ : std_logic;
SIGNAL \U1|DiffClock|count[3]~30_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[3]~31\ : std_logic;
SIGNAL \U1|DiffClock|count[4]~33\ : std_logic;
SIGNAL \U1|DiffClock|count[5]~34_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[5]~35\ : std_logic;
SIGNAL \U1|DiffClock|count[6]~37\ : std_logic;
SIGNAL \U1|DiffClock|count[7]~38_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[7]~39\ : std_logic;
SIGNAL \U1|DiffClock|count[8]~41\ : std_logic;
SIGNAL \U1|DiffClock|count[9]~42_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[9]~43\ : std_logic;
SIGNAL \U1|DiffClock|count[10]~44_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[10]~45\ : std_logic;
SIGNAL \U1|DiffClock|count[11]~46_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[11]~47\ : std_logic;
SIGNAL \U1|DiffClock|count[12]~48_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[12]~49\ : std_logic;
SIGNAL \U1|DiffClock|count[13]~50_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[13]~51\ : std_logic;
SIGNAL \U1|DiffClock|count[14]~52_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[14]~53\ : std_logic;
SIGNAL \U1|DiffClock|count[15]~55\ : std_logic;
SIGNAL \U1|DiffClock|count[16]~56_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[16]~57\ : std_logic;
SIGNAL \U1|DiffClock|count[17]~59\ : std_logic;
SIGNAL \U1|DiffClock|count[18]~61\ : std_logic;
SIGNAL \U1|DiffClock|count[19]~62_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[19]~63\ : std_logic;
SIGNAL \U1|DiffClock|count[20]~66\ : std_logic;
SIGNAL \U1|DiffClock|count[21]~67_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[21]~68\ : std_logic;
SIGNAL \U1|DiffClock|count[22]~69_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[18]~60_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[17]~58_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~14_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[8]~40_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[2]~28_combout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~1_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~3_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~5_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~7_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~9_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~11_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~13_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~15_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~17_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~19_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~21_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~23_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~25_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~27_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~29_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~31_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~33_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~35_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~37_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~39_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~41_cout\ : std_logic;
SIGNAL \U1|DiffClock|LessThan0~42_combout\ : std_logic;
SIGNAL \U1|DiffClock|count_to[23]~0_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~5\ : std_logic;
SIGNAL \U1|DiffClock|Add1~7\ : std_logic;
SIGNAL \U1|DiffClock|Add1~8_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~9\ : std_logic;
SIGNAL \U1|DiffClock|Add1~10_combout\ : std_logic;
SIGNAL \U1|DiffClock|count_to[7]~4_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~11\ : std_logic;
SIGNAL \U1|DiffClock|Add1~12_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~13\ : std_logic;
SIGNAL \U1|DiffClock|Add1~15\ : std_logic;
SIGNAL \U1|DiffClock|Add1~16_combout\ : std_logic;
SIGNAL \U1|DiffClock|count_to[10]~5_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~17\ : std_logic;
SIGNAL \U1|DiffClock|Add1~18_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~19\ : std_logic;
SIGNAL \U1|DiffClock|Add1~20_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~21\ : std_logic;
SIGNAL \U1|DiffClock|Add1~22_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~23\ : std_logic;
SIGNAL \U1|DiffClock|Add1~24_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~25\ : std_logic;
SIGNAL \U1|DiffClock|Add1~26_combout\ : std_logic;
SIGNAL \U1|DiffClock|count_to[15]~6_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[15]~54_combout\ : std_logic;
SIGNAL \U1|DiffClock|Equal0~8_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~28_combout\ : std_logic;
SIGNAL \U1|DiffClock|Equal0~9_combout\ : std_logic;
SIGNAL \U1|DiffClock|Equal0~7_combout\ : std_logic;
SIGNAL \U1|DiffClock|Equal0~10_combout\ : std_logic;
SIGNAL \U1|DiffClock|Add1~32_combout\ : std_logic;
SIGNAL \U1|DiffClock|count_to[18]~3_combout\ : std_logic;
SIGNAL \U1|DiffClock|Equal0~0_combout\ : std_logic;
SIGNAL \U1|DiffClock|count[20]~65_combout\ : std_logic;
SIGNAL \U1|DiffClock|Equal0~11_combout\ : std_logic;
SIGNAL \U1|DiffClock|Equal0~12_combout\ : std_logic;
SIGNAL \U1|DiffClock|Equal0~13_combout\ : std_logic;
SIGNAL \U1|DiffClock|Equal0~14_combout\ : std_logic;
SIGNAL \U1|DiffClock|slowclock~0_combout\ : std_logic;
SIGNAL \U1|DiffClock|slowclock~regout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_y_vector~0_combout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_y_coord_temp[2]~4_combout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_y_coord[1]~3_cout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_y_coord[1]~4_combout\ : std_logic;
SIGNAL \U1|Collision|process_0~4_combout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_y_coord_temp[3]~6_combout\ : std_logic;
SIGNAL \U1|Collision|process_0~3_combout\ : std_logic;
SIGNAL \U1|Collision|process_0~5_combout\ : std_logic;
SIGNAL \U1|Collision|puck_boundary~regout\ : std_logic;
SIGNAL \U1|Puck_Movement|Add5~0_combout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_y_coord[1]~5\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_y_coord_temp[2]~5\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_y_coord_temp[3]~7\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_y_coord_temp[4]~8_combout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_y_coord_temp[4]~9\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_y_coord_temp[5]~11\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_y_coord[6]~6_combout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_y_coord_temp[5]~10_combout\ : std_logic;
SIGNAL \U1|P1_forward|player_y[0]~4_combout\ : std_logic;
SIGNAL \U1|P1_forward|player_y[3]~6_combout\ : std_logic;
SIGNAL \U1|Collision|Equal2~1_combout\ : std_logic;
SIGNAL \U1|P1_forward|player_y[6]~10_combout\ : std_logic;
SIGNAL \U1|P1_forward|player_y[0]~5\ : std_logic;
SIGNAL \U1|P1_forward|y_coord[1]~5\ : std_logic;
SIGNAL \U1|P1_forward|y_coord[2]~7\ : std_logic;
SIGNAL \U1|P1_forward|player_y[3]~7\ : std_logic;
SIGNAL \U1|P1_forward|y_coord[4]~8_combout\ : std_logic;
SIGNAL \U1|screen|Add1~1\ : std_logic;
SIGNAL \U1|screen|Add1~3\ : std_logic;
SIGNAL \U1|screen|Add1~5\ : std_logic;
SIGNAL \U1|screen|Add1~6_combout\ : std_logic;
SIGNAL \U1|screen|Add1~4_combout\ : std_logic;
SIGNAL \U1|screen|Add1~2_combout\ : std_logic;
SIGNAL \U1|Collision|Equal3~1_combout\ : std_logic;
SIGNAL \U1|P1_forward|player_y[6]~3_combout\ : std_logic;
SIGNAL \U1|P1_forward|y_coord[2]~6_combout\ : std_logic;
SIGNAL \U1|Collision|Add7~1_cout\ : std_logic;
SIGNAL \U1|Collision|Add7~3\ : std_logic;
SIGNAL \U1|Collision|Add7~4_combout\ : std_logic;
SIGNAL \U1|Collision|Add7~2_combout\ : std_logic;
SIGNAL \U1|Collision|LessThan2~1_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan2~3_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan2~5_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan2~7_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan2~9_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan2~11_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan2~12_combout\ : std_logic;
SIGNAL \U1|Collision|puck_player~2_combout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_coord_temp[4]~4\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_coord[5]~14_combout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_coord[5]~15\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_coord_temp[6]~5_combout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_coord_temp[6]~6\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_coord[7]~16_combout\ : std_logic;
SIGNAL \U1|Collision|puck_player~1_combout\ : std_logic;
SIGNAL \U1|Collision|puck_player~3_combout\ : std_logic;
SIGNAL \U1|Pl_goalie|player_y[0]~4_combout\ : std_logic;
SIGNAL \U1|Pl_goalie|player_y[6]~10_combout\ : std_logic;
SIGNAL \U1|Pl_goalie|player_y[0]~5\ : std_logic;
SIGNAL \U1|Pl_goalie|y_coord[1]~5\ : std_logic;
SIGNAL \U1|Pl_goalie|y_coord[2]~7\ : std_logic;
SIGNAL \U1|Pl_goalie|player_y[3]~7\ : std_logic;
SIGNAL \U1|Pl_goalie|y_coord[4]~8_combout\ : std_logic;
SIGNAL \U1|Pl_goalie|player_y[3]~6_combout\ : std_logic;
SIGNAL \U1|Pl_goalie|y_coord[2]~6_combout\ : std_logic;
SIGNAL \U1|screen|Add0~1\ : std_logic;
SIGNAL \U1|screen|Add0~3\ : std_logic;
SIGNAL \U1|screen|Add0~5\ : std_logic;
SIGNAL \U1|screen|Add0~7\ : std_logic;
SIGNAL \U1|screen|Add0~8_combout\ : std_logic;
SIGNAL \U1|screen|Add0~0_combout\ : std_logic;
SIGNAL \U1|Collision|Equal1~0_combout\ : std_logic;
SIGNAL \U1|screen|Add0~6_combout\ : std_logic;
SIGNAL \U1|screen|Add0~2_combout\ : std_logic;
SIGNAL \U1|Collision|Equal1~1_combout\ : std_logic;
SIGNAL \U1|Pl_goalie|player_y[3]~3_combout\ : std_logic;
SIGNAL \U1|Pl_goalie|y_coord[4]~9\ : std_logic;
SIGNAL \U1|Pl_goalie|y_coord[5]~10_combout\ : std_logic;
SIGNAL \U1|Pl_goalie|y_coord[1]~4_combout\ : std_logic;
SIGNAL \U1|Collision|Add5~1_cout\ : std_logic;
SIGNAL \U1|Collision|Add5~3\ : std_logic;
SIGNAL \U1|Collision|Add5~5\ : std_logic;
SIGNAL \U1|Collision|Add5~7\ : std_logic;
SIGNAL \U1|Collision|Add5~9\ : std_logic;
SIGNAL \U1|Collision|Add5~10_combout\ : std_logic;
SIGNAL \U1|Collision|Add5~8_combout\ : std_logic;
SIGNAL \U1|Collision|Add5~6_combout\ : std_logic;
SIGNAL \U1|Collision|Add5~4_combout\ : std_logic;
SIGNAL \U1|Collision|Add12~1\ : std_logic;
SIGNAL \U1|Collision|Add12~3\ : std_logic;
SIGNAL \U1|Collision|Add12~5\ : std_logic;
SIGNAL \U1|Collision|Add12~7\ : std_logic;
SIGNAL \U1|Collision|Add12~9\ : std_logic;
SIGNAL \U1|Collision|Add12~10_combout\ : std_logic;
SIGNAL \U1|Collision|Add12~2_combout\ : std_logic;
SIGNAL \U1|Collision|LessThan1~1_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan1~3_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan1~5_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan1~7_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan1~9_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan1~11_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan1~12_combout\ : std_logic;
SIGNAL \U1|P1_forward|y_coord[4]~9\ : std_logic;
SIGNAL \U1|P1_forward|y_coord[5]~11\ : std_logic;
SIGNAL \U1|P1_forward|player_y[6]~8_combout\ : std_logic;
SIGNAL \U1|Collision|Add7~5\ : std_logic;
SIGNAL \U1|Collision|Add7~7\ : std_logic;
SIGNAL \U1|Collision|Add7~9\ : std_logic;
SIGNAL \U1|Collision|Add7~11\ : std_logic;
SIGNAL \U1|Collision|Add7~12_combout\ : std_logic;
SIGNAL \U1|Collision|Add7~8_combout\ : std_logic;
SIGNAL \U1|Collision|Add7~6_combout\ : std_logic;
SIGNAL \U1|Collision|Add13~1\ : std_logic;
SIGNAL \U1|Collision|Add13~3\ : std_logic;
SIGNAL \U1|Collision|Add13~5\ : std_logic;
SIGNAL \U1|Collision|Add13~7\ : std_logic;
SIGNAL \U1|Collision|Add13~9\ : std_logic;
SIGNAL \U1|Collision|Add13~10_combout\ : std_logic;
SIGNAL \U1|Collision|Add13~8_combout\ : std_logic;
SIGNAL \U1|Collision|Add13~4_combout\ : std_logic;
SIGNAL \U1|Collision|Add13~2_combout\ : std_logic;
SIGNAL \U1|Collision|Add13~0_combout\ : std_logic;
SIGNAL \U1|Collision|LessThan3~1_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan3~3_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan3~5_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan3~7_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan3~9_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan3~11_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan3~12_combout\ : std_logic;
SIGNAL \U1|Collision|puck_player~4_combout\ : std_logic;
SIGNAL \U1|P2_forward|player_y[0]~5\ : std_logic;
SIGNAL \U1|P2_forward|y_coord[1]~4_combout\ : std_logic;
SIGNAL \U1|P2_forward|player_y[6]~10_combout\ : std_logic;
SIGNAL \U1|P2_forward|y_coord[1]~5\ : std_logic;
SIGNAL \U1|P2_forward|y_coord[2]~7\ : std_logic;
SIGNAL \U1|P2_forward|player_y[3]~6_combout\ : std_logic;
SIGNAL \U1|screen|Add3~1\ : std_logic;
SIGNAL \U1|screen|Add3~3\ : std_logic;
SIGNAL \U1|screen|Add3~4_combout\ : std_logic;
SIGNAL \U1|screen|Add3~5\ : std_logic;
SIGNAL \U1|screen|Add3~6_combout\ : std_logic;
SIGNAL \U1|P2_forward|player_y[0]~4_combout\ : std_logic;
SIGNAL \U1|screen|Add3~0_combout\ : std_logic;
SIGNAL \U1|P2_forward|player_y[3]~7\ : std_logic;
SIGNAL \U1|P2_forward|y_coord[4]~9\ : std_logic;
SIGNAL \U1|P2_forward|y_coord[5]~10_combout\ : std_logic;
SIGNAL \U1|screen|Add3~7\ : std_logic;
SIGNAL \U1|screen|Add3~8_combout\ : std_logic;
SIGNAL \U1|Collision|Equal7~0_combout\ : std_logic;
SIGNAL \U1|Collision|Equal7~1_combout\ : std_logic;
SIGNAL \U1|P2_forward|player_y[3]~3_combout\ : std_logic;
SIGNAL \U1|P2_forward|y_coord[5]~11\ : std_logic;
SIGNAL \U1|P2_forward|player_y[6]~8_combout\ : std_logic;
SIGNAL \U1|P2_forward|y_coord[4]~8_combout\ : std_logic;
SIGNAL \U1|P2_forward|y_coord[2]~6_combout\ : std_logic;
SIGNAL \U1|Collision|Add11~1_cout\ : std_logic;
SIGNAL \U1|Collision|Add11~3\ : std_logic;
SIGNAL \U1|Collision|Add11~5\ : std_logic;
SIGNAL \U1|Collision|Add11~7\ : std_logic;
SIGNAL \U1|Collision|Add11~9\ : std_logic;
SIGNAL \U1|Collision|Add11~11\ : std_logic;
SIGNAL \U1|Collision|Add11~12_combout\ : std_logic;
SIGNAL \U1|Collision|Add11~10_combout\ : std_logic;
SIGNAL \U1|Collision|Add11~8_combout\ : std_logic;
SIGNAL \U1|Collision|Add11~4_combout\ : std_logic;
SIGNAL \U1|Collision|Add11~2_combout\ : std_logic;
SIGNAL \U1|Collision|LessThan6~1_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan6~3_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan6~5_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan6~7_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan6~9_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan6~11_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan6~12_combout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_direction[0]~1_combout\ : std_logic;
SIGNAL \U1|Collision|puck_player~5_combout\ : std_logic;
SIGNAL \U1|Collision|puck_player~6_combout\ : std_logic;
SIGNAL \U1|Collision|process_0~0_combout\ : std_logic;
SIGNAL \U1|Collision|process_0~1_combout\ : std_logic;
SIGNAL \U1|Collision|Equal17~0_combout\ : std_logic;
SIGNAL \U1|P2_goalie|player_y[0]~5\ : std_logic;
SIGNAL \U1|P2_goalie|y_coord[1]~4_combout\ : std_logic;
SIGNAL \U1|P2_goalie|player_y[0]~4_combout\ : std_logic;
SIGNAL \U1|P2_goalie|y_coord[2]~7\ : std_logic;
SIGNAL \U1|P2_goalie|player_y[3]~6_combout\ : std_logic;
SIGNAL \U1|P2_goalie|player_y[3]~7\ : std_logic;
SIGNAL \U1|P2_goalie|y_coord[4]~8_combout\ : std_logic;
SIGNAL \U1|screen|Add2~1\ : std_logic;
SIGNAL \U1|screen|Add2~3\ : std_logic;
SIGNAL \U1|screen|Add2~5\ : std_logic;
SIGNAL \U1|screen|Add2~7\ : std_logic;
SIGNAL \U1|screen|Add2~8_combout\ : std_logic;
SIGNAL \U1|screen|Add2~0_combout\ : std_logic;
SIGNAL \U1|Collision|Equal5~0_combout\ : std_logic;
SIGNAL \U1|screen|Add2~4_combout\ : std_logic;
SIGNAL \U1|screen|Add2~2_combout\ : std_logic;
SIGNAL \U1|Collision|Equal5~1_combout\ : std_logic;
SIGNAL \U1|P2_goalie|player_y[6]~10_combout\ : std_logic;
SIGNAL \U1|P2_goalie|y_coord[1]~5\ : std_logic;
SIGNAL \U1|P2_goalie|y_coord[2]~6_combout\ : std_logic;
SIGNAL \U1|Collision|Equal4~1_combout\ : std_logic;
SIGNAL \U1|P2_goalie|player_y[3]~3_combout\ : std_logic;
SIGNAL \U1|P2_goalie|y_coord[4]~9\ : std_logic;
SIGNAL \U1|P2_goalie|y_coord[5]~10_combout\ : std_logic;
SIGNAL \U1|Collision|Add9~1_cout\ : std_logic;
SIGNAL \U1|Collision|Add9~3\ : std_logic;
SIGNAL \U1|Collision|Add9~5\ : std_logic;
SIGNAL \U1|Collision|Add9~7\ : std_logic;
SIGNAL \U1|Collision|Add9~9\ : std_logic;
SIGNAL \U1|Collision|Add9~10_combout\ : std_logic;
SIGNAL \U1|Collision|Add9~8_combout\ : std_logic;
SIGNAL \U1|Collision|Add9~6_combout\ : std_logic;
SIGNAL \U1|Collision|Add9~4_combout\ : std_logic;
SIGNAL \U1|Collision|Add14~1\ : std_logic;
SIGNAL \U1|Collision|Add14~3\ : std_logic;
SIGNAL \U1|Collision|Add14~5\ : std_logic;
SIGNAL \U1|Collision|Add14~7\ : std_logic;
SIGNAL \U1|Collision|Add14~9\ : std_logic;
SIGNAL \U1|Collision|Add14~10_combout\ : std_logic;
SIGNAL \U1|Collision|Add14~2_combout\ : std_logic;
SIGNAL \U1|Collision|LessThan5~1_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan5~3_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan5~5_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan5~7_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan5~9_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan5~11_cout\ : std_logic;
SIGNAL \U1|Collision|LessThan5~12_combout\ : std_logic;
SIGNAL \U1|Collision|process_0~2_combout\ : std_logic;
SIGNAL \U1|Collision|puck_player~7_combout\ : std_logic;
SIGNAL \U1|Collision|puck_player~regout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_vector[0]~1_combout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_vector~0_combout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_coord[2]~11\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_coord[3]~12_combout\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_coord[3]~13\ : std_logic;
SIGNAL \U1|Puck_Movement|puck_x_coord_temp[4]~3_combout\ : std_logic;
SIGNAL \U1|Collision|score_p1~0_combout\ : std_logic;
SIGNAL \U1|Collision|score_p1~regout\ : std_logic;
SIGNAL \U0|Selector4~1_combout\ : std_logic;
SIGNAL \U0|Selector3~0_combout\ : std_logic;
SIGNAL \U0|NEXT_STATE.idle_state~regout\ : std_logic;
SIGNAL \U0|Selector4~2_combout\ : std_logic;
SIGNAL \U0|NEXT_STATE.play_state~regout\ : std_logic;
SIGNAL \U0|Add0~11_combout\ : std_logic;
SIGNAL \U0|Add0~5_combout\ : std_logic;
SIGNAL \U0|Add0~1\ : std_logic;
SIGNAL \U0|Add0~4\ : std_logic;
SIGNAL \U0|Add0~6_combout\ : std_logic;
SIGNAL \U0|Add0~8_combout\ : std_logic;
SIGNAL \U0|Equal1~0_combout\ : std_logic;
SIGNAL \U0|P2_score_count_temp~0_combout\ : std_logic;
SIGNAL \U0|Add1~5_combout\ : std_logic;
SIGNAL \U0|Add1~8_combout\ : std_logic;
SIGNAL \U0|Add1~1\ : std_logic;
SIGNAL \U0|Add1~4\ : std_logic;
SIGNAL \U0|Add1~7\ : std_logic;
SIGNAL \U0|Add1~9_combout\ : std_logic;
SIGNAL \U0|Add1~11_combout\ : std_logic;
SIGNAL \U0|Equal0~0_combout\ : std_logic;
SIGNAL \U0|Selector6~0_combout\ : std_logic;
SIGNAL \U0|Selector1~0_combout\ : std_logic;
SIGNAL \U0|NEXT_STATE.winner_state~regout\ : std_logic;
SIGNAL \U0|winner2[0]~0_combout\ : std_logic;
SIGNAL \U0|winner2[1]~feeder_combout\ : std_logic;
SIGNAL \U0|winner2[2]~feeder_combout\ : std_logic;
SIGNAL \U0|winner2[3]~feeder_combout\ : std_logic;
SIGNAL \U0|winner2[4]~feeder_combout\ : std_logic;
SIGNAL \U0|winner2[5]~feeder_combout\ : std_logic;
SIGNAL \U0|winner2[6]~feeder_combout\ : std_logic;
SIGNAL \U0|winner2[7]~feeder_combout\ : std_logic;
SIGNAL \U0|winner2[8]~feeder_combout\ : std_logic;
SIGNAL \U0|winner1[0]~feeder_combout\ : std_logic;
SIGNAL \U0|winner1[0]~0_combout\ : std_logic;
SIGNAL \U0|winner1[1]~feeder_combout\ : std_logic;
SIGNAL \U0|winner1[2]~feeder_combout\ : std_logic;
SIGNAL \U0|winner1[3]~feeder_combout\ : std_logic;
SIGNAL \U0|winner1[4]~feeder_combout\ : std_logic;
SIGNAL \U0|winner1[5]~feeder_combout\ : std_logic;
SIGNAL \U0|winner1[6]~feeder_combout\ : std_logic;
SIGNAL \U0|winner1[7]~feeder_combout\ : std_logic;
SIGNAL \U0|winner1[8]~feeder_combout\ : std_logic;
SIGNAL \U0|Add0~0_combout\ : std_logic;
SIGNAL \U0|Add0~2_combout\ : std_logic;
SIGNAL \DispP1Score|Mux6~0_combout\ : std_logic;
SIGNAL \DispP1Score|Mux5~0_combout\ : std_logic;
SIGNAL \DispP1Score|Mux4~0_combout\ : std_logic;
SIGNAL \DispP1Score|Mux3~0_combout\ : std_logic;
SIGNAL \DispP1Score|Mux2~0_combout\ : std_logic;
SIGNAL \DispP1Score|Mux1~0_combout\ : std_logic;
SIGNAL \DispP1Score|Mux0~0_combout\ : std_logic;
SIGNAL \U0|Add1~0_combout\ : std_logic;
SIGNAL \U0|Add1~2_combout\ : std_logic;
SIGNAL \DispP2Score|Mux6~0_combout\ : std_logic;
SIGNAL \DispP2Score|Mux5~0_combout\ : std_logic;
SIGNAL \DispP2Score|Mux4~0_combout\ : std_logic;
SIGNAL \DispP2Score|Mux3~0_combout\ : std_logic;
SIGNAL \DispP2Score|Mux2~0_combout\ : std_logic;
SIGNAL \DispP2Score|Mux1~0_combout\ : std_logic;
SIGNAL \DispP2Score|Mux0~0_combout\ : std_logic;
SIGNAL \U1|screen|x_temp0[0]~8_combout\ : std_logic;
SIGNAL \U1|screen|x_temp0[0]~9\ : std_logic;
SIGNAL \U1|screen|x_temp0[1]~11\ : std_logic;
SIGNAL \U1|screen|x_temp0[2]~13\ : std_logic;
SIGNAL \U1|screen|x_temp0[3]~14_combout\ : std_logic;
SIGNAL \U1|screen|x_temp0[3]~15\ : std_logic;
SIGNAL \U1|screen|x_temp0[4]~17\ : std_logic;
SIGNAL \U1|screen|x_temp0[5]~18_combout\ : std_logic;
SIGNAL \U1|screen|x_temp0[5]~19\ : std_logic;
SIGNAL \U1|screen|x_temp0[6]~21\ : std_logic;
SIGNAL \U1|screen|x_temp0[7]~22_combout\ : std_logic;
SIGNAL \U1|screen|plot~2_combout\ : std_logic;
SIGNAL \U1|screen|y_temp0[4]~2_combout\ : std_logic;
SIGNAL \U1|screen|y_temp0[3]~1_combout\ : std_logic;
SIGNAL \U1|screen|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|screen|y_temp0[6]~0_combout\ : std_logic;
SIGNAL \U1|screen|y_temp0[5]~3_combout\ : std_logic;
SIGNAL \U1|screen|y_temp0~4_combout\ : std_logic;
SIGNAL \U1|screen|y_temp0~5_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~1\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~3\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~5\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~7\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~9\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~11\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~13\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~14_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~12_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~8_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~6_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|Add0~0_combout\ : std_logic;
SIGNAL \U1|screen|x_temp0[6]~20_combout\ : std_logic;
SIGNAL \U1|screen|Add5~0_combout\ : std_logic;
SIGNAL \U1|screen|y_temp0~6_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[5]~1\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[6]~3\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[7]~5\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[8]~7\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[9]~9\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[10]~11\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[11]~13\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[12]~15\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[13]~17\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[14]~18_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[12]~14_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[13]~16_combout\ : std_logic;
SIGNAL \vga_u0|mypll|altpll_component|_clk0\ : std_logic;
SIGNAL \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \vga_u0|controller|Add0~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~1\ : std_logic;
SIGNAL \vga_u0|controller|Add0~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~3\ : std_logic;
SIGNAL \vga_u0|controller|Add0~4_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~5\ : std_logic;
SIGNAL \vga_u0|controller|Add0~7\ : std_logic;
SIGNAL \vga_u0|controller|Add0~8_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~9\ : std_logic;
SIGNAL \vga_u0|controller|Add0~11\ : std_logic;
SIGNAL \vga_u0|controller|Add0~12_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~13\ : std_logic;
SIGNAL \vga_u0|controller|Add0~14_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~15\ : std_logic;
SIGNAL \vga_u0|controller|Add0~16_combout\ : std_logic;
SIGNAL \vga_u0|controller|xCounter~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|Equal0~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~6_combout\ : std_logic;
SIGNAL \vga_u0|controller|Equal0~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[4]~5_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[2]~7_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[3]~6_combout\ : std_logic;
SIGNAL \vga_u0|controller|always1~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[5]~4_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[1]~8_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[0]~9_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~1\ : std_logic;
SIGNAL \vga_u0|controller|Add1~3\ : std_logic;
SIGNAL \vga_u0|controller|Add1~5\ : std_logic;
SIGNAL \vga_u0|controller|Add1~7\ : std_logic;
SIGNAL \vga_u0|controller|Add1~9\ : std_logic;
SIGNAL \vga_u0|controller|Add1~11\ : std_logic;
SIGNAL \vga_u0|controller|Add1~12_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[6]~3_combout\ : std_logic;
SIGNAL \vga_u0|controller|always1~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[8]~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[7]~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~1\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~3\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~5\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~7\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~9\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~11\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~13\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~14_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~6_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|Add0~4_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~17\ : std_logic;
SIGNAL \vga_u0|controller|Add0~18_combout\ : std_logic;
SIGNAL \vga_u0|controller|xCounter~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[5]~1\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[6]~3\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[7]~5\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[8]~7\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[9]~9\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[10]~11\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[11]~13\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[12]~15\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[13]~17\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[14]~18_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[12]~14_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[13]~16_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add0~10_combout\ : std_logic;
SIGNAL \vga_u0|controller|xCounter~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[6]~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[9]~8_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ : std_logic;
SIGNAL \vga_u0|controller|controller_translator|mem_address[11]~12_combout\ : std_logic;
SIGNAL \U1|P2_goalie|y_coord[5]~11\ : std_logic;
SIGNAL \U1|P2_goalie|player_y[6]~8_combout\ : std_logic;
SIGNAL \U1|screen|Add2~9\ : std_logic;
SIGNAL \U1|screen|Add2~10_combout\ : std_logic;
SIGNAL \U1|screen|LessThan13~1_cout\ : std_logic;
SIGNAL \U1|screen|LessThan13~3_cout\ : std_logic;
SIGNAL \U1|screen|LessThan13~5_cout\ : std_logic;
SIGNAL \U1|screen|LessThan13~7_cout\ : std_logic;
SIGNAL \U1|screen|LessThan13~9_cout\ : std_logic;
SIGNAL \U1|screen|LessThan13~11_cout\ : std_logic;
SIGNAL \U1|screen|LessThan13~12_combout\ : std_logic;
SIGNAL \U1|screen|LessThan12~1_cout\ : std_logic;
SIGNAL \U1|screen|LessThan12~3_cout\ : std_logic;
SIGNAL \U1|screen|LessThan12~5_cout\ : std_logic;
SIGNAL \U1|screen|LessThan12~7_cout\ : std_logic;
SIGNAL \U1|screen|LessThan12~9_cout\ : std_logic;
SIGNAL \U1|screen|LessThan12~11_cout\ : std_logic;
SIGNAL \U1|screen|LessThan12~12_combout\ : std_logic;
SIGNAL \U1|screen|x_temp0[1]~10_combout\ : std_logic;
SIGNAL \U1|screen|Equal3~1_combout\ : std_logic;
SIGNAL \U1|screen|Equal3~0_combout\ : std_logic;
SIGNAL \U1|screen|Equal3~2_combout\ : std_logic;
SIGNAL \U1|screen|colour~2_combout\ : std_logic;
SIGNAL \U1|screen|LessThan14~1_cout\ : std_logic;
SIGNAL \U1|screen|LessThan14~3_cout\ : std_logic;
SIGNAL \U1|screen|LessThan14~5_cout\ : std_logic;
SIGNAL \U1|screen|LessThan14~7_cout\ : std_logic;
SIGNAL \U1|screen|LessThan14~9_cout\ : std_logic;
SIGNAL \U1|screen|LessThan14~11_cout\ : std_logic;
SIGNAL \U1|screen|LessThan14~12_combout\ : std_logic;
SIGNAL \U1|screen|Add3~9\ : std_logic;
SIGNAL \U1|screen|Add3~10_combout\ : std_logic;
SIGNAL \U1|screen|LessThan15~1_cout\ : std_logic;
SIGNAL \U1|screen|LessThan15~3_cout\ : std_logic;
SIGNAL \U1|screen|LessThan15~5_cout\ : std_logic;
SIGNAL \U1|screen|LessThan15~7_cout\ : std_logic;
SIGNAL \U1|screen|LessThan15~9_cout\ : std_logic;
SIGNAL \U1|screen|LessThan15~11_cout\ : std_logic;
SIGNAL \U1|screen|LessThan15~12_combout\ : std_logic;
SIGNAL \U1|screen|colour~24_combout\ : std_logic;
SIGNAL \U1|screen|process_0~6_combout\ : std_logic;
SIGNAL \U1|screen|process_0~7_combout\ : std_logic;
SIGNAL \U1|screen|process_0~8_combout\ : std_logic;
SIGNAL \U1|screen|process_0~5_combout\ : std_logic;
SIGNAL \U1|screen|process_0~9_combout\ : std_logic;
SIGNAL \U1|screen|colour~3_combout\ : std_logic;
SIGNAL \U1|screen|x[0]~feeder_combout\ : std_logic;
SIGNAL \U1|screen|x[1]~feeder_combout\ : std_logic;
SIGNAL \U1|screen|x_temp0[2]~12_combout\ : std_logic;
SIGNAL \U1|screen|x[2]~feeder_combout\ : std_logic;
SIGNAL \U1|screen|x[3]~feeder_combout\ : std_logic;
SIGNAL \U1|screen|x_temp0[4]~16_combout\ : std_logic;
SIGNAL \U1|screen|x[4]~feeder_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[5]~0_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[6]~2_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[7]~4_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[8]~6_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[9]~8_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[10]~10_combout\ : std_logic;
SIGNAL \vga_u0|user_input_translator|mem_address[11]~12_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|on_screen~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|on_screen~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|Add1~13\ : std_logic;
SIGNAL \vga_u0|controller|Add1~15\ : std_logic;
SIGNAL \vga_u0|controller|Add1~17\ : std_logic;
SIGNAL \vga_u0|controller|Add1~18_combout\ : std_logic;
SIGNAL \vga_u0|controller|yCounter[9]~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_VS1~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|LessThan7~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|on_screen~2_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14~portadataout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_R[0]~0_combout\ : std_logic;
SIGNAL \U1|screen|colour[1]~16_combout\ : std_logic;
SIGNAL \U1|screen|colour[1]~17_combout\ : std_logic;
SIGNAL \U1|screen|colour[1]~11_combout\ : std_logic;
SIGNAL \U1|screen|colour[1]~15_combout\ : std_logic;
SIGNAL \U1|screen|colour[1]~18_combout\ : std_logic;
SIGNAL \U1|screen|colour~12_combout\ : std_logic;
SIGNAL \U1|screen|colour~19_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_G[0]~0_combout\ : std_logic;
SIGNAL \U1|Pl_goalie|y_coord[5]~11\ : std_logic;
SIGNAL \U1|Pl_goalie|player_y[6]~8_combout\ : std_logic;
SIGNAL \U1|screen|Add0~9\ : std_logic;
SIGNAL \U1|screen|Add0~10_combout\ : std_logic;
SIGNAL \U1|screen|Add0~4_combout\ : std_logic;
SIGNAL \U1|screen|LessThan9~1_cout\ : std_logic;
SIGNAL \U1|screen|LessThan9~3_cout\ : std_logic;
SIGNAL \U1|screen|LessThan9~5_cout\ : std_logic;
SIGNAL \U1|screen|LessThan9~7_cout\ : std_logic;
SIGNAL \U1|screen|LessThan9~9_cout\ : std_logic;
SIGNAL \U1|screen|LessThan9~11_cout\ : std_logic;
SIGNAL \U1|screen|LessThan9~12_combout\ : std_logic;
SIGNAL \U1|screen|LessThan8~1_cout\ : std_logic;
SIGNAL \U1|screen|LessThan8~3_cout\ : std_logic;
SIGNAL \U1|screen|LessThan8~5_cout\ : std_logic;
SIGNAL \U1|screen|LessThan8~7_cout\ : std_logic;
SIGNAL \U1|screen|LessThan8~9_cout\ : std_logic;
SIGNAL \U1|screen|LessThan8~11_cout\ : std_logic;
SIGNAL \U1|screen|LessThan8~12_combout\ : std_logic;
SIGNAL \U1|screen|colour[1]~20_combout\ : std_logic;
SIGNAL \U1|screen|colour[1]~21_combout\ : std_logic;
SIGNAL \U1|screen|colour[1]~8_combout\ : std_logic;
SIGNAL \U1|P1_forward|y_coord[5]~10_combout\ : std_logic;
SIGNAL \U1|screen|Add1~7\ : std_logic;
SIGNAL \U1|screen|Add1~9\ : std_logic;
SIGNAL \U1|screen|Add1~10_combout\ : std_logic;
SIGNAL \U1|screen|LessThan11~1_cout\ : std_logic;
SIGNAL \U1|screen|LessThan11~3_cout\ : std_logic;
SIGNAL \U1|screen|LessThan11~5_cout\ : std_logic;
SIGNAL \U1|screen|LessThan11~7_cout\ : std_logic;
SIGNAL \U1|screen|LessThan11~9_cout\ : std_logic;
SIGNAL \U1|screen|LessThan11~11_cout\ : std_logic;
SIGNAL \U1|screen|LessThan11~12_combout\ : std_logic;
SIGNAL \U1|screen|colour[1]~7_combout\ : std_logic;
SIGNAL \U1|screen|colour[1]~9_combout\ : std_logic;
SIGNAL \U1|screen|colour~22_combout\ : std_logic;
SIGNAL \U1|screen|colour~23_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0_combout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6~portadataout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_B[0]~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_HS1~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_HS1~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_HS1~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_HS1~regout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_HS~regout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_VS1~1_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_VS1~2_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_VS1~regout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_VS~regout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_BLANK1~0_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_BLANK1~regout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_BLANK~feeder_combout\ : std_logic;
SIGNAL \vga_u0|controller|VGA_BLANK~regout\ : std_logic;
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|P1_forward|player_y\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|P1_forward|y_coord\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|P2_goalie|player_y\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|P2_goalie|y_coord\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|P2_forward|player_y\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|P2_forward|y_coord\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_u0|controller|yCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga_u0|controller|xCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U0|winner2\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U0|winner1\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U0|P2_score_count_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|P2_score_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|P1_score_count_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|P1_score_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|DiffClock|count_to\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \U1|DiffClock|count\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \U1|Pl_goalie|y_coord\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|Pl_goalie|player_y\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|Puck_Movement|puck_y_vector\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U1|Puck_Movement|puck_y_coord_temp\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|Puck_Movement|puck_y_coord\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|Puck_Movement|puck_x_vector\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U1|Puck_Movement|puck_x_direction\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U1|Puck_Movement|puck_x_coord_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|Puck_Movement|puck_x_coord\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|Collision|p2_goalie_boundary\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U1|Collision|p2_forward_boundary\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U1|Collision|p1_goalie_boundary\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U1|Collision|p1_forward_boundary\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U1|screen|y_temp0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|screen|y\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|screen|x_temp0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|screen|x\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|screen|colour\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_KEY[3]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \U1|screen|ALT_INV_plot~2_combout\ : std_logic;
SIGNAL \U0|ALT_INV_reset_connect~regout\ : std_logic;
SIGNAL \DispP2Score|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \DispP1Score|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U1|DiffClock|ALT_INV_LessThan0~42_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX7 <= ww_HEX7;
HEX6 <= ww_HEX6;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_BLANK <= ww_VGA_BLANK;
VGA_SYNC <= ww_VGA_SYNC;
VGA_CLK <= ww_VGA_CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTBDATAIN_bus\(0) <= \U1|screen|colour\(2);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \U1|screen|x\(4) & 
\U1|screen|x\(3) & \U1|screen|x\(2) & \U1|screen|x\(1) & \U1|screen|x\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTBDATAIN_bus\(0) <= \U1|screen|colour\(2);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \U1|screen|x\(4) & 
\U1|screen|x\(3) & \U1|screen|x\(2) & \U1|screen|x\(1) & \U1|screen|x\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTBDATAIN_bus\(0) <= \U1|screen|colour\(2);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \U1|screen|x\(4) & 
\U1|screen|x\(3) & \U1|screen|x\(2) & \U1|screen|x\(1) & \U1|screen|x\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBDATAIN_bus\(0) <= \U1|screen|colour\(2);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \U1|screen|x\(4) & 
\U1|screen|x\(3) & \U1|screen|x\(2) & \U1|screen|x\(1) & \U1|screen|x\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTBDATAIN_bus\(0) <= \U1|screen|colour\(2);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \U1|screen|x\(4) & 
\U1|screen|x\(3) & \U1|screen|x\(2) & \U1|screen|x\(1) & \U1|screen|x\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTBDATAIN_bus\(0) <= \U1|screen|colour\(1);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \U1|screen|x\(4) & 
\U1|screen|x\(3) & \U1|screen|x\(2) & \U1|screen|x\(1) & \U1|screen|x\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTBDATAIN_bus\(0) <= \U1|screen|colour\(1);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \U1|screen|x\(4) & 
\U1|screen|x\(3) & \U1|screen|x\(2) & \U1|screen|x\(1) & \U1|screen|x\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTBDATAIN_bus\(0) <= \U1|screen|colour\(1);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \U1|screen|x\(4) & 
\U1|screen|x\(3) & \U1|screen|x\(2) & \U1|screen|x\(1) & \U1|screen|x\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\(0) <= \U1|screen|colour\(1);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \U1|screen|x\(4) & 
\U1|screen|x\(3) & \U1|screen|x\(2) & \U1|screen|x\(1) & \U1|screen|x\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTBDATAIN_bus\(0) <= \U1|screen|colour\(1);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \U1|screen|x\(4) & 
\U1|screen|x\(3) & \U1|screen|x\(2) & \U1|screen|x\(1) & \U1|screen|x\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTBDATAIN_bus\(0) <= \U1|screen|colour\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \U1|screen|x\(4) & 
\U1|screen|x\(3) & \U1|screen|x\(2) & \U1|screen|x\(1) & \U1|screen|x\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTBDATAIN_bus\(0) <= \U1|screen|colour\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \U1|screen|x\(4) & 
\U1|screen|x\(3) & \U1|screen|x\(2) & \U1|screen|x\(1) & \U1|screen|x\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTBDATAIN_bus\(0) <= \U1|screen|colour\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \U1|screen|x\(4) & 
\U1|screen|x\(3) & \U1|screen|x\(2) & \U1|screen|x\(1) & \U1|screen|x\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\(0) <= \U1|screen|colour\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \U1|screen|x\(4) & 
\U1|screen|x\(3) & \U1|screen|x\(2) & \U1|screen|x\(1) & \U1|screen|x\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\(0) <= vcc;

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\(0) <= \U1|screen|colour\(0);

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\ <= (\vga_u0|controller|controller_translator|mem_address[11]~12_combout\ & \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ & 
\vga_u0|controller|controller_translator|mem_address[9]~8_combout\ & \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ & \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ & 
\vga_u0|controller|controller_translator|mem_address[6]~2_combout\ & \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ & \vga_u0|controller|xCounter\(6) & \vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4) & 
\vga_u0|controller|xCounter\(3) & \vga_u0|controller|xCounter\(2));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\ <= (\vga_u0|user_input_translator|mem_address[11]~12_combout\ & \vga_u0|user_input_translator|mem_address[10]~10_combout\ & \vga_u0|user_input_translator|mem_address[9]~8_combout\
& \vga_u0|user_input_translator|mem_address[8]~6_combout\ & \vga_u0|user_input_translator|mem_address[7]~4_combout\ & \vga_u0|user_input_translator|mem_address[6]~2_combout\ & \vga_u0|user_input_translator|mem_address[5]~0_combout\ & \U1|screen|x\(4) & 
\U1|screen|x\(3) & \U1|screen|x\(2) & \U1|screen|x\(1) & \U1|screen|x\(0));

\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9~portadataout\ <= \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(0);

\vga_u0|mypll|altpll_component|pll_INCLK_bus\ <= (gnd & \CLOCK_50~combout\);

\vga_u0|mypll|altpll_component|_clk0\ <= \vga_u0|mypll|altpll_component|pll_CLK_bus\(0);
\vga_u0|mypll|altpll_component|_clk1\ <= \vga_u0|mypll|altpll_component|pll_CLK_bus\(1);
\vga_u0|mypll|altpll_component|_clk2\ <= \vga_u0|mypll|altpll_component|pll_CLK_bus\(2);

\vga_u0|mypll|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \vga_u0|mypll|altpll_component|_clk0\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);

\KEY[3]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \KEY[3]~clk_delay_ctrl_clkout\);
\ALT_INV_KEY[3]~clkctrl_outclk\ <= NOT \KEY[3]~clkctrl_outclk\;
\ALT_INV_CLOCK_50~clkctrl_outclk\ <= NOT \CLOCK_50~clkctrl_outclk\;
\U1|screen|ALT_INV_plot~2_combout\ <= NOT \U1|screen|plot~2_combout\;
\U0|ALT_INV_reset_connect~regout\ <= NOT \U0|reset_connect~regout\;
\DispP2Score|ALT_INV_Mux0~0_combout\ <= NOT \DispP2Score|Mux0~0_combout\;
\DispP1Score|ALT_INV_Mux0~0_combout\ <= NOT \DispP1Score|Mux0~0_combout\;
\U1|DiffClock|ALT_INV_LessThan0~42_combout\ <= NOT \U1|DiffClock|LessThan0~42_combout\;

-- Location: M4K_X13_Y24
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y26
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y23
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y25
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y25
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X1_Y24_N8
\U0|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~3_combout\ = (\U0|P1_score_count_temp\(1) & (!\U0|Add0~1\)) # (!\U0|P1_score_count_temp\(1) & ((\U0|Add0~1\) # (GND)))
-- \U0|Add0~4\ = CARRY((!\U0|Add0~1\) # (!\U0|P1_score_count_temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|P1_score_count_temp\(1),
	datad => VCC,
	cin => \U0|Add0~1\,
	combout => \U0|Add0~3_combout\,
	cout => \U0|Add0~4\);

-- Location: LCCOMB_X1_Y24_N10
\U0|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~6_combout\ = (\U0|P1_score_count_temp\(2) & (\U0|Add0~4\ $ (GND))) # (!\U0|P1_score_count_temp\(2) & (!\U0|Add0~4\ & VCC))
-- \U0|Add0~7\ = CARRY((\U0|P1_score_count_temp\(2) & !\U0|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P1_score_count_temp\(2),
	datad => VCC,
	cin => \U0|Add0~4\,
	combout => \U0|Add0~6_combout\,
	cout => \U0|Add0~7\);

-- Location: LCCOMB_X1_Y24_N12
\U0|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~9_combout\ = \U0|Add0~7\ $ (\U0|P1_score_count_temp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U0|P1_score_count_temp\(3),
	cin => \U0|Add0~7\,
	combout => \U0|Add0~9_combout\);

-- Location: LCCOMB_X28_Y4_N16
\U0|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add1~3_combout\ = (\U0|P2_score_count_temp\(1) & (!\U0|Add1~1\)) # (!\U0|P2_score_count_temp\(1) & ((\U0|Add1~1\) # (GND)))
-- \U0|Add1~4\ = CARRY((!\U0|Add1~1\) # (!\U0|P2_score_count_temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|P2_score_count_temp\(1),
	datad => VCC,
	cin => \U0|Add1~1\,
	combout => \U0|Add1~3_combout\,
	cout => \U0|Add1~4\);

-- Location: LCCOMB_X28_Y4_N18
\U0|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add1~6_combout\ = (\U0|P2_score_count_temp\(2) & (\U0|Add1~4\ $ (GND))) # (!\U0|P2_score_count_temp\(2) & (!\U0|Add1~4\ & VCC))
-- \U0|Add1~7\ = CARRY((\U0|P2_score_count_temp\(2) & !\U0|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|P2_score_count_temp\(2),
	datad => VCC,
	cin => \U0|Add1~4\,
	combout => \U0|Add1~6_combout\,
	cout => \U0|Add1~7\);

-- Location: LCCOMB_X15_Y26_N10
\vga_u0|controller|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~0_combout\ = \vga_u0|controller|yCounter\(0) $ (VCC)
-- \vga_u0|controller|Add1~1\ = CARRY(\vga_u0|controller|yCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(0),
	datad => VCC,
	combout => \vga_u0|controller|Add1~0_combout\,
	cout => \vga_u0|controller|Add1~1\);

-- Location: LCCOMB_X15_Y26_N12
\vga_u0|controller|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~2_combout\ = (\vga_u0|controller|yCounter\(1) & (!\vga_u0|controller|Add1~1\)) # (!\vga_u0|controller|yCounter\(1) & ((\vga_u0|controller|Add1~1\) # (GND)))
-- \vga_u0|controller|Add1~3\ = CARRY((!\vga_u0|controller|Add1~1\) # (!\vga_u0|controller|yCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(1),
	datad => VCC,
	cin => \vga_u0|controller|Add1~1\,
	combout => \vga_u0|controller|Add1~2_combout\,
	cout => \vga_u0|controller|Add1~3\);

-- Location: LCCOMB_X15_Y26_N14
\vga_u0|controller|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~4_combout\ = (\vga_u0|controller|yCounter\(2) & (\vga_u0|controller|Add1~3\ $ (GND))) # (!\vga_u0|controller|yCounter\(2) & (!\vga_u0|controller|Add1~3\ & VCC))
-- \vga_u0|controller|Add1~5\ = CARRY((\vga_u0|controller|yCounter\(2) & !\vga_u0|controller|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(2),
	datad => VCC,
	cin => \vga_u0|controller|Add1~3\,
	combout => \vga_u0|controller|Add1~4_combout\,
	cout => \vga_u0|controller|Add1~5\);

-- Location: LCCOMB_X15_Y26_N16
\vga_u0|controller|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~6_combout\ = (\vga_u0|controller|yCounter\(3) & (!\vga_u0|controller|Add1~5\)) # (!\vga_u0|controller|yCounter\(3) & ((\vga_u0|controller|Add1~5\) # (GND)))
-- \vga_u0|controller|Add1~7\ = CARRY((!\vga_u0|controller|Add1~5\) # (!\vga_u0|controller|yCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(3),
	datad => VCC,
	cin => \vga_u0|controller|Add1~5\,
	combout => \vga_u0|controller|Add1~6_combout\,
	cout => \vga_u0|controller|Add1~7\);

-- Location: LCCOMB_X15_Y26_N18
\vga_u0|controller|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~8_combout\ = (\vga_u0|controller|yCounter\(4) & (\vga_u0|controller|Add1~7\ $ (GND))) # (!\vga_u0|controller|yCounter\(4) & (!\vga_u0|controller|Add1~7\ & VCC))
-- \vga_u0|controller|Add1~9\ = CARRY((\vga_u0|controller|yCounter\(4) & !\vga_u0|controller|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(4),
	datad => VCC,
	cin => \vga_u0|controller|Add1~7\,
	combout => \vga_u0|controller|Add1~8_combout\,
	cout => \vga_u0|controller|Add1~9\);

-- Location: LCCOMB_X15_Y26_N20
\vga_u0|controller|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~10_combout\ = (\vga_u0|controller|yCounter\(5) & (!\vga_u0|controller|Add1~9\)) # (!\vga_u0|controller|yCounter\(5) & ((\vga_u0|controller|Add1~9\) # (GND)))
-- \vga_u0|controller|Add1~11\ = CARRY((!\vga_u0|controller|Add1~9\) # (!\vga_u0|controller|yCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(5),
	datad => VCC,
	cin => \vga_u0|controller|Add1~9\,
	combout => \vga_u0|controller|Add1~10_combout\,
	cout => \vga_u0|controller|Add1~11\);

-- Location: LCCOMB_X15_Y26_N24
\vga_u0|controller|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~14_combout\ = (\vga_u0|controller|yCounter\(7) & (!\vga_u0|controller|Add1~13\)) # (!\vga_u0|controller|yCounter\(7) & ((\vga_u0|controller|Add1~13\) # (GND)))
-- \vga_u0|controller|Add1~15\ = CARRY((!\vga_u0|controller|Add1~13\) # (!\vga_u0|controller|yCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(7),
	datad => VCC,
	cin => \vga_u0|controller|Add1~13\,
	combout => \vga_u0|controller|Add1~14_combout\,
	cout => \vga_u0|controller|Add1~15\);

-- Location: LCCOMB_X15_Y26_N26
\vga_u0|controller|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~16_combout\ = (\vga_u0|controller|yCounter\(8) & (\vga_u0|controller|Add1~15\ $ (GND))) # (!\vga_u0|controller|yCounter\(8) & (!\vga_u0|controller|Add1~15\ & VCC))
-- \vga_u0|controller|Add1~17\ = CARRY((\vga_u0|controller|yCounter\(8) & !\vga_u0|controller|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(8),
	datad => VCC,
	cin => \vga_u0|controller|Add1~15\,
	combout => \vga_u0|controller|Add1~16_combout\,
	cout => \vga_u0|controller|Add1~17\);

-- Location: LCCOMB_X28_Y24_N2
\vga_u0|user_input_translator|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~2_combout\ = (\U1|screen|y\(3) & ((\U1|screen|y\(1) & (\vga_u0|user_input_translator|Add0~1\ & VCC)) # (!\U1|screen|y\(1) & (!\vga_u0|user_input_translator|Add0~1\)))) # (!\U1|screen|y\(3) & ((\U1|screen|y\(1) & 
-- (!\vga_u0|user_input_translator|Add0~1\)) # (!\U1|screen|y\(1) & ((\vga_u0|user_input_translator|Add0~1\) # (GND)))))
-- \vga_u0|user_input_translator|Add0~3\ = CARRY((\U1|screen|y\(3) & (!\U1|screen|y\(1) & !\vga_u0|user_input_translator|Add0~1\)) # (!\U1|screen|y\(3) & ((!\vga_u0|user_input_translator|Add0~1\) # (!\U1|screen|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y\(3),
	datab => \U1|screen|y\(1),
	datad => VCC,
	cin => \vga_u0|user_input_translator|Add0~1\,
	combout => \vga_u0|user_input_translator|Add0~2_combout\,
	cout => \vga_u0|user_input_translator|Add0~3\);

-- Location: LCCOMB_X28_Y24_N4
\vga_u0|user_input_translator|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~4_combout\ = ((\U1|screen|y\(4) $ (\U1|screen|y\(2) $ (!\vga_u0|user_input_translator|Add0~3\)))) # (GND)
-- \vga_u0|user_input_translator|Add0~5\ = CARRY((\U1|screen|y\(4) & ((\U1|screen|y\(2)) # (!\vga_u0|user_input_translator|Add0~3\))) # (!\U1|screen|y\(4) & (\U1|screen|y\(2) & !\vga_u0|user_input_translator|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y\(4),
	datab => \U1|screen|y\(2),
	datad => VCC,
	cin => \vga_u0|user_input_translator|Add0~3\,
	combout => \vga_u0|user_input_translator|Add0~4_combout\,
	cout => \vga_u0|user_input_translator|Add0~5\);

-- Location: LCCOMB_X28_Y24_N10
\vga_u0|user_input_translator|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~10_combout\ = (\U1|screen|y\(5) & (!\vga_u0|user_input_translator|Add0~9\)) # (!\U1|screen|y\(5) & ((\vga_u0|user_input_translator|Add0~9\) # (GND)))
-- \vga_u0|user_input_translator|Add0~11\ = CARRY((!\vga_u0|user_input_translator|Add0~9\) # (!\U1|screen|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y\(5),
	datad => VCC,
	cin => \vga_u0|user_input_translator|Add0~9\,
	combout => \vga_u0|user_input_translator|Add0~10_combout\,
	cout => \vga_u0|user_input_translator|Add0~11\);

-- Location: LCCOMB_X16_Y26_N0
\vga_u0|controller|controller_translator|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~0_combout\ = (\vga_u0|controller|yCounter\(2) & (\vga_u0|controller|yCounter\(4) $ (VCC))) # (!\vga_u0|controller|yCounter\(2) & (\vga_u0|controller|yCounter\(4) & VCC))
-- \vga_u0|controller|controller_translator|Add0~1\ = CARRY((\vga_u0|controller|yCounter\(2) & \vga_u0|controller|yCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(2),
	datab => \vga_u0|controller|yCounter\(4),
	datad => VCC,
	combout => \vga_u0|controller|controller_translator|Add0~0_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~1\);

-- Location: LCCOMB_X16_Y26_N2
\vga_u0|controller|controller_translator|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~2_combout\ = (\vga_u0|controller|yCounter\(5) & ((\vga_u0|controller|yCounter\(3) & (\vga_u0|controller|controller_translator|Add0~1\ & VCC)) # (!\vga_u0|controller|yCounter\(3) & 
-- (!\vga_u0|controller|controller_translator|Add0~1\)))) # (!\vga_u0|controller|yCounter\(5) & ((\vga_u0|controller|yCounter\(3) & (!\vga_u0|controller|controller_translator|Add0~1\)) # (!\vga_u0|controller|yCounter\(3) & 
-- ((\vga_u0|controller|controller_translator|Add0~1\) # (GND)))))
-- \vga_u0|controller|controller_translator|Add0~3\ = CARRY((\vga_u0|controller|yCounter\(5) & (!\vga_u0|controller|yCounter\(3) & !\vga_u0|controller|controller_translator|Add0~1\)) # (!\vga_u0|controller|yCounter\(5) & 
-- ((!\vga_u0|controller|controller_translator|Add0~1\) # (!\vga_u0|controller|yCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(5),
	datab => \vga_u0|controller|yCounter\(3),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|Add0~1\,
	combout => \vga_u0|controller|controller_translator|Add0~2_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~3\);

-- Location: LCCOMB_X16_Y26_N8
\vga_u0|controller|controller_translator|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~8_combout\ = ((\vga_u0|controller|yCounter\(6) $ (\vga_u0|controller|yCounter\(8) $ (!\vga_u0|controller|controller_translator|Add0~7\)))) # (GND)
-- \vga_u0|controller|controller_translator|Add0~9\ = CARRY((\vga_u0|controller|yCounter\(6) & ((\vga_u0|controller|yCounter\(8)) # (!\vga_u0|controller|controller_translator|Add0~7\))) # (!\vga_u0|controller|yCounter\(6) & (\vga_u0|controller|yCounter\(8) & 
-- !\vga_u0|controller|controller_translator|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(6),
	datab => \vga_u0|controller|yCounter\(8),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|Add0~7\,
	combout => \vga_u0|controller|controller_translator|Add0~8_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~9\);

-- Location: LCCOMB_X16_Y26_N10
\vga_u0|controller|controller_translator|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~10_combout\ = (\vga_u0|controller|yCounter\(7) & (!\vga_u0|controller|controller_translator|Add0~9\)) # (!\vga_u0|controller|yCounter\(7) & ((\vga_u0|controller|controller_translator|Add0~9\) # (GND)))
-- \vga_u0|controller|controller_translator|Add0~11\ = CARRY((!\vga_u0|controller|controller_translator|Add0~9\) # (!\vga_u0|controller|yCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(7),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|Add0~9\,
	combout => \vga_u0|controller|controller_translator|Add0~10_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~11\);

-- Location: LCCOMB_X16_Y26_N12
\vga_u0|controller|controller_translator|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~12_combout\ = (\vga_u0|controller|yCounter\(8) & (\vga_u0|controller|controller_translator|Add0~11\ $ (GND))) # (!\vga_u0|controller|yCounter\(8) & (!\vga_u0|controller|controller_translator|Add0~11\ & VCC))
-- \vga_u0|controller|controller_translator|Add0~13\ = CARRY((\vga_u0|controller|yCounter\(8) & !\vga_u0|controller|controller_translator|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(8),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|Add0~11\,
	combout => \vga_u0|controller|controller_translator|Add0~12_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~13\);

-- Location: LCCOMB_X29_Y27_N6
\U1|screen|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add2~6_combout\ = (\U1|P2_goalie|y_coord\(4) & ((\U1|screen|Add2~5\) # (GND))) # (!\U1|P2_goalie|y_coord\(4) & (!\U1|screen|Add2~5\))
-- \U1|screen|Add2~7\ = CARRY((\U1|P2_goalie|y_coord\(4)) # (!\U1|screen|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|P2_goalie|y_coord\(4),
	datad => VCC,
	cin => \U1|screen|Add2~5\,
	combout => \U1|screen|Add2~6_combout\,
	cout => \U1|screen|Add2~7\);

-- Location: LCCOMB_X28_Y26_N2
\U1|screen|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add3~2_combout\ = (\U1|P2_forward|y_coord\(2) & ((\U1|screen|Add3~1\) # (GND))) # (!\U1|P2_forward|y_coord\(2) & (!\U1|screen|Add3~1\))
-- \U1|screen|Add3~3\ = CARRY((\U1|P2_forward|y_coord\(2)) # (!\U1|screen|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_forward|y_coord\(2),
	datad => VCC,
	cin => \U1|screen|Add3~1\,
	combout => \U1|screen|Add3~2_combout\,
	cout => \U1|screen|Add3~3\);

-- Location: LCFF_X31_Y27_N17
\U1|P1_forward|y_coord[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P1_forward|y_coord[1]~4_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P1_forward|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P1_forward|y_coord\(1));

-- Location: LCCOMB_X30_Y26_N12
\U1|screen|LessThan10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan10~1_cout\ = CARRY((!\U1|screen|y_temp0\(0) & !\U1|P1_forward|player_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(0),
	datab => \U1|P1_forward|player_y\(0),
	datad => VCC,
	cout => \U1|screen|LessThan10~1_cout\);

-- Location: LCCOMB_X30_Y26_N14
\U1|screen|LessThan10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan10~3_cout\ = CARRY((\U1|screen|y_temp0\(1) & ((\U1|P1_forward|y_coord\(1)) # (!\U1|screen|LessThan10~1_cout\))) # (!\U1|screen|y_temp0\(1) & (\U1|P1_forward|y_coord\(1) & !\U1|screen|LessThan10~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(1),
	datab => \U1|P1_forward|y_coord\(1),
	datad => VCC,
	cin => \U1|screen|LessThan10~1_cout\,
	cout => \U1|screen|LessThan10~3_cout\);

-- Location: LCCOMB_X30_Y26_N16
\U1|screen|LessThan10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan10~5_cout\ = CARRY((\U1|P1_forward|y_coord\(2) & (!\U1|screen|y_temp0\(2) & !\U1|screen|LessThan10~3_cout\)) # (!\U1|P1_forward|y_coord\(2) & ((!\U1|screen|LessThan10~3_cout\) # (!\U1|screen|y_temp0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P1_forward|y_coord\(2),
	datab => \U1|screen|y_temp0\(2),
	datad => VCC,
	cin => \U1|screen|LessThan10~3_cout\,
	cout => \U1|screen|LessThan10~5_cout\);

-- Location: LCCOMB_X30_Y26_N18
\U1|screen|LessThan10~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan10~7_cout\ = CARRY((\U1|P1_forward|player_y\(3) & (\U1|screen|y_temp0\(3) & !\U1|screen|LessThan10~5_cout\)) # (!\U1|P1_forward|player_y\(3) & ((\U1|screen|y_temp0\(3)) # (!\U1|screen|LessThan10~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P1_forward|player_y\(3),
	datab => \U1|screen|y_temp0\(3),
	datad => VCC,
	cin => \U1|screen|LessThan10~5_cout\,
	cout => \U1|screen|LessThan10~7_cout\);

-- Location: LCCOMB_X30_Y26_N20
\U1|screen|LessThan10~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan10~9_cout\ = CARRY((\U1|P1_forward|y_coord\(4) & (!\U1|screen|y_temp0\(4) & !\U1|screen|LessThan10~7_cout\)) # (!\U1|P1_forward|y_coord\(4) & ((!\U1|screen|LessThan10~7_cout\) # (!\U1|screen|y_temp0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P1_forward|y_coord\(4),
	datab => \U1|screen|y_temp0\(4),
	datad => VCC,
	cin => \U1|screen|LessThan10~7_cout\,
	cout => \U1|screen|LessThan10~9_cout\);

-- Location: LCCOMB_X30_Y26_N22
\U1|screen|LessThan10~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan10~11_cout\ = CARRY((\U1|screen|y_temp0\(5) & ((\U1|P1_forward|y_coord\(5)) # (!\U1|screen|LessThan10~9_cout\))) # (!\U1|screen|y_temp0\(5) & (\U1|P1_forward|y_coord\(5) & !\U1|screen|LessThan10~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(5),
	datab => \U1|P1_forward|y_coord\(5),
	datad => VCC,
	cin => \U1|screen|LessThan10~9_cout\,
	cout => \U1|screen|LessThan10~11_cout\);

-- Location: LCCOMB_X30_Y26_N24
\U1|screen|LessThan10~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan10~12_combout\ = (\U1|screen|y_temp0\(6) & (!\U1|screen|LessThan10~11_cout\ & \U1|P1_forward|player_y\(6))) # (!\U1|screen|y_temp0\(6) & ((\U1|P1_forward|player_y\(6)) # (!\U1|screen|LessThan10~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|screen|y_temp0\(6),
	datad => \U1|P1_forward|player_y\(6),
	cin => \U1|screen|LessThan10~11_cout\,
	combout => \U1|screen|LessThan10~12_combout\);

-- Location: LCCOMB_X30_Y27_N16
\U1|screen|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add1~0_combout\ = (\U1|P1_forward|y_coord\(1) & (!\U1|P1_forward|player_y\(0) & VCC)) # (!\U1|P1_forward|y_coord\(1) & (\U1|P1_forward|player_y\(0) $ (GND)))
-- \U1|screen|Add1~1\ = CARRY((!\U1|P1_forward|y_coord\(1) & !\U1|P1_forward|player_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P1_forward|y_coord\(1),
	datab => \U1|P1_forward|player_y\(0),
	datad => VCC,
	combout => \U1|screen|Add1~0_combout\,
	cout => \U1|screen|Add1~1\);

-- Location: LCCOMB_X30_Y27_N24
\U1|screen|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add1~8_combout\ = (\U1|P1_forward|y_coord\(5) & (!\U1|screen|Add1~7\ & VCC)) # (!\U1|P1_forward|y_coord\(5) & (\U1|screen|Add1~7\ $ (GND)))
-- \U1|screen|Add1~9\ = CARRY((!\U1|P1_forward|y_coord\(5) & !\U1|screen|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|P1_forward|y_coord\(5),
	datad => VCC,
	cin => \U1|screen|Add1~7\,
	combout => \U1|screen|Add1~8_combout\,
	cout => \U1|screen|Add1~9\);

-- Location: LCCOMB_X28_Y25_N8
\U1|screen|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add5~0_combout\ = \U1|screen|y_temp0\(0) $ (VCC)
-- \U1|screen|Add5~1\ = CARRY(\U1|screen|y_temp0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|screen|y_temp0\(0),
	datad => VCC,
	combout => \U1|screen|Add5~0_combout\,
	cout => \U1|screen|Add5~1\);

-- Location: LCCOMB_X28_Y25_N10
\U1|screen|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add5~2_combout\ = (\U1|screen|y_temp0\(1) & (!\U1|screen|Add5~1\)) # (!\U1|screen|y_temp0\(1) & ((\U1|screen|Add5~1\) # (GND)))
-- \U1|screen|Add5~3\ = CARRY((!\U1|screen|Add5~1\) # (!\U1|screen|y_temp0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|screen|y_temp0\(1),
	datad => VCC,
	cin => \U1|screen|Add5~1\,
	combout => \U1|screen|Add5~2_combout\,
	cout => \U1|screen|Add5~3\);

-- Location: LCCOMB_X28_Y25_N12
\U1|screen|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add5~4_combout\ = (\U1|screen|y_temp0\(2) & (\U1|screen|Add5~3\ $ (GND))) # (!\U1|screen|y_temp0\(2) & (!\U1|screen|Add5~3\ & VCC))
-- \U1|screen|Add5~5\ = CARRY((\U1|screen|y_temp0\(2) & !\U1|screen|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(2),
	datad => VCC,
	cin => \U1|screen|Add5~3\,
	combout => \U1|screen|Add5~4_combout\,
	cout => \U1|screen|Add5~5\);

-- Location: LCCOMB_X28_Y25_N14
\U1|screen|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add5~6_combout\ = (\U1|screen|y_temp0\(3) & (!\U1|screen|Add5~5\)) # (!\U1|screen|y_temp0\(3) & ((\U1|screen|Add5~5\) # (GND)))
-- \U1|screen|Add5~7\ = CARRY((!\U1|screen|Add5~5\) # (!\U1|screen|y_temp0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|screen|y_temp0\(3),
	datad => VCC,
	cin => \U1|screen|Add5~5\,
	combout => \U1|screen|Add5~6_combout\,
	cout => \U1|screen|Add5~7\);

-- Location: LCCOMB_X28_Y25_N16
\U1|screen|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add5~8_combout\ = (\U1|screen|y_temp0\(4) & (\U1|screen|Add5~7\ $ (GND))) # (!\U1|screen|y_temp0\(4) & (!\U1|screen|Add5~7\ & VCC))
-- \U1|screen|Add5~9\ = CARRY((\U1|screen|y_temp0\(4) & !\U1|screen|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|screen|y_temp0\(4),
	datad => VCC,
	cin => \U1|screen|Add5~7\,
	combout => \U1|screen|Add5~8_combout\,
	cout => \U1|screen|Add5~9\);

-- Location: LCCOMB_X28_Y25_N18
\U1|screen|Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add5~10_combout\ = (\U1|screen|y_temp0\(5) & (!\U1|screen|Add5~9\)) # (!\U1|screen|y_temp0\(5) & ((\U1|screen|Add5~9\) # (GND)))
-- \U1|screen|Add5~11\ = CARRY((!\U1|screen|Add5~9\) # (!\U1|screen|y_temp0\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(5),
	datad => VCC,
	cin => \U1|screen|Add5~9\,
	combout => \U1|screen|Add5~10_combout\,
	cout => \U1|screen|Add5~11\);

-- Location: LCCOMB_X28_Y25_N20
\U1|screen|Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add5~12_combout\ = \U1|screen|y_temp0\(6) $ (!\U1|screen|Add5~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(6),
	cin => \U1|screen|Add5~11\,
	combout => \U1|screen|Add5~12_combout\);

-- Location: LCCOMB_X31_Y27_N16
\U1|P1_forward|y_coord[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P1_forward|y_coord[1]~4_combout\ = ((\U1|P1_forward|y_coord\(1) $ (\U1|P1_forward|player_y[6]~3_combout\ $ (!\U1|P1_forward|player_y[0]~5\)))) # (GND)
-- \U1|P1_forward|y_coord[1]~5\ = CARRY((\U1|P1_forward|y_coord\(1) & ((\U1|P1_forward|player_y[6]~3_combout\) # (!\U1|P1_forward|player_y[0]~5\))) # (!\U1|P1_forward|y_coord\(1) & (\U1|P1_forward|player_y[6]~3_combout\ & !\U1|P1_forward|player_y[0]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P1_forward|y_coord\(1),
	datab => \U1|P1_forward|player_y[6]~3_combout\,
	datad => VCC,
	cin => \U1|P1_forward|player_y[0]~5\,
	combout => \U1|P1_forward|y_coord[1]~4_combout\,
	cout => \U1|P1_forward|y_coord[1]~5\);

-- Location: LCFF_X37_Y27_N17
\U1|DiffClock|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[4]~32_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(4));

-- Location: LCFF_X37_Y27_N21
\U1|DiffClock|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[6]~36_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(6));

-- Location: LCFF_X37_Y27_N11
\U1|DiffClock|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[1]~26_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(1));

-- Location: LCFF_X37_Y26_N23
\U1|DiffClock|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[23]~71_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(23));

-- Location: LCCOMB_X31_Y25_N10
\U1|Collision|Add7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add7~10_combout\ = (\U1|P1_forward|y_coord\(5) & ((\SW~combout\(16) & (!\U1|Collision|Add7~9\)) # (!\SW~combout\(16) & ((\U1|Collision|Add7~9\) # (GND))))) # (!\U1|P1_forward|y_coord\(5) & ((\SW~combout\(16) & (\U1|Collision|Add7~9\ & VCC)) 
-- # (!\SW~combout\(16) & (!\U1|Collision|Add7~9\))))
-- \U1|Collision|Add7~11\ = CARRY((\U1|P1_forward|y_coord\(5) & ((!\U1|Collision|Add7~9\) # (!\SW~combout\(16)))) # (!\U1|P1_forward|y_coord\(5) & (!\SW~combout\(16) & !\U1|Collision|Add7~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P1_forward|y_coord\(5),
	datab => \SW~combout\(16),
	datad => VCC,
	cin => \U1|Collision|Add7~9\,
	combout => \U1|Collision|Add7~10_combout\,
	cout => \U1|Collision|Add7~11\);

-- Location: LCCOMB_X34_Y25_N10
\U1|Collision|Add13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add13~6_combout\ = (\U1|Collision|Add7~8_combout\ & (!\U1|Collision|Add13~5\)) # (!\U1|Collision|Add7~8_combout\ & ((\U1|Collision|Add13~5\) # (GND)))
-- \U1|Collision|Add13~7\ = CARRY((!\U1|Collision|Add13~5\) # (!\U1|Collision|Add7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|Add7~8_combout\,
	datad => VCC,
	cin => \U1|Collision|Add13~5\,
	combout => \U1|Collision|Add13~6_combout\,
	cout => \U1|Collision|Add13~7\);

-- Location: LCCOMB_X32_Y25_N20
\U1|Collision|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add5~2_combout\ = (\SW~combout\(17) & ((\U1|Pl_goalie|y_coord\(1) & (!\U1|Collision|Add5~1_cout\)) # (!\U1|Pl_goalie|y_coord\(1) & (\U1|Collision|Add5~1_cout\ & VCC)))) # (!\SW~combout\(17) & ((\U1|Pl_goalie|y_coord\(1) & 
-- ((\U1|Collision|Add5~1_cout\) # (GND))) # (!\U1|Pl_goalie|y_coord\(1) & (!\U1|Collision|Add5~1_cout\))))
-- \U1|Collision|Add5~3\ = CARRY((\SW~combout\(17) & (\U1|Pl_goalie|y_coord\(1) & !\U1|Collision|Add5~1_cout\)) # (!\SW~combout\(17) & ((\U1|Pl_goalie|y_coord\(1)) # (!\U1|Collision|Add5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datab => \U1|Pl_goalie|y_coord\(1),
	datad => VCC,
	cin => \U1|Collision|Add5~1_cout\,
	combout => \U1|Collision|Add5~2_combout\,
	cout => \U1|Collision|Add5~3\);

-- Location: LCCOMB_X32_Y25_N28
\U1|Collision|Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add5~10_combout\ = (\SW~combout\(17) & ((\U1|Pl_goalie|y_coord\(5) & (!\U1|Collision|Add5~9\)) # (!\U1|Pl_goalie|y_coord\(5) & (\U1|Collision|Add5~9\ & VCC)))) # (!\SW~combout\(17) & ((\U1|Pl_goalie|y_coord\(5) & ((\U1|Collision|Add5~9\) # 
-- (GND))) # (!\U1|Pl_goalie|y_coord\(5) & (!\U1|Collision|Add5~9\))))
-- \U1|Collision|Add5~11\ = CARRY((\SW~combout\(17) & (\U1|Pl_goalie|y_coord\(5) & !\U1|Collision|Add5~9\)) # (!\SW~combout\(17) & ((\U1|Pl_goalie|y_coord\(5)) # (!\U1|Collision|Add5~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datab => \U1|Pl_goalie|y_coord\(5),
	datad => VCC,
	cin => \U1|Collision|Add5~9\,
	combout => \U1|Collision|Add5~10_combout\,
	cout => \U1|Collision|Add5~11\);

-- Location: LCCOMB_X32_Y25_N30
\U1|Collision|Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add5~12_combout\ = \SW~combout\(17) $ (\U1|Collision|Add5~11\ $ (!\U1|Pl_goalie|player_y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datad => \U1|Pl_goalie|player_y\(6),
	cin => \U1|Collision|Add5~11\,
	combout => \U1|Collision|Add5~12_combout\);

-- Location: LCCOMB_X33_Y25_N20
\U1|Collision|Add12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add12~0_combout\ = (\U1|Collision|Add5~2_combout\ & (\U1|Pl_goalie|player_y\(0) $ (VCC))) # (!\U1|Collision|Add5~2_combout\ & (\U1|Pl_goalie|player_y\(0) & VCC))
-- \U1|Collision|Add12~1\ = CARRY((\U1|Collision|Add5~2_combout\ & \U1|Pl_goalie|player_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add5~2_combout\,
	datab => \U1|Pl_goalie|player_y\(0),
	datad => VCC,
	combout => \U1|Collision|Add12~0_combout\,
	cout => \U1|Collision|Add12~1\);

-- Location: LCCOMB_X33_Y25_N24
\U1|Collision|Add12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add12~4_combout\ = (\U1|Collision|Add5~6_combout\ & ((GND) # (!\U1|Collision|Add12~3\))) # (!\U1|Collision|Add5~6_combout\ & (\U1|Collision|Add12~3\ $ (GND)))
-- \U1|Collision|Add12~5\ = CARRY((\U1|Collision|Add5~6_combout\) # (!\U1|Collision|Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|Add5~6_combout\,
	datad => VCC,
	cin => \U1|Collision|Add12~3\,
	combout => \U1|Collision|Add12~4_combout\,
	cout => \U1|Collision|Add12~5\);

-- Location: LCCOMB_X33_Y25_N26
\U1|Collision|Add12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add12~6_combout\ = (\U1|Collision|Add5~8_combout\ & (!\U1|Collision|Add12~5\)) # (!\U1|Collision|Add5~8_combout\ & ((\U1|Collision|Add12~5\) # (GND)))
-- \U1|Collision|Add12~7\ = CARRY((!\U1|Collision|Add12~5\) # (!\U1|Collision|Add5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|Add5~8_combout\,
	datad => VCC,
	cin => \U1|Collision|Add12~5\,
	combout => \U1|Collision|Add12~6_combout\,
	cout => \U1|Collision|Add12~7\);

-- Location: LCCOMB_X33_Y25_N28
\U1|Collision|Add12~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add12~8_combout\ = (\U1|Collision|Add5~10_combout\ & (\U1|Collision|Add12~7\ $ (GND))) # (!\U1|Collision|Add5~10_combout\ & (!\U1|Collision|Add12~7\ & VCC))
-- \U1|Collision|Add12~9\ = CARRY((\U1|Collision|Add5~10_combout\ & !\U1|Collision|Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|Add5~10_combout\,
	datad => VCC,
	cin => \U1|Collision|Add12~7\,
	combout => \U1|Collision|Add12~8_combout\,
	cout => \U1|Collision|Add12~9\);

-- Location: LCCOMB_X32_Y25_N2
\U1|Collision|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan0~1_cout\ = CARRY((!\U1|Puck_Movement|puck_x_coord\(0) & \U1|Pl_goalie|player_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord\(0),
	datab => \U1|Pl_goalie|player_y\(0),
	datad => VCC,
	cout => \U1|Collision|LessThan0~1_cout\);

-- Location: LCCOMB_X32_Y25_N4
\U1|Collision|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan0~3_cout\ = CARRY((\U1|Collision|Add5~2_combout\ & (\U1|Puck_Movement|puck_y_coord\(1) & !\U1|Collision|LessThan0~1_cout\)) # (!\U1|Collision|Add5~2_combout\ & ((\U1|Puck_Movement|puck_y_coord\(1)) # 
-- (!\U1|Collision|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add5~2_combout\,
	datab => \U1|Puck_Movement|puck_y_coord\(1),
	datad => VCC,
	cin => \U1|Collision|LessThan0~1_cout\,
	cout => \U1|Collision|LessThan0~3_cout\);

-- Location: LCCOMB_X32_Y25_N6
\U1|Collision|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan0~5_cout\ = CARRY((\U1|Puck_Movement|puck_y_coord_temp\(2) & ((\U1|Collision|Add5~4_combout\) # (!\U1|Collision|LessThan0~3_cout\))) # (!\U1|Puck_Movement|puck_y_coord_temp\(2) & (\U1|Collision|Add5~4_combout\ & 
-- !\U1|Collision|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord_temp\(2),
	datab => \U1|Collision|Add5~4_combout\,
	datad => VCC,
	cin => \U1|Collision|LessThan0~3_cout\,
	cout => \U1|Collision|LessThan0~5_cout\);

-- Location: LCCOMB_X32_Y25_N8
\U1|Collision|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan0~7_cout\ = CARRY((\U1|Collision|Add5~6_combout\ & (!\U1|Puck_Movement|puck_y_coord_temp\(3) & !\U1|Collision|LessThan0~5_cout\)) # (!\U1|Collision|Add5~6_combout\ & ((!\U1|Collision|LessThan0~5_cout\) # 
-- (!\U1|Puck_Movement|puck_y_coord_temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add5~6_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(3),
	datad => VCC,
	cin => \U1|Collision|LessThan0~5_cout\,
	cout => \U1|Collision|LessThan0~7_cout\);

-- Location: LCCOMB_X32_Y25_N10
\U1|Collision|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan0~9_cout\ = CARRY((\U1|Puck_Movement|puck_y_coord_temp\(4) & ((\U1|Collision|Add5~8_combout\) # (!\U1|Collision|LessThan0~7_cout\))) # (!\U1|Puck_Movement|puck_y_coord_temp\(4) & (\U1|Collision|Add5~8_combout\ & 
-- !\U1|Collision|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord_temp\(4),
	datab => \U1|Collision|Add5~8_combout\,
	datad => VCC,
	cin => \U1|Collision|LessThan0~7_cout\,
	cout => \U1|Collision|LessThan0~9_cout\);

-- Location: LCCOMB_X32_Y25_N12
\U1|Collision|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan0~11_cout\ = CARRY((\U1|Puck_Movement|puck_y_coord_temp\(5) & (!\U1|Collision|Add5~10_combout\ & !\U1|Collision|LessThan0~9_cout\)) # (!\U1|Puck_Movement|puck_y_coord_temp\(5) & ((!\U1|Collision|LessThan0~9_cout\) # 
-- (!\U1|Collision|Add5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord_temp\(5),
	datab => \U1|Collision|Add5~10_combout\,
	datad => VCC,
	cin => \U1|Collision|LessThan0~9_cout\,
	cout => \U1|Collision|LessThan0~11_cout\);

-- Location: LCCOMB_X32_Y25_N14
\U1|Collision|LessThan0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan0~12_combout\ = (\U1|Collision|Add5~12_combout\ & ((!\U1|Puck_Movement|puck_y_coord\(6)) # (!\U1|Collision|LessThan0~11_cout\))) # (!\U1|Collision|Add5~12_combout\ & (!\U1|Collision|LessThan0~11_cout\ & 
-- !\U1|Puck_Movement|puck_y_coord\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|Add5~12_combout\,
	datad => \U1|Puck_Movement|puck_y_coord\(6),
	cin => \U1|Collision|LessThan0~11_cout\,
	combout => \U1|Collision|LessThan0~12_combout\);

-- Location: LCCOMB_X32_Y27_N20
\U1|Collision|Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add9~2_combout\ = (\SW~combout\(0) & ((\U1|P2_goalie|y_coord\(1) & (!\U1|Collision|Add9~1_cout\)) # (!\U1|P2_goalie|y_coord\(1) & (\U1|Collision|Add9~1_cout\ & VCC)))) # (!\SW~combout\(0) & ((\U1|P2_goalie|y_coord\(1) & 
-- ((\U1|Collision|Add9~1_cout\) # (GND))) # (!\U1|P2_goalie|y_coord\(1) & (!\U1|Collision|Add9~1_cout\))))
-- \U1|Collision|Add9~3\ = CARRY((\SW~combout\(0) & (\U1|P2_goalie|y_coord\(1) & !\U1|Collision|Add9~1_cout\)) # (!\SW~combout\(0) & ((\U1|P2_goalie|y_coord\(1)) # (!\U1|Collision|Add9~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \U1|P2_goalie|y_coord\(1),
	datad => VCC,
	cin => \U1|Collision|Add9~1_cout\,
	combout => \U1|Collision|Add9~2_combout\,
	cout => \U1|Collision|Add9~3\);

-- Location: LCCOMB_X32_Y27_N28
\U1|Collision|Add9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add9~10_combout\ = (\SW~combout\(0) & ((\U1|P2_goalie|y_coord\(5) & (!\U1|Collision|Add9~9\)) # (!\U1|P2_goalie|y_coord\(5) & (\U1|Collision|Add9~9\ & VCC)))) # (!\SW~combout\(0) & ((\U1|P2_goalie|y_coord\(5) & ((\U1|Collision|Add9~9\) # 
-- (GND))) # (!\U1|P2_goalie|y_coord\(5) & (!\U1|Collision|Add9~9\))))
-- \U1|Collision|Add9~11\ = CARRY((\SW~combout\(0) & (\U1|P2_goalie|y_coord\(5) & !\U1|Collision|Add9~9\)) # (!\SW~combout\(0) & ((\U1|P2_goalie|y_coord\(5)) # (!\U1|Collision|Add9~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \U1|P2_goalie|y_coord\(5),
	datad => VCC,
	cin => \U1|Collision|Add9~9\,
	combout => \U1|Collision|Add9~10_combout\,
	cout => \U1|Collision|Add9~11\);

-- Location: LCCOMB_X32_Y27_N30
\U1|Collision|Add9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add9~12_combout\ = \SW~combout\(0) $ (\U1|P2_goalie|player_y\(6) $ (!\U1|Collision|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \U1|P2_goalie|player_y\(6),
	cin => \U1|Collision|Add9~11\,
	combout => \U1|Collision|Add9~12_combout\);

-- Location: LCCOMB_X32_Y27_N2
\U1|Collision|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan4~1_cout\ = CARRY((!\U1|Puck_Movement|puck_x_coord\(0) & \U1|P2_goalie|player_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord\(0),
	datab => \U1|P2_goalie|player_y\(0),
	datad => VCC,
	cout => \U1|Collision|LessThan4~1_cout\);

-- Location: LCCOMB_X32_Y27_N4
\U1|Collision|LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan4~3_cout\ = CARRY((\U1|Collision|Add9~2_combout\ & (\U1|Puck_Movement|puck_y_coord\(1) & !\U1|Collision|LessThan4~1_cout\)) # (!\U1|Collision|Add9~2_combout\ & ((\U1|Puck_Movement|puck_y_coord\(1)) # 
-- (!\U1|Collision|LessThan4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add9~2_combout\,
	datab => \U1|Puck_Movement|puck_y_coord\(1),
	datad => VCC,
	cin => \U1|Collision|LessThan4~1_cout\,
	cout => \U1|Collision|LessThan4~3_cout\);

-- Location: LCCOMB_X32_Y27_N6
\U1|Collision|LessThan4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan4~5_cout\ = CARRY((\U1|Collision|Add9~4_combout\ & ((\U1|Puck_Movement|puck_y_coord_temp\(2)) # (!\U1|Collision|LessThan4~3_cout\))) # (!\U1|Collision|Add9~4_combout\ & (\U1|Puck_Movement|puck_y_coord_temp\(2) & 
-- !\U1|Collision|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add9~4_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(2),
	datad => VCC,
	cin => \U1|Collision|LessThan4~3_cout\,
	cout => \U1|Collision|LessThan4~5_cout\);

-- Location: LCCOMB_X32_Y27_N8
\U1|Collision|LessThan4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan4~7_cout\ = CARRY((\U1|Collision|Add9~6_combout\ & (!\U1|Puck_Movement|puck_y_coord_temp\(3) & !\U1|Collision|LessThan4~5_cout\)) # (!\U1|Collision|Add9~6_combout\ & ((!\U1|Collision|LessThan4~5_cout\) # 
-- (!\U1|Puck_Movement|puck_y_coord_temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add9~6_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(3),
	datad => VCC,
	cin => \U1|Collision|LessThan4~5_cout\,
	cout => \U1|Collision|LessThan4~7_cout\);

-- Location: LCCOMB_X32_Y27_N10
\U1|Collision|LessThan4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan4~9_cout\ = CARRY((\U1|Collision|Add9~8_combout\ & ((\U1|Puck_Movement|puck_y_coord_temp\(4)) # (!\U1|Collision|LessThan4~7_cout\))) # (!\U1|Collision|Add9~8_combout\ & (\U1|Puck_Movement|puck_y_coord_temp\(4) & 
-- !\U1|Collision|LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add9~8_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(4),
	datad => VCC,
	cin => \U1|Collision|LessThan4~7_cout\,
	cout => \U1|Collision|LessThan4~9_cout\);

-- Location: LCCOMB_X32_Y27_N12
\U1|Collision|LessThan4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan4~11_cout\ = CARRY((\U1|Collision|Add9~10_combout\ & (!\U1|Puck_Movement|puck_y_coord_temp\(5) & !\U1|Collision|LessThan4~9_cout\)) # (!\U1|Collision|Add9~10_combout\ & ((!\U1|Collision|LessThan4~9_cout\) # 
-- (!\U1|Puck_Movement|puck_y_coord_temp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add9~10_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(5),
	datad => VCC,
	cin => \U1|Collision|LessThan4~9_cout\,
	cout => \U1|Collision|LessThan4~11_cout\);

-- Location: LCCOMB_X32_Y27_N14
\U1|Collision|LessThan4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan4~12_combout\ = (\U1|Puck_Movement|puck_y_coord\(6) & (\U1|Collision|Add9~12_combout\ & !\U1|Collision|LessThan4~11_cout\)) # (!\U1|Puck_Movement|puck_y_coord\(6) & ((\U1|Collision|Add9~12_combout\) # 
-- (!\U1|Collision|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord\(6),
	datab => \U1|Collision|Add9~12_combout\,
	cin => \U1|Collision|LessThan4~11_cout\,
	combout => \U1|Collision|LessThan4~12_combout\);

-- Location: LCCOMB_X33_Y27_N16
\U1|Collision|Add14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add14~0_combout\ = (\U1|Collision|Add9~2_combout\ & (\U1|P2_goalie|player_y\(0) $ (VCC))) # (!\U1|Collision|Add9~2_combout\ & (\U1|P2_goalie|player_y\(0) & VCC))
-- \U1|Collision|Add14~1\ = CARRY((\U1|Collision|Add9~2_combout\ & \U1|P2_goalie|player_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add9~2_combout\,
	datab => \U1|P2_goalie|player_y\(0),
	datad => VCC,
	combout => \U1|Collision|Add14~0_combout\,
	cout => \U1|Collision|Add14~1\);

-- Location: LCCOMB_X33_Y27_N20
\U1|Collision|Add14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add14~4_combout\ = (\U1|Collision|Add9~6_combout\ & ((GND) # (!\U1|Collision|Add14~3\))) # (!\U1|Collision|Add9~6_combout\ & (\U1|Collision|Add14~3\ $ (GND)))
-- \U1|Collision|Add14~5\ = CARRY((\U1|Collision|Add9~6_combout\) # (!\U1|Collision|Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|Add9~6_combout\,
	datad => VCC,
	cin => \U1|Collision|Add14~3\,
	combout => \U1|Collision|Add14~4_combout\,
	cout => \U1|Collision|Add14~5\);

-- Location: LCCOMB_X33_Y27_N22
\U1|Collision|Add14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add14~6_combout\ = (\U1|Collision|Add9~8_combout\ & (!\U1|Collision|Add14~5\)) # (!\U1|Collision|Add9~8_combout\ & ((\U1|Collision|Add14~5\) # (GND)))
-- \U1|Collision|Add14~7\ = CARRY((!\U1|Collision|Add14~5\) # (!\U1|Collision|Add9~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|Add9~8_combout\,
	datad => VCC,
	cin => \U1|Collision|Add14~5\,
	combout => \U1|Collision|Add14~6_combout\,
	cout => \U1|Collision|Add14~7\);

-- Location: LCCOMB_X33_Y27_N24
\U1|Collision|Add14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add14~8_combout\ = (\U1|Collision|Add9~10_combout\ & (\U1|Collision|Add14~7\ $ (GND))) # (!\U1|Collision|Add9~10_combout\ & (!\U1|Collision|Add14~7\ & VCC))
-- \U1|Collision|Add14~9\ = CARRY((\U1|Collision|Add9~10_combout\ & !\U1|Collision|Add14~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|Add9~10_combout\,
	datad => VCC,
	cin => \U1|Collision|Add14~7\,
	combout => \U1|Collision|Add14~8_combout\,
	cout => \U1|Collision|Add14~9\);

-- Location: LCCOMB_X31_Y26_N6
\U1|Collision|Add11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add11~6_combout\ = (\SW~combout\(1) & ((\U1|P2_forward|player_y\(3) & (\U1|Collision|Add11~5\ & VCC)) # (!\U1|P2_forward|player_y\(3) & (!\U1|Collision|Add11~5\)))) # (!\SW~combout\(1) & ((\U1|P2_forward|player_y\(3) & 
-- (!\U1|Collision|Add11~5\)) # (!\U1|P2_forward|player_y\(3) & ((\U1|Collision|Add11~5\) # (GND)))))
-- \U1|Collision|Add11~7\ = CARRY((\SW~combout\(1) & (!\U1|P2_forward|player_y\(3) & !\U1|Collision|Add11~5\)) # (!\SW~combout\(1) & ((!\U1|Collision|Add11~5\) # (!\U1|P2_forward|player_y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \U1|P2_forward|player_y\(3),
	datad => VCC,
	cin => \U1|Collision|Add11~5\,
	combout => \U1|Collision|Add11~6_combout\,
	cout => \U1|Collision|Add11~7\);

-- Location: LCCOMB_X32_Y26_N16
\U1|Collision|Add15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add15~0_combout\ = (\U1|Collision|Add11~2_combout\ & (\U1|P2_forward|player_y\(0) $ (VCC))) # (!\U1|Collision|Add11~2_combout\ & (\U1|P2_forward|player_y\(0) & VCC))
-- \U1|Collision|Add15~1\ = CARRY((\U1|Collision|Add11~2_combout\ & \U1|P2_forward|player_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add11~2_combout\,
	datab => \U1|P2_forward|player_y\(0),
	datad => VCC,
	combout => \U1|Collision|Add15~0_combout\,
	cout => \U1|Collision|Add15~1\);

-- Location: LCCOMB_X32_Y26_N18
\U1|Collision|Add15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add15~2_combout\ = (\U1|Collision|Add11~4_combout\ & (!\U1|Collision|Add15~1\)) # (!\U1|Collision|Add11~4_combout\ & ((\U1|Collision|Add15~1\) # (GND)))
-- \U1|Collision|Add15~3\ = CARRY((!\U1|Collision|Add15~1\) # (!\U1|Collision|Add11~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|Add11~4_combout\,
	datad => VCC,
	cin => \U1|Collision|Add15~1\,
	combout => \U1|Collision|Add15~2_combout\,
	cout => \U1|Collision|Add15~3\);

-- Location: LCCOMB_X32_Y26_N20
\U1|Collision|Add15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add15~4_combout\ = (\U1|Collision|Add11~6_combout\ & ((GND) # (!\U1|Collision|Add15~3\))) # (!\U1|Collision|Add11~6_combout\ & (\U1|Collision|Add15~3\ $ (GND)))
-- \U1|Collision|Add15~5\ = CARRY((\U1|Collision|Add11~6_combout\) # (!\U1|Collision|Add15~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|Add11~6_combout\,
	datad => VCC,
	cin => \U1|Collision|Add15~3\,
	combout => \U1|Collision|Add15~4_combout\,
	cout => \U1|Collision|Add15~5\);

-- Location: LCCOMB_X32_Y26_N22
\U1|Collision|Add15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add15~6_combout\ = (\U1|Collision|Add11~8_combout\ & (!\U1|Collision|Add15~5\)) # (!\U1|Collision|Add11~8_combout\ & ((\U1|Collision|Add15~5\) # (GND)))
-- \U1|Collision|Add15~7\ = CARRY((!\U1|Collision|Add15~5\) # (!\U1|Collision|Add11~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add11~8_combout\,
	datad => VCC,
	cin => \U1|Collision|Add15~5\,
	combout => \U1|Collision|Add15~6_combout\,
	cout => \U1|Collision|Add15~7\);

-- Location: LCCOMB_X32_Y26_N24
\U1|Collision|Add15~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add15~8_combout\ = (\U1|Collision|Add11~10_combout\ & (\U1|Collision|Add15~7\ $ (GND))) # (!\U1|Collision|Add11~10_combout\ & (!\U1|Collision|Add15~7\ & VCC))
-- \U1|Collision|Add15~9\ = CARRY((\U1|Collision|Add11~10_combout\ & !\U1|Collision|Add15~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add11~10_combout\,
	datad => VCC,
	cin => \U1|Collision|Add15~7\,
	combout => \U1|Collision|Add15~8_combout\,
	cout => \U1|Collision|Add15~9\);

-- Location: LCCOMB_X32_Y26_N26
\U1|Collision|Add15~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add15~10_combout\ = \U1|Collision|Add15~9\ $ (\U1|Collision|Add11~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|Collision|Add11~12_combout\,
	cin => \U1|Collision|Add15~9\,
	combout => \U1|Collision|Add15~10_combout\);

-- Location: LCCOMB_X32_Y26_N0
\U1|Collision|LessThan7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan7~1_cout\ = CARRY((\U1|Puck_Movement|puck_x_coord\(0) & \U1|P2_forward|player_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord\(0),
	datab => \U1|P2_forward|player_y\(0),
	datad => VCC,
	cout => \U1|Collision|LessThan7~1_cout\);

-- Location: LCCOMB_X32_Y26_N2
\U1|Collision|LessThan7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan7~3_cout\ = CARRY((\U1|Collision|Add15~0_combout\ & ((!\U1|Collision|LessThan7~1_cout\) # (!\U1|Puck_Movement|puck_y_coord\(1)))) # (!\U1|Collision|Add15~0_combout\ & (!\U1|Puck_Movement|puck_y_coord\(1) & 
-- !\U1|Collision|LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add15~0_combout\,
	datab => \U1|Puck_Movement|puck_y_coord\(1),
	datad => VCC,
	cin => \U1|Collision|LessThan7~1_cout\,
	cout => \U1|Collision|LessThan7~3_cout\);

-- Location: LCCOMB_X32_Y26_N4
\U1|Collision|LessThan7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan7~5_cout\ = CARRY((\U1|Puck_Movement|puck_y_coord_temp\(2) & (!\U1|Collision|Add15~2_combout\ & !\U1|Collision|LessThan7~3_cout\)) # (!\U1|Puck_Movement|puck_y_coord_temp\(2) & ((!\U1|Collision|LessThan7~3_cout\) # 
-- (!\U1|Collision|Add15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord_temp\(2),
	datab => \U1|Collision|Add15~2_combout\,
	datad => VCC,
	cin => \U1|Collision|LessThan7~3_cout\,
	cout => \U1|Collision|LessThan7~5_cout\);

-- Location: LCCOMB_X32_Y26_N6
\U1|Collision|LessThan7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan7~7_cout\ = CARRY((\U1|Collision|Add15~4_combout\ & ((\U1|Puck_Movement|puck_y_coord_temp\(3)) # (!\U1|Collision|LessThan7~5_cout\))) # (!\U1|Collision|Add15~4_combout\ & (\U1|Puck_Movement|puck_y_coord_temp\(3) & 
-- !\U1|Collision|LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add15~4_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(3),
	datad => VCC,
	cin => \U1|Collision|LessThan7~5_cout\,
	cout => \U1|Collision|LessThan7~7_cout\);

-- Location: LCCOMB_X32_Y26_N8
\U1|Collision|LessThan7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan7~9_cout\ = CARRY((\U1|Collision|Add15~6_combout\ & (!\U1|Puck_Movement|puck_y_coord_temp\(4) & !\U1|Collision|LessThan7~7_cout\)) # (!\U1|Collision|Add15~6_combout\ & ((!\U1|Collision|LessThan7~7_cout\) # 
-- (!\U1|Puck_Movement|puck_y_coord_temp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add15~6_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(4),
	datad => VCC,
	cin => \U1|Collision|LessThan7~7_cout\,
	cout => \U1|Collision|LessThan7~9_cout\);

-- Location: LCCOMB_X32_Y26_N10
\U1|Collision|LessThan7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan7~11_cout\ = CARRY((\U1|Collision|Add15~8_combout\ & ((\U1|Puck_Movement|puck_y_coord_temp\(5)) # (!\U1|Collision|LessThan7~9_cout\))) # (!\U1|Collision|Add15~8_combout\ & (\U1|Puck_Movement|puck_y_coord_temp\(5) & 
-- !\U1|Collision|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add15~8_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(5),
	datad => VCC,
	cin => \U1|Collision|LessThan7~9_cout\,
	cout => \U1|Collision|LessThan7~11_cout\);

-- Location: LCCOMB_X32_Y26_N12
\U1|Collision|LessThan7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan7~12_combout\ = (\U1|Collision|Add15~10_combout\ & (!\U1|Collision|LessThan7~11_cout\ & \U1|Puck_Movement|puck_y_coord\(6))) # (!\U1|Collision|Add15~10_combout\ & ((\U1|Puck_Movement|puck_y_coord\(6)) # 
-- (!\U1|Collision|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|Add15~10_combout\,
	datad => \U1|Puck_Movement|puck_y_coord\(6),
	cin => \U1|Collision|LessThan7~11_cout\,
	combout => \U1|Collision|LessThan7~12_combout\);

-- Location: LCCOMB_X37_Y27_N10
\U1|DiffClock|count[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[1]~26_combout\ = (\U1|DiffClock|count\(1) & (!\U1|DiffClock|count[0]~25\)) # (!\U1|DiffClock|count\(1) & ((\U1|DiffClock|count[0]~25\) # (GND)))
-- \U1|DiffClock|count[1]~27\ = CARRY((!\U1|DiffClock|count[0]~25\) # (!\U1|DiffClock|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(1),
	datad => VCC,
	cin => \U1|DiffClock|count[0]~25\,
	combout => \U1|DiffClock|count[1]~26_combout\,
	cout => \U1|DiffClock|count[1]~27\);

-- Location: LCCOMB_X37_Y27_N16
\U1|DiffClock|count[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[4]~32_combout\ = (\U1|DiffClock|count\(4) & (\U1|DiffClock|count[3]~31\ $ (GND))) # (!\U1|DiffClock|count\(4) & (!\U1|DiffClock|count[3]~31\ & VCC))
-- \U1|DiffClock|count[4]~33\ = CARRY((\U1|DiffClock|count\(4) & !\U1|DiffClock|count[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(4),
	datad => VCC,
	cin => \U1|DiffClock|count[3]~31\,
	combout => \U1|DiffClock|count[4]~32_combout\,
	cout => \U1|DiffClock|count[4]~33\);

-- Location: LCCOMB_X37_Y27_N20
\U1|DiffClock|count[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[6]~36_combout\ = (\U1|DiffClock|count\(6) & (\U1|DiffClock|count[5]~35\ $ (GND))) # (!\U1|DiffClock|count\(6) & (!\U1|DiffClock|count[5]~35\ & VCC))
-- \U1|DiffClock|count[6]~37\ = CARRY((\U1|DiffClock|count\(6) & !\U1|DiffClock|count[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(6),
	datad => VCC,
	cin => \U1|DiffClock|count[5]~35\,
	combout => \U1|DiffClock|count[6]~36_combout\,
	cout => \U1|DiffClock|count[6]~37\);

-- Location: LCCOMB_X35_Y27_N12
\U1|DiffClock|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~2_combout\ = (\U1|DiffClock|count_to\(3) & (\U1|DiffClock|Add1~1_cout\ & VCC)) # (!\U1|DiffClock|count_to\(3) & (!\U1|DiffClock|Add1~1_cout\))
-- \U1|DiffClock|Add1~3\ = CARRY((!\U1|DiffClock|count_to\(3) & !\U1|DiffClock|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(3),
	datad => VCC,
	cin => \U1|DiffClock|Add1~1_cout\,
	combout => \U1|DiffClock|Add1~2_combout\,
	cout => \U1|DiffClock|Add1~3\);

-- Location: LCCOMB_X35_Y27_N16
\U1|DiffClock|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~6_combout\ = (\U1|DiffClock|count_to\(5) & (\U1|DiffClock|Add1~5\ & VCC)) # (!\U1|DiffClock|count_to\(5) & (!\U1|DiffClock|Add1~5\))
-- \U1|DiffClock|Add1~7\ = CARRY((!\U1|DiffClock|count_to\(5) & !\U1|DiffClock|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(5),
	datad => VCC,
	cin => \U1|DiffClock|Add1~5\,
	combout => \U1|DiffClock|Add1~6_combout\,
	cout => \U1|DiffClock|Add1~7\);

-- Location: LCCOMB_X35_Y26_N16
\U1|DiffClock|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~38_combout\ = (\U1|DiffClock|count_to\(21) & (\U1|DiffClock|Add1~37\ & VCC)) # (!\U1|DiffClock|count_to\(21) & (!\U1|DiffClock|Add1~37\))
-- \U1|DiffClock|Add1~39\ = CARRY((!\U1|DiffClock|count_to\(21) & !\U1|DiffClock|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(21),
	datad => VCC,
	cin => \U1|DiffClock|Add1~37\,
	combout => \U1|DiffClock|Add1~38_combout\,
	cout => \U1|DiffClock|Add1~39\);

-- Location: LCCOMB_X37_Y26_N20
\U1|DiffClock|count[22]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[22]~69_combout\ = (\U1|DiffClock|count\(22) & (\U1|DiffClock|count[21]~68\ $ (GND))) # (!\U1|DiffClock|count\(22) & (!\U1|DiffClock|count[21]~68\ & VCC))
-- \U1|DiffClock|count[22]~70\ = CARRY((\U1|DiffClock|count\(22) & !\U1|DiffClock|count[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(22),
	datad => VCC,
	cin => \U1|DiffClock|count[21]~68\,
	combout => \U1|DiffClock|count[22]~69_combout\,
	cout => \U1|DiffClock|count[22]~70\);

-- Location: LCCOMB_X37_Y26_N22
\U1|DiffClock|count[23]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[23]~71_combout\ = \U1|DiffClock|count[22]~70\ $ (\U1|DiffClock|count\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|DiffClock|count\(23),
	cin => \U1|DiffClock|count[22]~70\,
	combout => \U1|DiffClock|count[23]~71_combout\);

-- Location: LCCOMB_X18_Y26_N18
\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0_combout\ = (\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0)) # 
-- (\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7~portadataout\)))) # (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & (\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\ & 
-- (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1),
	datab => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\,
	datac => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0),
	datad => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a7~portadataout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0_combout\);

-- Location: LCFF_X1_Y24_N7
\U0|P1_score_count_temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \U0|Add0~2_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|P1_score_count_temp\(0));

-- Location: LCCOMB_X12_Y26_N10
\vga_u0|controller|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Equal0~0_combout\ = (!\vga_u0|controller|xCounter\(6) & (\vga_u0|controller|xCounter\(0) & (!\vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(6),
	datab => \vga_u0|controller|xCounter\(0),
	datac => \vga_u0|controller|xCounter\(5),
	datad => \vga_u0|controller|xCounter\(1),
	combout => \vga_u0|controller|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y26_N16
\vga_u0|controller|always1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|always1~1_combout\ = (!\vga_u0|controller|yCounter\(1) & (!\vga_u0|controller|yCounter\(8) & (!\vga_u0|controller|yCounter\(0) & !\vga_u0|controller|yCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(1),
	datab => \vga_u0|controller|yCounter\(8),
	datac => \vga_u0|controller|yCounter\(0),
	datad => \vga_u0|controller|yCounter\(7),
	combout => \vga_u0|controller|always1~1_combout\);

-- Location: LCFF_X28_Y24_N31
\U1|screen|y[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \U1|screen|y_temp0\(4),
	sload => VCC,
	ena => \U1|screen|ALT_INV_plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|y\(4));

-- Location: LCFF_X28_Y24_N7
\U1|screen|y[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \U1|screen|y_temp0\(3),
	sload => VCC,
	ena => \U1|screen|ALT_INV_plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|y\(3));

-- Location: LCFF_X25_Y24_N17
\U1|screen|x[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \U1|screen|x_temp0\(7),
	sload => VCC,
	ena => \U1|screen|ALT_INV_plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|x\(7));

-- Location: LCFF_X25_Y24_N13
\U1|screen|x[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \U1|screen|x_temp0\(5),
	sload => VCC,
	ena => \U1|screen|ALT_INV_plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|x\(5));

-- Location: LCCOMB_X28_Y24_N30
\vga_u0|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|LessThan3~0_combout\ = (((!\U1|screen|y\(3)) # (!\U1|screen|y\(4))) # (!\U1|screen|y\(6))) # (!\U1|screen|y\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y\(5),
	datab => \U1|screen|y\(6),
	datac => \U1|screen|y\(4),
	datad => \U1|screen|y\(3),
	combout => \vga_u0|LessThan3~0_combout\);

-- Location: LCFF_X25_Y24_N1
\U1|screen|plot\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|plot~3_combout\,
	ena => \U1|screen|ALT_INV_plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|plot~regout\);

-- Location: LCCOMB_X25_Y24_N2
\vga_u0|writeEn~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|writeEn~0_combout\ = (\U1|screen|plot~regout\ & (((!\U1|screen|x\(5) & !\U1|screen|x\(6))) # (!\U1|screen|x\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x\(5),
	datab => \U1|screen|x\(6),
	datac => \U1|screen|x\(7),
	datad => \U1|screen|plot~regout\,
	combout => \vga_u0|writeEn~0_combout\);

-- Location: LCCOMB_X24_Y24_N24
\vga_u0|writeEn~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|writeEn~1_combout\ = (\vga_u0|writeEn~0_combout\ & \vga_u0|LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|writeEn~0_combout\,
	datad => \vga_u0|LessThan3~0_combout\,
	combout => \vga_u0|writeEn~1_combout\);

-- Location: LCCOMB_X24_Y24_N22
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w\(3) = (\vga_u0|writeEn~1_combout\ & (!\vga_u0|user_input_translator|mem_address[14]~18_combout\ & (!\vga_u0|user_input_translator|mem_address[12]~14_combout\ & 
-- !\vga_u0|user_input_translator|mem_address[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|writeEn~1_combout\,
	datab => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w\(3));

-- Location: LCCOMB_X17_Y26_N6
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w\(3) = (!\vga_u0|controller|controller_translator|mem_address[14]~18_combout\ & (!\vga_u0|controller|controller_translator|mem_address[12]~14_combout\ & 
-- !\vga_u0|controller|controller_translator|mem_address[13]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|controller|controller_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|controller|controller_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w\(3));

-- Location: LCCOMB_X24_Y24_N0
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0_combout\ = (!\vga_u0|user_input_translator|mem_address[14]~18_combout\ & (!\vga_u0|user_input_translator|mem_address[12]~14_combout\ & 
-- !\vga_u0|user_input_translator|mem_address[13]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0_combout\);

-- Location: LCCOMB_X32_Y24_N28
\U1|Collision|Equal16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal16~0_combout\ = (!\U1|Puck_Movement|puck_x_coord\(0) & (\U1|Puck_Movement|puck_x_coord\(3) & (!\U1|Puck_Movement|puck_x_coord\(2) & !\U1|Puck_Movement|puck_x_coord\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord\(0),
	datab => \U1|Puck_Movement|puck_x_coord\(3),
	datac => \U1|Puck_Movement|puck_x_coord\(2),
	datad => \U1|Puck_Movement|puck_x_coord\(7),
	combout => \U1|Collision|Equal16~0_combout\);

-- Location: LCCOMB_X32_Y24_N6
\U1|Collision|Equal16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal16~1_combout\ = (\U1|Puck_Movement|puck_x_coord_temp\(6) & (\U1|Collision|Equal16~0_combout\ & (\U1|Puck_Movement|puck_x_coord\(1) & !\U1|Puck_Movement|puck_x_coord\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord_temp\(6),
	datab => \U1|Collision|Equal16~0_combout\,
	datac => \U1|Puck_Movement|puck_x_coord\(1),
	datad => \U1|Puck_Movement|puck_x_coord\(5),
	combout => \U1|Collision|Equal16~1_combout\);

-- Location: LCCOMB_X31_Y24_N16
\U1|screen|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Equal2~0_combout\ = (!\U1|screen|x_temp0\(6) & !\U1|screen|x_temp0\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|screen|x_temp0\(6),
	datad => \U1|screen|x_temp0\(5),
	combout => \U1|screen|Equal2~0_combout\);

-- Location: LCCOMB_X31_Y24_N26
\U1|screen|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|process_0~0_combout\ = (\U1|Puck_Movement|puck_x_coord\(0) & (\U1|screen|x_temp0\(0) & (\U1|Puck_Movement|puck_x_coord\(1) $ (!\U1|screen|x_temp0\(1))))) # (!\U1|Puck_Movement|puck_x_coord\(0) & (!\U1|screen|x_temp0\(0) & 
-- (\U1|Puck_Movement|puck_x_coord\(1) $ (!\U1|screen|x_temp0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord\(0),
	datab => \U1|Puck_Movement|puck_x_coord\(1),
	datac => \U1|screen|x_temp0\(1),
	datad => \U1|screen|x_temp0\(0),
	combout => \U1|screen|process_0~0_combout\);

-- Location: LCCOMB_X31_Y24_N20
\U1|screen|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|process_0~1_combout\ = (\U1|screen|x_temp0\(2) & (\U1|Puck_Movement|puck_x_coord\(2) & (\U1|screen|x_temp0\(3) $ (!\U1|Puck_Movement|puck_x_coord\(3))))) # (!\U1|screen|x_temp0\(2) & (!\U1|Puck_Movement|puck_x_coord\(2) & 
-- (\U1|screen|x_temp0\(3) $ (!\U1|Puck_Movement|puck_x_coord\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x_temp0\(2),
	datab => \U1|screen|x_temp0\(3),
	datac => \U1|Puck_Movement|puck_x_coord\(2),
	datad => \U1|Puck_Movement|puck_x_coord\(3),
	combout => \U1|screen|process_0~1_combout\);

-- Location: LCCOMB_X31_Y24_N14
\U1|screen|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|process_0~2_combout\ = (\U1|screen|x_temp0\(4) & (!\U1|Puck_Movement|puck_x_coord_temp\(4) & (\U1|screen|x_temp0\(5) $ (!\U1|Puck_Movement|puck_x_coord\(5))))) # (!\U1|screen|x_temp0\(4) & (\U1|Puck_Movement|puck_x_coord_temp\(4) & 
-- (\U1|screen|x_temp0\(5) $ (!\U1|Puck_Movement|puck_x_coord\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x_temp0\(4),
	datab => \U1|screen|x_temp0\(5),
	datac => \U1|Puck_Movement|puck_x_coord\(5),
	datad => \U1|Puck_Movement|puck_x_coord_temp\(4),
	combout => \U1|screen|process_0~2_combout\);

-- Location: LCCOMB_X31_Y24_N8
\U1|screen|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|process_0~3_combout\ = (\U1|screen|x_temp0\(6) & (!\U1|Puck_Movement|puck_x_coord_temp\(6) & (\U1|screen|x_temp0\(7) $ (!\U1|Puck_Movement|puck_x_coord\(7))))) # (!\U1|screen|x_temp0\(6) & (\U1|Puck_Movement|puck_x_coord_temp\(6) & 
-- (\U1|screen|x_temp0\(7) $ (!\U1|Puck_Movement|puck_x_coord\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x_temp0\(6),
	datab => \U1|screen|x_temp0\(7),
	datac => \U1|Puck_Movement|puck_x_coord\(7),
	datad => \U1|Puck_Movement|puck_x_coord_temp\(6),
	combout => \U1|screen|process_0~3_combout\);

-- Location: LCCOMB_X31_Y24_N2
\U1|screen|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|process_0~4_combout\ = (\U1|screen|process_0~1_combout\ & (\U1|screen|process_0~2_combout\ & (\U1|screen|process_0~3_combout\ & \U1|screen|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|process_0~1_combout\,
	datab => \U1|screen|process_0~2_combout\,
	datac => \U1|screen|process_0~3_combout\,
	datad => \U1|screen|process_0~0_combout\,
	combout => \U1|screen|process_0~4_combout\);

-- Location: LCCOMB_X31_Y24_N12
\U1|screen|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Equal2~1_combout\ = (!\U1|screen|x_temp0\(3) & (\U1|screen|x_temp0\(7) & (!\U1|screen|x_temp0\(4) & \U1|screen|x_temp0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x_temp0\(3),
	datab => \U1|screen|x_temp0\(7),
	datac => \U1|screen|x_temp0\(4),
	datad => \U1|screen|x_temp0\(0),
	combout => \U1|screen|Equal2~1_combout\);

-- Location: LCCOMB_X31_Y24_N22
\U1|screen|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Equal2~2_combout\ = (\U1|screen|x_temp0\(2) & (\U1|screen|x_temp0\(1) & (\U1|screen|Equal2~0_combout\ & \U1|screen|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x_temp0\(2),
	datab => \U1|screen|x_temp0\(1),
	datac => \U1|screen|Equal2~0_combout\,
	datad => \U1|screen|Equal2~1_combout\,
	combout => \U1|screen|Equal2~2_combout\);

-- Location: LCCOMB_X30_Y24_N10
\U1|screen|colour[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour[1]~4_combout\ = (!\U1|screen|Equal2~2_combout\ & ((!\U1|screen|Equal3~0_combout\) # (!\U1|screen|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Equal3~1_combout\,
	datac => \U1|screen|Equal2~2_combout\,
	datad => \U1|screen|Equal3~0_combout\,
	combout => \U1|screen|colour[1]~4_combout\);

-- Location: LCCOMB_X30_Y24_N20
\U1|screen|colour[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour[1]~5_combout\ = (!\U1|screen|x_temp0\(5) & (((\U1|screen|LessThan8~12_combout\) # (\U1|screen|LessThan9~12_combout\)) # (!\U1|screen|x_temp0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x_temp0\(3),
	datab => \U1|screen|x_temp0\(5),
	datac => \U1|screen|LessThan8~12_combout\,
	datad => \U1|screen|LessThan9~12_combout\,
	combout => \U1|screen|colour[1]~5_combout\);

-- Location: LCCOMB_X31_Y24_N28
\U1|screen|colour[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour[1]~6_combout\ = (\U1|screen|x_temp0\(2) & (((\U1|screen|x_temp0\(5) & \U1|screen|LessThan10~12_combout\)) # (!\U1|screen|x_temp0\(1)))) # (!\U1|screen|x_temp0\(2) & (\U1|screen|x_temp0\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x_temp0\(2),
	datab => \U1|screen|x_temp0\(5),
	datac => \U1|screen|x_temp0\(1),
	datad => \U1|screen|LessThan10~12_combout\,
	combout => \U1|screen|colour[1]~6_combout\);

-- Location: LCCOMB_X30_Y24_N6
\U1|screen|colour[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour[1]~10_combout\ = (\U1|screen|colour[1]~4_combout\ & ((\U1|screen|colour[1]~9_combout\) # ((\U1|screen|colour[1]~5_combout\) # (\U1|screen|colour[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|colour[1]~4_combout\,
	datab => \U1|screen|colour[1]~9_combout\,
	datac => \U1|screen|colour[1]~5_combout\,
	datad => \U1|screen|colour[1]~6_combout\,
	combout => \U1|screen|colour[1]~10_combout\);

-- Location: LCCOMB_X31_Y24_N10
\U1|screen|colour~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour~13_combout\ = (\U1|screen|x_temp0\(3) & ((\U1|screen|x_temp0\(4)) # ((\U1|screen|x_temp0\(1)) # (\U1|screen|x_temp0\(2))))) # (!\U1|screen|x_temp0\(3) & (\U1|screen|x_temp0\(4) & (\U1|screen|x_temp0\(1) & \U1|screen|x_temp0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x_temp0\(3),
	datab => \U1|screen|x_temp0\(4),
	datac => \U1|screen|x_temp0\(1),
	datad => \U1|screen|x_temp0\(2),
	combout => \U1|screen|colour~13_combout\);

-- Location: LCCOMB_X31_Y24_N4
\U1|screen|colour~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour~14_combout\ = (\U1|screen|Equal2~0_combout\ & ((\U1|screen|colour~13_combout\ & (\U1|screen|x_temp0\(4) & \U1|screen|x_temp0\(7))) # (!\U1|screen|colour~13_combout\ & (!\U1|screen|x_temp0\(4) & !\U1|screen|x_temp0\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|colour~13_combout\,
	datab => \U1|screen|x_temp0\(4),
	datac => \U1|screen|Equal2~0_combout\,
	datad => \U1|screen|x_temp0\(7),
	combout => \U1|screen|colour~14_combout\);

-- Location: LCCOMB_X33_Y26_N8
\U1|Puck_Movement|Add5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|Add5~1_combout\ = (\U1|Puck_Movement|puck_x_coord\(0) & (\U1|Puck_Movement|puck_y_vector\(0) $ (\U1|Collision|puck_boundary~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord\(0),
	datab => \U1|Puck_Movement|puck_y_vector\(0),
	datad => \U1|Collision|puck_boundary~regout\,
	combout => \U1|Puck_Movement|Add5~1_combout\);

-- Location: LCFF_X28_Y26_N13
\U1|Collision|p2_forward_boundary[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Collision|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Collision|p2_forward_boundary\(1));

-- Location: LCFF_X32_Y25_N1
\U1|Collision|p1_goalie_boundary[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Collision|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Collision|p1_goalie_boundary\(1));

-- Location: LCFF_X29_Y24_N21
\U0|NEXT_STATE.soft_reset_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|Selector1~1_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|NEXT_STATE.soft_reset_state~regout\);

-- Location: LCFF_X37_Y26_N27
\U1|DiffClock|count_to[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count_to[2]~1_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(2));

-- Location: LCFF_X35_Y27_N13
\U1|DiffClock|count_to[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|Add1~2_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(3));

-- Location: LCCOMB_X36_Y27_N8
\U1|DiffClock|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Equal0~1_combout\ = (\U1|DiffClock|count_to\(3) & (\U1|DiffClock|count\(3) & (\U1|DiffClock|count\(2) $ (!\U1|DiffClock|count_to\(2))))) # (!\U1|DiffClock|count_to\(3) & (!\U1|DiffClock|count\(3) & (\U1|DiffClock|count\(2) $ 
-- (!\U1|DiffClock|count_to\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(3),
	datab => \U1|DiffClock|count\(3),
	datac => \U1|DiffClock|count\(2),
	datad => \U1|DiffClock|count_to\(2),
	combout => \U1|DiffClock|Equal0~1_combout\);

-- Location: LCFF_X35_Y27_N17
\U1|DiffClock|count_to[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|Add1~6_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(5));

-- Location: LCCOMB_X37_Y27_N0
\U1|DiffClock|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Equal0~2_combout\ = (\U1|DiffClock|count_to\(4) & (\U1|DiffClock|count\(4) & (\U1|DiffClock|count_to\(5) $ (!\U1|DiffClock|count\(5))))) # (!\U1|DiffClock|count_to\(4) & (!\U1|DiffClock|count\(4) & (\U1|DiffClock|count_to\(5) $ 
-- (!\U1|DiffClock|count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(4),
	datab => \U1|DiffClock|count_to\(5),
	datac => \U1|DiffClock|count\(4),
	datad => \U1|DiffClock|count\(5),
	combout => \U1|DiffClock|Equal0~2_combout\);

-- Location: LCCOMB_X37_Y27_N2
\U1|DiffClock|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Equal0~3_combout\ = (\U1|DiffClock|count_to\(6) & (\U1|DiffClock|count\(6) & (\U1|DiffClock|count_to\(7) $ (\U1|DiffClock|count\(7))))) # (!\U1|DiffClock|count_to\(6) & (!\U1|DiffClock|count\(6) & (\U1|DiffClock|count_to\(7) $ 
-- (\U1|DiffClock|count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(6),
	datab => \U1|DiffClock|count_to\(7),
	datac => \U1|DiffClock|count\(6),
	datad => \U1|DiffClock|count\(7),
	combout => \U1|DiffClock|Equal0~3_combout\);

-- Location: LCCOMB_X37_Y27_N4
\U1|DiffClock|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Equal0~4_combout\ = (\U1|DiffClock|count_to\(8) & (\U1|DiffClock|count\(8) & (\U1|DiffClock|count_to\(9) $ (!\U1|DiffClock|count\(9))))) # (!\U1|DiffClock|count_to\(8) & (!\U1|DiffClock|count\(8) & (\U1|DiffClock|count_to\(9) $ 
-- (!\U1|DiffClock|count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(8),
	datab => \U1|DiffClock|count_to\(9),
	datac => \U1|DiffClock|count\(8),
	datad => \U1|DiffClock|count\(9),
	combout => \U1|DiffClock|Equal0~4_combout\);

-- Location: LCCOMB_X37_Y27_N6
\U1|DiffClock|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Equal0~5_combout\ = (\U1|DiffClock|Equal0~1_combout\ & (\U1|DiffClock|Equal0~2_combout\ & (\U1|DiffClock|Equal0~4_combout\ & \U1|DiffClock|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|Equal0~1_combout\,
	datab => \U1|DiffClock|Equal0~2_combout\,
	datac => \U1|DiffClock|Equal0~4_combout\,
	datad => \U1|DiffClock|Equal0~3_combout\,
	combout => \U1|DiffClock|Equal0~5_combout\);

-- Location: LCCOMB_X36_Y27_N2
\U1|DiffClock|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Equal0~6_combout\ = (\U1|DiffClock|count_to\(10) & (!\U1|DiffClock|count\(10) & (\U1|DiffClock|count\(11) $ (!\U1|DiffClock|count_to\(11))))) # (!\U1|DiffClock|count_to\(10) & (\U1|DiffClock|count\(10) & (\U1|DiffClock|count\(11) $ 
-- (!\U1|DiffClock|count_to\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(10),
	datab => \U1|DiffClock|count\(11),
	datac => \U1|DiffClock|count_to\(11),
	datad => \U1|DiffClock|count\(10),
	combout => \U1|DiffClock|Equal0~6_combout\);

-- Location: LCFF_X35_Y26_N17
\U1|DiffClock|count_to[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|Add1~38_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(21));

-- Location: LCCOMB_X32_Y24_N0
\U1|Collision|puck_player~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|puck_player~0_combout\ = (!\U1|Puck_Movement|puck_x_coord_temp\(4) & (!\U1|Collision|LessThan0~12_combout\ & (!\U1|Puck_Movement|puck_x_direction\(0) & \U1|Collision|Equal16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord_temp\(4),
	datab => \U1|Collision|LessThan0~12_combout\,
	datac => \U1|Puck_Movement|puck_x_direction\(0),
	datad => \U1|Collision|Equal16~1_combout\,
	combout => \U1|Collision|puck_player~0_combout\);

-- Location: LCCOMB_X28_Y27_N6
\U1|Collision|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal4~0_combout\ = (\U1|P2_goalie|y_coord\(5) & (!\U1|P2_goalie|y_coord\(1) & (\U1|P2_goalie|player_y\(0) & !\U1|P2_goalie|player_y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_goalie|y_coord\(5),
	datab => \U1|P2_goalie|y_coord\(1),
	datac => \U1|P2_goalie|player_y\(0),
	datad => \U1|P2_goalie|player_y\(6),
	combout => \U1|Collision|Equal4~0_combout\);

-- Location: LCCOMB_X31_Y26_N28
\U1|Collision|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal6~0_combout\ = (\U1|P2_forward|y_coord\(5) & (!\U1|P2_forward|player_y\(6) & (\U1|P2_forward|player_y\(0) & !\U1|P2_forward|y_coord\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_forward|y_coord\(5),
	datab => \U1|P2_forward|player_y\(6),
	datac => \U1|P2_forward|player_y\(0),
	datad => \U1|P2_forward|y_coord\(1),
	combout => \U1|Collision|Equal6~0_combout\);

-- Location: LCCOMB_X28_Y26_N12
\U1|Collision|Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal6~1_combout\ = (\U1|P2_forward|y_coord\(4) & (\U1|P2_forward|player_y\(3) & (\U1|P2_forward|y_coord\(2) & \U1|Collision|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_forward|y_coord\(4),
	datab => \U1|P2_forward|player_y\(3),
	datac => \U1|P2_forward|y_coord\(2),
	datad => \U1|Collision|Equal6~0_combout\,
	combout => \U1|Collision|Equal6~1_combout\);

-- Location: LCCOMB_X32_Y25_N16
\U1|Collision|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal0~0_combout\ = (\U1|Pl_goalie|y_coord\(5) & (!\U1|Pl_goalie|y_coord\(1) & (\U1|Pl_goalie|player_y\(0) & !\U1|Pl_goalie|player_y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Pl_goalie|y_coord\(5),
	datab => \U1|Pl_goalie|y_coord\(1),
	datac => \U1|Pl_goalie|player_y\(0),
	datad => \U1|Pl_goalie|player_y\(6),
	combout => \U1|Collision|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y25_N0
\U1|Collision|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal0~1_combout\ = (\U1|Collision|Equal0~0_combout\ & (\U1|Pl_goalie|y_coord\(4) & (\U1|Pl_goalie|player_y\(3) & \U1|Pl_goalie|y_coord\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Equal0~0_combout\,
	datab => \U1|Pl_goalie|y_coord\(4),
	datac => \U1|Pl_goalie|player_y\(3),
	datad => \U1|Pl_goalie|y_coord\(2),
	combout => \U1|Collision|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y27_N6
\U1|Collision|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal2~0_combout\ = (!\U1|P1_forward|y_coord\(1) & (\U1|P1_forward|player_y\(0) & (\U1|P1_forward|y_coord\(5) & !\U1|P1_forward|player_y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P1_forward|y_coord\(1),
	datab => \U1|P1_forward|player_y\(0),
	datac => \U1|P1_forward|y_coord\(5),
	datad => \U1|P1_forward|player_y\(6),
	combout => \U1|Collision|Equal2~0_combout\);

-- Location: LCCOMB_X30_Y27_N30
\U1|Collision|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal3~0_combout\ = (\U1|screen|Add1~8_combout\ & (\U1|P1_forward|player_y\(0) & (!\U1|screen|Add1~0_combout\ & \U1|screen|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add1~8_combout\,
	datab => \U1|P1_forward|player_y\(0),
	datac => \U1|screen|Add1~0_combout\,
	datad => \U1|screen|Add1~10_combout\,
	combout => \U1|Collision|Equal3~0_combout\);

-- Location: LCCOMB_X29_Y24_N20
\U0|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector1~1_combout\ = (!\U0|Equal0~0_combout\ & (!\U0|Equal1~0_combout\ & \U0|NEXT_STATE.score_state~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Equal0~0_combout\,
	datac => \U0|Equal1~0_combout\,
	datad => \U0|NEXT_STATE.score_state~regout\,
	combout => \U0|Selector1~1_combout\);

-- Location: LCCOMB_X35_Y26_N22
\U1|DiffClock|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan1~0_combout\ = (\U1|DiffClock|count_to\(23)) # ((\U1|DiffClock|count_to\(22)) # ((\U1|DiffClock|count_to\(21)) # (!\U1|DiffClock|count_to\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(23),
	datab => \U1|DiffClock|count_to\(22),
	datac => \U1|DiffClock|count_to\(21),
	datad => \U1|DiffClock|count_to\(20),
	combout => \U1|DiffClock|LessThan1~0_combout\);

-- Location: LCCOMB_X36_Y26_N22
\U1|DiffClock|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan1~1_combout\ = (!\U1|DiffClock|count_to\(15) & (!\U1|DiffClock|count_to\(18) & (\U1|DiffClock|count_to\(16) & !\U1|DiffClock|count_to\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(15),
	datab => \U1|DiffClock|count_to\(18),
	datac => \U1|DiffClock|count_to\(16),
	datad => \U1|DiffClock|count_to\(17),
	combout => \U1|DiffClock|LessThan1~1_combout\);

-- Location: LCCOMB_X38_Y26_N8
\U1|DiffClock|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan1~2_combout\ = ((\U1|DiffClock|LessThan1~0_combout\) # ((\U1|DiffClock|count_to\(14) & \U1|DiffClock|LessThan1~1_combout\))) # (!\U1|DiffClock|count_to\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(19),
	datab => \U1|DiffClock|count_to\(14),
	datac => \U1|DiffClock|LessThan1~0_combout\,
	datad => \U1|DiffClock|LessThan1~1_combout\,
	combout => \U1|DiffClock|LessThan1~2_combout\);

-- Location: LCCOMB_X36_Y27_N4
\U1|DiffClock|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan1~3_combout\ = ((\U1|DiffClock|count_to\(11)) # ((\U1|DiffClock|count_to\(12)) # (\U1|DiffClock|count_to\(9)))) # (!\U1|DiffClock|count_to\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(10),
	datab => \U1|DiffClock|count_to\(11),
	datac => \U1|DiffClock|count_to\(12),
	datad => \U1|DiffClock|count_to\(9),
	combout => \U1|DiffClock|LessThan1~3_combout\);

-- Location: LCCOMB_X35_Y27_N6
\U1|DiffClock|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan1~4_combout\ = (\U1|DiffClock|count_to\(5) & ((\U1|DiffClock|count_to\(3)) # ((\U1|DiffClock|count_to\(4)) # (\U1|DiffClock|count_to\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(3),
	datab => \U1|DiffClock|count_to\(4),
	datac => \U1|DiffClock|count_to\(5),
	datad => \U1|DiffClock|count_to\(2),
	combout => \U1|DiffClock|LessThan1~4_combout\);

-- Location: LCCOMB_X36_Y27_N6
\U1|DiffClock|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan1~5_combout\ = (\U1|DiffClock|count_to\(6)) # (!\U1|DiffClock|count_to\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|DiffClock|count_to\(7),
	datad => \U1|DiffClock|count_to\(6),
	combout => \U1|DiffClock|LessThan1~5_combout\);

-- Location: LCCOMB_X36_Y27_N0
\U1|DiffClock|LessThan1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan1~6_combout\ = (\U1|DiffClock|LessThan1~3_combout\) # ((\U1|DiffClock|count_to\(8) & ((\U1|DiffClock|LessThan1~5_combout\) # (\U1|DiffClock|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|LessThan1~5_combout\,
	datab => \U1|DiffClock|LessThan1~4_combout\,
	datac => \U1|DiffClock|LessThan1~3_combout\,
	datad => \U1|DiffClock|count_to\(8),
	combout => \U1|DiffClock|LessThan1~6_combout\);

-- Location: LCCOMB_X38_Y26_N10
\U1|DiffClock|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan1~7_combout\ = (\U1|DiffClock|LessThan1~2_combout\) # ((\U1|DiffClock|LessThan1~6_combout\ & (\U1|DiffClock|count_to\(13) & \U1|DiffClock|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|LessThan1~6_combout\,
	datab => \U1|DiffClock|count_to\(13),
	datac => \U1|DiffClock|LessThan1~2_combout\,
	datad => \U1|DiffClock|LessThan1~1_combout\,
	combout => \U1|DiffClock|LessThan1~7_combout\);

-- Location: LCCOMB_X37_Y26_N26
\U1|DiffClock|count_to[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count_to[2]~1_combout\ = \U1|DiffClock|count_to[23]~0_combout\ $ (\U1|DiffClock|count_to\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to[23]~0_combout\,
	datac => \U1|DiffClock|count_to\(2),
	combout => \U1|DiffClock|count_to[2]~1_combout\);

-- Location: LCCOMB_X25_Y24_N0
\U1|screen|plot~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|plot~3_combout\ = !\CLOCK_50~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLOCK_50~combout\,
	combout => \U1|screen|plot~3_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X62_Y1_N24
\U0|winner2[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner2[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U0|winner2[0]~feeder_combout\);

-- Location: CLKDELAYCTRL_G7
\KEY[3]~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \KEY~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \KEY[3]~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G7
\KEY[3]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[3]~clkctrl_outclk\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCCOMB_X27_Y27_N2
\U0|button_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|button_state~0_combout\ = !\KEY~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY~combout\(0),
	combout => \U0|button_state~0_combout\);

-- Location: LCFF_X27_Y27_N3
\U0|button_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U0|button_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|button_state~regout\);

-- Location: LCCOMB_X27_Y27_N0
\U0|nextStep_pulse~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|nextStep_pulse~0_combout\ = (!\U0|button_state~regout\ & !\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|button_state~regout\,
	datad => \KEY~combout\(0),
	combout => \U0|nextStep_pulse~0_combout\);

-- Location: LCFF_X27_Y27_N1
\U0|nextStep_pulse\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U0|nextStep_pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|nextStep_pulse~regout\);

-- Location: LCCOMB_X33_Y26_N28
\U1|Puck_Movement|puck_y_vector[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_y_vector[0]~1_combout\ = !\U1|Puck_Movement|puck_y_vector~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Puck_Movement|puck_y_vector~0_combout\,
	combout => \U1|Puck_Movement|puck_y_vector[0]~1_combout\);

-- Location: LCCOMB_X29_Y24_N16
\U0|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector5~0_combout\ = (!\U0|nextStep_pulse~regout\ & \U0|NEXT_STATE.idle_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|nextStep_pulse~regout\,
	datad => \U0|NEXT_STATE.idle_state~regout\,
	combout => \U0|Selector5~0_combout\);

-- Location: LCCOMB_X29_Y24_N6
\U0|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector2~0_combout\ = (!\U0|NEXT_STATE.soft_reset_state~regout\ & ((\U0|NEXT_STATE.reset_state~regout\) # ((!\U0|Selector4~1_combout\ & !\U0|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|NEXT_STATE.soft_reset_state~regout\,
	datab => \U0|Selector4~1_combout\,
	datac => \U0|NEXT_STATE.reset_state~regout\,
	datad => \U0|Selector5~0_combout\,
	combout => \U0|Selector2~0_combout\);

-- Location: LCFF_X29_Y24_N7
\U0|NEXT_STATE.reset_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|Selector2~0_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|NEXT_STATE.reset_state~regout\);

-- Location: LCCOMB_X29_Y24_N24
\U0|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector0~0_combout\ = (!\U0|NEXT_STATE.soft_reset_state~regout\ & ((\U0|reset_connect~regout\) # (!\U0|NEXT_STATE.reset_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|NEXT_STATE.soft_reset_state~regout\,
	datac => \U0|reset_connect~regout\,
	datad => \U0|NEXT_STATE.reset_state~regout\,
	combout => \U0|Selector0~0_combout\);

-- Location: LCFF_X29_Y24_N25
\U0|reset_connect\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|Selector0~0_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|reset_connect~regout\);

-- Location: LCCOMB_X32_Y24_N12
\U1|Puck_Movement|puck_x_coord[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_x_coord[0]~6_combout\ = \U1|Puck_Movement|puck_x_coord\(0) $ (VCC)
-- \U1|Puck_Movement|puck_x_coord[0]~7\ = CARRY(\U1|Puck_Movement|puck_x_coord\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord\(0),
	datad => VCC,
	combout => \U1|Puck_Movement|puck_x_coord[0]~6_combout\,
	cout => \U1|Puck_Movement|puck_x_coord[0]~7\);

-- Location: LCFF_X32_Y24_N13
\U1|Puck_Movement|puck_x_coord[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Puck_Movement|puck_x_coord[0]~6_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Puck_Movement|puck_x_coord\(0));

-- Location: LCCOMB_X32_Y24_N14
\U1|Puck_Movement|puck_x_coord[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_x_coord[1]~8_combout\ = (\U1|Puck_Movement|puck_x_vector~0_combout\ & ((\U1|Puck_Movement|puck_x_coord\(1) & (!\U1|Puck_Movement|puck_x_coord[0]~7\)) # (!\U1|Puck_Movement|puck_x_coord\(1) & ((\U1|Puck_Movement|puck_x_coord[0]~7\) # 
-- (GND))))) # (!\U1|Puck_Movement|puck_x_vector~0_combout\ & ((\U1|Puck_Movement|puck_x_coord\(1) & (\U1|Puck_Movement|puck_x_coord[0]~7\ & VCC)) # (!\U1|Puck_Movement|puck_x_coord\(1) & (!\U1|Puck_Movement|puck_x_coord[0]~7\))))
-- \U1|Puck_Movement|puck_x_coord[1]~9\ = CARRY((\U1|Puck_Movement|puck_x_vector~0_combout\ & ((!\U1|Puck_Movement|puck_x_coord[0]~7\) # (!\U1|Puck_Movement|puck_x_coord\(1)))) # (!\U1|Puck_Movement|puck_x_vector~0_combout\ & 
-- (!\U1|Puck_Movement|puck_x_coord\(1) & !\U1|Puck_Movement|puck_x_coord[0]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_vector~0_combout\,
	datab => \U1|Puck_Movement|puck_x_coord\(1),
	datad => VCC,
	cin => \U1|Puck_Movement|puck_x_coord[0]~7\,
	combout => \U1|Puck_Movement|puck_x_coord[1]~8_combout\,
	cout => \U1|Puck_Movement|puck_x_coord[1]~9\);

-- Location: LCFF_X32_Y24_N15
\U1|Puck_Movement|puck_x_coord[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Puck_Movement|puck_x_coord[1]~8_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Puck_Movement|puck_x_coord\(1));

-- Location: LCCOMB_X32_Y24_N16
\U1|Puck_Movement|puck_x_coord[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_x_coord[2]~10_combout\ = ((\U1|Puck_Movement|puck_x_coord\(2) $ (\U1|Puck_Movement|puck_x_vector~0_combout\ $ (\U1|Puck_Movement|puck_x_coord[1]~9\)))) # (GND)
-- \U1|Puck_Movement|puck_x_coord[2]~11\ = CARRY((\U1|Puck_Movement|puck_x_coord\(2) & ((!\U1|Puck_Movement|puck_x_coord[1]~9\) # (!\U1|Puck_Movement|puck_x_vector~0_combout\))) # (!\U1|Puck_Movement|puck_x_coord\(2) & 
-- (!\U1|Puck_Movement|puck_x_vector~0_combout\ & !\U1|Puck_Movement|puck_x_coord[1]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord\(2),
	datab => \U1|Puck_Movement|puck_x_vector~0_combout\,
	datad => VCC,
	cin => \U1|Puck_Movement|puck_x_coord[1]~9\,
	combout => \U1|Puck_Movement|puck_x_coord[2]~10_combout\,
	cout => \U1|Puck_Movement|puck_x_coord[2]~11\);

-- Location: LCFF_X32_Y24_N17
\U1|Puck_Movement|puck_x_coord[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Puck_Movement|puck_x_coord[2]~10_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Puck_Movement|puck_x_coord\(2));

-- Location: LCCOMB_X32_Y24_N2
\U1|Collision|Equal17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal17~1_combout\ = (!\U1|Puck_Movement|puck_x_coord_temp\(4) & (!\U1|Puck_Movement|puck_x_coord\(1) & (\U1|Puck_Movement|puck_x_coord\(2) & !\U1|Puck_Movement|puck_x_coord\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord_temp\(4),
	datab => \U1|Puck_Movement|puck_x_coord\(1),
	datac => \U1|Puck_Movement|puck_x_coord\(2),
	datad => \U1|Puck_Movement|puck_x_coord\(3),
	combout => \U1|Collision|Equal17~1_combout\);

-- Location: LCCOMB_X33_Y27_N30
\U1|Collision|Equal17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal17~2_combout\ = (\U1|Collision|Equal17~0_combout\ & (\U1|Puck_Movement|puck_x_coord\(0) & \U1|Collision|Equal17~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Equal17~0_combout\,
	datac => \U1|Puck_Movement|puck_x_coord\(0),
	datad => \U1|Collision|Equal17~1_combout\,
	combout => \U1|Collision|Equal17~2_combout\);

-- Location: LCCOMB_X29_Y24_N14
\U1|Collision|score_p2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|score_p2~0_combout\ = (\U1|Collision|Equal16~1_combout\ & ((\U1|Puck_Movement|puck_x_coord_temp\(4)) # ((\U1|Collision|score_p2~regout\ & \U1|Collision|Equal17~2_combout\)))) # (!\U1|Collision|Equal16~1_combout\ & 
-- (((\U1|Collision|score_p2~regout\ & \U1|Collision|Equal17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Equal16~1_combout\,
	datab => \U1|Puck_Movement|puck_x_coord_temp\(4),
	datac => \U1|Collision|score_p2~regout\,
	datad => \U1|Collision|Equal17~2_combout\,
	combout => \U1|Collision|score_p2~0_combout\);

-- Location: LCFF_X29_Y24_N15
\U1|Collision|score_p2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Collision|score_p2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Collision|score_p2~regout\);

-- Location: LCCOMB_X29_Y24_N0
\U0|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector4~0_combout\ = (!\U1|Collision|score_p1~regout\ & !\U1|Collision|score_p2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|score_p1~regout\,
	datac => \U1|Collision|score_p2~regout\,
	combout => \U0|Selector4~0_combout\);

-- Location: LCCOMB_X29_Y24_N28
\U0|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector5~1_combout\ = (\U0|NEXT_STATE.score_state~regout\ & ((\U0|Selector5~0_combout\) # ((\U0|NEXT_STATE.play_state~regout\)))) # (!\U0|NEXT_STATE.score_state~regout\ & (((!\U0|Selector4~0_combout\ & \U0|NEXT_STATE.play_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Selector5~0_combout\,
	datab => \U0|Selector4~0_combout\,
	datac => \U0|NEXT_STATE.score_state~regout\,
	datad => \U0|NEXT_STATE.play_state~regout\,
	combout => \U0|Selector5~1_combout\);

-- Location: LCFF_X29_Y24_N29
\U0|NEXT_STATE.score_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|Selector5~1_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|NEXT_STATE.score_state~regout\);

-- Location: LCCOMB_X29_Y24_N10
\U0|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector8~0_combout\ = (\U0|NEXT_STATE.idle_state~regout\ & (\U0|nextStep_pulse~regout\)) # (!\U0|NEXT_STATE.idle_state~regout\ & (((\U0|idle_connect~regout\ & !\U0|NEXT_STATE.score_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|nextStep_pulse~regout\,
	datab => \U0|NEXT_STATE.idle_state~regout\,
	datac => \U0|idle_connect~regout\,
	datad => \U0|NEXT_STATE.score_state~regout\,
	combout => \U0|Selector8~0_combout\);

-- Location: LCFF_X29_Y24_N11
\U0|idle_connect\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|Selector8~0_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|idle_connect~regout\);

-- Location: LCCOMB_X29_Y24_N22
\U1|Puck_Movement|puck_x_direction[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_x_direction[0]~0_combout\ = (\U0|reset_connect~regout\ & \U0|idle_connect~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|reset_connect~regout\,
	datad => \U0|idle_connect~regout\,
	combout => \U1|Puck_Movement|puck_x_direction[0]~0_combout\);

-- Location: LCCOMB_X35_Y27_N10
\U1|DiffClock|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~1_cout\ = CARRY(\U1|DiffClock|count_to\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(2),
	datad => VCC,
	cout => \U1|DiffClock|Add1~1_cout\);

-- Location: LCCOMB_X35_Y27_N14
\U1|DiffClock|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~4_combout\ = (\U1|DiffClock|count_to\(4) & ((GND) # (!\U1|DiffClock|Add1~3\))) # (!\U1|DiffClock|count_to\(4) & (\U1|DiffClock|Add1~3\ $ (GND)))
-- \U1|DiffClock|Add1~5\ = CARRY((\U1|DiffClock|count_to\(4)) # (!\U1|DiffClock|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count_to\(4),
	datad => VCC,
	cin => \U1|DiffClock|Add1~3\,
	combout => \U1|DiffClock|Add1~4_combout\,
	cout => \U1|DiffClock|Add1~5\);

-- Location: LCCOMB_X35_Y26_N4
\U1|DiffClock|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~26_combout\ = (\U1|DiffClock|count_to\(15) & (!\U1|DiffClock|Add1~25\)) # (!\U1|DiffClock|count_to\(15) & (\U1|DiffClock|Add1~25\ & VCC))
-- \U1|DiffClock|Add1~27\ = CARRY((\U1|DiffClock|count_to\(15) & !\U1|DiffClock|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count_to\(15),
	datad => VCC,
	cin => \U1|DiffClock|Add1~25\,
	combout => \U1|DiffClock|Add1~26_combout\,
	cout => \U1|DiffClock|Add1~27\);

-- Location: LCCOMB_X35_Y26_N6
\U1|DiffClock|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~28_combout\ = (\U1|DiffClock|count_to\(16) & ((GND) # (!\U1|DiffClock|Add1~27\))) # (!\U1|DiffClock|count_to\(16) & (\U1|DiffClock|Add1~27\ $ (GND)))
-- \U1|DiffClock|Add1~29\ = CARRY((\U1|DiffClock|count_to\(16)) # (!\U1|DiffClock|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(16),
	datad => VCC,
	cin => \U1|DiffClock|Add1~27\,
	combout => \U1|DiffClock|Add1~28_combout\,
	cout => \U1|DiffClock|Add1~29\);

-- Location: LCCOMB_X35_Y26_N8
\U1|DiffClock|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~30_combout\ = (\U1|DiffClock|count_to\(17) & (!\U1|DiffClock|Add1~29\)) # (!\U1|DiffClock|count_to\(17) & (\U1|DiffClock|Add1~29\ & VCC))
-- \U1|DiffClock|Add1~31\ = CARRY((\U1|DiffClock|count_to\(17) & !\U1|DiffClock|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count_to\(17),
	datad => VCC,
	cin => \U1|DiffClock|Add1~29\,
	combout => \U1|DiffClock|Add1~30_combout\,
	cout => \U1|DiffClock|Add1~31\);

-- Location: LCCOMB_X35_Y26_N26
\U1|DiffClock|count_to[17]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count_to[17]~7_combout\ = !\U1|DiffClock|Add1~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|DiffClock|Add1~30_combout\,
	combout => \U1|DiffClock|count_to[17]~7_combout\);

-- Location: LCFF_X35_Y26_N27
\U1|DiffClock|count_to[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count_to[17]~7_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(17));

-- Location: LCCOMB_X35_Y26_N10
\U1|DiffClock|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~32_combout\ = (\U1|DiffClock|count_to\(18) & (\U1|DiffClock|Add1~31\ $ (GND))) # (!\U1|DiffClock|count_to\(18) & ((GND) # (!\U1|DiffClock|Add1~31\)))
-- \U1|DiffClock|Add1~33\ = CARRY((!\U1|DiffClock|Add1~31\) # (!\U1|DiffClock|count_to\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(18),
	datad => VCC,
	cin => \U1|DiffClock|Add1~31\,
	combout => \U1|DiffClock|Add1~32_combout\,
	cout => \U1|DiffClock|Add1~33\);

-- Location: LCCOMB_X35_Y26_N12
\U1|DiffClock|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~34_combout\ = (\U1|DiffClock|count_to\(19) & (!\U1|DiffClock|Add1~33\)) # (!\U1|DiffClock|count_to\(19) & (\U1|DiffClock|Add1~33\ & VCC))
-- \U1|DiffClock|Add1~35\ = CARRY((\U1|DiffClock|count_to\(19) & !\U1|DiffClock|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count_to\(19),
	datad => VCC,
	cin => \U1|DiffClock|Add1~33\,
	combout => \U1|DiffClock|Add1~34_combout\,
	cout => \U1|DiffClock|Add1~35\);

-- Location: LCCOMB_X35_Y26_N30
\U1|DiffClock|count_to[19]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count_to[19]~2_combout\ = !\U1|DiffClock|Add1~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|DiffClock|Add1~34_combout\,
	combout => \U1|DiffClock|count_to[19]~2_combout\);

-- Location: LCFF_X35_Y26_N31
\U1|DiffClock|count_to[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count_to[19]~2_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(19));

-- Location: LCCOMB_X35_Y26_N14
\U1|DiffClock|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~36_combout\ = (\U1|DiffClock|count_to\(20) & (\U1|DiffClock|Add1~35\ $ (GND))) # (!\U1|DiffClock|count_to\(20) & ((GND) # (!\U1|DiffClock|Add1~35\)))
-- \U1|DiffClock|Add1~37\ = CARRY((!\U1|DiffClock|Add1~35\) # (!\U1|DiffClock|count_to\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count_to\(20),
	datad => VCC,
	cin => \U1|DiffClock|Add1~35\,
	combout => \U1|DiffClock|Add1~36_combout\,
	cout => \U1|DiffClock|Add1~37\);

-- Location: LCCOMB_X35_Y26_N28
\U1|DiffClock|count_to[20]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count_to[20]~8_combout\ = !\U1|DiffClock|Add1~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|DiffClock|Add1~36_combout\,
	combout => \U1|DiffClock|count_to[20]~8_combout\);

-- Location: LCFF_X35_Y26_N29
\U1|DiffClock|count_to[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count_to[20]~8_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(20));

-- Location: LCCOMB_X35_Y26_N18
\U1|DiffClock|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~40_combout\ = (\U1|DiffClock|count_to\(22) & ((GND) # (!\U1|DiffClock|Add1~39\))) # (!\U1|DiffClock|count_to\(22) & (\U1|DiffClock|Add1~39\ $ (GND)))
-- \U1|DiffClock|Add1~41\ = CARRY((\U1|DiffClock|count_to\(22)) # (!\U1|DiffClock|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count_to\(22),
	datad => VCC,
	cin => \U1|DiffClock|Add1~39\,
	combout => \U1|DiffClock|Add1~40_combout\,
	cout => \U1|DiffClock|Add1~41\);

-- Location: LCFF_X35_Y26_N19
\U1|DiffClock|count_to[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|Add1~40_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(22));

-- Location: LCCOMB_X35_Y26_N20
\U1|DiffClock|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~42_combout\ = \U1|DiffClock|count_to\(23) $ (!\U1|DiffClock|Add1~41\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(23),
	cin => \U1|DiffClock|Add1~41\,
	combout => \U1|DiffClock|Add1~42_combout\);

-- Location: LCFF_X35_Y26_N21
\U1|DiffClock|count_to[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|Add1~42_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(23));

-- Location: LCCOMB_X37_Y27_N8
\U1|DiffClock|count[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[0]~24_combout\ = \U1|DiffClock|count\(0) $ (VCC)
-- \U1|DiffClock|count[0]~25\ = CARRY(\U1|DiffClock|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count\(0),
	datad => VCC,
	combout => \U1|DiffClock|count[0]~24_combout\,
	cout => \U1|DiffClock|count[0]~25\);

-- Location: LCCOMB_X37_Y26_N30
\U1|DiffClock|count[23]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[23]~64_combout\ = (\U0|idle_connect~regout\ & ((\U1|DiffClock|LessThan0~42_combout\) # (\U1|DiffClock|Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|idle_connect~regout\,
	datac => \U1|DiffClock|LessThan0~42_combout\,
	datad => \U1|DiffClock|Equal0~14_combout\,
	combout => \U1|DiffClock|count[23]~64_combout\);

-- Location: LCFF_X37_Y27_N9
\U1|DiffClock|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[0]~24_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(0));

-- Location: LCCOMB_X37_Y27_N12
\U1|DiffClock|count[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[2]~28_combout\ = (\U1|DiffClock|count\(2) & (\U1|DiffClock|count[1]~27\ $ (GND))) # (!\U1|DiffClock|count\(2) & (!\U1|DiffClock|count[1]~27\ & VCC))
-- \U1|DiffClock|count[2]~29\ = CARRY((\U1|DiffClock|count\(2) & !\U1|DiffClock|count[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(2),
	datad => VCC,
	cin => \U1|DiffClock|count[1]~27\,
	combout => \U1|DiffClock|count[2]~28_combout\,
	cout => \U1|DiffClock|count[2]~29\);

-- Location: LCCOMB_X37_Y27_N14
\U1|DiffClock|count[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[3]~30_combout\ = (\U1|DiffClock|count\(3) & (!\U1|DiffClock|count[2]~29\)) # (!\U1|DiffClock|count\(3) & ((\U1|DiffClock|count[2]~29\) # (GND)))
-- \U1|DiffClock|count[3]~31\ = CARRY((!\U1|DiffClock|count[2]~29\) # (!\U1|DiffClock|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count\(3),
	datad => VCC,
	cin => \U1|DiffClock|count[2]~29\,
	combout => \U1|DiffClock|count[3]~30_combout\,
	cout => \U1|DiffClock|count[3]~31\);

-- Location: LCFF_X37_Y27_N15
\U1|DiffClock|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[3]~30_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(3));

-- Location: LCCOMB_X37_Y27_N18
\U1|DiffClock|count[5]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[5]~34_combout\ = (\U1|DiffClock|count\(5) & (!\U1|DiffClock|count[4]~33\)) # (!\U1|DiffClock|count\(5) & ((\U1|DiffClock|count[4]~33\) # (GND)))
-- \U1|DiffClock|count[5]~35\ = CARRY((!\U1|DiffClock|count[4]~33\) # (!\U1|DiffClock|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count\(5),
	datad => VCC,
	cin => \U1|DiffClock|count[4]~33\,
	combout => \U1|DiffClock|count[5]~34_combout\,
	cout => \U1|DiffClock|count[5]~35\);

-- Location: LCFF_X37_Y27_N19
\U1|DiffClock|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[5]~34_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(5));

-- Location: LCCOMB_X37_Y27_N22
\U1|DiffClock|count[7]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[7]~38_combout\ = (\U1|DiffClock|count\(7) & (!\U1|DiffClock|count[6]~37\)) # (!\U1|DiffClock|count\(7) & ((\U1|DiffClock|count[6]~37\) # (GND)))
-- \U1|DiffClock|count[7]~39\ = CARRY((!\U1|DiffClock|count[6]~37\) # (!\U1|DiffClock|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count\(7),
	datad => VCC,
	cin => \U1|DiffClock|count[6]~37\,
	combout => \U1|DiffClock|count[7]~38_combout\,
	cout => \U1|DiffClock|count[7]~39\);

-- Location: LCFF_X37_Y27_N23
\U1|DiffClock|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[7]~38_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(7));

-- Location: LCCOMB_X37_Y27_N24
\U1|DiffClock|count[8]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[8]~40_combout\ = (\U1|DiffClock|count\(8) & (\U1|DiffClock|count[7]~39\ $ (GND))) # (!\U1|DiffClock|count\(8) & (!\U1|DiffClock|count[7]~39\ & VCC))
-- \U1|DiffClock|count[8]~41\ = CARRY((\U1|DiffClock|count\(8) & !\U1|DiffClock|count[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(8),
	datad => VCC,
	cin => \U1|DiffClock|count[7]~39\,
	combout => \U1|DiffClock|count[8]~40_combout\,
	cout => \U1|DiffClock|count[8]~41\);

-- Location: LCCOMB_X37_Y27_N26
\U1|DiffClock|count[9]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[9]~42_combout\ = (\U1|DiffClock|count\(9) & (!\U1|DiffClock|count[8]~41\)) # (!\U1|DiffClock|count\(9) & ((\U1|DiffClock|count[8]~41\) # (GND)))
-- \U1|DiffClock|count[9]~43\ = CARRY((!\U1|DiffClock|count[8]~41\) # (!\U1|DiffClock|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count\(9),
	datad => VCC,
	cin => \U1|DiffClock|count[8]~41\,
	combout => \U1|DiffClock|count[9]~42_combout\,
	cout => \U1|DiffClock|count[9]~43\);

-- Location: LCFF_X37_Y27_N27
\U1|DiffClock|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[9]~42_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(9));

-- Location: LCCOMB_X37_Y27_N28
\U1|DiffClock|count[10]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[10]~44_combout\ = (\U1|DiffClock|count\(10) & (\U1|DiffClock|count[9]~43\ $ (GND))) # (!\U1|DiffClock|count\(10) & (!\U1|DiffClock|count[9]~43\ & VCC))
-- \U1|DiffClock|count[10]~45\ = CARRY((\U1|DiffClock|count\(10) & !\U1|DiffClock|count[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count\(10),
	datad => VCC,
	cin => \U1|DiffClock|count[9]~43\,
	combout => \U1|DiffClock|count[10]~44_combout\,
	cout => \U1|DiffClock|count[10]~45\);

-- Location: LCFF_X37_Y27_N29
\U1|DiffClock|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[10]~44_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(10));

-- Location: LCCOMB_X37_Y27_N30
\U1|DiffClock|count[11]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[11]~46_combout\ = (\U1|DiffClock|count\(11) & (!\U1|DiffClock|count[10]~45\)) # (!\U1|DiffClock|count\(11) & ((\U1|DiffClock|count[10]~45\) # (GND)))
-- \U1|DiffClock|count[11]~47\ = CARRY((!\U1|DiffClock|count[10]~45\) # (!\U1|DiffClock|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count\(11),
	datad => VCC,
	cin => \U1|DiffClock|count[10]~45\,
	combout => \U1|DiffClock|count[11]~46_combout\,
	cout => \U1|DiffClock|count[11]~47\);

-- Location: LCFF_X37_Y27_N31
\U1|DiffClock|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[11]~46_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(11));

-- Location: LCCOMB_X37_Y26_N0
\U1|DiffClock|count[12]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[12]~48_combout\ = (\U1|DiffClock|count\(12) & (\U1|DiffClock|count[11]~47\ $ (GND))) # (!\U1|DiffClock|count\(12) & (!\U1|DiffClock|count[11]~47\ & VCC))
-- \U1|DiffClock|count[12]~49\ = CARRY((\U1|DiffClock|count\(12) & !\U1|DiffClock|count[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count\(12),
	datad => VCC,
	cin => \U1|DiffClock|count[11]~47\,
	combout => \U1|DiffClock|count[12]~48_combout\,
	cout => \U1|DiffClock|count[12]~49\);

-- Location: LCFF_X37_Y26_N1
\U1|DiffClock|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[12]~48_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(12));

-- Location: LCCOMB_X37_Y26_N2
\U1|DiffClock|count[13]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[13]~50_combout\ = (\U1|DiffClock|count\(13) & (!\U1|DiffClock|count[12]~49\)) # (!\U1|DiffClock|count\(13) & ((\U1|DiffClock|count[12]~49\) # (GND)))
-- \U1|DiffClock|count[13]~51\ = CARRY((!\U1|DiffClock|count[12]~49\) # (!\U1|DiffClock|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count\(13),
	datad => VCC,
	cin => \U1|DiffClock|count[12]~49\,
	combout => \U1|DiffClock|count[13]~50_combout\,
	cout => \U1|DiffClock|count[13]~51\);

-- Location: LCFF_X37_Y26_N3
\U1|DiffClock|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[13]~50_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(13));

-- Location: LCCOMB_X37_Y26_N4
\U1|DiffClock|count[14]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[14]~52_combout\ = (\U1|DiffClock|count\(14) & (\U1|DiffClock|count[13]~51\ $ (GND))) # (!\U1|DiffClock|count\(14) & (!\U1|DiffClock|count[13]~51\ & VCC))
-- \U1|DiffClock|count[14]~53\ = CARRY((\U1|DiffClock|count\(14) & !\U1|DiffClock|count[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count\(14),
	datad => VCC,
	cin => \U1|DiffClock|count[13]~51\,
	combout => \U1|DiffClock|count[14]~52_combout\,
	cout => \U1|DiffClock|count[14]~53\);

-- Location: LCFF_X37_Y26_N5
\U1|DiffClock|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[14]~52_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(14));

-- Location: LCCOMB_X37_Y26_N6
\U1|DiffClock|count[15]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[15]~54_combout\ = (\U1|DiffClock|count\(15) & (!\U1|DiffClock|count[14]~53\)) # (!\U1|DiffClock|count\(15) & ((\U1|DiffClock|count[14]~53\) # (GND)))
-- \U1|DiffClock|count[15]~55\ = CARRY((!\U1|DiffClock|count[14]~53\) # (!\U1|DiffClock|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(15),
	datad => VCC,
	cin => \U1|DiffClock|count[14]~53\,
	combout => \U1|DiffClock|count[15]~54_combout\,
	cout => \U1|DiffClock|count[15]~55\);

-- Location: LCCOMB_X37_Y26_N8
\U1|DiffClock|count[16]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[16]~56_combout\ = (\U1|DiffClock|count\(16) & (\U1|DiffClock|count[15]~55\ $ (GND))) # (!\U1|DiffClock|count\(16) & (!\U1|DiffClock|count[15]~55\ & VCC))
-- \U1|DiffClock|count[16]~57\ = CARRY((\U1|DiffClock|count\(16) & !\U1|DiffClock|count[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count\(16),
	datad => VCC,
	cin => \U1|DiffClock|count[15]~55\,
	combout => \U1|DiffClock|count[16]~56_combout\,
	cout => \U1|DiffClock|count[16]~57\);

-- Location: LCFF_X37_Y26_N9
\U1|DiffClock|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[16]~56_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(16));

-- Location: LCCOMB_X37_Y26_N10
\U1|DiffClock|count[17]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[17]~58_combout\ = (\U1|DiffClock|count\(17) & (!\U1|DiffClock|count[16]~57\)) # (!\U1|DiffClock|count\(17) & ((\U1|DiffClock|count[16]~57\) # (GND)))
-- \U1|DiffClock|count[17]~59\ = CARRY((!\U1|DiffClock|count[16]~57\) # (!\U1|DiffClock|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(17),
	datad => VCC,
	cin => \U1|DiffClock|count[16]~57\,
	combout => \U1|DiffClock|count[17]~58_combout\,
	cout => \U1|DiffClock|count[17]~59\);

-- Location: LCCOMB_X37_Y26_N12
\U1|DiffClock|count[18]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[18]~60_combout\ = (\U1|DiffClock|count\(18) & (\U1|DiffClock|count[17]~59\ $ (GND))) # (!\U1|DiffClock|count\(18) & (!\U1|DiffClock|count[17]~59\ & VCC))
-- \U1|DiffClock|count[18]~61\ = CARRY((\U1|DiffClock|count\(18) & !\U1|DiffClock|count[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(18),
	datad => VCC,
	cin => \U1|DiffClock|count[17]~59\,
	combout => \U1|DiffClock|count[18]~60_combout\,
	cout => \U1|DiffClock|count[18]~61\);

-- Location: LCCOMB_X37_Y26_N14
\U1|DiffClock|count[19]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[19]~62_combout\ = (\U1|DiffClock|count\(19) & (!\U1|DiffClock|count[18]~61\)) # (!\U1|DiffClock|count\(19) & ((\U1|DiffClock|count[18]~61\) # (GND)))
-- \U1|DiffClock|count[19]~63\ = CARRY((!\U1|DiffClock|count[18]~61\) # (!\U1|DiffClock|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count\(19),
	datad => VCC,
	cin => \U1|DiffClock|count[18]~61\,
	combout => \U1|DiffClock|count[19]~62_combout\,
	cout => \U1|DiffClock|count[19]~63\);

-- Location: LCFF_X37_Y26_N15
\U1|DiffClock|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[19]~62_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(19));

-- Location: LCCOMB_X37_Y26_N16
\U1|DiffClock|count[20]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[20]~65_combout\ = (\U1|DiffClock|count\(20) & (\U1|DiffClock|count[19]~63\ $ (GND))) # (!\U1|DiffClock|count\(20) & (!\U1|DiffClock|count[19]~63\ & VCC))
-- \U1|DiffClock|count[20]~66\ = CARRY((\U1|DiffClock|count\(20) & !\U1|DiffClock|count[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(20),
	datad => VCC,
	cin => \U1|DiffClock|count[19]~63\,
	combout => \U1|DiffClock|count[20]~65_combout\,
	cout => \U1|DiffClock|count[20]~66\);

-- Location: LCCOMB_X37_Y26_N18
\U1|DiffClock|count[21]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count[21]~67_combout\ = (\U1|DiffClock|count\(21) & (!\U1|DiffClock|count[20]~66\)) # (!\U1|DiffClock|count\(21) & ((\U1|DiffClock|count[20]~66\) # (GND)))
-- \U1|DiffClock|count[21]~68\ = CARRY((!\U1|DiffClock|count[20]~66\) # (!\U1|DiffClock|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count\(21),
	datad => VCC,
	cin => \U1|DiffClock|count[20]~66\,
	combout => \U1|DiffClock|count[21]~67_combout\,
	cout => \U1|DiffClock|count[21]~68\);

-- Location: LCFF_X37_Y26_N19
\U1|DiffClock|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[21]~67_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(21));

-- Location: LCFF_X37_Y26_N21
\U1|DiffClock|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[22]~69_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(22));

-- Location: LCFF_X37_Y26_N13
\U1|DiffClock|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[18]~60_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(18));

-- Location: LCFF_X37_Y26_N11
\U1|DiffClock|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[17]~58_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(17));

-- Location: LCCOMB_X35_Y27_N24
\U1|DiffClock|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~14_combout\ = (\U1|DiffClock|count_to\(9) & (\U1|DiffClock|Add1~13\ & VCC)) # (!\U1|DiffClock|count_to\(9) & (!\U1|DiffClock|Add1~13\))
-- \U1|DiffClock|Add1~15\ = CARRY((!\U1|DiffClock|count_to\(9) & !\U1|DiffClock|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(9),
	datad => VCC,
	cin => \U1|DiffClock|Add1~13\,
	combout => \U1|DiffClock|Add1~14_combout\,
	cout => \U1|DiffClock|Add1~15\);

-- Location: LCFF_X35_Y27_N25
\U1|DiffClock|count_to[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|Add1~14_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(9));

-- Location: LCFF_X37_Y27_N25
\U1|DiffClock|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[8]~40_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(8));

-- Location: LCFF_X37_Y27_N13
\U1|DiffClock|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[2]~28_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(2));

-- Location: LCCOMB_X36_Y27_N10
\U1|DiffClock|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~1_cout\ = CARRY((\U1|DiffClock|count_to\(2) & !\U1|DiffClock|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(2),
	datab => \U1|DiffClock|count\(2),
	datad => VCC,
	cout => \U1|DiffClock|LessThan0~1_cout\);

-- Location: LCCOMB_X36_Y27_N12
\U1|DiffClock|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~3_cout\ = CARRY((\U1|DiffClock|count_to\(3) & (\U1|DiffClock|count\(3) & !\U1|DiffClock|LessThan0~1_cout\)) # (!\U1|DiffClock|count_to\(3) & ((\U1|DiffClock|count\(3)) # (!\U1|DiffClock|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(3),
	datab => \U1|DiffClock|count\(3),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~1_cout\,
	cout => \U1|DiffClock|LessThan0~3_cout\);

-- Location: LCCOMB_X36_Y27_N14
\U1|DiffClock|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~5_cout\ = CARRY((\U1|DiffClock|count\(4) & (\U1|DiffClock|count_to\(4) & !\U1|DiffClock|LessThan0~3_cout\)) # (!\U1|DiffClock|count\(4) & ((\U1|DiffClock|count_to\(4)) # (!\U1|DiffClock|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(4),
	datab => \U1|DiffClock|count_to\(4),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~3_cout\,
	cout => \U1|DiffClock|LessThan0~5_cout\);

-- Location: LCCOMB_X36_Y27_N16
\U1|DiffClock|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~7_cout\ = CARRY((\U1|DiffClock|count_to\(5) & (\U1|DiffClock|count\(5) & !\U1|DiffClock|LessThan0~5_cout\)) # (!\U1|DiffClock|count_to\(5) & ((\U1|DiffClock|count\(5)) # (!\U1|DiffClock|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(5),
	datab => \U1|DiffClock|count\(5),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~5_cout\,
	cout => \U1|DiffClock|LessThan0~7_cout\);

-- Location: LCCOMB_X36_Y27_N18
\U1|DiffClock|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~9_cout\ = CARRY((\U1|DiffClock|count\(6) & (\U1|DiffClock|count_to\(6) & !\U1|DiffClock|LessThan0~7_cout\)) # (!\U1|DiffClock|count\(6) & ((\U1|DiffClock|count_to\(6)) # (!\U1|DiffClock|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(6),
	datab => \U1|DiffClock|count_to\(6),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~7_cout\,
	cout => \U1|DiffClock|LessThan0~9_cout\);

-- Location: LCCOMB_X36_Y27_N20
\U1|DiffClock|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~11_cout\ = CARRY((\U1|DiffClock|count_to\(7) & ((\U1|DiffClock|count\(7)) # (!\U1|DiffClock|LessThan0~9_cout\))) # (!\U1|DiffClock|count_to\(7) & (\U1|DiffClock|count\(7) & !\U1|DiffClock|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(7),
	datab => \U1|DiffClock|count\(7),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~9_cout\,
	cout => \U1|DiffClock|LessThan0~11_cout\);

-- Location: LCCOMB_X36_Y27_N22
\U1|DiffClock|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~13_cout\ = CARRY((\U1|DiffClock|count_to\(8) & ((!\U1|DiffClock|LessThan0~11_cout\) # (!\U1|DiffClock|count\(8)))) # (!\U1|DiffClock|count_to\(8) & (!\U1|DiffClock|count\(8) & !\U1|DiffClock|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(8),
	datab => \U1|DiffClock|count\(8),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~11_cout\,
	cout => \U1|DiffClock|LessThan0~13_cout\);

-- Location: LCCOMB_X36_Y27_N24
\U1|DiffClock|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~15_cout\ = CARRY((\U1|DiffClock|count\(9) & ((!\U1|DiffClock|LessThan0~13_cout\) # (!\U1|DiffClock|count_to\(9)))) # (!\U1|DiffClock|count\(9) & (!\U1|DiffClock|count_to\(9) & !\U1|DiffClock|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(9),
	datab => \U1|DiffClock|count_to\(9),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~13_cout\,
	cout => \U1|DiffClock|LessThan0~15_cout\);

-- Location: LCCOMB_X36_Y27_N26
\U1|DiffClock|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~17_cout\ = CARRY((\U1|DiffClock|count_to\(10) & (!\U1|DiffClock|count\(10) & !\U1|DiffClock|LessThan0~15_cout\)) # (!\U1|DiffClock|count_to\(10) & ((!\U1|DiffClock|LessThan0~15_cout\) # (!\U1|DiffClock|count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(10),
	datab => \U1|DiffClock|count\(10),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~15_cout\,
	cout => \U1|DiffClock|LessThan0~17_cout\);

-- Location: LCCOMB_X36_Y27_N28
\U1|DiffClock|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~19_cout\ = CARRY((\U1|DiffClock|count_to\(11) & (\U1|DiffClock|count\(11) & !\U1|DiffClock|LessThan0~17_cout\)) # (!\U1|DiffClock|count_to\(11) & ((\U1|DiffClock|count\(11)) # (!\U1|DiffClock|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(11),
	datab => \U1|DiffClock|count\(11),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~17_cout\,
	cout => \U1|DiffClock|LessThan0~19_cout\);

-- Location: LCCOMB_X36_Y27_N30
\U1|DiffClock|LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~21_cout\ = CARRY((\U1|DiffClock|count\(12) & (\U1|DiffClock|count_to\(12) & !\U1|DiffClock|LessThan0~19_cout\)) # (!\U1|DiffClock|count\(12) & ((\U1|DiffClock|count_to\(12)) # (!\U1|DiffClock|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(12),
	datab => \U1|DiffClock|count_to\(12),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~19_cout\,
	cout => \U1|DiffClock|LessThan0~21_cout\);

-- Location: LCCOMB_X36_Y26_N0
\U1|DiffClock|LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~23_cout\ = CARRY((\U1|DiffClock|count\(13) & ((!\U1|DiffClock|LessThan0~21_cout\) # (!\U1|DiffClock|count_to\(13)))) # (!\U1|DiffClock|count\(13) & (!\U1|DiffClock|count_to\(13) & !\U1|DiffClock|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(13),
	datab => \U1|DiffClock|count_to\(13),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~21_cout\,
	cout => \U1|DiffClock|LessThan0~23_cout\);

-- Location: LCCOMB_X36_Y26_N2
\U1|DiffClock|LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~25_cout\ = CARRY((\U1|DiffClock|count\(14) & (\U1|DiffClock|count_to\(14) & !\U1|DiffClock|LessThan0~23_cout\)) # (!\U1|DiffClock|count\(14) & ((\U1|DiffClock|count_to\(14)) # (!\U1|DiffClock|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(14),
	datab => \U1|DiffClock|count_to\(14),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~23_cout\,
	cout => \U1|DiffClock|LessThan0~25_cout\);

-- Location: LCCOMB_X36_Y26_N4
\U1|DiffClock|LessThan0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~27_cout\ = CARRY((\U1|DiffClock|count\(15) & ((\U1|DiffClock|count_to\(15)) # (!\U1|DiffClock|LessThan0~25_cout\))) # (!\U1|DiffClock|count\(15) & (\U1|DiffClock|count_to\(15) & !\U1|DiffClock|LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(15),
	datab => \U1|DiffClock|count_to\(15),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~25_cout\,
	cout => \U1|DiffClock|LessThan0~27_cout\);

-- Location: LCCOMB_X36_Y26_N6
\U1|DiffClock|LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~29_cout\ = CARRY((\U1|DiffClock|count_to\(16) & ((!\U1|DiffClock|LessThan0~27_cout\) # (!\U1|DiffClock|count\(16)))) # (!\U1|DiffClock|count_to\(16) & (!\U1|DiffClock|count\(16) & !\U1|DiffClock|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(16),
	datab => \U1|DiffClock|count\(16),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~27_cout\,
	cout => \U1|DiffClock|LessThan0~29_cout\);

-- Location: LCCOMB_X36_Y26_N8
\U1|DiffClock|LessThan0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~31_cout\ = CARRY((\U1|DiffClock|count_to\(17) & ((\U1|DiffClock|count\(17)) # (!\U1|DiffClock|LessThan0~29_cout\))) # (!\U1|DiffClock|count_to\(17) & (\U1|DiffClock|count\(17) & !\U1|DiffClock|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(17),
	datab => \U1|DiffClock|count\(17),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~29_cout\,
	cout => \U1|DiffClock|LessThan0~31_cout\);

-- Location: LCCOMB_X36_Y26_N10
\U1|DiffClock|LessThan0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~33_cout\ = CARRY((\U1|DiffClock|count_to\(18) & (!\U1|DiffClock|count\(18) & !\U1|DiffClock|LessThan0~31_cout\)) # (!\U1|DiffClock|count_to\(18) & ((!\U1|DiffClock|LessThan0~31_cout\) # (!\U1|DiffClock|count\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(18),
	datab => \U1|DiffClock|count\(18),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~31_cout\,
	cout => \U1|DiffClock|LessThan0~33_cout\);

-- Location: LCCOMB_X36_Y26_N12
\U1|DiffClock|LessThan0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~35_cout\ = CARRY((\U1|DiffClock|count_to\(19) & ((\U1|DiffClock|count\(19)) # (!\U1|DiffClock|LessThan0~33_cout\))) # (!\U1|DiffClock|count_to\(19) & (\U1|DiffClock|count\(19) & !\U1|DiffClock|LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(19),
	datab => \U1|DiffClock|count\(19),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~33_cout\,
	cout => \U1|DiffClock|LessThan0~35_cout\);

-- Location: LCCOMB_X36_Y26_N14
\U1|DiffClock|LessThan0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~37_cout\ = CARRY((\U1|DiffClock|count\(20) & (!\U1|DiffClock|count_to\(20) & !\U1|DiffClock|LessThan0~35_cout\)) # (!\U1|DiffClock|count\(20) & ((!\U1|DiffClock|LessThan0~35_cout\) # (!\U1|DiffClock|count_to\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(20),
	datab => \U1|DiffClock|count_to\(20),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~35_cout\,
	cout => \U1|DiffClock|LessThan0~37_cout\);

-- Location: LCCOMB_X36_Y26_N16
\U1|DiffClock|LessThan0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~39_cout\ = CARRY((\U1|DiffClock|count_to\(21) & (\U1|DiffClock|count\(21) & !\U1|DiffClock|LessThan0~37_cout\)) # (!\U1|DiffClock|count_to\(21) & ((\U1|DiffClock|count\(21)) # (!\U1|DiffClock|LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(21),
	datab => \U1|DiffClock|count\(21),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~37_cout\,
	cout => \U1|DiffClock|LessThan0~39_cout\);

-- Location: LCCOMB_X36_Y26_N18
\U1|DiffClock|LessThan0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~41_cout\ = CARRY((\U1|DiffClock|count_to\(22) & ((!\U1|DiffClock|LessThan0~39_cout\) # (!\U1|DiffClock|count\(22)))) # (!\U1|DiffClock|count_to\(22) & (!\U1|DiffClock|count\(22) & !\U1|DiffClock|LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(22),
	datab => \U1|DiffClock|count\(22),
	datad => VCC,
	cin => \U1|DiffClock|LessThan0~39_cout\,
	cout => \U1|DiffClock|LessThan0~41_cout\);

-- Location: LCCOMB_X36_Y26_N20
\U1|DiffClock|LessThan0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|LessThan0~42_combout\ = (\U1|DiffClock|count\(23) & (\U1|DiffClock|LessThan0~41_cout\ & \U1|DiffClock|count_to\(23))) # (!\U1|DiffClock|count\(23) & ((\U1|DiffClock|LessThan0~41_cout\) # (\U1|DiffClock|count_to\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(23),
	datad => \U1|DiffClock|count_to\(23),
	cin => \U1|DiffClock|LessThan0~41_cout\,
	combout => \U1|DiffClock|LessThan0~42_combout\);

-- Location: LCCOMB_X35_Y27_N8
\U1|DiffClock|count_to[23]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count_to[23]~0_combout\ = (\U1|DiffClock|LessThan1~7_combout\ & (\U0|idle_connect~regout\ & (!\U1|DiffClock|LessThan0~42_combout\ & \U1|DiffClock|Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|LessThan1~7_combout\,
	datab => \U0|idle_connect~regout\,
	datac => \U1|DiffClock|LessThan0~42_combout\,
	datad => \U1|DiffClock|Equal0~14_combout\,
	combout => \U1|DiffClock|count_to[23]~0_combout\);

-- Location: LCFF_X35_Y27_N15
\U1|DiffClock|count_to[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|Add1~4_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(4));

-- Location: LCCOMB_X35_Y27_N18
\U1|DiffClock|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~8_combout\ = (\U1|DiffClock|count_to\(6) & (\U1|DiffClock|Add1~7\ $ (GND))) # (!\U1|DiffClock|count_to\(6) & (!\U1|DiffClock|Add1~7\ & VCC))
-- \U1|DiffClock|Add1~9\ = CARRY((\U1|DiffClock|count_to\(6) & !\U1|DiffClock|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count_to\(6),
	datad => VCC,
	cin => \U1|DiffClock|Add1~7\,
	combout => \U1|DiffClock|Add1~8_combout\,
	cout => \U1|DiffClock|Add1~9\);

-- Location: LCFF_X35_Y27_N19
\U1|DiffClock|count_to[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|Add1~8_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(6));

-- Location: LCCOMB_X35_Y27_N20
\U1|DiffClock|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~10_combout\ = (\U1|DiffClock|count_to\(7) & ((\U1|DiffClock|Add1~9\) # (GND))) # (!\U1|DiffClock|count_to\(7) & (!\U1|DiffClock|Add1~9\))
-- \U1|DiffClock|Add1~11\ = CARRY((\U1|DiffClock|count_to\(7)) # (!\U1|DiffClock|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count_to\(7),
	datad => VCC,
	cin => \U1|DiffClock|Add1~9\,
	combout => \U1|DiffClock|Add1~10_combout\,
	cout => \U1|DiffClock|Add1~11\);

-- Location: LCCOMB_X35_Y27_N0
\U1|DiffClock|count_to[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count_to[7]~4_combout\ = !\U1|DiffClock|Add1~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|DiffClock|Add1~10_combout\,
	combout => \U1|DiffClock|count_to[7]~4_combout\);

-- Location: LCFF_X35_Y27_N1
\U1|DiffClock|count_to[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count_to[7]~4_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(7));

-- Location: LCCOMB_X35_Y27_N22
\U1|DiffClock|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~12_combout\ = (\U1|DiffClock|count_to\(8) & (\U1|DiffClock|Add1~11\ $ (GND))) # (!\U1|DiffClock|count_to\(8) & (!\U1|DiffClock|Add1~11\ & VCC))
-- \U1|DiffClock|Add1~13\ = CARRY((\U1|DiffClock|count_to\(8) & !\U1|DiffClock|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count_to\(8),
	datad => VCC,
	cin => \U1|DiffClock|Add1~11\,
	combout => \U1|DiffClock|Add1~12_combout\,
	cout => \U1|DiffClock|Add1~13\);

-- Location: LCFF_X35_Y27_N23
\U1|DiffClock|count_to[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|Add1~12_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(8));

-- Location: LCCOMB_X35_Y27_N26
\U1|DiffClock|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~16_combout\ = (\U1|DiffClock|count_to\(10) & (\U1|DiffClock|Add1~15\ $ (GND))) # (!\U1|DiffClock|count_to\(10) & ((GND) # (!\U1|DiffClock|Add1~15\)))
-- \U1|DiffClock|Add1~17\ = CARRY((!\U1|DiffClock|Add1~15\) # (!\U1|DiffClock|count_to\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count_to\(10),
	datad => VCC,
	cin => \U1|DiffClock|Add1~15\,
	combout => \U1|DiffClock|Add1~16_combout\,
	cout => \U1|DiffClock|Add1~17\);

-- Location: LCCOMB_X35_Y27_N2
\U1|DiffClock|count_to[10]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count_to[10]~5_combout\ = !\U1|DiffClock|Add1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|DiffClock|Add1~16_combout\,
	combout => \U1|DiffClock|count_to[10]~5_combout\);

-- Location: LCFF_X35_Y27_N3
\U1|DiffClock|count_to[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count_to[10]~5_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(10));

-- Location: LCCOMB_X35_Y27_N28
\U1|DiffClock|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~18_combout\ = (\U1|DiffClock|count_to\(11) & (!\U1|DiffClock|Add1~17\)) # (!\U1|DiffClock|count_to\(11) & ((\U1|DiffClock|Add1~17\) # (GND)))
-- \U1|DiffClock|Add1~19\ = CARRY((!\U1|DiffClock|Add1~17\) # (!\U1|DiffClock|count_to\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count_to\(11),
	datad => VCC,
	cin => \U1|DiffClock|Add1~17\,
	combout => \U1|DiffClock|Add1~18_combout\,
	cout => \U1|DiffClock|Add1~19\);

-- Location: LCFF_X35_Y27_N29
\U1|DiffClock|count_to[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|Add1~18_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(11));

-- Location: LCCOMB_X35_Y27_N30
\U1|DiffClock|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~20_combout\ = (\U1|DiffClock|count_to\(12) & ((GND) # (!\U1|DiffClock|Add1~19\))) # (!\U1|DiffClock|count_to\(12) & (\U1|DiffClock|Add1~19\ $ (GND)))
-- \U1|DiffClock|Add1~21\ = CARRY((\U1|DiffClock|count_to\(12)) # (!\U1|DiffClock|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count_to\(12),
	datad => VCC,
	cin => \U1|DiffClock|Add1~19\,
	combout => \U1|DiffClock|Add1~20_combout\,
	cout => \U1|DiffClock|Add1~21\);

-- Location: LCFF_X35_Y27_N31
\U1|DiffClock|count_to[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|Add1~20_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(12));

-- Location: LCCOMB_X35_Y26_N0
\U1|DiffClock|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~22_combout\ = (\U1|DiffClock|count_to\(13) & (\U1|DiffClock|Add1~21\ & VCC)) # (!\U1|DiffClock|count_to\(13) & (!\U1|DiffClock|Add1~21\))
-- \U1|DiffClock|Add1~23\ = CARRY((!\U1|DiffClock|count_to\(13) & !\U1|DiffClock|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count_to\(13),
	datad => VCC,
	cin => \U1|DiffClock|Add1~21\,
	combout => \U1|DiffClock|Add1~22_combout\,
	cout => \U1|DiffClock|Add1~23\);

-- Location: LCFF_X35_Y26_N1
\U1|DiffClock|count_to[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|Add1~22_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(13));

-- Location: LCCOMB_X35_Y26_N2
\U1|DiffClock|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Add1~24_combout\ = (\U1|DiffClock|count_to\(14) & ((GND) # (!\U1|DiffClock|Add1~23\))) # (!\U1|DiffClock|count_to\(14) & (\U1|DiffClock|Add1~23\ $ (GND)))
-- \U1|DiffClock|Add1~25\ = CARRY((\U1|DiffClock|count_to\(14)) # (!\U1|DiffClock|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|DiffClock|count_to\(14),
	datad => VCC,
	cin => \U1|DiffClock|Add1~23\,
	combout => \U1|DiffClock|Add1~24_combout\,
	cout => \U1|DiffClock|Add1~25\);

-- Location: LCFF_X35_Y26_N3
\U1|DiffClock|count_to[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|Add1~24_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(14));

-- Location: LCCOMB_X35_Y27_N4
\U1|DiffClock|count_to[15]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count_to[15]~6_combout\ = !\U1|DiffClock|Add1~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|DiffClock|Add1~26_combout\,
	combout => \U1|DiffClock|count_to[15]~6_combout\);

-- Location: LCFF_X35_Y27_N5
\U1|DiffClock|count_to[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count_to[15]~6_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(15));

-- Location: LCFF_X37_Y26_N7
\U1|DiffClock|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[15]~54_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(15));

-- Location: LCCOMB_X36_Y26_N24
\U1|DiffClock|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Equal0~8_combout\ = (\U1|DiffClock|count_to\(14) & (\U1|DiffClock|count\(14) & (\U1|DiffClock|count_to\(15) $ (\U1|DiffClock|count\(15))))) # (!\U1|DiffClock|count_to\(14) & (!\U1|DiffClock|count\(14) & (\U1|DiffClock|count_to\(15) $ 
-- (\U1|DiffClock|count\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(14),
	datab => \U1|DiffClock|count_to\(15),
	datac => \U1|DiffClock|count\(15),
	datad => \U1|DiffClock|count\(14),
	combout => \U1|DiffClock|Equal0~8_combout\);

-- Location: LCFF_X35_Y26_N7
\U1|DiffClock|count_to[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|Add1~28_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(16));

-- Location: LCCOMB_X36_Y26_N26
\U1|DiffClock|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Equal0~9_combout\ = (\U1|DiffClock|count\(16) & (\U1|DiffClock|count_to\(16) & (\U1|DiffClock|count\(17) $ (\U1|DiffClock|count_to\(17))))) # (!\U1|DiffClock|count\(16) & (!\U1|DiffClock|count_to\(16) & (\U1|DiffClock|count\(17) $ 
-- (\U1|DiffClock|count_to\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(16),
	datab => \U1|DiffClock|count\(17),
	datac => \U1|DiffClock|count_to\(16),
	datad => \U1|DiffClock|count_to\(17),
	combout => \U1|DiffClock|Equal0~9_combout\);

-- Location: LCCOMB_X38_Y26_N0
\U1|DiffClock|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Equal0~7_combout\ = (\U1|DiffClock|count\(13) & (\U1|DiffClock|count_to\(13) & (\U1|DiffClock|count\(12) $ (!\U1|DiffClock|count_to\(12))))) # (!\U1|DiffClock|count\(13) & (!\U1|DiffClock|count_to\(13) & (\U1|DiffClock|count\(12) $ 
-- (!\U1|DiffClock|count_to\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(13),
	datab => \U1|DiffClock|count_to\(13),
	datac => \U1|DiffClock|count\(12),
	datad => \U1|DiffClock|count_to\(12),
	combout => \U1|DiffClock|Equal0~7_combout\);

-- Location: LCCOMB_X38_Y26_N2
\U1|DiffClock|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Equal0~10_combout\ = (\U1|DiffClock|Equal0~6_combout\ & (\U1|DiffClock|Equal0~8_combout\ & (\U1|DiffClock|Equal0~9_combout\ & \U1|DiffClock|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|Equal0~6_combout\,
	datab => \U1|DiffClock|Equal0~8_combout\,
	datac => \U1|DiffClock|Equal0~9_combout\,
	datad => \U1|DiffClock|Equal0~7_combout\,
	combout => \U1|DiffClock|Equal0~10_combout\);

-- Location: LCCOMB_X35_Y26_N24
\U1|DiffClock|count_to[18]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|count_to[18]~3_combout\ = !\U1|DiffClock|Add1~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|DiffClock|Add1~32_combout\,
	combout => \U1|DiffClock|count_to[18]~3_combout\);

-- Location: LCFF_X35_Y26_N25
\U1|DiffClock|count_to[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count_to[18]~3_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|DiffClock|count_to[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count_to\(18));

-- Location: LCCOMB_X36_Y26_N30
\U1|DiffClock|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Equal0~0_combout\ = (\U1|DiffClock|count_to\(19) & (!\U1|DiffClock|count\(19) & (\U1|DiffClock|count\(18) $ (\U1|DiffClock|count_to\(18))))) # (!\U1|DiffClock|count_to\(19) & (\U1|DiffClock|count\(19) & (\U1|DiffClock|count\(18) $ 
-- (\U1|DiffClock|count_to\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(19),
	datab => \U1|DiffClock|count\(19),
	datac => \U1|DiffClock|count\(18),
	datad => \U1|DiffClock|count_to\(18),
	combout => \U1|DiffClock|Equal0~0_combout\);

-- Location: LCFF_X37_Y26_N17
\U1|DiffClock|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|count[20]~65_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	sclr => \U1|DiffClock|ALT_INV_LessThan0~42_combout\,
	ena => \U1|DiffClock|count[23]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|count\(20));

-- Location: LCCOMB_X37_Y26_N28
\U1|DiffClock|Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Equal0~11_combout\ = (\U1|DiffClock|count_to\(21) & (\U1|DiffClock|count\(21) & (\U1|DiffClock|count_to\(20) $ (\U1|DiffClock|count\(20))))) # (!\U1|DiffClock|count_to\(21) & (!\U1|DiffClock|count\(21) & (\U1|DiffClock|count_to\(20) $ 
-- (\U1|DiffClock|count\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count_to\(21),
	datab => \U1|DiffClock|count_to\(20),
	datac => \U1|DiffClock|count\(20),
	datad => \U1|DiffClock|count\(21),
	combout => \U1|DiffClock|Equal0~11_combout\);

-- Location: LCCOMB_X36_Y26_N28
\U1|DiffClock|Equal0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Equal0~12_combout\ = (\U1|DiffClock|count\(23) & (\U1|DiffClock|count_to\(23) & (\U1|DiffClock|count_to\(22) $ (!\U1|DiffClock|count\(22))))) # (!\U1|DiffClock|count\(23) & (!\U1|DiffClock|count_to\(23) & (\U1|DiffClock|count_to\(22) $ 
-- (!\U1|DiffClock|count\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(23),
	datab => \U1|DiffClock|count_to\(23),
	datac => \U1|DiffClock|count_to\(22),
	datad => \U1|DiffClock|count\(22),
	combout => \U1|DiffClock|Equal0~12_combout\);

-- Location: LCCOMB_X38_Y26_N12
\U1|DiffClock|Equal0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Equal0~13_combout\ = (!\U1|DiffClock|count\(1) & (\U1|DiffClock|Equal0~11_combout\ & (\U1|DiffClock|Equal0~12_combout\ & !\U1|DiffClock|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|count\(1),
	datab => \U1|DiffClock|Equal0~11_combout\,
	datac => \U1|DiffClock|Equal0~12_combout\,
	datad => \U1|DiffClock|count\(0),
	combout => \U1|DiffClock|Equal0~13_combout\);

-- Location: LCCOMB_X38_Y26_N6
\U1|DiffClock|Equal0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|Equal0~14_combout\ = (\U1|DiffClock|Equal0~5_combout\ & (\U1|DiffClock|Equal0~10_combout\ & (\U1|DiffClock|Equal0~0_combout\ & \U1|DiffClock|Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|Equal0~5_combout\,
	datab => \U1|DiffClock|Equal0~10_combout\,
	datac => \U1|DiffClock|Equal0~0_combout\,
	datad => \U1|DiffClock|Equal0~13_combout\,
	combout => \U1|DiffClock|Equal0~14_combout\);

-- Location: LCCOMB_X37_Y26_N24
\U1|DiffClock|slowclock~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|DiffClock|slowclock~0_combout\ = (\U1|Puck_Movement|puck_x_direction[0]~0_combout\ & (!\U1|DiffClock|LessThan0~42_combout\ & ((\U1|DiffClock|slowclock~regout\) # (\U1|DiffClock|Equal0~14_combout\)))) # 
-- (!\U1|Puck_Movement|puck_x_direction[0]~0_combout\ & (((\U1|DiffClock|slowclock~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|DiffClock|LessThan0~42_combout\,
	datab => \U1|Puck_Movement|puck_x_direction[0]~0_combout\,
	datac => \U1|DiffClock|slowclock~regout\,
	datad => \U1|DiffClock|Equal0~14_combout\,
	combout => \U1|DiffClock|slowclock~0_combout\);

-- Location: LCFF_X37_Y26_N25
\U1|DiffClock|slowclock\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLOCK_50~clkctrl_outclk\,
	datain => \U1|DiffClock|slowclock~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|DiffClock|slowclock~regout\);

-- Location: LCCOMB_X33_Y26_N0
\U1|Puck_Movement|puck_x_coord_temp[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\ = (\U0|idle_connect~regout\ & \U1|DiffClock|slowclock~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|idle_connect~regout\,
	datad => \U1|DiffClock|slowclock~regout\,
	combout => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\);

-- Location: LCFF_X33_Y26_N29
\U1|Puck_Movement|puck_y_vector[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Puck_Movement|puck_y_vector[0]~1_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Puck_Movement|puck_y_vector\(0));

-- Location: LCCOMB_X33_Y26_N2
\U1|Puck_Movement|puck_y_vector~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_y_vector~0_combout\ = \U1|Collision|puck_boundary~regout\ $ (!\U1|Puck_Movement|puck_y_vector\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|puck_boundary~regout\,
	datad => \U1|Puck_Movement|puck_y_vector\(0),
	combout => \U1|Puck_Movement|puck_y_vector~0_combout\);

-- Location: LCCOMB_X33_Y26_N14
\U1|Puck_Movement|puck_y_coord_temp[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_y_coord_temp[2]~4_combout\ = (\U1|Puck_Movement|puck_y_coord_temp\(2) & ((\U1|Puck_Movement|puck_y_vector~0_combout\ & (\U1|Puck_Movement|puck_y_coord[1]~5\ & VCC)) # (!\U1|Puck_Movement|puck_y_vector~0_combout\ & 
-- (!\U1|Puck_Movement|puck_y_coord[1]~5\)))) # (!\U1|Puck_Movement|puck_y_coord_temp\(2) & ((\U1|Puck_Movement|puck_y_vector~0_combout\ & (!\U1|Puck_Movement|puck_y_coord[1]~5\)) # (!\U1|Puck_Movement|puck_y_vector~0_combout\ & 
-- ((\U1|Puck_Movement|puck_y_coord[1]~5\) # (GND)))))
-- \U1|Puck_Movement|puck_y_coord_temp[2]~5\ = CARRY((\U1|Puck_Movement|puck_y_coord_temp\(2) & (!\U1|Puck_Movement|puck_y_vector~0_combout\ & !\U1|Puck_Movement|puck_y_coord[1]~5\)) # (!\U1|Puck_Movement|puck_y_coord_temp\(2) & 
-- ((!\U1|Puck_Movement|puck_y_coord[1]~5\) # (!\U1|Puck_Movement|puck_y_vector~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord_temp\(2),
	datab => \U1|Puck_Movement|puck_y_vector~0_combout\,
	datad => VCC,
	cin => \U1|Puck_Movement|puck_y_coord[1]~5\,
	combout => \U1|Puck_Movement|puck_y_coord_temp[2]~4_combout\,
	cout => \U1|Puck_Movement|puck_y_coord_temp[2]~5\);

-- Location: LCFF_X33_Y26_N15
\U1|Puck_Movement|puck_y_coord_temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Puck_Movement|puck_y_coord_temp[2]~4_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Puck_Movement|puck_y_coord_temp\(2));

-- Location: LCCOMB_X33_Y26_N10
\U1|Puck_Movement|puck_y_coord[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_y_coord[1]~3_cout\ = CARRY((\U1|Puck_Movement|Add5~1_combout\ & !\U1|Puck_Movement|puck_y_vector~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|Add5~1_combout\,
	datab => \U1|Puck_Movement|puck_y_vector~0_combout\,
	datad => VCC,
	cout => \U1|Puck_Movement|puck_y_coord[1]~3_cout\);

-- Location: LCCOMB_X33_Y26_N12
\U1|Puck_Movement|puck_y_coord[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_y_coord[1]~4_combout\ = (\U1|Puck_Movement|puck_y_coord\(1) & ((\U1|Puck_Movement|Add5~0_combout\ & (\U1|Puck_Movement|puck_y_coord[1]~3_cout\ & VCC)) # (!\U1|Puck_Movement|Add5~0_combout\ & 
-- (!\U1|Puck_Movement|puck_y_coord[1]~3_cout\)))) # (!\U1|Puck_Movement|puck_y_coord\(1) & ((\U1|Puck_Movement|Add5~0_combout\ & (!\U1|Puck_Movement|puck_y_coord[1]~3_cout\)) # (!\U1|Puck_Movement|Add5~0_combout\ & 
-- ((\U1|Puck_Movement|puck_y_coord[1]~3_cout\) # (GND)))))
-- \U1|Puck_Movement|puck_y_coord[1]~5\ = CARRY((\U1|Puck_Movement|puck_y_coord\(1) & (!\U1|Puck_Movement|Add5~0_combout\ & !\U1|Puck_Movement|puck_y_coord[1]~3_cout\)) # (!\U1|Puck_Movement|puck_y_coord\(1) & ((!\U1|Puck_Movement|puck_y_coord[1]~3_cout\) # 
-- (!\U1|Puck_Movement|Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord\(1),
	datab => \U1|Puck_Movement|Add5~0_combout\,
	datad => VCC,
	cin => \U1|Puck_Movement|puck_y_coord[1]~3_cout\,
	combout => \U1|Puck_Movement|puck_y_coord[1]~4_combout\,
	cout => \U1|Puck_Movement|puck_y_coord[1]~5\);

-- Location: LCFF_X33_Y26_N13
\U1|Puck_Movement|puck_y_coord[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Puck_Movement|puck_y_coord[1]~4_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Puck_Movement|puck_y_coord\(1));

-- Location: LCCOMB_X33_Y26_N30
\U1|Collision|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|process_0~4_combout\ = (\U1|Puck_Movement|puck_x_coord\(0) & (\U1|Puck_Movement|puck_y_coord\(6) & (!\U1|Puck_Movement|puck_y_coord_temp\(2) & !\U1|Puck_Movement|puck_y_coord\(1)))) # (!\U1|Puck_Movement|puck_x_coord\(0) & 
-- (!\U1|Puck_Movement|puck_y_coord\(6) & (\U1|Puck_Movement|puck_y_coord_temp\(2) & \U1|Puck_Movement|puck_y_coord\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord\(0),
	datab => \U1|Puck_Movement|puck_y_coord\(6),
	datac => \U1|Puck_Movement|puck_y_coord_temp\(2),
	datad => \U1|Puck_Movement|puck_y_coord\(1),
	combout => \U1|Collision|process_0~4_combout\);

-- Location: LCCOMB_X33_Y26_N16
\U1|Puck_Movement|puck_y_coord_temp[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_y_coord_temp[3]~6_combout\ = ((\U1|Puck_Movement|puck_y_coord_temp\(3) $ (\U1|Puck_Movement|puck_y_vector~0_combout\ $ (!\U1|Puck_Movement|puck_y_coord_temp[2]~5\)))) # (GND)
-- \U1|Puck_Movement|puck_y_coord_temp[3]~7\ = CARRY((\U1|Puck_Movement|puck_y_coord_temp\(3) & ((\U1|Puck_Movement|puck_y_vector~0_combout\) # (!\U1|Puck_Movement|puck_y_coord_temp[2]~5\))) # (!\U1|Puck_Movement|puck_y_coord_temp\(3) & 
-- (\U1|Puck_Movement|puck_y_vector~0_combout\ & !\U1|Puck_Movement|puck_y_coord_temp[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord_temp\(3),
	datab => \U1|Puck_Movement|puck_y_vector~0_combout\,
	datad => VCC,
	cin => \U1|Puck_Movement|puck_y_coord_temp[2]~5\,
	combout => \U1|Puck_Movement|puck_y_coord_temp[3]~6_combout\,
	cout => \U1|Puck_Movement|puck_y_coord_temp[3]~7\);

-- Location: LCFF_X33_Y26_N17
\U1|Puck_Movement|puck_y_coord_temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Puck_Movement|puck_y_coord_temp[3]~6_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Puck_Movement|puck_y_coord_temp\(3));

-- Location: LCCOMB_X34_Y25_N0
\U1|Collision|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|process_0~3_combout\ = (\U1|Puck_Movement|puck_y_coord_temp\(3) & ((!\U1|Puck_Movement|puck_y_coord_temp\(2)))) # (!\U1|Puck_Movement|puck_y_coord_temp\(3) & (\U1|Puck_Movement|puck_y_coord_temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord_temp\(5),
	datac => \U1|Puck_Movement|puck_y_coord_temp\(2),
	datad => \U1|Puck_Movement|puck_y_coord_temp\(3),
	combout => \U1|Collision|process_0~3_combout\);

-- Location: LCCOMB_X33_Y26_N6
\U1|Collision|process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|process_0~5_combout\ = (\U1|Collision|process_0~4_combout\ & (\U1|Puck_Movement|puck_y_coord_temp\(4) & (\U1|Puck_Movement|puck_x_coord\(0) $ (\U1|Collision|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord\(0),
	datab => \U1|Collision|process_0~4_combout\,
	datac => \U1|Collision|process_0~3_combout\,
	datad => \U1|Puck_Movement|puck_y_coord_temp\(4),
	combout => \U1|Collision|process_0~5_combout\);

-- Location: LCFF_X33_Y26_N7
\U1|Collision|puck_boundary\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Collision|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Collision|puck_boundary~regout\);

-- Location: LCCOMB_X33_Y26_N24
\U1|Puck_Movement|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|Add5~0_combout\ = (\U1|Puck_Movement|puck_x_coord\(0)) # (\U1|Puck_Movement|puck_y_vector\(0) $ (\U1|Collision|puck_boundary~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord\(0),
	datab => \U1|Puck_Movement|puck_y_vector\(0),
	datad => \U1|Collision|puck_boundary~regout\,
	combout => \U1|Puck_Movement|Add5~0_combout\);

-- Location: LCCOMB_X33_Y26_N18
\U1|Puck_Movement|puck_y_coord_temp[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_y_coord_temp[4]~8_combout\ = (\U1|Puck_Movement|puck_y_vector~0_combout\ & ((\U1|Puck_Movement|puck_y_coord_temp\(4) & (\U1|Puck_Movement|puck_y_coord_temp[3]~7\ & VCC)) # (!\U1|Puck_Movement|puck_y_coord_temp\(4) & 
-- (!\U1|Puck_Movement|puck_y_coord_temp[3]~7\)))) # (!\U1|Puck_Movement|puck_y_vector~0_combout\ & ((\U1|Puck_Movement|puck_y_coord_temp\(4) & (!\U1|Puck_Movement|puck_y_coord_temp[3]~7\)) # (!\U1|Puck_Movement|puck_y_coord_temp\(4) & 
-- ((\U1|Puck_Movement|puck_y_coord_temp[3]~7\) # (GND)))))
-- \U1|Puck_Movement|puck_y_coord_temp[4]~9\ = CARRY((\U1|Puck_Movement|puck_y_vector~0_combout\ & (!\U1|Puck_Movement|puck_y_coord_temp\(4) & !\U1|Puck_Movement|puck_y_coord_temp[3]~7\)) # (!\U1|Puck_Movement|puck_y_vector~0_combout\ & 
-- ((!\U1|Puck_Movement|puck_y_coord_temp[3]~7\) # (!\U1|Puck_Movement|puck_y_coord_temp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_vector~0_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(4),
	datad => VCC,
	cin => \U1|Puck_Movement|puck_y_coord_temp[3]~7\,
	combout => \U1|Puck_Movement|puck_y_coord_temp[4]~8_combout\,
	cout => \U1|Puck_Movement|puck_y_coord_temp[4]~9\);

-- Location: LCFF_X33_Y26_N19
\U1|Puck_Movement|puck_y_coord_temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Puck_Movement|puck_y_coord_temp[4]~8_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Puck_Movement|puck_y_coord_temp\(4));

-- Location: LCCOMB_X33_Y26_N20
\U1|Puck_Movement|puck_y_coord_temp[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_y_coord_temp[5]~10_combout\ = ((\U1|Puck_Movement|puck_y_coord_temp\(5) $ (\U1|Puck_Movement|puck_y_vector~0_combout\ $ (!\U1|Puck_Movement|puck_y_coord_temp[4]~9\)))) # (GND)
-- \U1|Puck_Movement|puck_y_coord_temp[5]~11\ = CARRY((\U1|Puck_Movement|puck_y_coord_temp\(5) & ((\U1|Puck_Movement|puck_y_vector~0_combout\) # (!\U1|Puck_Movement|puck_y_coord_temp[4]~9\))) # (!\U1|Puck_Movement|puck_y_coord_temp\(5) & 
-- (\U1|Puck_Movement|puck_y_vector~0_combout\ & !\U1|Puck_Movement|puck_y_coord_temp[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord_temp\(5),
	datab => \U1|Puck_Movement|puck_y_vector~0_combout\,
	datad => VCC,
	cin => \U1|Puck_Movement|puck_y_coord_temp[4]~9\,
	combout => \U1|Puck_Movement|puck_y_coord_temp[5]~10_combout\,
	cout => \U1|Puck_Movement|puck_y_coord_temp[5]~11\);

-- Location: LCCOMB_X33_Y26_N22
\U1|Puck_Movement|puck_y_coord[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_y_coord[6]~6_combout\ = \U1|Puck_Movement|puck_y_vector~0_combout\ $ (\U1|Puck_Movement|puck_y_coord_temp[5]~11\ $ (\U1|Puck_Movement|puck_y_coord\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Puck_Movement|puck_y_vector~0_combout\,
	datad => \U1|Puck_Movement|puck_y_coord\(6),
	cin => \U1|Puck_Movement|puck_y_coord_temp[5]~11\,
	combout => \U1|Puck_Movement|puck_y_coord[6]~6_combout\);

-- Location: LCFF_X33_Y26_N23
\U1|Puck_Movement|puck_y_coord[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Puck_Movement|puck_y_coord[6]~6_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Puck_Movement|puck_y_coord\(6));

-- Location: LCFF_X33_Y26_N21
\U1|Puck_Movement|puck_y_coord_temp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Puck_Movement|puck_y_coord_temp[5]~10_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Puck_Movement|puck_y_coord_temp\(5));

-- Location: LCCOMB_X31_Y27_N14
\U1|P1_forward|player_y[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P1_forward|player_y[0]~4_combout\ = !\U1|P1_forward|player_y\(0)
-- \U1|P1_forward|player_y[0]~5\ = CARRY(!\U1|P1_forward|player_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|P1_forward|player_y\(0),
	combout => \U1|P1_forward|player_y[0]~4_combout\,
	cout => \U1|P1_forward|player_y[0]~5\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(16),
	combout => \SW~combout\(16));

-- Location: LCCOMB_X31_Y27_N20
\U1|P1_forward|player_y[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P1_forward|player_y[3]~6_combout\ = (\U1|P1_forward|player_y\(3) & ((\U1|P1_forward|player_y[6]~3_combout\ & (!\U1|P1_forward|y_coord[2]~7\)) # (!\U1|P1_forward|player_y[6]~3_combout\ & (\U1|P1_forward|y_coord[2]~7\ & VCC)))) # 
-- (!\U1|P1_forward|player_y\(3) & ((\U1|P1_forward|player_y[6]~3_combout\ & ((\U1|P1_forward|y_coord[2]~7\) # (GND))) # (!\U1|P1_forward|player_y[6]~3_combout\ & (!\U1|P1_forward|y_coord[2]~7\))))
-- \U1|P1_forward|player_y[3]~7\ = CARRY((\U1|P1_forward|player_y\(3) & (\U1|P1_forward|player_y[6]~3_combout\ & !\U1|P1_forward|y_coord[2]~7\)) # (!\U1|P1_forward|player_y\(3) & ((\U1|P1_forward|player_y[6]~3_combout\) # (!\U1|P1_forward|y_coord[2]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P1_forward|player_y\(3),
	datab => \U1|P1_forward|player_y[6]~3_combout\,
	datad => VCC,
	cin => \U1|P1_forward|y_coord[2]~7\,
	combout => \U1|P1_forward|player_y[3]~6_combout\,
	cout => \U1|P1_forward|player_y[3]~7\);

-- Location: LCFF_X31_Y27_N21
\U1|P1_forward|player_y[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P1_forward|player_y[3]~6_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P1_forward|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P1_forward|player_y\(3));

-- Location: LCCOMB_X31_Y27_N0
\U1|Collision|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal2~1_combout\ = (\U1|Collision|Equal2~0_combout\ & (\U1|P1_forward|y_coord\(2) & (\U1|P1_forward|player_y\(3) & \U1|P1_forward|y_coord\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Equal2~0_combout\,
	datab => \U1|P1_forward|y_coord\(2),
	datac => \U1|P1_forward|player_y\(3),
	datad => \U1|P1_forward|y_coord\(4),
	combout => \U1|Collision|Equal2~1_combout\);

-- Location: LCFF_X31_Y27_N1
\U1|Collision|p1_forward_boundary[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Collision|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Collision|p1_forward_boundary\(1));

-- Location: LCCOMB_X31_Y27_N4
\U1|P1_forward|player_y[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P1_forward|player_y[6]~10_combout\ = (\U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\ & ((\U1|Collision|p1_forward_boundary\(0) & (\SW~combout\(16))) # (!\U1|Collision|p1_forward_boundary\(0) & ((!\U1|Collision|p1_forward_boundary\(1)) # 
-- (!\SW~combout\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	datab => \U1|Collision|p1_forward_boundary\(0),
	datac => \SW~combout\(16),
	datad => \U1|Collision|p1_forward_boundary\(1),
	combout => \U1|P1_forward|player_y[6]~10_combout\);

-- Location: LCFF_X31_Y27_N15
\U1|P1_forward|player_y[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P1_forward|player_y[0]~4_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P1_forward|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P1_forward|player_y\(0));

-- Location: LCCOMB_X31_Y27_N18
\U1|P1_forward|y_coord[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P1_forward|y_coord[2]~6_combout\ = (\U1|P1_forward|y_coord\(2) & ((\U1|P1_forward|player_y[6]~3_combout\ & (\U1|P1_forward|y_coord[1]~5\ & VCC)) # (!\U1|P1_forward|player_y[6]~3_combout\ & (!\U1|P1_forward|y_coord[1]~5\)))) # 
-- (!\U1|P1_forward|y_coord\(2) & ((\U1|P1_forward|player_y[6]~3_combout\ & (!\U1|P1_forward|y_coord[1]~5\)) # (!\U1|P1_forward|player_y[6]~3_combout\ & ((\U1|P1_forward|y_coord[1]~5\) # (GND)))))
-- \U1|P1_forward|y_coord[2]~7\ = CARRY((\U1|P1_forward|y_coord\(2) & (!\U1|P1_forward|player_y[6]~3_combout\ & !\U1|P1_forward|y_coord[1]~5\)) # (!\U1|P1_forward|y_coord\(2) & ((!\U1|P1_forward|y_coord[1]~5\) # (!\U1|P1_forward|player_y[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P1_forward|y_coord\(2),
	datab => \U1|P1_forward|player_y[6]~3_combout\,
	datad => VCC,
	cin => \U1|P1_forward|y_coord[1]~5\,
	combout => \U1|P1_forward|y_coord[2]~6_combout\,
	cout => \U1|P1_forward|y_coord[2]~7\);

-- Location: LCCOMB_X31_Y27_N22
\U1|P1_forward|y_coord[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P1_forward|y_coord[4]~8_combout\ = (\U1|P1_forward|y_coord\(4) & ((\U1|P1_forward|player_y[6]~3_combout\ & (\U1|P1_forward|player_y[3]~7\ & VCC)) # (!\U1|P1_forward|player_y[6]~3_combout\ & (!\U1|P1_forward|player_y[3]~7\)))) # 
-- (!\U1|P1_forward|y_coord\(4) & ((\U1|P1_forward|player_y[6]~3_combout\ & (!\U1|P1_forward|player_y[3]~7\)) # (!\U1|P1_forward|player_y[6]~3_combout\ & ((\U1|P1_forward|player_y[3]~7\) # (GND)))))
-- \U1|P1_forward|y_coord[4]~9\ = CARRY((\U1|P1_forward|y_coord\(4) & (!\U1|P1_forward|player_y[6]~3_combout\ & !\U1|P1_forward|player_y[3]~7\)) # (!\U1|P1_forward|y_coord\(4) & ((!\U1|P1_forward|player_y[3]~7\) # (!\U1|P1_forward|player_y[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P1_forward|y_coord\(4),
	datab => \U1|P1_forward|player_y[6]~3_combout\,
	datad => VCC,
	cin => \U1|P1_forward|player_y[3]~7\,
	combout => \U1|P1_forward|y_coord[4]~8_combout\,
	cout => \U1|P1_forward|y_coord[4]~9\);

-- Location: LCFF_X31_Y27_N23
\U1|P1_forward|y_coord[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P1_forward|y_coord[4]~8_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P1_forward|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P1_forward|y_coord\(4));

-- Location: LCCOMB_X30_Y27_N18
\U1|screen|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add1~2_combout\ = (\U1|P1_forward|y_coord\(2) & ((\U1|screen|Add1~1\) # (GND))) # (!\U1|P1_forward|y_coord\(2) & (!\U1|screen|Add1~1\))
-- \U1|screen|Add1~3\ = CARRY((\U1|P1_forward|y_coord\(2)) # (!\U1|screen|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|P1_forward|y_coord\(2),
	datad => VCC,
	cin => \U1|screen|Add1~1\,
	combout => \U1|screen|Add1~2_combout\,
	cout => \U1|screen|Add1~3\);

-- Location: LCCOMB_X30_Y27_N20
\U1|screen|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add1~4_combout\ = (\U1|P1_forward|player_y\(3) & ((GND) # (!\U1|screen|Add1~3\))) # (!\U1|P1_forward|player_y\(3) & (\U1|screen|Add1~3\ $ (GND)))
-- \U1|screen|Add1~5\ = CARRY((\U1|P1_forward|player_y\(3)) # (!\U1|screen|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|P1_forward|player_y\(3),
	datad => VCC,
	cin => \U1|screen|Add1~3\,
	combout => \U1|screen|Add1~4_combout\,
	cout => \U1|screen|Add1~5\);

-- Location: LCCOMB_X30_Y27_N22
\U1|screen|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add1~6_combout\ = (\U1|P1_forward|y_coord\(4) & ((\U1|screen|Add1~5\) # (GND))) # (!\U1|P1_forward|y_coord\(4) & (!\U1|screen|Add1~5\))
-- \U1|screen|Add1~7\ = CARRY((\U1|P1_forward|y_coord\(4)) # (!\U1|screen|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|P1_forward|y_coord\(4),
	datad => VCC,
	cin => \U1|screen|Add1~5\,
	combout => \U1|screen|Add1~6_combout\,
	cout => \U1|screen|Add1~7\);

-- Location: LCCOMB_X30_Y27_N28
\U1|Collision|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal3~1_combout\ = (\U1|Collision|Equal3~0_combout\ & (!\U1|screen|Add1~6_combout\ & (\U1|screen|Add1~4_combout\ & \U1|screen|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Equal3~0_combout\,
	datab => \U1|screen|Add1~6_combout\,
	datac => \U1|screen|Add1~4_combout\,
	datad => \U1|screen|Add1~2_combout\,
	combout => \U1|Collision|Equal3~1_combout\);

-- Location: LCFF_X30_Y27_N29
\U1|Collision|p1_forward_boundary[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Collision|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Collision|p1_forward_boundary\(0));

-- Location: LCCOMB_X31_Y27_N2
\U1|P1_forward|player_y[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P1_forward|player_y[6]~3_combout\ = (!\U1|Collision|p1_forward_boundary\(0) & ((\U1|Collision|p1_forward_boundary\(1)) # (!\SW~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|p1_forward_boundary\(0),
	datac => \SW~combout\(16),
	datad => \U1|Collision|p1_forward_boundary\(1),
	combout => \U1|P1_forward|player_y[6]~3_combout\);

-- Location: LCFF_X31_Y27_N19
\U1|P1_forward|y_coord[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P1_forward|y_coord[2]~6_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P1_forward|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P1_forward|y_coord\(2));

-- Location: LCCOMB_X31_Y25_N0
\U1|Collision|Add7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add7~1_cout\ = CARRY(!\U1|P1_forward|player_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P1_forward|player_y\(0),
	datad => VCC,
	cout => \U1|Collision|Add7~1_cout\);

-- Location: LCCOMB_X31_Y25_N2
\U1|Collision|Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add7~2_combout\ = (\U1|P1_forward|y_coord\(1) & ((\SW~combout\(16) & (!\U1|Collision|Add7~1_cout\)) # (!\SW~combout\(16) & ((\U1|Collision|Add7~1_cout\) # (GND))))) # (!\U1|P1_forward|y_coord\(1) & ((\SW~combout\(16) & 
-- (\U1|Collision|Add7~1_cout\ & VCC)) # (!\SW~combout\(16) & (!\U1|Collision|Add7~1_cout\))))
-- \U1|Collision|Add7~3\ = CARRY((\U1|P1_forward|y_coord\(1) & ((!\U1|Collision|Add7~1_cout\) # (!\SW~combout\(16)))) # (!\U1|P1_forward|y_coord\(1) & (!\SW~combout\(16) & !\U1|Collision|Add7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P1_forward|y_coord\(1),
	datab => \SW~combout\(16),
	datad => VCC,
	cin => \U1|Collision|Add7~1_cout\,
	combout => \U1|Collision|Add7~2_combout\,
	cout => \U1|Collision|Add7~3\);

-- Location: LCCOMB_X31_Y25_N4
\U1|Collision|Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add7~4_combout\ = ((\SW~combout\(16) $ (\U1|P1_forward|y_coord\(2) $ (\U1|Collision|Add7~3\)))) # (GND)
-- \U1|Collision|Add7~5\ = CARRY((\SW~combout\(16) & ((!\U1|Collision|Add7~3\) # (!\U1|P1_forward|y_coord\(2)))) # (!\SW~combout\(16) & (!\U1|P1_forward|y_coord\(2) & !\U1|Collision|Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(16),
	datab => \U1|P1_forward|y_coord\(2),
	datad => VCC,
	cin => \U1|Collision|Add7~3\,
	combout => \U1|Collision|Add7~4_combout\,
	cout => \U1|Collision|Add7~5\);

-- Location: LCCOMB_X31_Y25_N16
\U1|Collision|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan2~1_cout\ = CARRY((\U1|P1_forward|player_y\(0) & !\U1|Puck_Movement|puck_x_coord\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P1_forward|player_y\(0),
	datab => \U1|Puck_Movement|puck_x_coord\(0),
	datad => VCC,
	cout => \U1|Collision|LessThan2~1_cout\);

-- Location: LCCOMB_X31_Y25_N18
\U1|Collision|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan2~3_cout\ = CARRY((\U1|Puck_Movement|puck_y_coord\(1) & ((!\U1|Collision|LessThan2~1_cout\) # (!\U1|Collision|Add7~2_combout\))) # (!\U1|Puck_Movement|puck_y_coord\(1) & (!\U1|Collision|Add7~2_combout\ & 
-- !\U1|Collision|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord\(1),
	datab => \U1|Collision|Add7~2_combout\,
	datad => VCC,
	cin => \U1|Collision|LessThan2~1_cout\,
	cout => \U1|Collision|LessThan2~3_cout\);

-- Location: LCCOMB_X31_Y25_N20
\U1|Collision|LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan2~5_cout\ = CARRY((\U1|Puck_Movement|puck_y_coord_temp\(2) & ((\U1|Collision|Add7~4_combout\) # (!\U1|Collision|LessThan2~3_cout\))) # (!\U1|Puck_Movement|puck_y_coord_temp\(2) & (\U1|Collision|Add7~4_combout\ & 
-- !\U1|Collision|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord_temp\(2),
	datab => \U1|Collision|Add7~4_combout\,
	datad => VCC,
	cin => \U1|Collision|LessThan2~3_cout\,
	cout => \U1|Collision|LessThan2~5_cout\);

-- Location: LCCOMB_X31_Y25_N22
\U1|Collision|LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan2~7_cout\ = CARRY((\U1|Collision|Add7~6_combout\ & (!\U1|Puck_Movement|puck_y_coord_temp\(3) & !\U1|Collision|LessThan2~5_cout\)) # (!\U1|Collision|Add7~6_combout\ & ((!\U1|Collision|LessThan2~5_cout\) # 
-- (!\U1|Puck_Movement|puck_y_coord_temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add7~6_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(3),
	datad => VCC,
	cin => \U1|Collision|LessThan2~5_cout\,
	cout => \U1|Collision|LessThan2~7_cout\);

-- Location: LCCOMB_X31_Y25_N24
\U1|Collision|LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan2~9_cout\ = CARRY((\U1|Collision|Add7~8_combout\ & ((\U1|Puck_Movement|puck_y_coord_temp\(4)) # (!\U1|Collision|LessThan2~7_cout\))) # (!\U1|Collision|Add7~8_combout\ & (\U1|Puck_Movement|puck_y_coord_temp\(4) & 
-- !\U1|Collision|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add7~8_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(4),
	datad => VCC,
	cin => \U1|Collision|LessThan2~7_cout\,
	cout => \U1|Collision|LessThan2~9_cout\);

-- Location: LCCOMB_X31_Y25_N26
\U1|Collision|LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan2~11_cout\ = CARRY((\U1|Collision|Add7~10_combout\ & (!\U1|Puck_Movement|puck_y_coord_temp\(5) & !\U1|Collision|LessThan2~9_cout\)) # (!\U1|Collision|Add7~10_combout\ & ((!\U1|Collision|LessThan2~9_cout\) # 
-- (!\U1|Puck_Movement|puck_y_coord_temp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add7~10_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(5),
	datad => VCC,
	cin => \U1|Collision|LessThan2~9_cout\,
	cout => \U1|Collision|LessThan2~11_cout\);

-- Location: LCCOMB_X31_Y25_N28
\U1|Collision|LessThan2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan2~12_combout\ = (\U1|Collision|Add7~12_combout\ & ((!\U1|Puck_Movement|puck_y_coord\(6)) # (!\U1|Collision|LessThan2~11_cout\))) # (!\U1|Collision|Add7~12_combout\ & (!\U1|Collision|LessThan2~11_cout\ & 
-- !\U1|Puck_Movement|puck_y_coord\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add7~12_combout\,
	datad => \U1|Puck_Movement|puck_y_coord\(6),
	cin => \U1|Collision|LessThan2~11_cout\,
	combout => \U1|Collision|LessThan2~12_combout\);

-- Location: LCCOMB_X32_Y24_N4
\U1|Collision|puck_player~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|puck_player~2_combout\ = (\U1|Puck_Movement|puck_x_direction\(0) & (\U1|Puck_Movement|puck_x_coord\(1) & (\U1|Puck_Movement|puck_x_coord\(2) & !\U1|Puck_Movement|puck_x_coord\(3)))) # (!\U1|Puck_Movement|puck_x_direction\(0) & 
-- (!\U1|Puck_Movement|puck_x_coord\(1) & (!\U1|Puck_Movement|puck_x_coord\(2) & \U1|Puck_Movement|puck_x_coord\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_direction\(0),
	datab => \U1|Puck_Movement|puck_x_coord\(1),
	datac => \U1|Puck_Movement|puck_x_coord\(2),
	datad => \U1|Puck_Movement|puck_x_coord\(3),
	combout => \U1|Collision|puck_player~2_combout\);

-- Location: LCCOMB_X32_Y24_N20
\U1|Puck_Movement|puck_x_coord_temp[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_x_coord_temp[4]~3_combout\ = (\U1|Puck_Movement|puck_x_vector~0_combout\ & ((\U1|Puck_Movement|puck_x_coord_temp\(4) & (\U1|Puck_Movement|puck_x_coord[3]~13\ & VCC)) # (!\U1|Puck_Movement|puck_x_coord_temp\(4) & 
-- (!\U1|Puck_Movement|puck_x_coord[3]~13\)))) # (!\U1|Puck_Movement|puck_x_vector~0_combout\ & ((\U1|Puck_Movement|puck_x_coord_temp\(4) & (!\U1|Puck_Movement|puck_x_coord[3]~13\)) # (!\U1|Puck_Movement|puck_x_coord_temp\(4) & 
-- ((\U1|Puck_Movement|puck_x_coord[3]~13\) # (GND)))))
-- \U1|Puck_Movement|puck_x_coord_temp[4]~4\ = CARRY((\U1|Puck_Movement|puck_x_vector~0_combout\ & (!\U1|Puck_Movement|puck_x_coord_temp\(4) & !\U1|Puck_Movement|puck_x_coord[3]~13\)) # (!\U1|Puck_Movement|puck_x_vector~0_combout\ & 
-- ((!\U1|Puck_Movement|puck_x_coord[3]~13\) # (!\U1|Puck_Movement|puck_x_coord_temp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_vector~0_combout\,
	datab => \U1|Puck_Movement|puck_x_coord_temp\(4),
	datad => VCC,
	cin => \U1|Puck_Movement|puck_x_coord[3]~13\,
	combout => \U1|Puck_Movement|puck_x_coord_temp[4]~3_combout\,
	cout => \U1|Puck_Movement|puck_x_coord_temp[4]~4\);

-- Location: LCCOMB_X32_Y24_N22
\U1|Puck_Movement|puck_x_coord[5]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_x_coord[5]~14_combout\ = (\U1|Puck_Movement|puck_x_vector~0_combout\ & ((\U1|Puck_Movement|puck_x_coord\(5) & (!\U1|Puck_Movement|puck_x_coord_temp[4]~4\)) # (!\U1|Puck_Movement|puck_x_coord\(5) & 
-- ((\U1|Puck_Movement|puck_x_coord_temp[4]~4\) # (GND))))) # (!\U1|Puck_Movement|puck_x_vector~0_combout\ & ((\U1|Puck_Movement|puck_x_coord\(5) & (\U1|Puck_Movement|puck_x_coord_temp[4]~4\ & VCC)) # (!\U1|Puck_Movement|puck_x_coord\(5) & 
-- (!\U1|Puck_Movement|puck_x_coord_temp[4]~4\))))
-- \U1|Puck_Movement|puck_x_coord[5]~15\ = CARRY((\U1|Puck_Movement|puck_x_vector~0_combout\ & ((!\U1|Puck_Movement|puck_x_coord_temp[4]~4\) # (!\U1|Puck_Movement|puck_x_coord\(5)))) # (!\U1|Puck_Movement|puck_x_vector~0_combout\ & 
-- (!\U1|Puck_Movement|puck_x_coord\(5) & !\U1|Puck_Movement|puck_x_coord_temp[4]~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_vector~0_combout\,
	datab => \U1|Puck_Movement|puck_x_coord\(5),
	datad => VCC,
	cin => \U1|Puck_Movement|puck_x_coord_temp[4]~4\,
	combout => \U1|Puck_Movement|puck_x_coord[5]~14_combout\,
	cout => \U1|Puck_Movement|puck_x_coord[5]~15\);

-- Location: LCFF_X32_Y24_N23
\U1|Puck_Movement|puck_x_coord[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Puck_Movement|puck_x_coord[5]~14_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Puck_Movement|puck_x_coord\(5));

-- Location: LCCOMB_X32_Y24_N24
\U1|Puck_Movement|puck_x_coord_temp[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_x_coord_temp[6]~5_combout\ = (\U1|Puck_Movement|puck_x_vector~0_combout\ & ((\U1|Puck_Movement|puck_x_coord_temp\(6) & (\U1|Puck_Movement|puck_x_coord[5]~15\ & VCC)) # (!\U1|Puck_Movement|puck_x_coord_temp\(6) & 
-- (!\U1|Puck_Movement|puck_x_coord[5]~15\)))) # (!\U1|Puck_Movement|puck_x_vector~0_combout\ & ((\U1|Puck_Movement|puck_x_coord_temp\(6) & (!\U1|Puck_Movement|puck_x_coord[5]~15\)) # (!\U1|Puck_Movement|puck_x_coord_temp\(6) & 
-- ((\U1|Puck_Movement|puck_x_coord[5]~15\) # (GND)))))
-- \U1|Puck_Movement|puck_x_coord_temp[6]~6\ = CARRY((\U1|Puck_Movement|puck_x_vector~0_combout\ & (!\U1|Puck_Movement|puck_x_coord_temp\(6) & !\U1|Puck_Movement|puck_x_coord[5]~15\)) # (!\U1|Puck_Movement|puck_x_vector~0_combout\ & 
-- ((!\U1|Puck_Movement|puck_x_coord[5]~15\) # (!\U1|Puck_Movement|puck_x_coord_temp\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_vector~0_combout\,
	datab => \U1|Puck_Movement|puck_x_coord_temp\(6),
	datad => VCC,
	cin => \U1|Puck_Movement|puck_x_coord[5]~15\,
	combout => \U1|Puck_Movement|puck_x_coord_temp[6]~5_combout\,
	cout => \U1|Puck_Movement|puck_x_coord_temp[6]~6\);

-- Location: LCFF_X32_Y24_N25
\U1|Puck_Movement|puck_x_coord_temp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Puck_Movement|puck_x_coord_temp[6]~5_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Puck_Movement|puck_x_coord_temp\(6));

-- Location: LCCOMB_X32_Y24_N26
\U1|Puck_Movement|puck_x_coord[7]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_x_coord[7]~16_combout\ = \U1|Puck_Movement|puck_x_vector~0_combout\ $ (\U1|Puck_Movement|puck_x_coord\(7) $ (!\U1|Puck_Movement|puck_x_coord_temp[6]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_vector~0_combout\,
	datab => \U1|Puck_Movement|puck_x_coord\(7),
	cin => \U1|Puck_Movement|puck_x_coord_temp[6]~6\,
	combout => \U1|Puck_Movement|puck_x_coord[7]~16_combout\);

-- Location: LCFF_X32_Y24_N27
\U1|Puck_Movement|puck_x_coord[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Puck_Movement|puck_x_coord[7]~16_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Puck_Movement|puck_x_coord\(7));

-- Location: LCCOMB_X32_Y24_N10
\U1|Collision|puck_player~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|puck_player~1_combout\ = (!\U1|Puck_Movement|puck_x_coord\(0) & (\U1|Puck_Movement|puck_x_coord\(5) & (!\U1|Puck_Movement|puck_x_coord_temp\(4) & !\U1|Puck_Movement|puck_x_coord\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord\(0),
	datab => \U1|Puck_Movement|puck_x_coord\(5),
	datac => \U1|Puck_Movement|puck_x_coord_temp\(4),
	datad => \U1|Puck_Movement|puck_x_coord\(7),
	combout => \U1|Collision|puck_player~1_combout\);

-- Location: LCCOMB_X32_Y24_N30
\U1|Collision|puck_player~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|puck_player~3_combout\ = (\U1|Puck_Movement|puck_x_coord_temp\(6) & (!\U1|Collision|LessThan2~12_combout\ & (\U1|Collision|puck_player~2_combout\ & \U1|Collision|puck_player~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord_temp\(6),
	datab => \U1|Collision|LessThan2~12_combout\,
	datac => \U1|Collision|puck_player~2_combout\,
	datad => \U1|Collision|puck_player~1_combout\,
	combout => \U1|Collision|puck_player~3_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(17),
	combout => \SW~combout\(17));

-- Location: LCCOMB_X29_Y25_N2
\U1|Pl_goalie|player_y[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Pl_goalie|player_y[0]~4_combout\ = !\U1|Pl_goalie|player_y\(0)
-- \U1|Pl_goalie|player_y[0]~5\ = CARRY(!\U1|Pl_goalie|player_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Pl_goalie|player_y\(0),
	combout => \U1|Pl_goalie|player_y[0]~4_combout\,
	cout => \U1|Pl_goalie|player_y[0]~5\);

-- Location: LCCOMB_X29_Y25_N30
\U1|Pl_goalie|player_y[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Pl_goalie|player_y[6]~10_combout\ = (\U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\ & ((\SW~combout\(17) & ((\U1|Collision|p1_goalie_boundary\(0)) # (!\U1|Collision|p1_goalie_boundary\(1)))) # (!\SW~combout\(17) & 
-- ((!\U1|Collision|p1_goalie_boundary\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|p1_goalie_boundary\(1),
	datab => \SW~combout\(17),
	datac => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	datad => \U1|Collision|p1_goalie_boundary\(0),
	combout => \U1|Pl_goalie|player_y[6]~10_combout\);

-- Location: LCFF_X29_Y25_N3
\U1|Pl_goalie|player_y[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Pl_goalie|player_y[0]~4_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Pl_goalie|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Pl_goalie|player_y\(0));

-- Location: LCCOMB_X29_Y25_N4
\U1|Pl_goalie|y_coord[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Pl_goalie|y_coord[1]~4_combout\ = ((\U1|Pl_goalie|y_coord\(1) $ (\U1|Pl_goalie|player_y[3]~3_combout\ $ (!\U1|Pl_goalie|player_y[0]~5\)))) # (GND)
-- \U1|Pl_goalie|y_coord[1]~5\ = CARRY((\U1|Pl_goalie|y_coord\(1) & ((\U1|Pl_goalie|player_y[3]~3_combout\) # (!\U1|Pl_goalie|player_y[0]~5\))) # (!\U1|Pl_goalie|y_coord\(1) & (\U1|Pl_goalie|player_y[3]~3_combout\ & !\U1|Pl_goalie|player_y[0]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Pl_goalie|y_coord\(1),
	datab => \U1|Pl_goalie|player_y[3]~3_combout\,
	datad => VCC,
	cin => \U1|Pl_goalie|player_y[0]~5\,
	combout => \U1|Pl_goalie|y_coord[1]~4_combout\,
	cout => \U1|Pl_goalie|y_coord[1]~5\);

-- Location: LCCOMB_X29_Y25_N6
\U1|Pl_goalie|y_coord[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Pl_goalie|y_coord[2]~6_combout\ = (\U1|Pl_goalie|y_coord\(2) & ((\U1|Pl_goalie|player_y[3]~3_combout\ & (\U1|Pl_goalie|y_coord[1]~5\ & VCC)) # (!\U1|Pl_goalie|player_y[3]~3_combout\ & (!\U1|Pl_goalie|y_coord[1]~5\)))) # (!\U1|Pl_goalie|y_coord\(2) & 
-- ((\U1|Pl_goalie|player_y[3]~3_combout\ & (!\U1|Pl_goalie|y_coord[1]~5\)) # (!\U1|Pl_goalie|player_y[3]~3_combout\ & ((\U1|Pl_goalie|y_coord[1]~5\) # (GND)))))
-- \U1|Pl_goalie|y_coord[2]~7\ = CARRY((\U1|Pl_goalie|y_coord\(2) & (!\U1|Pl_goalie|player_y[3]~3_combout\ & !\U1|Pl_goalie|y_coord[1]~5\)) # (!\U1|Pl_goalie|y_coord\(2) & ((!\U1|Pl_goalie|y_coord[1]~5\) # (!\U1|Pl_goalie|player_y[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Pl_goalie|y_coord\(2),
	datab => \U1|Pl_goalie|player_y[3]~3_combout\,
	datad => VCC,
	cin => \U1|Pl_goalie|y_coord[1]~5\,
	combout => \U1|Pl_goalie|y_coord[2]~6_combout\,
	cout => \U1|Pl_goalie|y_coord[2]~7\);

-- Location: LCCOMB_X29_Y25_N8
\U1|Pl_goalie|player_y[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Pl_goalie|player_y[3]~6_combout\ = (\U1|Pl_goalie|player_y\(3) & ((\U1|Pl_goalie|player_y[3]~3_combout\ & (!\U1|Pl_goalie|y_coord[2]~7\)) # (!\U1|Pl_goalie|player_y[3]~3_combout\ & (\U1|Pl_goalie|y_coord[2]~7\ & VCC)))) # (!\U1|Pl_goalie|player_y\(3) 
-- & ((\U1|Pl_goalie|player_y[3]~3_combout\ & ((\U1|Pl_goalie|y_coord[2]~7\) # (GND))) # (!\U1|Pl_goalie|player_y[3]~3_combout\ & (!\U1|Pl_goalie|y_coord[2]~7\))))
-- \U1|Pl_goalie|player_y[3]~7\ = CARRY((\U1|Pl_goalie|player_y\(3) & (\U1|Pl_goalie|player_y[3]~3_combout\ & !\U1|Pl_goalie|y_coord[2]~7\)) # (!\U1|Pl_goalie|player_y\(3) & ((\U1|Pl_goalie|player_y[3]~3_combout\) # (!\U1|Pl_goalie|y_coord[2]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Pl_goalie|player_y\(3),
	datab => \U1|Pl_goalie|player_y[3]~3_combout\,
	datad => VCC,
	cin => \U1|Pl_goalie|y_coord[2]~7\,
	combout => \U1|Pl_goalie|player_y[3]~6_combout\,
	cout => \U1|Pl_goalie|player_y[3]~7\);

-- Location: LCCOMB_X29_Y25_N10
\U1|Pl_goalie|y_coord[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Pl_goalie|y_coord[4]~8_combout\ = (\U1|Pl_goalie|y_coord\(4) & ((\U1|Pl_goalie|player_y[3]~3_combout\ & (\U1|Pl_goalie|player_y[3]~7\ & VCC)) # (!\U1|Pl_goalie|player_y[3]~3_combout\ & (!\U1|Pl_goalie|player_y[3]~7\)))) # (!\U1|Pl_goalie|y_coord\(4) & 
-- ((\U1|Pl_goalie|player_y[3]~3_combout\ & (!\U1|Pl_goalie|player_y[3]~7\)) # (!\U1|Pl_goalie|player_y[3]~3_combout\ & ((\U1|Pl_goalie|player_y[3]~7\) # (GND)))))
-- \U1|Pl_goalie|y_coord[4]~9\ = CARRY((\U1|Pl_goalie|y_coord\(4) & (!\U1|Pl_goalie|player_y[3]~3_combout\ & !\U1|Pl_goalie|player_y[3]~7\)) # (!\U1|Pl_goalie|y_coord\(4) & ((!\U1|Pl_goalie|player_y[3]~7\) # (!\U1|Pl_goalie|player_y[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Pl_goalie|y_coord\(4),
	datab => \U1|Pl_goalie|player_y[3]~3_combout\,
	datad => VCC,
	cin => \U1|Pl_goalie|player_y[3]~7\,
	combout => \U1|Pl_goalie|y_coord[4]~8_combout\,
	cout => \U1|Pl_goalie|y_coord[4]~9\);

-- Location: LCFF_X29_Y25_N11
\U1|Pl_goalie|y_coord[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Pl_goalie|y_coord[4]~8_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Pl_goalie|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Pl_goalie|y_coord\(4));

-- Location: LCFF_X29_Y25_N9
\U1|Pl_goalie|player_y[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Pl_goalie|player_y[3]~6_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Pl_goalie|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Pl_goalie|player_y\(3));

-- Location: LCFF_X29_Y25_N7
\U1|Pl_goalie|y_coord[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Pl_goalie|y_coord[2]~6_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Pl_goalie|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Pl_goalie|y_coord\(2));

-- Location: LCCOMB_X30_Y25_N0
\U1|screen|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add0~0_combout\ = (\U1|Pl_goalie|y_coord\(1) & (!\U1|Pl_goalie|player_y\(0) & VCC)) # (!\U1|Pl_goalie|y_coord\(1) & (\U1|Pl_goalie|player_y\(0) $ (GND)))
-- \U1|screen|Add0~1\ = CARRY((!\U1|Pl_goalie|y_coord\(1) & !\U1|Pl_goalie|player_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Pl_goalie|y_coord\(1),
	datab => \U1|Pl_goalie|player_y\(0),
	datad => VCC,
	combout => \U1|screen|Add0~0_combout\,
	cout => \U1|screen|Add0~1\);

-- Location: LCCOMB_X30_Y25_N2
\U1|screen|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add0~2_combout\ = (\U1|Pl_goalie|y_coord\(2) & ((\U1|screen|Add0~1\) # (GND))) # (!\U1|Pl_goalie|y_coord\(2) & (!\U1|screen|Add0~1\))
-- \U1|screen|Add0~3\ = CARRY((\U1|Pl_goalie|y_coord\(2)) # (!\U1|screen|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Pl_goalie|y_coord\(2),
	datad => VCC,
	cin => \U1|screen|Add0~1\,
	combout => \U1|screen|Add0~2_combout\,
	cout => \U1|screen|Add0~3\);

-- Location: LCCOMB_X30_Y25_N4
\U1|screen|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add0~4_combout\ = (\U1|Pl_goalie|player_y\(3) & ((GND) # (!\U1|screen|Add0~3\))) # (!\U1|Pl_goalie|player_y\(3) & (\U1|screen|Add0~3\ $ (GND)))
-- \U1|screen|Add0~5\ = CARRY((\U1|Pl_goalie|player_y\(3)) # (!\U1|screen|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Pl_goalie|player_y\(3),
	datad => VCC,
	cin => \U1|screen|Add0~3\,
	combout => \U1|screen|Add0~4_combout\,
	cout => \U1|screen|Add0~5\);

-- Location: LCCOMB_X30_Y25_N6
\U1|screen|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add0~6_combout\ = (\U1|Pl_goalie|y_coord\(4) & ((\U1|screen|Add0~5\) # (GND))) # (!\U1|Pl_goalie|y_coord\(4) & (!\U1|screen|Add0~5\))
-- \U1|screen|Add0~7\ = CARRY((\U1|Pl_goalie|y_coord\(4)) # (!\U1|screen|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Pl_goalie|y_coord\(4),
	datad => VCC,
	cin => \U1|screen|Add0~5\,
	combout => \U1|screen|Add0~6_combout\,
	cout => \U1|screen|Add0~7\);

-- Location: LCCOMB_X30_Y25_N8
\U1|screen|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add0~8_combout\ = (\U1|Pl_goalie|y_coord\(5) & (!\U1|screen|Add0~7\ & VCC)) # (!\U1|Pl_goalie|y_coord\(5) & (\U1|screen|Add0~7\ $ (GND)))
-- \U1|screen|Add0~9\ = CARRY((!\U1|Pl_goalie|y_coord\(5) & !\U1|screen|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Pl_goalie|y_coord\(5),
	datad => VCC,
	cin => \U1|screen|Add0~7\,
	combout => \U1|screen|Add0~8_combout\,
	cout => \U1|screen|Add0~9\);

-- Location: LCCOMB_X30_Y25_N28
\U1|Collision|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal1~0_combout\ = (\U1|screen|Add0~10_combout\ & (\U1|Pl_goalie|player_y\(0) & (\U1|screen|Add0~8_combout\ & !\U1|screen|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add0~10_combout\,
	datab => \U1|Pl_goalie|player_y\(0),
	datac => \U1|screen|Add0~8_combout\,
	datad => \U1|screen|Add0~0_combout\,
	combout => \U1|Collision|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y25_N30
\U1|Collision|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal1~1_combout\ = (\U1|screen|Add0~4_combout\ & (\U1|Collision|Equal1~0_combout\ & (!\U1|screen|Add0~6_combout\ & \U1|screen|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add0~4_combout\,
	datab => \U1|Collision|Equal1~0_combout\,
	datac => \U1|screen|Add0~6_combout\,
	datad => \U1|screen|Add0~2_combout\,
	combout => \U1|Collision|Equal1~1_combout\);

-- Location: LCFF_X31_Y25_N31
\U1|Collision|p1_goalie_boundary[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Collision|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Collision|p1_goalie_boundary\(0));

-- Location: LCCOMB_X29_Y25_N0
\U1|Pl_goalie|player_y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Pl_goalie|player_y[3]~3_combout\ = (!\U1|Collision|p1_goalie_boundary\(0) & ((\U1|Collision|p1_goalie_boundary\(1)) # (!\SW~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|p1_goalie_boundary\(1),
	datab => \SW~combout\(17),
	datac => \U1|Collision|p1_goalie_boundary\(0),
	combout => \U1|Pl_goalie|player_y[3]~3_combout\);

-- Location: LCCOMB_X29_Y25_N12
\U1|Pl_goalie|y_coord[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Pl_goalie|y_coord[5]~10_combout\ = ((\U1|Pl_goalie|y_coord\(5) $ (\U1|Pl_goalie|player_y[3]~3_combout\ $ (!\U1|Pl_goalie|y_coord[4]~9\)))) # (GND)
-- \U1|Pl_goalie|y_coord[5]~11\ = CARRY((\U1|Pl_goalie|y_coord\(5) & ((\U1|Pl_goalie|player_y[3]~3_combout\) # (!\U1|Pl_goalie|y_coord[4]~9\))) # (!\U1|Pl_goalie|y_coord\(5) & (\U1|Pl_goalie|player_y[3]~3_combout\ & !\U1|Pl_goalie|y_coord[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Pl_goalie|y_coord\(5),
	datab => \U1|Pl_goalie|player_y[3]~3_combout\,
	datad => VCC,
	cin => \U1|Pl_goalie|y_coord[4]~9\,
	combout => \U1|Pl_goalie|y_coord[5]~10_combout\,
	cout => \U1|Pl_goalie|y_coord[5]~11\);

-- Location: LCFF_X29_Y25_N13
\U1|Pl_goalie|y_coord[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Pl_goalie|y_coord[5]~10_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Pl_goalie|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Pl_goalie|y_coord\(5));

-- Location: LCFF_X29_Y25_N5
\U1|Pl_goalie|y_coord[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Pl_goalie|y_coord[1]~4_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Pl_goalie|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Pl_goalie|y_coord\(1));

-- Location: LCCOMB_X32_Y25_N18
\U1|Collision|Add5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add5~1_cout\ = CARRY(!\U1|Pl_goalie|player_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Pl_goalie|player_y\(0),
	datad => VCC,
	cout => \U1|Collision|Add5~1_cout\);

-- Location: LCCOMB_X32_Y25_N22
\U1|Collision|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add5~4_combout\ = ((\SW~combout\(17) $ (\U1|Pl_goalie|y_coord\(2) $ (\U1|Collision|Add5~3\)))) # (GND)
-- \U1|Collision|Add5~5\ = CARRY((\SW~combout\(17) & ((!\U1|Collision|Add5~3\) # (!\U1|Pl_goalie|y_coord\(2)))) # (!\SW~combout\(17) & (!\U1|Pl_goalie|y_coord\(2) & !\U1|Collision|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datab => \U1|Pl_goalie|y_coord\(2),
	datad => VCC,
	cin => \U1|Collision|Add5~3\,
	combout => \U1|Collision|Add5~4_combout\,
	cout => \U1|Collision|Add5~5\);

-- Location: LCCOMB_X32_Y25_N24
\U1|Collision|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add5~6_combout\ = (\SW~combout\(17) & ((\U1|Pl_goalie|player_y\(3) & (\U1|Collision|Add5~5\ & VCC)) # (!\U1|Pl_goalie|player_y\(3) & (!\U1|Collision|Add5~5\)))) # (!\SW~combout\(17) & ((\U1|Pl_goalie|player_y\(3) & (!\U1|Collision|Add5~5\)) 
-- # (!\U1|Pl_goalie|player_y\(3) & ((\U1|Collision|Add5~5\) # (GND)))))
-- \U1|Collision|Add5~7\ = CARRY((\SW~combout\(17) & (!\U1|Pl_goalie|player_y\(3) & !\U1|Collision|Add5~5\)) # (!\SW~combout\(17) & ((!\U1|Collision|Add5~5\) # (!\U1|Pl_goalie|player_y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datab => \U1|Pl_goalie|player_y\(3),
	datad => VCC,
	cin => \U1|Collision|Add5~5\,
	combout => \U1|Collision|Add5~6_combout\,
	cout => \U1|Collision|Add5~7\);

-- Location: LCCOMB_X32_Y25_N26
\U1|Collision|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add5~8_combout\ = ((\SW~combout\(17) $ (\U1|Pl_goalie|y_coord\(4) $ (\U1|Collision|Add5~7\)))) # (GND)
-- \U1|Collision|Add5~9\ = CARRY((\SW~combout\(17) & ((!\U1|Collision|Add5~7\) # (!\U1|Pl_goalie|y_coord\(4)))) # (!\SW~combout\(17) & (!\U1|Pl_goalie|y_coord\(4) & !\U1|Collision|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datab => \U1|Pl_goalie|y_coord\(4),
	datad => VCC,
	cin => \U1|Collision|Add5~7\,
	combout => \U1|Collision|Add5~8_combout\,
	cout => \U1|Collision|Add5~9\);

-- Location: LCCOMB_X33_Y25_N22
\U1|Collision|Add12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add12~2_combout\ = (\U1|Collision|Add5~4_combout\ & (!\U1|Collision|Add12~1\)) # (!\U1|Collision|Add5~4_combout\ & ((\U1|Collision|Add12~1\) # (GND)))
-- \U1|Collision|Add12~3\ = CARRY((!\U1|Collision|Add12~1\) # (!\U1|Collision|Add5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|Add5~4_combout\,
	datad => VCC,
	cin => \U1|Collision|Add12~1\,
	combout => \U1|Collision|Add12~2_combout\,
	cout => \U1|Collision|Add12~3\);

-- Location: LCCOMB_X33_Y25_N30
\U1|Collision|Add12~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add12~10_combout\ = \U1|Collision|Add5~12_combout\ $ (\U1|Collision|Add12~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add5~12_combout\,
	cin => \U1|Collision|Add12~9\,
	combout => \U1|Collision|Add12~10_combout\);

-- Location: LCCOMB_X33_Y25_N4
\U1|Collision|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan1~1_cout\ = CARRY((\U1|Pl_goalie|player_y\(0) & \U1|Puck_Movement|puck_x_coord\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Pl_goalie|player_y\(0),
	datab => \U1|Puck_Movement|puck_x_coord\(0),
	datad => VCC,
	cout => \U1|Collision|LessThan1~1_cout\);

-- Location: LCCOMB_X33_Y25_N6
\U1|Collision|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan1~3_cout\ = CARRY((\U1|Collision|Add12~0_combout\ & ((!\U1|Collision|LessThan1~1_cout\) # (!\U1|Puck_Movement|puck_y_coord\(1)))) # (!\U1|Collision|Add12~0_combout\ & (!\U1|Puck_Movement|puck_y_coord\(1) & 
-- !\U1|Collision|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add12~0_combout\,
	datab => \U1|Puck_Movement|puck_y_coord\(1),
	datad => VCC,
	cin => \U1|Collision|LessThan1~1_cout\,
	cout => \U1|Collision|LessThan1~3_cout\);

-- Location: LCCOMB_X33_Y25_N8
\U1|Collision|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan1~5_cout\ = CARRY((\U1|Puck_Movement|puck_y_coord_temp\(2) & (!\U1|Collision|Add12~2_combout\ & !\U1|Collision|LessThan1~3_cout\)) # (!\U1|Puck_Movement|puck_y_coord_temp\(2) & ((!\U1|Collision|LessThan1~3_cout\) # 
-- (!\U1|Collision|Add12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord_temp\(2),
	datab => \U1|Collision|Add12~2_combout\,
	datad => VCC,
	cin => \U1|Collision|LessThan1~3_cout\,
	cout => \U1|Collision|LessThan1~5_cout\);

-- Location: LCCOMB_X33_Y25_N10
\U1|Collision|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan1~7_cout\ = CARRY((\U1|Collision|Add12~4_combout\ & ((\U1|Puck_Movement|puck_y_coord_temp\(3)) # (!\U1|Collision|LessThan1~5_cout\))) # (!\U1|Collision|Add12~4_combout\ & (\U1|Puck_Movement|puck_y_coord_temp\(3) & 
-- !\U1|Collision|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add12~4_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(3),
	datad => VCC,
	cin => \U1|Collision|LessThan1~5_cout\,
	cout => \U1|Collision|LessThan1~7_cout\);

-- Location: LCCOMB_X33_Y25_N12
\U1|Collision|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan1~9_cout\ = CARRY((\U1|Collision|Add12~6_combout\ & (!\U1|Puck_Movement|puck_y_coord_temp\(4) & !\U1|Collision|LessThan1~7_cout\)) # (!\U1|Collision|Add12~6_combout\ & ((!\U1|Collision|LessThan1~7_cout\) # 
-- (!\U1|Puck_Movement|puck_y_coord_temp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add12~6_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(4),
	datad => VCC,
	cin => \U1|Collision|LessThan1~7_cout\,
	cout => \U1|Collision|LessThan1~9_cout\);

-- Location: LCCOMB_X33_Y25_N14
\U1|Collision|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan1~11_cout\ = CARRY((\U1|Collision|Add12~8_combout\ & ((\U1|Puck_Movement|puck_y_coord_temp\(5)) # (!\U1|Collision|LessThan1~9_cout\))) # (!\U1|Collision|Add12~8_combout\ & (\U1|Puck_Movement|puck_y_coord_temp\(5) & 
-- !\U1|Collision|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add12~8_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(5),
	datad => VCC,
	cin => \U1|Collision|LessThan1~9_cout\,
	cout => \U1|Collision|LessThan1~11_cout\);

-- Location: LCCOMB_X33_Y25_N16
\U1|Collision|LessThan1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan1~12_combout\ = (\U1|Collision|Add12~10_combout\ & (!\U1|Collision|LessThan1~11_cout\ & \U1|Puck_Movement|puck_y_coord\(6))) # (!\U1|Collision|Add12~10_combout\ & ((\U1|Puck_Movement|puck_y_coord\(6)) # 
-- (!\U1|Collision|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|Add12~10_combout\,
	datad => \U1|Puck_Movement|puck_y_coord\(6),
	cin => \U1|Collision|LessThan1~11_cout\,
	combout => \U1|Collision|LessThan1~12_combout\);

-- Location: LCCOMB_X31_Y27_N24
\U1|P1_forward|y_coord[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P1_forward|y_coord[5]~10_combout\ = ((\U1|P1_forward|y_coord\(5) $ (\U1|P1_forward|player_y[6]~3_combout\ $ (!\U1|P1_forward|y_coord[4]~9\)))) # (GND)
-- \U1|P1_forward|y_coord[5]~11\ = CARRY((\U1|P1_forward|y_coord\(5) & ((\U1|P1_forward|player_y[6]~3_combout\) # (!\U1|P1_forward|y_coord[4]~9\))) # (!\U1|P1_forward|y_coord\(5) & (\U1|P1_forward|player_y[6]~3_combout\ & !\U1|P1_forward|y_coord[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P1_forward|y_coord\(5),
	datab => \U1|P1_forward|player_y[6]~3_combout\,
	datad => VCC,
	cin => \U1|P1_forward|y_coord[4]~9\,
	combout => \U1|P1_forward|y_coord[5]~10_combout\,
	cout => \U1|P1_forward|y_coord[5]~11\);

-- Location: LCCOMB_X31_Y27_N26
\U1|P1_forward|player_y[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P1_forward|player_y[6]~8_combout\ = \U1|P1_forward|player_y[6]~3_combout\ $ (\U1|P1_forward|y_coord[5]~11\ $ (\U1|P1_forward|player_y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|P1_forward|player_y[6]~3_combout\,
	datad => \U1|P1_forward|player_y\(6),
	cin => \U1|P1_forward|y_coord[5]~11\,
	combout => \U1|P1_forward|player_y[6]~8_combout\);

-- Location: LCFF_X31_Y27_N27
\U1|P1_forward|player_y[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P1_forward|player_y[6]~8_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P1_forward|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P1_forward|player_y\(6));

-- Location: LCCOMB_X31_Y25_N6
\U1|Collision|Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add7~6_combout\ = (\U1|P1_forward|player_y\(3) & ((\SW~combout\(16) & (\U1|Collision|Add7~5\ & VCC)) # (!\SW~combout\(16) & (!\U1|Collision|Add7~5\)))) # (!\U1|P1_forward|player_y\(3) & ((\SW~combout\(16) & (!\U1|Collision|Add7~5\)) # 
-- (!\SW~combout\(16) & ((\U1|Collision|Add7~5\) # (GND)))))
-- \U1|Collision|Add7~7\ = CARRY((\U1|P1_forward|player_y\(3) & (!\SW~combout\(16) & !\U1|Collision|Add7~5\)) # (!\U1|P1_forward|player_y\(3) & ((!\U1|Collision|Add7~5\) # (!\SW~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P1_forward|player_y\(3),
	datab => \SW~combout\(16),
	datad => VCC,
	cin => \U1|Collision|Add7~5\,
	combout => \U1|Collision|Add7~6_combout\,
	cout => \U1|Collision|Add7~7\);

-- Location: LCCOMB_X31_Y25_N8
\U1|Collision|Add7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add7~8_combout\ = ((\U1|P1_forward|y_coord\(4) $ (\SW~combout\(16) $ (\U1|Collision|Add7~7\)))) # (GND)
-- \U1|Collision|Add7~9\ = CARRY((\U1|P1_forward|y_coord\(4) & (\SW~combout\(16) & !\U1|Collision|Add7~7\)) # (!\U1|P1_forward|y_coord\(4) & ((\SW~combout\(16)) # (!\U1|Collision|Add7~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P1_forward|y_coord\(4),
	datab => \SW~combout\(16),
	datad => VCC,
	cin => \U1|Collision|Add7~7\,
	combout => \U1|Collision|Add7~8_combout\,
	cout => \U1|Collision|Add7~9\);

-- Location: LCCOMB_X31_Y25_N12
\U1|Collision|Add7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add7~12_combout\ = \SW~combout\(16) $ (\U1|Collision|Add7~11\ $ (!\U1|P1_forward|player_y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(16),
	datad => \U1|P1_forward|player_y\(6),
	cin => \U1|Collision|Add7~11\,
	combout => \U1|Collision|Add7~12_combout\);

-- Location: LCCOMB_X34_Y25_N4
\U1|Collision|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add13~0_combout\ = (\U1|Collision|Add7~2_combout\ & (\U1|P1_forward|player_y\(0) $ (VCC))) # (!\U1|Collision|Add7~2_combout\ & (\U1|P1_forward|player_y\(0) & VCC))
-- \U1|Collision|Add13~1\ = CARRY((\U1|Collision|Add7~2_combout\ & \U1|P1_forward|player_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add7~2_combout\,
	datab => \U1|P1_forward|player_y\(0),
	datad => VCC,
	combout => \U1|Collision|Add13~0_combout\,
	cout => \U1|Collision|Add13~1\);

-- Location: LCCOMB_X34_Y25_N6
\U1|Collision|Add13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add13~2_combout\ = (\U1|Collision|Add7~4_combout\ & (!\U1|Collision|Add13~1\)) # (!\U1|Collision|Add7~4_combout\ & ((\U1|Collision|Add13~1\) # (GND)))
-- \U1|Collision|Add13~3\ = CARRY((!\U1|Collision|Add13~1\) # (!\U1|Collision|Add7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|Add7~4_combout\,
	datad => VCC,
	cin => \U1|Collision|Add13~1\,
	combout => \U1|Collision|Add13~2_combout\,
	cout => \U1|Collision|Add13~3\);

-- Location: LCCOMB_X34_Y25_N8
\U1|Collision|Add13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add13~4_combout\ = (\U1|Collision|Add7~6_combout\ & ((GND) # (!\U1|Collision|Add13~3\))) # (!\U1|Collision|Add7~6_combout\ & (\U1|Collision|Add13~3\ $ (GND)))
-- \U1|Collision|Add13~5\ = CARRY((\U1|Collision|Add7~6_combout\) # (!\U1|Collision|Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|Add7~6_combout\,
	datad => VCC,
	cin => \U1|Collision|Add13~3\,
	combout => \U1|Collision|Add13~4_combout\,
	cout => \U1|Collision|Add13~5\);

-- Location: LCCOMB_X34_Y25_N12
\U1|Collision|Add13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add13~8_combout\ = (\U1|Collision|Add7~10_combout\ & (\U1|Collision|Add13~7\ $ (GND))) # (!\U1|Collision|Add7~10_combout\ & (!\U1|Collision|Add13~7\ & VCC))
-- \U1|Collision|Add13~9\ = CARRY((\U1|Collision|Add7~10_combout\ & !\U1|Collision|Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add7~10_combout\,
	datad => VCC,
	cin => \U1|Collision|Add13~7\,
	combout => \U1|Collision|Add13~8_combout\,
	cout => \U1|Collision|Add13~9\);

-- Location: LCCOMB_X34_Y25_N14
\U1|Collision|Add13~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add13~10_combout\ = \U1|Collision|Add13~9\ $ (\U1|Collision|Add7~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|Collision|Add7~12_combout\,
	cin => \U1|Collision|Add13~9\,
	combout => \U1|Collision|Add13~10_combout\);

-- Location: LCCOMB_X34_Y25_N16
\U1|Collision|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan3~1_cout\ = CARRY((\U1|Puck_Movement|puck_x_coord\(0) & \U1|P1_forward|player_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord\(0),
	datab => \U1|P1_forward|player_y\(0),
	datad => VCC,
	cout => \U1|Collision|LessThan3~1_cout\);

-- Location: LCCOMB_X34_Y25_N18
\U1|Collision|LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan3~3_cout\ = CARRY((\U1|Puck_Movement|puck_y_coord\(1) & (\U1|Collision|Add13~0_combout\ & !\U1|Collision|LessThan3~1_cout\)) # (!\U1|Puck_Movement|puck_y_coord\(1) & ((\U1|Collision|Add13~0_combout\) # 
-- (!\U1|Collision|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord\(1),
	datab => \U1|Collision|Add13~0_combout\,
	datad => VCC,
	cin => \U1|Collision|LessThan3~1_cout\,
	cout => \U1|Collision|LessThan3~3_cout\);

-- Location: LCCOMB_X34_Y25_N20
\U1|Collision|LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan3~5_cout\ = CARRY((\U1|Puck_Movement|puck_y_coord_temp\(2) & (!\U1|Collision|Add13~2_combout\ & !\U1|Collision|LessThan3~3_cout\)) # (!\U1|Puck_Movement|puck_y_coord_temp\(2) & ((!\U1|Collision|LessThan3~3_cout\) # 
-- (!\U1|Collision|Add13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord_temp\(2),
	datab => \U1|Collision|Add13~2_combout\,
	datad => VCC,
	cin => \U1|Collision|LessThan3~3_cout\,
	cout => \U1|Collision|LessThan3~5_cout\);

-- Location: LCCOMB_X34_Y25_N22
\U1|Collision|LessThan3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan3~7_cout\ = CARRY((\U1|Puck_Movement|puck_y_coord_temp\(3) & ((\U1|Collision|Add13~4_combout\) # (!\U1|Collision|LessThan3~5_cout\))) # (!\U1|Puck_Movement|puck_y_coord_temp\(3) & (\U1|Collision|Add13~4_combout\ & 
-- !\U1|Collision|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord_temp\(3),
	datab => \U1|Collision|Add13~4_combout\,
	datad => VCC,
	cin => \U1|Collision|LessThan3~5_cout\,
	cout => \U1|Collision|LessThan3~7_cout\);

-- Location: LCCOMB_X34_Y25_N24
\U1|Collision|LessThan3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan3~9_cout\ = CARRY((\U1|Collision|Add13~6_combout\ & (!\U1|Puck_Movement|puck_y_coord_temp\(4) & !\U1|Collision|LessThan3~7_cout\)) # (!\U1|Collision|Add13~6_combout\ & ((!\U1|Collision|LessThan3~7_cout\) # 
-- (!\U1|Puck_Movement|puck_y_coord_temp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add13~6_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(4),
	datad => VCC,
	cin => \U1|Collision|LessThan3~7_cout\,
	cout => \U1|Collision|LessThan3~9_cout\);

-- Location: LCCOMB_X34_Y25_N26
\U1|Collision|LessThan3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan3~11_cout\ = CARRY((\U1|Puck_Movement|puck_y_coord_temp\(5) & ((\U1|Collision|Add13~8_combout\) # (!\U1|Collision|LessThan3~9_cout\))) # (!\U1|Puck_Movement|puck_y_coord_temp\(5) & (\U1|Collision|Add13~8_combout\ & 
-- !\U1|Collision|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord_temp\(5),
	datab => \U1|Collision|Add13~8_combout\,
	datad => VCC,
	cin => \U1|Collision|LessThan3~9_cout\,
	cout => \U1|Collision|LessThan3~11_cout\);

-- Location: LCCOMB_X34_Y25_N28
\U1|Collision|LessThan3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan3~12_combout\ = (\U1|Collision|Add13~10_combout\ & (!\U1|Collision|LessThan3~11_cout\ & \U1|Puck_Movement|puck_y_coord\(6))) # (!\U1|Collision|Add13~10_combout\ & ((\U1|Puck_Movement|puck_y_coord\(6)) # 
-- (!\U1|Collision|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|Add13~10_combout\,
	datad => \U1|Puck_Movement|puck_y_coord\(6),
	cin => \U1|Collision|LessThan3~11_cout\,
	combout => \U1|Collision|LessThan3~12_combout\);

-- Location: LCCOMB_X33_Y25_N18
\U1|Collision|puck_player~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|puck_player~4_combout\ = (\U1|Collision|puck_player~0_combout\ & (((\U1|Collision|puck_player~3_combout\ & !\U1|Collision|LessThan3~12_combout\)) # (!\U1|Collision|LessThan1~12_combout\))) # (!\U1|Collision|puck_player~0_combout\ & 
-- (\U1|Collision|puck_player~3_combout\ & ((!\U1|Collision|LessThan3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|puck_player~0_combout\,
	datab => \U1|Collision|puck_player~3_combout\,
	datac => \U1|Collision|LessThan1~12_combout\,
	datad => \U1|Collision|LessThan3~12_combout\,
	combout => \U1|Collision|puck_player~4_combout\);

-- Location: LCCOMB_X28_Y26_N16
\U1|P2_forward|player_y[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P2_forward|player_y[0]~4_combout\ = !\U1|P2_forward|player_y\(0)
-- \U1|P2_forward|player_y[0]~5\ = CARRY(!\U1|P2_forward|player_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_forward|player_y\(0),
	combout => \U1|P2_forward|player_y[0]~4_combout\,
	cout => \U1|P2_forward|player_y[0]~5\);

-- Location: LCCOMB_X28_Y26_N18
\U1|P2_forward|y_coord[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P2_forward|y_coord[1]~4_combout\ = ((\U1|P2_forward|player_y[3]~3_combout\ $ (\U1|P2_forward|y_coord\(1) $ (!\U1|P2_forward|player_y[0]~5\)))) # (GND)
-- \U1|P2_forward|y_coord[1]~5\ = CARRY((\U1|P2_forward|player_y[3]~3_combout\ & ((\U1|P2_forward|y_coord\(1)) # (!\U1|P2_forward|player_y[0]~5\))) # (!\U1|P2_forward|player_y[3]~3_combout\ & (\U1|P2_forward|y_coord\(1) & !\U1|P2_forward|player_y[0]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_forward|player_y[3]~3_combout\,
	datab => \U1|P2_forward|y_coord\(1),
	datad => VCC,
	cin => \U1|P2_forward|player_y[0]~5\,
	combout => \U1|P2_forward|y_coord[1]~4_combout\,
	cout => \U1|P2_forward|y_coord[1]~5\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCCOMB_X28_Y26_N14
\U1|P2_forward|player_y[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P2_forward|player_y[6]~10_combout\ = (\U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\ & ((\SW~combout\(1) & ((\U1|Collision|p2_forward_boundary\(0)) # (!\U1|Collision|p2_forward_boundary\(1)))) # (!\SW~combout\(1) & 
-- ((!\U1|Collision|p2_forward_boundary\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|p2_forward_boundary\(1),
	datab => \SW~combout\(1),
	datac => \U1|Collision|p2_forward_boundary\(0),
	datad => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	combout => \U1|P2_forward|player_y[6]~10_combout\);

-- Location: LCFF_X28_Y26_N19
\U1|P2_forward|y_coord[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P2_forward|y_coord[1]~4_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P2_forward|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P2_forward|y_coord\(1));

-- Location: LCCOMB_X28_Y26_N20
\U1|P2_forward|y_coord[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P2_forward|y_coord[2]~6_combout\ = (\U1|P2_forward|y_coord\(2) & ((\U1|P2_forward|player_y[3]~3_combout\ & (\U1|P2_forward|y_coord[1]~5\ & VCC)) # (!\U1|P2_forward|player_y[3]~3_combout\ & (!\U1|P2_forward|y_coord[1]~5\)))) # 
-- (!\U1|P2_forward|y_coord\(2) & ((\U1|P2_forward|player_y[3]~3_combout\ & (!\U1|P2_forward|y_coord[1]~5\)) # (!\U1|P2_forward|player_y[3]~3_combout\ & ((\U1|P2_forward|y_coord[1]~5\) # (GND)))))
-- \U1|P2_forward|y_coord[2]~7\ = CARRY((\U1|P2_forward|y_coord\(2) & (!\U1|P2_forward|player_y[3]~3_combout\ & !\U1|P2_forward|y_coord[1]~5\)) # (!\U1|P2_forward|y_coord\(2) & ((!\U1|P2_forward|y_coord[1]~5\) # (!\U1|P2_forward|player_y[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_forward|y_coord\(2),
	datab => \U1|P2_forward|player_y[3]~3_combout\,
	datad => VCC,
	cin => \U1|P2_forward|y_coord[1]~5\,
	combout => \U1|P2_forward|y_coord[2]~6_combout\,
	cout => \U1|P2_forward|y_coord[2]~7\);

-- Location: LCCOMB_X28_Y26_N22
\U1|P2_forward|player_y[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P2_forward|player_y[3]~6_combout\ = (\U1|P2_forward|player_y[3]~3_combout\ & ((\U1|P2_forward|player_y\(3) & (!\U1|P2_forward|y_coord[2]~7\)) # (!\U1|P2_forward|player_y\(3) & ((\U1|P2_forward|y_coord[2]~7\) # (GND))))) # 
-- (!\U1|P2_forward|player_y[3]~3_combout\ & ((\U1|P2_forward|player_y\(3) & (\U1|P2_forward|y_coord[2]~7\ & VCC)) # (!\U1|P2_forward|player_y\(3) & (!\U1|P2_forward|y_coord[2]~7\))))
-- \U1|P2_forward|player_y[3]~7\ = CARRY((\U1|P2_forward|player_y[3]~3_combout\ & ((!\U1|P2_forward|y_coord[2]~7\) # (!\U1|P2_forward|player_y\(3)))) # (!\U1|P2_forward|player_y[3]~3_combout\ & (!\U1|P2_forward|player_y\(3) & !\U1|P2_forward|y_coord[2]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_forward|player_y[3]~3_combout\,
	datab => \U1|P2_forward|player_y\(3),
	datad => VCC,
	cin => \U1|P2_forward|y_coord[2]~7\,
	combout => \U1|P2_forward|player_y[3]~6_combout\,
	cout => \U1|P2_forward|player_y[3]~7\);

-- Location: LCFF_X28_Y26_N23
\U1|P2_forward|player_y[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P2_forward|player_y[3]~6_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P2_forward|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P2_forward|player_y\(3));

-- Location: LCCOMB_X28_Y26_N0
\U1|screen|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add3~0_combout\ = (\U1|P2_forward|player_y\(0) & (!\U1|P2_forward|y_coord\(1) & VCC)) # (!\U1|P2_forward|player_y\(0) & (\U1|P2_forward|y_coord\(1) $ (GND)))
-- \U1|screen|Add3~1\ = CARRY((!\U1|P2_forward|player_y\(0) & !\U1|P2_forward|y_coord\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_forward|player_y\(0),
	datab => \U1|P2_forward|y_coord\(1),
	datad => VCC,
	combout => \U1|screen|Add3~0_combout\,
	cout => \U1|screen|Add3~1\);

-- Location: LCCOMB_X28_Y26_N4
\U1|screen|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add3~4_combout\ = (\U1|P2_forward|player_y\(3) & ((GND) # (!\U1|screen|Add3~3\))) # (!\U1|P2_forward|player_y\(3) & (\U1|screen|Add3~3\ $ (GND)))
-- \U1|screen|Add3~5\ = CARRY((\U1|P2_forward|player_y\(3)) # (!\U1|screen|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|P2_forward|player_y\(3),
	datad => VCC,
	cin => \U1|screen|Add3~3\,
	combout => \U1|screen|Add3~4_combout\,
	cout => \U1|screen|Add3~5\);

-- Location: LCCOMB_X28_Y26_N6
\U1|screen|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add3~6_combout\ = (\U1|P2_forward|y_coord\(4) & ((\U1|screen|Add3~5\) # (GND))) # (!\U1|P2_forward|y_coord\(4) & (!\U1|screen|Add3~5\))
-- \U1|screen|Add3~7\ = CARRY((\U1|P2_forward|y_coord\(4)) # (!\U1|screen|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_forward|y_coord\(4),
	datad => VCC,
	cin => \U1|screen|Add3~5\,
	combout => \U1|screen|Add3~6_combout\,
	cout => \U1|screen|Add3~7\);

-- Location: LCFF_X28_Y26_N17
\U1|P2_forward|player_y[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P2_forward|player_y[0]~4_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P2_forward|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P2_forward|player_y\(0));

-- Location: LCCOMB_X28_Y26_N24
\U1|P2_forward|y_coord[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P2_forward|y_coord[4]~8_combout\ = (\U1|P2_forward|y_coord\(4) & ((\U1|P2_forward|player_y[3]~3_combout\ & (\U1|P2_forward|player_y[3]~7\ & VCC)) # (!\U1|P2_forward|player_y[3]~3_combout\ & (!\U1|P2_forward|player_y[3]~7\)))) # 
-- (!\U1|P2_forward|y_coord\(4) & ((\U1|P2_forward|player_y[3]~3_combout\ & (!\U1|P2_forward|player_y[3]~7\)) # (!\U1|P2_forward|player_y[3]~3_combout\ & ((\U1|P2_forward|player_y[3]~7\) # (GND)))))
-- \U1|P2_forward|y_coord[4]~9\ = CARRY((\U1|P2_forward|y_coord\(4) & (!\U1|P2_forward|player_y[3]~3_combout\ & !\U1|P2_forward|player_y[3]~7\)) # (!\U1|P2_forward|y_coord\(4) & ((!\U1|P2_forward|player_y[3]~7\) # (!\U1|P2_forward|player_y[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_forward|y_coord\(4),
	datab => \U1|P2_forward|player_y[3]~3_combout\,
	datad => VCC,
	cin => \U1|P2_forward|player_y[3]~7\,
	combout => \U1|P2_forward|y_coord[4]~8_combout\,
	cout => \U1|P2_forward|y_coord[4]~9\);

-- Location: LCCOMB_X28_Y26_N26
\U1|P2_forward|y_coord[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P2_forward|y_coord[5]~10_combout\ = ((\U1|P2_forward|y_coord\(5) $ (\U1|P2_forward|player_y[3]~3_combout\ $ (!\U1|P2_forward|y_coord[4]~9\)))) # (GND)
-- \U1|P2_forward|y_coord[5]~11\ = CARRY((\U1|P2_forward|y_coord\(5) & ((\U1|P2_forward|player_y[3]~3_combout\) # (!\U1|P2_forward|y_coord[4]~9\))) # (!\U1|P2_forward|y_coord\(5) & (\U1|P2_forward|player_y[3]~3_combout\ & !\U1|P2_forward|y_coord[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_forward|y_coord\(5),
	datab => \U1|P2_forward|player_y[3]~3_combout\,
	datad => VCC,
	cin => \U1|P2_forward|y_coord[4]~9\,
	combout => \U1|P2_forward|y_coord[5]~10_combout\,
	cout => \U1|P2_forward|y_coord[5]~11\);

-- Location: LCFF_X28_Y26_N27
\U1|P2_forward|y_coord[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P2_forward|y_coord[5]~10_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P2_forward|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P2_forward|y_coord\(5));

-- Location: LCCOMB_X28_Y26_N8
\U1|screen|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add3~8_combout\ = (\U1|P2_forward|y_coord\(5) & (!\U1|screen|Add3~7\ & VCC)) # (!\U1|P2_forward|y_coord\(5) & (\U1|screen|Add3~7\ $ (GND)))
-- \U1|screen|Add3~9\ = CARRY((!\U1|P2_forward|y_coord\(5) & !\U1|screen|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|P2_forward|y_coord\(5),
	datad => VCC,
	cin => \U1|screen|Add3~7\,
	combout => \U1|screen|Add3~8_combout\,
	cout => \U1|screen|Add3~9\);

-- Location: LCCOMB_X29_Y26_N30
\U1|Collision|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal7~0_combout\ = (\U1|screen|Add3~10_combout\ & (\U1|P2_forward|player_y\(0) & (!\U1|screen|Add3~0_combout\ & \U1|screen|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add3~10_combout\,
	datab => \U1|P2_forward|player_y\(0),
	datac => \U1|screen|Add3~0_combout\,
	datad => \U1|screen|Add3~8_combout\,
	combout => \U1|Collision|Equal7~0_combout\);

-- Location: LCCOMB_X29_Y26_N0
\U1|Collision|Equal7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal7~1_combout\ = (\U1|screen|Add3~2_combout\ & (\U1|screen|Add3~4_combout\ & (!\U1|screen|Add3~6_combout\ & \U1|Collision|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add3~2_combout\,
	datab => \U1|screen|Add3~4_combout\,
	datac => \U1|screen|Add3~6_combout\,
	datad => \U1|Collision|Equal7~0_combout\,
	combout => \U1|Collision|Equal7~1_combout\);

-- Location: LCFF_X29_Y26_N1
\U1|Collision|p2_forward_boundary[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Collision|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Collision|p2_forward_boundary\(0));

-- Location: LCCOMB_X28_Y26_N30
\U1|P2_forward|player_y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P2_forward|player_y[3]~3_combout\ = (!\U1|Collision|p2_forward_boundary\(0) & ((\U1|Collision|p2_forward_boundary\(1)) # (!\SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|p2_forward_boundary\(1),
	datac => \U1|Collision|p2_forward_boundary\(0),
	datad => \SW~combout\(1),
	combout => \U1|P2_forward|player_y[3]~3_combout\);

-- Location: LCCOMB_X28_Y26_N28
\U1|P2_forward|player_y[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P2_forward|player_y[6]~8_combout\ = \U1|P2_forward|player_y[3]~3_combout\ $ (\U1|P2_forward|y_coord[5]~11\ $ (\U1|P2_forward|player_y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|P2_forward|player_y[3]~3_combout\,
	datad => \U1|P2_forward|player_y\(6),
	cin => \U1|P2_forward|y_coord[5]~11\,
	combout => \U1|P2_forward|player_y[6]~8_combout\);

-- Location: LCFF_X28_Y26_N29
\U1|P2_forward|player_y[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P2_forward|player_y[6]~8_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P2_forward|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P2_forward|player_y\(6));

-- Location: LCFF_X28_Y26_N25
\U1|P2_forward|y_coord[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P2_forward|y_coord[4]~8_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P2_forward|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P2_forward|y_coord\(4));

-- Location: LCFF_X28_Y26_N21
\U1|P2_forward|y_coord[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P2_forward|y_coord[2]~6_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P2_forward|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P2_forward|y_coord\(2));

-- Location: LCCOMB_X31_Y26_N0
\U1|Collision|Add11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add11~1_cout\ = CARRY(!\U1|P2_forward|player_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_forward|player_y\(0),
	datad => VCC,
	cout => \U1|Collision|Add11~1_cout\);

-- Location: LCCOMB_X31_Y26_N2
\U1|Collision|Add11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add11~2_combout\ = (\SW~combout\(1) & ((\U1|P2_forward|y_coord\(1) & (!\U1|Collision|Add11~1_cout\)) # (!\U1|P2_forward|y_coord\(1) & (\U1|Collision|Add11~1_cout\ & VCC)))) # (!\SW~combout\(1) & ((\U1|P2_forward|y_coord\(1) & 
-- ((\U1|Collision|Add11~1_cout\) # (GND))) # (!\U1|P2_forward|y_coord\(1) & (!\U1|Collision|Add11~1_cout\))))
-- \U1|Collision|Add11~3\ = CARRY((\SW~combout\(1) & (\U1|P2_forward|y_coord\(1) & !\U1|Collision|Add11~1_cout\)) # (!\SW~combout\(1) & ((\U1|P2_forward|y_coord\(1)) # (!\U1|Collision|Add11~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \U1|P2_forward|y_coord\(1),
	datad => VCC,
	cin => \U1|Collision|Add11~1_cout\,
	combout => \U1|Collision|Add11~2_combout\,
	cout => \U1|Collision|Add11~3\);

-- Location: LCCOMB_X31_Y26_N4
\U1|Collision|Add11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add11~4_combout\ = ((\SW~combout\(1) $ (\U1|P2_forward|y_coord\(2) $ (\U1|Collision|Add11~3\)))) # (GND)
-- \U1|Collision|Add11~5\ = CARRY((\SW~combout\(1) & ((!\U1|Collision|Add11~3\) # (!\U1|P2_forward|y_coord\(2)))) # (!\SW~combout\(1) & (!\U1|P2_forward|y_coord\(2) & !\U1|Collision|Add11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \U1|P2_forward|y_coord\(2),
	datad => VCC,
	cin => \U1|Collision|Add11~3\,
	combout => \U1|Collision|Add11~4_combout\,
	cout => \U1|Collision|Add11~5\);

-- Location: LCCOMB_X31_Y26_N8
\U1|Collision|Add11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add11~8_combout\ = ((\SW~combout\(1) $ (\U1|P2_forward|y_coord\(4) $ (\U1|Collision|Add11~7\)))) # (GND)
-- \U1|Collision|Add11~9\ = CARRY((\SW~combout\(1) & ((!\U1|Collision|Add11~7\) # (!\U1|P2_forward|y_coord\(4)))) # (!\SW~combout\(1) & (!\U1|P2_forward|y_coord\(4) & !\U1|Collision|Add11~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \U1|P2_forward|y_coord\(4),
	datad => VCC,
	cin => \U1|Collision|Add11~7\,
	combout => \U1|Collision|Add11~8_combout\,
	cout => \U1|Collision|Add11~9\);

-- Location: LCCOMB_X31_Y26_N10
\U1|Collision|Add11~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add11~10_combout\ = (\SW~combout\(1) & ((\U1|P2_forward|y_coord\(5) & (!\U1|Collision|Add11~9\)) # (!\U1|P2_forward|y_coord\(5) & (\U1|Collision|Add11~9\ & VCC)))) # (!\SW~combout\(1) & ((\U1|P2_forward|y_coord\(5) & 
-- ((\U1|Collision|Add11~9\) # (GND))) # (!\U1|P2_forward|y_coord\(5) & (!\U1|Collision|Add11~9\))))
-- \U1|Collision|Add11~11\ = CARRY((\SW~combout\(1) & (\U1|P2_forward|y_coord\(5) & !\U1|Collision|Add11~9\)) # (!\SW~combout\(1) & ((\U1|P2_forward|y_coord\(5)) # (!\U1|Collision|Add11~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \U1|P2_forward|y_coord\(5),
	datad => VCC,
	cin => \U1|Collision|Add11~9\,
	combout => \U1|Collision|Add11~10_combout\,
	cout => \U1|Collision|Add11~11\);

-- Location: LCCOMB_X31_Y26_N12
\U1|Collision|Add11~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add11~12_combout\ = \U1|P2_forward|player_y\(6) $ (\U1|Collision|Add11~11\ $ (!\SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|P2_forward|player_y\(6),
	datad => \SW~combout\(1),
	cin => \U1|Collision|Add11~11\,
	combout => \U1|Collision|Add11~12_combout\);

-- Location: LCCOMB_X31_Y26_N14
\U1|Collision|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan6~1_cout\ = CARRY((\U1|P2_forward|player_y\(0) & !\U1|Puck_Movement|puck_x_coord\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_forward|player_y\(0),
	datab => \U1|Puck_Movement|puck_x_coord\(0),
	datad => VCC,
	cout => \U1|Collision|LessThan6~1_cout\);

-- Location: LCCOMB_X31_Y26_N16
\U1|Collision|LessThan6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan6~3_cout\ = CARRY((\U1|Puck_Movement|puck_y_coord\(1) & ((!\U1|Collision|LessThan6~1_cout\) # (!\U1|Collision|Add11~2_combout\))) # (!\U1|Puck_Movement|puck_y_coord\(1) & (!\U1|Collision|Add11~2_combout\ & 
-- !\U1|Collision|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord\(1),
	datab => \U1|Collision|Add11~2_combout\,
	datad => VCC,
	cin => \U1|Collision|LessThan6~1_cout\,
	cout => \U1|Collision|LessThan6~3_cout\);

-- Location: LCCOMB_X31_Y26_N18
\U1|Collision|LessThan6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan6~5_cout\ = CARRY((\U1|Puck_Movement|puck_y_coord_temp\(2) & ((\U1|Collision|Add11~4_combout\) # (!\U1|Collision|LessThan6~3_cout\))) # (!\U1|Puck_Movement|puck_y_coord_temp\(2) & (\U1|Collision|Add11~4_combout\ & 
-- !\U1|Collision|LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord_temp\(2),
	datab => \U1|Collision|Add11~4_combout\,
	datad => VCC,
	cin => \U1|Collision|LessThan6~3_cout\,
	cout => \U1|Collision|LessThan6~5_cout\);

-- Location: LCCOMB_X31_Y26_N20
\U1|Collision|LessThan6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan6~7_cout\ = CARRY((\U1|Collision|Add11~6_combout\ & (!\U1|Puck_Movement|puck_y_coord_temp\(3) & !\U1|Collision|LessThan6~5_cout\)) # (!\U1|Collision|Add11~6_combout\ & ((!\U1|Collision|LessThan6~5_cout\) # 
-- (!\U1|Puck_Movement|puck_y_coord_temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add11~6_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(3),
	datad => VCC,
	cin => \U1|Collision|LessThan6~5_cout\,
	cout => \U1|Collision|LessThan6~7_cout\);

-- Location: LCCOMB_X31_Y26_N22
\U1|Collision|LessThan6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan6~9_cout\ = CARRY((\U1|Puck_Movement|puck_y_coord_temp\(4) & ((\U1|Collision|Add11~8_combout\) # (!\U1|Collision|LessThan6~7_cout\))) # (!\U1|Puck_Movement|puck_y_coord_temp\(4) & (\U1|Collision|Add11~8_combout\ & 
-- !\U1|Collision|LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord_temp\(4),
	datab => \U1|Collision|Add11~8_combout\,
	datad => VCC,
	cin => \U1|Collision|LessThan6~7_cout\,
	cout => \U1|Collision|LessThan6~9_cout\);

-- Location: LCCOMB_X31_Y26_N24
\U1|Collision|LessThan6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan6~11_cout\ = CARRY((\U1|Puck_Movement|puck_y_coord_temp\(5) & (!\U1|Collision|Add11~10_combout\ & !\U1|Collision|LessThan6~9_cout\)) # (!\U1|Puck_Movement|puck_y_coord_temp\(5) & ((!\U1|Collision|LessThan6~9_cout\) # 
-- (!\U1|Collision|Add11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord_temp\(5),
	datab => \U1|Collision|Add11~10_combout\,
	datad => VCC,
	cin => \U1|Collision|LessThan6~9_cout\,
	cout => \U1|Collision|LessThan6~11_cout\);

-- Location: LCCOMB_X31_Y26_N26
\U1|Collision|LessThan6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan6~12_combout\ = (\U1|Puck_Movement|puck_y_coord\(6) & (!\U1|Collision|LessThan6~11_cout\ & \U1|Collision|Add11~12_combout\)) # (!\U1|Puck_Movement|puck_y_coord\(6) & ((\U1|Collision|Add11~12_combout\) # 
-- (!\U1|Collision|LessThan6~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Puck_Movement|puck_y_coord\(6),
	datad => \U1|Collision|Add11~12_combout\,
	cin => \U1|Collision|LessThan6~11_cout\,
	combout => \U1|Collision|LessThan6~12_combout\);

-- Location: LCCOMB_X33_Y26_N4
\U1|Puck_Movement|puck_x_direction[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_x_direction[0]~1_combout\ = (\U1|Puck_Movement|puck_x_direction[0]~0_combout\ & ((\U1|DiffClock|slowclock~regout\ & (\U1|Puck_Movement|puck_x_vector~0_combout\)) # (!\U1|DiffClock|slowclock~regout\ & 
-- ((\U1|Puck_Movement|puck_x_direction\(0)))))) # (!\U1|Puck_Movement|puck_x_direction[0]~0_combout\ & (((\U1|Puck_Movement|puck_x_direction\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_vector~0_combout\,
	datab => \U1|Puck_Movement|puck_x_direction[0]~0_combout\,
	datac => \U1|Puck_Movement|puck_x_direction\(0),
	datad => \U1|DiffClock|slowclock~regout\,
	combout => \U1|Puck_Movement|puck_x_direction[0]~1_combout\);

-- Location: LCFF_X33_Y26_N5
\U1|Puck_Movement|puck_x_direction[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Puck_Movement|puck_x_direction[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Puck_Movement|puck_x_direction\(0));

-- Location: LCCOMB_X32_Y26_N28
\U1|Collision|puck_player~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|puck_player~5_combout\ = (!\U1|Puck_Movement|puck_x_coord\(3) & ((\U1|Puck_Movement|puck_x_coord\(1) & (!\U1|Puck_Movement|puck_x_coord\(2) & \U1|Puck_Movement|puck_x_direction\(0))) # (!\U1|Puck_Movement|puck_x_coord\(1) & 
-- (\U1|Puck_Movement|puck_x_coord\(2) & !\U1|Puck_Movement|puck_x_direction\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord\(1),
	datab => \U1|Puck_Movement|puck_x_coord\(2),
	datac => \U1|Puck_Movement|puck_x_coord\(3),
	datad => \U1|Puck_Movement|puck_x_direction\(0),
	combout => \U1|Collision|puck_player~5_combout\);

-- Location: LCCOMB_X32_Y26_N14
\U1|Collision|puck_player~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|puck_player~6_combout\ = (!\U1|Collision|LessThan7~12_combout\ & (!\U1|Collision|LessThan6~12_combout\ & (!\U1|Puck_Movement|puck_x_coord_temp\(6) & \U1|Collision|puck_player~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|LessThan7~12_combout\,
	datab => \U1|Collision|LessThan6~12_combout\,
	datac => \U1|Puck_Movement|puck_x_coord_temp\(6),
	datad => \U1|Collision|puck_player~5_combout\,
	combout => \U1|Collision|puck_player~6_combout\);

-- Location: LCCOMB_X32_Y26_N30
\U1|Collision|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|process_0~0_combout\ = (\U1|Puck_Movement|puck_x_coord\(1) & (\U1|Puck_Movement|puck_x_coord\(2) & (!\U1|Puck_Movement|puck_x_coord\(3) & \U1|Puck_Movement|puck_x_direction\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord\(1),
	datab => \U1|Puck_Movement|puck_x_coord\(2),
	datac => \U1|Puck_Movement|puck_x_coord\(3),
	datad => \U1|Puck_Movement|puck_x_direction\(0),
	combout => \U1|Collision|process_0~0_combout\);

-- Location: LCCOMB_X33_Y27_N28
\U1|Collision|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|process_0~1_combout\ = (\U1|Puck_Movement|puck_x_coord_temp\(4) & (!\U1|Puck_Movement|puck_x_coord\(0) & \U1|Collision|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord_temp\(4),
	datac => \U1|Puck_Movement|puck_x_coord\(0),
	datad => \U1|Collision|process_0~0_combout\,
	combout => \U1|Collision|process_0~1_combout\);

-- Location: LCCOMB_X32_Y24_N8
\U1|Collision|Equal17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal17~0_combout\ = (!\U1|Puck_Movement|puck_x_coord\(5) & (\U1|Puck_Movement|puck_x_coord_temp\(6) & \U1|Puck_Movement|puck_x_coord\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Puck_Movement|puck_x_coord\(5),
	datac => \U1|Puck_Movement|puck_x_coord_temp\(6),
	datad => \U1|Puck_Movement|puck_x_coord\(7),
	combout => \U1|Collision|Equal17~0_combout\);

-- Location: LCCOMB_X28_Y27_N16
\U1|P2_goalie|player_y[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P2_goalie|player_y[0]~4_combout\ = !\U1|P2_goalie|player_y\(0)
-- \U1|P2_goalie|player_y[0]~5\ = CARRY(!\U1|P2_goalie|player_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_goalie|player_y\(0),
	combout => \U1|P2_goalie|player_y[0]~4_combout\,
	cout => \U1|P2_goalie|player_y[0]~5\);

-- Location: LCCOMB_X28_Y27_N18
\U1|P2_goalie|y_coord[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P2_goalie|y_coord[1]~4_combout\ = ((\U1|P2_goalie|player_y[3]~3_combout\ $ (\U1|P2_goalie|y_coord\(1) $ (!\U1|P2_goalie|player_y[0]~5\)))) # (GND)
-- \U1|P2_goalie|y_coord[1]~5\ = CARRY((\U1|P2_goalie|player_y[3]~3_combout\ & ((\U1|P2_goalie|y_coord\(1)) # (!\U1|P2_goalie|player_y[0]~5\))) # (!\U1|P2_goalie|player_y[3]~3_combout\ & (\U1|P2_goalie|y_coord\(1) & !\U1|P2_goalie|player_y[0]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_goalie|player_y[3]~3_combout\,
	datab => \U1|P2_goalie|y_coord\(1),
	datad => VCC,
	cin => \U1|P2_goalie|player_y[0]~5\,
	combout => \U1|P2_goalie|y_coord[1]~4_combout\,
	cout => \U1|P2_goalie|y_coord[1]~5\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCFF_X28_Y27_N17
\U1|P2_goalie|player_y[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P2_goalie|player_y[0]~4_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P2_goalie|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P2_goalie|player_y\(0));

-- Location: LCCOMB_X28_Y27_N20
\U1|P2_goalie|y_coord[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P2_goalie|y_coord[2]~6_combout\ = (\U1|P2_goalie|y_coord\(2) & ((\U1|P2_goalie|player_y[3]~3_combout\ & (\U1|P2_goalie|y_coord[1]~5\ & VCC)) # (!\U1|P2_goalie|player_y[3]~3_combout\ & (!\U1|P2_goalie|y_coord[1]~5\)))) # (!\U1|P2_goalie|y_coord\(2) & 
-- ((\U1|P2_goalie|player_y[3]~3_combout\ & (!\U1|P2_goalie|y_coord[1]~5\)) # (!\U1|P2_goalie|player_y[3]~3_combout\ & ((\U1|P2_goalie|y_coord[1]~5\) # (GND)))))
-- \U1|P2_goalie|y_coord[2]~7\ = CARRY((\U1|P2_goalie|y_coord\(2) & (!\U1|P2_goalie|player_y[3]~3_combout\ & !\U1|P2_goalie|y_coord[1]~5\)) # (!\U1|P2_goalie|y_coord\(2) & ((!\U1|P2_goalie|y_coord[1]~5\) # (!\U1|P2_goalie|player_y[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_goalie|y_coord\(2),
	datab => \U1|P2_goalie|player_y[3]~3_combout\,
	datad => VCC,
	cin => \U1|P2_goalie|y_coord[1]~5\,
	combout => \U1|P2_goalie|y_coord[2]~6_combout\,
	cout => \U1|P2_goalie|y_coord[2]~7\);

-- Location: LCCOMB_X28_Y27_N22
\U1|P2_goalie|player_y[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P2_goalie|player_y[3]~6_combout\ = (\U1|P2_goalie|player_y[3]~3_combout\ & ((\U1|P2_goalie|player_y\(3) & (!\U1|P2_goalie|y_coord[2]~7\)) # (!\U1|P2_goalie|player_y\(3) & ((\U1|P2_goalie|y_coord[2]~7\) # (GND))))) # 
-- (!\U1|P2_goalie|player_y[3]~3_combout\ & ((\U1|P2_goalie|player_y\(3) & (\U1|P2_goalie|y_coord[2]~7\ & VCC)) # (!\U1|P2_goalie|player_y\(3) & (!\U1|P2_goalie|y_coord[2]~7\))))
-- \U1|P2_goalie|player_y[3]~7\ = CARRY((\U1|P2_goalie|player_y[3]~3_combout\ & ((!\U1|P2_goalie|y_coord[2]~7\) # (!\U1|P2_goalie|player_y\(3)))) # (!\U1|P2_goalie|player_y[3]~3_combout\ & (!\U1|P2_goalie|player_y\(3) & !\U1|P2_goalie|y_coord[2]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_goalie|player_y[3]~3_combout\,
	datab => \U1|P2_goalie|player_y\(3),
	datad => VCC,
	cin => \U1|P2_goalie|y_coord[2]~7\,
	combout => \U1|P2_goalie|player_y[3]~6_combout\,
	cout => \U1|P2_goalie|player_y[3]~7\);

-- Location: LCFF_X28_Y27_N23
\U1|P2_goalie|player_y[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P2_goalie|player_y[3]~6_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P2_goalie|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P2_goalie|player_y\(3));

-- Location: LCCOMB_X28_Y27_N24
\U1|P2_goalie|y_coord[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P2_goalie|y_coord[4]~8_combout\ = (\U1|P2_goalie|y_coord\(4) & ((\U1|P2_goalie|player_y[3]~3_combout\ & (\U1|P2_goalie|player_y[3]~7\ & VCC)) # (!\U1|P2_goalie|player_y[3]~3_combout\ & (!\U1|P2_goalie|player_y[3]~7\)))) # (!\U1|P2_goalie|y_coord\(4) & 
-- ((\U1|P2_goalie|player_y[3]~3_combout\ & (!\U1|P2_goalie|player_y[3]~7\)) # (!\U1|P2_goalie|player_y[3]~3_combout\ & ((\U1|P2_goalie|player_y[3]~7\) # (GND)))))
-- \U1|P2_goalie|y_coord[4]~9\ = CARRY((\U1|P2_goalie|y_coord\(4) & (!\U1|P2_goalie|player_y[3]~3_combout\ & !\U1|P2_goalie|player_y[3]~7\)) # (!\U1|P2_goalie|y_coord\(4) & ((!\U1|P2_goalie|player_y[3]~7\) # (!\U1|P2_goalie|player_y[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_goalie|y_coord\(4),
	datab => \U1|P2_goalie|player_y[3]~3_combout\,
	datad => VCC,
	cin => \U1|P2_goalie|player_y[3]~7\,
	combout => \U1|P2_goalie|y_coord[4]~8_combout\,
	cout => \U1|P2_goalie|y_coord[4]~9\);

-- Location: LCFF_X28_Y27_N25
\U1|P2_goalie|y_coord[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P2_goalie|y_coord[4]~8_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P2_goalie|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P2_goalie|y_coord\(4));

-- Location: LCCOMB_X29_Y27_N0
\U1|screen|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add2~0_combout\ = (\U1|P2_goalie|player_y\(0) & (!\U1|P2_goalie|y_coord\(1) & VCC)) # (!\U1|P2_goalie|player_y\(0) & (\U1|P2_goalie|y_coord\(1) $ (GND)))
-- \U1|screen|Add2~1\ = CARRY((!\U1|P2_goalie|player_y\(0) & !\U1|P2_goalie|y_coord\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_goalie|player_y\(0),
	datab => \U1|P2_goalie|y_coord\(1),
	datad => VCC,
	combout => \U1|screen|Add2~0_combout\,
	cout => \U1|screen|Add2~1\);

-- Location: LCCOMB_X29_Y27_N2
\U1|screen|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add2~2_combout\ = (\U1|P2_goalie|y_coord\(2) & ((\U1|screen|Add2~1\) # (GND))) # (!\U1|P2_goalie|y_coord\(2) & (!\U1|screen|Add2~1\))
-- \U1|screen|Add2~3\ = CARRY((\U1|P2_goalie|y_coord\(2)) # (!\U1|screen|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_goalie|y_coord\(2),
	datad => VCC,
	cin => \U1|screen|Add2~1\,
	combout => \U1|screen|Add2~2_combout\,
	cout => \U1|screen|Add2~3\);

-- Location: LCCOMB_X29_Y27_N4
\U1|screen|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add2~4_combout\ = (\U1|P2_goalie|player_y\(3) & ((GND) # (!\U1|screen|Add2~3\))) # (!\U1|P2_goalie|player_y\(3) & (\U1|screen|Add2~3\ $ (GND)))
-- \U1|screen|Add2~5\ = CARRY((\U1|P2_goalie|player_y\(3)) # (!\U1|screen|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|P2_goalie|player_y\(3),
	datad => VCC,
	cin => \U1|screen|Add2~3\,
	combout => \U1|screen|Add2~4_combout\,
	cout => \U1|screen|Add2~5\);

-- Location: LCCOMB_X29_Y27_N8
\U1|screen|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add2~8_combout\ = (\U1|P2_goalie|y_coord\(5) & (!\U1|screen|Add2~7\ & VCC)) # (!\U1|P2_goalie|y_coord\(5) & (\U1|screen|Add2~7\ $ (GND)))
-- \U1|screen|Add2~9\ = CARRY((!\U1|P2_goalie|y_coord\(5) & !\U1|screen|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|P2_goalie|y_coord\(5),
	datad => VCC,
	cin => \U1|screen|Add2~7\,
	combout => \U1|screen|Add2~8_combout\,
	cout => \U1|screen|Add2~9\);

-- Location: LCCOMB_X29_Y27_N14
\U1|Collision|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal5~0_combout\ = (\U1|screen|Add2~10_combout\ & (\U1|P2_goalie|player_y\(0) & (\U1|screen|Add2~8_combout\ & !\U1|screen|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add2~10_combout\,
	datab => \U1|P2_goalie|player_y\(0),
	datac => \U1|screen|Add2~8_combout\,
	datad => \U1|screen|Add2~0_combout\,
	combout => \U1|Collision|Equal5~0_combout\);

-- Location: LCCOMB_X29_Y27_N12
\U1|Collision|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal5~1_combout\ = (!\U1|screen|Add2~6_combout\ & (\U1|Collision|Equal5~0_combout\ & (\U1|screen|Add2~4_combout\ & \U1|screen|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add2~6_combout\,
	datab => \U1|Collision|Equal5~0_combout\,
	datac => \U1|screen|Add2~4_combout\,
	datad => \U1|screen|Add2~2_combout\,
	combout => \U1|Collision|Equal5~1_combout\);

-- Location: LCFF_X29_Y27_N13
\U1|Collision|p2_goalie_boundary[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Collision|Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Collision|p2_goalie_boundary\(0));

-- Location: LCCOMB_X28_Y27_N4
\U1|P2_goalie|player_y[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P2_goalie|player_y[6]~10_combout\ = (\U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\ & ((\SW~combout\(0) & ((\U1|Collision|p2_goalie_boundary\(0)) # (!\U1|Collision|p2_goalie_boundary\(1)))) # (!\SW~combout\(0) & 
-- ((!\U1|Collision|p2_goalie_boundary\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	datab => \U1|Collision|p2_goalie_boundary\(1),
	datac => \SW~combout\(0),
	datad => \U1|Collision|p2_goalie_boundary\(0),
	combout => \U1|P2_goalie|player_y[6]~10_combout\);

-- Location: LCFF_X28_Y27_N19
\U1|P2_goalie|y_coord[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P2_goalie|y_coord[1]~4_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P2_goalie|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P2_goalie|y_coord\(1));

-- Location: LCFF_X28_Y27_N21
\U1|P2_goalie|y_coord[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P2_goalie|y_coord[2]~6_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P2_goalie|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P2_goalie|y_coord\(2));

-- Location: LCCOMB_X28_Y27_N0
\U1|Collision|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Equal4~1_combout\ = (\U1|Collision|Equal4~0_combout\ & (\U1|P2_goalie|y_coord\(2) & (\U1|P2_goalie|y_coord\(4) & \U1|P2_goalie|player_y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Equal4~0_combout\,
	datab => \U1|P2_goalie|y_coord\(2),
	datac => \U1|P2_goalie|y_coord\(4),
	datad => \U1|P2_goalie|player_y\(3),
	combout => \U1|Collision|Equal4~1_combout\);

-- Location: LCFF_X28_Y27_N1
\U1|Collision|p2_goalie_boundary[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Collision|Equal4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Collision|p2_goalie_boundary\(1));

-- Location: LCCOMB_X28_Y27_N2
\U1|P2_goalie|player_y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P2_goalie|player_y[3]~3_combout\ = (!\U1|Collision|p2_goalie_boundary\(0) & ((\U1|Collision|p2_goalie_boundary\(1)) # (!\SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|p2_goalie_boundary\(1),
	datac => \SW~combout\(0),
	datad => \U1|Collision|p2_goalie_boundary\(0),
	combout => \U1|P2_goalie|player_y[3]~3_combout\);

-- Location: LCCOMB_X28_Y27_N26
\U1|P2_goalie|y_coord[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P2_goalie|y_coord[5]~10_combout\ = ((\U1|P2_goalie|y_coord\(5) $ (\U1|P2_goalie|player_y[3]~3_combout\ $ (!\U1|P2_goalie|y_coord[4]~9\)))) # (GND)
-- \U1|P2_goalie|y_coord[5]~11\ = CARRY((\U1|P2_goalie|y_coord\(5) & ((\U1|P2_goalie|player_y[3]~3_combout\) # (!\U1|P2_goalie|y_coord[4]~9\))) # (!\U1|P2_goalie|y_coord\(5) & (\U1|P2_goalie|player_y[3]~3_combout\ & !\U1|P2_goalie|y_coord[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_goalie|y_coord\(5),
	datab => \U1|P2_goalie|player_y[3]~3_combout\,
	datad => VCC,
	cin => \U1|P2_goalie|y_coord[4]~9\,
	combout => \U1|P2_goalie|y_coord[5]~10_combout\,
	cout => \U1|P2_goalie|y_coord[5]~11\);

-- Location: LCFF_X28_Y27_N27
\U1|P2_goalie|y_coord[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P2_goalie|y_coord[5]~10_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P2_goalie|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P2_goalie|y_coord\(5));

-- Location: LCCOMB_X32_Y27_N18
\U1|Collision|Add9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add9~1_cout\ = CARRY(!\U1|P2_goalie|player_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|P2_goalie|player_y\(0),
	datad => VCC,
	cout => \U1|Collision|Add9~1_cout\);

-- Location: LCCOMB_X32_Y27_N22
\U1|Collision|Add9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add9~4_combout\ = ((\SW~combout\(0) $ (\U1|P2_goalie|y_coord\(2) $ (\U1|Collision|Add9~3\)))) # (GND)
-- \U1|Collision|Add9~5\ = CARRY((\SW~combout\(0) & ((!\U1|Collision|Add9~3\) # (!\U1|P2_goalie|y_coord\(2)))) # (!\SW~combout\(0) & (!\U1|P2_goalie|y_coord\(2) & !\U1|Collision|Add9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \U1|P2_goalie|y_coord\(2),
	datad => VCC,
	cin => \U1|Collision|Add9~3\,
	combout => \U1|Collision|Add9~4_combout\,
	cout => \U1|Collision|Add9~5\);

-- Location: LCCOMB_X32_Y27_N24
\U1|Collision|Add9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add9~6_combout\ = (\SW~combout\(0) & ((\U1|P2_goalie|player_y\(3) & (\U1|Collision|Add9~5\ & VCC)) # (!\U1|P2_goalie|player_y\(3) & (!\U1|Collision|Add9~5\)))) # (!\SW~combout\(0) & ((\U1|P2_goalie|player_y\(3) & (!\U1|Collision|Add9~5\)) # 
-- (!\U1|P2_goalie|player_y\(3) & ((\U1|Collision|Add9~5\) # (GND)))))
-- \U1|Collision|Add9~7\ = CARRY((\SW~combout\(0) & (!\U1|P2_goalie|player_y\(3) & !\U1|Collision|Add9~5\)) # (!\SW~combout\(0) & ((!\U1|Collision|Add9~5\) # (!\U1|P2_goalie|player_y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \U1|P2_goalie|player_y\(3),
	datad => VCC,
	cin => \U1|Collision|Add9~5\,
	combout => \U1|Collision|Add9~6_combout\,
	cout => \U1|Collision|Add9~7\);

-- Location: LCCOMB_X32_Y27_N26
\U1|Collision|Add9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add9~8_combout\ = ((\SW~combout\(0) $ (\U1|P2_goalie|y_coord\(4) $ (\U1|Collision|Add9~7\)))) # (GND)
-- \U1|Collision|Add9~9\ = CARRY((\SW~combout\(0) & ((!\U1|Collision|Add9~7\) # (!\U1|P2_goalie|y_coord\(4)))) # (!\SW~combout\(0) & (!\U1|P2_goalie|y_coord\(4) & !\U1|Collision|Add9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \U1|P2_goalie|y_coord\(4),
	datad => VCC,
	cin => \U1|Collision|Add9~7\,
	combout => \U1|Collision|Add9~8_combout\,
	cout => \U1|Collision|Add9~9\);

-- Location: LCCOMB_X33_Y27_N18
\U1|Collision|Add14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add14~2_combout\ = (\U1|Collision|Add9~4_combout\ & (!\U1|Collision|Add14~1\)) # (!\U1|Collision|Add9~4_combout\ & ((\U1|Collision|Add14~1\) # (GND)))
-- \U1|Collision|Add14~3\ = CARRY((!\U1|Collision|Add14~1\) # (!\U1|Collision|Add9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|Add9~4_combout\,
	datad => VCC,
	cin => \U1|Collision|Add14~1\,
	combout => \U1|Collision|Add14~2_combout\,
	cout => \U1|Collision|Add14~3\);

-- Location: LCCOMB_X33_Y27_N26
\U1|Collision|Add14~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|Add14~10_combout\ = \U1|Collision|Add9~12_combout\ $ (\U1|Collision|Add14~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add9~12_combout\,
	cin => \U1|Collision|Add14~9\,
	combout => \U1|Collision|Add14~10_combout\);

-- Location: LCCOMB_X33_Y27_N0
\U1|Collision|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan5~1_cout\ = CARRY((\U1|P2_goalie|player_y\(0) & \U1|Puck_Movement|puck_x_coord\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_goalie|player_y\(0),
	datab => \U1|Puck_Movement|puck_x_coord\(0),
	datad => VCC,
	cout => \U1|Collision|LessThan5~1_cout\);

-- Location: LCCOMB_X33_Y27_N2
\U1|Collision|LessThan5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan5~3_cout\ = CARRY((\U1|Collision|Add14~0_combout\ & ((!\U1|Collision|LessThan5~1_cout\) # (!\U1|Puck_Movement|puck_y_coord\(1)))) # (!\U1|Collision|Add14~0_combout\ & (!\U1|Puck_Movement|puck_y_coord\(1) & 
-- !\U1|Collision|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add14~0_combout\,
	datab => \U1|Puck_Movement|puck_y_coord\(1),
	datad => VCC,
	cin => \U1|Collision|LessThan5~1_cout\,
	cout => \U1|Collision|LessThan5~3_cout\);

-- Location: LCCOMB_X33_Y27_N4
\U1|Collision|LessThan5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan5~5_cout\ = CARRY((\U1|Puck_Movement|puck_y_coord_temp\(2) & (!\U1|Collision|Add14~2_combout\ & !\U1|Collision|LessThan5~3_cout\)) # (!\U1|Puck_Movement|puck_y_coord_temp\(2) & ((!\U1|Collision|LessThan5~3_cout\) # 
-- (!\U1|Collision|Add14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord_temp\(2),
	datab => \U1|Collision|Add14~2_combout\,
	datad => VCC,
	cin => \U1|Collision|LessThan5~3_cout\,
	cout => \U1|Collision|LessThan5~5_cout\);

-- Location: LCCOMB_X33_Y27_N6
\U1|Collision|LessThan5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan5~7_cout\ = CARRY((\U1|Collision|Add14~4_combout\ & ((\U1|Puck_Movement|puck_y_coord_temp\(3)) # (!\U1|Collision|LessThan5~5_cout\))) # (!\U1|Collision|Add14~4_combout\ & (\U1|Puck_Movement|puck_y_coord_temp\(3) & 
-- !\U1|Collision|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add14~4_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(3),
	datad => VCC,
	cin => \U1|Collision|LessThan5~5_cout\,
	cout => \U1|Collision|LessThan5~7_cout\);

-- Location: LCCOMB_X33_Y27_N8
\U1|Collision|LessThan5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan5~9_cout\ = CARRY((\U1|Collision|Add14~6_combout\ & (!\U1|Puck_Movement|puck_y_coord_temp\(4) & !\U1|Collision|LessThan5~7_cout\)) # (!\U1|Collision|Add14~6_combout\ & ((!\U1|Collision|LessThan5~7_cout\) # 
-- (!\U1|Puck_Movement|puck_y_coord_temp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add14~6_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(4),
	datad => VCC,
	cin => \U1|Collision|LessThan5~7_cout\,
	cout => \U1|Collision|LessThan5~9_cout\);

-- Location: LCCOMB_X33_Y27_N10
\U1|Collision|LessThan5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan5~11_cout\ = CARRY((\U1|Collision|Add14~8_combout\ & ((\U1|Puck_Movement|puck_y_coord_temp\(5)) # (!\U1|Collision|LessThan5~9_cout\))) # (!\U1|Collision|Add14~8_combout\ & (\U1|Puck_Movement|puck_y_coord_temp\(5) & 
-- !\U1|Collision|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Add14~8_combout\,
	datab => \U1|Puck_Movement|puck_y_coord_temp\(5),
	datad => VCC,
	cin => \U1|Collision|LessThan5~9_cout\,
	cout => \U1|Collision|LessThan5~11_cout\);

-- Location: LCCOMB_X33_Y27_N12
\U1|Collision|LessThan5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|LessThan5~12_combout\ = (\U1|Puck_Movement|puck_y_coord\(6) & ((!\U1|Collision|Add14~10_combout\) # (!\U1|Collision|LessThan5~11_cout\))) # (!\U1|Puck_Movement|puck_y_coord\(6) & (!\U1|Collision|LessThan5~11_cout\ & 
-- !\U1|Collision|Add14~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord\(6),
	datad => \U1|Collision|Add14~10_combout\,
	cin => \U1|Collision|LessThan5~11_cout\,
	combout => \U1|Collision|LessThan5~12_combout\);

-- Location: LCCOMB_X33_Y27_N14
\U1|Collision|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|process_0~2_combout\ = (!\U1|Collision|LessThan4~12_combout\ & (\U1|Collision|process_0~1_combout\ & (\U1|Collision|Equal17~0_combout\ & !\U1|Collision|LessThan5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|LessThan4~12_combout\,
	datab => \U1|Collision|process_0~1_combout\,
	datac => \U1|Collision|Equal17~0_combout\,
	datad => \U1|Collision|LessThan5~12_combout\,
	combout => \U1|Collision|process_0~2_combout\);

-- Location: LCCOMB_X33_Y25_N0
\U1|Collision|puck_player~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|puck_player~7_combout\ = (\U1|Collision|puck_player~4_combout\) # ((\U1|Collision|process_0~2_combout\) # ((\U1|Collision|puck_player~1_combout\ & \U1|Collision|puck_player~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|puck_player~1_combout\,
	datab => \U1|Collision|puck_player~4_combout\,
	datac => \U1|Collision|puck_player~6_combout\,
	datad => \U1|Collision|process_0~2_combout\,
	combout => \U1|Collision|puck_player~7_combout\);

-- Location: LCFF_X33_Y25_N1
\U1|Collision|puck_player\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Collision|puck_player~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Collision|puck_player~regout\);

-- Location: LCCOMB_X33_Y26_N26
\U1|Puck_Movement|puck_x_vector[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_x_vector[0]~1_combout\ = !\U1|Puck_Movement|puck_x_vector~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Puck_Movement|puck_x_vector~0_combout\,
	combout => \U1|Puck_Movement|puck_x_vector[0]~1_combout\);

-- Location: LCFF_X33_Y26_N27
\U1|Puck_Movement|puck_x_vector[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Puck_Movement|puck_x_vector[0]~1_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Puck_Movement|puck_x_vector\(0));

-- Location: LCCOMB_X33_Y25_N2
\U1|Puck_Movement|puck_x_vector~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_x_vector~0_combout\ = \U1|Collision|puck_player~regout\ $ (!\U1|Puck_Movement|puck_x_vector\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Collision|puck_player~regout\,
	datac => \U1|Puck_Movement|puck_x_vector\(0),
	combout => \U1|Puck_Movement|puck_x_vector~0_combout\);

-- Location: LCCOMB_X32_Y24_N18
\U1|Puck_Movement|puck_x_coord[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Puck_Movement|puck_x_coord[3]~12_combout\ = (\U1|Puck_Movement|puck_x_vector~0_combout\ & ((\U1|Puck_Movement|puck_x_coord\(3) & (!\U1|Puck_Movement|puck_x_coord[2]~11\)) # (!\U1|Puck_Movement|puck_x_coord\(3) & 
-- ((\U1|Puck_Movement|puck_x_coord[2]~11\) # (GND))))) # (!\U1|Puck_Movement|puck_x_vector~0_combout\ & ((\U1|Puck_Movement|puck_x_coord\(3) & (\U1|Puck_Movement|puck_x_coord[2]~11\ & VCC)) # (!\U1|Puck_Movement|puck_x_coord\(3) & 
-- (!\U1|Puck_Movement|puck_x_coord[2]~11\))))
-- \U1|Puck_Movement|puck_x_coord[3]~13\ = CARRY((\U1|Puck_Movement|puck_x_vector~0_combout\ & ((!\U1|Puck_Movement|puck_x_coord[2]~11\) # (!\U1|Puck_Movement|puck_x_coord\(3)))) # (!\U1|Puck_Movement|puck_x_vector~0_combout\ & 
-- (!\U1|Puck_Movement|puck_x_coord\(3) & !\U1|Puck_Movement|puck_x_coord[2]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_x_vector~0_combout\,
	datab => \U1|Puck_Movement|puck_x_coord\(3),
	datad => VCC,
	cin => \U1|Puck_Movement|puck_x_coord[2]~11\,
	combout => \U1|Puck_Movement|puck_x_coord[3]~12_combout\,
	cout => \U1|Puck_Movement|puck_x_coord[3]~13\);

-- Location: LCFF_X32_Y24_N19
\U1|Puck_Movement|puck_x_coord[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Puck_Movement|puck_x_coord[3]~12_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Puck_Movement|puck_x_coord\(3));

-- Location: LCFF_X32_Y24_N21
\U1|Puck_Movement|puck_x_coord_temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Puck_Movement|puck_x_coord_temp[4]~3_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Puck_Movement|puck_x_coord_temp[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Puck_Movement|puck_x_coord_temp\(4));

-- Location: LCCOMB_X29_Y24_N18
\U1|Collision|score_p1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Collision|score_p1~0_combout\ = (\U1|Collision|Equal16~1_combout\ & ((\U1|Puck_Movement|puck_x_coord_temp\(4) & (\U1|Collision|score_p1~regout\)) # (!\U1|Puck_Movement|puck_x_coord_temp\(4) & ((\U1|Collision|Equal17~2_combout\))))) # 
-- (!\U1|Collision|Equal16~1_combout\ & (((\U1|Collision|Equal17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Collision|Equal16~1_combout\,
	datab => \U1|Puck_Movement|puck_x_coord_temp\(4),
	datac => \U1|Collision|score_p1~regout\,
	datad => \U1|Collision|Equal17~2_combout\,
	combout => \U1|Collision|score_p1~0_combout\);

-- Location: LCFF_X29_Y24_N19
\U1|Collision|score_p1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Collision|score_p1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Collision|score_p1~regout\);

-- Location: LCCOMB_X29_Y24_N4
\U0|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector4~1_combout\ = (\U0|NEXT_STATE.play_state~regout\ & (!\U1|Collision|score_p1~regout\ & !\U1|Collision|score_p2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|NEXT_STATE.play_state~regout\,
	datab => \U1|Collision|score_p1~regout\,
	datac => \U1|Collision|score_p2~regout\,
	combout => \U0|Selector4~1_combout\);

-- Location: LCCOMB_X29_Y24_N30
\U0|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector3~0_combout\ = ((\U0|NEXT_STATE.idle_state~regout\ & ((\U0|Selector4~1_combout\) # (!\U0|nextStep_pulse~regout\)))) # (!\U0|NEXT_STATE.reset_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|NEXT_STATE.reset_state~regout\,
	datab => \U0|nextStep_pulse~regout\,
	datac => \U0|NEXT_STATE.idle_state~regout\,
	datad => \U0|Selector4~1_combout\,
	combout => \U0|Selector3~0_combout\);

-- Location: LCFF_X29_Y24_N31
\U0|NEXT_STATE.idle_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|Selector3~0_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|NEXT_STATE.idle_state~regout\);

-- Location: LCCOMB_X29_Y24_N12
\U0|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector4~2_combout\ = (\U0|Selector4~1_combout\) # ((\U0|NEXT_STATE.idle_state~regout\ & ((\U0|nextStep_pulse~regout\) # (\U0|NEXT_STATE.play_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Selector4~1_combout\,
	datab => \U0|nextStep_pulse~regout\,
	datac => \U0|NEXT_STATE.play_state~regout\,
	datad => \U0|NEXT_STATE.idle_state~regout\,
	combout => \U0|Selector4~2_combout\);

-- Location: LCFF_X29_Y24_N13
\U0|NEXT_STATE.play_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|Selector4~2_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|NEXT_STATE.play_state~regout\);

-- Location: LCCOMB_X1_Y24_N18
\U0|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~11_combout\ = (\U0|NEXT_STATE.play_state~regout\ & ((\U0|Selector4~0_combout\ & ((\U0|P1_score_count_temp\(3)))) # (!\U0|Selector4~0_combout\ & (\U0|Add0~9_combout\)))) # (!\U0|NEXT_STATE.play_state~regout\ & (((\U0|P1_score_count_temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~9_combout\,
	datab => \U0|NEXT_STATE.play_state~regout\,
	datac => \U0|P1_score_count_temp\(3),
	datad => \U0|Selector4~0_combout\,
	combout => \U0|Add0~11_combout\);

-- Location: LCFF_X1_Y24_N19
\U0|P1_score_count_temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|Add0~11_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|P1_score_count_temp\(3));

-- Location: LCCOMB_X1_Y24_N4
\U0|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~5_combout\ = (\U0|NEXT_STATE.play_state~regout\ & ((\U0|Selector4~0_combout\ & ((\U0|P1_score_count_temp\(1)))) # (!\U0|Selector4~0_combout\ & (\U0|Add0~3_combout\)))) # (!\U0|NEXT_STATE.play_state~regout\ & (((\U0|P1_score_count_temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~3_combout\,
	datab => \U0|NEXT_STATE.play_state~regout\,
	datac => \U0|P1_score_count_temp\(1),
	datad => \U0|Selector4~0_combout\,
	combout => \U0|Add0~5_combout\);

-- Location: LCFF_X1_Y24_N5
\U0|P1_score_count_temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|Add0~5_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|P1_score_count_temp\(1));

-- Location: LCCOMB_X1_Y24_N6
\U0|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~0_combout\ = (\U0|P1_score_count_temp\(0) & (\U1|Collision|score_p1~regout\ $ (VCC))) # (!\U0|P1_score_count_temp\(0) & (\U1|Collision|score_p1~regout\ & VCC))
-- \U0|Add0~1\ = CARRY((\U0|P1_score_count_temp\(0) & \U1|Collision|score_p1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P1_score_count_temp\(0),
	datab => \U1|Collision|score_p1~regout\,
	datad => VCC,
	combout => \U0|Add0~0_combout\,
	cout => \U0|Add0~1\);

-- Location: LCCOMB_X1_Y24_N20
\U0|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~8_combout\ = (\U0|NEXT_STATE.play_state~regout\ & ((\U0|Selector4~0_combout\ & (\U0|P1_score_count_temp\(2))) # (!\U0|Selector4~0_combout\ & ((\U0|Add0~6_combout\))))) # (!\U0|NEXT_STATE.play_state~regout\ & (\U0|P1_score_count_temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P1_score_count_temp\(2),
	datab => \U0|Add0~6_combout\,
	datac => \U0|NEXT_STATE.play_state~regout\,
	datad => \U0|Selector4~0_combout\,
	combout => \U0|Add0~8_combout\);

-- Location: LCFF_X1_Y24_N11
\U0|P1_score_count_temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \U0|Add0~8_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|P1_score_count_temp\(2));

-- Location: LCCOMB_X1_Y24_N30
\U0|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Equal1~0_combout\ = (\U0|P1_score_count_temp\(0) & (!\U0|P1_score_count_temp\(3) & (!\U0|P1_score_count_temp\(1) & \U0|P1_score_count_temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P1_score_count_temp\(0),
	datab => \U0|P1_score_count_temp\(3),
	datac => \U0|P1_score_count_temp\(1),
	datad => \U0|P1_score_count_temp\(2),
	combout => \U0|Equal1~0_combout\);

-- Location: LCCOMB_X29_Y24_N26
\U0|P2_score_count_temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|P2_score_count_temp~0_combout\ = ((\U1|Collision|score_p1~regout\) # (!\U1|Collision|score_p2~regout\)) # (!\U0|NEXT_STATE.play_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|NEXT_STATE.play_state~regout\,
	datab => \U1|Collision|score_p1~regout\,
	datac => \U1|Collision|score_p2~regout\,
	combout => \U0|P2_score_count_temp~0_combout\);

-- Location: LCCOMB_X28_Y4_N26
\U0|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add1~5_combout\ = (\U0|P2_score_count_temp~0_combout\ & ((\U0|P2_score_count_temp\(1)))) # (!\U0|P2_score_count_temp~0_combout\ & (\U0|Add1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~3_combout\,
	datab => \U0|P2_score_count_temp\(1),
	datac => \U0|P2_score_count_temp~0_combout\,
	combout => \U0|Add1~5_combout\);

-- Location: LCFF_X28_Y4_N17
\U0|P2_score_count_temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \U0|Add1~5_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|P2_score_count_temp\(1));

-- Location: LCCOMB_X28_Y4_N4
\U0|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add1~8_combout\ = (\U0|P2_score_count_temp~0_combout\ & ((\U0|P2_score_count_temp\(2)))) # (!\U0|P2_score_count_temp~0_combout\ & (\U0|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~6_combout\,
	datac => \U0|P2_score_count_temp~0_combout\,
	datad => \U0|P2_score_count_temp\(2),
	combout => \U0|Add1~8_combout\);

-- Location: LCFF_X28_Y4_N19
\U0|P2_score_count_temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \U0|Add1~8_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|P2_score_count_temp\(2));

-- Location: LCCOMB_X28_Y4_N14
\U0|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add1~0_combout\ = (\U0|P2_score_count_temp\(0) & (\U1|Collision|score_p2~regout\ $ (VCC))) # (!\U0|P2_score_count_temp\(0) & (\U1|Collision|score_p2~regout\ & VCC))
-- \U0|Add1~1\ = CARRY((\U0|P2_score_count_temp\(0) & \U1|Collision|score_p2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P2_score_count_temp\(0),
	datab => \U1|Collision|score_p2~regout\,
	datad => VCC,
	combout => \U0|Add1~0_combout\,
	cout => \U0|Add1~1\);

-- Location: LCCOMB_X28_Y4_N20
\U0|Add1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add1~9_combout\ = \U0|P2_score_count_temp\(3) $ (\U0|Add1~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P2_score_count_temp\(3),
	cin => \U0|Add1~7\,
	combout => \U0|Add1~9_combout\);

-- Location: LCCOMB_X28_Y4_N6
\U0|Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add1~11_combout\ = (\U0|P2_score_count_temp~0_combout\ & (\U0|P2_score_count_temp\(3))) # (!\U0|P2_score_count_temp~0_combout\ & ((\U0|Add1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|P2_score_count_temp~0_combout\,
	datac => \U0|P2_score_count_temp\(3),
	datad => \U0|Add1~9_combout\,
	combout => \U0|Add1~11_combout\);

-- Location: LCFF_X28_Y4_N21
\U0|P2_score_count_temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \U0|Add1~11_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|P2_score_count_temp\(3));

-- Location: LCCOMB_X28_Y4_N30
\U0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Equal0~0_combout\ = (\U0|P2_score_count_temp\(0) & (!\U0|P2_score_count_temp\(1) & (!\U0|P2_score_count_temp\(3) & \U0|P2_score_count_temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P2_score_count_temp\(0),
	datab => \U0|P2_score_count_temp\(1),
	datac => \U0|P2_score_count_temp\(3),
	datad => \U0|P2_score_count_temp\(2),
	combout => \U0|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y24_N8
\U0|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector6~0_combout\ = (\U0|NEXT_STATE.score_state~regout\ & ((\U0|Equal0~0_combout\) # (\U0|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Equal0~0_combout\,
	datac => \U0|Equal1~0_combout\,
	datad => \U0|NEXT_STATE.score_state~regout\,
	combout => \U0|Selector6~0_combout\);

-- Location: LCCOMB_X29_Y24_N2
\U0|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector1~0_combout\ = (\U0|NEXT_STATE.score_state~regout\) # ((\U0|NEXT_STATE.play_state~regout\ & ((!\U0|Selector4~0_combout\))) # (!\U0|NEXT_STATE.play_state~regout\ & (!\U0|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|NEXT_STATE.play_state~regout\,
	datab => \U0|NEXT_STATE.score_state~regout\,
	datac => \U0|Selector5~0_combout\,
	datad => \U0|Selector4~0_combout\,
	combout => \U0|Selector1~0_combout\);

-- Location: LCFF_X29_Y24_N9
\U0|NEXT_STATE.winner_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|Selector6~0_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|NEXT_STATE.winner_state~regout\);

-- Location: LCCOMB_X62_Y1_N2
\U0|winner2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner2[0]~0_combout\ = (!\U0|Equal1~0_combout\ & \U0|NEXT_STATE.winner_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Equal1~0_combout\,
	datad => \U0|NEXT_STATE.winner_state~regout\,
	combout => \U0|winner2[0]~0_combout\);

-- Location: LCFF_X62_Y1_N25
\U0|winner2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|winner2[0]~feeder_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|winner2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|winner2\(0));

-- Location: LCCOMB_X62_Y1_N18
\U0|winner2[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner2[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U0|winner2[1]~feeder_combout\);

-- Location: LCFF_X62_Y1_N19
\U0|winner2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|winner2[1]~feeder_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|winner2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|winner2\(1));

-- Location: LCCOMB_X62_Y1_N12
\U0|winner2[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner2[2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U0|winner2[2]~feeder_combout\);

-- Location: LCFF_X62_Y1_N13
\U0|winner2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|winner2[2]~feeder_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|winner2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|winner2\(2));

-- Location: LCCOMB_X62_Y1_N6
\U0|winner2[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner2[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U0|winner2[3]~feeder_combout\);

-- Location: LCFF_X62_Y1_N7
\U0|winner2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|winner2[3]~feeder_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|winner2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|winner2\(3));

-- Location: LCCOMB_X62_Y1_N0
\U0|winner2[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner2[4]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U0|winner2[4]~feeder_combout\);

-- Location: LCFF_X62_Y1_N1
\U0|winner2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|winner2[4]~feeder_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|winner2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|winner2\(4));

-- Location: LCCOMB_X62_Y1_N26
\U0|winner2[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner2[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U0|winner2[5]~feeder_combout\);

-- Location: LCFF_X62_Y1_N27
\U0|winner2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|winner2[5]~feeder_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|winner2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|winner2\(5));

-- Location: LCCOMB_X62_Y1_N28
\U0|winner2[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner2[6]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U0|winner2[6]~feeder_combout\);

-- Location: LCFF_X62_Y1_N29
\U0|winner2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|winner2[6]~feeder_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|winner2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|winner2\(6));

-- Location: LCCOMB_X62_Y1_N22
\U0|winner2[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner2[7]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U0|winner2[7]~feeder_combout\);

-- Location: LCFF_X62_Y1_N23
\U0|winner2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|winner2[7]~feeder_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|winner2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|winner2\(7));

-- Location: LCCOMB_X62_Y1_N16
\U0|winner2[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner2[8]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U0|winner2[8]~feeder_combout\);

-- Location: LCFF_X62_Y1_N17
\U0|winner2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|winner2[8]~feeder_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|winner2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|winner2\(8));

-- Location: LCCOMB_X35_Y1_N24
\U0|winner1[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner1[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U0|winner1[0]~feeder_combout\);

-- Location: LCCOMB_X35_Y1_N2
\U0|winner1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner1[0]~0_combout\ = (\U0|Equal1~0_combout\ & \U0|NEXT_STATE.winner_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Equal1~0_combout\,
	datad => \U0|NEXT_STATE.winner_state~regout\,
	combout => \U0|winner1[0]~0_combout\);

-- Location: LCFF_X35_Y1_N25
\U0|winner1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|winner1[0]~feeder_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|winner1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|winner1\(0));

-- Location: LCCOMB_X35_Y1_N10
\U0|winner1[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner1[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U0|winner1[1]~feeder_combout\);

-- Location: LCFF_X35_Y1_N11
\U0|winner1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|winner1[1]~feeder_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|winner1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|winner1\(1));

-- Location: LCCOMB_X35_Y1_N4
\U0|winner1[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner1[2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U0|winner1[2]~feeder_combout\);

-- Location: LCFF_X35_Y1_N5
\U0|winner1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|winner1[2]~feeder_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|winner1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|winner1\(2));

-- Location: LCCOMB_X35_Y1_N22
\U0|winner1[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner1[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U0|winner1[3]~feeder_combout\);

-- Location: LCFF_X35_Y1_N23
\U0|winner1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|winner1[3]~feeder_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|winner1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|winner1\(3));

-- Location: LCCOMB_X35_Y1_N16
\U0|winner1[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner1[4]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U0|winner1[4]~feeder_combout\);

-- Location: LCFF_X35_Y1_N17
\U0|winner1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|winner1[4]~feeder_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|winner1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|winner1\(4));

-- Location: LCCOMB_X35_Y1_N18
\U0|winner1[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner1[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U0|winner1[5]~feeder_combout\);

-- Location: LCFF_X35_Y1_N19
\U0|winner1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|winner1[5]~feeder_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|winner1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|winner1\(5));

-- Location: LCCOMB_X35_Y1_N20
\U0|winner1[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner1[6]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U0|winner1[6]~feeder_combout\);

-- Location: LCFF_X35_Y1_N21
\U0|winner1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|winner1[6]~feeder_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|winner1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|winner1\(6));

-- Location: LCCOMB_X35_Y1_N6
\U0|winner1[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner1[7]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U0|winner1[7]~feeder_combout\);

-- Location: LCFF_X35_Y1_N7
\U0|winner1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|winner1[7]~feeder_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|winner1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|winner1\(7));

-- Location: LCCOMB_X35_Y1_N8
\U0|winner1[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|winner1[8]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U0|winner1[8]~feeder_combout\);

-- Location: LCFF_X35_Y1_N9
\U0|winner1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|winner1[8]~feeder_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	ena => \U0|winner1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|winner1\(8));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(3),
	combout => \KEY~combout\(3));

-- Location: LCFF_X1_Y24_N21
\U0|P1_score_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|Add0~8_combout\,
	ena => \KEY~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|P1_score_count\(2));

-- Location: LCFF_X1_Y24_N23
\U0|P1_score_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \U0|Add0~11_combout\,
	sload => VCC,
	ena => \KEY~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|P1_score_count\(3));

-- Location: LCCOMB_X1_Y24_N24
\U0|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~2_combout\ = (\U0|NEXT_STATE.play_state~regout\ & ((\U0|Selector4~0_combout\ & (\U0|P1_score_count_temp\(0))) # (!\U0|Selector4~0_combout\ & ((\U0|Add0~0_combout\))))) # (!\U0|NEXT_STATE.play_state~regout\ & (\U0|P1_score_count_temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P1_score_count_temp\(0),
	datab => \U0|Add0~0_combout\,
	datac => \U0|NEXT_STATE.play_state~regout\,
	datad => \U0|Selector4~0_combout\,
	combout => \U0|Add0~2_combout\);

-- Location: LCFF_X1_Y24_N25
\U0|P1_score_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|Add0~2_combout\,
	ena => \KEY~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|P1_score_count\(0));

-- Location: LCFF_X1_Y24_N27
\U0|P1_score_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \U0|Add0~5_combout\,
	sload => VCC,
	ena => \KEY~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|P1_score_count\(1));

-- Location: LCCOMB_X1_Y24_N16
\DispP1Score|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DispP1Score|Mux6~0_combout\ = (\U0|P1_score_count\(1) & (((\U0|P1_score_count\(3))))) # (!\U0|P1_score_count\(1) & (\U0|P1_score_count\(2) $ (((!\U0|P1_score_count\(3) & \U0|P1_score_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P1_score_count\(2),
	datab => \U0|P1_score_count\(3),
	datac => \U0|P1_score_count\(0),
	datad => \U0|P1_score_count\(1),
	combout => \DispP1Score|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y24_N22
\DispP1Score|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DispP1Score|Mux5~0_combout\ = (\U0|P1_score_count\(2) & ((\U0|P1_score_count\(3)) # (\U0|P1_score_count\(0) $ (\U0|P1_score_count\(1))))) # (!\U0|P1_score_count\(2) & (((\U0|P1_score_count\(3) & \U0|P1_score_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P1_score_count\(2),
	datab => \U0|P1_score_count\(0),
	datac => \U0|P1_score_count\(3),
	datad => \U0|P1_score_count\(1),
	combout => \DispP1Score|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y24_N2
\DispP1Score|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DispP1Score|Mux4~0_combout\ = (\U0|P1_score_count\(2) & (\U0|P1_score_count\(3))) # (!\U0|P1_score_count\(2) & (\U0|P1_score_count\(1) & ((\U0|P1_score_count\(3)) # (!\U0|P1_score_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P1_score_count\(2),
	datab => \U0|P1_score_count\(3),
	datac => \U0|P1_score_count\(0),
	datad => \U0|P1_score_count\(1),
	combout => \DispP1Score|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y24_N28
\DispP1Score|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DispP1Score|Mux3~0_combout\ = (\U0|P1_score_count\(1) & ((\U0|P1_score_count\(3)) # ((\U0|P1_score_count\(2) & \U0|P1_score_count\(0))))) # (!\U0|P1_score_count\(1) & (\U0|P1_score_count\(2) $ (((!\U0|P1_score_count\(3) & \U0|P1_score_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P1_score_count\(2),
	datab => \U0|P1_score_count\(3),
	datac => \U0|P1_score_count\(0),
	datad => \U0|P1_score_count\(1),
	combout => \DispP1Score|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y24_N14
\DispP1Score|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DispP1Score|Mux2~0_combout\ = (\U0|P1_score_count\(0)) # ((\U0|P1_score_count\(1) & ((\U0|P1_score_count\(3)))) # (!\U0|P1_score_count\(1) & (\U0|P1_score_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P1_score_count\(2),
	datab => \U0|P1_score_count\(3),
	datac => \U0|P1_score_count\(0),
	datad => \U0|P1_score_count\(1),
	combout => \DispP1Score|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y24_N0
\DispP1Score|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DispP1Score|Mux1~0_combout\ = (\U0|P1_score_count\(2) & ((\U0|P1_score_count\(3)) # ((\U0|P1_score_count\(0) & \U0|P1_score_count\(1))))) # (!\U0|P1_score_count\(2) & ((\U0|P1_score_count\(1)) # ((!\U0|P1_score_count\(3) & \U0|P1_score_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P1_score_count\(2),
	datab => \U0|P1_score_count\(3),
	datac => \U0|P1_score_count\(0),
	datad => \U0|P1_score_count\(1),
	combout => \DispP1Score|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y24_N26
\DispP1Score|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DispP1Score|Mux0~0_combout\ = (\U0|P1_score_count\(2) & (!\U0|P1_score_count\(3) & ((!\U0|P1_score_count\(1)) # (!\U0|P1_score_count\(0))))) # (!\U0|P1_score_count\(2) & ((\U0|P1_score_count\(1) $ (\U0|P1_score_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P1_score_count\(2),
	datab => \U0|P1_score_count\(0),
	datac => \U0|P1_score_count\(1),
	datad => \U0|P1_score_count\(3),
	combout => \DispP1Score|Mux0~0_combout\);

-- Location: LCFF_X28_Y4_N7
\U0|P2_score_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|Add1~11_combout\,
	ena => \KEY~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|P2_score_count\(3));

-- Location: LCFF_X28_Y4_N27
\U0|P2_score_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|Add1~5_combout\,
	ena => \KEY~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|P2_score_count\(1));

-- Location: LCFF_X28_Y4_N5
\U0|P2_score_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|Add1~8_combout\,
	ena => \KEY~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|P2_score_count\(2));

-- Location: LCFF_X28_Y4_N15
\U0|P2_score_count_temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \U0|Add1~2_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|P2_score_count_temp\(0));

-- Location: LCCOMB_X28_Y4_N24
\U0|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add1~2_combout\ = (\U0|P2_score_count_temp~0_combout\ & ((\U0|P2_score_count_temp\(0)))) # (!\U0|P2_score_count_temp~0_combout\ & (\U0|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|P2_score_count_temp~0_combout\,
	datac => \U0|Add1~0_combout\,
	datad => \U0|P2_score_count_temp\(0),
	combout => \U0|Add1~2_combout\);

-- Location: LCFF_X28_Y4_N25
\U0|P2_score_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U0|Add1~2_combout\,
	ena => \KEY~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|P2_score_count\(0));

-- Location: LCCOMB_X28_Y4_N0
\DispP2Score|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DispP2Score|Mux6~0_combout\ = (\U0|P2_score_count\(1) & (\U0|P2_score_count\(3))) # (!\U0|P2_score_count\(1) & (\U0|P2_score_count\(2) $ (((!\U0|P2_score_count\(3) & \U0|P2_score_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P2_score_count\(3),
	datab => \U0|P2_score_count\(1),
	datac => \U0|P2_score_count\(2),
	datad => \U0|P2_score_count\(0),
	combout => \DispP2Score|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y4_N2
\DispP2Score|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DispP2Score|Mux5~0_combout\ = (\U0|P2_score_count\(3) & ((\U0|P2_score_count\(1)) # ((\U0|P2_score_count\(2))))) # (!\U0|P2_score_count\(3) & (\U0|P2_score_count\(2) & (\U0|P2_score_count\(1) $ (\U0|P2_score_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P2_score_count\(3),
	datab => \U0|P2_score_count\(1),
	datac => \U0|P2_score_count\(2),
	datad => \U0|P2_score_count\(0),
	combout => \DispP2Score|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y4_N28
\DispP2Score|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DispP2Score|Mux4~0_combout\ = (\U0|P2_score_count\(2) & (\U0|P2_score_count\(3))) # (!\U0|P2_score_count\(2) & (\U0|P2_score_count\(1) & ((\U0|P2_score_count\(3)) # (!\U0|P2_score_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P2_score_count\(3),
	datab => \U0|P2_score_count\(1),
	datac => \U0|P2_score_count\(2),
	datad => \U0|P2_score_count\(0),
	combout => \DispP2Score|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y4_N22
\DispP2Score|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DispP2Score|Mux3~0_combout\ = (\U0|P2_score_count\(1) & ((\U0|P2_score_count\(3)) # ((\U0|P2_score_count\(2) & \U0|P2_score_count\(0))))) # (!\U0|P2_score_count\(1) & (\U0|P2_score_count\(2) $ (((!\U0|P2_score_count\(3) & \U0|P2_score_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P2_score_count\(3),
	datab => \U0|P2_score_count\(1),
	datac => \U0|P2_score_count\(2),
	datad => \U0|P2_score_count\(0),
	combout => \DispP2Score|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y4_N8
\DispP2Score|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DispP2Score|Mux2~0_combout\ = (\U0|P2_score_count\(0)) # ((\U0|P2_score_count\(1) & (\U0|P2_score_count\(3))) # (!\U0|P2_score_count\(1) & ((\U0|P2_score_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P2_score_count\(3),
	datab => \U0|P2_score_count\(1),
	datac => \U0|P2_score_count\(2),
	datad => \U0|P2_score_count\(0),
	combout => \DispP2Score|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y4_N10
\DispP2Score|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DispP2Score|Mux1~0_combout\ = (\U0|P2_score_count\(2) & ((\U0|P2_score_count\(3)) # ((\U0|P2_score_count\(1) & \U0|P2_score_count\(0))))) # (!\U0|P2_score_count\(2) & ((\U0|P2_score_count\(1)) # ((!\U0|P2_score_count\(3) & \U0|P2_score_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P2_score_count\(3),
	datab => \U0|P2_score_count\(1),
	datac => \U0|P2_score_count\(2),
	datad => \U0|P2_score_count\(0),
	combout => \DispP2Score|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y4_N12
\DispP2Score|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DispP2Score|Mux0~0_combout\ = (\U0|P2_score_count\(1) & (!\U0|P2_score_count\(3) & ((!\U0|P2_score_count\(0)) # (!\U0|P2_score_count\(2))))) # (!\U0|P2_score_count\(1) & (\U0|P2_score_count\(3) $ ((\U0|P2_score_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|P2_score_count\(3),
	datab => \U0|P2_score_count\(1),
	datac => \U0|P2_score_count\(2),
	datad => \U0|P2_score_count\(0),
	combout => \DispP2Score|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y24_N8
\U1|screen|x_temp0[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|x_temp0[0]~8_combout\ = \U1|screen|x_temp0\(0) $ (VCC)
-- \U1|screen|x_temp0[0]~9\ = CARRY(\U1|screen|x_temp0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|screen|x_temp0\(0),
	datad => VCC,
	combout => \U1|screen|x_temp0[0]~8_combout\,
	cout => \U1|screen|x_temp0[0]~9\);

-- Location: LCFF_X27_Y24_N9
\U1|screen|x_temp0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|x_temp0[0]~8_combout\,
	sclr => \U1|screen|plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|x_temp0\(0));

-- Location: LCCOMB_X27_Y24_N10
\U1|screen|x_temp0[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|x_temp0[1]~10_combout\ = (\U1|screen|x_temp0\(1) & (!\U1|screen|x_temp0[0]~9\)) # (!\U1|screen|x_temp0\(1) & ((\U1|screen|x_temp0[0]~9\) # (GND)))
-- \U1|screen|x_temp0[1]~11\ = CARRY((!\U1|screen|x_temp0[0]~9\) # (!\U1|screen|x_temp0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x_temp0\(1),
	datad => VCC,
	cin => \U1|screen|x_temp0[0]~9\,
	combout => \U1|screen|x_temp0[1]~10_combout\,
	cout => \U1|screen|x_temp0[1]~11\);

-- Location: LCCOMB_X27_Y24_N12
\U1|screen|x_temp0[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|x_temp0[2]~12_combout\ = (\U1|screen|x_temp0\(2) & (\U1|screen|x_temp0[1]~11\ $ (GND))) # (!\U1|screen|x_temp0\(2) & (!\U1|screen|x_temp0[1]~11\ & VCC))
-- \U1|screen|x_temp0[2]~13\ = CARRY((\U1|screen|x_temp0\(2) & !\U1|screen|x_temp0[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x_temp0\(2),
	datad => VCC,
	cin => \U1|screen|x_temp0[1]~11\,
	combout => \U1|screen|x_temp0[2]~12_combout\,
	cout => \U1|screen|x_temp0[2]~13\);

-- Location: LCCOMB_X27_Y24_N14
\U1|screen|x_temp0[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|x_temp0[3]~14_combout\ = (\U1|screen|x_temp0\(3) & (!\U1|screen|x_temp0[2]~13\)) # (!\U1|screen|x_temp0\(3) & ((\U1|screen|x_temp0[2]~13\) # (GND)))
-- \U1|screen|x_temp0[3]~15\ = CARRY((!\U1|screen|x_temp0[2]~13\) # (!\U1|screen|x_temp0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|screen|x_temp0\(3),
	datad => VCC,
	cin => \U1|screen|x_temp0[2]~13\,
	combout => \U1|screen|x_temp0[3]~14_combout\,
	cout => \U1|screen|x_temp0[3]~15\);

-- Location: LCFF_X27_Y24_N15
\U1|screen|x_temp0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|x_temp0[3]~14_combout\,
	sclr => \U1|screen|plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|x_temp0\(3));

-- Location: LCCOMB_X27_Y24_N16
\U1|screen|x_temp0[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|x_temp0[4]~16_combout\ = (\U1|screen|x_temp0\(4) & (\U1|screen|x_temp0[3]~15\ $ (GND))) # (!\U1|screen|x_temp0\(4) & (!\U1|screen|x_temp0[3]~15\ & VCC))
-- \U1|screen|x_temp0[4]~17\ = CARRY((\U1|screen|x_temp0\(4) & !\U1|screen|x_temp0[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x_temp0\(4),
	datad => VCC,
	cin => \U1|screen|x_temp0[3]~15\,
	combout => \U1|screen|x_temp0[4]~16_combout\,
	cout => \U1|screen|x_temp0[4]~17\);

-- Location: LCCOMB_X27_Y24_N18
\U1|screen|x_temp0[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|x_temp0[5]~18_combout\ = (\U1|screen|x_temp0\(5) & (!\U1|screen|x_temp0[4]~17\)) # (!\U1|screen|x_temp0\(5) & ((\U1|screen|x_temp0[4]~17\) # (GND)))
-- \U1|screen|x_temp0[5]~19\ = CARRY((!\U1|screen|x_temp0[4]~17\) # (!\U1|screen|x_temp0\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|screen|x_temp0\(5),
	datad => VCC,
	cin => \U1|screen|x_temp0[4]~17\,
	combout => \U1|screen|x_temp0[5]~18_combout\,
	cout => \U1|screen|x_temp0[5]~19\);

-- Location: LCFF_X27_Y24_N19
\U1|screen|x_temp0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|x_temp0[5]~18_combout\,
	sclr => \U1|screen|plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|x_temp0\(5));

-- Location: LCCOMB_X27_Y24_N20
\U1|screen|x_temp0[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|x_temp0[6]~20_combout\ = (\U1|screen|x_temp0\(6) & (\U1|screen|x_temp0[5]~19\ $ (GND))) # (!\U1|screen|x_temp0\(6) & (!\U1|screen|x_temp0[5]~19\ & VCC))
-- \U1|screen|x_temp0[6]~21\ = CARRY((\U1|screen|x_temp0\(6) & !\U1|screen|x_temp0[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x_temp0\(6),
	datad => VCC,
	cin => \U1|screen|x_temp0[5]~19\,
	combout => \U1|screen|x_temp0[6]~20_combout\,
	cout => \U1|screen|x_temp0[6]~21\);

-- Location: LCCOMB_X27_Y24_N22
\U1|screen|x_temp0[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|x_temp0[7]~22_combout\ = \U1|screen|x_temp0[6]~21\ $ (\U1|screen|x_temp0\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|screen|x_temp0\(7),
	cin => \U1|screen|x_temp0[6]~21\,
	combout => \U1|screen|x_temp0[7]~22_combout\);

-- Location: LCFF_X27_Y24_N23
\U1|screen|x_temp0[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|x_temp0[7]~22_combout\,
	sclr => \U1|screen|plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|x_temp0\(7));

-- Location: LCCOMB_X31_Y24_N6
\U1|screen|plot~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|plot~2_combout\ = ((\U1|screen|x_temp0\(7) & ((\U1|screen|x_temp0\(6)) # (\U1|screen|x_temp0\(5))))) # (!\U1|screen|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x_temp0\(6),
	datab => \U1|screen|x_temp0\(5),
	datac => \U1|screen|LessThan0~0_combout\,
	datad => \U1|screen|x_temp0\(7),
	combout => \U1|screen|plot~2_combout\);

-- Location: LCCOMB_X28_Y25_N28
\U1|screen|y_temp0[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|y_temp0[4]~2_combout\ = (\U1|screen|plot~2_combout\ & (\U1|screen|Add5~8_combout\ & (\U1|screen|LessThan0~0_combout\))) # (!\U1|screen|plot~2_combout\ & (((\U1|screen|y_temp0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add5~8_combout\,
	datab => \U1|screen|LessThan0~0_combout\,
	datac => \U1|screen|y_temp0\(4),
	datad => \U1|screen|plot~2_combout\,
	combout => \U1|screen|y_temp0[4]~2_combout\);

-- Location: LCFF_X28_Y25_N29
\U1|screen|y_temp0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|y_temp0[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|y_temp0\(4));

-- Location: LCCOMB_X28_Y25_N2
\U1|screen|y_temp0[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|y_temp0[3]~1_combout\ = (\U1|screen|plot~2_combout\ & (\U1|screen|Add5~6_combout\ & (\U1|screen|LessThan0~0_combout\))) # (!\U1|screen|plot~2_combout\ & (((\U1|screen|y_temp0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add5~6_combout\,
	datab => \U1|screen|LessThan0~0_combout\,
	datac => \U1|screen|y_temp0\(3),
	datad => \U1|screen|plot~2_combout\,
	combout => \U1|screen|y_temp0[3]~1_combout\);

-- Location: LCFF_X28_Y25_N3
\U1|screen|y_temp0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|y_temp0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|y_temp0\(3));

-- Location: LCCOMB_X28_Y25_N22
\U1|screen|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan0~0_combout\ = (((!\U1|screen|y_temp0\(3)) # (!\U1|screen|y_temp0\(6))) # (!\U1|screen|y_temp0\(4))) # (!\U1|screen|y_temp0\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(5),
	datab => \U1|screen|y_temp0\(4),
	datac => \U1|screen|y_temp0\(6),
	datad => \U1|screen|y_temp0\(3),
	combout => \U1|screen|LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y25_N0
\U1|screen|y_temp0[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|y_temp0[6]~0_combout\ = (\U1|screen|plot~2_combout\ & (\U1|screen|Add5~12_combout\ & (\U1|screen|LessThan0~0_combout\))) # (!\U1|screen|plot~2_combout\ & (((\U1|screen|y_temp0\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add5~12_combout\,
	datab => \U1|screen|LessThan0~0_combout\,
	datac => \U1|screen|y_temp0\(6),
	datad => \U1|screen|plot~2_combout\,
	combout => \U1|screen|y_temp0[6]~0_combout\);

-- Location: LCFF_X28_Y25_N1
\U1|screen|y_temp0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|y_temp0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|y_temp0\(6));

-- Location: LCFF_X28_Y24_N9
\U1|screen|y[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \U1|screen|y_temp0\(6),
	sload => VCC,
	ena => \U1|screen|ALT_INV_plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|y\(6));

-- Location: LCCOMB_X28_Y25_N6
\U1|screen|y_temp0[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|y_temp0[5]~3_combout\ = (\U1|screen|plot~2_combout\ & (\U1|screen|Add5~10_combout\ & (\U1|screen|LessThan0~0_combout\))) # (!\U1|screen|plot~2_combout\ & (((\U1|screen|y_temp0\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add5~10_combout\,
	datab => \U1|screen|LessThan0~0_combout\,
	datac => \U1|screen|y_temp0\(5),
	datad => \U1|screen|plot~2_combout\,
	combout => \U1|screen|y_temp0[5]~3_combout\);

-- Location: LCFF_X28_Y25_N7
\U1|screen|y_temp0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|y_temp0[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|y_temp0\(5));

-- Location: LCFF_X28_Y24_N11
\U1|screen|y[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \U1|screen|y_temp0\(5),
	sload => VCC,
	ena => \U1|screen|ALT_INV_plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|y\(5));

-- Location: LCCOMB_X28_Y25_N24
\U1|screen|y_temp0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|y_temp0~4_combout\ = (\U1|screen|Add5~4_combout\ & \U1|screen|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add5~4_combout\,
	datad => \U1|screen|LessThan0~0_combout\,
	combout => \U1|screen|y_temp0~4_combout\);

-- Location: LCFF_X28_Y25_N25
\U1|screen|y_temp0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|y_temp0~4_combout\,
	ena => \U1|screen|plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|y_temp0\(2));

-- Location: LCFF_X28_Y24_N5
\U1|screen|y[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \U1|screen|y_temp0\(2),
	sload => VCC,
	ena => \U1|screen|ALT_INV_plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|y\(2));

-- Location: LCCOMB_X28_Y25_N26
\U1|screen|y_temp0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|y_temp0~5_combout\ = (\U1|screen|Add5~2_combout\ & \U1|screen|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add5~2_combout\,
	datad => \U1|screen|LessThan0~0_combout\,
	combout => \U1|screen|y_temp0~5_combout\);

-- Location: LCFF_X28_Y25_N27
\U1|screen|y_temp0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|y_temp0~5_combout\,
	ena => \U1|screen|plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|y_temp0\(1));

-- Location: LCFF_X28_Y24_N3
\U1|screen|y[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \U1|screen|y_temp0\(1),
	sload => VCC,
	ena => \U1|screen|ALT_INV_plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|y\(1));

-- Location: LCCOMB_X28_Y24_N0
\vga_u0|user_input_translator|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~0_combout\ = (\U1|screen|y\(0) & (\U1|screen|y\(2) $ (VCC))) # (!\U1|screen|y\(0) & (\U1|screen|y\(2) & VCC))
-- \vga_u0|user_input_translator|Add0~1\ = CARRY((\U1|screen|y\(0) & \U1|screen|y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y\(0),
	datab => \U1|screen|y\(2),
	datad => VCC,
	combout => \vga_u0|user_input_translator|Add0~0_combout\,
	cout => \vga_u0|user_input_translator|Add0~1\);

-- Location: LCCOMB_X28_Y24_N6
\vga_u0|user_input_translator|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~6_combout\ = (\U1|screen|y\(3) & ((\U1|screen|y\(5) & (\vga_u0|user_input_translator|Add0~5\ & VCC)) # (!\U1|screen|y\(5) & (!\vga_u0|user_input_translator|Add0~5\)))) # (!\U1|screen|y\(3) & ((\U1|screen|y\(5) & 
-- (!\vga_u0|user_input_translator|Add0~5\)) # (!\U1|screen|y\(5) & ((\vga_u0|user_input_translator|Add0~5\) # (GND)))))
-- \vga_u0|user_input_translator|Add0~7\ = CARRY((\U1|screen|y\(3) & (!\U1|screen|y\(5) & !\vga_u0|user_input_translator|Add0~5\)) # (!\U1|screen|y\(3) & ((!\vga_u0|user_input_translator|Add0~5\) # (!\U1|screen|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y\(3),
	datab => \U1|screen|y\(5),
	datad => VCC,
	cin => \vga_u0|user_input_translator|Add0~5\,
	combout => \vga_u0|user_input_translator|Add0~6_combout\,
	cout => \vga_u0|user_input_translator|Add0~7\);

-- Location: LCCOMB_X28_Y24_N8
\vga_u0|user_input_translator|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~8_combout\ = ((\U1|screen|y\(4) $ (\U1|screen|y\(6) $ (!\vga_u0|user_input_translator|Add0~7\)))) # (GND)
-- \vga_u0|user_input_translator|Add0~9\ = CARRY((\U1|screen|y\(4) & ((\U1|screen|y\(6)) # (!\vga_u0|user_input_translator|Add0~7\))) # (!\U1|screen|y\(4) & (\U1|screen|y\(6) & !\vga_u0|user_input_translator|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y\(4),
	datab => \U1|screen|y\(6),
	datad => VCC,
	cin => \vga_u0|user_input_translator|Add0~7\,
	combout => \vga_u0|user_input_translator|Add0~8_combout\,
	cout => \vga_u0|user_input_translator|Add0~9\);

-- Location: LCCOMB_X28_Y24_N12
\vga_u0|user_input_translator|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~12_combout\ = (\U1|screen|y\(6) & (\vga_u0|user_input_translator|Add0~11\ $ (GND))) # (!\U1|screen|y\(6) & (!\vga_u0|user_input_translator|Add0~11\ & VCC))
-- \vga_u0|user_input_translator|Add0~13\ = CARRY((\U1|screen|y\(6) & !\vga_u0|user_input_translator|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|screen|y\(6),
	datad => VCC,
	cin => \vga_u0|user_input_translator|Add0~11\,
	combout => \vga_u0|user_input_translator|Add0~12_combout\,
	cout => \vga_u0|user_input_translator|Add0~13\);

-- Location: LCCOMB_X28_Y24_N14
\vga_u0|user_input_translator|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|Add0~14_combout\ = \vga_u0|user_input_translator|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vga_u0|user_input_translator|Add0~13\,
	combout => \vga_u0|user_input_translator|Add0~14_combout\);

-- Location: LCFF_X27_Y24_N21
\U1|screen|x_temp0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|x_temp0[6]~20_combout\,
	sclr => \U1|screen|plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|x_temp0\(6));

-- Location: LCFF_X25_Y24_N15
\U1|screen|x[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \U1|screen|x_temp0\(6),
	sload => VCC,
	ena => \U1|screen|ALT_INV_plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|x\(6));

-- Location: LCCOMB_X28_Y25_N4
\U1|screen|y_temp0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|y_temp0~6_combout\ = (\U1|screen|Add5~0_combout\ & \U1|screen|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|screen|Add5~0_combout\,
	datad => \U1|screen|LessThan0~0_combout\,
	combout => \U1|screen|y_temp0~6_combout\);

-- Location: LCFF_X28_Y25_N5
\U1|screen|y_temp0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|y_temp0~6_combout\,
	ena => \U1|screen|plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|y_temp0\(0));

-- Location: LCFF_X28_Y24_N1
\U1|screen|y[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \U1|screen|y_temp0\(0),
	sload => VCC,
	ena => \U1|screen|ALT_INV_plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|y\(0));

-- Location: LCCOMB_X25_Y24_N12
\vga_u0|user_input_translator|mem_address[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[5]~0_combout\ = (\U1|screen|x\(5) & (\U1|screen|y\(0) $ (VCC))) # (!\U1|screen|x\(5) & (\U1|screen|y\(0) & VCC))
-- \vga_u0|user_input_translator|mem_address[5]~1\ = CARRY((\U1|screen|x\(5) & \U1|screen|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x\(5),
	datab => \U1|screen|y\(0),
	datad => VCC,
	combout => \vga_u0|user_input_translator|mem_address[5]~0_combout\,
	cout => \vga_u0|user_input_translator|mem_address[5]~1\);

-- Location: LCCOMB_X25_Y24_N14
\vga_u0|user_input_translator|mem_address[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[6]~2_combout\ = (\U1|screen|y\(1) & ((\U1|screen|x\(6) & (\vga_u0|user_input_translator|mem_address[5]~1\ & VCC)) # (!\U1|screen|x\(6) & (!\vga_u0|user_input_translator|mem_address[5]~1\)))) # (!\U1|screen|y\(1) & 
-- ((\U1|screen|x\(6) & (!\vga_u0|user_input_translator|mem_address[5]~1\)) # (!\U1|screen|x\(6) & ((\vga_u0|user_input_translator|mem_address[5]~1\) # (GND)))))
-- \vga_u0|user_input_translator|mem_address[6]~3\ = CARRY((\U1|screen|y\(1) & (!\U1|screen|x\(6) & !\vga_u0|user_input_translator|mem_address[5]~1\)) # (!\U1|screen|y\(1) & ((!\vga_u0|user_input_translator|mem_address[5]~1\) # (!\U1|screen|x\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y\(1),
	datab => \U1|screen|x\(6),
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[5]~1\,
	combout => \vga_u0|user_input_translator|mem_address[6]~2_combout\,
	cout => \vga_u0|user_input_translator|mem_address[6]~3\);

-- Location: LCCOMB_X25_Y24_N16
\vga_u0|user_input_translator|mem_address[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[7]~4_combout\ = ((\U1|screen|x\(7) $ (\vga_u0|user_input_translator|Add0~0_combout\ $ (!\vga_u0|user_input_translator|mem_address[6]~3\)))) # (GND)
-- \vga_u0|user_input_translator|mem_address[7]~5\ = CARRY((\U1|screen|x\(7) & ((\vga_u0|user_input_translator|Add0~0_combout\) # (!\vga_u0|user_input_translator|mem_address[6]~3\))) # (!\U1|screen|x\(7) & (\vga_u0|user_input_translator|Add0~0_combout\ & 
-- !\vga_u0|user_input_translator|mem_address[6]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x\(7),
	datab => \vga_u0|user_input_translator|Add0~0_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[6]~3\,
	combout => \vga_u0|user_input_translator|mem_address[7]~4_combout\,
	cout => \vga_u0|user_input_translator|mem_address[7]~5\);

-- Location: LCCOMB_X25_Y24_N18
\vga_u0|user_input_translator|mem_address[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[8]~6_combout\ = (\vga_u0|user_input_translator|Add0~2_combout\ & (!\vga_u0|user_input_translator|mem_address[7]~5\)) # (!\vga_u0|user_input_translator|Add0~2_combout\ & 
-- ((\vga_u0|user_input_translator|mem_address[7]~5\) # (GND)))
-- \vga_u0|user_input_translator|mem_address[8]~7\ = CARRY((!\vga_u0|user_input_translator|mem_address[7]~5\) # (!\vga_u0|user_input_translator|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|user_input_translator|Add0~2_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[7]~5\,
	combout => \vga_u0|user_input_translator|mem_address[8]~6_combout\,
	cout => \vga_u0|user_input_translator|mem_address[8]~7\);

-- Location: LCCOMB_X25_Y24_N20
\vga_u0|user_input_translator|mem_address[9]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[9]~8_combout\ = (\vga_u0|user_input_translator|Add0~4_combout\ & (\vga_u0|user_input_translator|mem_address[8]~7\ $ (GND))) # (!\vga_u0|user_input_translator|Add0~4_combout\ & 
-- (!\vga_u0|user_input_translator|mem_address[8]~7\ & VCC))
-- \vga_u0|user_input_translator|mem_address[9]~9\ = CARRY((\vga_u0|user_input_translator|Add0~4_combout\ & !\vga_u0|user_input_translator|mem_address[8]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|user_input_translator|Add0~4_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[8]~7\,
	combout => \vga_u0|user_input_translator|mem_address[9]~8_combout\,
	cout => \vga_u0|user_input_translator|mem_address[9]~9\);

-- Location: LCCOMB_X25_Y24_N22
\vga_u0|user_input_translator|mem_address[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[10]~10_combout\ = (\vga_u0|user_input_translator|Add0~6_combout\ & (!\vga_u0|user_input_translator|mem_address[9]~9\)) # (!\vga_u0|user_input_translator|Add0~6_combout\ & 
-- ((\vga_u0|user_input_translator|mem_address[9]~9\) # (GND)))
-- \vga_u0|user_input_translator|mem_address[10]~11\ = CARRY((!\vga_u0|user_input_translator|mem_address[9]~9\) # (!\vga_u0|user_input_translator|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|Add0~6_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[9]~9\,
	combout => \vga_u0|user_input_translator|mem_address[10]~10_combout\,
	cout => \vga_u0|user_input_translator|mem_address[10]~11\);

-- Location: LCCOMB_X25_Y24_N24
\vga_u0|user_input_translator|mem_address[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[11]~12_combout\ = (\vga_u0|user_input_translator|Add0~8_combout\ & (\vga_u0|user_input_translator|mem_address[10]~11\ $ (GND))) # (!\vga_u0|user_input_translator|Add0~8_combout\ & 
-- (!\vga_u0|user_input_translator|mem_address[10]~11\ & VCC))
-- \vga_u0|user_input_translator|mem_address[11]~13\ = CARRY((\vga_u0|user_input_translator|Add0~8_combout\ & !\vga_u0|user_input_translator|mem_address[10]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|Add0~8_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[10]~11\,
	combout => \vga_u0|user_input_translator|mem_address[11]~12_combout\,
	cout => \vga_u0|user_input_translator|mem_address[11]~13\);

-- Location: LCCOMB_X25_Y24_N26
\vga_u0|user_input_translator|mem_address[12]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[12]~14_combout\ = (\vga_u0|user_input_translator|Add0~10_combout\ & (!\vga_u0|user_input_translator|mem_address[11]~13\)) # (!\vga_u0|user_input_translator|Add0~10_combout\ & 
-- ((\vga_u0|user_input_translator|mem_address[11]~13\) # (GND)))
-- \vga_u0|user_input_translator|mem_address[12]~15\ = CARRY((!\vga_u0|user_input_translator|mem_address[11]~13\) # (!\vga_u0|user_input_translator|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|user_input_translator|Add0~10_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[11]~13\,
	combout => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	cout => \vga_u0|user_input_translator|mem_address[12]~15\);

-- Location: LCCOMB_X25_Y24_N28
\vga_u0|user_input_translator|mem_address[13]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[13]~16_combout\ = (\vga_u0|user_input_translator|Add0~12_combout\ & (\vga_u0|user_input_translator|mem_address[12]~15\ $ (GND))) # (!\vga_u0|user_input_translator|Add0~12_combout\ & 
-- (!\vga_u0|user_input_translator|mem_address[12]~15\ & VCC))
-- \vga_u0|user_input_translator|mem_address[13]~17\ = CARRY((\vga_u0|user_input_translator|Add0~12_combout\ & !\vga_u0|user_input_translator|mem_address[12]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|Add0~12_combout\,
	datad => VCC,
	cin => \vga_u0|user_input_translator|mem_address[12]~15\,
	combout => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	cout => \vga_u0|user_input_translator|mem_address[13]~17\);

-- Location: LCCOMB_X25_Y24_N30
\vga_u0|user_input_translator|mem_address[14]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|user_input_translator|mem_address[14]~18_combout\ = \vga_u0|user_input_translator|mem_address[13]~17\ $ (\vga_u0|user_input_translator|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_u0|user_input_translator|Add0~14_combout\,
	cin => \vga_u0|user_input_translator|mem_address[13]~17\,
	combout => \vga_u0|user_input_translator|mem_address[14]~18_combout\);

-- Location: LCCOMB_X24_Y24_N2
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w\(3) = (\vga_u0|writeEn~1_combout\ & (!\vga_u0|user_input_translator|mem_address[14]~18_combout\ & (\vga_u0|user_input_translator|mem_address[12]~14_combout\ & 
-- \vga_u0|user_input_translator|mem_address[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|writeEn~1_combout\,
	datab => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w\(3));

-- Location: PLL_1
\vga_u0|mypll|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 16,
	c0_initial => 1,
	c0_low => 16,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 20000,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 16,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 3582,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	inclk => \vga_u0|mypll|altpll_component|pll_INCLK_bus\,
	clk => \vga_u0|mypll|altpll_component|pll_CLK_bus\);

-- Location: CLKCTRL_G3
\vga_u0|mypll|altpll_component|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y26_N0
\vga_u0|controller|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~0_combout\ = \vga_u0|controller|xCounter\(0) $ (VCC)
-- \vga_u0|controller|Add0~1\ = CARRY(\vga_u0|controller|xCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|xCounter\(0),
	datad => VCC,
	combout => \vga_u0|controller|Add0~0_combout\,
	cout => \vga_u0|controller|Add0~1\);

-- Location: LCFF_X14_Y26_N1
\vga_u0|controller|xCounter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|Add0~0_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(0));

-- Location: LCCOMB_X14_Y26_N2
\vga_u0|controller|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~2_combout\ = (\vga_u0|controller|xCounter\(1) & (!\vga_u0|controller|Add0~1\)) # (!\vga_u0|controller|xCounter\(1) & ((\vga_u0|controller|Add0~1\) # (GND)))
-- \vga_u0|controller|Add0~3\ = CARRY((!\vga_u0|controller|Add0~1\) # (!\vga_u0|controller|xCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|xCounter\(1),
	datad => VCC,
	cin => \vga_u0|controller|Add0~1\,
	combout => \vga_u0|controller|Add0~2_combout\,
	cout => \vga_u0|controller|Add0~3\);

-- Location: LCFF_X14_Y26_N3
\vga_u0|controller|xCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|Add0~2_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(1));

-- Location: LCCOMB_X14_Y26_N4
\vga_u0|controller|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~4_combout\ = (\vga_u0|controller|xCounter\(2) & (\vga_u0|controller|Add0~3\ $ (GND))) # (!\vga_u0|controller|xCounter\(2) & (!\vga_u0|controller|Add0~3\ & VCC))
-- \vga_u0|controller|Add0~5\ = CARRY((\vga_u0|controller|xCounter\(2) & !\vga_u0|controller|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|xCounter\(2),
	datad => VCC,
	cin => \vga_u0|controller|Add0~3\,
	combout => \vga_u0|controller|Add0~4_combout\,
	cout => \vga_u0|controller|Add0~5\);

-- Location: LCFF_X14_Y26_N5
\vga_u0|controller|xCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|Add0~4_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(2));

-- Location: LCCOMB_X14_Y26_N6
\vga_u0|controller|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~6_combout\ = (\vga_u0|controller|xCounter\(3) & (!\vga_u0|controller|Add0~5\)) # (!\vga_u0|controller|xCounter\(3) & ((\vga_u0|controller|Add0~5\) # (GND)))
-- \vga_u0|controller|Add0~7\ = CARRY((!\vga_u0|controller|Add0~5\) # (!\vga_u0|controller|xCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(3),
	datad => VCC,
	cin => \vga_u0|controller|Add0~5\,
	combout => \vga_u0|controller|Add0~6_combout\,
	cout => \vga_u0|controller|Add0~7\);

-- Location: LCCOMB_X14_Y26_N8
\vga_u0|controller|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~8_combout\ = (\vga_u0|controller|xCounter\(4) & (\vga_u0|controller|Add0~7\ $ (GND))) # (!\vga_u0|controller|xCounter\(4) & (!\vga_u0|controller|Add0~7\ & VCC))
-- \vga_u0|controller|Add0~9\ = CARRY((\vga_u0|controller|xCounter\(4) & !\vga_u0|controller|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|xCounter\(4),
	datad => VCC,
	cin => \vga_u0|controller|Add0~7\,
	combout => \vga_u0|controller|Add0~8_combout\,
	cout => \vga_u0|controller|Add0~9\);

-- Location: LCFF_X14_Y26_N9
\vga_u0|controller|xCounter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|Add0~8_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(4));

-- Location: LCCOMB_X14_Y26_N10
\vga_u0|controller|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~10_combout\ = (\vga_u0|controller|xCounter\(5) & (!\vga_u0|controller|Add0~9\)) # (!\vga_u0|controller|xCounter\(5) & ((\vga_u0|controller|Add0~9\) # (GND)))
-- \vga_u0|controller|Add0~11\ = CARRY((!\vga_u0|controller|Add0~9\) # (!\vga_u0|controller|xCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(5),
	datad => VCC,
	cin => \vga_u0|controller|Add0~9\,
	combout => \vga_u0|controller|Add0~10_combout\,
	cout => \vga_u0|controller|Add0~11\);

-- Location: LCCOMB_X14_Y26_N12
\vga_u0|controller|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~12_combout\ = (\vga_u0|controller|xCounter\(6) & (\vga_u0|controller|Add0~11\ $ (GND))) # (!\vga_u0|controller|xCounter\(6) & (!\vga_u0|controller|Add0~11\ & VCC))
-- \vga_u0|controller|Add0~13\ = CARRY((\vga_u0|controller|xCounter\(6) & !\vga_u0|controller|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|xCounter\(6),
	datad => VCC,
	cin => \vga_u0|controller|Add0~11\,
	combout => \vga_u0|controller|Add0~12_combout\,
	cout => \vga_u0|controller|Add0~13\);

-- Location: LCFF_X14_Y26_N13
\vga_u0|controller|xCounter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|Add0~12_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(6));

-- Location: LCCOMB_X14_Y26_N14
\vga_u0|controller|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~14_combout\ = (\vga_u0|controller|xCounter\(7) & (!\vga_u0|controller|Add0~13\)) # (!\vga_u0|controller|xCounter\(7) & ((\vga_u0|controller|Add0~13\) # (GND)))
-- \vga_u0|controller|Add0~15\ = CARRY((!\vga_u0|controller|Add0~13\) # (!\vga_u0|controller|xCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|xCounter\(7),
	datad => VCC,
	cin => \vga_u0|controller|Add0~13\,
	combout => \vga_u0|controller|Add0~14_combout\,
	cout => \vga_u0|controller|Add0~15\);

-- Location: LCFF_X14_Y26_N15
\vga_u0|controller|xCounter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|Add0~14_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(7));

-- Location: LCCOMB_X14_Y26_N16
\vga_u0|controller|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~16_combout\ = (\vga_u0|controller|xCounter\(8) & (\vga_u0|controller|Add0~15\ $ (GND))) # (!\vga_u0|controller|xCounter\(8) & (!\vga_u0|controller|Add0~15\ & VCC))
-- \vga_u0|controller|Add0~17\ = CARRY((\vga_u0|controller|xCounter\(8) & !\vga_u0|controller|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|xCounter\(8),
	datad => VCC,
	cin => \vga_u0|controller|Add0~15\,
	combout => \vga_u0|controller|Add0~16_combout\,
	cout => \vga_u0|controller|Add0~17\);

-- Location: LCCOMB_X14_Y26_N26
\vga_u0|controller|xCounter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|xCounter~1_combout\ = (\vga_u0|controller|Add0~16_combout\ & !\vga_u0|controller|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_u0|controller|Add0~16_combout\,
	datad => \vga_u0|controller|Equal0~2_combout\,
	combout => \vga_u0|controller|xCounter~1_combout\);

-- Location: LCFF_X14_Y26_N27
\vga_u0|controller|xCounter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|xCounter~1_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(8));

-- Location: LCCOMB_X12_Y26_N4
\vga_u0|controller|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Equal0~1_combout\ = (\vga_u0|controller|xCounter\(9) & (!\vga_u0|controller|xCounter\(7) & (\vga_u0|controller|xCounter\(8) & \vga_u0|controller|xCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(9),
	datab => \vga_u0|controller|xCounter\(7),
	datac => \vga_u0|controller|xCounter\(8),
	datad => \vga_u0|controller|xCounter\(4),
	combout => \vga_u0|controller|Equal0~1_combout\);

-- Location: LCFF_X14_Y26_N7
\vga_u0|controller|xCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|Add0~6_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(3));

-- Location: LCCOMB_X12_Y26_N14
\vga_u0|controller|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Equal0~2_combout\ = (\vga_u0|controller|Equal0~0_combout\ & (\vga_u0|controller|Equal0~1_combout\ & (\vga_u0|controller|xCounter\(2) & \vga_u0|controller|xCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Equal0~0_combout\,
	datab => \vga_u0|controller|Equal0~1_combout\,
	datac => \vga_u0|controller|xCounter\(2),
	datad => \vga_u0|controller|xCounter\(3),
	combout => \vga_u0|controller|Equal0~2_combout\);

-- Location: LCCOMB_X15_Y26_N4
\vga_u0|controller|yCounter[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[4]~5_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|Add1~8_combout\ & ((!\vga_u0|controller|always1~2_combout\)))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Add1~8_combout\,
	datab => \vga_u0|controller|Equal0~2_combout\,
	datac => \vga_u0|controller|yCounter\(4),
	datad => \vga_u0|controller|always1~2_combout\,
	combout => \vga_u0|controller|yCounter[4]~5_combout\);

-- Location: LCFF_X15_Y26_N5
\vga_u0|controller|yCounter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[4]~5_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(4));

-- Location: LCCOMB_X15_Y26_N6
\vga_u0|controller|yCounter[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[2]~7_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|Add1~4_combout\ & ((!\vga_u0|controller|always1~2_combout\)))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Add1~4_combout\,
	datab => \vga_u0|controller|Equal0~2_combout\,
	datac => \vga_u0|controller|yCounter\(2),
	datad => \vga_u0|controller|always1~2_combout\,
	combout => \vga_u0|controller|yCounter[2]~7_combout\);

-- Location: LCFF_X15_Y26_N7
\vga_u0|controller|yCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[2]~7_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(2));

-- Location: LCCOMB_X14_Y26_N22
\vga_u0|controller|yCounter[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[3]~6_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|Add1~6_combout\ & (!\vga_u0|controller|always1~2_combout\))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Add1~6_combout\,
	datab => \vga_u0|controller|always1~2_combout\,
	datac => \vga_u0|controller|yCounter\(3),
	datad => \vga_u0|controller|Equal0~2_combout\,
	combout => \vga_u0|controller|yCounter[3]~6_combout\);

-- Location: LCFF_X14_Y26_N23
\vga_u0|controller|yCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[3]~6_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(3));

-- Location: LCCOMB_X16_Y26_N30
\vga_u0|controller|always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|always1~0_combout\ = (\vga_u0|controller|yCounter\(9) & (!\vga_u0|controller|yCounter\(4) & (\vga_u0|controller|yCounter\(2) & \vga_u0|controller|yCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(9),
	datab => \vga_u0|controller|yCounter\(4),
	datac => \vga_u0|controller|yCounter\(2),
	datad => \vga_u0|controller|yCounter\(3),
	combout => \vga_u0|controller|always1~0_combout\);

-- Location: LCCOMB_X16_Y26_N24
\vga_u0|controller|yCounter[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[5]~4_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|Add1~10_combout\ & ((!\vga_u0|controller|always1~2_combout\)))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Add1~10_combout\,
	datab => \vga_u0|controller|Equal0~2_combout\,
	datac => \vga_u0|controller|yCounter\(5),
	datad => \vga_u0|controller|always1~2_combout\,
	combout => \vga_u0|controller|yCounter[5]~4_combout\);

-- Location: LCFF_X16_Y26_N25
\vga_u0|controller|yCounter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[5]~4_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(5));

-- Location: LCCOMB_X15_Y26_N8
\vga_u0|controller|yCounter[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[1]~8_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|Add1~2_combout\ & ((!\vga_u0|controller|always1~2_combout\)))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Add1~2_combout\,
	datab => \vga_u0|controller|Equal0~2_combout\,
	datac => \vga_u0|controller|yCounter\(1),
	datad => \vga_u0|controller|always1~2_combout\,
	combout => \vga_u0|controller|yCounter[1]~8_combout\);

-- Location: LCFF_X15_Y26_N9
\vga_u0|controller|yCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[1]~8_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(1));

-- Location: LCCOMB_X15_Y26_N30
\vga_u0|controller|yCounter[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[0]~9_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|Add1~0_combout\ & ((!\vga_u0|controller|always1~2_combout\)))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Add1~0_combout\,
	datab => \vga_u0|controller|Equal0~2_combout\,
	datac => \vga_u0|controller|yCounter\(0),
	datad => \vga_u0|controller|always1~2_combout\,
	combout => \vga_u0|controller|yCounter[0]~9_combout\);

-- Location: LCFF_X15_Y26_N31
\vga_u0|controller|yCounter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[0]~9_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(0));

-- Location: LCCOMB_X15_Y26_N22
\vga_u0|controller|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~12_combout\ = (\vga_u0|controller|yCounter\(6) & (\vga_u0|controller|Add1~11\ $ (GND))) # (!\vga_u0|controller|yCounter\(6) & (!\vga_u0|controller|Add1~11\ & VCC))
-- \vga_u0|controller|Add1~13\ = CARRY((\vga_u0|controller|yCounter\(6) & !\vga_u0|controller|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|yCounter\(6),
	datad => VCC,
	cin => \vga_u0|controller|Add1~11\,
	combout => \vga_u0|controller|Add1~12_combout\,
	cout => \vga_u0|controller|Add1~13\);

-- Location: LCCOMB_X14_Y26_N30
\vga_u0|controller|yCounter[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[6]~3_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|Add1~12_combout\ & ((!\vga_u0|controller|always1~2_combout\)))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Equal0~2_combout\,
	datab => \vga_u0|controller|Add1~12_combout\,
	datac => \vga_u0|controller|yCounter\(6),
	datad => \vga_u0|controller|always1~2_combout\,
	combout => \vga_u0|controller|yCounter[6]~3_combout\);

-- Location: LCFF_X14_Y26_N31
\vga_u0|controller|yCounter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[6]~3_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(6));

-- Location: LCCOMB_X16_Y26_N18
\vga_u0|controller|always1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|always1~2_combout\ = (\vga_u0|controller|always1~1_combout\ & (\vga_u0|controller|always1~0_combout\ & (!\vga_u0|controller|yCounter\(5) & !\vga_u0|controller|yCounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|always1~1_combout\,
	datab => \vga_u0|controller|always1~0_combout\,
	datac => \vga_u0|controller|yCounter\(5),
	datad => \vga_u0|controller|yCounter\(6),
	combout => \vga_u0|controller|always1~2_combout\);

-- Location: LCCOMB_X14_Y26_N20
\vga_u0|controller|yCounter[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[8]~1_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|Add1~16_combout\ & (!\vga_u0|controller|always1~2_combout\))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Add1~16_combout\,
	datab => \vga_u0|controller|always1~2_combout\,
	datac => \vga_u0|controller|yCounter\(8),
	datad => \vga_u0|controller|Equal0~2_combout\,
	combout => \vga_u0|controller|yCounter[8]~1_combout\);

-- Location: LCFF_X14_Y26_N21
\vga_u0|controller|yCounter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[8]~1_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(8));

-- Location: LCCOMB_X15_Y26_N2
\vga_u0|controller|yCounter[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[7]~2_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|Add1~14_combout\ & ((!\vga_u0|controller|always1~2_combout\)))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Add1~14_combout\,
	datab => \vga_u0|controller|Equal0~2_combout\,
	datac => \vga_u0|controller|yCounter\(7),
	datad => \vga_u0|controller|always1~2_combout\,
	combout => \vga_u0|controller|yCounter[7]~2_combout\);

-- Location: LCFF_X15_Y26_N3
\vga_u0|controller|yCounter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[7]~2_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(7));

-- Location: LCCOMB_X16_Y26_N4
\vga_u0|controller|controller_translator|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~4_combout\ = ((\vga_u0|controller|yCounter\(6) $ (\vga_u0|controller|yCounter\(4) $ (!\vga_u0|controller|controller_translator|Add0~3\)))) # (GND)
-- \vga_u0|controller|controller_translator|Add0~5\ = CARRY((\vga_u0|controller|yCounter\(6) & ((\vga_u0|controller|yCounter\(4)) # (!\vga_u0|controller|controller_translator|Add0~3\))) # (!\vga_u0|controller|yCounter\(6) & (\vga_u0|controller|yCounter\(4) & 
-- !\vga_u0|controller|controller_translator|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(6),
	datab => \vga_u0|controller|yCounter\(4),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|Add0~3\,
	combout => \vga_u0|controller|controller_translator|Add0~4_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~5\);

-- Location: LCCOMB_X16_Y26_N6
\vga_u0|controller|controller_translator|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~6_combout\ = (\vga_u0|controller|yCounter\(5) & ((\vga_u0|controller|yCounter\(7) & (\vga_u0|controller|controller_translator|Add0~5\ & VCC)) # (!\vga_u0|controller|yCounter\(7) & 
-- (!\vga_u0|controller|controller_translator|Add0~5\)))) # (!\vga_u0|controller|yCounter\(5) & ((\vga_u0|controller|yCounter\(7) & (!\vga_u0|controller|controller_translator|Add0~5\)) # (!\vga_u0|controller|yCounter\(7) & 
-- ((\vga_u0|controller|controller_translator|Add0~5\) # (GND)))))
-- \vga_u0|controller|controller_translator|Add0~7\ = CARRY((\vga_u0|controller|yCounter\(5) & (!\vga_u0|controller|yCounter\(7) & !\vga_u0|controller|controller_translator|Add0~5\)) # (!\vga_u0|controller|yCounter\(5) & 
-- ((!\vga_u0|controller|controller_translator|Add0~5\) # (!\vga_u0|controller|yCounter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(5),
	datab => \vga_u0|controller|yCounter\(7),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|Add0~5\,
	combout => \vga_u0|controller|controller_translator|Add0~6_combout\,
	cout => \vga_u0|controller|controller_translator|Add0~7\);

-- Location: LCCOMB_X16_Y26_N14
\vga_u0|controller|controller_translator|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|Add0~14_combout\ = \vga_u0|controller|controller_translator|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vga_u0|controller|controller_translator|Add0~13\,
	combout => \vga_u0|controller|controller_translator|Add0~14_combout\);

-- Location: LCCOMB_X14_Y26_N18
\vga_u0|controller|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add0~18_combout\ = \vga_u0|controller|Add0~17\ $ (\vga_u0|controller|xCounter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_u0|controller|xCounter\(9),
	cin => \vga_u0|controller|Add0~17\,
	combout => \vga_u0|controller|Add0~18_combout\);

-- Location: LCCOMB_X14_Y26_N28
\vga_u0|controller|xCounter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|xCounter~2_combout\ = (!\vga_u0|controller|Equal0~2_combout\ & \vga_u0|controller|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Equal0~2_combout\,
	datad => \vga_u0|controller|Add0~18_combout\,
	combout => \vga_u0|controller|xCounter~2_combout\);

-- Location: LCFF_X14_Y26_N29
\vga_u0|controller|xCounter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|xCounter~2_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(9));

-- Location: LCCOMB_X17_Y26_N12
\vga_u0|controller|controller_translator|mem_address[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[5]~0_combout\ = (\vga_u0|controller|xCounter\(7) & (\vga_u0|controller|yCounter\(2) $ (VCC))) # (!\vga_u0|controller|xCounter\(7) & (\vga_u0|controller|yCounter\(2) & VCC))
-- \vga_u0|controller|controller_translator|mem_address[5]~1\ = CARRY((\vga_u0|controller|xCounter\(7) & \vga_u0|controller|yCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(7),
	datab => \vga_u0|controller|yCounter\(2),
	datad => VCC,
	combout => \vga_u0|controller|controller_translator|mem_address[5]~0_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[5]~1\);

-- Location: LCCOMB_X17_Y26_N14
\vga_u0|controller|controller_translator|mem_address[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[6]~2_combout\ = (\vga_u0|controller|xCounter\(8) & ((\vga_u0|controller|yCounter\(3) & (\vga_u0|controller|controller_translator|mem_address[5]~1\ & VCC)) # (!\vga_u0|controller|yCounter\(3) & 
-- (!\vga_u0|controller|controller_translator|mem_address[5]~1\)))) # (!\vga_u0|controller|xCounter\(8) & ((\vga_u0|controller|yCounter\(3) & (!\vga_u0|controller|controller_translator|mem_address[5]~1\)) # (!\vga_u0|controller|yCounter\(3) & 
-- ((\vga_u0|controller|controller_translator|mem_address[5]~1\) # (GND)))))
-- \vga_u0|controller|controller_translator|mem_address[6]~3\ = CARRY((\vga_u0|controller|xCounter\(8) & (!\vga_u0|controller|yCounter\(3) & !\vga_u0|controller|controller_translator|mem_address[5]~1\)) # (!\vga_u0|controller|xCounter\(8) & 
-- ((!\vga_u0|controller|controller_translator|mem_address[5]~1\) # (!\vga_u0|controller|yCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(8),
	datab => \vga_u0|controller|yCounter\(3),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[5]~1\,
	combout => \vga_u0|controller|controller_translator|mem_address[6]~2_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[6]~3\);

-- Location: LCCOMB_X17_Y26_N16
\vga_u0|controller|controller_translator|mem_address[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[7]~4_combout\ = ((\vga_u0|controller|controller_translator|Add0~0_combout\ $ (\vga_u0|controller|xCounter\(9) $ (!\vga_u0|controller|controller_translator|mem_address[6]~3\)))) # (GND)
-- \vga_u0|controller|controller_translator|mem_address[7]~5\ = CARRY((\vga_u0|controller|controller_translator|Add0~0_combout\ & ((\vga_u0|controller|xCounter\(9)) # (!\vga_u0|controller|controller_translator|mem_address[6]~3\))) # 
-- (!\vga_u0|controller|controller_translator|Add0~0_combout\ & (\vga_u0|controller|xCounter\(9) & !\vga_u0|controller|controller_translator|mem_address[6]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|controller_translator|Add0~0_combout\,
	datab => \vga_u0|controller|xCounter\(9),
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[6]~3\,
	combout => \vga_u0|controller|controller_translator|mem_address[7]~4_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[7]~5\);

-- Location: LCCOMB_X17_Y26_N18
\vga_u0|controller|controller_translator|mem_address[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[8]~6_combout\ = (\vga_u0|controller|controller_translator|Add0~2_combout\ & (!\vga_u0|controller|controller_translator|mem_address[7]~5\)) # (!\vga_u0|controller|controller_translator|Add0~2_combout\ & 
-- ((\vga_u0|controller|controller_translator|mem_address[7]~5\) # (GND)))
-- \vga_u0|controller|controller_translator|mem_address[8]~7\ = CARRY((!\vga_u0|controller|controller_translator|mem_address[7]~5\) # (!\vga_u0|controller|controller_translator|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|controller_translator|Add0~2_combout\,
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[7]~5\,
	combout => \vga_u0|controller|controller_translator|mem_address[8]~6_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[8]~7\);

-- Location: LCCOMB_X17_Y26_N20
\vga_u0|controller|controller_translator|mem_address[9]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[9]~8_combout\ = (\vga_u0|controller|controller_translator|Add0~4_combout\ & (\vga_u0|controller|controller_translator|mem_address[8]~7\ $ (GND))) # 
-- (!\vga_u0|controller|controller_translator|Add0~4_combout\ & (!\vga_u0|controller|controller_translator|mem_address[8]~7\ & VCC))
-- \vga_u0|controller|controller_translator|mem_address[9]~9\ = CARRY((\vga_u0|controller|controller_translator|Add0~4_combout\ & !\vga_u0|controller|controller_translator|mem_address[8]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|Add0~4_combout\,
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[8]~7\,
	combout => \vga_u0|controller|controller_translator|mem_address[9]~8_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[9]~9\);

-- Location: LCCOMB_X17_Y26_N22
\vga_u0|controller|controller_translator|mem_address[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[10]~10_combout\ = (\vga_u0|controller|controller_translator|Add0~6_combout\ & (!\vga_u0|controller|controller_translator|mem_address[9]~9\)) # (!\vga_u0|controller|controller_translator|Add0~6_combout\ 
-- & ((\vga_u0|controller|controller_translator|mem_address[9]~9\) # (GND)))
-- \vga_u0|controller|controller_translator|mem_address[10]~11\ = CARRY((!\vga_u0|controller|controller_translator|mem_address[9]~9\) # (!\vga_u0|controller|controller_translator|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|Add0~6_combout\,
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[9]~9\,
	combout => \vga_u0|controller|controller_translator|mem_address[10]~10_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[10]~11\);

-- Location: LCCOMB_X17_Y26_N24
\vga_u0|controller|controller_translator|mem_address[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[11]~12_combout\ = (\vga_u0|controller|controller_translator|Add0~8_combout\ & (\vga_u0|controller|controller_translator|mem_address[10]~11\ $ (GND))) # 
-- (!\vga_u0|controller|controller_translator|Add0~8_combout\ & (!\vga_u0|controller|controller_translator|mem_address[10]~11\ & VCC))
-- \vga_u0|controller|controller_translator|mem_address[11]~13\ = CARRY((\vga_u0|controller|controller_translator|Add0~8_combout\ & !\vga_u0|controller|controller_translator|mem_address[10]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|controller_translator|Add0~8_combout\,
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[10]~11\,
	combout => \vga_u0|controller|controller_translator|mem_address[11]~12_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[11]~13\);

-- Location: LCCOMB_X17_Y26_N26
\vga_u0|controller|controller_translator|mem_address[12]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[12]~14_combout\ = (\vga_u0|controller|controller_translator|Add0~10_combout\ & (!\vga_u0|controller|controller_translator|mem_address[11]~13\)) # 
-- (!\vga_u0|controller|controller_translator|Add0~10_combout\ & ((\vga_u0|controller|controller_translator|mem_address[11]~13\) # (GND)))
-- \vga_u0|controller|controller_translator|mem_address[12]~15\ = CARRY((!\vga_u0|controller|controller_translator|mem_address[11]~13\) # (!\vga_u0|controller|controller_translator|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|controller_translator|Add0~10_combout\,
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[11]~13\,
	combout => \vga_u0|controller|controller_translator|mem_address[12]~14_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[12]~15\);

-- Location: LCCOMB_X17_Y26_N28
\vga_u0|controller|controller_translator|mem_address[13]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[13]~16_combout\ = (\vga_u0|controller|controller_translator|Add0~12_combout\ & (\vga_u0|controller|controller_translator|mem_address[12]~15\ $ (GND))) # 
-- (!\vga_u0|controller|controller_translator|Add0~12_combout\ & (!\vga_u0|controller|controller_translator|mem_address[12]~15\ & VCC))
-- \vga_u0|controller|controller_translator|mem_address[13]~17\ = CARRY((\vga_u0|controller|controller_translator|Add0~12_combout\ & !\vga_u0|controller|controller_translator|mem_address[12]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|controller_translator|Add0~12_combout\,
	datad => VCC,
	cin => \vga_u0|controller|controller_translator|mem_address[12]~15\,
	combout => \vga_u0|controller|controller_translator|mem_address[13]~16_combout\,
	cout => \vga_u0|controller|controller_translator|mem_address[13]~17\);

-- Location: LCCOMB_X17_Y26_N30
\vga_u0|controller|controller_translator|mem_address[14]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|controller_translator|mem_address[14]~18_combout\ = \vga_u0|controller|controller_translator|mem_address[13]~17\ $ (\vga_u0|controller|controller_translator|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_u0|controller|controller_translator|Add0~14_combout\,
	cin => \vga_u0|controller|controller_translator|mem_address[13]~17\,
	combout => \vga_u0|controller|controller_translator|mem_address[14]~18_combout\);

-- Location: LCCOMB_X17_Y26_N8
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w\(3) = (!\vga_u0|controller|controller_translator|mem_address[14]~18_combout\ & (\vga_u0|controller|controller_translator|mem_address[12]~14_combout\ & 
-- \vga_u0|controller|controller_translator|mem_address[13]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|controller|controller_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|controller|controller_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w\(3));

-- Location: LCCOMB_X24_Y24_N4
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0_combout\ = (!\vga_u0|user_input_translator|mem_address[14]~18_combout\ & (\vga_u0|user_input_translator|mem_address[12]~14_combout\ & 
-- \vga_u0|user_input_translator|mem_address[13]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0_combout\);

-- Location: LCCOMB_X14_Y26_N24
\vga_u0|controller|xCounter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|xCounter~0_combout\ = (!\vga_u0|controller|Equal0~2_combout\ & \vga_u0|controller|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Equal0~2_combout\,
	datad => \vga_u0|controller|Add0~10_combout\,
	combout => \vga_u0|controller|xCounter~0_combout\);

-- Location: LCFF_X14_Y26_N25
\vga_u0|controller|xCounter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|xCounter~0_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|xCounter\(5));

-- Location: LCCOMB_X28_Y27_N28
\U1|P2_goalie|player_y[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|P2_goalie|player_y[6]~8_combout\ = \U1|P2_goalie|player_y[3]~3_combout\ $ (\U1|P2_goalie|y_coord[5]~11\ $ (\U1|P2_goalie|player_y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|P2_goalie|player_y[3]~3_combout\,
	datad => \U1|P2_goalie|player_y\(6),
	cin => \U1|P2_goalie|y_coord[5]~11\,
	combout => \U1|P2_goalie|player_y[6]~8_combout\);

-- Location: LCFF_X28_Y27_N29
\U1|P2_goalie|player_y[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P2_goalie|player_y[6]~8_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P2_goalie|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P2_goalie|player_y\(6));

-- Location: LCCOMB_X29_Y27_N10
\U1|screen|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add2~10_combout\ = \U1|screen|Add2~9\ $ (\U1|P2_goalie|player_y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|P2_goalie|player_y\(6),
	cin => \U1|screen|Add2~9\,
	combout => \U1|screen|Add2~10_combout\);

-- Location: LCCOMB_X29_Y27_N18
\U1|screen|LessThan13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan13~1_cout\ = CARRY((\U1|screen|y_temp0\(0) & !\U1|P2_goalie|player_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(0),
	datab => \U1|P2_goalie|player_y\(0),
	datad => VCC,
	cout => \U1|screen|LessThan13~1_cout\);

-- Location: LCCOMB_X29_Y27_N20
\U1|screen|LessThan13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan13~3_cout\ = CARRY((\U1|screen|y_temp0\(1) & (\U1|screen|Add2~0_combout\ & !\U1|screen|LessThan13~1_cout\)) # (!\U1|screen|y_temp0\(1) & ((\U1|screen|Add2~0_combout\) # (!\U1|screen|LessThan13~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(1),
	datab => \U1|screen|Add2~0_combout\,
	datad => VCC,
	cin => \U1|screen|LessThan13~1_cout\,
	cout => \U1|screen|LessThan13~3_cout\);

-- Location: LCCOMB_X29_Y27_N22
\U1|screen|LessThan13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan13~5_cout\ = CARRY((\U1|screen|y_temp0\(2) & ((!\U1|screen|LessThan13~3_cout\) # (!\U1|screen|Add2~2_combout\))) # (!\U1|screen|y_temp0\(2) & (!\U1|screen|Add2~2_combout\ & !\U1|screen|LessThan13~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(2),
	datab => \U1|screen|Add2~2_combout\,
	datad => VCC,
	cin => \U1|screen|LessThan13~3_cout\,
	cout => \U1|screen|LessThan13~5_cout\);

-- Location: LCCOMB_X29_Y27_N24
\U1|screen|LessThan13~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan13~7_cout\ = CARRY((\U1|screen|y_temp0\(3) & (\U1|screen|Add2~4_combout\ & !\U1|screen|LessThan13~5_cout\)) # (!\U1|screen|y_temp0\(3) & ((\U1|screen|Add2~4_combout\) # (!\U1|screen|LessThan13~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(3),
	datab => \U1|screen|Add2~4_combout\,
	datad => VCC,
	cin => \U1|screen|LessThan13~5_cout\,
	cout => \U1|screen|LessThan13~7_cout\);

-- Location: LCCOMB_X29_Y27_N26
\U1|screen|LessThan13~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan13~9_cout\ = CARRY((\U1|screen|Add2~6_combout\ & (\U1|screen|y_temp0\(4) & !\U1|screen|LessThan13~7_cout\)) # (!\U1|screen|Add2~6_combout\ & ((\U1|screen|y_temp0\(4)) # (!\U1|screen|LessThan13~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add2~6_combout\,
	datab => \U1|screen|y_temp0\(4),
	datad => VCC,
	cin => \U1|screen|LessThan13~7_cout\,
	cout => \U1|screen|LessThan13~9_cout\);

-- Location: LCCOMB_X29_Y27_N28
\U1|screen|LessThan13~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan13~11_cout\ = CARRY((\U1|screen|y_temp0\(5) & (\U1|screen|Add2~8_combout\ & !\U1|screen|LessThan13~9_cout\)) # (!\U1|screen|y_temp0\(5) & ((\U1|screen|Add2~8_combout\) # (!\U1|screen|LessThan13~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(5),
	datab => \U1|screen|Add2~8_combout\,
	datad => VCC,
	cin => \U1|screen|LessThan13~9_cout\,
	cout => \U1|screen|LessThan13~11_cout\);

-- Location: LCCOMB_X29_Y27_N30
\U1|screen|LessThan13~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan13~12_combout\ = (\U1|screen|y_temp0\(6) & ((!\U1|screen|Add2~10_combout\) # (!\U1|screen|LessThan13~11_cout\))) # (!\U1|screen|y_temp0\(6) & (!\U1|screen|LessThan13~11_cout\ & !\U1|screen|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|screen|y_temp0\(6),
	datad => \U1|screen|Add2~10_combout\,
	cin => \U1|screen|LessThan13~11_cout\,
	combout => \U1|screen|LessThan13~12_combout\);

-- Location: LCCOMB_X28_Y24_N16
\U1|screen|LessThan12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan12~1_cout\ = CARRY((!\U1|P2_goalie|player_y\(0) & !\U1|screen|y_temp0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_goalie|player_y\(0),
	datab => \U1|screen|y_temp0\(0),
	datad => VCC,
	cout => \U1|screen|LessThan12~1_cout\);

-- Location: LCCOMB_X28_Y24_N18
\U1|screen|LessThan12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan12~3_cout\ = CARRY((\U1|P2_goalie|y_coord\(1) & ((\U1|screen|y_temp0\(1)) # (!\U1|screen|LessThan12~1_cout\))) # (!\U1|P2_goalie|y_coord\(1) & (\U1|screen|y_temp0\(1) & !\U1|screen|LessThan12~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_goalie|y_coord\(1),
	datab => \U1|screen|y_temp0\(1),
	datad => VCC,
	cin => \U1|screen|LessThan12~1_cout\,
	cout => \U1|screen|LessThan12~3_cout\);

-- Location: LCCOMB_X28_Y24_N20
\U1|screen|LessThan12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan12~5_cout\ = CARRY((\U1|screen|y_temp0\(2) & (!\U1|P2_goalie|y_coord\(2) & !\U1|screen|LessThan12~3_cout\)) # (!\U1|screen|y_temp0\(2) & ((!\U1|screen|LessThan12~3_cout\) # (!\U1|P2_goalie|y_coord\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(2),
	datab => \U1|P2_goalie|y_coord\(2),
	datad => VCC,
	cin => \U1|screen|LessThan12~3_cout\,
	cout => \U1|screen|LessThan12~5_cout\);

-- Location: LCCOMB_X28_Y24_N22
\U1|screen|LessThan12~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan12~7_cout\ = CARRY((\U1|screen|y_temp0\(3) & ((!\U1|screen|LessThan12~5_cout\) # (!\U1|P2_goalie|player_y\(3)))) # (!\U1|screen|y_temp0\(3) & (!\U1|P2_goalie|player_y\(3) & !\U1|screen|LessThan12~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(3),
	datab => \U1|P2_goalie|player_y\(3),
	datad => VCC,
	cin => \U1|screen|LessThan12~5_cout\,
	cout => \U1|screen|LessThan12~7_cout\);

-- Location: LCCOMB_X28_Y24_N24
\U1|screen|LessThan12~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan12~9_cout\ = CARRY((\U1|P2_goalie|y_coord\(4) & (!\U1|screen|y_temp0\(4) & !\U1|screen|LessThan12~7_cout\)) # (!\U1|P2_goalie|y_coord\(4) & ((!\U1|screen|LessThan12~7_cout\) # (!\U1|screen|y_temp0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_goalie|y_coord\(4),
	datab => \U1|screen|y_temp0\(4),
	datad => VCC,
	cin => \U1|screen|LessThan12~7_cout\,
	cout => \U1|screen|LessThan12~9_cout\);

-- Location: LCCOMB_X28_Y24_N26
\U1|screen|LessThan12~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan12~11_cout\ = CARRY((\U1|screen|y_temp0\(5) & ((\U1|P2_goalie|y_coord\(5)) # (!\U1|screen|LessThan12~9_cout\))) # (!\U1|screen|y_temp0\(5) & (\U1|P2_goalie|y_coord\(5) & !\U1|screen|LessThan12~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(5),
	datab => \U1|P2_goalie|y_coord\(5),
	datad => VCC,
	cin => \U1|screen|LessThan12~9_cout\,
	cout => \U1|screen|LessThan12~11_cout\);

-- Location: LCCOMB_X28_Y24_N28
\U1|screen|LessThan12~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan12~12_combout\ = (\U1|screen|y_temp0\(6) & (!\U1|screen|LessThan12~11_cout\ & \U1|P2_goalie|player_y\(6))) # (!\U1|screen|y_temp0\(6) & ((\U1|P2_goalie|player_y\(6)) # (!\U1|screen|LessThan12~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|screen|y_temp0\(6),
	datad => \U1|P2_goalie|player_y\(6),
	cin => \U1|screen|LessThan12~11_cout\,
	combout => \U1|screen|LessThan12~12_combout\);

-- Location: LCFF_X27_Y24_N11
\U1|screen|x_temp0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|x_temp0[1]~10_combout\,
	sclr => \U1|screen|plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|x_temp0\(1));

-- Location: LCCOMB_X31_Y24_N18
\U1|screen|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Equal3~1_combout\ = (!\U1|screen|x_temp0\(2) & (\U1|screen|x_temp0\(1) & (!\U1|screen|x_temp0\(3) & \U1|screen|x_temp0\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x_temp0\(2),
	datab => \U1|screen|x_temp0\(1),
	datac => \U1|screen|x_temp0\(3),
	datad => \U1|screen|x_temp0\(5),
	combout => \U1|screen|Equal3~1_combout\);

-- Location: LCCOMB_X31_Y24_N24
\U1|screen|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Equal3~0_combout\ = (\U1|screen|x_temp0\(4) & (\U1|screen|x_temp0\(0) & (\U1|screen|x_temp0\(6) & !\U1|screen|x_temp0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x_temp0\(4),
	datab => \U1|screen|x_temp0\(0),
	datac => \U1|screen|x_temp0\(6),
	datad => \U1|screen|x_temp0\(7),
	combout => \U1|screen|Equal3~0_combout\);

-- Location: LCCOMB_X30_Y24_N22
\U1|screen|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Equal3~2_combout\ = (\U1|screen|Equal3~1_combout\ & \U1|screen|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|screen|Equal3~1_combout\,
	datad => \U1|screen|Equal3~0_combout\,
	combout => \U1|screen|Equal3~2_combout\);

-- Location: LCCOMB_X30_Y24_N0
\U1|screen|colour~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour~2_combout\ = (!\U1|screen|Equal3~2_combout\ & (((\U1|screen|LessThan13~12_combout\) # (\U1|screen|LessThan12~12_combout\)) # (!\U1|screen|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Equal2~2_combout\,
	datab => \U1|screen|LessThan13~12_combout\,
	datac => \U1|screen|LessThan12~12_combout\,
	datad => \U1|screen|Equal3~2_combout\,
	combout => \U1|screen|colour~2_combout\);

-- Location: LCCOMB_X29_Y26_N2
\U1|screen|LessThan14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan14~1_cout\ = CARRY((!\U1|P2_forward|player_y\(0) & !\U1|screen|y_temp0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_forward|player_y\(0),
	datab => \U1|screen|y_temp0\(0),
	datad => VCC,
	cout => \U1|screen|LessThan14~1_cout\);

-- Location: LCCOMB_X29_Y26_N4
\U1|screen|LessThan14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan14~3_cout\ = CARRY((\U1|P2_forward|y_coord\(1) & ((\U1|screen|y_temp0\(1)) # (!\U1|screen|LessThan14~1_cout\))) # (!\U1|P2_forward|y_coord\(1) & (\U1|screen|y_temp0\(1) & !\U1|screen|LessThan14~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_forward|y_coord\(1),
	datab => \U1|screen|y_temp0\(1),
	datad => VCC,
	cin => \U1|screen|LessThan14~1_cout\,
	cout => \U1|screen|LessThan14~3_cout\);

-- Location: LCCOMB_X29_Y26_N6
\U1|screen|LessThan14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan14~5_cout\ = CARRY((\U1|P2_forward|y_coord\(2) & (!\U1|screen|y_temp0\(2) & !\U1|screen|LessThan14~3_cout\)) # (!\U1|P2_forward|y_coord\(2) & ((!\U1|screen|LessThan14~3_cout\) # (!\U1|screen|y_temp0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_forward|y_coord\(2),
	datab => \U1|screen|y_temp0\(2),
	datad => VCC,
	cin => \U1|screen|LessThan14~3_cout\,
	cout => \U1|screen|LessThan14~5_cout\);

-- Location: LCCOMB_X29_Y26_N8
\U1|screen|LessThan14~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan14~7_cout\ = CARRY((\U1|screen|y_temp0\(3) & ((!\U1|screen|LessThan14~5_cout\) # (!\U1|P2_forward|player_y\(3)))) # (!\U1|screen|y_temp0\(3) & (!\U1|P2_forward|player_y\(3) & !\U1|screen|LessThan14~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(3),
	datab => \U1|P2_forward|player_y\(3),
	datad => VCC,
	cin => \U1|screen|LessThan14~5_cout\,
	cout => \U1|screen|LessThan14~7_cout\);

-- Location: LCCOMB_X29_Y26_N10
\U1|screen|LessThan14~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan14~9_cout\ = CARRY((\U1|screen|y_temp0\(4) & (!\U1|P2_forward|y_coord\(4) & !\U1|screen|LessThan14~7_cout\)) # (!\U1|screen|y_temp0\(4) & ((!\U1|screen|LessThan14~7_cout\) # (!\U1|P2_forward|y_coord\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(4),
	datab => \U1|P2_forward|y_coord\(4),
	datad => VCC,
	cin => \U1|screen|LessThan14~7_cout\,
	cout => \U1|screen|LessThan14~9_cout\);

-- Location: LCCOMB_X29_Y26_N12
\U1|screen|LessThan14~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan14~11_cout\ = CARRY((\U1|P2_forward|y_coord\(5) & ((\U1|screen|y_temp0\(5)) # (!\U1|screen|LessThan14~9_cout\))) # (!\U1|P2_forward|y_coord\(5) & (\U1|screen|y_temp0\(5) & !\U1|screen|LessThan14~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_forward|y_coord\(5),
	datab => \U1|screen|y_temp0\(5),
	datad => VCC,
	cin => \U1|screen|LessThan14~9_cout\,
	cout => \U1|screen|LessThan14~11_cout\);

-- Location: LCCOMB_X29_Y26_N14
\U1|screen|LessThan14~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan14~12_combout\ = (\U1|screen|y_temp0\(6) & (!\U1|screen|LessThan14~11_cout\ & \U1|P2_forward|player_y\(6))) # (!\U1|screen|y_temp0\(6) & ((\U1|P2_forward|player_y\(6)) # (!\U1|screen|LessThan14~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|screen|y_temp0\(6),
	datad => \U1|P2_forward|player_y\(6),
	cin => \U1|screen|LessThan14~11_cout\,
	combout => \U1|screen|LessThan14~12_combout\);

-- Location: LCCOMB_X28_Y26_N10
\U1|screen|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add3~10_combout\ = \U1|screen|Add3~9\ $ (\U1|P2_forward|player_y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|P2_forward|player_y\(6),
	cin => \U1|screen|Add3~9\,
	combout => \U1|screen|Add3~10_combout\);

-- Location: LCCOMB_X29_Y26_N16
\U1|screen|LessThan15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan15~1_cout\ = CARRY((!\U1|P2_forward|player_y\(0) & \U1|screen|y_temp0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P2_forward|player_y\(0),
	datab => \U1|screen|y_temp0\(0),
	datad => VCC,
	cout => \U1|screen|LessThan15~1_cout\);

-- Location: LCCOMB_X29_Y26_N18
\U1|screen|LessThan15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan15~3_cout\ = CARRY((\U1|screen|Add3~0_combout\ & ((!\U1|screen|LessThan15~1_cout\) # (!\U1|screen|y_temp0\(1)))) # (!\U1|screen|Add3~0_combout\ & (!\U1|screen|y_temp0\(1) & !\U1|screen|LessThan15~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add3~0_combout\,
	datab => \U1|screen|y_temp0\(1),
	datad => VCC,
	cin => \U1|screen|LessThan15~1_cout\,
	cout => \U1|screen|LessThan15~3_cout\);

-- Location: LCCOMB_X29_Y26_N20
\U1|screen|LessThan15~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan15~5_cout\ = CARRY((\U1|screen|Add3~2_combout\ & (\U1|screen|y_temp0\(2) & !\U1|screen|LessThan15~3_cout\)) # (!\U1|screen|Add3~2_combout\ & ((\U1|screen|y_temp0\(2)) # (!\U1|screen|LessThan15~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add3~2_combout\,
	datab => \U1|screen|y_temp0\(2),
	datad => VCC,
	cin => \U1|screen|LessThan15~3_cout\,
	cout => \U1|screen|LessThan15~5_cout\);

-- Location: LCCOMB_X29_Y26_N22
\U1|screen|LessThan15~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan15~7_cout\ = CARRY((\U1|screen|y_temp0\(3) & (\U1|screen|Add3~4_combout\ & !\U1|screen|LessThan15~5_cout\)) # (!\U1|screen|y_temp0\(3) & ((\U1|screen|Add3~4_combout\) # (!\U1|screen|LessThan15~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(3),
	datab => \U1|screen|Add3~4_combout\,
	datad => VCC,
	cin => \U1|screen|LessThan15~5_cout\,
	cout => \U1|screen|LessThan15~7_cout\);

-- Location: LCCOMB_X29_Y26_N24
\U1|screen|LessThan15~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan15~9_cout\ = CARRY((\U1|screen|y_temp0\(4) & ((!\U1|screen|LessThan15~7_cout\) # (!\U1|screen|Add3~6_combout\))) # (!\U1|screen|y_temp0\(4) & (!\U1|screen|Add3~6_combout\ & !\U1|screen|LessThan15~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(4),
	datab => \U1|screen|Add3~6_combout\,
	datad => VCC,
	cin => \U1|screen|LessThan15~7_cout\,
	cout => \U1|screen|LessThan15~9_cout\);

-- Location: LCCOMB_X29_Y26_N26
\U1|screen|LessThan15~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan15~11_cout\ = CARRY((\U1|screen|Add3~8_combout\ & ((!\U1|screen|LessThan15~9_cout\) # (!\U1|screen|y_temp0\(5)))) # (!\U1|screen|Add3~8_combout\ & (!\U1|screen|y_temp0\(5) & !\U1|screen|LessThan15~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add3~8_combout\,
	datab => \U1|screen|y_temp0\(5),
	datad => VCC,
	cin => \U1|screen|LessThan15~9_cout\,
	cout => \U1|screen|LessThan15~11_cout\);

-- Location: LCCOMB_X29_Y26_N28
\U1|screen|LessThan15~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan15~12_combout\ = (\U1|screen|y_temp0\(6) & ((!\U1|screen|Add3~10_combout\) # (!\U1|screen|LessThan15~11_cout\))) # (!\U1|screen|y_temp0\(6) & (!\U1|screen|LessThan15~11_cout\ & !\U1|screen|Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|screen|y_temp0\(6),
	datad => \U1|screen|Add3~10_combout\,
	cin => \U1|screen|LessThan15~11_cout\,
	combout => \U1|screen|LessThan15~12_combout\);

-- Location: LCCOMB_X30_Y24_N14
\U1|screen|colour~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour~24_combout\ = (\U1|screen|Equal3~1_combout\ & (\U1|screen|Equal3~0_combout\ & ((\U1|screen|LessThan14~12_combout\) # (\U1|screen|LessThan15~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Equal3~1_combout\,
	datab => \U1|screen|LessThan14~12_combout\,
	datac => \U1|screen|LessThan15~12_combout\,
	datad => \U1|screen|Equal3~0_combout\,
	combout => \U1|screen|colour~24_combout\);

-- Location: LCCOMB_X30_Y26_N2
\U1|screen|process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|process_0~6_combout\ = (\U1|Puck_Movement|puck_y_coord_temp\(3) & (!\U1|screen|y_temp0\(3) & (\U1|screen|y_temp0\(2) $ (\U1|Puck_Movement|puck_y_coord_temp\(2))))) # (!\U1|Puck_Movement|puck_y_coord_temp\(3) & (\U1|screen|y_temp0\(3) & 
-- (\U1|screen|y_temp0\(2) $ (\U1|Puck_Movement|puck_y_coord_temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord_temp\(3),
	datab => \U1|screen|y_temp0\(3),
	datac => \U1|screen|y_temp0\(2),
	datad => \U1|Puck_Movement|puck_y_coord_temp\(2),
	combout => \U1|screen|process_0~6_combout\);

-- Location: LCCOMB_X30_Y26_N28
\U1|screen|process_0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|process_0~7_combout\ = (\U1|Puck_Movement|puck_y_coord_temp\(5) & (!\U1|screen|y_temp0\(5) & (\U1|Puck_Movement|puck_y_coord_temp\(4) $ (\U1|screen|y_temp0\(4))))) # (!\U1|Puck_Movement|puck_y_coord_temp\(5) & (\U1|screen|y_temp0\(5) & 
-- (\U1|Puck_Movement|puck_y_coord_temp\(4) $ (\U1|screen|y_temp0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord_temp\(5),
	datab => \U1|screen|y_temp0\(5),
	datac => \U1|Puck_Movement|puck_y_coord_temp\(4),
	datad => \U1|screen|y_temp0\(4),
	combout => \U1|screen|process_0~7_combout\);

-- Location: LCCOMB_X30_Y26_N30
\U1|screen|process_0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|process_0~8_combout\ = (\U1|screen|process_0~7_combout\ & (\U1|Puck_Movement|puck_y_coord\(6) $ (!\U1|screen|y_temp0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Puck_Movement|puck_y_coord\(6),
	datab => \U1|screen|process_0~7_combout\,
	datac => \U1|screen|y_temp0\(6),
	combout => \U1|screen|process_0~8_combout\);

-- Location: LCCOMB_X30_Y26_N0
\U1|screen|process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|process_0~5_combout\ = (\U1|screen|y_temp0\(1) & (\U1|Puck_Movement|puck_y_coord\(1) & (\U1|Puck_Movement|puck_x_coord\(0) $ (!\U1|screen|y_temp0\(0))))) # (!\U1|screen|y_temp0\(1) & (!\U1|Puck_Movement|puck_y_coord\(1) & 
-- (\U1|Puck_Movement|puck_x_coord\(0) $ (!\U1|screen|y_temp0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(1),
	datab => \U1|Puck_Movement|puck_y_coord\(1),
	datac => \U1|Puck_Movement|puck_x_coord\(0),
	datad => \U1|screen|y_temp0\(0),
	combout => \U1|screen|process_0~5_combout\);

-- Location: LCCOMB_X30_Y26_N8
\U1|screen|process_0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|process_0~9_combout\ = (\U1|screen|process_0~4_combout\ & (\U1|screen|process_0~6_combout\ & (\U1|screen|process_0~8_combout\ & \U1|screen|process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|process_0~4_combout\,
	datab => \U1|screen|process_0~6_combout\,
	datac => \U1|screen|process_0~8_combout\,
	datad => \U1|screen|process_0~5_combout\,
	combout => \U1|screen|process_0~9_combout\);

-- Location: LCCOMB_X30_Y24_N16
\U1|screen|colour~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour~3_combout\ = (\U1|screen|process_0~9_combout\) # ((!\U1|screen|colour~2_combout\ & !\U1|screen|colour~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|screen|colour~2_combout\,
	datac => \U1|screen|colour~24_combout\,
	datad => \U1|screen|process_0~9_combout\,
	combout => \U1|screen|colour~3_combout\);

-- Location: LCFF_X30_Y24_N17
\U1|screen|colour[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|colour~3_combout\,
	ena => \U1|screen|ALT_INV_plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|colour\(2));

-- Location: LCCOMB_X27_Y24_N24
\U1|screen|x[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|x[0]~feeder_combout\ = \U1|screen|x_temp0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|screen|x_temp0\(0),
	combout => \U1|screen|x[0]~feeder_combout\);

-- Location: LCFF_X27_Y24_N25
\U1|screen|x[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|x[0]~feeder_combout\,
	ena => \U1|screen|ALT_INV_plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|x\(0));

-- Location: LCCOMB_X27_Y24_N2
\U1|screen|x[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|x[1]~feeder_combout\ = \U1|screen|x_temp0\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|screen|x_temp0\(1),
	combout => \U1|screen|x[1]~feeder_combout\);

-- Location: LCFF_X27_Y24_N3
\U1|screen|x[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|x[1]~feeder_combout\,
	ena => \U1|screen|ALT_INV_plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|x\(1));

-- Location: LCFF_X27_Y24_N13
\U1|screen|x_temp0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|x_temp0[2]~12_combout\,
	sclr => \U1|screen|plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|x_temp0\(2));

-- Location: LCCOMB_X27_Y24_N28
\U1|screen|x[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|x[2]~feeder_combout\ = \U1|screen|x_temp0\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|screen|x_temp0\(2),
	combout => \U1|screen|x[2]~feeder_combout\);

-- Location: LCFF_X27_Y24_N29
\U1|screen|x[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|x[2]~feeder_combout\,
	ena => \U1|screen|ALT_INV_plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|x\(2));

-- Location: LCCOMB_X27_Y24_N6
\U1|screen|x[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|x[3]~feeder_combout\ = \U1|screen|x_temp0\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|screen|x_temp0\(3),
	combout => \U1|screen|x[3]~feeder_combout\);

-- Location: LCFF_X27_Y24_N7
\U1|screen|x[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|x[3]~feeder_combout\,
	ena => \U1|screen|ALT_INV_plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|x\(3));

-- Location: LCFF_X27_Y24_N17
\U1|screen|x_temp0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|x_temp0[4]~16_combout\,
	sclr => \U1|screen|plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|x_temp0\(4));

-- Location: LCCOMB_X27_Y24_N0
\U1|screen|x[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|x[4]~feeder_combout\ = \U1|screen|x_temp0\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|screen|x_temp0\(4),
	combout => \U1|screen|x[4]~feeder_combout\);

-- Location: LCFF_X27_Y24_N1
\U1|screen|x[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|x[4]~feeder_combout\,
	ena => \U1|screen|ALT_INV_plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|x\(4));

-- Location: M4K_X13_Y27
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTADATAOUT_bus\);

-- Location: LCFF_X17_Y26_N29
\vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|controller_translator|mem_address[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a\(1));

-- Location: LCFF_X18_Y26_N25
\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1));

-- Location: LCFF_X17_Y26_N27
\vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|controller_translator|mem_address[12]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a\(0));

-- Location: LCFF_X18_Y26_N19
\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0));

-- Location: LCCOMB_X24_Y24_N26
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w\(3) = (\vga_u0|writeEn~1_combout\ & (!\vga_u0|user_input_translator|mem_address[14]~18_combout\ & (\vga_u0|user_input_translator|mem_address[12]~14_combout\ & 
-- !\vga_u0|user_input_translator|mem_address[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|writeEn~1_combout\,
	datab => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w\(3));

-- Location: LCCOMB_X17_Y26_N4
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w\(3) = (!\vga_u0|controller|controller_translator|mem_address[14]~18_combout\ & (\vga_u0|controller|controller_translator|mem_address[12]~14_combout\ & 
-- !\vga_u0|controller|controller_translator|mem_address[13]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|controller|controller_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|controller|controller_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w\(3));

-- Location: LCCOMB_X24_Y24_N28
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0_combout\ = (!\vga_u0|user_input_translator|mem_address[14]~18_combout\ & (\vga_u0|user_input_translator|mem_address[12]~14_combout\ & 
-- !\vga_u0|user_input_translator|mem_address[13]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0_combout\);

-- Location: M4K_X26_Y24
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y26_N20
\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\ = (\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0) & (((\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1)) # 
-- (\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5~portadataout\)))) # (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0) & (\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\ & 
-- (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\,
	datab => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1),
	datad => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a5~portadataout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\);

-- Location: LCCOMB_X18_Y26_N6
\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~1_combout\ = (\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\ & 
-- ((\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11~portadataout\))) # (!\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\ & (\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8~portadataout\)))) # 
-- (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a8~portadataout\,
	datab => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a11~portadataout\,
	datac => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1),
	datad => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~1_combout\);

-- Location: LCCOMB_X12_Y26_N0
\vga_u0|controller|on_screen~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|on_screen~0_combout\ = (!\vga_u0|controller|xCounter\(6) & (!\vga_u0|controller|xCounter\(2) & (!\vga_u0|controller|xCounter\(5) & !\vga_u0|controller|xCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(6),
	datab => \vga_u0|controller|xCounter\(2),
	datac => \vga_u0|controller|xCounter\(5),
	datad => \vga_u0|controller|xCounter\(3),
	combout => \vga_u0|controller|on_screen~0_combout\);

-- Location: LCCOMB_X12_Y26_N18
\vga_u0|controller|on_screen~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|on_screen~1_combout\ = ((!\vga_u0|controller|xCounter\(1) & (\vga_u0|controller|on_screen~0_combout\ & !\vga_u0|controller|xCounter\(4)))) # (!\vga_u0|controller|xCounter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(1),
	datab => \vga_u0|controller|xCounter\(7),
	datac => \vga_u0|controller|on_screen~0_combout\,
	datad => \vga_u0|controller|xCounter\(4),
	combout => \vga_u0|controller|on_screen~1_combout\);

-- Location: LCCOMB_X15_Y26_N28
\vga_u0|controller|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|Add1~18_combout\ = \vga_u0|controller|Add1~17\ $ (\vga_u0|controller|yCounter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_u0|controller|yCounter\(9),
	cin => \vga_u0|controller|Add1~17\,
	combout => \vga_u0|controller|Add1~18_combout\);

-- Location: LCCOMB_X15_Y26_N0
\vga_u0|controller|yCounter[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|yCounter[9]~0_combout\ = (\vga_u0|controller|Equal0~2_combout\ & (\vga_u0|controller|Add1~18_combout\ & ((!\vga_u0|controller|always1~2_combout\)))) # (!\vga_u0|controller|Equal0~2_combout\ & (((\vga_u0|controller|yCounter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|Equal0~2_combout\,
	datab => \vga_u0|controller|Add1~18_combout\,
	datac => \vga_u0|controller|yCounter\(9),
	datad => \vga_u0|controller|always1~2_combout\,
	combout => \vga_u0|controller|yCounter[9]~0_combout\);

-- Location: LCFF_X15_Y26_N1
\vga_u0|controller|yCounter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|yCounter[9]~0_combout\,
	aclr => \ALT_INV_KEY[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|yCounter\(9));

-- Location: LCCOMB_X16_Y26_N26
\vga_u0|controller|VGA_VS1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_VS1~0_combout\ = (\vga_u0|controller|yCounter\(7) & (\vga_u0|controller|yCounter\(8) & (\vga_u0|controller|yCounter\(5) & \vga_u0|controller|yCounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(7),
	datab => \vga_u0|controller|yCounter\(8),
	datac => \vga_u0|controller|yCounter\(5),
	datad => \vga_u0|controller|yCounter\(6),
	combout => \vga_u0|controller|VGA_VS1~0_combout\);

-- Location: LCCOMB_X16_Y26_N20
\vga_u0|controller|LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|LessThan7~0_combout\ = (!\vga_u0|controller|yCounter\(9) & !\vga_u0|controller|VGA_VS1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_u0|controller|yCounter\(9),
	datad => \vga_u0|controller|VGA_VS1~0_combout\,
	combout => \vga_u0|controller|LessThan7~0_combout\);

-- Location: LCCOMB_X12_Y26_N28
\vga_u0|controller|on_screen~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|on_screen~2_combout\ = (\vga_u0|controller|LessThan7~0_combout\ & (((\vga_u0|controller|on_screen~1_combout\ & !\vga_u0|controller|xCounter\(8))) # (!\vga_u0|controller|xCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(9),
	datab => \vga_u0|controller|on_screen~1_combout\,
	datac => \vga_u0|controller|xCounter\(8),
	datad => \vga_u0|controller|LessThan7~0_combout\,
	combout => \vga_u0|controller|on_screen~2_combout\);

-- Location: LCFF_X17_Y26_N31
\vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|controller_translator|mem_address[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a\(2));

-- Location: LCFF_X18_Y26_N9
\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga_u0|VideoMemory|auto_generated|altsyncram1|address_reg_a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2));

-- Location: LCCOMB_X24_Y24_N10
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w\(3) = (\vga_u0|writeEn~1_combout\ & (\vga_u0|user_input_translator|mem_address[14]~18_combout\ & (!\vga_u0|user_input_translator|mem_address[12]~14_combout\ & 
-- !\vga_u0|user_input_translator|mem_address[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|writeEn~1_combout\,
	datab => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w\(3));

-- Location: LCCOMB_X17_Y26_N0
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0_combout\ = (\vga_u0|controller|controller_translator|mem_address[14]~18_combout\ & (!\vga_u0|controller|controller_translator|mem_address[12]~14_combout\ & 
-- !\vga_u0|controller|controller_translator|mem_address[13]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|controller|controller_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|controller|controller_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0_combout\);

-- Location: LCCOMB_X24_Y24_N20
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0_combout\ = (\vga_u0|user_input_translator|mem_address[14]~18_combout\ & (!\vga_u0|user_input_translator|mem_address[12]~14_combout\ & 
-- !\vga_u0|user_input_translator|mem_address[13]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0_combout\);

-- Location: M4K_X26_Y27
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0_combout\,
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y26_N8
\vga_u0|controller|VGA_R[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_R[0]~0_combout\ = (\vga_u0|controller|on_screen~2_combout\ & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2) & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14~portadataout\))) # 
-- (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2) & (\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~1_combout\,
	datab => \vga_u0|controller|on_screen~2_combout\,
	datac => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2),
	datad => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a14~portadataout\,
	combout => \vga_u0|controller|VGA_R[0]~0_combout\);

-- Location: LCCOMB_X30_Y26_N10
\U1|screen|colour[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour[1]~16_combout\ = (\U1|screen|y_temp0\(5) & (\U1|screen|y_temp0\(2) & \U1|screen|y_temp0\(1))) # (!\U1|screen|y_temp0\(5) & ((\U1|screen|y_temp0\(2)) # (\U1|screen|y_temp0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|screen|y_temp0\(5),
	datac => \U1|screen|y_temp0\(2),
	datad => \U1|screen|y_temp0\(1),
	combout => \U1|screen|colour[1]~16_combout\);

-- Location: LCCOMB_X30_Y26_N26
\U1|screen|colour[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour[1]~17_combout\ = (\U1|screen|y_temp0\(3) & ((\U1|screen|y_temp0\(4) & (!\U1|screen|y_temp0\(5))) # (!\U1|screen|y_temp0\(4) & ((\U1|screen|colour[1]~16_combout\))))) # (!\U1|screen|y_temp0\(3) & (((\U1|screen|y_temp0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(5),
	datab => \U1|screen|y_temp0\(3),
	datac => \U1|screen|y_temp0\(4),
	datad => \U1|screen|colour[1]~16_combout\,
	combout => \U1|screen|colour[1]~17_combout\);

-- Location: LCCOMB_X30_Y24_N8
\U1|screen|colour[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour[1]~11_combout\ = (\U1|screen|Equal2~2_combout\ & (!\U1|screen|Equal3~2_combout\ & ((\U1|screen|LessThan13~12_combout\) # (\U1|screen|LessThan12~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Equal2~2_combout\,
	datab => \U1|screen|LessThan13~12_combout\,
	datac => \U1|screen|LessThan12~12_combout\,
	datad => \U1|screen|Equal3~2_combout\,
	combout => \U1|screen|colour[1]~11_combout\);

-- Location: LCCOMB_X30_Y24_N28
\U1|screen|colour[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour[1]~15_combout\ = (!\U1|screen|process_0~9_combout\ & ((\U1|screen|colour[1]~10_combout\) # ((\U1|screen|colour[1]~11_combout\) # (\U1|screen|colour~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|colour[1]~10_combout\,
	datab => \U1|screen|colour[1]~11_combout\,
	datac => \U1|screen|colour~24_combout\,
	datad => \U1|screen|process_0~9_combout\,
	combout => \U1|screen|colour[1]~15_combout\);

-- Location: LCCOMB_X30_Y24_N30
\U1|screen|colour[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour[1]~18_combout\ = (\U1|screen|colour[1]~15_combout\ & ((\U1|screen|y_temp0\(6) & ((!\U1|screen|colour[1]~17_combout\) # (!\U1|screen|y_temp0\(5)))) # (!\U1|screen|y_temp0\(6) & ((\U1|screen|y_temp0\(5)) # 
-- (\U1|screen|colour[1]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(6),
	datab => \U1|screen|y_temp0\(5),
	datac => \U1|screen|colour[1]~17_combout\,
	datad => \U1|screen|colour[1]~15_combout\,
	combout => \U1|screen|colour[1]~18_combout\);

-- Location: LCCOMB_X30_Y24_N26
\U1|screen|colour~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour~12_combout\ = (\U1|screen|colour[1]~10_combout\) # ((\U1|screen|colour[1]~11_combout\) # ((\U1|screen|colour~24_combout\) # (\U1|screen|process_0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|colour[1]~10_combout\,
	datab => \U1|screen|colour[1]~11_combout\,
	datac => \U1|screen|colour~24_combout\,
	datad => \U1|screen|process_0~9_combout\,
	combout => \U1|screen|colour~12_combout\);

-- Location: LCCOMB_X30_Y24_N2
\U1|screen|colour~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour~19_combout\ = (\U1|screen|colour~12_combout\ & ((\U1|screen|colour~14_combout\) # (!\U1|screen|colour[1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|colour~14_combout\,
	datab => \U1|screen|colour[1]~18_combout\,
	datad => \U1|screen|colour~12_combout\,
	combout => \U1|screen|colour~19_combout\);

-- Location: LCFF_X30_Y24_N3
\U1|screen|colour[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|colour~19_combout\,
	ena => \U1|screen|ALT_INV_plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|colour\(1));

-- Location: M4K_X26_Y26
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0_combout\,
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y29
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y23
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y26_N26
\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~1_combout\ = (\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0_combout\ & (((\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10~portadataout\)) # 
-- (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0)))) # (!\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0_combout\ & (\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0) & 
-- ((\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0_combout\,
	datab => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a10~portadataout\,
	datad => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a4~portadataout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~1_combout\);

-- Location: LCCOMB_X18_Y26_N28
\vga_u0|controller|VGA_G[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_G[0]~0_combout\ = (\vga_u0|controller|on_screen~2_combout\ & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2) & (\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13~portadataout\)) # 
-- (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2) & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a13~portadataout\,
	datab => \vga_u0|controller|on_screen~2_combout\,
	datac => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2),
	datad => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~1_combout\,
	combout => \vga_u0|controller|VGA_G[0]~0_combout\);

-- Location: LCCOMB_X29_Y25_N14
\U1|Pl_goalie|player_y[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Pl_goalie|player_y[6]~8_combout\ = \U1|Pl_goalie|player_y[3]~3_combout\ $ (\U1|Pl_goalie|y_coord[5]~11\ $ (\U1|Pl_goalie|player_y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Pl_goalie|player_y[3]~3_combout\,
	datad => \U1|Pl_goalie|player_y\(6),
	cin => \U1|Pl_goalie|y_coord[5]~11\,
	combout => \U1|Pl_goalie|player_y[6]~8_combout\);

-- Location: LCFF_X29_Y25_N15
\U1|Pl_goalie|player_y[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|Pl_goalie|player_y[6]~8_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|Pl_goalie|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Pl_goalie|player_y\(6));

-- Location: LCCOMB_X30_Y25_N10
\U1|screen|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add0~10_combout\ = \U1|screen|Add0~9\ $ (\U1|Pl_goalie|player_y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|Pl_goalie|player_y\(6),
	cin => \U1|screen|Add0~9\,
	combout => \U1|screen|Add0~10_combout\);

-- Location: LCCOMB_X30_Y25_N14
\U1|screen|LessThan9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan9~1_cout\ = CARRY((\U1|screen|y_temp0\(0) & !\U1|Pl_goalie|player_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(0),
	datab => \U1|Pl_goalie|player_y\(0),
	datad => VCC,
	cout => \U1|screen|LessThan9~1_cout\);

-- Location: LCCOMB_X30_Y25_N16
\U1|screen|LessThan9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan9~3_cout\ = CARRY((\U1|screen|y_temp0\(1) & (\U1|screen|Add0~0_combout\ & !\U1|screen|LessThan9~1_cout\)) # (!\U1|screen|y_temp0\(1) & ((\U1|screen|Add0~0_combout\) # (!\U1|screen|LessThan9~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(1),
	datab => \U1|screen|Add0~0_combout\,
	datad => VCC,
	cin => \U1|screen|LessThan9~1_cout\,
	cout => \U1|screen|LessThan9~3_cout\);

-- Location: LCCOMB_X30_Y25_N18
\U1|screen|LessThan9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan9~5_cout\ = CARRY((\U1|screen|y_temp0\(2) & ((!\U1|screen|LessThan9~3_cout\) # (!\U1|screen|Add0~2_combout\))) # (!\U1|screen|y_temp0\(2) & (!\U1|screen|Add0~2_combout\ & !\U1|screen|LessThan9~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(2),
	datab => \U1|screen|Add0~2_combout\,
	datad => VCC,
	cin => \U1|screen|LessThan9~3_cout\,
	cout => \U1|screen|LessThan9~5_cout\);

-- Location: LCCOMB_X30_Y25_N20
\U1|screen|LessThan9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan9~7_cout\ = CARRY((\U1|screen|y_temp0\(3) & (\U1|screen|Add0~4_combout\ & !\U1|screen|LessThan9~5_cout\)) # (!\U1|screen|y_temp0\(3) & ((\U1|screen|Add0~4_combout\) # (!\U1|screen|LessThan9~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(3),
	datab => \U1|screen|Add0~4_combout\,
	datad => VCC,
	cin => \U1|screen|LessThan9~5_cout\,
	cout => \U1|screen|LessThan9~7_cout\);

-- Location: LCCOMB_X30_Y25_N22
\U1|screen|LessThan9~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan9~9_cout\ = CARRY((\U1|screen|Add0~6_combout\ & (\U1|screen|y_temp0\(4) & !\U1|screen|LessThan9~7_cout\)) # (!\U1|screen|Add0~6_combout\ & ((\U1|screen|y_temp0\(4)) # (!\U1|screen|LessThan9~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add0~6_combout\,
	datab => \U1|screen|y_temp0\(4),
	datad => VCC,
	cin => \U1|screen|LessThan9~7_cout\,
	cout => \U1|screen|LessThan9~9_cout\);

-- Location: LCCOMB_X30_Y25_N24
\U1|screen|LessThan9~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan9~11_cout\ = CARRY((\U1|screen|y_temp0\(5) & (\U1|screen|Add0~8_combout\ & !\U1|screen|LessThan9~9_cout\)) # (!\U1|screen|y_temp0\(5) & ((\U1|screen|Add0~8_combout\) # (!\U1|screen|LessThan9~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(5),
	datab => \U1|screen|Add0~8_combout\,
	datad => VCC,
	cin => \U1|screen|LessThan9~9_cout\,
	cout => \U1|screen|LessThan9~11_cout\);

-- Location: LCCOMB_X30_Y25_N26
\U1|screen|LessThan9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan9~12_combout\ = (\U1|screen|y_temp0\(6) & ((!\U1|screen|Add0~10_combout\) # (!\U1|screen|LessThan9~11_cout\))) # (!\U1|screen|y_temp0\(6) & (!\U1|screen|LessThan9~11_cout\ & !\U1|screen|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|screen|y_temp0\(6),
	datad => \U1|screen|Add0~10_combout\,
	cin => \U1|screen|LessThan9~11_cout\,
	combout => \U1|screen|LessThan9~12_combout\);

-- Location: LCCOMB_X29_Y25_N16
\U1|screen|LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan8~1_cout\ = CARRY((!\U1|screen|y_temp0\(0) & !\U1|Pl_goalie|player_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(0),
	datab => \U1|Pl_goalie|player_y\(0),
	datad => VCC,
	cout => \U1|screen|LessThan8~1_cout\);

-- Location: LCCOMB_X29_Y25_N18
\U1|screen|LessThan8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan8~3_cout\ = CARRY((\U1|screen|y_temp0\(1) & ((\U1|Pl_goalie|y_coord\(1)) # (!\U1|screen|LessThan8~1_cout\))) # (!\U1|screen|y_temp0\(1) & (\U1|Pl_goalie|y_coord\(1) & !\U1|screen|LessThan8~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(1),
	datab => \U1|Pl_goalie|y_coord\(1),
	datad => VCC,
	cin => \U1|screen|LessThan8~1_cout\,
	cout => \U1|screen|LessThan8~3_cout\);

-- Location: LCCOMB_X29_Y25_N20
\U1|screen|LessThan8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan8~5_cout\ = CARRY((\U1|Pl_goalie|y_coord\(2) & (!\U1|screen|y_temp0\(2) & !\U1|screen|LessThan8~3_cout\)) # (!\U1|Pl_goalie|y_coord\(2) & ((!\U1|screen|LessThan8~3_cout\) # (!\U1|screen|y_temp0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Pl_goalie|y_coord\(2),
	datab => \U1|screen|y_temp0\(2),
	datad => VCC,
	cin => \U1|screen|LessThan8~3_cout\,
	cout => \U1|screen|LessThan8~5_cout\);

-- Location: LCCOMB_X29_Y25_N22
\U1|screen|LessThan8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan8~7_cout\ = CARRY((\U1|screen|y_temp0\(3) & ((!\U1|screen|LessThan8~5_cout\) # (!\U1|Pl_goalie|player_y\(3)))) # (!\U1|screen|y_temp0\(3) & (!\U1|Pl_goalie|player_y\(3) & !\U1|screen|LessThan8~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(3),
	datab => \U1|Pl_goalie|player_y\(3),
	datad => VCC,
	cin => \U1|screen|LessThan8~5_cout\,
	cout => \U1|screen|LessThan8~7_cout\);

-- Location: LCCOMB_X29_Y25_N24
\U1|screen|LessThan8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan8~9_cout\ = CARRY((\U1|Pl_goalie|y_coord\(4) & (!\U1|screen|y_temp0\(4) & !\U1|screen|LessThan8~7_cout\)) # (!\U1|Pl_goalie|y_coord\(4) & ((!\U1|screen|LessThan8~7_cout\) # (!\U1|screen|y_temp0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Pl_goalie|y_coord\(4),
	datab => \U1|screen|y_temp0\(4),
	datad => VCC,
	cin => \U1|screen|LessThan8~7_cout\,
	cout => \U1|screen|LessThan8~9_cout\);

-- Location: LCCOMB_X29_Y25_N26
\U1|screen|LessThan8~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan8~11_cout\ = CARRY((\U1|Pl_goalie|y_coord\(5) & ((\U1|screen|y_temp0\(5)) # (!\U1|screen|LessThan8~9_cout\))) # (!\U1|Pl_goalie|y_coord\(5) & (\U1|screen|y_temp0\(5) & !\U1|screen|LessThan8~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Pl_goalie|y_coord\(5),
	datab => \U1|screen|y_temp0\(5),
	datad => VCC,
	cin => \U1|screen|LessThan8~9_cout\,
	cout => \U1|screen|LessThan8~11_cout\);

-- Location: LCCOMB_X29_Y25_N28
\U1|screen|LessThan8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan8~12_combout\ = (\U1|screen|y_temp0\(6) & (!\U1|screen|LessThan8~11_cout\ & \U1|Pl_goalie|player_y\(6))) # (!\U1|screen|y_temp0\(6) & ((\U1|Pl_goalie|player_y\(6)) # (!\U1|screen|LessThan8~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|screen|y_temp0\(6),
	datad => \U1|Pl_goalie|player_y\(6),
	cin => \U1|screen|LessThan8~11_cout\,
	combout => \U1|screen|LessThan8~12_combout\);

-- Location: LCCOMB_X30_Y24_N24
\U1|screen|colour[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour[1]~20_combout\ = (\U1|screen|LessThan8~12_combout\) # (!\U1|screen|x_temp0\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x_temp0\(3),
	datac => \U1|screen|LessThan8~12_combout\,
	combout => \U1|screen|colour[1]~20_combout\);

-- Location: LCCOMB_X30_Y24_N18
\U1|screen|colour[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour[1]~21_combout\ = (\U1|screen|colour[1]~6_combout\) # ((!\U1|screen|x_temp0\(5) & ((\U1|screen|LessThan9~12_combout\) # (\U1|screen|colour[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|colour[1]~6_combout\,
	datab => \U1|screen|LessThan9~12_combout\,
	datac => \U1|screen|colour[1]~20_combout\,
	datad => \U1|screen|x_temp0\(5),
	combout => \U1|screen|colour[1]~21_combout\);

-- Location: LCCOMB_X31_Y24_N0
\U1|screen|colour[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour[1]~8_combout\ = (\U1|screen|x_temp0\(1) & \U1|screen|x_temp0\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|screen|x_temp0\(1),
	datac => \U1|screen|x_temp0\(3),
	combout => \U1|screen|colour[1]~8_combout\);

-- Location: LCFF_X31_Y27_N25
\U1|P1_forward|y_coord[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|P1_forward|y_coord[5]~10_combout\,
	aclr => \U0|ALT_INV_reset_connect~regout\,
	ena => \U1|P1_forward|player_y[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|P1_forward|y_coord\(5));

-- Location: LCCOMB_X30_Y27_N26
\U1|screen|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|Add1~10_combout\ = \U1|P1_forward|player_y\(6) $ (\U1|screen|Add1~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|P1_forward|player_y\(6),
	cin => \U1|screen|Add1~9\,
	combout => \U1|screen|Add1~10_combout\);

-- Location: LCCOMB_X30_Y27_N2
\U1|screen|LessThan11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan11~1_cout\ = CARRY((\U1|screen|y_temp0\(0) & !\U1|P1_forward|player_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(0),
	datab => \U1|P1_forward|player_y\(0),
	datad => VCC,
	cout => \U1|screen|LessThan11~1_cout\);

-- Location: LCCOMB_X30_Y27_N4
\U1|screen|LessThan11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan11~3_cout\ = CARRY((\U1|screen|Add1~0_combout\ & ((!\U1|screen|LessThan11~1_cout\) # (!\U1|screen|y_temp0\(1)))) # (!\U1|screen|Add1~0_combout\ & (!\U1|screen|y_temp0\(1) & !\U1|screen|LessThan11~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add1~0_combout\,
	datab => \U1|screen|y_temp0\(1),
	datad => VCC,
	cin => \U1|screen|LessThan11~1_cout\,
	cout => \U1|screen|LessThan11~3_cout\);

-- Location: LCCOMB_X30_Y27_N6
\U1|screen|LessThan11~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan11~5_cout\ = CARRY((\U1|screen|y_temp0\(2) & ((!\U1|screen|LessThan11~3_cout\) # (!\U1|screen|Add1~2_combout\))) # (!\U1|screen|y_temp0\(2) & (!\U1|screen|Add1~2_combout\ & !\U1|screen|LessThan11~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(2),
	datab => \U1|screen|Add1~2_combout\,
	datad => VCC,
	cin => \U1|screen|LessThan11~3_cout\,
	cout => \U1|screen|LessThan11~5_cout\);

-- Location: LCCOMB_X30_Y27_N8
\U1|screen|LessThan11~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan11~7_cout\ = CARRY((\U1|screen|Add1~4_combout\ & ((!\U1|screen|LessThan11~5_cout\) # (!\U1|screen|y_temp0\(3)))) # (!\U1|screen|Add1~4_combout\ & (!\U1|screen|y_temp0\(3) & !\U1|screen|LessThan11~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add1~4_combout\,
	datab => \U1|screen|y_temp0\(3),
	datad => VCC,
	cin => \U1|screen|LessThan11~5_cout\,
	cout => \U1|screen|LessThan11~7_cout\);

-- Location: LCCOMB_X30_Y27_N10
\U1|screen|LessThan11~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan11~9_cout\ = CARRY((\U1|screen|y_temp0\(4) & ((!\U1|screen|LessThan11~7_cout\) # (!\U1|screen|Add1~6_combout\))) # (!\U1|screen|y_temp0\(4) & (!\U1|screen|Add1~6_combout\ & !\U1|screen|LessThan11~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(4),
	datab => \U1|screen|Add1~6_combout\,
	datad => VCC,
	cin => \U1|screen|LessThan11~7_cout\,
	cout => \U1|screen|LessThan11~9_cout\);

-- Location: LCCOMB_X30_Y27_N12
\U1|screen|LessThan11~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan11~11_cout\ = CARRY((\U1|screen|Add1~8_combout\ & ((!\U1|screen|LessThan11~9_cout\) # (!\U1|screen|y_temp0\(5)))) # (!\U1|screen|Add1~8_combout\ & (!\U1|screen|y_temp0\(5) & !\U1|screen|LessThan11~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|Add1~8_combout\,
	datab => \U1|screen|y_temp0\(5),
	datad => VCC,
	cin => \U1|screen|LessThan11~9_cout\,
	cout => \U1|screen|LessThan11~11_cout\);

-- Location: LCCOMB_X30_Y27_N14
\U1|screen|LessThan11~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|LessThan11~12_combout\ = (\U1|screen|y_temp0\(6) & ((!\U1|screen|Add1~10_combout\) # (!\U1|screen|LessThan11~11_cout\))) # (!\U1|screen|y_temp0\(6) & (!\U1|screen|LessThan11~11_cout\ & !\U1|screen|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|y_temp0\(6),
	datad => \U1|screen|Add1~10_combout\,
	cin => \U1|screen|LessThan11~11_cout\,
	combout => \U1|screen|LessThan11~12_combout\);

-- Location: LCCOMB_X31_Y24_N30
\U1|screen|colour[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour[1]~7_combout\ = (((\U1|screen|x_temp0\(6)) # (\U1|screen|x_temp0\(7))) # (!\U1|screen|x_temp0\(0))) # (!\U1|screen|x_temp0\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x_temp0\(4),
	datab => \U1|screen|x_temp0\(0),
	datac => \U1|screen|x_temp0\(6),
	datad => \U1|screen|x_temp0\(7),
	combout => \U1|screen|colour[1]~7_combout\);

-- Location: LCCOMB_X30_Y27_N0
\U1|screen|colour[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour[1]~9_combout\ = (\U1|screen|colour[1]~8_combout\) # ((\U1|screen|colour[1]~7_combout\) # ((\U1|screen|x_temp0\(5) & \U1|screen|LessThan11~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|x_temp0\(5),
	datab => \U1|screen|colour[1]~8_combout\,
	datac => \U1|screen|LessThan11~12_combout\,
	datad => \U1|screen|colour[1]~7_combout\,
	combout => \U1|screen|colour[1]~9_combout\);

-- Location: LCCOMB_X30_Y24_N4
\U1|screen|colour~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour~22_combout\ = (!\U1|screen|colour[1]~21_combout\ & (!\U1|screen|colour[1]~9_combout\ & ((\U1|screen|colour~24_combout\) # (\U1|screen|colour~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|colour~24_combout\,
	datab => \U1|screen|colour[1]~21_combout\,
	datac => \U1|screen|colour[1]~9_combout\,
	datad => \U1|screen|colour~2_combout\,
	combout => \U1|screen|colour~22_combout\);

-- Location: LCCOMB_X30_Y24_N12
\U1|screen|colour~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|screen|colour~23_combout\ = (\U1|screen|colour[1]~18_combout\ & (\U1|screen|colour~14_combout\)) # (!\U1|screen|colour[1]~18_combout\ & (((\U1|screen|colour~22_combout\) # (\U1|screen|process_0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|screen|colour~14_combout\,
	datab => \U1|screen|colour[1]~18_combout\,
	datac => \U1|screen|colour~22_combout\,
	datad => \U1|screen|process_0~9_combout\,
	combout => \U1|screen|colour~23_combout\);

-- Location: LCFF_X30_Y24_N13
\U1|screen|colour[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \U1|screen|colour~23_combout\,
	ena => \U1|screen|ALT_INV_plot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|screen|colour\(0));

-- Location: M4K_X26_Y28
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0_combout\,
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y28
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y22
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y26_N24
\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\ = (\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0) & (((\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1)) # 
-- (\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3~portadataout\)))) # (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0) & (\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\ & 
-- (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\,
	datab => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1),
	datad => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a3~portadataout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\);

-- Location: LCCOMB_X24_Y24_N6
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w\(3) = (\vga_u0|writeEn~1_combout\ & (!\vga_u0|user_input_translator|mem_address[14]~18_combout\ & (!\vga_u0|user_input_translator|mem_address[12]~14_combout\ & 
-- \vga_u0|user_input_translator|mem_address[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|writeEn~1_combout\,
	datab => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w\(3));

-- Location: LCCOMB_X17_Y26_N10
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w\(3) = (!\vga_u0|controller|controller_translator|mem_address[14]~18_combout\ & (!\vga_u0|controller|controller_translator|mem_address[12]~14_combout\ & 
-- \vga_u0|controller|controller_translator|mem_address[13]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|controller|controller_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|controller|controller_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|controller|controller_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w\(3));

-- Location: LCCOMB_X24_Y24_N16
\vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0_combout\ = (!\vga_u0|user_input_translator|mem_address[14]~18_combout\ & (!\vga_u0|user_input_translator|mem_address[12]~14_combout\ & 
-- \vga_u0|user_input_translator|mem_address[13]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_u0|user_input_translator|mem_address[14]~18_combout\,
	datac => \vga_u0|user_input_translator|mem_address[12]~14_combout\,
	datad => \vga_u0|user_input_translator|mem_address[13]~16_combout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0_combout\);

-- Location: M4K_X13_Y22
\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_adapter:vga_u0|altsyncram:VideoMemory|altsyncram_ncg1:auto_generated|altsyncram_n6r1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w\(3),
	clk0 => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w\(3),
	ena1 => \vga_u0|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0_combout\,
	portadatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTADATAIN_bus\,
	portbdatain => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTBDATAIN_bus\,
	portaaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTAADDR_bus\,
	portbaddr => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y26_N30
\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~1_combout\ = (\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\ & 
-- (\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9~portadataout\)) # (!\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\ & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6~portadataout\))))) # 
-- (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1),
	datab => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a9~portadataout\,
	datac => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\,
	datad => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a6~portadataout\,
	combout => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~1_combout\);

-- Location: LCCOMB_X18_Y26_N0
\vga_u0|controller|VGA_B[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_B[0]~0_combout\ = (\vga_u0|controller|on_screen~2_combout\ & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2) & (\vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12~portadataout\)) # 
-- (!\vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2) & ((\vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|VideoMemory|auto_generated|altsyncram1|ram_block2a12~portadataout\,
	datab => \vga_u0|controller|on_screen~2_combout\,
	datac => \vga_u0|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2),
	datad => \vga_u0|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~1_combout\,
	combout => \vga_u0|controller|VGA_B[0]~0_combout\);

-- Location: LCCOMB_X12_Y26_N12
\vga_u0|controller|VGA_HS1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_HS1~0_combout\ = (\vga_u0|controller|xCounter\(3)) # ((\vga_u0|controller|xCounter\(2)) # ((\vga_u0|controller|xCounter\(0) & \vga_u0|controller|xCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(3),
	datab => \vga_u0|controller|xCounter\(2),
	datac => \vga_u0|controller|xCounter\(0),
	datad => \vga_u0|controller|xCounter\(1),
	combout => \vga_u0|controller|VGA_HS1~0_combout\);

-- Location: LCCOMB_X12_Y26_N6
\vga_u0|controller|VGA_HS1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_HS1~1_combout\ = (\vga_u0|controller|xCounter\(6) & (\vga_u0|controller|VGA_HS1~0_combout\ & (\vga_u0|controller|xCounter\(5) & \vga_u0|controller|xCounter\(4)))) # (!\vga_u0|controller|xCounter\(6) & 
-- (!\vga_u0|controller|xCounter\(5) & ((!\vga_u0|controller|xCounter\(4)) # (!\vga_u0|controller|VGA_HS1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(6),
	datab => \vga_u0|controller|VGA_HS1~0_combout\,
	datac => \vga_u0|controller|xCounter\(5),
	datad => \vga_u0|controller|xCounter\(4),
	combout => \vga_u0|controller|VGA_HS1~1_combout\);

-- Location: LCCOMB_X12_Y26_N24
\vga_u0|controller|VGA_HS1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_HS1~2_combout\ = (\vga_u0|controller|xCounter\(8)) # (((\vga_u0|controller|VGA_HS1~1_combout\) # (!\vga_u0|controller|xCounter\(9))) # (!\vga_u0|controller|xCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(8),
	datab => \vga_u0|controller|xCounter\(7),
	datac => \vga_u0|controller|xCounter\(9),
	datad => \vga_u0|controller|VGA_HS1~1_combout\,
	combout => \vga_u0|controller|VGA_HS1~2_combout\);

-- Location: LCFF_X12_Y26_N25
\vga_u0|controller|VGA_HS1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|VGA_HS1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|VGA_HS1~regout\);

-- Location: LCFF_X12_Y26_N23
\vga_u0|controller|VGA_HS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga_u0|controller|VGA_HS1~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|VGA_HS~regout\);

-- Location: LCCOMB_X16_Y26_N22
\vga_u0|controller|VGA_VS1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_VS1~1_combout\ = (\vga_u0|controller|yCounter\(9)) # ((\vga_u0|controller|yCounter\(4)) # ((!\vga_u0|controller|yCounter\(3)) # (!\vga_u0|controller|yCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(9),
	datab => \vga_u0|controller|yCounter\(4),
	datac => \vga_u0|controller|yCounter\(2),
	datad => \vga_u0|controller|yCounter\(3),
	combout => \vga_u0|controller|VGA_VS1~1_combout\);

-- Location: LCCOMB_X16_Y26_N28
\vga_u0|controller|VGA_VS1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_VS1~2_combout\ = (\vga_u0|controller|VGA_VS1~1_combout\) # ((\vga_u0|controller|yCounter\(1) $ (!\vga_u0|controller|yCounter\(0))) # (!\vga_u0|controller|VGA_VS1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|yCounter\(1),
	datab => \vga_u0|controller|VGA_VS1~1_combout\,
	datac => \vga_u0|controller|yCounter\(0),
	datad => \vga_u0|controller|VGA_VS1~0_combout\,
	combout => \vga_u0|controller|VGA_VS1~2_combout\);

-- Location: LCFF_X16_Y26_N29
\vga_u0|controller|VGA_VS1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|VGA_VS1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|VGA_VS1~regout\);

-- Location: LCFF_X15_Y29_N9
\vga_u0|controller|VGA_VS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \vga_u0|controller|VGA_VS1~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|VGA_VS~regout\);

-- Location: LCCOMB_X12_Y26_N2
\vga_u0|controller|VGA_BLANK1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_BLANK1~0_combout\ = (\vga_u0|controller|LessThan7~0_combout\ & (((!\vga_u0|controller|xCounter\(7) & !\vga_u0|controller|xCounter\(8))) # (!\vga_u0|controller|xCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_u0|controller|xCounter\(9),
	datab => \vga_u0|controller|xCounter\(7),
	datac => \vga_u0|controller|xCounter\(8),
	datad => \vga_u0|controller|LessThan7~0_combout\,
	combout => \vga_u0|controller|VGA_BLANK1~0_combout\);

-- Location: LCFF_X12_Y26_N3
\vga_u0|controller|VGA_BLANK1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|VGA_BLANK1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|VGA_BLANK1~regout\);

-- Location: LCCOMB_X12_Y26_N8
\vga_u0|controller|VGA_BLANK~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_u0|controller|VGA_BLANK~feeder_combout\ = \vga_u0|controller|VGA_BLANK1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_u0|controller|VGA_BLANK1~regout\,
	combout => \vga_u0|controller|VGA_BLANK~feeder_combout\);

-- Location: LCFF_X12_Y26_N9
\vga_u0|controller|VGA_BLANK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \vga_u0|controller|VGA_BLANK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_u0|controller|VGA_BLANK~regout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(2));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(3));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(4));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(5));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(7));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(9));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(10));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(11));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(12));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(13));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(14));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(15));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|winner2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|winner2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|winner2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|winner2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|winner2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|winner2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|winner2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|winner2\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|winner2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|winner1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|winner1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|winner1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|winner1\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|winner1\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|winner1\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|winner1\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(15));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|winner1\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(16));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|winner1\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(17));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DispP1Score|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DispP1Score|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DispP1Score|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DispP1Score|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DispP1Score|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DispP1Score|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DispP1Score|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DispP2Score|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DispP2Score|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DispP2Score|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DispP2Score|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DispP2Score|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DispP2Score|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DispP2Score|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(0));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(1));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(2));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(3));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(4));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(5));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(6));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(7));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(8));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(9));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(0));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(1));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(2));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(3));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(4));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(5));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(6));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(7));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(8));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_G[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(9));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(0));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(2));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(3));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(4));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(5));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(6));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(7));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(8));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(9));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_HS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_HS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_HS);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_VS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_VS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_VS);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLANK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|controller|VGA_BLANK~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLANK);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_SYNC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_SYNC);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga_u0|mypll|altpll_component|_clk0~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_CLK);
END structure;


