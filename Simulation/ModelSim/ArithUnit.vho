-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/09/2022 09:14:48"

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
	AddY : BUFFER std_logic_vector(63 DOWNTO 0);
	Y : BUFFER std_logic_vector(63 DOWNTO 0);
	AddnSub : IN std_logic;
	ExtWord : IN std_logic;
	Cout : BUFFER std_logic;
	Ovfl : BUFFER std_logic;
	Zero : BUFFER std_logic;
	AltB : BUFFER std_logic;
	AltBu : BUFFER std_logic
	);
END ArithUnit;

-- Design Ports Information
-- AddY[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[2]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[4]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[5]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[6]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[7]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[8]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[9]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[10]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[11]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[12]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[13]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[14]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[15]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[16]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[17]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[18]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[19]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[20]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[21]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[22]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[23]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[24]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[25]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[26]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[27]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[28]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[29]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[30]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[31]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[32]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[33]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[34]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[35]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[36]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[37]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[38]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[39]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[40]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[41]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[42]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[43]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[44]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[45]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[46]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[47]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[48]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[49]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[50]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[51]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[52]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[53]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[54]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[55]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[56]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[57]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[58]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[59]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[60]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[61]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[62]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[63]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_AddY : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_AddnSub : std_logic;
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Ovfl : std_logic;
SIGNAL ww_Zero : std_logic;
SIGNAL ww_AltB : std_logic;
SIGNAL ww_AltBu : std_logic;
SIGNAL \AddY[0]~output_o\ : std_logic;
SIGNAL \AddY[1]~output_o\ : std_logic;
SIGNAL \AddY[2]~output_o\ : std_logic;
SIGNAL \AddY[3]~output_o\ : std_logic;
SIGNAL \AddY[4]~output_o\ : std_logic;
SIGNAL \AddY[5]~output_o\ : std_logic;
SIGNAL \AddY[6]~output_o\ : std_logic;
SIGNAL \AddY[7]~output_o\ : std_logic;
SIGNAL \AddY[8]~output_o\ : std_logic;
SIGNAL \AddY[9]~output_o\ : std_logic;
SIGNAL \AddY[10]~output_o\ : std_logic;
SIGNAL \AddY[11]~output_o\ : std_logic;
SIGNAL \AddY[12]~output_o\ : std_logic;
SIGNAL \AddY[13]~output_o\ : std_logic;
SIGNAL \AddY[14]~output_o\ : std_logic;
SIGNAL \AddY[15]~output_o\ : std_logic;
SIGNAL \AddY[16]~output_o\ : std_logic;
SIGNAL \AddY[17]~output_o\ : std_logic;
SIGNAL \AddY[18]~output_o\ : std_logic;
SIGNAL \AddY[19]~output_o\ : std_logic;
SIGNAL \AddY[20]~output_o\ : std_logic;
SIGNAL \AddY[21]~output_o\ : std_logic;
SIGNAL \AddY[22]~output_o\ : std_logic;
SIGNAL \AddY[23]~output_o\ : std_logic;
SIGNAL \AddY[24]~output_o\ : std_logic;
SIGNAL \AddY[25]~output_o\ : std_logic;
SIGNAL \AddY[26]~output_o\ : std_logic;
SIGNAL \AddY[27]~output_o\ : std_logic;
SIGNAL \AddY[28]~output_o\ : std_logic;
SIGNAL \AddY[29]~output_o\ : std_logic;
SIGNAL \AddY[30]~output_o\ : std_logic;
SIGNAL \AddY[31]~output_o\ : std_logic;
SIGNAL \AddY[32]~output_o\ : std_logic;
SIGNAL \AddY[33]~output_o\ : std_logic;
SIGNAL \AddY[34]~output_o\ : std_logic;
SIGNAL \AddY[35]~output_o\ : std_logic;
SIGNAL \AddY[36]~output_o\ : std_logic;
SIGNAL \AddY[37]~output_o\ : std_logic;
SIGNAL \AddY[38]~output_o\ : std_logic;
SIGNAL \AddY[39]~output_o\ : std_logic;
SIGNAL \AddY[40]~output_o\ : std_logic;
SIGNAL \AddY[41]~output_o\ : std_logic;
SIGNAL \AddY[42]~output_o\ : std_logic;
SIGNAL \AddY[43]~output_o\ : std_logic;
SIGNAL \AddY[44]~output_o\ : std_logic;
SIGNAL \AddY[45]~output_o\ : std_logic;
SIGNAL \AddY[46]~output_o\ : std_logic;
SIGNAL \AddY[47]~output_o\ : std_logic;
SIGNAL \AddY[48]~output_o\ : std_logic;
SIGNAL \AddY[49]~output_o\ : std_logic;
SIGNAL \AddY[50]~output_o\ : std_logic;
SIGNAL \AddY[51]~output_o\ : std_logic;
SIGNAL \AddY[52]~output_o\ : std_logic;
SIGNAL \AddY[53]~output_o\ : std_logic;
SIGNAL \AddY[54]~output_o\ : std_logic;
SIGNAL \AddY[55]~output_o\ : std_logic;
SIGNAL \AddY[56]~output_o\ : std_logic;
SIGNAL \AddY[57]~output_o\ : std_logic;
SIGNAL \AddY[58]~output_o\ : std_logic;
SIGNAL \AddY[59]~output_o\ : std_logic;
SIGNAL \AddY[60]~output_o\ : std_logic;
SIGNAL \AddY[61]~output_o\ : std_logic;
SIGNAL \AddY[62]~output_o\ : std_logic;
SIGNAL \AddY[63]~output_o\ : std_logic;
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
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B_sig[0]~0_combout\ : std_logic;
SIGNAL \Adder|Add0~1_cout\ : std_logic;
SIGNAL \Adder|Add0~2_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B_sig[1]~1_combout\ : std_logic;
SIGNAL \Adder|Add0~3\ : std_logic;
SIGNAL \Adder|Add0~4_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B_sig[2]~2_combout\ : std_logic;
SIGNAL \Adder|Add0~5\ : std_logic;
SIGNAL \Adder|Add0~6_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B_sig[3]~3_combout\ : std_logic;
SIGNAL \Adder|Add0~7\ : std_logic;
SIGNAL \Adder|Add0~8_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B_sig[4]~4_combout\ : std_logic;
SIGNAL \Adder|Add0~9\ : std_logic;
SIGNAL \Adder|Add0~10_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B_sig[5]~5_combout\ : std_logic;
SIGNAL \Adder|Add0~11\ : std_logic;
SIGNAL \Adder|Add0~12_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B_sig[6]~6_combout\ : std_logic;
SIGNAL \Adder|Add0~13\ : std_logic;
SIGNAL \Adder|Add0~14_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B_sig[7]~7_combout\ : std_logic;
SIGNAL \Adder|Add0~15\ : std_logic;
SIGNAL \Adder|Add0~16_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B_sig[8]~8_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Adder|Add0~17\ : std_logic;
SIGNAL \Adder|Add0~18_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B_sig[9]~9_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \Adder|Add0~19\ : std_logic;
SIGNAL \Adder|Add0~20_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B_sig[10]~10_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \Adder|Add0~21\ : std_logic;
SIGNAL \Adder|Add0~22_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B_sig[11]~11_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \Adder|Add0~23\ : std_logic;
SIGNAL \Adder|Add0~24_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B_sig[12]~12_combout\ : std_logic;
SIGNAL \Adder|Add0~25\ : std_logic;
SIGNAL \Adder|Add0~26_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B_sig[13]~13_combout\ : std_logic;
SIGNAL \Adder|Add0~27\ : std_logic;
SIGNAL \Adder|Add0~28_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B_sig[14]~14_combout\ : std_logic;
SIGNAL \Adder|Add0~29\ : std_logic;
SIGNAL \Adder|Add0~30_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \B_sig[15]~15_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \Adder|Add0~31\ : std_logic;
SIGNAL \Adder|Add0~32_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \B_sig[16]~16_combout\ : std_logic;
SIGNAL \Adder|Add0~33\ : std_logic;
SIGNAL \Adder|Add0~34_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \B_sig[17]~17_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \Adder|Add0~35\ : std_logic;
SIGNAL \Adder|Add0~36_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \B_sig[18]~18_combout\ : std_logic;
SIGNAL \Adder|Add0~37\ : std_logic;
SIGNAL \Adder|Add0~38_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \B_sig[19]~19_combout\ : std_logic;
SIGNAL \Adder|Add0~39\ : std_logic;
SIGNAL \Adder|Add0~40_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \B_sig[20]~20_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \Adder|Add0~41\ : std_logic;
SIGNAL \Adder|Add0~42_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \B_sig[21]~21_combout\ : std_logic;
SIGNAL \Adder|Add0~43\ : std_logic;
SIGNAL \Adder|Add0~44_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \B_sig[22]~22_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \Adder|Add0~45\ : std_logic;
SIGNAL \Adder|Add0~46_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \B_sig[23]~23_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \Adder|Add0~47\ : std_logic;
SIGNAL \Adder|Add0~48_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \B_sig[24]~24_combout\ : std_logic;
SIGNAL \Adder|Add0~49\ : std_logic;
SIGNAL \Adder|Add0~50_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \B_sig[25]~25_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \Adder|Add0~51\ : std_logic;
SIGNAL \Adder|Add0~52_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \B_sig[26]~26_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \Adder|Add0~53\ : std_logic;
SIGNAL \Adder|Add0~54_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \B_sig[27]~27_combout\ : std_logic;
SIGNAL \Adder|Add0~55\ : std_logic;
SIGNAL \Adder|Add0~56_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \B_sig[28]~28_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \Adder|Add0~57\ : std_logic;
SIGNAL \Adder|Add0~58_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \B_sig[29]~29_combout\ : std_logic;
SIGNAL \Adder|Add0~59\ : std_logic;
SIGNAL \Adder|Add0~60_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B_sig[30]~30_combout\ : std_logic;
SIGNAL \Adder|Add0~61\ : std_logic;
SIGNAL \Adder|Add0~62_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \B_sig[31]~31_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \Adder|Add0~63\ : std_logic;
SIGNAL \Adder|Add0~64_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \B_sig[32]~32_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \Adder|Add0~65\ : std_logic;
SIGNAL \Adder|Add0~66_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \B_sig[33]~33_combout\ : std_logic;
SIGNAL \Adder|Add0~67\ : std_logic;
SIGNAL \Adder|Add0~68_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \B_sig[34]~34_combout\ : std_logic;
SIGNAL \Adder|Add0~69\ : std_logic;
SIGNAL \Adder|Add0~70_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \B_sig[35]~35_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \Adder|Add0~71\ : std_logic;
SIGNAL \Adder|Add0~72_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \B_sig[36]~36_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \Adder|Add0~73\ : std_logic;
SIGNAL \Adder|Add0~74_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \B_sig[37]~37_combout\ : std_logic;
SIGNAL \Adder|Add0~75\ : std_logic;
SIGNAL \Adder|Add0~76_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \B_sig[38]~38_combout\ : std_logic;
SIGNAL \Adder|Add0~77\ : std_logic;
SIGNAL \Adder|Add0~78_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \B_sig[39]~39_combout\ : std_logic;
SIGNAL \Adder|Add0~79\ : std_logic;
SIGNAL \Adder|Add0~80_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \B_sig[40]~40_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \Adder|Add0~81\ : std_logic;
SIGNAL \Adder|Add0~82_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \B_sig[41]~41_combout\ : std_logic;
SIGNAL \Adder|Add0~83\ : std_logic;
SIGNAL \Adder|Add0~84_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \B_sig[42]~42_combout\ : std_logic;
SIGNAL \Adder|Add0~85\ : std_logic;
SIGNAL \Adder|Add0~86_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \B_sig[43]~43_combout\ : std_logic;
SIGNAL \Adder|Add0~87\ : std_logic;
SIGNAL \Adder|Add0~88_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \B_sig[44]~44_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \Adder|Add0~89\ : std_logic;
SIGNAL \Adder|Add0~90_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \B_sig[45]~45_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \Adder|Add0~91\ : std_logic;
SIGNAL \Adder|Add0~92_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \B_sig[46]~46_combout\ : std_logic;
SIGNAL \Adder|Add0~93\ : std_logic;
SIGNAL \Adder|Add0~94_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \B_sig[47]~47_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \Adder|Add0~95\ : std_logic;
SIGNAL \Adder|Add0~96_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \B_sig[48]~48_combout\ : std_logic;
SIGNAL \Adder|Add0~97\ : std_logic;
SIGNAL \Adder|Add0~98_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \B_sig[49]~49_combout\ : std_logic;
SIGNAL \Adder|Add0~99\ : std_logic;
SIGNAL \Adder|Add0~100_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \B_sig[50]~50_combout\ : std_logic;
SIGNAL \Adder|Add0~101\ : std_logic;
SIGNAL \Adder|Add0~102_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \B_sig[51]~51_combout\ : std_logic;
SIGNAL \Adder|Add0~103\ : std_logic;
SIGNAL \Adder|Add0~104_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \B_sig[52]~52_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \Adder|Add0~105\ : std_logic;
SIGNAL \Adder|Add0~106_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \B_sig[53]~53_combout\ : std_logic;
SIGNAL \Adder|Add0~107\ : std_logic;
SIGNAL \Adder|Add0~108_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \B_sig[54]~54_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \Adder|Add0~109\ : std_logic;
SIGNAL \Adder|Add0~110_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \B_sig[55]~55_combout\ : std_logic;
SIGNAL \Adder|Add0~111\ : std_logic;
SIGNAL \Adder|Add0~112_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \B_sig[56]~56_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \Adder|Add0~113\ : std_logic;
SIGNAL \Adder|Add0~114_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \B_sig[57]~57_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \Adder|Add0~115\ : std_logic;
SIGNAL \Adder|Add0~116_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \B_sig[58]~58_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \Adder|Add0~117\ : std_logic;
SIGNAL \Adder|Add0~118_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \B_sig[59]~59_combout\ : std_logic;
SIGNAL \Adder|Add0~119\ : std_logic;
SIGNAL \Adder|Add0~120_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \B_sig[60]~60_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \Adder|Add0~121\ : std_logic;
SIGNAL \Adder|Add0~122_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \B_sig[61]~61_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \Adder|Add0~123\ : std_logic;
SIGNAL \Adder|Add0~124_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \B_sig[62]~62_combout\ : std_logic;
SIGNAL \Adder|Add0~125\ : std_logic;
SIGNAL \Adder|Add0~126_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \B_sig[63]~63_combout\ : std_logic;
SIGNAL \Adder|Add0~127\ : std_logic;
SIGNAL \Adder|Add0~128_combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \Y~1_combout\ : std_logic;
SIGNAL \Y~2_combout\ : std_logic;
SIGNAL \Y~3_combout\ : std_logic;
SIGNAL \Y~4_combout\ : std_logic;
SIGNAL \Y~5_combout\ : std_logic;
SIGNAL \Y~6_combout\ : std_logic;
SIGNAL \Y~7_combout\ : std_logic;
SIGNAL \Y~8_combout\ : std_logic;
SIGNAL \Y~9_combout\ : std_logic;
SIGNAL \Y~10_combout\ : std_logic;
SIGNAL \Y~11_combout\ : std_logic;
SIGNAL \Y~12_combout\ : std_logic;
SIGNAL \Y~13_combout\ : std_logic;
SIGNAL \Y~14_combout\ : std_logic;
SIGNAL \Y~15_combout\ : std_logic;
SIGNAL \Y~16_combout\ : std_logic;
SIGNAL \Y~17_combout\ : std_logic;
SIGNAL \Y~18_combout\ : std_logic;
SIGNAL \Y~19_combout\ : std_logic;
SIGNAL \Y~20_combout\ : std_logic;
SIGNAL \Y~21_combout\ : std_logic;
SIGNAL \Y~22_combout\ : std_logic;
SIGNAL \Y~23_combout\ : std_logic;
SIGNAL \Y~24_combout\ : std_logic;
SIGNAL \Y~25_combout\ : std_logic;
SIGNAL \Y~26_combout\ : std_logic;
SIGNAL \Y~27_combout\ : std_logic;
SIGNAL \Y~28_combout\ : std_logic;
SIGNAL \Y~29_combout\ : std_logic;
SIGNAL \Y~30_combout\ : std_logic;
SIGNAL \Y~31_combout\ : std_logic;
SIGNAL \Adder|Add0~129\ : std_logic;
SIGNAL \Adder|Add0~130_combout\ : std_logic;
SIGNAL \Ovfl~2_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~8_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~7_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~5_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~6_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~9_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~3_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~2_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~0_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~1_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~4_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~18_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~17_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~15_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~16_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~19_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~13_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~12_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~10_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~11_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~14_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|y~20_combout\ : std_logic;
SIGNAL \Ovfl~3_combout\ : std_logic;
SIGNAL \ZeroGate|gen_tree:NORGate1|ALT_INV_y~20_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_Add0~130_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
AddY <= ww_AddY;
Y <= ww_Y;
ww_AddnSub <= AddnSub;
ww_ExtWord <= ExtWord;
Cout <= ww_Cout;
Ovfl <= ww_Ovfl;
Zero <= ww_Zero;
AltB <= ww_AltB;
AltBu <= ww_AltBu;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ZeroGate|gen_tree:NORGate1|ALT_INV_y~20_combout\ <= NOT \ZeroGate|gen_tree:NORGate1|y~20_combout\;
\Adder|ALT_INV_Add0~130_combout\ <= NOT \Adder|Add0~130_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X62_Y73_N16
\AddY[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~2_combout\,
	devoe => ww_devoe,
	o => \AddY[0]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\AddY[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~4_combout\,
	devoe => ww_devoe,
	o => \AddY[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\AddY[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~6_combout\,
	devoe => ww_devoe,
	o => \AddY[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\AddY[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~8_combout\,
	devoe => ww_devoe,
	o => \AddY[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\AddY[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~10_combout\,
	devoe => ww_devoe,
	o => \AddY[4]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\AddY[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~12_combout\,
	devoe => ww_devoe,
	o => \AddY[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\AddY[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~14_combout\,
	devoe => ww_devoe,
	o => \AddY[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\AddY[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~16_combout\,
	devoe => ww_devoe,
	o => \AddY[7]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\AddY[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~18_combout\,
	devoe => ww_devoe,
	o => \AddY[8]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\AddY[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~20_combout\,
	devoe => ww_devoe,
	o => \AddY[9]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\AddY[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~22_combout\,
	devoe => ww_devoe,
	o => \AddY[10]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\AddY[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~24_combout\,
	devoe => ww_devoe,
	o => \AddY[11]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\AddY[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~26_combout\,
	devoe => ww_devoe,
	o => \AddY[12]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\AddY[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~28_combout\,
	devoe => ww_devoe,
	o => \AddY[13]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\AddY[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~30_combout\,
	devoe => ww_devoe,
	o => \AddY[14]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\AddY[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~32_combout\,
	devoe => ww_devoe,
	o => \AddY[15]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\AddY[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~34_combout\,
	devoe => ww_devoe,
	o => \AddY[16]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\AddY[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~36_combout\,
	devoe => ww_devoe,
	o => \AddY[17]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\AddY[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~38_combout\,
	devoe => ww_devoe,
	o => \AddY[18]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\AddY[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~40_combout\,
	devoe => ww_devoe,
	o => \AddY[19]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\AddY[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~42_combout\,
	devoe => ww_devoe,
	o => \AddY[20]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\AddY[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~44_combout\,
	devoe => ww_devoe,
	o => \AddY[21]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\AddY[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~46_combout\,
	devoe => ww_devoe,
	o => \AddY[22]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\AddY[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~48_combout\,
	devoe => ww_devoe,
	o => \AddY[23]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\AddY[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~50_combout\,
	devoe => ww_devoe,
	o => \AddY[24]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\AddY[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~52_combout\,
	devoe => ww_devoe,
	o => \AddY[25]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\AddY[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~54_combout\,
	devoe => ww_devoe,
	o => \AddY[26]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\AddY[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~56_combout\,
	devoe => ww_devoe,
	o => \AddY[27]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\AddY[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~58_combout\,
	devoe => ww_devoe,
	o => \AddY[28]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\AddY[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~60_combout\,
	devoe => ww_devoe,
	o => \AddY[29]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\AddY[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~62_combout\,
	devoe => ww_devoe,
	o => \AddY[30]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\AddY[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~64_combout\,
	devoe => ww_devoe,
	o => \AddY[31]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\AddY[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~66_combout\,
	devoe => ww_devoe,
	o => \AddY[32]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\AddY[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~68_combout\,
	devoe => ww_devoe,
	o => \AddY[33]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\AddY[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~70_combout\,
	devoe => ww_devoe,
	o => \AddY[34]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\AddY[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~72_combout\,
	devoe => ww_devoe,
	o => \AddY[35]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\AddY[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~74_combout\,
	devoe => ww_devoe,
	o => \AddY[36]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\AddY[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~76_combout\,
	devoe => ww_devoe,
	o => \AddY[37]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\AddY[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~78_combout\,
	devoe => ww_devoe,
	o => \AddY[38]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\AddY[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~80_combout\,
	devoe => ww_devoe,
	o => \AddY[39]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\AddY[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~82_combout\,
	devoe => ww_devoe,
	o => \AddY[40]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\AddY[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~84_combout\,
	devoe => ww_devoe,
	o => \AddY[41]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\AddY[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~86_combout\,
	devoe => ww_devoe,
	o => \AddY[42]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\AddY[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~88_combout\,
	devoe => ww_devoe,
	o => \AddY[43]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\AddY[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~90_combout\,
	devoe => ww_devoe,
	o => \AddY[44]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\AddY[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~92_combout\,
	devoe => ww_devoe,
	o => \AddY[45]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\AddY[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~94_combout\,
	devoe => ww_devoe,
	o => \AddY[46]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\AddY[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~96_combout\,
	devoe => ww_devoe,
	o => \AddY[47]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\AddY[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~98_combout\,
	devoe => ww_devoe,
	o => \AddY[48]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\AddY[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~100_combout\,
	devoe => ww_devoe,
	o => \AddY[49]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\AddY[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~102_combout\,
	devoe => ww_devoe,
	o => \AddY[50]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\AddY[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~104_combout\,
	devoe => ww_devoe,
	o => \AddY[51]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\AddY[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~106_combout\,
	devoe => ww_devoe,
	o => \AddY[52]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\AddY[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~108_combout\,
	devoe => ww_devoe,
	o => \AddY[53]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\AddY[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~110_combout\,
	devoe => ww_devoe,
	o => \AddY[54]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\AddY[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~112_combout\,
	devoe => ww_devoe,
	o => \AddY[55]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\AddY[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~114_combout\,
	devoe => ww_devoe,
	o => \AddY[56]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\AddY[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~116_combout\,
	devoe => ww_devoe,
	o => \AddY[57]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\AddY[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~118_combout\,
	devoe => ww_devoe,
	o => \AddY[58]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\AddY[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~120_combout\,
	devoe => ww_devoe,
	o => \AddY[59]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\AddY[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~122_combout\,
	devoe => ww_devoe,
	o => \AddY[60]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\AddY[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~124_combout\,
	devoe => ww_devoe,
	o => \AddY[61]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\AddY[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~126_combout\,
	devoe => ww_devoe,
	o => \AddY[62]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\AddY[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~128_combout\,
	devoe => ww_devoe,
	o => \AddY[63]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~2_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~4_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~6_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~8_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~10_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~12_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~14_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~16_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~18_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~20_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~22_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~24_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~26_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~28_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~30_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~32_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~34_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~36_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~38_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~40_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~42_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~44_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~46_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~48_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~50_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~52_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~54_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~56_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~58_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~60_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~62_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~64_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~0_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~1_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~2_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~3_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~4_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~5_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~6_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~7_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~8_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~9_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~10_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~11_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~12_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~13_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~14_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~15_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~16_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~17_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~18_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~19_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~20_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~21_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~22_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~23_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~24_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~25_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~26_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~27_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~28_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~29_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~30_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~31_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|Add0~130_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~2_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ZeroGate|gen_tree:NORGate1|ALT_INV_y~20_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\AltB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~3_combout\,
	devoe => ww_devoe,
	o => \AltB~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\AltBu~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|ALT_INV_Add0~130_combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X0_Y59_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y57_N22
\AddnSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X8_Y55_N0
\B_sig[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[0]~0_combout\ = \AddnSub~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[0]~input_o\,
	combout => \B_sig[0]~0_combout\);

-- Location: LCCOMB_X12_Y56_N14
\Adder|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~1_cout\ = CARRY(\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => VCC,
	cout => \Adder|Add0~1_cout\);

-- Location: LCCOMB_X12_Y56_N16
\Adder|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~2_combout\ = (\A[0]~input_o\ & ((\B_sig[0]~0_combout\ & (\Adder|Add0~1_cout\ & VCC)) # (!\B_sig[0]~0_combout\ & (!\Adder|Add0~1_cout\)))) # (!\A[0]~input_o\ & ((\B_sig[0]~0_combout\ & (!\Adder|Add0~1_cout\)) # (!\B_sig[0]~0_combout\ & 
-- ((\Adder|Add0~1_cout\) # (GND)))))
-- \Adder|Add0~3\ = CARRY((\A[0]~input_o\ & (!\B_sig[0]~0_combout\ & !\Adder|Add0~1_cout\)) # (!\A[0]~input_o\ & ((!\Adder|Add0~1_cout\) # (!\B_sig[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B_sig[0]~0_combout\,
	datad => VCC,
	cin => \Adder|Add0~1_cout\,
	combout => \Adder|Add0~2_combout\,
	cout => \Adder|Add0~3\);

-- Location: IOIBUF_X29_Y73_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X11_Y55_N24
\B_sig[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[1]~1_combout\ = \AddnSub~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[1]~input_o\,
	combout => \B_sig[1]~1_combout\);

-- Location: LCCOMB_X12_Y56_N18
\Adder|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~4_combout\ = ((\A[1]~input_o\ $ (\B_sig[1]~1_combout\ $ (!\Adder|Add0~3\)))) # (GND)
-- \Adder|Add0~5\ = CARRY((\A[1]~input_o\ & ((\B_sig[1]~1_combout\) # (!\Adder|Add0~3\))) # (!\A[1]~input_o\ & (\B_sig[1]~1_combout\ & !\Adder|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B_sig[1]~1_combout\,
	datad => VCC,
	cin => \Adder|Add0~3\,
	combout => \Adder|Add0~4_combout\,
	cout => \Adder|Add0~5\);

-- Location: IOIBUF_X20_Y73_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X13_Y54_N0
\B_sig[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[2]~2_combout\ = \B[2]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[2]~2_combout\);

-- Location: LCCOMB_X12_Y56_N20
\Adder|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~6_combout\ = (\A[2]~input_o\ & ((\B_sig[2]~2_combout\ & (\Adder|Add0~5\ & VCC)) # (!\B_sig[2]~2_combout\ & (!\Adder|Add0~5\)))) # (!\A[2]~input_o\ & ((\B_sig[2]~2_combout\ & (!\Adder|Add0~5\)) # (!\B_sig[2]~2_combout\ & ((\Adder|Add0~5\) # 
-- (GND)))))
-- \Adder|Add0~7\ = CARRY((\A[2]~input_o\ & (!\B_sig[2]~2_combout\ & !\Adder|Add0~5\)) # (!\A[2]~input_o\ & ((!\Adder|Add0~5\) # (!\B_sig[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B_sig[2]~2_combout\,
	datad => VCC,
	cin => \Adder|Add0~5\,
	combout => \Adder|Add0~6_combout\,
	cout => \Adder|Add0~7\);

-- Location: IOIBUF_X1_Y73_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X13_Y73_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X12_Y56_N8
\B_sig[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[3]~3_combout\ = \AddnSub~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[3]~input_o\,
	combout => \B_sig[3]~3_combout\);

-- Location: LCCOMB_X12_Y56_N22
\Adder|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~8_combout\ = ((\A[3]~input_o\ $ (\B_sig[3]~3_combout\ $ (!\Adder|Add0~7\)))) # (GND)
-- \Adder|Add0~9\ = CARRY((\A[3]~input_o\ & ((\B_sig[3]~3_combout\) # (!\Adder|Add0~7\))) # (!\A[3]~input_o\ & (\B_sig[3]~3_combout\ & !\Adder|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B_sig[3]~3_combout\,
	datad => VCC,
	cin => \Adder|Add0~7\,
	combout => \Adder|Add0~8_combout\,
	cout => \Adder|Add0~9\);

-- Location: IOIBUF_X0_Y24_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X0_Y61_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X8_Y55_N2
\B_sig[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[4]~4_combout\ = \AddnSub~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[4]~input_o\,
	combout => \B_sig[4]~4_combout\);

-- Location: LCCOMB_X12_Y56_N24
\Adder|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~10_combout\ = (\A[4]~input_o\ & ((\B_sig[4]~4_combout\ & (\Adder|Add0~9\ & VCC)) # (!\B_sig[4]~4_combout\ & (!\Adder|Add0~9\)))) # (!\A[4]~input_o\ & ((\B_sig[4]~4_combout\ & (!\Adder|Add0~9\)) # (!\B_sig[4]~4_combout\ & ((\Adder|Add0~9\) # 
-- (GND)))))
-- \Adder|Add0~11\ = CARRY((\A[4]~input_o\ & (!\B_sig[4]~4_combout\ & !\Adder|Add0~9\)) # (!\A[4]~input_o\ & ((!\Adder|Add0~9\) # (!\B_sig[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B_sig[4]~4_combout\,
	datad => VCC,
	cin => \Adder|Add0~9\,
	combout => \Adder|Add0~10_combout\,
	cout => \Adder|Add0~11\);

-- Location: IOIBUF_X0_Y60_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X13_Y54_N26
\B_sig[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[5]~5_combout\ = \AddnSub~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[5]~input_o\,
	combout => \B_sig[5]~5_combout\);

-- Location: LCCOMB_X12_Y56_N26
\Adder|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~12_combout\ = ((\A[5]~input_o\ $ (\B_sig[5]~5_combout\ $ (!\Adder|Add0~11\)))) # (GND)
-- \Adder|Add0~13\ = CARRY((\A[5]~input_o\ & ((\B_sig[5]~5_combout\) # (!\Adder|Add0~11\))) # (!\A[5]~input_o\ & (\B_sig[5]~5_combout\ & !\Adder|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B_sig[5]~5_combout\,
	datad => VCC,
	cin => \Adder|Add0~11\,
	combout => \Adder|Add0~12_combout\,
	cout => \Adder|Add0~13\);

-- Location: IOIBUF_X16_Y73_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X13_Y53_N16
\B_sig[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[6]~6_combout\ = \AddnSub~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[6]~input_o\,
	combout => \B_sig[6]~6_combout\);

-- Location: LCCOMB_X12_Y56_N28
\Adder|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~14_combout\ = (\A[6]~input_o\ & ((\B_sig[6]~6_combout\ & (\Adder|Add0~13\ & VCC)) # (!\B_sig[6]~6_combout\ & (!\Adder|Add0~13\)))) # (!\A[6]~input_o\ & ((\B_sig[6]~6_combout\ & (!\Adder|Add0~13\)) # (!\B_sig[6]~6_combout\ & ((\Adder|Add0~13\) 
-- # (GND)))))
-- \Adder|Add0~15\ = CARRY((\A[6]~input_o\ & (!\B_sig[6]~6_combout\ & !\Adder|Add0~13\)) # (!\A[6]~input_o\ & ((!\Adder|Add0~13\) # (!\B_sig[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B_sig[6]~6_combout\,
	datad => VCC,
	cin => \Adder|Add0~13\,
	combout => \Adder|Add0~14_combout\,
	cout => \Adder|Add0~15\);

-- Location: IOIBUF_X0_Y67_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X20_Y73_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X12_Y56_N2
\B_sig[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[7]~7_combout\ = \B[7]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \B_sig[7]~7_combout\);

-- Location: LCCOMB_X12_Y56_N30
\Adder|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~16_combout\ = ((\A[7]~input_o\ $ (\B_sig[7]~7_combout\ $ (!\Adder|Add0~15\)))) # (GND)
-- \Adder|Add0~17\ = CARRY((\A[7]~input_o\ & ((\B_sig[7]~7_combout\) # (!\Adder|Add0~15\))) # (!\A[7]~input_o\ & (\B_sig[7]~7_combout\ & !\Adder|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B_sig[7]~7_combout\,
	datad => VCC,
	cin => \Adder|Add0~15\,
	combout => \Adder|Add0~16_combout\,
	cout => \Adder|Add0~17\);

-- Location: IOIBUF_X0_Y55_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X8_Y55_N12
\B_sig[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[8]~8_combout\ = \B[8]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \B_sig[8]~8_combout\);

-- Location: IOIBUF_X0_Y44_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X12_Y55_N0
\Adder|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~18_combout\ = (\B_sig[8]~8_combout\ & ((\A[8]~input_o\ & (\Adder|Add0~17\ & VCC)) # (!\A[8]~input_o\ & (!\Adder|Add0~17\)))) # (!\B_sig[8]~8_combout\ & ((\A[8]~input_o\ & (!\Adder|Add0~17\)) # (!\A[8]~input_o\ & ((\Adder|Add0~17\) # (GND)))))
-- \Adder|Add0~19\ = CARRY((\B_sig[8]~8_combout\ & (!\A[8]~input_o\ & !\Adder|Add0~17\)) # (!\B_sig[8]~8_combout\ & ((!\Adder|Add0~17\) # (!\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[8]~8_combout\,
	datab => \A[8]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~17\,
	combout => \Adder|Add0~18_combout\,
	cout => \Adder|Add0~19\);

-- Location: IOIBUF_X3_Y73_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X11_Y55_N26
\B_sig[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[9]~9_combout\ = \AddnSub~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[9]~input_o\,
	combout => \B_sig[9]~9_combout\);

-- Location: IOIBUF_X65_Y73_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X12_Y55_N2
\Adder|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~20_combout\ = ((\B_sig[9]~9_combout\ $ (\A[9]~input_o\ $ (!\Adder|Add0~19\)))) # (GND)
-- \Adder|Add0~21\ = CARRY((\B_sig[9]~9_combout\ & ((\A[9]~input_o\) # (!\Adder|Add0~19\))) # (!\B_sig[9]~9_combout\ & (\A[9]~input_o\ & !\Adder|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[9]~9_combout\,
	datab => \A[9]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~19\,
	combout => \Adder|Add0~20_combout\,
	cout => \Adder|Add0~21\);

-- Location: IOIBUF_X0_Y12_N22
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X11_Y55_N12
\B_sig[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[10]~10_combout\ = \B[10]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[10]~10_combout\);

-- Location: IOIBUF_X85_Y73_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X12_Y55_N4
\Adder|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~22_combout\ = (\B_sig[10]~10_combout\ & ((\A[10]~input_o\ & (\Adder|Add0~21\ & VCC)) # (!\A[10]~input_o\ & (!\Adder|Add0~21\)))) # (!\B_sig[10]~10_combout\ & ((\A[10]~input_o\ & (!\Adder|Add0~21\)) # (!\A[10]~input_o\ & ((\Adder|Add0~21\) # 
-- (GND)))))
-- \Adder|Add0~23\ = CARRY((\B_sig[10]~10_combout\ & (!\A[10]~input_o\ & !\Adder|Add0~21\)) # (!\B_sig[10]~10_combout\ & ((!\Adder|Add0~21\) # (!\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[10]~10_combout\,
	datab => \A[10]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~21\,
	combout => \Adder|Add0~22_combout\,
	cout => \Adder|Add0~23\);

-- Location: IOIBUF_X0_Y27_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X13_Y54_N12
\B_sig[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[11]~11_combout\ = \B[11]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[11]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[11]~11_combout\);

-- Location: IOIBUF_X18_Y73_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X12_Y55_N6
\Adder|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~24_combout\ = ((\B_sig[11]~11_combout\ $ (\A[11]~input_o\ $ (!\Adder|Add0~23\)))) # (GND)
-- \Adder|Add0~25\ = CARRY((\B_sig[11]~11_combout\ & ((\A[11]~input_o\) # (!\Adder|Add0~23\))) # (!\B_sig[11]~11_combout\ & (\A[11]~input_o\ & !\Adder|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[11]~11_combout\,
	datab => \A[11]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~23\,
	combout => \Adder|Add0~24_combout\,
	cout => \Adder|Add0~25\);

-- Location: IOIBUF_X0_Y55_N15
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X11_Y55_N6
\B_sig[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[12]~12_combout\ = \AddnSub~input_o\ $ (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[12]~input_o\,
	combout => \B_sig[12]~12_combout\);

-- Location: LCCOMB_X12_Y55_N8
\Adder|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~26_combout\ = (\A[12]~input_o\ & ((\B_sig[12]~12_combout\ & (\Adder|Add0~25\ & VCC)) # (!\B_sig[12]~12_combout\ & (!\Adder|Add0~25\)))) # (!\A[12]~input_o\ & ((\B_sig[12]~12_combout\ & (!\Adder|Add0~25\)) # (!\B_sig[12]~12_combout\ & 
-- ((\Adder|Add0~25\) # (GND)))))
-- \Adder|Add0~27\ = CARRY((\A[12]~input_o\ & (!\B_sig[12]~12_combout\ & !\Adder|Add0~25\)) # (!\A[12]~input_o\ & ((!\Adder|Add0~25\) # (!\B_sig[12]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B_sig[12]~12_combout\,
	datad => VCC,
	cin => \Adder|Add0~25\,
	combout => \Adder|Add0~26_combout\,
	cout => \Adder|Add0~27\);

-- Location: IOIBUF_X60_Y73_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X0_Y57_N15
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X8_Y55_N6
\B_sig[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[13]~13_combout\ = \AddnSub~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[13]~input_o\,
	combout => \B_sig[13]~13_combout\);

-- Location: LCCOMB_X12_Y55_N10
\Adder|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~28_combout\ = ((\A[13]~input_o\ $ (\B_sig[13]~13_combout\ $ (!\Adder|Add0~27\)))) # (GND)
-- \Adder|Add0~29\ = CARRY((\A[13]~input_o\ & ((\B_sig[13]~13_combout\) # (!\Adder|Add0~27\))) # (!\A[13]~input_o\ & (\B_sig[13]~13_combout\ & !\Adder|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B_sig[13]~13_combout\,
	datad => VCC,
	cin => \Adder|Add0~27\,
	combout => \Adder|Add0~28_combout\,
	cout => \Adder|Add0~29\);

-- Location: IOIBUF_X0_Y7_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X1_Y73_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X8_Y55_N24
\B_sig[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[14]~14_combout\ = \AddnSub~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[14]~input_o\,
	combout => \B_sig[14]~14_combout\);

-- Location: LCCOMB_X12_Y55_N12
\Adder|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~30_combout\ = (\A[14]~input_o\ & ((\B_sig[14]~14_combout\ & (\Adder|Add0~29\ & VCC)) # (!\B_sig[14]~14_combout\ & (!\Adder|Add0~29\)))) # (!\A[14]~input_o\ & ((\B_sig[14]~14_combout\ & (!\Adder|Add0~29\)) # (!\B_sig[14]~14_combout\ & 
-- ((\Adder|Add0~29\) # (GND)))))
-- \Adder|Add0~31\ = CARRY((\A[14]~input_o\ & (!\B_sig[14]~14_combout\ & !\Adder|Add0~29\)) # (!\A[14]~input_o\ & ((!\Adder|Add0~29\) # (!\B_sig[14]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B_sig[14]~14_combout\,
	datad => VCC,
	cin => \Adder|Add0~29\,
	combout => \Adder|Add0~30_combout\,
	cout => \Adder|Add0~31\);

-- Location: IOIBUF_X0_Y52_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X8_Y55_N18
\B_sig[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[15]~15_combout\ = \B[15]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \B_sig[15]~15_combout\);

-- Location: IOIBUF_X0_Y66_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X12_Y55_N14
\Adder|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~32_combout\ = ((\B_sig[15]~15_combout\ $ (\A[15]~input_o\ $ (!\Adder|Add0~31\)))) # (GND)
-- \Adder|Add0~33\ = CARRY((\B_sig[15]~15_combout\ & ((\A[15]~input_o\) # (!\Adder|Add0~31\))) # (!\B_sig[15]~15_combout\ & (\A[15]~input_o\ & !\Adder|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[15]~15_combout\,
	datab => \A[15]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~31\,
	combout => \Adder|Add0~32_combout\,
	cout => \Adder|Add0~33\);

-- Location: IOIBUF_X45_Y73_N8
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X8_Y55_N20
\B_sig[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[16]~16_combout\ = \AddnSub~input_o\ $ (\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[16]~input_o\,
	combout => \B_sig[16]~16_combout\);

-- Location: LCCOMB_X12_Y55_N16
\Adder|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~34_combout\ = (\A[16]~input_o\ & ((\B_sig[16]~16_combout\ & (\Adder|Add0~33\ & VCC)) # (!\B_sig[16]~16_combout\ & (!\Adder|Add0~33\)))) # (!\A[16]~input_o\ & ((\B_sig[16]~16_combout\ & (!\Adder|Add0~33\)) # (!\B_sig[16]~16_combout\ & 
-- ((\Adder|Add0~33\) # (GND)))))
-- \Adder|Add0~35\ = CARRY((\A[16]~input_o\ & (!\B_sig[16]~16_combout\ & !\Adder|Add0~33\)) # (!\A[16]~input_o\ & ((!\Adder|Add0~33\) # (!\B_sig[16]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B_sig[16]~16_combout\,
	datad => VCC,
	cin => \Adder|Add0~33\,
	combout => \Adder|Add0~34_combout\,
	cout => \Adder|Add0~35\);

-- Location: IOIBUF_X7_Y73_N15
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X11_Y55_N0
\B_sig[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[17]~17_combout\ = \AddnSub~input_o\ $ (\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[17]~input_o\,
	combout => \B_sig[17]~17_combout\);

-- Location: IOIBUF_X0_Y14_N8
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X12_Y55_N18
\Adder|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~36_combout\ = ((\B_sig[17]~17_combout\ $ (\A[17]~input_o\ $ (!\Adder|Add0~35\)))) # (GND)
-- \Adder|Add0~37\ = CARRY((\B_sig[17]~17_combout\ & ((\A[17]~input_o\) # (!\Adder|Add0~35\))) # (!\B_sig[17]~17_combout\ & (\A[17]~input_o\ & !\Adder|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[17]~17_combout\,
	datab => \A[17]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~35\,
	combout => \Adder|Add0~36_combout\,
	cout => \Adder|Add0~37\);

-- Location: IOIBUF_X0_Y62_N15
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X13_Y53_N26
\B_sig[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[18]~18_combout\ = \B[18]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[18]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[18]~18_combout\);

-- Location: LCCOMB_X12_Y55_N20
\Adder|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~38_combout\ = (\A[18]~input_o\ & ((\B_sig[18]~18_combout\ & (\Adder|Add0~37\ & VCC)) # (!\B_sig[18]~18_combout\ & (!\Adder|Add0~37\)))) # (!\A[18]~input_o\ & ((\B_sig[18]~18_combout\ & (!\Adder|Add0~37\)) # (!\B_sig[18]~18_combout\ & 
-- ((\Adder|Add0~37\) # (GND)))))
-- \Adder|Add0~39\ = CARRY((\A[18]~input_o\ & (!\B_sig[18]~18_combout\ & !\Adder|Add0~37\)) # (!\A[18]~input_o\ & ((!\Adder|Add0~37\) # (!\B_sig[18]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B_sig[18]~18_combout\,
	datad => VCC,
	cin => \Adder|Add0~37\,
	combout => \Adder|Add0~38_combout\,
	cout => \Adder|Add0~39\);

-- Location: IOIBUF_X16_Y73_N1
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X0_Y47_N22
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X11_Y55_N2
\B_sig[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[19]~19_combout\ = \B[19]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[19]~19_combout\);

-- Location: LCCOMB_X12_Y55_N22
\Adder|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~40_combout\ = ((\A[19]~input_o\ $ (\B_sig[19]~19_combout\ $ (!\Adder|Add0~39\)))) # (GND)
-- \Adder|Add0~41\ = CARRY((\A[19]~input_o\ & ((\B_sig[19]~19_combout\) # (!\Adder|Add0~39\))) # (!\A[19]~input_o\ & (\B_sig[19]~19_combout\ & !\Adder|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B_sig[19]~19_combout\,
	datad => VCC,
	cin => \Adder|Add0~39\,
	combout => \Adder|Add0~40_combout\,
	cout => \Adder|Add0~41\);

-- Location: IOIBUF_X33_Y73_N8
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X11_Y55_N28
\B_sig[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[20]~20_combout\ = \AddnSub~input_o\ $ (\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[20]~input_o\,
	combout => \B_sig[20]~20_combout\);

-- Location: IOIBUF_X20_Y73_N15
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X12_Y55_N24
\Adder|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~42_combout\ = (\B_sig[20]~20_combout\ & ((\A[20]~input_o\ & (\Adder|Add0~41\ & VCC)) # (!\A[20]~input_o\ & (!\Adder|Add0~41\)))) # (!\B_sig[20]~20_combout\ & ((\A[20]~input_o\ & (!\Adder|Add0~41\)) # (!\A[20]~input_o\ & ((\Adder|Add0~41\) # 
-- (GND)))))
-- \Adder|Add0~43\ = CARRY((\B_sig[20]~20_combout\ & (!\A[20]~input_o\ & !\Adder|Add0~41\)) # (!\B_sig[20]~20_combout\ & ((!\Adder|Add0~41\) # (!\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[20]~20_combout\,
	datab => \A[20]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~41\,
	combout => \Adder|Add0~42_combout\,
	cout => \Adder|Add0~43\);

-- Location: IOIBUF_X27_Y73_N22
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X8_Y55_N22
\B_sig[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[21]~21_combout\ = \AddnSub~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[21]~input_o\,
	combout => \B_sig[21]~21_combout\);

-- Location: LCCOMB_X12_Y55_N26
\Adder|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~44_combout\ = ((\A[21]~input_o\ $ (\B_sig[21]~21_combout\ $ (!\Adder|Add0~43\)))) # (GND)
-- \Adder|Add0~45\ = CARRY((\A[21]~input_o\ & ((\B_sig[21]~21_combout\) # (!\Adder|Add0~43\))) # (!\A[21]~input_o\ & (\B_sig[21]~21_combout\ & !\Adder|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B_sig[21]~21_combout\,
	datad => VCC,
	cin => \Adder|Add0~43\,
	combout => \Adder|Add0~44_combout\,
	cout => \Adder|Add0~45\);

-- Location: IOIBUF_X69_Y73_N1
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X13_Y54_N14
\B_sig[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[22]~22_combout\ = \AddnSub~input_o\ $ (\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[22]~input_o\,
	combout => \B_sig[22]~22_combout\);

-- Location: IOIBUF_X0_Y55_N22
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X12_Y55_N28
\Adder|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~46_combout\ = (\B_sig[22]~22_combout\ & ((\A[22]~input_o\ & (\Adder|Add0~45\ & VCC)) # (!\A[22]~input_o\ & (!\Adder|Add0~45\)))) # (!\B_sig[22]~22_combout\ & ((\A[22]~input_o\ & (!\Adder|Add0~45\)) # (!\A[22]~input_o\ & ((\Adder|Add0~45\) # 
-- (GND)))))
-- \Adder|Add0~47\ = CARRY((\B_sig[22]~22_combout\ & (!\A[22]~input_o\ & !\Adder|Add0~45\)) # (!\B_sig[22]~22_combout\ & ((!\Adder|Add0~45\) # (!\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[22]~22_combout\,
	datab => \A[22]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~45\,
	combout => \Adder|Add0~46_combout\,
	cout => \Adder|Add0~47\);

-- Location: IOIBUF_X42_Y73_N8
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X13_Y53_N28
\B_sig[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[23]~23_combout\ = \AddnSub~input_o\ $ (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[23]~input_o\,
	combout => \B_sig[23]~23_combout\);

-- Location: IOIBUF_X5_Y73_N8
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X12_Y55_N30
\Adder|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~48_combout\ = ((\B_sig[23]~23_combout\ $ (\A[23]~input_o\ $ (!\Adder|Add0~47\)))) # (GND)
-- \Adder|Add0~49\ = CARRY((\B_sig[23]~23_combout\ & ((\A[23]~input_o\) # (!\Adder|Add0~47\))) # (!\B_sig[23]~23_combout\ & (\A[23]~input_o\ & !\Adder|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[23]~23_combout\,
	datab => \A[23]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~47\,
	combout => \Adder|Add0~48_combout\,
	cout => \Adder|Add0~49\);

-- Location: IOIBUF_X3_Y0_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X13_Y54_N8
\B_sig[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[24]~24_combout\ = \B[24]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[24]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[24]~24_combout\);

-- Location: LCCOMB_X12_Y54_N0
\Adder|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~50_combout\ = (\A[24]~input_o\ & ((\B_sig[24]~24_combout\ & (\Adder|Add0~49\ & VCC)) # (!\B_sig[24]~24_combout\ & (!\Adder|Add0~49\)))) # (!\A[24]~input_o\ & ((\B_sig[24]~24_combout\ & (!\Adder|Add0~49\)) # (!\B_sig[24]~24_combout\ & 
-- ((\Adder|Add0~49\) # (GND)))))
-- \Adder|Add0~51\ = CARRY((\A[24]~input_o\ & (!\B_sig[24]~24_combout\ & !\Adder|Add0~49\)) # (!\A[24]~input_o\ & ((!\Adder|Add0~49\) # (!\B_sig[24]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B_sig[24]~24_combout\,
	datad => VCC,
	cin => \Adder|Add0~49\,
	combout => \Adder|Add0~50_combout\,
	cout => \Adder|Add0~51\);

-- Location: IOIBUF_X20_Y0_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X13_Y54_N2
\B_sig[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[25]~25_combout\ = \AddnSub~input_o\ $ (\B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[25]~input_o\,
	combout => \B_sig[25]~25_combout\);

-- Location: IOIBUF_X5_Y0_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X12_Y54_N2
\Adder|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~52_combout\ = ((\B_sig[25]~25_combout\ $ (\A[25]~input_o\ $ (!\Adder|Add0~51\)))) # (GND)
-- \Adder|Add0~53\ = CARRY((\B_sig[25]~25_combout\ & ((\A[25]~input_o\) # (!\Adder|Add0~51\))) # (!\B_sig[25]~25_combout\ & (\A[25]~input_o\ & !\Adder|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[25]~25_combout\,
	datab => \A[25]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~51\,
	combout => \Adder|Add0~52_combout\,
	cout => \Adder|Add0~53\);

-- Location: IOIBUF_X67_Y73_N22
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X13_Y54_N4
\B_sig[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[26]~26_combout\ = \B[26]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[26]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[26]~26_combout\);

-- Location: IOIBUF_X0_Y24_N8
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X12_Y54_N4
\Adder|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~54_combout\ = (\B_sig[26]~26_combout\ & ((\A[26]~input_o\ & (\Adder|Add0~53\ & VCC)) # (!\A[26]~input_o\ & (!\Adder|Add0~53\)))) # (!\B_sig[26]~26_combout\ & ((\A[26]~input_o\ & (!\Adder|Add0~53\)) # (!\A[26]~input_o\ & ((\Adder|Add0~53\) # 
-- (GND)))))
-- \Adder|Add0~55\ = CARRY((\B_sig[26]~26_combout\ & (!\A[26]~input_o\ & !\Adder|Add0~53\)) # (!\B_sig[26]~26_combout\ & ((!\Adder|Add0~53\) # (!\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[26]~26_combout\,
	datab => \A[26]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~53\,
	combout => \Adder|Add0~54_combout\,
	cout => \Adder|Add0~55\);

-- Location: IOIBUF_X38_Y73_N22
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X8_Y55_N16
\B_sig[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[27]~27_combout\ = \B[27]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \B_sig[27]~27_combout\);

-- Location: LCCOMB_X12_Y54_N6
\Adder|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~56_combout\ = ((\A[27]~input_o\ $ (\B_sig[27]~27_combout\ $ (!\Adder|Add0~55\)))) # (GND)
-- \Adder|Add0~57\ = CARRY((\A[27]~input_o\ & ((\B_sig[27]~27_combout\) # (!\Adder|Add0~55\))) # (!\A[27]~input_o\ & (\B_sig[27]~27_combout\ & !\Adder|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B_sig[27]~27_combout\,
	datad => VCC,
	cin => \Adder|Add0~55\,
	combout => \Adder|Add0~56_combout\,
	cout => \Adder|Add0~57\);

-- Location: IOIBUF_X25_Y73_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X13_Y54_N6
\B_sig[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[28]~28_combout\ = \AddnSub~input_o\ $ (\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[28]~input_o\,
	combout => \B_sig[28]~28_combout\);

-- Location: IOIBUF_X11_Y0_N22
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X12_Y54_N8
\Adder|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~58_combout\ = (\B_sig[28]~28_combout\ & ((\A[28]~input_o\ & (\Adder|Add0~57\ & VCC)) # (!\A[28]~input_o\ & (!\Adder|Add0~57\)))) # (!\B_sig[28]~28_combout\ & ((\A[28]~input_o\ & (!\Adder|Add0~57\)) # (!\A[28]~input_o\ & ((\Adder|Add0~57\) # 
-- (GND)))))
-- \Adder|Add0~59\ = CARRY((\B_sig[28]~28_combout\ & (!\A[28]~input_o\ & !\Adder|Add0~57\)) # (!\B_sig[28]~28_combout\ & ((!\Adder|Add0~57\) # (!\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[28]~28_combout\,
	datab => \A[28]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~57\,
	combout => \Adder|Add0~58_combout\,
	cout => \Adder|Add0~59\);

-- Location: IOIBUF_X58_Y73_N1
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X13_Y53_N14
\B_sig[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[29]~29_combout\ = \AddnSub~input_o\ $ (\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[29]~input_o\,
	combout => \B_sig[29]~29_combout\);

-- Location: LCCOMB_X12_Y54_N10
\Adder|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~60_combout\ = ((\A[29]~input_o\ $ (\B_sig[29]~29_combout\ $ (!\Adder|Add0~59\)))) # (GND)
-- \Adder|Add0~61\ = CARRY((\A[29]~input_o\ & ((\B_sig[29]~29_combout\) # (!\Adder|Add0~59\))) # (!\A[29]~input_o\ & (\B_sig[29]~29_combout\ & !\Adder|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B_sig[29]~29_combout\,
	datad => VCC,
	cin => \Adder|Add0~59\,
	combout => \Adder|Add0~60_combout\,
	cout => \Adder|Add0~61\);

-- Location: IOIBUF_X1_Y0_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X13_Y54_N24
\B_sig[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[30]~30_combout\ = \B[30]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[30]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[30]~30_combout\);

-- Location: LCCOMB_X12_Y54_N12
\Adder|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~62_combout\ = (\A[30]~input_o\ & ((\B_sig[30]~30_combout\ & (\Adder|Add0~61\ & VCC)) # (!\B_sig[30]~30_combout\ & (!\Adder|Add0~61\)))) # (!\A[30]~input_o\ & ((\B_sig[30]~30_combout\ & (!\Adder|Add0~61\)) # (!\B_sig[30]~30_combout\ & 
-- ((\Adder|Add0~61\) # (GND)))))
-- \Adder|Add0~63\ = CARRY((\A[30]~input_o\ & (!\B_sig[30]~30_combout\ & !\Adder|Add0~61\)) # (!\A[30]~input_o\ & ((!\Adder|Add0~61\) # (!\B_sig[30]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B_sig[30]~30_combout\,
	datad => VCC,
	cin => \Adder|Add0~61\,
	combout => \Adder|Add0~62_combout\,
	cout => \Adder|Add0~63\);

-- Location: IOIBUF_X13_Y0_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X13_Y54_N10
\B_sig[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[31]~31_combout\ = \B[31]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[31]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[31]~31_combout\);

-- Location: IOIBUF_X0_Y9_N15
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X12_Y54_N14
\Adder|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~64_combout\ = ((\B_sig[31]~31_combout\ $ (\A[31]~input_o\ $ (!\Adder|Add0~63\)))) # (GND)
-- \Adder|Add0~65\ = CARRY((\B_sig[31]~31_combout\ & ((\A[31]~input_o\) # (!\Adder|Add0~63\))) # (!\B_sig[31]~31_combout\ & (\A[31]~input_o\ & !\Adder|Add0~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[31]~31_combout\,
	datab => \A[31]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~63\,
	combout => \Adder|Add0~64_combout\,
	cout => \Adder|Add0~65\);

-- Location: IOIBUF_X1_Y73_N8
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X8_Y55_N10
\B_sig[32]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[32]~32_combout\ = \AddnSub~input_o\ $ (\B[32]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[32]~input_o\,
	combout => \B_sig[32]~32_combout\);

-- Location: IOIBUF_X0_Y58_N15
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X12_Y54_N16
\Adder|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~66_combout\ = (\B_sig[32]~32_combout\ & ((\A[32]~input_o\ & (\Adder|Add0~65\ & VCC)) # (!\A[32]~input_o\ & (!\Adder|Add0~65\)))) # (!\B_sig[32]~32_combout\ & ((\A[32]~input_o\ & (!\Adder|Add0~65\)) # (!\A[32]~input_o\ & ((\Adder|Add0~65\) # 
-- (GND)))))
-- \Adder|Add0~67\ = CARRY((\B_sig[32]~32_combout\ & (!\A[32]~input_o\ & !\Adder|Add0~65\)) # (!\B_sig[32]~32_combout\ & ((!\Adder|Add0~65\) # (!\A[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[32]~32_combout\,
	datab => \A[32]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~65\,
	combout => \Adder|Add0~66_combout\,
	cout => \Adder|Add0~67\);

-- Location: IOIBUF_X58_Y0_N22
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LCCOMB_X13_Y53_N24
\B_sig[33]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[33]~33_combout\ = \B[33]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[33]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[33]~33_combout\);

-- Location: LCCOMB_X12_Y54_N18
\Adder|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~68_combout\ = ((\A[33]~input_o\ $ (\B_sig[33]~33_combout\ $ (!\Adder|Add0~67\)))) # (GND)
-- \Adder|Add0~69\ = CARRY((\A[33]~input_o\ & ((\B_sig[33]~33_combout\) # (!\Adder|Add0~67\))) # (!\A[33]~input_o\ & (\B_sig[33]~33_combout\ & !\Adder|Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \B_sig[33]~33_combout\,
	datad => VCC,
	cin => \Adder|Add0~67\,
	combout => \Adder|Add0~68_combout\,
	cout => \Adder|Add0~69\);

-- Location: IOIBUF_X5_Y73_N22
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X13_Y53_N18
\B_sig[34]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[34]~34_combout\ = \AddnSub~input_o\ $ (\B[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[34]~input_o\,
	combout => \B_sig[34]~34_combout\);

-- Location: LCCOMB_X12_Y54_N20
\Adder|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~70_combout\ = (\A[34]~input_o\ & ((\B_sig[34]~34_combout\ & (\Adder|Add0~69\ & VCC)) # (!\B_sig[34]~34_combout\ & (!\Adder|Add0~69\)))) # (!\A[34]~input_o\ & ((\B_sig[34]~34_combout\ & (!\Adder|Add0~69\)) # (!\B_sig[34]~34_combout\ & 
-- ((\Adder|Add0~69\) # (GND)))))
-- \Adder|Add0~71\ = CARRY((\A[34]~input_o\ & (!\B_sig[34]~34_combout\ & !\Adder|Add0~69\)) # (!\A[34]~input_o\ & ((!\Adder|Add0~69\) # (!\B_sig[34]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \B_sig[34]~34_combout\,
	datad => VCC,
	cin => \Adder|Add0~69\,
	combout => \Adder|Add0~70_combout\,
	cout => \Adder|Add0~71\);

-- Location: IOIBUF_X0_Y59_N22
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: LCCOMB_X8_Y55_N28
\B_sig[35]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[35]~35_combout\ = \B[35]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[35]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \B_sig[35]~35_combout\);

-- Location: IOIBUF_X33_Y73_N1
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X12_Y54_N22
\Adder|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~72_combout\ = ((\B_sig[35]~35_combout\ $ (\A[35]~input_o\ $ (!\Adder|Add0~71\)))) # (GND)
-- \Adder|Add0~73\ = CARRY((\B_sig[35]~35_combout\ & ((\A[35]~input_o\) # (!\Adder|Add0~71\))) # (!\B_sig[35]~35_combout\ & (\A[35]~input_o\ & !\Adder|Add0~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[35]~35_combout\,
	datab => \A[35]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~71\,
	combout => \Adder|Add0~72_combout\,
	cout => \Adder|Add0~73\);

-- Location: IOIBUF_X0_Y36_N15
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LCCOMB_X11_Y55_N30
\B_sig[36]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[36]~36_combout\ = \AddnSub~input_o\ $ (\B[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[36]~input_o\,
	combout => \B_sig[36]~36_combout\);

-- Location: IOIBUF_X0_Y36_N22
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X12_Y54_N24
\Adder|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~74_combout\ = (\B_sig[36]~36_combout\ & ((\A[36]~input_o\ & (\Adder|Add0~73\ & VCC)) # (!\A[36]~input_o\ & (!\Adder|Add0~73\)))) # (!\B_sig[36]~36_combout\ & ((\A[36]~input_o\ & (!\Adder|Add0~73\)) # (!\A[36]~input_o\ & ((\Adder|Add0~73\) # 
-- (GND)))))
-- \Adder|Add0~75\ = CARRY((\B_sig[36]~36_combout\ & (!\A[36]~input_o\ & !\Adder|Add0~73\)) # (!\B_sig[36]~36_combout\ & ((!\Adder|Add0~73\) # (!\A[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[36]~36_combout\,
	datab => \A[36]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~73\,
	combout => \Adder|Add0~74_combout\,
	cout => \Adder|Add0~75\);

-- Location: IOIBUF_X9_Y0_N15
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X13_Y53_N12
\B_sig[37]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[37]~37_combout\ = \B[37]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[37]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[37]~37_combout\);

-- Location: LCCOMB_X12_Y54_N26
\Adder|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~76_combout\ = ((\A[37]~input_o\ $ (\B_sig[37]~37_combout\ $ (!\Adder|Add0~75\)))) # (GND)
-- \Adder|Add0~77\ = CARRY((\A[37]~input_o\ & ((\B_sig[37]~37_combout\) # (!\Adder|Add0~75\))) # (!\A[37]~input_o\ & (\B_sig[37]~37_combout\ & !\Adder|Add0~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \B_sig[37]~37_combout\,
	datad => VCC,
	cin => \Adder|Add0~75\,
	combout => \Adder|Add0~76_combout\,
	cout => \Adder|Add0~77\);

-- Location: IOIBUF_X0_Y54_N8
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X8_Y52_N24
\B_sig[38]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[38]~38_combout\ = \AddnSub~input_o\ $ (\B[38]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[38]~input_o\,
	combout => \B_sig[38]~38_combout\);

-- Location: LCCOMB_X12_Y54_N28
\Adder|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~78_combout\ = (\A[38]~input_o\ & ((\B_sig[38]~38_combout\ & (\Adder|Add0~77\ & VCC)) # (!\B_sig[38]~38_combout\ & (!\Adder|Add0~77\)))) # (!\A[38]~input_o\ & ((\B_sig[38]~38_combout\ & (!\Adder|Add0~77\)) # (!\B_sig[38]~38_combout\ & 
-- ((\Adder|Add0~77\) # (GND)))))
-- \Adder|Add0~79\ = CARRY((\A[38]~input_o\ & (!\B_sig[38]~38_combout\ & !\Adder|Add0~77\)) # (!\A[38]~input_o\ & ((!\Adder|Add0~77\) # (!\B_sig[38]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \B_sig[38]~38_combout\,
	datad => VCC,
	cin => \Adder|Add0~77\,
	combout => \Adder|Add0~78_combout\,
	cout => \Adder|Add0~79\);

-- Location: IOIBUF_X16_Y0_N8
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LCCOMB_X13_Y54_N28
\B_sig[39]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[39]~39_combout\ = \B[39]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[39]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[39]~39_combout\);

-- Location: LCCOMB_X12_Y54_N30
\Adder|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~80_combout\ = ((\A[39]~input_o\ $ (\B_sig[39]~39_combout\ $ (!\Adder|Add0~79\)))) # (GND)
-- \Adder|Add0~81\ = CARRY((\A[39]~input_o\ & ((\B_sig[39]~39_combout\) # (!\Adder|Add0~79\))) # (!\A[39]~input_o\ & (\B_sig[39]~39_combout\ & !\Adder|Add0~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \B_sig[39]~39_combout\,
	datad => VCC,
	cin => \Adder|Add0~79\,
	combout => \Adder|Add0~80_combout\,
	cout => \Adder|Add0~81\);

-- Location: IOIBUF_X20_Y0_N8
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X13_Y53_N6
\B_sig[40]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[40]~40_combout\ = \AddnSub~input_o\ $ (\B[40]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[40]~input_o\,
	combout => \B_sig[40]~40_combout\);

-- Location: IOIBUF_X0_Y35_N8
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X12_Y53_N0
\Adder|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~82_combout\ = (\B_sig[40]~40_combout\ & ((\A[40]~input_o\ & (\Adder|Add0~81\ & VCC)) # (!\A[40]~input_o\ & (!\Adder|Add0~81\)))) # (!\B_sig[40]~40_combout\ & ((\A[40]~input_o\ & (!\Adder|Add0~81\)) # (!\A[40]~input_o\ & ((\Adder|Add0~81\) # 
-- (GND)))))
-- \Adder|Add0~83\ = CARRY((\B_sig[40]~40_combout\ & (!\A[40]~input_o\ & !\Adder|Add0~81\)) # (!\B_sig[40]~40_combout\ & ((!\Adder|Add0~81\) # (!\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[40]~40_combout\,
	datab => \A[40]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~81\,
	combout => \Adder|Add0~82_combout\,
	cout => \Adder|Add0~83\);

-- Location: IOIBUF_X0_Y21_N22
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X13_Y54_N30
\B_sig[41]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[41]~41_combout\ = \AddnSub~input_o\ $ (\B[41]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[41]~input_o\,
	combout => \B_sig[41]~41_combout\);

-- Location: LCCOMB_X12_Y53_N2
\Adder|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~84_combout\ = ((\A[41]~input_o\ $ (\B_sig[41]~41_combout\ $ (!\Adder|Add0~83\)))) # (GND)
-- \Adder|Add0~85\ = CARRY((\A[41]~input_o\ & ((\B_sig[41]~41_combout\) # (!\Adder|Add0~83\))) # (!\A[41]~input_o\ & (\B_sig[41]~41_combout\ & !\Adder|Add0~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \B_sig[41]~41_combout\,
	datad => VCC,
	cin => \Adder|Add0~83\,
	combout => \Adder|Add0~84_combout\,
	cout => \Adder|Add0~85\);

-- Location: IOIBUF_X0_Y69_N8
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LCCOMB_X13_Y53_N0
\B_sig[42]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[42]~42_combout\ = \B[42]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[42]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[42]~42_combout\);

-- Location: LCCOMB_X12_Y53_N4
\Adder|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~86_combout\ = (\A[42]~input_o\ & ((\B_sig[42]~42_combout\ & (\Adder|Add0~85\ & VCC)) # (!\B_sig[42]~42_combout\ & (!\Adder|Add0~85\)))) # (!\A[42]~input_o\ & ((\B_sig[42]~42_combout\ & (!\Adder|Add0~85\)) # (!\B_sig[42]~42_combout\ & 
-- ((\Adder|Add0~85\) # (GND)))))
-- \Adder|Add0~87\ = CARRY((\A[42]~input_o\ & (!\B_sig[42]~42_combout\ & !\Adder|Add0~85\)) # (!\A[42]~input_o\ & ((!\Adder|Add0~85\) # (!\B_sig[42]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \B_sig[42]~42_combout\,
	datad => VCC,
	cin => \Adder|Add0~85\,
	combout => \Adder|Add0~86_combout\,
	cout => \Adder|Add0~87\);

-- Location: IOIBUF_X0_Y13_N1
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LCCOMB_X8_Y55_N14
\B_sig[43]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[43]~43_combout\ = \B[43]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \B_sig[43]~43_combout\);

-- Location: LCCOMB_X12_Y53_N6
\Adder|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~88_combout\ = ((\A[43]~input_o\ $ (\B_sig[43]~43_combout\ $ (!\Adder|Add0~87\)))) # (GND)
-- \Adder|Add0~89\ = CARRY((\A[43]~input_o\ & ((\B_sig[43]~43_combout\) # (!\Adder|Add0~87\))) # (!\A[43]~input_o\ & (\B_sig[43]~43_combout\ & !\Adder|Add0~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \B_sig[43]~43_combout\,
	datad => VCC,
	cin => \Adder|Add0~87\,
	combout => \Adder|Add0~88_combout\,
	cout => \Adder|Add0~89\);

-- Location: IOIBUF_X85_Y73_N8
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X13_Y53_N2
\B_sig[44]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[44]~44_combout\ = \B[44]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[44]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[44]~44_combout\);

-- Location: IOIBUF_X27_Y73_N15
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X12_Y53_N8
\Adder|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~90_combout\ = (\B_sig[44]~44_combout\ & ((\A[44]~input_o\ & (\Adder|Add0~89\ & VCC)) # (!\A[44]~input_o\ & (!\Adder|Add0~89\)))) # (!\B_sig[44]~44_combout\ & ((\A[44]~input_o\ & (!\Adder|Add0~89\)) # (!\A[44]~input_o\ & ((\Adder|Add0~89\) # 
-- (GND)))))
-- \Adder|Add0~91\ = CARRY((\B_sig[44]~44_combout\ & (!\A[44]~input_o\ & !\Adder|Add0~89\)) # (!\B_sig[44]~44_combout\ & ((!\Adder|Add0~89\) # (!\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[44]~44_combout\,
	datab => \A[44]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~89\,
	combout => \Adder|Add0~90_combout\,
	cout => \Adder|Add0~91\);

-- Location: IOIBUF_X60_Y73_N8
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LCCOMB_X13_Y53_N20
\B_sig[45]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[45]~45_combout\ = \B[45]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[45]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[45]~45_combout\);

-- Location: IOIBUF_X31_Y73_N8
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X12_Y53_N10
\Adder|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~92_combout\ = ((\B_sig[45]~45_combout\ $ (\A[45]~input_o\ $ (!\Adder|Add0~91\)))) # (GND)
-- \Adder|Add0~93\ = CARRY((\B_sig[45]~45_combout\ & ((\A[45]~input_o\) # (!\Adder|Add0~91\))) # (!\B_sig[45]~45_combout\ & (\A[45]~input_o\ & !\Adder|Add0~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[45]~45_combout\,
	datab => \A[45]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~91\,
	combout => \Adder|Add0~92_combout\,
	cout => \Adder|Add0~93\);

-- Location: IOIBUF_X115_Y53_N15
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X11_Y57_N16
\B_sig[46]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[46]~46_combout\ = \B[46]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[46]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[46]~46_combout\);

-- Location: LCCOMB_X12_Y53_N12
\Adder|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~94_combout\ = (\A[46]~input_o\ & ((\B_sig[46]~46_combout\ & (\Adder|Add0~93\ & VCC)) # (!\B_sig[46]~46_combout\ & (!\Adder|Add0~93\)))) # (!\A[46]~input_o\ & ((\B_sig[46]~46_combout\ & (!\Adder|Add0~93\)) # (!\B_sig[46]~46_combout\ & 
-- ((\Adder|Add0~93\) # (GND)))))
-- \Adder|Add0~95\ = CARRY((\A[46]~input_o\ & (!\B_sig[46]~46_combout\ & !\Adder|Add0~93\)) # (!\A[46]~input_o\ & ((!\Adder|Add0~93\) # (!\B_sig[46]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B_sig[46]~46_combout\,
	datad => VCC,
	cin => \Adder|Add0~93\,
	combout => \Adder|Add0~94_combout\,
	cout => \Adder|Add0~95\);

-- Location: IOIBUF_X67_Y73_N1
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LCCOMB_X13_Y54_N16
\B_sig[47]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[47]~47_combout\ = \B[47]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[47]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[47]~47_combout\);

-- Location: IOIBUF_X0_Y12_N15
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X12_Y53_N14
\Adder|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~96_combout\ = ((\B_sig[47]~47_combout\ $ (\A[47]~input_o\ $ (!\Adder|Add0~95\)))) # (GND)
-- \Adder|Add0~97\ = CARRY((\B_sig[47]~47_combout\ & ((\A[47]~input_o\) # (!\Adder|Add0~95\))) # (!\B_sig[47]~47_combout\ & (\A[47]~input_o\ & !\Adder|Add0~95\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[47]~47_combout\,
	datab => \A[47]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~95\,
	combout => \Adder|Add0~96_combout\,
	cout => \Adder|Add0~97\);

-- Location: IOIBUF_X0_Y53_N8
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X11_Y55_N16
\B_sig[48]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[48]~48_combout\ = \AddnSub~input_o\ $ (\B[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[48]~input_o\,
	combout => \B_sig[48]~48_combout\);

-- Location: LCCOMB_X12_Y53_N16
\Adder|Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~98_combout\ = (\A[48]~input_o\ & ((\B_sig[48]~48_combout\ & (\Adder|Add0~97\ & VCC)) # (!\B_sig[48]~48_combout\ & (!\Adder|Add0~97\)))) # (!\A[48]~input_o\ & ((\B_sig[48]~48_combout\ & (!\Adder|Add0~97\)) # (!\B_sig[48]~48_combout\ & 
-- ((\Adder|Add0~97\) # (GND)))))
-- \Adder|Add0~99\ = CARRY((\A[48]~input_o\ & (!\B_sig[48]~48_combout\ & !\Adder|Add0~97\)) # (!\A[48]~input_o\ & ((!\Adder|Add0~97\) # (!\B_sig[48]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \B_sig[48]~48_combout\,
	datad => VCC,
	cin => \Adder|Add0~97\,
	combout => \Adder|Add0~98_combout\,
	cout => \Adder|Add0~99\);

-- Location: IOIBUF_X0_Y53_N1
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X3_Y73_N1
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LCCOMB_X11_Y55_N18
\B_sig[49]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[49]~49_combout\ = \AddnSub~input_o\ $ (\B[49]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[49]~input_o\,
	combout => \B_sig[49]~49_combout\);

-- Location: LCCOMB_X12_Y53_N18
\Adder|Add0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~100_combout\ = ((\A[49]~input_o\ $ (\B_sig[49]~49_combout\ $ (!\Adder|Add0~99\)))) # (GND)
-- \Adder|Add0~101\ = CARRY((\A[49]~input_o\ & ((\B_sig[49]~49_combout\) # (!\Adder|Add0~99\))) # (!\A[49]~input_o\ & (\B_sig[49]~49_combout\ & !\Adder|Add0~99\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \B_sig[49]~49_combout\,
	datad => VCC,
	cin => \Adder|Add0~99\,
	combout => \Adder|Add0~100_combout\,
	cout => \Adder|Add0~101\);

-- Location: IOIBUF_X52_Y73_N8
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X9_Y53_N24
\B_sig[50]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[50]~50_combout\ = \AddnSub~input_o\ $ (\B[50]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[50]~input_o\,
	combout => \B_sig[50]~50_combout\);

-- Location: LCCOMB_X12_Y53_N20
\Adder|Add0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~102_combout\ = (\A[50]~input_o\ & ((\B_sig[50]~50_combout\ & (\Adder|Add0~101\ & VCC)) # (!\B_sig[50]~50_combout\ & (!\Adder|Add0~101\)))) # (!\A[50]~input_o\ & ((\B_sig[50]~50_combout\ & (!\Adder|Add0~101\)) # (!\B_sig[50]~50_combout\ & 
-- ((\Adder|Add0~101\) # (GND)))))
-- \Adder|Add0~103\ = CARRY((\A[50]~input_o\ & (!\B_sig[50]~50_combout\ & !\Adder|Add0~101\)) # (!\A[50]~input_o\ & ((!\Adder|Add0~101\) # (!\B_sig[50]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \B_sig[50]~50_combout\,
	datad => VCC,
	cin => \Adder|Add0~101\,
	combout => \Adder|Add0~102_combout\,
	cout => \Adder|Add0~103\);

-- Location: IOIBUF_X0_Y23_N22
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X13_Y54_N18
\B_sig[51]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[51]~51_combout\ = \B[51]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[51]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[51]~51_combout\);

-- Location: LCCOMB_X12_Y53_N22
\Adder|Add0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~104_combout\ = ((\A[51]~input_o\ $ (\B_sig[51]~51_combout\ $ (!\Adder|Add0~103\)))) # (GND)
-- \Adder|Add0~105\ = CARRY((\A[51]~input_o\ & ((\B_sig[51]~51_combout\) # (!\Adder|Add0~103\))) # (!\A[51]~input_o\ & (\B_sig[51]~51_combout\ & !\Adder|Add0~103\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \B_sig[51]~51_combout\,
	datad => VCC,
	cin => \Adder|Add0~103\,
	combout => \Adder|Add0~104_combout\,
	cout => \Adder|Add0~105\);

-- Location: IOIBUF_X0_Y64_N1
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LCCOMB_X13_Y53_N22
\B_sig[52]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[52]~52_combout\ = \AddnSub~input_o\ $ (\B[52]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[52]~input_o\,
	combout => \B_sig[52]~52_combout\);

-- Location: IOIBUF_X16_Y0_N1
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X12_Y53_N24
\Adder|Add0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~106_combout\ = (\B_sig[52]~52_combout\ & ((\A[52]~input_o\ & (\Adder|Add0~105\ & VCC)) # (!\A[52]~input_o\ & (!\Adder|Add0~105\)))) # (!\B_sig[52]~52_combout\ & ((\A[52]~input_o\ & (!\Adder|Add0~105\)) # (!\A[52]~input_o\ & ((\Adder|Add0~105\) 
-- # (GND)))))
-- \Adder|Add0~107\ = CARRY((\B_sig[52]~52_combout\ & (!\A[52]~input_o\ & !\Adder|Add0~105\)) # (!\B_sig[52]~52_combout\ & ((!\Adder|Add0~105\) # (!\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[52]~52_combout\,
	datab => \A[52]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~105\,
	combout => \Adder|Add0~106_combout\,
	cout => \Adder|Add0~107\);

-- Location: IOIBUF_X35_Y73_N15
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X0_Y19_N8
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X11_Y55_N20
\B_sig[53]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[53]~53_combout\ = \AddnSub~input_o\ $ (\B[53]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[53]~input_o\,
	combout => \B_sig[53]~53_combout\);

-- Location: LCCOMB_X12_Y53_N26
\Adder|Add0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~108_combout\ = ((\A[53]~input_o\ $ (\B_sig[53]~53_combout\ $ (!\Adder|Add0~107\)))) # (GND)
-- \Adder|Add0~109\ = CARRY((\A[53]~input_o\ & ((\B_sig[53]~53_combout\) # (!\Adder|Add0~107\))) # (!\A[53]~input_o\ & (\B_sig[53]~53_combout\ & !\Adder|Add0~107\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \B_sig[53]~53_combout\,
	datad => VCC,
	cin => \Adder|Add0~107\,
	combout => \Adder|Add0~108_combout\,
	cout => \Adder|Add0~109\);

-- Location: IOIBUF_X18_Y73_N15
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X13_Y54_N20
\B_sig[54]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[54]~54_combout\ = \B[54]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[54]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[54]~54_combout\);

-- Location: IOIBUF_X40_Y73_N1
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LCCOMB_X12_Y53_N28
\Adder|Add0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~110_combout\ = (\B_sig[54]~54_combout\ & ((\A[54]~input_o\ & (\Adder|Add0~109\ & VCC)) # (!\A[54]~input_o\ & (!\Adder|Add0~109\)))) # (!\B_sig[54]~54_combout\ & ((\A[54]~input_o\ & (!\Adder|Add0~109\)) # (!\A[54]~input_o\ & ((\Adder|Add0~109\) 
-- # (GND)))))
-- \Adder|Add0~111\ = CARRY((\B_sig[54]~54_combout\ & (!\A[54]~input_o\ & !\Adder|Add0~109\)) # (!\B_sig[54]~54_combout\ & ((!\Adder|Add0~109\) # (!\A[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[54]~54_combout\,
	datab => \A[54]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~109\,
	combout => \Adder|Add0~110_combout\,
	cout => \Adder|Add0~111\);

-- Location: IOIBUF_X29_Y0_N15
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X13_Y53_N8
\B_sig[55]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[55]~55_combout\ = \B[55]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[55]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[55]~55_combout\);

-- Location: LCCOMB_X12_Y53_N30
\Adder|Add0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~112_combout\ = ((\A[55]~input_o\ $ (\B_sig[55]~55_combout\ $ (!\Adder|Add0~111\)))) # (GND)
-- \Adder|Add0~113\ = CARRY((\A[55]~input_o\ & ((\B_sig[55]~55_combout\) # (!\Adder|Add0~111\))) # (!\A[55]~input_o\ & (\B_sig[55]~55_combout\ & !\Adder|Add0~111\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \B_sig[55]~55_combout\,
	datad => VCC,
	cin => \Adder|Add0~111\,
	combout => \Adder|Add0~112_combout\,
	cout => \Adder|Add0~113\);

-- Location: IOIBUF_X27_Y73_N8
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X13_Y53_N10
\B_sig[56]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[56]~56_combout\ = \B[56]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[56]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[56]~56_combout\);

-- Location: IOIBUF_X0_Y52_N22
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LCCOMB_X12_Y52_N0
\Adder|Add0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~114_combout\ = (\B_sig[56]~56_combout\ & ((\A[56]~input_o\ & (\Adder|Add0~113\ & VCC)) # (!\A[56]~input_o\ & (!\Adder|Add0~113\)))) # (!\B_sig[56]~56_combout\ & ((\A[56]~input_o\ & (!\Adder|Add0~113\)) # (!\A[56]~input_o\ & ((\Adder|Add0~113\) 
-- # (GND)))))
-- \Adder|Add0~115\ = CARRY((\B_sig[56]~56_combout\ & (!\A[56]~input_o\ & !\Adder|Add0~113\)) # (!\B_sig[56]~56_combout\ & ((!\Adder|Add0~113\) # (!\A[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[56]~56_combout\,
	datab => \A[56]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~113\,
	combout => \Adder|Add0~114_combout\,
	cout => \Adder|Add0~115\);

-- Location: IOIBUF_X0_Y62_N22
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X8_Y55_N8
\B_sig[57]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[57]~57_combout\ = \AddnSub~input_o\ $ (\B[57]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[57]~input_o\,
	combout => \B_sig[57]~57_combout\);

-- Location: IOIBUF_X0_Y25_N22
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LCCOMB_X12_Y52_N2
\Adder|Add0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~116_combout\ = ((\B_sig[57]~57_combout\ $ (\A[57]~input_o\ $ (!\Adder|Add0~115\)))) # (GND)
-- \Adder|Add0~117\ = CARRY((\B_sig[57]~57_combout\ & ((\A[57]~input_o\) # (!\Adder|Add0~115\))) # (!\B_sig[57]~57_combout\ & (\A[57]~input_o\ & !\Adder|Add0~115\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[57]~57_combout\,
	datab => \A[57]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~115\,
	combout => \Adder|Add0~116_combout\,
	cout => \Adder|Add0~117\);

-- Location: IOIBUF_X58_Y73_N8
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LCCOMB_X13_Y54_N22
\B_sig[58]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[58]~58_combout\ = \B[58]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[58]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[58]~58_combout\);

-- Location: IOIBUF_X11_Y0_N15
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X12_Y52_N4
\Adder|Add0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~118_combout\ = (\B_sig[58]~58_combout\ & ((\A[58]~input_o\ & (\Adder|Add0~117\ & VCC)) # (!\A[58]~input_o\ & (!\Adder|Add0~117\)))) # (!\B_sig[58]~58_combout\ & ((\A[58]~input_o\ & (!\Adder|Add0~117\)) # (!\A[58]~input_o\ & ((\Adder|Add0~117\) 
-- # (GND)))))
-- \Adder|Add0~119\ = CARRY((\B_sig[58]~58_combout\ & (!\A[58]~input_o\ & !\Adder|Add0~117\)) # (!\B_sig[58]~58_combout\ & ((!\Adder|Add0~117\) # (!\A[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[58]~58_combout\,
	datab => \A[58]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~117\,
	combout => \Adder|Add0~118_combout\,
	cout => \Adder|Add0~119\);

-- Location: IOIBUF_X20_Y73_N8
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X13_Y73_N1
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X13_Y53_N4
\B_sig[59]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[59]~59_combout\ = \B[59]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[59]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[59]~59_combout\);

-- Location: LCCOMB_X12_Y52_N6
\Adder|Add0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~120_combout\ = ((\A[59]~input_o\ $ (\B_sig[59]~59_combout\ $ (!\Adder|Add0~119\)))) # (GND)
-- \Adder|Add0~121\ = CARRY((\A[59]~input_o\ & ((\B_sig[59]~59_combout\) # (!\Adder|Add0~119\))) # (!\A[59]~input_o\ & (\B_sig[59]~59_combout\ & !\Adder|Add0~119\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \B_sig[59]~59_combout\,
	datad => VCC,
	cin => \Adder|Add0~119\,
	combout => \Adder|Add0~120_combout\,
	cout => \Adder|Add0~121\);

-- Location: IOIBUF_X7_Y73_N22
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X8_Y55_N26
\B_sig[60]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[60]~60_combout\ = \AddnSub~input_o\ $ (\B[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[60]~input_o\,
	combout => \B_sig[60]~60_combout\);

-- Location: IOIBUF_X67_Y73_N15
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X12_Y52_N8
\Adder|Add0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~122_combout\ = (\B_sig[60]~60_combout\ & ((\A[60]~input_o\ & (\Adder|Add0~121\ & VCC)) # (!\A[60]~input_o\ & (!\Adder|Add0~121\)))) # (!\B_sig[60]~60_combout\ & ((\A[60]~input_o\ & (!\Adder|Add0~121\)) # (!\A[60]~input_o\ & ((\Adder|Add0~121\) 
-- # (GND)))))
-- \Adder|Add0~123\ = CARRY((\B_sig[60]~60_combout\ & (!\A[60]~input_o\ & !\Adder|Add0~121\)) # (!\B_sig[60]~60_combout\ & ((!\Adder|Add0~121\) # (!\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[60]~60_combout\,
	datab => \A[60]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~121\,
	combout => \Adder|Add0~122_combout\,
	cout => \Adder|Add0~123\);

-- Location: IOIBUF_X72_Y73_N1
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LCCOMB_X13_Y53_N30
\B_sig[61]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[61]~61_combout\ = \B[61]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[61]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \B_sig[61]~61_combout\);

-- Location: IOIBUF_X0_Y21_N15
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LCCOMB_X12_Y52_N10
\Adder|Add0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~124_combout\ = ((\B_sig[61]~61_combout\ $ (\A[61]~input_o\ $ (!\Adder|Add0~123\)))) # (GND)
-- \Adder|Add0~125\ = CARRY((\B_sig[61]~61_combout\ & ((\A[61]~input_o\) # (!\Adder|Add0~123\))) # (!\B_sig[61]~61_combout\ & (\A[61]~input_o\ & !\Adder|Add0~123\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B_sig[61]~61_combout\,
	datab => \A[61]~input_o\,
	datad => VCC,
	cin => \Adder|Add0~123\,
	combout => \Adder|Add0~124_combout\,
	cout => \Adder|Add0~125\);

-- Location: IOIBUF_X0_Y4_N22
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X11_Y55_N22
\B_sig[62]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[62]~62_combout\ = \AddnSub~input_o\ $ (\B[62]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[62]~input_o\,
	combout => \B_sig[62]~62_combout\);

-- Location: LCCOMB_X12_Y52_N12
\Adder|Add0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~126_combout\ = (\A[62]~input_o\ & ((\B_sig[62]~62_combout\ & (\Adder|Add0~125\ & VCC)) # (!\B_sig[62]~62_combout\ & (!\Adder|Add0~125\)))) # (!\A[62]~input_o\ & ((\B_sig[62]~62_combout\ & (!\Adder|Add0~125\)) # (!\B_sig[62]~62_combout\ & 
-- ((\Adder|Add0~125\) # (GND)))))
-- \Adder|Add0~127\ = CARRY((\A[62]~input_o\ & (!\B_sig[62]~62_combout\ & !\Adder|Add0~125\)) # (!\A[62]~input_o\ & ((!\Adder|Add0~125\) # (!\B_sig[62]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \B_sig[62]~62_combout\,
	datad => VCC,
	cin => \Adder|Add0~125\,
	combout => \Adder|Add0~126_combout\,
	cout => \Adder|Add0~127\);

-- Location: IOIBUF_X0_Y25_N15
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LCCOMB_X12_Y52_N18
\B_sig[63]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_sig[63]~63_combout\ = \AddnSub~input_o\ $ (\B[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[63]~input_o\,
	combout => \B_sig[63]~63_combout\);

-- Location: LCCOMB_X12_Y52_N14
\Adder|Add0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~128_combout\ = ((\A[63]~input_o\ $ (\B_sig[63]~63_combout\ $ (!\Adder|Add0~127\)))) # (GND)
-- \Adder|Add0~129\ = CARRY((\A[63]~input_o\ & ((\B_sig[63]~63_combout\) # (!\Adder|Add0~127\))) # (!\A[63]~input_o\ & (\B_sig[63]~63_combout\ & !\Adder|Add0~127\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B_sig[63]~63_combout\,
	datad => VCC,
	cin => \Adder|Add0~127\,
	combout => \Adder|Add0~128_combout\,
	cout => \Adder|Add0~129\);

-- Location: IOIBUF_X0_Y68_N8
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LCCOMB_X12_Y66_N0
\Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = (\ExtWord~input_o\ & (\Adder|Add0~64_combout\)) # (!\ExtWord~input_o\ & ((\Adder|Add0~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~64_combout\,
	datab => \ExtWord~input_o\,
	datad => \Adder|Add0~66_combout\,
	combout => \Y~0_combout\);

-- Location: LCCOMB_X12_Y66_N26
\Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~1_combout\ = (\ExtWord~input_o\ & (\Adder|Add0~64_combout\)) # (!\ExtWord~input_o\ & ((\Adder|Add0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~64_combout\,
	datab => \ExtWord~input_o\,
	datad => \Adder|Add0~68_combout\,
	combout => \Y~1_combout\);

-- Location: LCCOMB_X12_Y66_N12
\Y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~2_combout\ = (\ExtWord~input_o\ & ((\Adder|Add0~64_combout\))) # (!\ExtWord~input_o\ & (\Adder|Add0~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~70_combout\,
	datab => \ExtWord~input_o\,
	datad => \Adder|Add0~64_combout\,
	combout => \Y~2_combout\);

-- Location: LCCOMB_X12_Y66_N14
\Y~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~3_combout\ = (\ExtWord~input_o\ & (\Adder|Add0~64_combout\)) # (!\ExtWord~input_o\ & ((\Adder|Add0~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~64_combout\,
	datab => \ExtWord~input_o\,
	datad => \Adder|Add0~72_combout\,
	combout => \Y~3_combout\);

-- Location: LCCOMB_X12_Y50_N8
\Y~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~4_combout\ = (\ExtWord~input_o\ & (\Adder|Add0~64_combout\)) # (!\ExtWord~input_o\ & ((\Adder|Add0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder|Add0~64_combout\,
	datac => \ExtWord~input_o\,
	datad => \Adder|Add0~74_combout\,
	combout => \Y~4_combout\);

-- Location: LCCOMB_X12_Y66_N16
\Y~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~5_combout\ = (\ExtWord~input_o\ & (\Adder|Add0~64_combout\)) # (!\ExtWord~input_o\ & ((\Adder|Add0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~64_combout\,
	datab => \ExtWord~input_o\,
	datad => \Adder|Add0~76_combout\,
	combout => \Y~5_combout\);

-- Location: LCCOMB_X12_Y66_N2
\Y~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~6_combout\ = (\ExtWord~input_o\ & (\Adder|Add0~64_combout\)) # (!\ExtWord~input_o\ & ((\Adder|Add0~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~64_combout\,
	datab => \ExtWord~input_o\,
	datad => \Adder|Add0~78_combout\,
	combout => \Y~6_combout\);

-- Location: LCCOMB_X12_Y66_N20
\Y~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~7_combout\ = (\ExtWord~input_o\ & (\Adder|Add0~64_combout\)) # (!\ExtWord~input_o\ & ((\Adder|Add0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~64_combout\,
	datab => \ExtWord~input_o\,
	datac => \Adder|Add0~80_combout\,
	combout => \Y~7_combout\);

-- Location: LCCOMB_X12_Y66_N22
\Y~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~8_combout\ = (\ExtWord~input_o\ & (\Adder|Add0~64_combout\)) # (!\ExtWord~input_o\ & ((\Adder|Add0~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~64_combout\,
	datab => \ExtWord~input_o\,
	datad => \Adder|Add0~82_combout\,
	combout => \Y~8_combout\);

-- Location: LCCOMB_X12_Y66_N8
\Y~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~9_combout\ = (\ExtWord~input_o\ & (\Adder|Add0~64_combout\)) # (!\ExtWord~input_o\ & ((\Adder|Add0~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~64_combout\,
	datab => \ExtWord~input_o\,
	datad => \Adder|Add0~84_combout\,
	combout => \Y~9_combout\);

-- Location: LCCOMB_X12_Y66_N10
\Y~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~10_combout\ = (\ExtWord~input_o\ & (\Adder|Add0~64_combout\)) # (!\ExtWord~input_o\ & ((\Adder|Add0~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~64_combout\,
	datab => \Adder|Add0~86_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~10_combout\);

-- Location: LCCOMB_X12_Y66_N4
\Y~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~11_combout\ = (\ExtWord~input_o\ & (\Adder|Add0~64_combout\)) # (!\ExtWord~input_o\ & ((\Adder|Add0~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~64_combout\,
	datab => \ExtWord~input_o\,
	datad => \Adder|Add0~88_combout\,
	combout => \Y~11_combout\);

-- Location: LCCOMB_X6_Y49_N24
\Y~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~12_combout\ = (\ExtWord~input_o\ & ((\Adder|Add0~64_combout\))) # (!\ExtWord~input_o\ & (\Adder|Add0~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~90_combout\,
	datab => \ExtWord~input_o\,
	datac => \Adder|Add0~64_combout\,
	combout => \Y~12_combout\);

-- Location: LCCOMB_X6_Y49_N26
\Y~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~13_combout\ = (\ExtWord~input_o\ & (\Adder|Add0~64_combout\)) # (!\ExtWord~input_o\ & ((\Adder|Add0~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~64_combout\,
	datab => \Adder|Add0~92_combout\,
	datac => \ExtWord~input_o\,
	combout => \Y~13_combout\);

-- Location: LCCOMB_X6_Y49_N12
\Y~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~14_combout\ = (\ExtWord~input_o\ & (\Adder|Add0~64_combout\)) # (!\ExtWord~input_o\ & ((\Adder|Add0~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~64_combout\,
	datab => \Adder|Add0~94_combout\,
	datac => \ExtWord~input_o\,
	combout => \Y~14_combout\);

-- Location: LCCOMB_X6_Y49_N6
\Y~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~15_combout\ = (\ExtWord~input_o\ & (\Adder|Add0~64_combout\)) # (!\ExtWord~input_o\ & ((\Adder|Add0~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~64_combout\,
	datab => \Adder|Add0~96_combout\,
	datac => \ExtWord~input_o\,
	combout => \Y~15_combout\);

-- Location: LCCOMB_X6_Y49_N16
\Y~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~16_combout\ = (\ExtWord~input_o\ & ((\Adder|Add0~64_combout\))) # (!\ExtWord~input_o\ & (\Adder|Add0~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~98_combout\,
	datab => \ExtWord~input_o\,
	datac => \Adder|Add0~64_combout\,
	combout => \Y~16_combout\);

-- Location: LCCOMB_X12_Y50_N26
\Y~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~17_combout\ = (\ExtWord~input_o\ & ((\Adder|Add0~64_combout\))) # (!\ExtWord~input_o\ & (\Adder|Add0~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder|Add0~100_combout\,
	datac => \Adder|Add0~64_combout\,
	combout => \Y~17_combout\);

-- Location: LCCOMB_X6_Y49_N2
\Y~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~18_combout\ = (\ExtWord~input_o\ & ((\Adder|Add0~64_combout\))) # (!\ExtWord~input_o\ & (\Adder|Add0~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~102_combout\,
	datab => \ExtWord~input_o\,
	datac => \Adder|Add0~64_combout\,
	combout => \Y~18_combout\);

-- Location: LCCOMB_X6_Y49_N4
\Y~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~19_combout\ = (\ExtWord~input_o\ & ((\Adder|Add0~64_combout\))) # (!\ExtWord~input_o\ & (\Adder|Add0~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~104_combout\,
	datab => \ExtWord~input_o\,
	datac => \Adder|Add0~64_combout\,
	combout => \Y~19_combout\);

-- Location: LCCOMB_X6_Y49_N30
\Y~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~20_combout\ = (\ExtWord~input_o\ & (\Adder|Add0~64_combout\)) # (!\ExtWord~input_o\ & ((\Adder|Add0~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~64_combout\,
	datab => \Adder|Add0~106_combout\,
	datac => \ExtWord~input_o\,
	combout => \Y~20_combout\);

-- Location: LCCOMB_X6_Y49_N0
\Y~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~21_combout\ = (\ExtWord~input_o\ & (\Adder|Add0~64_combout\)) # (!\ExtWord~input_o\ & ((\Adder|Add0~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~64_combout\,
	datab => \Adder|Add0~108_combout\,
	datac => \ExtWord~input_o\,
	combout => \Y~21_combout\);

-- Location: LCCOMB_X6_Y49_N18
\Y~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~22_combout\ = (\ExtWord~input_o\ & ((\Adder|Add0~64_combout\))) # (!\ExtWord~input_o\ & (\Adder|Add0~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~110_combout\,
	datab => \ExtWord~input_o\,
	datac => \Adder|Add0~64_combout\,
	combout => \Y~22_combout\);

-- Location: LCCOMB_X6_Y49_N20
\Y~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~23_combout\ = (\ExtWord~input_o\ & (\Adder|Add0~64_combout\)) # (!\ExtWord~input_o\ & ((\Adder|Add0~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~64_combout\,
	datab => \Adder|Add0~112_combout\,
	datac => \ExtWord~input_o\,
	combout => \Y~23_combout\);

-- Location: LCCOMB_X12_Y50_N4
\Y~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~24_combout\ = (\ExtWord~input_o\ & ((\Adder|Add0~64_combout\))) # (!\ExtWord~input_o\ & (\Adder|Add0~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~114_combout\,
	datab => \Adder|Add0~64_combout\,
	datac => \ExtWord~input_o\,
	combout => \Y~24_combout\);

-- Location: LCCOMB_X6_Y49_N22
\Y~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~25_combout\ = (\ExtWord~input_o\ & (\Adder|Add0~64_combout\)) # (!\ExtWord~input_o\ & ((\Adder|Add0~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~64_combout\,
	datab => \ExtWord~input_o\,
	datac => \Adder|Add0~116_combout\,
	combout => \Y~25_combout\);

-- Location: LCCOMB_X12_Y50_N6
\Y~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~26_combout\ = (\ExtWord~input_o\ & ((\Adder|Add0~64_combout\))) # (!\ExtWord~input_o\ & (\Adder|Add0~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~118_combout\,
	datab => \Adder|Add0~64_combout\,
	datac => \ExtWord~input_o\,
	combout => \Y~26_combout\);

-- Location: LCCOMB_X6_Y49_N8
\Y~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~27_combout\ = (\ExtWord~input_o\ & ((\Adder|Add0~64_combout\))) # (!\ExtWord~input_o\ & (\Adder|Add0~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~120_combout\,
	datab => \ExtWord~input_o\,
	datac => \Adder|Add0~64_combout\,
	combout => \Y~27_combout\);

-- Location: LCCOMB_X6_Y49_N10
\Y~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~28_combout\ = (\ExtWord~input_o\ & (\Adder|Add0~64_combout\)) # (!\ExtWord~input_o\ & ((\Adder|Add0~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~64_combout\,
	datab => \Adder|Add0~122_combout\,
	datac => \ExtWord~input_o\,
	combout => \Y~28_combout\);

-- Location: LCCOMB_X12_Y50_N0
\Y~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~29_combout\ = (\ExtWord~input_o\ & ((\Adder|Add0~64_combout\))) # (!\ExtWord~input_o\ & (\Adder|Add0~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~124_combout\,
	datab => \Adder|Add0~64_combout\,
	datac => \ExtWord~input_o\,
	combout => \Y~29_combout\);

-- Location: LCCOMB_X12_Y50_N10
\Y~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~30_combout\ = (\ExtWord~input_o\ & ((\Adder|Add0~64_combout\))) # (!\ExtWord~input_o\ & (\Adder|Add0~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder|Add0~126_combout\,
	datac => \Adder|Add0~64_combout\,
	combout => \Y~30_combout\);

-- Location: LCCOMB_X12_Y50_N20
\Y~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~31_combout\ = (\ExtWord~input_o\ & ((\Adder|Add0~64_combout\))) # (!\ExtWord~input_o\ & (\Adder|Add0~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder|Add0~128_combout\,
	datac => \Adder|Add0~64_combout\,
	combout => \Y~31_combout\);

-- Location: LCCOMB_X12_Y52_N16
\Adder|Add0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Add0~130_combout\ = \Adder|Add0~129\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Adder|Add0~129\,
	combout => \Adder|Add0~130_combout\);

-- Location: LCCOMB_X12_Y52_N20
\Ovfl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~2_combout\ = \A[63]~input_o\ $ (\B_sig[63]~63_combout\ $ (\Adder|Add0~128_combout\ $ (\Adder|Add0~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B_sig[63]~63_combout\,
	datac => \Adder|Add0~128_combout\,
	datad => \Adder|Add0~130_combout\,
	combout => \Ovfl~2_combout\);

-- Location: LCCOMB_X12_Y50_N12
\ZeroGate|gen_tree:NORGate1|y~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~8_combout\ = (\Adder|Add0~58_combout\) # ((\Adder|Add0~62_combout\) # ((\Adder|Add0~64_combout\) # (\Adder|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~58_combout\,
	datab => \Adder|Add0~62_combout\,
	datac => \Adder|Add0~64_combout\,
	datad => \Adder|Add0~60_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~8_combout\);

-- Location: LCCOMB_X12_Y50_N18
\ZeroGate|gen_tree:NORGate1|y~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~7_combout\ = (\Adder|Add0~54_combout\) # ((\Adder|Add0~56_combout\) # ((\Adder|Add0~52_combout\) # (\Adder|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~54_combout\,
	datab => \Adder|Add0~56_combout\,
	datac => \Adder|Add0~52_combout\,
	datad => \Adder|Add0~50_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~7_combout\);

-- Location: LCCOMB_X12_Y50_N14
\ZeroGate|gen_tree:NORGate1|y~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~5_combout\ = (\Adder|Add0~38_combout\) # ((\Adder|Add0~40_combout\) # ((\Adder|Add0~34_combout\) # (\Adder|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~38_combout\,
	datab => \Adder|Add0~40_combout\,
	datac => \Adder|Add0~34_combout\,
	datad => \Adder|Add0~36_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~5_combout\);

-- Location: LCCOMB_X12_Y50_N24
\ZeroGate|gen_tree:NORGate1|y~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~6_combout\ = (\Adder|Add0~46_combout\) # ((\Adder|Add0~44_combout\) # ((\Adder|Add0~48_combout\) # (\Adder|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~46_combout\,
	datab => \Adder|Add0~44_combout\,
	datac => \Adder|Add0~48_combout\,
	datad => \Adder|Add0~42_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~6_combout\);

-- Location: LCCOMB_X12_Y50_N22
\ZeroGate|gen_tree:NORGate1|y~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~9_combout\ = (\ZeroGate|gen_tree:NORGate1|y~8_combout\) # ((\ZeroGate|gen_tree:NORGate1|y~7_combout\) # ((\ZeroGate|gen_tree:NORGate1|y~5_combout\) # (\ZeroGate|gen_tree:NORGate1|y~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ZeroGate|gen_tree:NORGate1|y~8_combout\,
	datab => \ZeroGate|gen_tree:NORGate1|y~7_combout\,
	datac => \ZeroGate|gen_tree:NORGate1|y~5_combout\,
	datad => \ZeroGate|gen_tree:NORGate1|y~6_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~9_combout\);

-- Location: LCCOMB_X12_Y56_N10
\ZeroGate|gen_tree:NORGate1|y~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~3_combout\ = (\Adder|Add0~26_combout\) # ((\Adder|Add0~28_combout\) # ((\Adder|Add0~30_combout\) # (\Adder|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~26_combout\,
	datab => \Adder|Add0~28_combout\,
	datac => \Adder|Add0~30_combout\,
	datad => \Adder|Add0~32_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~3_combout\);

-- Location: LCCOMB_X12_Y56_N0
\ZeroGate|gen_tree:NORGate1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~2_combout\ = (\Adder|Add0~22_combout\) # ((\Adder|Add0~24_combout\) # ((\Adder|Add0~20_combout\) # (\Adder|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~22_combout\,
	datab => \Adder|Add0~24_combout\,
	datac => \Adder|Add0~20_combout\,
	datad => \Adder|Add0~18_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~2_combout\);

-- Location: LCCOMB_X12_Y56_N4
\ZeroGate|gen_tree:NORGate1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~0_combout\ = (\Adder|Add0~4_combout\) # ((\Adder|Add0~6_combout\) # ((\Adder|Add0~8_combout\) # (\Adder|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~4_combout\,
	datab => \Adder|Add0~6_combout\,
	datac => \Adder|Add0~8_combout\,
	datad => \Adder|Add0~2_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~0_combout\);

-- Location: LCCOMB_X12_Y56_N6
\ZeroGate|gen_tree:NORGate1|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~1_combout\ = (\Adder|Add0~16_combout\) # ((\Adder|Add0~10_combout\) # ((\Adder|Add0~12_combout\) # (\Adder|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~16_combout\,
	datab => \Adder|Add0~10_combout\,
	datac => \Adder|Add0~12_combout\,
	datad => \Adder|Add0~14_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~1_combout\);

-- Location: LCCOMB_X12_Y56_N12
\ZeroGate|gen_tree:NORGate1|y~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~4_combout\ = (\ZeroGate|gen_tree:NORGate1|y~3_combout\) # ((\ZeroGate|gen_tree:NORGate1|y~2_combout\) # ((\ZeroGate|gen_tree:NORGate1|y~0_combout\) # (\ZeroGate|gen_tree:NORGate1|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ZeroGate|gen_tree:NORGate1|y~3_combout\,
	datab => \ZeroGate|gen_tree:NORGate1|y~2_combout\,
	datac => \ZeroGate|gen_tree:NORGate1|y~0_combout\,
	datad => \ZeroGate|gen_tree:NORGate1|y~1_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~4_combout\);

-- Location: LCCOMB_X12_Y52_N26
\ZeroGate|gen_tree:NORGate1|y~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~18_combout\ = (\Adder|Add0~126_combout\) # ((\Adder|Add0~128_combout\) # ((\Adder|Add0~122_combout\) # (\Adder|Add0~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~126_combout\,
	datab => \Adder|Add0~128_combout\,
	datac => \Adder|Add0~122_combout\,
	datad => \Adder|Add0~124_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~18_combout\);

-- Location: LCCOMB_X12_Y52_N24
\ZeroGate|gen_tree:NORGate1|y~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~17_combout\ = (\Adder|Add0~120_combout\) # ((\Adder|Add0~116_combout\) # ((\Adder|Add0~118_combout\) # (\Adder|Add0~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~120_combout\,
	datab => \Adder|Add0~116_combout\,
	datac => \Adder|Add0~118_combout\,
	datad => \Adder|Add0~114_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~17_combout\);

-- Location: LCCOMB_X12_Y52_N30
\ZeroGate|gen_tree:NORGate1|y~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~15_combout\ = (\Adder|Add0~104_combout\) # ((\Adder|Add0~100_combout\) # ((\Adder|Add0~102_combout\) # (\Adder|Add0~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~104_combout\,
	datab => \Adder|Add0~100_combout\,
	datac => \Adder|Add0~102_combout\,
	datad => \Adder|Add0~98_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~15_combout\);

-- Location: LCCOMB_X6_Y49_N14
\ZeroGate|gen_tree:NORGate1|y~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~16_combout\ = (\Adder|Add0~106_combout\) # ((\Adder|Add0~108_combout\) # ((\Adder|Add0~110_combout\) # (\Adder|Add0~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~106_combout\,
	datab => \Adder|Add0~108_combout\,
	datac => \Adder|Add0~110_combout\,
	datad => \Adder|Add0~112_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~16_combout\);

-- Location: LCCOMB_X12_Y52_N28
\ZeroGate|gen_tree:NORGate1|y~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~19_combout\ = (\ZeroGate|gen_tree:NORGate1|y~18_combout\) # ((\ZeroGate|gen_tree:NORGate1|y~17_combout\) # ((\ZeroGate|gen_tree:NORGate1|y~15_combout\) # (\ZeroGate|gen_tree:NORGate1|y~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ZeroGate|gen_tree:NORGate1|y~18_combout\,
	datab => \ZeroGate|gen_tree:NORGate1|y~17_combout\,
	datac => \ZeroGate|gen_tree:NORGate1|y~15_combout\,
	datad => \ZeroGate|gen_tree:NORGate1|y~16_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~19_combout\);

-- Location: LCCOMB_X6_Y49_N28
\ZeroGate|gen_tree:NORGate1|y~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~13_combout\ = (\Adder|Add0~90_combout\) # ((\Adder|Add0~96_combout\) # ((\Adder|Add0~92_combout\) # (\Adder|Add0~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~90_combout\,
	datab => \Adder|Add0~96_combout\,
	datac => \Adder|Add0~92_combout\,
	datad => \Adder|Add0~94_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~13_combout\);

-- Location: LCCOMB_X12_Y66_N18
\ZeroGate|gen_tree:NORGate1|y~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~12_combout\ = (\Adder|Add0~88_combout\) # ((\Adder|Add0~84_combout\) # ((\Adder|Add0~86_combout\) # (\Adder|Add0~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~88_combout\,
	datab => \Adder|Add0~84_combout\,
	datac => \Adder|Add0~86_combout\,
	datad => \Adder|Add0~82_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~12_combout\);

-- Location: LCCOMB_X12_Y66_N30
\ZeroGate|gen_tree:NORGate1|y~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~10_combout\ = (\Adder|Add0~72_combout\) # ((\Adder|Add0~66_combout\) # ((\Adder|Add0~70_combout\) # (\Adder|Add0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~72_combout\,
	datab => \Adder|Add0~66_combout\,
	datac => \Adder|Add0~70_combout\,
	datad => \Adder|Add0~68_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~10_combout\);

-- Location: LCCOMB_X12_Y66_N24
\ZeroGate|gen_tree:NORGate1|y~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~11_combout\ = (\Adder|Add0~76_combout\) # ((\Adder|Add0~74_combout\) # ((\Adder|Add0~80_combout\) # (\Adder|Add0~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Add0~76_combout\,
	datab => \Adder|Add0~74_combout\,
	datac => \Adder|Add0~80_combout\,
	datad => \Adder|Add0~78_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~11_combout\);

-- Location: LCCOMB_X12_Y66_N28
\ZeroGate|gen_tree:NORGate1|y~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~14_combout\ = (\ZeroGate|gen_tree:NORGate1|y~13_combout\) # ((\ZeroGate|gen_tree:NORGate1|y~12_combout\) # ((\ZeroGate|gen_tree:NORGate1|y~10_combout\) # (\ZeroGate|gen_tree:NORGate1|y~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ZeroGate|gen_tree:NORGate1|y~13_combout\,
	datab => \ZeroGate|gen_tree:NORGate1|y~12_combout\,
	datac => \ZeroGate|gen_tree:NORGate1|y~10_combout\,
	datad => \ZeroGate|gen_tree:NORGate1|y~11_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~14_combout\);

-- Location: LCCOMB_X12_Y50_N16
\ZeroGate|gen_tree:NORGate1|y~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroGate|gen_tree:NORGate1|y~20_combout\ = (\ZeroGate|gen_tree:NORGate1|y~9_combout\) # ((\ZeroGate|gen_tree:NORGate1|y~4_combout\) # ((\ZeroGate|gen_tree:NORGate1|y~19_combout\) # (\ZeroGate|gen_tree:NORGate1|y~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ZeroGate|gen_tree:NORGate1|y~9_combout\,
	datab => \ZeroGate|gen_tree:NORGate1|y~4_combout\,
	datac => \ZeroGate|gen_tree:NORGate1|y~19_combout\,
	datad => \ZeroGate|gen_tree:NORGate1|y~14_combout\,
	combout => \ZeroGate|gen_tree:NORGate1|y~20_combout\);

-- Location: LCCOMB_X12_Y52_N22
\Ovfl~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~3_combout\ = \B[63]~input_o\ $ (\AddnSub~input_o\ $ (\A[63]~input_o\ $ (\Adder|Add0~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[63]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[63]~input_o\,
	datad => \Adder|Add0~130_combout\,
	combout => \Ovfl~3_combout\);

ww_AddY(0) <= \AddY[0]~output_o\;

ww_AddY(1) <= \AddY[1]~output_o\;

ww_AddY(2) <= \AddY[2]~output_o\;

ww_AddY(3) <= \AddY[3]~output_o\;

ww_AddY(4) <= \AddY[4]~output_o\;

ww_AddY(5) <= \AddY[5]~output_o\;

ww_AddY(6) <= \AddY[6]~output_o\;

ww_AddY(7) <= \AddY[7]~output_o\;

ww_AddY(8) <= \AddY[8]~output_o\;

ww_AddY(9) <= \AddY[9]~output_o\;

ww_AddY(10) <= \AddY[10]~output_o\;

ww_AddY(11) <= \AddY[11]~output_o\;

ww_AddY(12) <= \AddY[12]~output_o\;

ww_AddY(13) <= \AddY[13]~output_o\;

ww_AddY(14) <= \AddY[14]~output_o\;

ww_AddY(15) <= \AddY[15]~output_o\;

ww_AddY(16) <= \AddY[16]~output_o\;

ww_AddY(17) <= \AddY[17]~output_o\;

ww_AddY(18) <= \AddY[18]~output_o\;

ww_AddY(19) <= \AddY[19]~output_o\;

ww_AddY(20) <= \AddY[20]~output_o\;

ww_AddY(21) <= \AddY[21]~output_o\;

ww_AddY(22) <= \AddY[22]~output_o\;

ww_AddY(23) <= \AddY[23]~output_o\;

ww_AddY(24) <= \AddY[24]~output_o\;

ww_AddY(25) <= \AddY[25]~output_o\;

ww_AddY(26) <= \AddY[26]~output_o\;

ww_AddY(27) <= \AddY[27]~output_o\;

ww_AddY(28) <= \AddY[28]~output_o\;

ww_AddY(29) <= \AddY[29]~output_o\;

ww_AddY(30) <= \AddY[30]~output_o\;

ww_AddY(31) <= \AddY[31]~output_o\;

ww_AddY(32) <= \AddY[32]~output_o\;

ww_AddY(33) <= \AddY[33]~output_o\;

ww_AddY(34) <= \AddY[34]~output_o\;

ww_AddY(35) <= \AddY[35]~output_o\;

ww_AddY(36) <= \AddY[36]~output_o\;

ww_AddY(37) <= \AddY[37]~output_o\;

ww_AddY(38) <= \AddY[38]~output_o\;

ww_AddY(39) <= \AddY[39]~output_o\;

ww_AddY(40) <= \AddY[40]~output_o\;

ww_AddY(41) <= \AddY[41]~output_o\;

ww_AddY(42) <= \AddY[42]~output_o\;

ww_AddY(43) <= \AddY[43]~output_o\;

ww_AddY(44) <= \AddY[44]~output_o\;

ww_AddY(45) <= \AddY[45]~output_o\;

ww_AddY(46) <= \AddY[46]~output_o\;

ww_AddY(47) <= \AddY[47]~output_o\;

ww_AddY(48) <= \AddY[48]~output_o\;

ww_AddY(49) <= \AddY[49]~output_o\;

ww_AddY(50) <= \AddY[50]~output_o\;

ww_AddY(51) <= \AddY[51]~output_o\;

ww_AddY(52) <= \AddY[52]~output_o\;

ww_AddY(53) <= \AddY[53]~output_o\;

ww_AddY(54) <= \AddY[54]~output_o\;

ww_AddY(55) <= \AddY[55]~output_o\;

ww_AddY(56) <= \AddY[56]~output_o\;

ww_AddY(57) <= \AddY[57]~output_o\;

ww_AddY(58) <= \AddY[58]~output_o\;

ww_AddY(59) <= \AddY[59]~output_o\;

ww_AddY(60) <= \AddY[60]~output_o\;

ww_AddY(61) <= \AddY[61]~output_o\;

ww_AddY(62) <= \AddY[62]~output_o\;

ww_AddY(63) <= \AddY[63]~output_o\;

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


