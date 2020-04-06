-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/05/2020 13:04:36"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ArithUnit IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	AddnSub : IN std_logic;
	NotA : IN std_logic;
	ExtWord : IN std_logic;
	Y : BUFFER std_logic_vector(63 DOWNTO 0);
	Cout : BUFFER std_logic;
	Ovfl : BUFFER std_logic;
	Zero : BUFFER std_logic;
	AltB : BUFFER std_logic;
	AltBu : BUFFER std_logic
	);
END ArithUnit;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NotA	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ArithUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_AddnSub : std_logic;
SIGNAL ww_NotA : std_logic;
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Ovfl : std_logic;
SIGNAL ww_Zero : std_logic;
SIGNAL ww_AltB : std_logic;
SIGNAL ww_AltBu : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \Y[8]~output_o\ : std_logic;
SIGNAL \Y[9]~output_o\ : std_logic;
SIGNAL \Y[10]~output_o\ : std_logic;
SIGNAL \Y[11]~output_o\ : std_logic;
SIGNAL \Y[12]~output_o\ : std_logic;
SIGNAL \Y[13]~output_o\ : std_logic;
SIGNAL \Y[14]~output_o\ : std_logic;
SIGNAL \Y[15]~output_o\ : std_logic;
SIGNAL \Y[16]~output_o\ : std_logic;
SIGNAL \Y[17]~output_o\ : std_logic;
SIGNAL \Y[18]~output_o\ : std_logic;
SIGNAL \Y[19]~output_o\ : std_logic;
SIGNAL \Y[20]~output_o\ : std_logic;
SIGNAL \Y[21]~output_o\ : std_logic;
SIGNAL \Y[22]~output_o\ : std_logic;
SIGNAL \Y[23]~output_o\ : std_logic;
SIGNAL \Y[24]~output_o\ : std_logic;
SIGNAL \Y[25]~output_o\ : std_logic;
SIGNAL \Y[26]~output_o\ : std_logic;
SIGNAL \Y[27]~output_o\ : std_logic;
SIGNAL \Y[28]~output_o\ : std_logic;
SIGNAL \Y[29]~output_o\ : std_logic;
SIGNAL \Y[30]~output_o\ : std_logic;
SIGNAL \Y[31]~output_o\ : std_logic;
SIGNAL \Y[32]~output_o\ : std_logic;
SIGNAL \Y[33]~output_o\ : std_logic;
SIGNAL \Y[34]~output_o\ : std_logic;
SIGNAL \Y[35]~output_o\ : std_logic;
SIGNAL \Y[36]~output_o\ : std_logic;
SIGNAL \Y[37]~output_o\ : std_logic;
SIGNAL \Y[38]~output_o\ : std_logic;
SIGNAL \Y[39]~output_o\ : std_logic;
SIGNAL \Y[40]~output_o\ : std_logic;
SIGNAL \Y[41]~output_o\ : std_logic;
SIGNAL \Y[42]~output_o\ : std_logic;
SIGNAL \Y[43]~output_o\ : std_logic;
SIGNAL \Y[44]~output_o\ : std_logic;
SIGNAL \Y[45]~output_o\ : std_logic;
SIGNAL \Y[46]~output_o\ : std_logic;
SIGNAL \Y[47]~output_o\ : std_logic;
SIGNAL \Y[48]~output_o\ : std_logic;
SIGNAL \Y[49]~output_o\ : std_logic;
SIGNAL \Y[50]~output_o\ : std_logic;
SIGNAL \Y[51]~output_o\ : std_logic;
SIGNAL \Y[52]~output_o\ : std_logic;
SIGNAL \Y[53]~output_o\ : std_logic;
SIGNAL \Y[54]~output_o\ : std_logic;
SIGNAL \Y[55]~output_o\ : std_logic;
SIGNAL \Y[56]~output_o\ : std_logic;
SIGNAL \Y[57]~output_o\ : std_logic;
SIGNAL \Y[58]~output_o\ : std_logic;
SIGNAL \Y[59]~output_o\ : std_logic;
SIGNAL \Y[60]~output_o\ : std_logic;
SIGNAL \Y[61]~output_o\ : std_logic;
SIGNAL \Y[62]~output_o\ : std_logic;
SIGNAL \Y[63]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \AltB~output_o\ : std_logic;
SIGNAL \AltBu~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \NotA~input_o\ : std_logic;
SIGNAL \ArithAdder|Y[0]~0_combout\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \ArithAdder|carryIn[1]~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Sig_B[1]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Sig_B[2]~1_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[2]~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Sig_B[3]~2_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[3]~2_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[4]~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Sig_B[4]~3_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Sig_B[5]~4_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[5]~4_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[6]~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Sig_B[6]~5_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \ArithAdder|carryIn[7]~6_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Sig_B[7]~6_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \ArithAdder|carryIn[8]~7_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Sig_B[8]~7_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Sig_B[9]~8_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[9]~8_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Sig_B[10]~9_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[10]~9_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[11]~10_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Sig_B[11]~10_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[12]~11_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \Sig_B[12]~11_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \Sig_B[13]~12_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[13]~12_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Sig_B[14]~13_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[14]~13_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \ArithAdder|carryIn[15]~14_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \Sig_B[15]~14_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \Sig_B[16]~15_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[16]~15_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \Sig_B[17]~16_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[17]~16_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \ArithAdder|carryIn[18]~17_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \Sig_B[18]~17_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \Sig_B[19]~18_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[19]~18_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \Sig_B[20]~19_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[20]~19_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \Sig_B[21]~20_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[21]~20_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \ArithAdder|carryIn[22]~21_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \Sig_B[22]~21_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \Sig_B[23]~22_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[23]~22_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \ArithAdder|carryIn[24]~23_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \Sig_B[24]~23_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \ArithAdder|carryIn[25]~24_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \Sig_B[25]~24_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[26]~25_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \Sig_B[26]~25_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \ArithAdder|carryIn[27]~26_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \Sig_B[27]~26_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[28]~27_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \Sig_B[28]~27_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \ArithAdder|carryIn[29]~28_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \Sig_B[29]~28_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \ArithAdder|carryIn[30]~29_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \Sig_B[30]~29_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[31]~30_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \Sig_B[31]~30_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \ArithAdder|carryIn[32]~31_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \Sig_B[32]~31_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Y[32]~0_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[33]~32_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \Sig_B[33]~32_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \Y[33]~1_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \Sig_B[34]~33_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[34]~33_combout\ : std_logic;
SIGNAL \Y[34]~2_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \Sig_B[35]~34_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \ArithAdder|carryIn[35]~34_combout\ : std_logic;
SIGNAL \Y[35]~3_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[36]~35_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \Sig_B[36]~35_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \Y[36]~4_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[37]~36_combout\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \Sig_B[37]~36_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \Y[37]~5_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[38]~37_combout\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \Sig_B[38]~37_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \Y[38]~6_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[39]~38_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \Sig_B[39]~38_combout\ : std_logic;
SIGNAL \Y[39]~7_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \Sig_B[40]~39_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[40]~39_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \Y[40]~8_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \ArithAdder|carryIn[41]~40_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \Sig_B[41]~40_combout\ : std_logic;
SIGNAL \Y[41]~9_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \ArithAdder|carryIn[42]~41_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \Sig_B[42]~41_combout\ : std_logic;
SIGNAL \Y[42]~10_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \ArithAdder|carryIn[43]~42_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \Sig_B[43]~42_combout\ : std_logic;
SIGNAL \Y[43]~11_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \Sig_B[44]~43_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[44]~43_combout\ : std_logic;
SIGNAL \Y[44]~12_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[45]~44_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \Sig_B[45]~44_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \Y[45]~13_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[46]~45_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \Sig_B[46]~45_combout\ : std_logic;
SIGNAL \Y[46]~14_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[47]~46_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \Sig_B[47]~46_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \Y[47]~15_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[48]~47_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \Sig_B[48]~47_combout\ : std_logic;
SIGNAL \Y[48]~16_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \Sig_B[49]~48_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[49]~48_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \Y[49]~17_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \Sig_B[50]~49_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[50]~49_combout\ : std_logic;
SIGNAL \Y[50]~18_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \Sig_B[51]~50_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \ArithAdder|carryIn[51]~50_combout\ : std_logic;
SIGNAL \Y[51]~19_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \Sig_B[52]~51_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[52]~51_combout\ : std_logic;
SIGNAL \Y[52]~20_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[53]~52_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \Sig_B[53]~52_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \Y[53]~21_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \ArithAdder|carryIn[54]~53_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \Sig_B[54]~53_combout\ : std_logic;
SIGNAL \Y[54]~22_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \Sig_B[55]~54_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[55]~54_combout\ : std_logic;
SIGNAL \Y[55]~23_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \Sig_B[56]~55_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[56]~55_combout\ : std_logic;
SIGNAL \Y[56]~24_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \ArithAdder|carryIn[57]~56_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \Sig_B[57]~56_combout\ : std_logic;
SIGNAL \Y[57]~25_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[58]~57_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \Sig_B[58]~57_combout\ : std_logic;
SIGNAL \Y[58]~26_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[59]~58_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \Sig_B[59]~58_combout\ : std_logic;
SIGNAL \Y[59]~27_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[60]~59_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \Sig_B[60]~59_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \Y[60]~28_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \ArithAdder|Y[61]~1_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[61]~60_combout\ : std_logic;
SIGNAL \Y[61]~29_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \ArithAdder|Y[62]~2_combout\ : std_logic;
SIGNAL \Sig_B[61]~60_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[62]~61_combout\ : std_logic;
SIGNAL \Y[62]~30_combout\ : std_logic;
SIGNAL \Sig_B[62]~61_combout\ : std_logic;
SIGNAL \ArithAdder|carryIn[63]~62_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \ArithAdder|s~0_combout\ : std_logic;
SIGNAL \Y[63]~31_combout\ : std_logic;
SIGNAL \Sig_B[63]~62_combout\ : std_logic;
SIGNAL \ArithAdder|Cout~0_combout\ : std_logic;
SIGNAL \ArithAdder|Ovfl~combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~15_combout\ : std_logic;
SIGNAL \Equal0~18_combout\ : std_logic;
SIGNAL \Equal0~16_combout\ : std_logic;
SIGNAL \Equal0~19_combout\ : std_logic;
SIGNAL \Equal0~20_combout\ : std_logic;
SIGNAL \Equal0~17_combout\ : std_logic;
SIGNAL \Equal0~21_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~22_combout\ : std_logic;
SIGNAL \AltB~2_combout\ : std_logic;
SIGNAL \ArithAdder|Y\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \ArithAdder|ALT_INV_Cout~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_AddnSub <= AddnSub;
ww_NotA <= NotA;
ww_ExtWord <= ExtWord;
Y <= ww_Y;
Cout <= ww_Cout;
Ovfl <= ww_Ovfl;
Zero <= ww_Zero;
AltB <= ww_AltB;
AltBu <= ww_AltBu;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ArithAdder|ALT_INV_Cout~0_combout\ <= NOT \ArithAdder|Cout~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X52_Y73_N16
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y[0]~0_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(1),
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(2),
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(3),
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(4),
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(5),
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(6),
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(7),
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(8),
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(9),
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(10),
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(11),
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(12),
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(13),
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(14),
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(15),
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(16),
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(17),
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(18),
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(19),
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(20),
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(21),
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(22),
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(23),
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(24),
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(25),
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(26),
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(27),
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(28),
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(29),
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(30),
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Y\(31),
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[32]~0_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[33]~1_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[34]~2_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[35]~3_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[36]~4_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[37]~5_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[38]~6_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[39]~7_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[40]~8_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[41]~9_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[42]~10_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[43]~11_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[44]~12_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[45]~13_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[46]~14_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[47]~15_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[48]~16_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[49]~17_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[50]~18_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[51]~19_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[52]~20_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[53]~21_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[54]~22_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[55]~23_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[56]~24_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[57]~25_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[58]~26_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[59]~27_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[60]~28_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[61]~29_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[62]~30_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[63]~31_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|Ovfl~combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~22_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\AltB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AltB~2_combout\,
	devoe => ww_devoe,
	o => \AltB~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\AltBu~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ArithAdder|ALT_INV_Cout~0_combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X23_Y73_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X85_Y73_N8
\NotA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NotA,
	o => \NotA~input_o\);

-- Location: LCCOMB_X23_Y69_N24
\ArithAdder|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y[0]~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\NotA~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y[0]~0_combout\);

-- Location: IOIBUF_X0_Y47_N22
\AddnSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: LCCOMB_X23_Y69_N26
\ArithAdder|carryIn[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[1]~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (((\NotA~input_o\))))) # (!\B[0]~input_o\ & (((\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[1]~0_combout\);

-- Location: IOIBUF_X23_Y73_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X23_Y69_N20
\Sig_B[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[1]~0_combout\ = \B[1]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Sig_B[1]~0_combout\);

-- Location: IOIBUF_X20_Y73_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X23_Y69_N6
\ArithAdder|Y[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(1) = \ArithAdder|carryIn[1]~0_combout\ $ (\Sig_B[1]~0_combout\ $ (\A[1]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[1]~0_combout\,
	datab => \Sig_B[1]~0_combout\,
	datac => \A[1]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(1));

-- Location: IOIBUF_X20_Y73_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X23_Y69_N18
\Sig_B[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[2]~1_combout\ = \B[2]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Sig_B[2]~1_combout\);

-- Location: LCCOMB_X23_Y69_N16
\ArithAdder|carryIn[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[2]~1_combout\ = (\ArithAdder|carryIn[1]~0_combout\ & ((\Sig_B[1]~0_combout\) # (\A[1]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[1]~0_combout\ & (\Sig_B[1]~0_combout\ & (\A[1]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[1]~0_combout\,
	datab => \Sig_B[1]~0_combout\,
	datac => \A[1]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[2]~1_combout\);

-- Location: LCCOMB_X23_Y69_N12
\ArithAdder|Y[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(2) = \A[2]~input_o\ $ (\Sig_B[2]~1_combout\ $ (\ArithAdder|carryIn[2]~1_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Sig_B[2]~1_combout\,
	datac => \ArithAdder|carryIn[2]~1_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(2));

-- Location: IOIBUF_X23_Y73_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X23_Y73_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X23_Y69_N0
\Sig_B[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[3]~2_combout\ = \B[3]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Sig_B[3]~2_combout\);

-- Location: LCCOMB_X23_Y69_N30
\ArithAdder|carryIn[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[3]~2_combout\ = (\Sig_B[2]~1_combout\ & ((\ArithAdder|carryIn[2]~1_combout\) # (\A[2]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[2]~1_combout\ & (\ArithAdder|carryIn[2]~1_combout\ & (\A[2]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Sig_B[2]~1_combout\,
	datac => \ArithAdder|carryIn[2]~1_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[3]~2_combout\);

-- Location: LCCOMB_X23_Y69_N10
\ArithAdder|Y[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(3) = \A[3]~input_o\ $ (\Sig_B[3]~2_combout\ $ (\ArithAdder|carryIn[3]~2_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Sig_B[3]~2_combout\,
	datac => \ArithAdder|carryIn[3]~2_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(3));

-- Location: LCCOMB_X23_Y69_N28
\ArithAdder|carryIn[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[4]~3_combout\ = (\Sig_B[3]~2_combout\ & ((\ArithAdder|carryIn[3]~2_combout\) # (\A[3]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[3]~2_combout\ & (\ArithAdder|carryIn[3]~2_combout\ & (\A[3]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Sig_B[3]~2_combout\,
	datac => \ArithAdder|carryIn[3]~2_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[4]~3_combout\);

-- Location: IOIBUF_X0_Y44_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X0_Y48_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X1_Y49_N24
\Sig_B[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[4]~3_combout\ = \B[4]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Sig_B[4]~3_combout\);

-- Location: LCCOMB_X1_Y49_N18
\ArithAdder|Y[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(4) = \ArithAdder|carryIn[4]~3_combout\ $ (\A[4]~input_o\ $ (\NotA~input_o\ $ (\Sig_B[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[4]~3_combout\,
	datab => \A[4]~input_o\,
	datac => \NotA~input_o\,
	datad => \Sig_B[4]~3_combout\,
	combout => \ArithAdder|Y\(4));

-- Location: IOIBUF_X0_Y34_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X0_Y42_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X1_Y49_N14
\Sig_B[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[5]~4_combout\ = \B[5]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Sig_B[5]~4_combout\);

-- Location: LCCOMB_X1_Y49_N12
\ArithAdder|carryIn[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[5]~4_combout\ = (\ArithAdder|carryIn[4]~3_combout\ & ((\Sig_B[4]~3_combout\) # (\A[4]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[4]~3_combout\ & (\Sig_B[4]~3_combout\ & (\A[4]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[4]~3_combout\,
	datab => \A[4]~input_o\,
	datac => \NotA~input_o\,
	datad => \Sig_B[4]~3_combout\,
	combout => \ArithAdder|carryIn[5]~4_combout\);

-- Location: LCCOMB_X1_Y49_N8
\ArithAdder|Y[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(5) = \A[5]~input_o\ $ (\Sig_B[5]~4_combout\ $ (\NotA~input_o\ $ (\ArithAdder|carryIn[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Sig_B[5]~4_combout\,
	datac => \NotA~input_o\,
	datad => \ArithAdder|carryIn[5]~4_combout\,
	combout => \ArithAdder|Y\(5));

-- Location: LCCOMB_X1_Y49_N26
\ArithAdder|carryIn[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[6]~5_combout\ = (\Sig_B[5]~4_combout\ & ((\ArithAdder|carryIn[5]~4_combout\) # (\A[5]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[5]~4_combout\ & (\ArithAdder|carryIn[5]~4_combout\ & (\A[5]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Sig_B[5]~4_combout\,
	datac => \NotA~input_o\,
	datad => \ArithAdder|carryIn[5]~4_combout\,
	combout => \ArithAdder|carryIn[6]~5_combout\);

-- Location: IOIBUF_X0_Y49_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X1_Y49_N20
\Sig_B[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[6]~5_combout\ = \AddnSub~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[6]~input_o\,
	combout => \Sig_B[6]~5_combout\);

-- Location: LCCOMB_X1_Y49_N6
\ArithAdder|Y[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(6) = \ArithAdder|carryIn[6]~5_combout\ $ (\A[6]~input_o\ $ (\NotA~input_o\ $ (\Sig_B[6]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[6]~5_combout\,
	datab => \A[6]~input_o\,
	datac => \NotA~input_o\,
	datad => \Sig_B[6]~5_combout\,
	combout => \ArithAdder|Y\(6));

-- Location: IOIBUF_X0_Y45_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X1_Y49_N0
\ArithAdder|carryIn[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[7]~6_combout\ = (\ArithAdder|carryIn[6]~5_combout\ & ((\Sig_B[6]~5_combout\) # (\A[6]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[6]~5_combout\ & (\Sig_B[6]~5_combout\ & (\A[6]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[6]~5_combout\,
	datab => \A[6]~input_o\,
	datac => \NotA~input_o\,
	datad => \Sig_B[6]~5_combout\,
	combout => \ArithAdder|carryIn[7]~6_combout\);

-- Location: IOIBUF_X0_Y48_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X1_Y49_N10
\Sig_B[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[7]~6_combout\ = \AddnSub~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[7]~input_o\,
	combout => \Sig_B[7]~6_combout\);

-- Location: LCCOMB_X1_Y49_N28
\ArithAdder|Y[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(7) = \NotA~input_o\ $ (\A[7]~input_o\ $ (\ArithAdder|carryIn[7]~6_combout\ $ (\Sig_B[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[7]~input_o\,
	datac => \ArithAdder|carryIn[7]~6_combout\,
	datad => \Sig_B[7]~6_combout\,
	combout => \ArithAdder|Y\(7));

-- Location: IOIBUF_X0_Y55_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X1_Y49_N22
\ArithAdder|carryIn[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[8]~7_combout\ = (\ArithAdder|carryIn[7]~6_combout\ & ((\Sig_B[7]~6_combout\) # (\NotA~input_o\ $ (\A[7]~input_o\)))) # (!\ArithAdder|carryIn[7]~6_combout\ & (\Sig_B[7]~6_combout\ & (\NotA~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[7]~input_o\,
	datac => \ArithAdder|carryIn[7]~6_combout\,
	datad => \Sig_B[7]~6_combout\,
	combout => \ArithAdder|carryIn[8]~7_combout\);

-- Location: IOIBUF_X0_Y55_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X1_Y55_N8
\Sig_B[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[8]~7_combout\ = \AddnSub~input_o\ $ (\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[8]~input_o\,
	combout => \Sig_B[8]~7_combout\);

-- Location: LCCOMB_X1_Y55_N18
\ArithAdder|Y[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(8) = \A[8]~input_o\ $ (\ArithAdder|carryIn[8]~7_combout\ $ (\Sig_B[8]~7_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \ArithAdder|carryIn[8]~7_combout\,
	datac => \Sig_B[8]~7_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(8));

-- Location: IOIBUF_X0_Y57_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X1_Y55_N6
\Sig_B[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[9]~8_combout\ = \B[9]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Sig_B[9]~8_combout\);

-- Location: LCCOMB_X1_Y55_N12
\ArithAdder|carryIn[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[9]~8_combout\ = (\ArithAdder|carryIn[8]~7_combout\ & ((\Sig_B[8]~7_combout\) # (\A[8]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[8]~7_combout\ & (\Sig_B[8]~7_combout\ & (\A[8]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \ArithAdder|carryIn[8]~7_combout\,
	datac => \Sig_B[8]~7_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[9]~8_combout\);

-- Location: IOIBUF_X0_Y53_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X1_Y55_N24
\ArithAdder|Y[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(9) = \Sig_B[9]~8_combout\ $ (\ArithAdder|carryIn[9]~8_combout\ $ (\A[9]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sig_B[9]~8_combout\,
	datab => \ArithAdder|carryIn[9]~8_combout\,
	datac => \A[9]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(9));

-- Location: IOIBUF_X0_Y55_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X1_Y55_N20
\Sig_B[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[10]~9_combout\ = \AddnSub~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[10]~input_o\,
	combout => \Sig_B[10]~9_combout\);

-- Location: LCCOMB_X1_Y55_N26
\ArithAdder|carryIn[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[10]~9_combout\ = (\Sig_B[9]~8_combout\ & ((\ArithAdder|carryIn[9]~8_combout\) # (\A[9]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[9]~8_combout\ & (\ArithAdder|carryIn[9]~8_combout\ & (\A[9]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sig_B[9]~8_combout\,
	datab => \ArithAdder|carryIn[9]~8_combout\,
	datac => \A[9]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[10]~9_combout\);

-- Location: LCCOMB_X1_Y55_N30
\ArithAdder|Y[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(10) = \A[10]~input_o\ $ (\Sig_B[10]~9_combout\ $ (\ArithAdder|carryIn[10]~9_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \Sig_B[10]~9_combout\,
	datac => \ArithAdder|carryIn[10]~9_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(10));

-- Location: LCCOMB_X1_Y55_N16
\ArithAdder|carryIn[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[11]~10_combout\ = (\Sig_B[10]~9_combout\ & ((\ArithAdder|carryIn[10]~9_combout\) # (\A[10]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[10]~9_combout\ & (\ArithAdder|carryIn[10]~9_combout\ & (\A[10]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \Sig_B[10]~9_combout\,
	datac => \ArithAdder|carryIn[10]~9_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[11]~10_combout\);

-- Location: IOIBUF_X0_Y53_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X0_Y52_N1
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X1_Y55_N10
\Sig_B[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[11]~10_combout\ = \B[11]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Sig_B[11]~10_combout\);

-- Location: LCCOMB_X1_Y55_N28
\ArithAdder|Y[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(11) = \NotA~input_o\ $ (\ArithAdder|carryIn[11]~10_combout\ $ (\A[11]~input_o\ $ (\Sig_B[11]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \ArithAdder|carryIn[11]~10_combout\,
	datac => \A[11]~input_o\,
	datad => \Sig_B[11]~10_combout\,
	combout => \ArithAdder|Y\(11));

-- Location: LCCOMB_X1_Y55_N22
\ArithAdder|carryIn[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[12]~11_combout\ = (\ArithAdder|carryIn[11]~10_combout\ & ((\Sig_B[11]~10_combout\) # (\NotA~input_o\ $ (\A[11]~input_o\)))) # (!\ArithAdder|carryIn[11]~10_combout\ & (\Sig_B[11]~10_combout\ & (\NotA~input_o\ $ (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \ArithAdder|carryIn[11]~10_combout\,
	datac => \A[11]~input_o\,
	datad => \Sig_B[11]~10_combout\,
	combout => \ArithAdder|carryIn[12]~11_combout\);

-- Location: IOIBUF_X0_Y52_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X1_Y55_N0
\Sig_B[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[12]~11_combout\ = \AddnSub~input_o\ $ (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[12]~input_o\,
	combout => \Sig_B[12]~11_combout\);

-- Location: IOIBUF_X0_Y51_N15
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X1_Y55_N2
\ArithAdder|Y[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(12) = \ArithAdder|carryIn[12]~11_combout\ $ (\Sig_B[12]~11_combout\ $ (\A[12]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[12]~11_combout\,
	datab => \Sig_B[12]~11_combout\,
	datac => \A[12]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(12));

-- Location: IOIBUF_X0_Y62_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X1_Y63_N16
\Sig_B[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[13]~12_combout\ = \B[13]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Sig_B[13]~12_combout\);

-- Location: LCCOMB_X1_Y55_N4
\ArithAdder|carryIn[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[13]~12_combout\ = (\ArithAdder|carryIn[12]~11_combout\ & ((\Sig_B[12]~11_combout\) # (\A[12]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[12]~11_combout\ & (\Sig_B[12]~11_combout\ & (\A[12]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[12]~11_combout\,
	datab => \Sig_B[12]~11_combout\,
	datac => \A[12]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[13]~12_combout\);

-- Location: LCCOMB_X1_Y63_N10
\ArithAdder|Y[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(13) = \A[13]~input_o\ $ (\Sig_B[13]~12_combout\ $ (\NotA~input_o\ $ (\ArithAdder|carryIn[13]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \Sig_B[13]~12_combout\,
	datac => \NotA~input_o\,
	datad => \ArithAdder|carryIn[13]~12_combout\,
	combout => \ArithAdder|Y\(13));

-- Location: IOIBUF_X0_Y63_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X1_Y63_N14
\Sig_B[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[14]~13_combout\ = \AddnSub~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[14]~input_o\,
	combout => \Sig_B[14]~13_combout\);

-- Location: LCCOMB_X1_Y63_N28
\ArithAdder|carryIn[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[14]~13_combout\ = (\Sig_B[13]~12_combout\ & ((\ArithAdder|carryIn[13]~12_combout\) # (\A[13]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[13]~12_combout\ & (\ArithAdder|carryIn[13]~12_combout\ & (\A[13]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \Sig_B[13]~12_combout\,
	datac => \NotA~input_o\,
	datad => \ArithAdder|carryIn[13]~12_combout\,
	combout => \ArithAdder|carryIn[14]~13_combout\);

-- Location: LCCOMB_X1_Y63_N24
\ArithAdder|Y[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(14) = \A[14]~input_o\ $ (\Sig_B[14]~13_combout\ $ (\NotA~input_o\ $ (\ArithAdder|carryIn[14]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \Sig_B[14]~13_combout\,
	datac => \NotA~input_o\,
	datad => \ArithAdder|carryIn[14]~13_combout\,
	combout => \ArithAdder|Y\(14));

-- Location: IOIBUF_X0_Y60_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X1_Y63_N18
\ArithAdder|carryIn[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[15]~14_combout\ = (\Sig_B[14]~13_combout\ & ((\ArithAdder|carryIn[14]~13_combout\) # (\A[14]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[14]~13_combout\ & (\ArithAdder|carryIn[14]~13_combout\ & (\A[14]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \Sig_B[14]~13_combout\,
	datac => \NotA~input_o\,
	datad => \ArithAdder|carryIn[14]~13_combout\,
	combout => \ArithAdder|carryIn[15]~14_combout\);

-- Location: IOIBUF_X0_Y47_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X1_Y63_N12
\Sig_B[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[15]~14_combout\ = \B[15]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Sig_B[15]~14_combout\);

-- Location: LCCOMB_X1_Y63_N30
\ArithAdder|Y[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(15) = \A[15]~input_o\ $ (\ArithAdder|carryIn[15]~14_combout\ $ (\NotA~input_o\ $ (\Sig_B[15]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \ArithAdder|carryIn[15]~14_combout\,
	datac => \NotA~input_o\,
	datad => \Sig_B[15]~14_combout\,
	combout => \ArithAdder|Y\(15));

-- Location: IOIBUF_X0_Y44_N8
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X1_Y46_N24
\Sig_B[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[16]~15_combout\ = \B[16]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Sig_B[16]~15_combout\);

-- Location: LCCOMB_X1_Y63_N0
\ArithAdder|carryIn[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[16]~15_combout\ = (\ArithAdder|carryIn[15]~14_combout\ & ((\Sig_B[15]~14_combout\) # (\A[15]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[15]~14_combout\ & (\Sig_B[15]~14_combout\ & (\A[15]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \ArithAdder|carryIn[15]~14_combout\,
	datac => \NotA~input_o\,
	datad => \Sig_B[15]~14_combout\,
	combout => \ArithAdder|carryIn[16]~15_combout\);

-- Location: LCCOMB_X1_Y46_N2
\ArithAdder|Y[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(16) = \A[16]~input_o\ $ (\Sig_B[16]~15_combout\ $ (\ArithAdder|carryIn[16]~15_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \Sig_B[16]~15_combout\,
	datac => \ArithAdder|carryIn[16]~15_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(16));

-- Location: IOIBUF_X0_Y34_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X1_Y46_N30
\Sig_B[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[17]~16_combout\ = \AddnSub~input_o\ $ (\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[17]~input_o\,
	combout => \Sig_B[17]~16_combout\);

-- Location: LCCOMB_X1_Y46_N4
\ArithAdder|carryIn[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[17]~16_combout\ = (\Sig_B[16]~15_combout\ & ((\ArithAdder|carryIn[16]~15_combout\) # (\A[16]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[16]~15_combout\ & (\ArithAdder|carryIn[16]~15_combout\ & (\A[16]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \Sig_B[16]~15_combout\,
	datac => \ArithAdder|carryIn[16]~15_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[17]~16_combout\);

-- Location: IOIBUF_X0_Y35_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X1_Y46_N16
\ArithAdder|Y[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(17) = \Sig_B[17]~16_combout\ $ (\ArithAdder|carryIn[17]~16_combout\ $ (\A[17]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sig_B[17]~16_combout\,
	datab => \ArithAdder|carryIn[17]~16_combout\,
	datac => \A[17]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(17));

-- Location: LCCOMB_X1_Y46_N10
\ArithAdder|carryIn[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[18]~17_combout\ = (\Sig_B[17]~16_combout\ & ((\ArithAdder|carryIn[17]~16_combout\) # (\A[17]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[17]~16_combout\ & (\ArithAdder|carryIn[17]~16_combout\ & (\A[17]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sig_B[17]~16_combout\,
	datab => \ArithAdder|carryIn[17]~16_combout\,
	datac => \A[17]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[18]~17_combout\);

-- Location: IOIBUF_X0_Y42_N1
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X1_Y46_N28
\Sig_B[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[18]~17_combout\ = \B[18]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[18]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Sig_B[18]~17_combout\);

-- Location: IOIBUF_X0_Y46_N22
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X1_Y46_N22
\ArithAdder|Y[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(18) = \ArithAdder|carryIn[18]~17_combout\ $ (\Sig_B[18]~17_combout\ $ (\A[18]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[18]~17_combout\,
	datab => \Sig_B[18]~17_combout\,
	datac => \A[18]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(18));

-- Location: IOIBUF_X0_Y44_N1
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X1_Y46_N26
\Sig_B[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[19]~18_combout\ = \AddnSub~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[19]~input_o\,
	combout => \Sig_B[19]~18_combout\);

-- Location: LCCOMB_X1_Y46_N8
\ArithAdder|carryIn[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[19]~18_combout\ = (\ArithAdder|carryIn[18]~17_combout\ & ((\Sig_B[18]~17_combout\) # (\A[18]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[18]~17_combout\ & (\Sig_B[18]~17_combout\ & (\A[18]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[18]~17_combout\,
	datab => \Sig_B[18]~17_combout\,
	datac => \A[18]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[19]~18_combout\);

-- Location: IOIBUF_X0_Y24_N8
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X1_Y46_N12
\ArithAdder|Y[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(19) = \Sig_B[19]~18_combout\ $ (\ArithAdder|carryIn[19]~18_combout\ $ (\A[19]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sig_B[19]~18_combout\,
	datab => \ArithAdder|carryIn[19]~18_combout\,
	datac => \A[19]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(19));

-- Location: IOIBUF_X81_Y73_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X77_Y69_N16
\Sig_B[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[20]~19_combout\ = \AddnSub~input_o\ $ (\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[20]~input_o\,
	combout => \Sig_B[20]~19_combout\);

-- Location: LCCOMB_X1_Y46_N14
\ArithAdder|carryIn[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[20]~19_combout\ = (\Sig_B[19]~18_combout\ & ((\ArithAdder|carryIn[19]~18_combout\) # (\A[19]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[19]~18_combout\ & (\ArithAdder|carryIn[19]~18_combout\ & (\A[19]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sig_B[19]~18_combout\,
	datab => \ArithAdder|carryIn[19]~18_combout\,
	datac => \A[19]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[20]~19_combout\);

-- Location: LCCOMB_X77_Y69_N26
\ArithAdder|Y[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(20) = \A[20]~input_o\ $ (\Sig_B[20]~19_combout\ $ (\ArithAdder|carryIn[20]~19_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \Sig_B[20]~19_combout\,
	datac => \ArithAdder|carryIn[20]~19_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(20));

-- Location: IOIBUF_X102_Y73_N8
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X77_Y69_N30
\Sig_B[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[21]~20_combout\ = \AddnSub~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[21]~input_o\,
	combout => \Sig_B[21]~20_combout\);

-- Location: LCCOMB_X77_Y69_N28
\ArithAdder|carryIn[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[21]~20_combout\ = (\Sig_B[20]~19_combout\ & ((\ArithAdder|carryIn[20]~19_combout\) # (\A[20]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[20]~19_combout\ & (\ArithAdder|carryIn[20]~19_combout\ & (\A[20]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \Sig_B[20]~19_combout\,
	datac => \ArithAdder|carryIn[20]~19_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[21]~20_combout\);

-- Location: IOIBUF_X87_Y73_N15
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X77_Y69_N24
\ArithAdder|Y[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(21) = \Sig_B[21]~20_combout\ $ (\ArithAdder|carryIn[21]~20_combout\ $ (\A[21]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sig_B[21]~20_combout\,
	datab => \ArithAdder|carryIn[21]~20_combout\,
	datac => \A[21]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(21));

-- Location: LCCOMB_X77_Y69_N10
\ArithAdder|carryIn[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[22]~21_combout\ = (\Sig_B[21]~20_combout\ & ((\ArithAdder|carryIn[21]~20_combout\) # (\A[21]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[21]~20_combout\ & (\ArithAdder|carryIn[21]~20_combout\ & (\A[21]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sig_B[21]~20_combout\,
	datab => \ArithAdder|carryIn[21]~20_combout\,
	datac => \A[21]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[22]~21_combout\);

-- Location: IOIBUF_X79_Y73_N1
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X98_Y73_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X77_Y69_N12
\Sig_B[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[22]~21_combout\ = \B[22]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Sig_B[22]~21_combout\);

-- Location: LCCOMB_X77_Y69_N6
\ArithAdder|Y[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(22) = \ArithAdder|carryIn[22]~21_combout\ $ (\NotA~input_o\ $ (\A[22]~input_o\ $ (\Sig_B[22]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[22]~21_combout\,
	datab => \NotA~input_o\,
	datac => \A[22]~input_o\,
	datad => \Sig_B[22]~21_combout\,
	combout => \ArithAdder|Y\(22));

-- Location: IOIBUF_X79_Y73_N8
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X77_Y69_N2
\Sig_B[23]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[23]~22_combout\ = \AddnSub~input_o\ $ (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[23]~input_o\,
	combout => \Sig_B[23]~22_combout\);

-- Location: LCCOMB_X77_Y69_N0
\ArithAdder|carryIn[23]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[23]~22_combout\ = (\ArithAdder|carryIn[22]~21_combout\ & ((\Sig_B[22]~21_combout\) # (\NotA~input_o\ $ (\A[22]~input_o\)))) # (!\ArithAdder|carryIn[22]~21_combout\ & (\Sig_B[22]~21_combout\ & (\NotA~input_o\ $ (\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[22]~21_combout\,
	datab => \NotA~input_o\,
	datac => \A[22]~input_o\,
	datad => \Sig_B[22]~21_combout\,
	combout => \ArithAdder|carryIn[23]~22_combout\);

-- Location: IOIBUF_X81_Y73_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X77_Y69_N20
\ArithAdder|Y[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(23) = \Sig_B[23]~22_combout\ $ (\ArithAdder|carryIn[23]~22_combout\ $ (\A[23]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sig_B[23]~22_combout\,
	datab => \ArithAdder|carryIn[23]~22_combout\,
	datac => \A[23]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(23));

-- Location: LCCOMB_X77_Y69_N14
\ArithAdder|carryIn[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[24]~23_combout\ = (\Sig_B[23]~22_combout\ & ((\ArithAdder|carryIn[23]~22_combout\) # (\A[23]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[23]~22_combout\ & (\ArithAdder|carryIn[23]~22_combout\ & (\A[23]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sig_B[23]~22_combout\,
	datab => \ArithAdder|carryIn[23]~22_combout\,
	datac => \A[23]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[24]~23_combout\);

-- Location: IOIBUF_X85_Y73_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X87_Y73_N1
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X84_Y69_N8
\Sig_B[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[24]~23_combout\ = \AddnSub~input_o\ $ (\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[24]~input_o\,
	combout => \Sig_B[24]~23_combout\);

-- Location: LCCOMB_X84_Y69_N26
\ArithAdder|Y[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(24) = \ArithAdder|carryIn[24]~23_combout\ $ (\A[24]~input_o\ $ (\Sig_B[24]~23_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[24]~23_combout\,
	datab => \A[24]~input_o\,
	datac => \Sig_B[24]~23_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(24));

-- Location: IOIBUF_X85_Y73_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X84_Y69_N20
\ArithAdder|carryIn[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[25]~24_combout\ = (\ArithAdder|carryIn[24]~23_combout\ & ((\Sig_B[24]~23_combout\) # (\A[24]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[24]~23_combout\ & (\Sig_B[24]~23_combout\ & (\A[24]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[24]~23_combout\,
	datab => \A[24]~input_o\,
	datac => \Sig_B[24]~23_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[25]~24_combout\);

-- Location: IOIBUF_X87_Y73_N8
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X84_Y69_N30
\Sig_B[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[25]~24_combout\ = \AddnSub~input_o\ $ (\B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[25]~input_o\,
	combout => \Sig_B[25]~24_combout\);

-- Location: LCCOMB_X84_Y69_N0
\ArithAdder|Y[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(25) = \A[25]~input_o\ $ (\ArithAdder|carryIn[25]~24_combout\ $ (\Sig_B[25]~24_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \ArithAdder|carryIn[25]~24_combout\,
	datac => \Sig_B[25]~24_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(25));

-- Location: LCCOMB_X84_Y69_N10
\ArithAdder|carryIn[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[26]~25_combout\ = (\ArithAdder|carryIn[25]~24_combout\ & ((\Sig_B[25]~24_combout\) # (\A[25]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[25]~24_combout\ & (\Sig_B[25]~24_combout\ & (\A[25]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \ArithAdder|carryIn[25]~24_combout\,
	datac => \Sig_B[25]~24_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[26]~25_combout\);

-- Location: IOIBUF_X89_Y73_N15
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X84_Y69_N28
\Sig_B[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[26]~25_combout\ = \AddnSub~input_o\ $ (\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[26]~input_o\,
	combout => \Sig_B[26]~25_combout\);

-- Location: IOIBUF_X98_Y73_N22
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X84_Y69_N6
\ArithAdder|Y[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(26) = \ArithAdder|carryIn[26]~25_combout\ $ (\Sig_B[26]~25_combout\ $ (\A[26]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[26]~25_combout\,
	datab => \Sig_B[26]~25_combout\,
	datac => \A[26]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(26));

-- Location: IOIBUF_X89_Y73_N22
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X84_Y69_N24
\ArithAdder|carryIn[27]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[27]~26_combout\ = (\ArithAdder|carryIn[26]~25_combout\ & ((\Sig_B[26]~25_combout\) # (\A[26]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[26]~25_combout\ & (\Sig_B[26]~25_combout\ & (\A[26]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[26]~25_combout\,
	datab => \Sig_B[26]~25_combout\,
	datac => \A[26]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[27]~26_combout\);

-- Location: IOIBUF_X102_Y73_N1
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X84_Y69_N18
\Sig_B[27]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[27]~26_combout\ = \AddnSub~input_o\ $ (\B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[27]~input_o\,
	combout => \Sig_B[27]~26_combout\);

-- Location: LCCOMB_X84_Y69_N4
\ArithAdder|Y[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(27) = \A[27]~input_o\ $ (\ArithAdder|carryIn[27]~26_combout\ $ (\Sig_B[27]~26_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \ArithAdder|carryIn[27]~26_combout\,
	datac => \Sig_B[27]~26_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(27));

-- Location: LCCOMB_X84_Y69_N22
\ArithAdder|carryIn[28]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[28]~27_combout\ = (\ArithAdder|carryIn[27]~26_combout\ & ((\Sig_B[27]~26_combout\) # (\A[27]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[27]~26_combout\ & (\Sig_B[27]~26_combout\ & (\A[27]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \ArithAdder|carryIn[27]~26_combout\,
	datac => \Sig_B[27]~26_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[28]~27_combout\);

-- Location: IOIBUF_X83_Y73_N1
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X84_Y69_N16
\Sig_B[28]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[28]~27_combout\ = \AddnSub~input_o\ $ (\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[28]~input_o\,
	combout => \Sig_B[28]~27_combout\);

-- Location: IOIBUF_X96_Y73_N22
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X84_Y69_N2
\ArithAdder|Y[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(28) = \ArithAdder|carryIn[28]~27_combout\ $ (\Sig_B[28]~27_combout\ $ (\A[28]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[28]~27_combout\,
	datab => \Sig_B[28]~27_combout\,
	datac => \A[28]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(28));

-- Location: LCCOMB_X84_Y69_N12
\ArithAdder|carryIn[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[29]~28_combout\ = (\ArithAdder|carryIn[28]~27_combout\ & ((\Sig_B[28]~27_combout\) # (\A[28]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[28]~27_combout\ & (\Sig_B[28]~27_combout\ & (\A[28]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[28]~27_combout\,
	datab => \Sig_B[28]~27_combout\,
	datac => \A[28]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[29]~28_combout\);

-- Location: IOIBUF_X67_Y73_N8
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X66_Y69_N16
\Sig_B[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[29]~28_combout\ = \B[29]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[29]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Sig_B[29]~28_combout\);

-- Location: IOIBUF_X65_Y73_N8
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X66_Y69_N2
\ArithAdder|Y[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(29) = \ArithAdder|carryIn[29]~28_combout\ $ (\Sig_B[29]~28_combout\ $ (\A[29]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[29]~28_combout\,
	datab => \Sig_B[29]~28_combout\,
	datac => \A[29]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(29));

-- Location: LCCOMB_X66_Y69_N12
\ArithAdder|carryIn[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[30]~29_combout\ = (\ArithAdder|carryIn[29]~28_combout\ & ((\Sig_B[29]~28_combout\) # (\A[29]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[29]~28_combout\ & (\Sig_B[29]~28_combout\ & (\A[29]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[29]~28_combout\,
	datab => \Sig_B[29]~28_combout\,
	datac => \A[29]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[30]~29_combout\);

-- Location: IOIBUF_X67_Y73_N1
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X66_Y69_N30
\Sig_B[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[30]~29_combout\ = \AddnSub~input_o\ $ (\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[30]~input_o\,
	combout => \Sig_B[30]~29_combout\);

-- Location: LCCOMB_X66_Y69_N0
\ArithAdder|Y[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(30) = \ArithAdder|carryIn[30]~29_combout\ $ (\A[30]~input_o\ $ (\Sig_B[30]~29_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[30]~29_combout\,
	datab => \A[30]~input_o\,
	datac => \Sig_B[30]~29_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(30));

-- Location: LCCOMB_X66_Y69_N10
\ArithAdder|carryIn[31]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[31]~30_combout\ = (\ArithAdder|carryIn[30]~29_combout\ & ((\Sig_B[30]~29_combout\) # (\A[30]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[30]~29_combout\ & (\Sig_B[30]~29_combout\ & (\A[30]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[30]~29_combout\,
	datab => \A[30]~input_o\,
	datac => \Sig_B[30]~29_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[31]~30_combout\);

-- Location: IOIBUF_X72_Y73_N15
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X66_Y69_N28
\Sig_B[31]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[31]~30_combout\ = \AddnSub~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[31]~input_o\,
	combout => \Sig_B[31]~30_combout\);

-- Location: IOIBUF_X72_Y73_N1
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X66_Y69_N6
\ArithAdder|Y[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(31) = \ArithAdder|carryIn[31]~30_combout\ $ (\Sig_B[31]~30_combout\ $ (\A[31]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[31]~30_combout\,
	datab => \Sig_B[31]~30_combout\,
	datac => \A[31]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(31));

-- Location: LCCOMB_X66_Y69_N8
\ArithAdder|carryIn[32]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[32]~31_combout\ = (\ArithAdder|carryIn[31]~30_combout\ & ((\Sig_B[31]~30_combout\) # (\A[31]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[31]~30_combout\ & (\Sig_B[31]~30_combout\ & (\A[31]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[31]~30_combout\,
	datab => \Sig_B[31]~30_combout\,
	datac => \A[31]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[32]~31_combout\);

-- Location: IOIBUF_X72_Y73_N22
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X59_Y69_N8
\Sig_B[32]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[32]~31_combout\ = \AddnSub~input_o\ $ (\B[32]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[32]~input_o\,
	combout => \Sig_B[32]~31_combout\);

-- Location: IOIBUF_X56_Y73_N1
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X59_Y69_N2
\ArithAdder|Y[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(32) = \ArithAdder|carryIn[32]~31_combout\ $ (\Sig_B[32]~31_combout\ $ (\A[32]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[32]~31_combout\,
	datab => \Sig_B[32]~31_combout\,
	datac => \A[32]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(32));

-- Location: IOIBUF_X56_Y73_N8
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LCCOMB_X59_Y69_N28
\Y[32]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[32]~0_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ArithAdder|Y\(32),
	datac => \ExtWord~input_o\,
	datad => \ArithAdder|Y\(31),
	combout => \Y[32]~0_combout\);

-- Location: LCCOMB_X59_Y69_N6
\ArithAdder|carryIn[33]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[33]~32_combout\ = (\ArithAdder|carryIn[32]~31_combout\ & ((\Sig_B[32]~31_combout\) # (\A[32]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[32]~31_combout\ & (\Sig_B[32]~31_combout\ & (\A[32]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[32]~31_combout\,
	datab => \Sig_B[32]~31_combout\,
	datac => \A[32]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[33]~32_combout\);

-- Location: IOIBUF_X60_Y73_N15
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LCCOMB_X59_Y69_N16
\Sig_B[33]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[33]~32_combout\ = \AddnSub~input_o\ $ (\B[33]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[33]~input_o\,
	combout => \Sig_B[33]~32_combout\);

-- Location: IOIBUF_X60_Y73_N22
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X59_Y69_N10
\ArithAdder|Y[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(33) = \ArithAdder|carryIn[33]~32_combout\ $ (\Sig_B[33]~32_combout\ $ (\A[33]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[33]~32_combout\,
	datab => \Sig_B[33]~32_combout\,
	datac => \A[33]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(33));

-- Location: LCCOMB_X59_Y69_N4
\Y[33]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[33]~1_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(33),
	datac => \ExtWord~input_o\,
	datad => \ArithAdder|Y\(31),
	combout => \Y[33]~1_combout\);

-- Location: IOIBUF_X56_Y73_N15
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X59_Y69_N0
\Sig_B[34]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[34]~33_combout\ = \AddnSub~input_o\ $ (\B[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[34]~input_o\,
	combout => \Sig_B[34]~33_combout\);

-- Location: LCCOMB_X59_Y69_N14
\ArithAdder|carryIn[34]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[34]~33_combout\ = (\ArithAdder|carryIn[33]~32_combout\ & ((\Sig_B[33]~32_combout\) # (\A[33]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[33]~32_combout\ & (\Sig_B[33]~32_combout\ & (\A[33]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[33]~32_combout\,
	datab => \Sig_B[33]~32_combout\,
	datac => \A[33]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[34]~33_combout\);

-- Location: LCCOMB_X59_Y69_N18
\ArithAdder|Y[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(34) = \A[34]~input_o\ $ (\Sig_B[34]~33_combout\ $ (\ArithAdder|carryIn[34]~33_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \Sig_B[34]~33_combout\,
	datac => \ArithAdder|carryIn[34]~33_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(34));

-- Location: LCCOMB_X59_Y69_N12
\Y[34]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[34]~2_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ArithAdder|Y\(34),
	datac => \ExtWord~input_o\,
	datad => \ArithAdder|Y\(31),
	combout => \Y[34]~2_combout\);

-- Location: IOIBUF_X56_Y73_N22
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: LCCOMB_X58_Y69_N8
\Sig_B[35]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[35]~34_combout\ = \AddnSub~input_o\ $ (\B[35]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[35]~input_o\,
	combout => \Sig_B[35]~34_combout\);

-- Location: IOIBUF_X60_Y73_N8
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X59_Y69_N30
\ArithAdder|carryIn[35]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[35]~34_combout\ = (\Sig_B[34]~33_combout\ & ((\ArithAdder|carryIn[34]~33_combout\) # (\A[34]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[34]~33_combout\ & (\ArithAdder|carryIn[34]~33_combout\ & (\A[34]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \Sig_B[34]~33_combout\,
	datac => \ArithAdder|carryIn[34]~33_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[35]~34_combout\);

-- Location: LCCOMB_X59_Y69_N24
\ArithAdder|Y[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(35) = \Sig_B[35]~34_combout\ $ (\A[35]~input_o\ $ (\ArithAdder|carryIn[35]~34_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sig_B[35]~34_combout\,
	datab => \A[35]~input_o\,
	datac => \ArithAdder|carryIn[35]~34_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(35));

-- Location: LCCOMB_X59_Y69_N26
\Y[35]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[35]~3_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ArithAdder|Y\(35),
	datac => \ExtWord~input_o\,
	datad => \ArithAdder|Y\(31),
	combout => \Y[35]~3_combout\);

-- Location: LCCOMB_X59_Y69_N20
\ArithAdder|carryIn[36]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[36]~35_combout\ = (\Sig_B[35]~34_combout\ & ((\ArithAdder|carryIn[35]~34_combout\) # (\A[35]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[35]~34_combout\ & (\ArithAdder|carryIn[35]~34_combout\ & (\A[35]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sig_B[35]~34_combout\,
	datab => \A[35]~input_o\,
	datac => \ArithAdder|carryIn[35]~34_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[36]~35_combout\);

-- Location: IOIBUF_X11_Y73_N8
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LCCOMB_X11_Y69_N0
\Sig_B[36]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[36]~35_combout\ = \AddnSub~input_o\ $ (\B[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[36]~input_o\,
	combout => \Sig_B[36]~35_combout\);

-- Location: IOIBUF_X11_Y73_N1
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X11_Y69_N26
\ArithAdder|Y[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(36) = \ArithAdder|carryIn[36]~35_combout\ $ (\Sig_B[36]~35_combout\ $ (\NotA~input_o\ $ (\A[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[36]~35_combout\,
	datab => \Sig_B[36]~35_combout\,
	datac => \NotA~input_o\,
	datad => \A[36]~input_o\,
	combout => \ArithAdder|Y\(36));

-- Location: LCCOMB_X11_Y69_N4
\Y[36]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[36]~4_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(36),
	datab => \ExtWord~input_o\,
	datac => \ArithAdder|Y\(31),
	combout => \Y[36]~4_combout\);

-- Location: LCCOMB_X11_Y69_N6
\ArithAdder|carryIn[37]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[37]~36_combout\ = (\ArithAdder|carryIn[36]~35_combout\ & ((\Sig_B[36]~35_combout\) # (\NotA~input_o\ $ (\A[36]~input_o\)))) # (!\ArithAdder|carryIn[36]~35_combout\ & (\Sig_B[36]~35_combout\ & (\NotA~input_o\ $ (\A[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[36]~35_combout\,
	datab => \Sig_B[36]~35_combout\,
	datac => \NotA~input_o\,
	datad => \A[36]~input_o\,
	combout => \ArithAdder|carryIn[37]~36_combout\);

-- Location: IOIBUF_X13_Y73_N15
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X11_Y69_N8
\Sig_B[37]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[37]~36_combout\ = \AddnSub~input_o\ $ (\B[37]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[37]~input_o\,
	combout => \Sig_B[37]~36_combout\);

-- Location: IOIBUF_X16_Y73_N8
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LCCOMB_X11_Y69_N18
\ArithAdder|Y[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(37) = \ArithAdder|carryIn[37]~36_combout\ $ (\Sig_B[37]~36_combout\ $ (\NotA~input_o\ $ (\A[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[37]~36_combout\,
	datab => \Sig_B[37]~36_combout\,
	datac => \NotA~input_o\,
	datad => \A[37]~input_o\,
	combout => \ArithAdder|Y\(37));

-- Location: LCCOMB_X11_Y69_N28
\Y[37]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[37]~5_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ArithAdder|Y\(37),
	datac => \ArithAdder|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y[37]~5_combout\);

-- Location: LCCOMB_X11_Y69_N30
\ArithAdder|carryIn[38]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[38]~37_combout\ = (\ArithAdder|carryIn[37]~36_combout\ & ((\Sig_B[37]~36_combout\) # (\NotA~input_o\ $ (\A[37]~input_o\)))) # (!\ArithAdder|carryIn[37]~36_combout\ & (\Sig_B[37]~36_combout\ & (\NotA~input_o\ $ (\A[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[37]~36_combout\,
	datab => \Sig_B[37]~36_combout\,
	datac => \NotA~input_o\,
	datad => \A[37]~input_o\,
	combout => \ArithAdder|carryIn[38]~37_combout\);

-- Location: IOIBUF_X13_Y73_N8
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X11_Y69_N24
\Sig_B[38]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[38]~37_combout\ = \AddnSub~input_o\ $ (\B[38]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[38]~input_o\,
	combout => \Sig_B[38]~37_combout\);

-- Location: IOIBUF_X13_Y73_N1
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X11_Y69_N10
\ArithAdder|Y[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(38) = \ArithAdder|carryIn[38]~37_combout\ $ (\Sig_B[38]~37_combout\ $ (\NotA~input_o\ $ (\A[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[38]~37_combout\,
	datab => \Sig_B[38]~37_combout\,
	datac => \NotA~input_o\,
	datad => \A[38]~input_o\,
	combout => \ArithAdder|Y\(38));

-- Location: LCCOMB_X11_Y69_N20
\Y[38]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[38]~6_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(38)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(38),
	datab => \ExtWord~input_o\,
	datac => \ArithAdder|Y\(31),
	combout => \Y[38]~6_combout\);

-- Location: LCCOMB_X11_Y69_N22
\ArithAdder|carryIn[39]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[39]~38_combout\ = (\ArithAdder|carryIn[38]~37_combout\ & ((\Sig_B[38]~37_combout\) # (\NotA~input_o\ $ (\A[38]~input_o\)))) # (!\ArithAdder|carryIn[38]~37_combout\ & (\Sig_B[38]~37_combout\ & (\NotA~input_o\ $ (\A[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[38]~37_combout\,
	datab => \Sig_B[38]~37_combout\,
	datac => \NotA~input_o\,
	datad => \A[38]~input_o\,
	combout => \ArithAdder|carryIn[39]~38_combout\);

-- Location: IOIBUF_X5_Y73_N8
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X5_Y73_N1
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LCCOMB_X7_Y69_N8
\Sig_B[39]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[39]~38_combout\ = \AddnSub~input_o\ $ (\B[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[39]~input_o\,
	combout => \Sig_B[39]~38_combout\);

-- Location: LCCOMB_X7_Y69_N26
\ArithAdder|Y[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(39) = \ArithAdder|carryIn[39]~38_combout\ $ (\A[39]~input_o\ $ (\Sig_B[39]~38_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[39]~38_combout\,
	datab => \A[39]~input_o\,
	datac => \Sig_B[39]~38_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(39));

-- Location: LCCOMB_X11_Y69_N16
\Y[39]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[39]~7_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(39),
	datab => \ExtWord~input_o\,
	datac => \ArithAdder|Y\(31),
	combout => \Y[39]~7_combout\);

-- Location: IOIBUF_X7_Y73_N15
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X7_Y69_N22
\Sig_B[40]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[40]~39_combout\ = \AddnSub~input_o\ $ (\B[40]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[40]~input_o\,
	combout => \Sig_B[40]~39_combout\);

-- Location: LCCOMB_X7_Y69_N20
\ArithAdder|carryIn[40]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[40]~39_combout\ = (\ArithAdder|carryIn[39]~38_combout\ & ((\Sig_B[39]~38_combout\) # (\A[39]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[39]~38_combout\ & (\Sig_B[39]~38_combout\ & (\A[39]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[39]~38_combout\,
	datab => \A[39]~input_o\,
	datac => \Sig_B[39]~38_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[40]~39_combout\);

-- Location: IOIBUF_X3_Y73_N22
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X7_Y69_N16
\ArithAdder|Y[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(40) = \Sig_B[40]~39_combout\ $ (\ArithAdder|carryIn[40]~39_combout\ $ (\A[40]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sig_B[40]~39_combout\,
	datab => \ArithAdder|carryIn[40]~39_combout\,
	datac => \A[40]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(40));

-- Location: LCCOMB_X53_Y69_N24
\Y[40]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[40]~8_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(40)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(40),
	datab => \ExtWord~input_o\,
	datac => \ArithAdder|Y\(31),
	combout => \Y[40]~8_combout\);

-- Location: IOIBUF_X5_Y73_N22
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X7_Y69_N18
\ArithAdder|carryIn[41]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[41]~40_combout\ = (\Sig_B[40]~39_combout\ & ((\ArithAdder|carryIn[40]~39_combout\) # (\A[40]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[40]~39_combout\ & (\ArithAdder|carryIn[40]~39_combout\ & (\A[40]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sig_B[40]~39_combout\,
	datab => \ArithAdder|carryIn[40]~39_combout\,
	datac => \A[40]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[41]~40_combout\);

-- Location: IOIBUF_X1_Y73_N1
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X7_Y69_N4
\Sig_B[41]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[41]~40_combout\ = \AddnSub~input_o\ $ (\B[41]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[41]~input_o\,
	combout => \Sig_B[41]~40_combout\);

-- Location: LCCOMB_X7_Y69_N6
\ArithAdder|Y[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(41) = \A[41]~input_o\ $ (\ArithAdder|carryIn[41]~40_combout\ $ (\Sig_B[41]~40_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \ArithAdder|carryIn[41]~40_combout\,
	datac => \Sig_B[41]~40_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(41));

-- Location: LCCOMB_X53_Y69_N26
\Y[41]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[41]~9_combout\ = (\ExtWord~input_o\ & (\ArithAdder|Y\(31))) # (!\ExtWord~input_o\ & ((\ArithAdder|Y\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(31),
	datab => \ArithAdder|Y\(41),
	datac => \ExtWord~input_o\,
	combout => \Y[41]~9_combout\);

-- Location: IOIBUF_X7_Y73_N22
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X7_Y69_N0
\ArithAdder|carryIn[42]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[42]~41_combout\ = (\ArithAdder|carryIn[41]~40_combout\ & ((\Sig_B[41]~40_combout\) # (\A[41]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[41]~40_combout\ & (\Sig_B[41]~40_combout\ & (\A[41]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \ArithAdder|carryIn[41]~40_combout\,
	datac => \Sig_B[41]~40_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[42]~41_combout\);

-- Location: IOIBUF_X3_Y73_N8
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LCCOMB_X1_Y63_N2
\Sig_B[42]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[42]~41_combout\ = \AddnSub~input_o\ $ (\B[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[42]~input_o\,
	combout => \Sig_B[42]~41_combout\);

-- Location: LCCOMB_X7_Y69_N10
\ArithAdder|Y[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(42) = \A[42]~input_o\ $ (\ArithAdder|carryIn[42]~41_combout\ $ (\Sig_B[42]~41_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \ArithAdder|carryIn[42]~41_combout\,
	datac => \Sig_B[42]~41_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(42));

-- Location: LCCOMB_X11_Y69_N2
\Y[42]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[42]~10_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(42)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ArithAdder|Y\(42),
	datac => \ArithAdder|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y[42]~10_combout\);

-- Location: IOIBUF_X3_Y73_N1
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X7_Y69_N28
\ArithAdder|carryIn[43]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[43]~42_combout\ = (\ArithAdder|carryIn[42]~41_combout\ & ((\Sig_B[42]~41_combout\) # (\A[42]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[42]~41_combout\ & (\Sig_B[42]~41_combout\ & (\A[42]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \ArithAdder|carryIn[42]~41_combout\,
	datac => \Sig_B[42]~41_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[43]~42_combout\);

-- Location: IOIBUF_X0_Y68_N8
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LCCOMB_X7_Y69_N14
\Sig_B[43]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[43]~42_combout\ = \AddnSub~input_o\ $ (\B[43]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[43]~input_o\,
	combout => \Sig_B[43]~42_combout\);

-- Location: LCCOMB_X7_Y69_N24
\ArithAdder|Y[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(43) = \A[43]~input_o\ $ (\ArithAdder|carryIn[43]~42_combout\ $ (\Sig_B[43]~42_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \ArithAdder|carryIn[43]~42_combout\,
	datac => \Sig_B[43]~42_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(43));

-- Location: LCCOMB_X11_Y69_N12
\Y[43]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[43]~11_combout\ = (\ExtWord~input_o\ & (\ArithAdder|Y\(31))) # (!\ExtWord~input_o\ & ((\ArithAdder|Y\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \ArithAdder|Y\(31),
	datad => \ArithAdder|Y\(43),
	combout => \Y[43]~11_combout\);

-- Location: IOIBUF_X0_Y58_N15
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X0_Y68_N1
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X1_Y69_N0
\Sig_B[44]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[44]~43_combout\ = \AddnSub~input_o\ $ (\B[44]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[44]~input_o\,
	combout => \Sig_B[44]~43_combout\);

-- Location: LCCOMB_X7_Y69_N2
\ArithAdder|carryIn[44]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[44]~43_combout\ = (\ArithAdder|carryIn[43]~42_combout\ & ((\Sig_B[43]~42_combout\) # (\A[43]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[43]~42_combout\ & (\Sig_B[43]~42_combout\ & (\A[43]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \ArithAdder|carryIn[43]~42_combout\,
	datac => \Sig_B[43]~42_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[44]~43_combout\);

-- Location: LCCOMB_X1_Y69_N10
\ArithAdder|Y[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(44) = \A[44]~input_o\ $ (\Sig_B[44]~43_combout\ $ (\NotA~input_o\ $ (\ArithAdder|carryIn[44]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \Sig_B[44]~43_combout\,
	datac => \NotA~input_o\,
	datad => \ArithAdder|carryIn[44]~43_combout\,
	combout => \ArithAdder|Y\(44));

-- Location: LCCOMB_X1_Y69_N20
\Y[44]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[44]~12_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(44)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(44),
	datab => \ExtWord~input_o\,
	datac => \ArithAdder|Y\(31),
	combout => \Y[44]~12_combout\);

-- Location: LCCOMB_X1_Y69_N6
\ArithAdder|carryIn[45]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[45]~44_combout\ = (\Sig_B[44]~43_combout\ & ((\ArithAdder|carryIn[44]~43_combout\) # (\A[44]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[44]~43_combout\ & (\ArithAdder|carryIn[44]~43_combout\ & (\A[44]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \Sig_B[44]~43_combout\,
	datac => \NotA~input_o\,
	datad => \ArithAdder|carryIn[44]~43_combout\,
	combout => \ArithAdder|carryIn[45]~44_combout\);

-- Location: IOIBUF_X0_Y65_N15
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LCCOMB_X1_Y69_N8
\Sig_B[45]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[45]~44_combout\ = \AddnSub~input_o\ $ (\B[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[45]~input_o\,
	combout => \Sig_B[45]~44_combout\);

-- Location: IOIBUF_X1_Y73_N22
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X1_Y69_N2
\ArithAdder|Y[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(45) = \ArithAdder|carryIn[45]~44_combout\ $ (\Sig_B[45]~44_combout\ $ (\NotA~input_o\ $ (\A[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[45]~44_combout\,
	datab => \Sig_B[45]~44_combout\,
	datac => \NotA~input_o\,
	datad => \A[45]~input_o\,
	combout => \ArithAdder|Y\(45));

-- Location: LCCOMB_X1_Y69_N28
\Y[45]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[45]~13_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ArithAdder|Y\(45),
	datac => \ArithAdder|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y[45]~13_combout\);

-- Location: LCCOMB_X1_Y69_N30
\ArithAdder|carryIn[46]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[46]~45_combout\ = (\ArithAdder|carryIn[45]~44_combout\ & ((\Sig_B[45]~44_combout\) # (\NotA~input_o\ $ (\A[45]~input_o\)))) # (!\ArithAdder|carryIn[45]~44_combout\ & (\Sig_B[45]~44_combout\ & (\NotA~input_o\ $ (\A[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[45]~44_combout\,
	datab => \Sig_B[45]~44_combout\,
	datac => \NotA~input_o\,
	datad => \A[45]~input_o\,
	combout => \ArithAdder|carryIn[46]~45_combout\);

-- Location: IOIBUF_X0_Y67_N22
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X1_Y69_N24
\Sig_B[46]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[46]~45_combout\ = \AddnSub~input_o\ $ (\B[46]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[46]~input_o\,
	combout => \Sig_B[46]~45_combout\);

-- Location: LCCOMB_X1_Y69_N26
\ArithAdder|Y[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(46) = \ArithAdder|carryIn[46]~45_combout\ $ (\A[46]~input_o\ $ (\NotA~input_o\ $ (\Sig_B[46]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[46]~45_combout\,
	datab => \A[46]~input_o\,
	datac => \NotA~input_o\,
	datad => \Sig_B[46]~45_combout\,
	combout => \ArithAdder|Y\(46));

-- Location: LCCOMB_X1_Y69_N4
\Y[46]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[46]~14_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(46),
	datab => \ExtWord~input_o\,
	datac => \ArithAdder|Y\(31),
	combout => \Y[46]~14_combout\);

-- Location: LCCOMB_X1_Y69_N22
\ArithAdder|carryIn[47]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[47]~46_combout\ = (\ArithAdder|carryIn[46]~45_combout\ & ((\Sig_B[46]~45_combout\) # (\A[46]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[46]~45_combout\ & (\Sig_B[46]~45_combout\ & (\A[46]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[46]~45_combout\,
	datab => \A[46]~input_o\,
	datac => \NotA~input_o\,
	datad => \Sig_B[46]~45_combout\,
	combout => \ArithAdder|carryIn[47]~46_combout\);

-- Location: IOIBUF_X1_Y73_N8
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LCCOMB_X1_Y69_N16
\Sig_B[47]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[47]~46_combout\ = \AddnSub~input_o\ $ (\B[47]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[47]~input_o\,
	combout => \Sig_B[47]~46_combout\);

-- Location: IOIBUF_X0_Y66_N22
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X1_Y69_N18
\ArithAdder|Y[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(47) = \ArithAdder|carryIn[47]~46_combout\ $ (\Sig_B[47]~46_combout\ $ (\NotA~input_o\ $ (\A[47]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[47]~46_combout\,
	datab => \Sig_B[47]~46_combout\,
	datac => \NotA~input_o\,
	datad => \A[47]~input_o\,
	combout => \ArithAdder|Y\(47));

-- Location: LCCOMB_X1_Y49_N16
\Y[47]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[47]~15_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(47),
	datab => \ExtWord~input_o\,
	datad => \ArithAdder|Y\(31),
	combout => \Y[47]~15_combout\);

-- Location: LCCOMB_X1_Y69_N12
\ArithAdder|carryIn[48]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[48]~47_combout\ = (\ArithAdder|carryIn[47]~46_combout\ & ((\Sig_B[47]~46_combout\) # (\NotA~input_o\ $ (\A[47]~input_o\)))) # (!\ArithAdder|carryIn[47]~46_combout\ & (\Sig_B[47]~46_combout\ & (\NotA~input_o\ $ (\A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[47]~46_combout\,
	datab => \Sig_B[47]~46_combout\,
	datac => \NotA~input_o\,
	datad => \A[47]~input_o\,
	combout => \ArithAdder|carryIn[48]~47_combout\);

-- Location: IOIBUF_X47_Y73_N1
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X49_Y69_N24
\Sig_B[48]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[48]~47_combout\ = \AddnSub~input_o\ $ (\B[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[48]~input_o\,
	combout => \Sig_B[48]~47_combout\);

-- Location: LCCOMB_X43_Y69_N24
\ArithAdder|Y[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(48) = \ArithAdder|carryIn[48]~47_combout\ $ (\A[48]~input_o\ $ (\NotA~input_o\ $ (\Sig_B[48]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[48]~47_combout\,
	datab => \A[48]~input_o\,
	datac => \NotA~input_o\,
	datad => \Sig_B[48]~47_combout\,
	combout => \ArithAdder|Y\(48));

-- Location: LCCOMB_X43_Y69_N26
\Y[48]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[48]~16_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ArithAdder|Y\(48),
	datac => \ExtWord~input_o\,
	datad => \ArithAdder|Y\(31),
	combout => \Y[48]~16_combout\);

-- Location: IOIBUF_X42_Y73_N1
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LCCOMB_X43_Y69_N6
\Sig_B[49]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[49]~48_combout\ = \AddnSub~input_o\ $ (\B[49]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[49]~input_o\,
	combout => \Sig_B[49]~48_combout\);

-- Location: LCCOMB_X43_Y69_N4
\ArithAdder|carryIn[49]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[49]~48_combout\ = (\ArithAdder|carryIn[48]~47_combout\ & ((\Sig_B[48]~47_combout\) # (\A[48]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[48]~47_combout\ & (\Sig_B[48]~47_combout\ & (\A[48]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[48]~47_combout\,
	datab => \A[48]~input_o\,
	datac => \NotA~input_o\,
	datad => \Sig_B[48]~47_combout\,
	combout => \ArithAdder|carryIn[49]~48_combout\);

-- Location: IOIBUF_X45_Y73_N8
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LCCOMB_X43_Y69_N16
\ArithAdder|Y[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(49) = \Sig_B[49]~48_combout\ $ (\ArithAdder|carryIn[49]~48_combout\ $ (\NotA~input_o\ $ (\A[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sig_B[49]~48_combout\,
	datab => \ArithAdder|carryIn[49]~48_combout\,
	datac => \NotA~input_o\,
	datad => \A[49]~input_o\,
	combout => \ArithAdder|Y\(49));

-- Location: LCCOMB_X43_Y69_N2
\Y[49]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[49]~17_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ArithAdder|Y\(49),
	datac => \ExtWord~input_o\,
	datad => \ArithAdder|Y\(31),
	combout => \Y[49]~17_combout\);

-- Location: IOIBUF_X40_Y73_N8
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X43_Y69_N14
\Sig_B[50]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[50]~49_combout\ = \AddnSub~input_o\ $ (\B[50]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[50]~input_o\,
	combout => \Sig_B[50]~49_combout\);

-- Location: LCCOMB_X43_Y69_N20
\ArithAdder|carryIn[50]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[50]~49_combout\ = (\Sig_B[49]~48_combout\ & ((\ArithAdder|carryIn[49]~48_combout\) # (\NotA~input_o\ $ (\A[49]~input_o\)))) # (!\Sig_B[49]~48_combout\ & (\ArithAdder|carryIn[49]~48_combout\ & (\NotA~input_o\ $ (\A[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sig_B[49]~48_combout\,
	datab => \ArithAdder|carryIn[49]~48_combout\,
	datac => \NotA~input_o\,
	datad => \A[49]~input_o\,
	combout => \ArithAdder|carryIn[50]~49_combout\);

-- Location: LCCOMB_X43_Y69_N0
\ArithAdder|Y[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(50) = \A[50]~input_o\ $ (\Sig_B[50]~49_combout\ $ (\NotA~input_o\ $ (\ArithAdder|carryIn[50]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \Sig_B[50]~49_combout\,
	datac => \NotA~input_o\,
	datad => \ArithAdder|carryIn[50]~49_combout\,
	combout => \ArithAdder|Y\(50));

-- Location: LCCOMB_X43_Y69_N18
\Y[50]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[50]~18_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(50)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ArithAdder|Y\(50),
	datac => \ExtWord~input_o\,
	datad => \ArithAdder|Y\(31),
	combout => \Y[50]~18_combout\);

-- Location: IOIBUF_X72_Y73_N8
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X43_Y69_N22
\Sig_B[51]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[51]~50_combout\ = \AddnSub~input_o\ $ (\B[51]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[51]~input_o\,
	combout => \Sig_B[51]~50_combout\);

-- Location: IOIBUF_X40_Y73_N1
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X43_Y69_N28
\ArithAdder|carryIn[51]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[51]~50_combout\ = (\Sig_B[50]~49_combout\ & ((\ArithAdder|carryIn[50]~49_combout\) # (\A[50]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[50]~49_combout\ & (\ArithAdder|carryIn[50]~49_combout\ & (\A[50]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \Sig_B[50]~49_combout\,
	datac => \NotA~input_o\,
	datad => \ArithAdder|carryIn[50]~49_combout\,
	combout => \ArithAdder|carryIn[51]~50_combout\);

-- Location: LCCOMB_X43_Y69_N8
\ArithAdder|Y[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(51) = \Sig_B[51]~50_combout\ $ (\A[51]~input_o\ $ (\NotA~input_o\ $ (\ArithAdder|carryIn[51]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sig_B[51]~50_combout\,
	datab => \A[51]~input_o\,
	datac => \NotA~input_o\,
	datad => \ArithAdder|carryIn[51]~50_combout\,
	combout => \ArithAdder|Y\(51));

-- Location: LCCOMB_X43_Y69_N10
\Y[51]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[51]~19_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ArithAdder|Y\(51),
	datac => \ExtWord~input_o\,
	datad => \ArithAdder|Y\(31),
	combout => \Y[51]~19_combout\);

-- Location: IOIBUF_X31_Y73_N1
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LCCOMB_X32_Y69_N24
\Sig_B[52]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[52]~51_combout\ = \B[52]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[52]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Sig_B[52]~51_combout\);

-- Location: LCCOMB_X43_Y69_N12
\ArithAdder|carryIn[52]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[52]~51_combout\ = (\Sig_B[51]~50_combout\ & ((\ArithAdder|carryIn[51]~50_combout\) # (\A[51]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[51]~50_combout\ & (\ArithAdder|carryIn[51]~50_combout\ & (\A[51]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sig_B[51]~50_combout\,
	datab => \A[51]~input_o\,
	datac => \NotA~input_o\,
	datad => \ArithAdder|carryIn[51]~50_combout\,
	combout => \ArithAdder|carryIn[52]~51_combout\);

-- Location: LCCOMB_X32_Y69_N26
\ArithAdder|Y[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(52) = \A[52]~input_o\ $ (\Sig_B[52]~51_combout\ $ (\ArithAdder|carryIn[52]~51_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \Sig_B[52]~51_combout\,
	datac => \ArithAdder|carryIn[52]~51_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(52));

-- Location: LCCOMB_X32_Y69_N28
\Y[52]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[52]~20_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(52)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \ArithAdder|Y\(52),
	datad => \ArithAdder|Y\(31),
	combout => \Y[52]~20_combout\);

-- Location: LCCOMB_X32_Y69_N6
\ArithAdder|carryIn[53]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[53]~52_combout\ = (\Sig_B[52]~51_combout\ & ((\ArithAdder|carryIn[52]~51_combout\) # (\A[52]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[52]~51_combout\ & (\ArithAdder|carryIn[52]~51_combout\ & (\A[52]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \Sig_B[52]~51_combout\,
	datac => \ArithAdder|carryIn[52]~51_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[53]~52_combout\);

-- Location: IOIBUF_X33_Y73_N8
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X32_Y69_N0
\Sig_B[53]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[53]~52_combout\ = \AddnSub~input_o\ $ (\B[53]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[53]~input_o\,
	combout => \Sig_B[53]~52_combout\);

-- Location: IOIBUF_X31_Y0_N1
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X32_Y69_N18
\ArithAdder|Y[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(53) = \ArithAdder|carryIn[53]~52_combout\ $ (\Sig_B[53]~52_combout\ $ (\A[53]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[53]~52_combout\,
	datab => \Sig_B[53]~52_combout\,
	datac => \A[53]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(53));

-- Location: LCCOMB_X32_Y69_N20
\Y[53]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[53]~21_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ArithAdder|Y\(53),
	datac => \ExtWord~input_o\,
	datad => \ArithAdder|Y\(31),
	combout => \Y[53]~21_combout\);

-- Location: IOIBUF_X35_Y73_N22
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LCCOMB_X32_Y69_N14
\ArithAdder|carryIn[54]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[54]~53_combout\ = (\ArithAdder|carryIn[53]~52_combout\ & ((\Sig_B[53]~52_combout\) # (\A[53]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[53]~52_combout\ & (\Sig_B[53]~52_combout\ & (\A[53]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[53]~52_combout\,
	datab => \Sig_B[53]~52_combout\,
	datac => \A[53]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[54]~53_combout\);

-- Location: IOIBUF_X38_Y73_N22
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X32_Y69_N8
\Sig_B[54]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[54]~53_combout\ = \AddnSub~input_o\ $ (\B[54]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[54]~input_o\,
	combout => \Sig_B[54]~53_combout\);

-- Location: LCCOMB_X32_Y69_N10
\ArithAdder|Y[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(54) = \A[54]~input_o\ $ (\ArithAdder|carryIn[54]~53_combout\ $ (\Sig_B[54]~53_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \ArithAdder|carryIn[54]~53_combout\,
	datac => \Sig_B[54]~53_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(54));

-- Location: LCCOMB_X32_Y69_N12
\Y[54]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[54]~22_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(54)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(54),
	datac => \ExtWord~input_o\,
	datad => \ArithAdder|Y\(31),
	combout => \Y[54]~22_combout\);

-- Location: IOIBUF_X33_Y73_N1
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X32_Y69_N16
\Sig_B[55]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[55]~54_combout\ = \AddnSub~input_o\ $ (\B[55]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[55]~input_o\,
	combout => \Sig_B[55]~54_combout\);

-- Location: LCCOMB_X32_Y69_N22
\ArithAdder|carryIn[55]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[55]~54_combout\ = (\ArithAdder|carryIn[54]~53_combout\ & ((\Sig_B[54]~53_combout\) # (\A[54]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[54]~53_combout\ & (\Sig_B[54]~53_combout\ & (\A[54]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \ArithAdder|carryIn[54]~53_combout\,
	datac => \Sig_B[54]~53_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[55]~54_combout\);

-- Location: LCCOMB_X32_Y69_N2
\ArithAdder|Y[55]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(55) = \A[55]~input_o\ $ (\Sig_B[55]~54_combout\ $ (\ArithAdder|carryIn[55]~54_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \Sig_B[55]~54_combout\,
	datac => \ArithAdder|carryIn[55]~54_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(55));

-- Location: LCCOMB_X29_Y69_N24
\Y[55]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[55]~23_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(55),
	datab => \ExtWord~input_o\,
	datad => \ArithAdder|Y\(31),
	combout => \Y[55]~23_combout\);

-- Location: IOIBUF_X29_Y73_N8
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X29_Y69_N2
\Sig_B[56]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[56]~55_combout\ = \AddnSub~input_o\ $ (\B[56]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[56]~input_o\,
	combout => \Sig_B[56]~55_combout\);

-- Location: LCCOMB_X32_Y69_N4
\ArithAdder|carryIn[56]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[56]~55_combout\ = (\Sig_B[55]~54_combout\ & ((\ArithAdder|carryIn[55]~54_combout\) # (\A[55]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[55]~54_combout\ & (\ArithAdder|carryIn[55]~54_combout\ & (\A[55]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \Sig_B[55]~54_combout\,
	datac => \ArithAdder|carryIn[55]~54_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[56]~55_combout\);

-- Location: LCCOMB_X29_Y69_N4
\ArithAdder|Y[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(56) = \A[56]~input_o\ $ (\Sig_B[56]~55_combout\ $ (\NotA~input_o\ $ (\ArithAdder|carryIn[56]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \Sig_B[56]~55_combout\,
	datac => \NotA~input_o\,
	datad => \ArithAdder|carryIn[56]~55_combout\,
	combout => \ArithAdder|Y\(56));

-- Location: LCCOMB_X29_Y69_N30
\Y[56]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[56]~24_combout\ = (\ExtWord~input_o\ & (\ArithAdder|Y\(31))) # (!\ExtWord~input_o\ & ((\ArithAdder|Y\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(31),
	datab => \ArithAdder|Y\(56),
	datad => \ExtWord~input_o\,
	combout => \Y[56]~24_combout\);

-- Location: IOIBUF_X25_Y73_N15
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LCCOMB_X29_Y69_N8
\ArithAdder|carryIn[57]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[57]~56_combout\ = (\Sig_B[56]~55_combout\ & ((\ArithAdder|carryIn[56]~55_combout\) # (\A[56]~input_o\ $ (\NotA~input_o\)))) # (!\Sig_B[56]~55_combout\ & (\ArithAdder|carryIn[56]~55_combout\ & (\A[56]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \Sig_B[56]~55_combout\,
	datac => \NotA~input_o\,
	datad => \ArithAdder|carryIn[56]~55_combout\,
	combout => \ArithAdder|carryIn[57]~56_combout\);

-- Location: IOIBUF_X0_Y46_N15
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X1_Y46_N0
\Sig_B[57]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[57]~56_combout\ = \B[57]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[57]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Sig_B[57]~56_combout\);

-- Location: LCCOMB_X29_Y69_N26
\ArithAdder|Y[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(57) = \A[57]~input_o\ $ (\ArithAdder|carryIn[57]~56_combout\ $ (\NotA~input_o\ $ (\Sig_B[57]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \ArithAdder|carryIn[57]~56_combout\,
	datac => \NotA~input_o\,
	datad => \Sig_B[57]~56_combout\,
	combout => \ArithAdder|Y\(57));

-- Location: LCCOMB_X29_Y69_N28
\Y[57]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[57]~25_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(57),
	datab => \ExtWord~input_o\,
	datad => \ArithAdder|Y\(31),
	combout => \Y[57]~25_combout\);

-- Location: LCCOMB_X29_Y69_N22
\ArithAdder|carryIn[58]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[58]~57_combout\ = (\ArithAdder|carryIn[57]~56_combout\ & ((\Sig_B[57]~56_combout\) # (\A[57]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[57]~56_combout\ & (\Sig_B[57]~56_combout\ & (\A[57]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \ArithAdder|carryIn[57]~56_combout\,
	datac => \NotA~input_o\,
	datad => \Sig_B[57]~56_combout\,
	combout => \ArithAdder|carryIn[58]~57_combout\);

-- Location: IOIBUF_X27_Y73_N8
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LCCOMB_X49_Y69_N26
\Sig_B[58]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[58]~57_combout\ = \AddnSub~input_o\ $ (\B[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[58]~input_o\,
	combout => \Sig_B[58]~57_combout\);

-- Location: LCCOMB_X29_Y69_N0
\ArithAdder|Y[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(58) = \ArithAdder|carryIn[58]~57_combout\ $ (\A[58]~input_o\ $ (\NotA~input_o\ $ (\Sig_B[58]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[58]~57_combout\,
	datab => \A[58]~input_o\,
	datac => \NotA~input_o\,
	datad => \Sig_B[58]~57_combout\,
	combout => \ArithAdder|Y\(58));

-- Location: LCCOMB_X29_Y69_N10
\Y[58]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[58]~26_combout\ = (\ExtWord~input_o\ & (\ArithAdder|Y\(31))) # (!\ExtWord~input_o\ & ((\ArithAdder|Y\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(31),
	datab => \ArithAdder|Y\(58),
	datad => \ExtWord~input_o\,
	combout => \Y[58]~26_combout\);

-- Location: LCCOMB_X29_Y69_N12
\ArithAdder|carryIn[59]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[59]~58_combout\ = (\ArithAdder|carryIn[58]~57_combout\ & ((\Sig_B[58]~57_combout\) # (\A[58]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[58]~57_combout\ & (\Sig_B[58]~57_combout\ & (\A[58]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[58]~57_combout\,
	datab => \A[58]~input_o\,
	datac => \NotA~input_o\,
	datad => \Sig_B[58]~57_combout\,
	combout => \ArithAdder|carryIn[59]~58_combout\);

-- Location: IOIBUF_X0_Y31_N15
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X29_Y69_N6
\Sig_B[59]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[59]~58_combout\ = \AddnSub~input_o\ $ (\B[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[59]~input_o\,
	combout => \Sig_B[59]~58_combout\);

-- Location: LCCOMB_X29_Y69_N16
\ArithAdder|Y[59]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(59) = \ArithAdder|carryIn[59]~58_combout\ $ (\A[59]~input_o\ $ (\NotA~input_o\ $ (\Sig_B[59]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[59]~58_combout\,
	datab => \A[59]~input_o\,
	datac => \NotA~input_o\,
	datad => \Sig_B[59]~58_combout\,
	combout => \ArithAdder|Y\(59));

-- Location: LCCOMB_X29_Y69_N18
\Y[59]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[59]~27_combout\ = (\ExtWord~input_o\ & (\ArithAdder|Y\(31))) # (!\ExtWord~input_o\ & ((\ArithAdder|Y\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(31),
	datab => \ArithAdder|Y\(59),
	datad => \ExtWord~input_o\,
	combout => \Y[59]~27_combout\);

-- Location: LCCOMB_X29_Y69_N20
\ArithAdder|carryIn[60]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[60]~59_combout\ = (\ArithAdder|carryIn[59]~58_combout\ & ((\Sig_B[59]~58_combout\) # (\A[59]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[59]~58_combout\ & (\Sig_B[59]~58_combout\ & (\A[59]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[59]~58_combout\,
	datab => \A[59]~input_o\,
	datac => \NotA~input_o\,
	datad => \Sig_B[59]~58_combout\,
	combout => \ArithAdder|carryIn[60]~59_combout\);

-- Location: IOIBUF_X54_Y73_N8
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X53_Y69_N20
\Sig_B[60]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[60]~59_combout\ = \AddnSub~input_o\ $ (\B[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[60]~input_o\,
	combout => \Sig_B[60]~59_combout\);

-- Location: IOIBUF_X52_Y73_N22
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X53_Y69_N22
\ArithAdder|Y[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y\(60) = \ArithAdder|carryIn[60]~59_combout\ $ (\Sig_B[60]~59_combout\ $ (\A[60]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[60]~59_combout\,
	datab => \Sig_B[60]~59_combout\,
	datac => \A[60]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y\(60));

-- Location: LCCOMB_X53_Y69_N0
\Y[60]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[60]~28_combout\ = (\ExtWord~input_o\ & ((\ArithAdder|Y\(31)))) # (!\ExtWord~input_o\ & (\ArithAdder|Y\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(60),
	datab => \ExtWord~input_o\,
	datac => \ArithAdder|Y\(31),
	combout => \Y[60]~28_combout\);

-- Location: IOIBUF_X54_Y73_N1
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LCCOMB_X53_Y69_N4
\ArithAdder|Y[61]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y[61]~1_combout\ = \B[61]~input_o\ $ (\AddnSub~input_o\ $ (\A[61]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[61]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[61]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y[61]~1_combout\);

-- Location: LCCOMB_X53_Y69_N2
\ArithAdder|carryIn[61]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[61]~60_combout\ = (\ArithAdder|carryIn[60]~59_combout\ & ((\Sig_B[60]~59_combout\) # (\A[60]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[60]~59_combout\ & (\Sig_B[60]~59_combout\ & (\A[60]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|carryIn[60]~59_combout\,
	datab => \Sig_B[60]~59_combout\,
	datac => \A[60]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|carryIn[61]~60_combout\);

-- Location: LCCOMB_X53_Y69_N6
\Y[61]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[61]~29_combout\ = (\ExtWord~input_o\ & (\ArithAdder|Y\(31))) # (!\ExtWord~input_o\ & ((\ArithAdder|Y[61]~1_combout\ $ (\ArithAdder|carryIn[61]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(31),
	datab => \ArithAdder|Y[61]~1_combout\,
	datac => \ExtWord~input_o\,
	datad => \ArithAdder|carryIn[61]~60_combout\,
	combout => \Y[61]~29_combout\);

-- Location: IOIBUF_X58_Y73_N1
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X53_Y69_N28
\ArithAdder|Y[62]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Y[62]~2_combout\ = \A[62]~input_o\ $ (\B[62]~input_o\ $ (\AddnSub~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \B[62]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Y[62]~2_combout\);

-- Location: LCCOMB_X53_Y69_N8
\Sig_B[61]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[61]~60_combout\ = \AddnSub~input_o\ $ (\B[61]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[61]~input_o\,
	combout => \Sig_B[61]~60_combout\);

-- Location: LCCOMB_X53_Y69_N18
\ArithAdder|carryIn[62]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[62]~61_combout\ = (\Sig_B[61]~60_combout\ & ((\ArithAdder|carryIn[61]~60_combout\) # (\NotA~input_o\ $ (\A[61]~input_o\)))) # (!\Sig_B[61]~60_combout\ & (\ArithAdder|carryIn[61]~60_combout\ & (\NotA~input_o\ $ (\A[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \Sig_B[61]~60_combout\,
	datac => \A[61]~input_o\,
	datad => \ArithAdder|carryIn[61]~60_combout\,
	combout => \ArithAdder|carryIn[62]~61_combout\);

-- Location: LCCOMB_X53_Y69_N14
\Y[62]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[62]~30_combout\ = (\ExtWord~input_o\ & (\ArithAdder|Y\(31))) # (!\ExtWord~input_o\ & ((\ArithAdder|Y[62]~2_combout\ $ (\ArithAdder|carryIn[62]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(31),
	datab => \ArithAdder|Y[62]~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \ArithAdder|carryIn[62]~61_combout\,
	combout => \Y[62]~30_combout\);

-- Location: LCCOMB_X53_Y69_N16
\Sig_B[62]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[62]~61_combout\ = \AddnSub~input_o\ $ (\B[62]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[62]~input_o\,
	combout => \Sig_B[62]~61_combout\);

-- Location: LCCOMB_X53_Y69_N10
\ArithAdder|carryIn[63]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|carryIn[63]~62_combout\ = (\ArithAdder|carryIn[62]~61_combout\ & ((\Sig_B[62]~61_combout\) # (\NotA~input_o\ $ (\A[62]~input_o\)))) # (!\ArithAdder|carryIn[62]~61_combout\ & (\Sig_B[62]~61_combout\ & (\NotA~input_o\ $ (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \ArithAdder|carryIn[62]~61_combout\,
	datac => \A[62]~input_o\,
	datad => \Sig_B[62]~61_combout\,
	combout => \ArithAdder|carryIn[63]~62_combout\);

-- Location: IOIBUF_X65_Y73_N22
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LCCOMB_X65_Y72_N16
\ArithAdder|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|s~0_combout\ = \A[63]~input_o\ $ (\AddnSub~input_o\ $ (\B[63]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[63]~input_o\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|s~0_combout\);

-- Location: LCCOMB_X23_Y69_N14
\Y[63]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[63]~31_combout\ = (\ExtWord~input_o\ & (\ArithAdder|Y\(31))) # (!\ExtWord~input_o\ & ((\ArithAdder|carryIn[63]~62_combout\ $ (\ArithAdder|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(31),
	datab => \ArithAdder|carryIn[63]~62_combout\,
	datac => \ArithAdder|s~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y[63]~31_combout\);

-- Location: LCCOMB_X66_Y69_N26
\Sig_B[63]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sig_B[63]~62_combout\ = \AddnSub~input_o\ $ (\B[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[63]~input_o\,
	combout => \Sig_B[63]~62_combout\);

-- Location: LCCOMB_X66_Y69_N20
\ArithAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Cout~0_combout\ = (\ArithAdder|carryIn[63]~62_combout\ & ((\Sig_B[63]~62_combout\) # (\A[63]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[63]~62_combout\ & (\Sig_B[63]~62_combout\ & (\A[63]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \ArithAdder|carryIn[63]~62_combout\,
	datac => \Sig_B[63]~62_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Cout~0_combout\);

-- Location: LCCOMB_X66_Y69_N18
\ArithAdder|Ovfl\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithAdder|Ovfl~combout\ = (\ArithAdder|carryIn[63]~62_combout\ & (!\Sig_B[63]~62_combout\ & (\A[63]~input_o\ $ (!\NotA~input_o\)))) # (!\ArithAdder|carryIn[63]~62_combout\ & (\Sig_B[63]~62_combout\ & (\A[63]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \ArithAdder|carryIn[63]~62_combout\,
	datac => \Sig_B[63]~62_combout\,
	datad => \NotA~input_o\,
	combout => \ArithAdder|Ovfl~combout\);

-- Location: LCCOMB_X1_Y49_N2
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\ArithAdder|Y\(6) & (!\ArithAdder|Y\(4) & (!\ArithAdder|Y\(5) & !\ArithAdder|Y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(6),
	datab => \ArithAdder|Y\(4),
	datac => \ArithAdder|Y\(5),
	datad => \ArithAdder|Y\(7),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X1_Y63_N20
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\ArithAdder|Y\(13) & (!\ArithAdder|Y\(12) & (!\ArithAdder|Y\(15) & !\ArithAdder|Y\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(13),
	datab => \ArithAdder|Y\(12),
	datac => \ArithAdder|Y\(15),
	datad => \ArithAdder|Y\(14),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X1_Y55_N14
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\ArithAdder|Y\(10) & (!\ArithAdder|Y\(8) & (!\ArithAdder|Y\(9) & !\ArithAdder|Y\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(10),
	datab => \ArithAdder|Y\(8),
	datac => \ArithAdder|Y\(9),
	datad => \ArithAdder|Y\(11),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X23_Y69_N8
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\ArithAdder|Y\(3) & !\ArithAdder|Y\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(3),
	datad => \ArithAdder|Y\(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X23_Y69_N2
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\ArithAdder|Y\(1) & (\Equal0~0_combout\ & (\ArithAdder|s~0_combout\ $ (!\ArithAdder|carryIn[63]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(1),
	datab => \Equal0~0_combout\,
	datac => \ArithAdder|s~0_combout\,
	datad => \ArithAdder|carryIn[63]~62_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y63_N22
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~2_combout\ & (\Equal0~4_combout\ & (\Equal0~3_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X7_Y69_N12
\Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (!\ArithAdder|Y\(42) & (!\ArithAdder|Y\(43) & (!\ArithAdder|Y\(40) & !\ArithAdder|Y\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(42),
	datab => \ArithAdder|Y\(43),
	datac => \ArithAdder|Y\(40),
	datad => \ArithAdder|Y\(41),
	combout => \Equal0~13_combout\);

-- Location: LCCOMB_X11_Y69_N14
\Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (!\ArithAdder|Y\(36) & (!\ArithAdder|Y\(37) & (!\ArithAdder|Y\(39) & !\ArithAdder|Y\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(36),
	datab => \ArithAdder|Y\(37),
	datac => \ArithAdder|Y\(39),
	datad => \ArithAdder|Y\(38),
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X1_Y69_N14
\Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = (!\ArithAdder|Y\(44) & (!\ArithAdder|Y\(45) & (!\ArithAdder|Y\(46) & !\ArithAdder|Y\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(44),
	datab => \ArithAdder|Y\(45),
	datac => \ArithAdder|Y\(46),
	datad => \ArithAdder|Y\(47),
	combout => \Equal0~14_combout\);

-- Location: LCCOMB_X59_Y69_N22
\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!\ArithAdder|Y\(33) & (!\ArithAdder|Y\(35) & (!\ArithAdder|Y\(34) & !\ArithAdder|Y\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(33),
	datab => \ArithAdder|Y\(35),
	datac => \ArithAdder|Y\(34),
	datad => \ArithAdder|Y\(32),
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X7_Y69_N30
\Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~15_combout\ = (\Equal0~13_combout\ & (\Equal0~12_combout\ & (\Equal0~14_combout\ & \Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~13_combout\,
	datab => \Equal0~12_combout\,
	datac => \Equal0~14_combout\,
	datad => \Equal0~11_combout\,
	combout => \Equal0~15_combout\);

-- Location: LCCOMB_X29_Y69_N14
\Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~18_combout\ = (!\ArithAdder|Y\(57) & (!\ArithAdder|Y\(59) & (!\ArithAdder|Y\(56) & !\ArithAdder|Y\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(57),
	datab => \ArithAdder|Y\(59),
	datac => \ArithAdder|Y\(56),
	datad => \ArithAdder|Y\(58),
	combout => \Equal0~18_combout\);

-- Location: LCCOMB_X43_Y69_N30
\Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~16_combout\ = (!\ArithAdder|Y\(49) & (!\ArithAdder|Y\(50) & (!\ArithAdder|Y\(51) & !\ArithAdder|Y\(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(49),
	datab => \ArithAdder|Y\(50),
	datac => \ArithAdder|Y\(51),
	datad => \ArithAdder|Y\(48),
	combout => \Equal0~16_combout\);

-- Location: LCCOMB_X53_Y69_N12
\Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~19_combout\ = (!\ArithAdder|Y\(60) & (\ArithAdder|Y[61]~1_combout\ $ (!\ArithAdder|carryIn[61]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(60),
	datac => \ArithAdder|Y[61]~1_combout\,
	datad => \ArithAdder|carryIn[61]~60_combout\,
	combout => \Equal0~19_combout\);

-- Location: LCCOMB_X53_Y69_N30
\Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~20_combout\ = (!\ArithAdder|Y[0]~0_combout\ & (\Equal0~19_combout\ & (\ArithAdder|carryIn[62]~61_combout\ $ (!\ArithAdder|Y[62]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y[0]~0_combout\,
	datab => \ArithAdder|carryIn[62]~61_combout\,
	datac => \Equal0~19_combout\,
	datad => \ArithAdder|Y[62]~2_combout\,
	combout => \Equal0~20_combout\);

-- Location: LCCOMB_X32_Y69_N30
\Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~17_combout\ = (!\ArithAdder|Y\(54) & (!\ArithAdder|Y\(53) & (!\ArithAdder|Y\(52) & !\ArithAdder|Y\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(54),
	datab => \ArithAdder|Y\(53),
	datac => \ArithAdder|Y\(52),
	datad => \ArithAdder|Y\(55),
	combout => \Equal0~17_combout\);

-- Location: LCCOMB_X9_Y68_N0
\Equal0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~21_combout\ = (\Equal0~18_combout\ & (\Equal0~16_combout\ & (\Equal0~20_combout\ & \Equal0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~18_combout\,
	datab => \Equal0~16_combout\,
	datac => \Equal0~20_combout\,
	datad => \Equal0~17_combout\,
	combout => \Equal0~21_combout\);

-- Location: LCCOMB_X1_Y46_N18
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\ArithAdder|Y\(19) & (!\ArithAdder|Y\(16) & (!\ArithAdder|Y\(18) & !\ArithAdder|Y\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(19),
	datab => \ArithAdder|Y\(16),
	datac => \ArithAdder|Y\(18),
	datad => \ArithAdder|Y\(17),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X66_Y69_N14
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\ArithAdder|Y\(31) & (!\ArithAdder|Y\(30) & (!\ArithAdder|Y\(28) & !\ArithAdder|Y\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(31),
	datab => \ArithAdder|Y\(30),
	datac => \ArithAdder|Y\(28),
	datad => \ArithAdder|Y\(29),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X77_Y69_N8
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\ArithAdder|Y\(22) & (!\ArithAdder|Y\(23) & (!\ArithAdder|Y\(20) & !\ArithAdder|Y\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(22),
	datab => \ArithAdder|Y\(23),
	datac => \ArithAdder|Y\(20),
	datad => \ArithAdder|Y\(21),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X84_Y69_N14
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\ArithAdder|Y\(26) & (!\ArithAdder|Y\(27) & (!\ArithAdder|Y\(24) & !\ArithAdder|Y\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithAdder|Y\(26),
	datab => \ArithAdder|Y\(27),
	datac => \ArithAdder|Y\(24),
	datad => \ArithAdder|Y\(25),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X66_Y69_N24
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~6_combout\ & (\Equal0~9_combout\ & (\Equal0~7_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X1_Y63_N8
\Equal0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~22_combout\ = (\Equal0~5_combout\ & (\Equal0~15_combout\ & (\Equal0~21_combout\ & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~15_combout\,
	datac => \Equal0~21_combout\,
	datad => \Equal0~10_combout\,
	combout => \Equal0~22_combout\);

-- Location: LCCOMB_X66_Y69_N4
\AltB~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AltB~2_combout\ = (\ArithAdder|carryIn[63]~62_combout\ & (\Sig_B[63]~62_combout\ & (\A[63]~input_o\ $ (\NotA~input_o\)))) # (!\ArithAdder|carryIn[63]~62_combout\ & ((\Sig_B[63]~62_combout\) # (\A[63]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \ArithAdder|carryIn[63]~62_combout\,
	datac => \Sig_B[63]~62_combout\,
	datad => \NotA~input_o\,
	combout => \AltB~2_combout\);

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;

ww_Y(8) <= \Y[8]~output_o\;

ww_Y(9) <= \Y[9]~output_o\;

ww_Y(10) <= \Y[10]~output_o\;

ww_Y(11) <= \Y[11]~output_o\;

ww_Y(12) <= \Y[12]~output_o\;

ww_Y(13) <= \Y[13]~output_o\;

ww_Y(14) <= \Y[14]~output_o\;

ww_Y(15) <= \Y[15]~output_o\;

ww_Y(16) <= \Y[16]~output_o\;

ww_Y(17) <= \Y[17]~output_o\;

ww_Y(18) <= \Y[18]~output_o\;

ww_Y(19) <= \Y[19]~output_o\;

ww_Y(20) <= \Y[20]~output_o\;

ww_Y(21) <= \Y[21]~output_o\;

ww_Y(22) <= \Y[22]~output_o\;

ww_Y(23) <= \Y[23]~output_o\;

ww_Y(24) <= \Y[24]~output_o\;

ww_Y(25) <= \Y[25]~output_o\;

ww_Y(26) <= \Y[26]~output_o\;

ww_Y(27) <= \Y[27]~output_o\;

ww_Y(28) <= \Y[28]~output_o\;

ww_Y(29) <= \Y[29]~output_o\;

ww_Y(30) <= \Y[30]~output_o\;

ww_Y(31) <= \Y[31]~output_o\;

ww_Y(32) <= \Y[32]~output_o\;

ww_Y(33) <= \Y[33]~output_o\;

ww_Y(34) <= \Y[34]~output_o\;

ww_Y(35) <= \Y[35]~output_o\;

ww_Y(36) <= \Y[36]~output_o\;

ww_Y(37) <= \Y[37]~output_o\;

ww_Y(38) <= \Y[38]~output_o\;

ww_Y(39) <= \Y[39]~output_o\;

ww_Y(40) <= \Y[40]~output_o\;

ww_Y(41) <= \Y[41]~output_o\;

ww_Y(42) <= \Y[42]~output_o\;

ww_Y(43) <= \Y[43]~output_o\;

ww_Y(44) <= \Y[44]~output_o\;

ww_Y(45) <= \Y[45]~output_o\;

ww_Y(46) <= \Y[46]~output_o\;

ww_Y(47) <= \Y[47]~output_o\;

ww_Y(48) <= \Y[48]~output_o\;

ww_Y(49) <= \Y[49]~output_o\;

ww_Y(50) <= \Y[50]~output_o\;

ww_Y(51) <= \Y[51]~output_o\;

ww_Y(52) <= \Y[52]~output_o\;

ww_Y(53) <= \Y[53]~output_o\;

ww_Y(54) <= \Y[54]~output_o\;

ww_Y(55) <= \Y[55]~output_o\;

ww_Y(56) <= \Y[56]~output_o\;

ww_Y(57) <= \Y[57]~output_o\;

ww_Y(58) <= \Y[58]~output_o\;

ww_Y(59) <= \Y[59]~output_o\;

ww_Y(60) <= \Y[60]~output_o\;

ww_Y(61) <= \Y[61]~output_o\;

ww_Y(62) <= \Y[62]~output_o\;

ww_Y(63) <= \Y[63]~output_o\;

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;

ww_Zero <= \Zero~output_o\;

ww_AltB <= \AltB~output_o\;

ww_AltBu <= \AltBu~output_o\;
END structure;


