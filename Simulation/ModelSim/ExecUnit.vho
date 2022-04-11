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

-- DATE "04/10/2022 10:03:49"

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

ENTITY 	ExecUnit IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	FuncClass : IN std_logic_vector(1 DOWNTO 0);
	LogicFN : IN std_logic_vector(1 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	AddnSub : IN std_logic;
	ExtWord : IN std_logic;
	Y : BUFFER std_logic_vector(63 DOWNTO 0);
	Zero : BUFFER std_logic;
	AltB : BUFFER std_logic;
	AltBu : BUFFER std_logic
	);
END ExecUnit;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ExecUnit IS
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
SIGNAL ww_FuncClass : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LogicFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ShiftFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_AddnSub : std_logic;
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
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
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \AltB~output_o\ : std_logic;
SIGNAL \AltBu~output_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[63]~0_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[62]~1_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[61]~2_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[60]~3_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[59]~4_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[58]~5_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[57]~6_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[56]~7_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[55]~8_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[54]~9_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[53]~10_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[52]~11_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[51]~12_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[50]~13_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[49]~14_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[48]~15_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[47]~16_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[46]~17_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[45]~18_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[44]~19_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[43]~20_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[42]~21_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[41]~22_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[40]~23_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[39]~24_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[38]~25_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[37]~26_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[36]~27_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[35]~28_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[34]~29_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[33]~30_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[32]~31_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[31]~32_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[30]~33_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[29]~34_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[28]~35_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[27]~36_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[26]~37_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[25]~38_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[24]~39_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[23]~40_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[22]~41_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[21]~42_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[20]~43_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[19]~44_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[18]~45_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[17]~46_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[16]~47_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[15]~48_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[14]~49_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[13]~50_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[12]~51_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[11]~52_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[10]~53_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[9]~54_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[8]~55_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[7]~56_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[6]~57_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[5]~58_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[4]~59_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[3]~60_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[2]~61_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[1]~62_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \AU1|B_sig[0]~63_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \AU1|Adder|Add0~1_cout\ : std_logic;
SIGNAL \AU1|Adder|Add0~3\ : std_logic;
SIGNAL \AU1|Adder|Add0~5\ : std_logic;
SIGNAL \AU1|Adder|Add0~7\ : std_logic;
SIGNAL \AU1|Adder|Add0~9\ : std_logic;
SIGNAL \AU1|Adder|Add0~11\ : std_logic;
SIGNAL \AU1|Adder|Add0~13\ : std_logic;
SIGNAL \AU1|Adder|Add0~15\ : std_logic;
SIGNAL \AU1|Adder|Add0~17\ : std_logic;
SIGNAL \AU1|Adder|Add0~19\ : std_logic;
SIGNAL \AU1|Adder|Add0~21\ : std_logic;
SIGNAL \AU1|Adder|Add0~23\ : std_logic;
SIGNAL \AU1|Adder|Add0~25\ : std_logic;
SIGNAL \AU1|Adder|Add0~27\ : std_logic;
SIGNAL \AU1|Adder|Add0~29\ : std_logic;
SIGNAL \AU1|Adder|Add0~31\ : std_logic;
SIGNAL \AU1|Adder|Add0~33\ : std_logic;
SIGNAL \AU1|Adder|Add0~35\ : std_logic;
SIGNAL \AU1|Adder|Add0~37\ : std_logic;
SIGNAL \AU1|Adder|Add0~39\ : std_logic;
SIGNAL \AU1|Adder|Add0~41\ : std_logic;
SIGNAL \AU1|Adder|Add0~43\ : std_logic;
SIGNAL \AU1|Adder|Add0~45\ : std_logic;
SIGNAL \AU1|Adder|Add0~47\ : std_logic;
SIGNAL \AU1|Adder|Add0~49\ : std_logic;
SIGNAL \AU1|Adder|Add0~51\ : std_logic;
SIGNAL \AU1|Adder|Add0~53\ : std_logic;
SIGNAL \AU1|Adder|Add0~55\ : std_logic;
SIGNAL \AU1|Adder|Add0~57\ : std_logic;
SIGNAL \AU1|Adder|Add0~59\ : std_logic;
SIGNAL \AU1|Adder|Add0~61\ : std_logic;
SIGNAL \AU1|Adder|Add0~63\ : std_logic;
SIGNAL \AU1|Adder|Add0~65\ : std_logic;
SIGNAL \AU1|Adder|Add0~67\ : std_logic;
SIGNAL \AU1|Adder|Add0~69\ : std_logic;
SIGNAL \AU1|Adder|Add0~71\ : std_logic;
SIGNAL \AU1|Adder|Add0~73\ : std_logic;
SIGNAL \AU1|Adder|Add0~75\ : std_logic;
SIGNAL \AU1|Adder|Add0~77\ : std_logic;
SIGNAL \AU1|Adder|Add0~79\ : std_logic;
SIGNAL \AU1|Adder|Add0~81\ : std_logic;
SIGNAL \AU1|Adder|Add0~83\ : std_logic;
SIGNAL \AU1|Adder|Add0~85\ : std_logic;
SIGNAL \AU1|Adder|Add0~87\ : std_logic;
SIGNAL \AU1|Adder|Add0~89\ : std_logic;
SIGNAL \AU1|Adder|Add0~91\ : std_logic;
SIGNAL \AU1|Adder|Add0~93\ : std_logic;
SIGNAL \AU1|Adder|Add0~95\ : std_logic;
SIGNAL \AU1|Adder|Add0~97\ : std_logic;
SIGNAL \AU1|Adder|Add0~99\ : std_logic;
SIGNAL \AU1|Adder|Add0~101\ : std_logic;
SIGNAL \AU1|Adder|Add0~103\ : std_logic;
SIGNAL \AU1|Adder|Add0~105\ : std_logic;
SIGNAL \AU1|Adder|Add0~107\ : std_logic;
SIGNAL \AU1|Adder|Add0~109\ : std_logic;
SIGNAL \AU1|Adder|Add0~111\ : std_logic;
SIGNAL \AU1|Adder|Add0~113\ : std_logic;
SIGNAL \AU1|Adder|Add0~115\ : std_logic;
SIGNAL \AU1|Adder|Add0~117\ : std_logic;
SIGNAL \AU1|Adder|Add0~119\ : std_logic;
SIGNAL \AU1|Adder|Add0~121\ : std_logic;
SIGNAL \AU1|Adder|Add0~123\ : std_logic;
SIGNAL \AU1|Adder|Add0~125\ : std_logic;
SIGNAL \AU1|Adder|Add0~127\ : std_logic;
SIGNAL \AU1|Adder|Add0~129\ : std_logic;
SIGNAL \AU1|Adder|Add0~130_combout\ : std_logic;
SIGNAL \AU1|AltB~2_combout\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \SU1|SRL64|Equal8~0_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~35_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~36_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~33_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~34_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~37_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~31_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~32_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~38_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~39_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~40_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~10_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~11_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~17_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~18_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~14_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~15_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~12_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~13_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~16_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~19_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~27_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~28_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~20_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~21_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~24_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~25_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~22_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~23_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~26_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~29_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~30_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~2_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~3_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~4_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~5_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~6_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~7_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~8_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~0_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~1_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~9_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~41_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \SU1|Y[0]~5_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \SU1|X_sig[0]~1_combout\ : std_logic;
SIGNAL \SU1|SRA64|Equal2~0_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[32]~59_combout\ : std_logic;
SIGNAL \SU1|SRL64|Equal8~1_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~2_combout\ : std_logic;
SIGNAL \SU1|Y[0]~6_combout\ : std_logic;
SIGNAL \SU1|Y[0]~7_combout\ : std_logic;
SIGNAL \SU1|SwapWord~0_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~122_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~121_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[36]~123_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~118_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~119_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[36]~277_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~127_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~128_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~125_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~124_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[32]~126_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[32]~129_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[32]~27_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~109_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~110_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[44]~111_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~107_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~106_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[44]~276_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~115_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~116_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~113_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~112_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[41]~114_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[40]~117_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[32]~26_combout\ : std_logic;
SIGNAL \SU1|X_sig[63]~2_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[48]~4_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~91_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~94_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~93_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~95_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~90_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~275_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~85_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~84_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~88_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~87_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[56]~89_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[56]~274_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~23_combout\ : std_logic;
SIGNAL \SU1|X_sig[62]~3_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[60]~96_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~97_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~98_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[60]~99_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~104_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~103_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~100_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~101_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[52]~102_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[52]~105_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~24_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~25_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[32]~5_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[32]~6_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~76_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~75_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~77_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~74_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~73_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~20_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~21_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~82_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~81_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[12]~83_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~79_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~78_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[12]~273_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~22_combout\ : std_logic;
SIGNAL \SU1|Y[0]~0_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~72_combout\ : std_logic;
SIGNAL \SU1|Y[0]~1_combout\ : std_logic;
SIGNAL \SU1|X_sig[1]~0_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~70_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~71_combout\ : std_logic;
SIGNAL \SU1|Y[0]~2_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~68_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~67_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[8]~69_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~64_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~65_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[8]~272_combout\ : std_logic;
SIGNAL \SU1|Y[0]~3_combout\ : std_logic;
SIGNAL \SU1|Y[0]~4_combout\ : std_logic;
SIGNAL \SU1|Y[0]~8_combout\ : std_logic;
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \LU1|Y[0]~0_combout\ : std_logic;
SIGNAL \Y~8_combout\ : std_logic;
SIGNAL \Y~9_combout\ : std_logic;
SIGNAL \Y~10_combout\ : std_logic;
SIGNAL \Y~18_combout\ : std_logic;
SIGNAL \Y~17_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[41]~7_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[41]~8_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~142_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[57]~86_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~141_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[57]~143_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~144_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[49]~92_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~145_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[49]~146_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[49]~63_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[44]~31_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[61]~164_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[61]~165_combout\ : std_logic;
SIGNAL \SU1|SRA64|Equal5~0_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[53]~150_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~148_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~147_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[54]~149_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[49]~64_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[49]~35_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~161_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~162_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[37]~120_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[37]~281_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[52]~62_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~154_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~155_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[34]~156_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[33]~157_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[52]~66_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~152_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~151_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[41]~280_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[33]~32_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~159_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~158_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[46]~160_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[45]~108_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[33]~33_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[33]~34_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[41]~9_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[33]~10_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage1_sig[61]~3_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage1_sig[61]~4_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage1_sig[61]~2_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage1_sig[61]~5_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[49]~65_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[33]~11_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[1]~62_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[1]~93_combout\ : std_logic;
SIGNAL \Y~19_combout\ : std_logic;
SIGNAL \SU1|Y[0]~9_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~139_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~138_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[13]~80_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[13]~279_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~137_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~136_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~28_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~29_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~30_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[9]~66_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~131_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~130_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[9]~278_combout\ : std_logic;
SIGNAL \Y~11_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~133_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~134_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~135_combout\ : std_logic;
SIGNAL \Y~12_combout\ : std_logic;
SIGNAL \Y~13_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage3_sig~42_combout\ : std_logic;
SIGNAL \Y~14_combout\ : std_logic;
SIGNAL \Y~15_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~167_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~169_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~170_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[29]~171_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~166_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[29]~282_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~172_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~173_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~176_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~175_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[21]~177_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[21]~283_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[21]~36_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~187_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~188_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[17]~189_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~185_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~184_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[17]~285_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~178_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~182_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~181_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[25]~183_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~179_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[25]~284_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~37_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[17]~38_combout\ : std_logic;
SIGNAL \Y~16_combout\ : std_logic;
SIGNAL \Y~20_combout\ : std_logic;
SIGNAL \Y~21_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~4_combout\ : std_logic;
SIGNAL \Y~22_combout\ : std_logic;
SIGNAL \Y~23_combout\ : std_logic;
SIGNAL \Y~24_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~196_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[14]~140_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~197_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[14]~198_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~200_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~199_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~39_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~40_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~193_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~194_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[10]~132_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[10]~195_combout\ : std_logic;
SIGNAL \Y~25_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~191_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~190_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~192_combout\ : std_logic;
SIGNAL \Y~26_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[3]~63_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[2]~64_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[2]~94_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[62]~224_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~222_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~221_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[54]~223_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[50]~44_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~219_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~218_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[50]~217_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[50]~220_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~214_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~213_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[58]~215_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[58]~216_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[50]~67_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[50]~45_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~202_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~201_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[42]~153_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[42]~203_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[34]~41_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~207_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~208_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[46]~209_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~205_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[38]~163_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~204_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[38]~206_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[34]~42_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~210_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~211_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[34]~212_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[34]~43_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[34]~12_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage1_sig[62]~6_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[50]~68_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[50]~69_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[34]~13_combout\ : std_logic;
SIGNAL \Y~29_combout\ : std_logic;
SIGNAL \Y~27_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~228_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~229_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[22]~174_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[22]~286_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~226_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~225_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[30]~168_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[30]~227_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[22]~46_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~232_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~231_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[26]~180_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[26]~233_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~235_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~234_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[18]~186_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[18]~287_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~47_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[18]~48_combout\ : std_logic;
SIGNAL \Y~28_combout\ : std_logic;
SIGNAL \Y~30_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~6_combout\ : std_logic;
SIGNAL \Y~31_combout\ : std_logic;
SIGNAL \Y~32_combout\ : std_logic;
SIGNAL \Y~33_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[55]~245_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[55]~72_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[51]~244_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[59]~242_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[59]~243_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[51]~70_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[51]~71_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[51]~73_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[27]~255_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~256_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~257_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[27]~258_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~260_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~259_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[19]~236_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[19]~261_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~55_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[31]~251_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~252_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~253_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[23]~230_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[23]~254_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[23]~54_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[19]~56_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[40]~249_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[39]~250_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[43]~246_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[35]~247_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[35]~51_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[47]~248_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[35]~135_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[35]~52_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[51]~136_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[51]~53_combout\ : std_logic;
SIGNAL \Y~36_combout\ : std_logic;
SIGNAL \Y~37_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[35]~14_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[35]~15_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[3]~65_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[3]~12_combout\ : std_logic;
SIGNAL \Y~38_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~49_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~240_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~239_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[15]~238_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[15]~241_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~50_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[11]~237_combout\ : std_logic;
SIGNAL \Y~34_combout\ : std_logic;
SIGNAL \Y~35_combout\ : std_logic;
SIGNAL \Y~39_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~8_combout\ : std_logic;
SIGNAL \Y~40_combout\ : std_logic;
SIGNAL \Y~41_combout\ : std_logic;
SIGNAL \Y~42_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[4]~13_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[4]~138_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[4]~14_combout\ : std_logic;
SIGNAL \Y~46_combout\ : std_logic;
SIGNAL \Y~47_combout\ : std_logic;
SIGNAL \Y~44_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[16]~262_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~57_combout\ : std_logic;
SIGNAL \Y~48_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[52]~75_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[52]~137_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[36]~59_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[36]~58_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[36]~60_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[36]~16_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[52]~74_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[52]~76_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[36]~17_combout\ : std_logic;
SIGNAL \Y~49_combout\ : std_logic;
SIGNAL \Y~50_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[28]~264_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[20]~265_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[16]~18_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[24]~263_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[20]~61_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[20]~62_combout\ : std_logic;
SIGNAL \Y~51_combout\ : std_logic;
SIGNAL \Y~52_combout\ : std_logic;
SIGNAL \Y~53_combout\ : std_logic;
SIGNAL \Y~43_combout\ : std_logic;
SIGNAL \Y~54_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~10_combout\ : std_logic;
SIGNAL \Y~45_combout\ : std_logic;
SIGNAL \Y~55_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[5]~66_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[5]~67_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[5]~15_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[53]~82_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[53]~77_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[53]~78_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[53]~63_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[53]~64_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[45]~266_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[37]~65_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[37]~66_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[37]~67_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[37]~19_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[37]~20_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[21]~69_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[21]~70_combout\ : std_logic;
SIGNAL \Y~59_combout\ : std_logic;
SIGNAL \Y~60_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~68_combout\ : std_logic;
SIGNAL \Y~58_combout\ : std_logic;
SIGNAL \Y~61_combout\ : std_logic;
SIGNAL \Y~56_combout\ : std_logic;
SIGNAL \Y~57_combout\ : std_logic;
SIGNAL \Y~62_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~12_combout\ : std_logic;
SIGNAL \Y~63_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[54]~79_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[54]~138_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[54]~80_combout\ : std_logic;
SIGNAL \Y~67_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[22]~75_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[22]~76_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[38]~72_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[38]~73_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[38]~74_combout\ : std_logic;
SIGNAL \Y~68_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~71_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[38]~21_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[38]~22_combout\ : std_logic;
SIGNAL \Y~66_combout\ : std_logic;
SIGNAL \Y~69_combout\ : std_logic;
SIGNAL \Y~64_combout\ : std_logic;
SIGNAL \Y~65_combout\ : std_logic;
SIGNAL \Y~70_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[7]~68_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[6]~69_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[6]~16_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~14_combout\ : std_logic;
SIGNAL \Y~71_combout\ : std_logic;
SIGNAL \Y~72_combout\ : std_logic;
SIGNAL \Y~73_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[55]~87_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[55]~88_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[23]~83_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[23]~84_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[39]~80_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[39]~79_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[39]~81_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[59]~77_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[55]~78_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[55]~139_combout\ : std_logic;
SIGNAL \Y~75_combout\ : std_logic;
SIGNAL \Y~76_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~82_combout\ : std_logic;
SIGNAL \Y~74_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[39]~23_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[39]~24_combout\ : std_logic;
SIGNAL \Y~77_combout\ : std_logic;
SIGNAL \Y~78_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~16_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[7]~71_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[3]~70_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[7]~17_combout\ : std_logic;
SIGNAL \Y~79_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[9]~72_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[8]~73_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[12]~18_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[8]~95_combout\ : std_logic;
SIGNAL \Y~80_combout\ : std_logic;
SIGNAL \Y~81_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[24]~90_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[24]~91_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[56]~86_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[56]~89_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[56]~83_combout\ : std_logic;
SIGNAL \Y~83_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[40]~88_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[40]~87_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[40]~89_combout\ : std_logic;
SIGNAL \Y~84_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[40]~25_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[40]~26_combout\ : std_logic;
SIGNAL \Y~82_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~85_combout\ : std_logic;
SIGNAL \Y~85_combout\ : std_logic;
SIGNAL \Y~86_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~18_combout\ : std_logic;
SIGNAL \Y~87_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~20_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[9]~74_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[9]~19_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[9]~96_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[41]~93_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[53]~267_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[41]~94_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[41]~95_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[57]~92_combout\ : std_logic;
SIGNAL \Y~91_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[57]~90_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[57]~84_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[25]~97_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[25]~98_combout\ : std_logic;
SIGNAL \Y~92_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[41]~27_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[41]~28_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~96_combout\ : std_logic;
SIGNAL \Y~90_combout\ : std_logic;
SIGNAL \Y~93_combout\ : std_logic;
SIGNAL \Y~88_combout\ : std_logic;
SIGNAL \Y~89_combout\ : std_logic;
SIGNAL \Y~94_combout\ : std_logic;
SIGNAL \Y~95_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[58]~100_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[58]~91_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[58]~85_combout\ : std_logic;
SIGNAL \Y~99_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[26]~104_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[26]~105_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[42]~101_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[42]~102_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[42]~103_combout\ : std_logic;
SIGNAL \Y~100_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~99_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[42]~29_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[42]~30_combout\ : std_logic;
SIGNAL \Y~98_combout\ : std_logic;
SIGNAL \Y~101_combout\ : std_logic;
SIGNAL \Y~96_combout\ : std_logic;
SIGNAL \Y~97_combout\ : std_logic;
SIGNAL \Y~102_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[11]~75_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[10]~76_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[10]~20_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[10]~97_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~22_combout\ : std_logic;
SIGNAL \Y~103_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~24_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[11]~77_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[11]~21_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[11]~98_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[43]~107_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[43]~108_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[43]~109_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[59]~106_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[43]~31_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[59]~92_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[43]~32_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~110_combout\ : std_logic;
SIGNAL \Y~106_combout\ : std_logic;
SIGNAL \Y~107_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[27]~111_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[27]~112_combout\ : std_logic;
SIGNAL \Y~108_combout\ : std_logic;
SIGNAL \Y~109_combout\ : std_logic;
SIGNAL \Y~104_combout\ : std_logic;
SIGNAL \Y~105_combout\ : std_logic;
SIGNAL \Y~110_combout\ : std_logic;
SIGNAL \Y~111_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[13]~78_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[12]~79_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[12]~22_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[12]~23_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~26_combout\ : std_logic;
SIGNAL \Y~112_combout\ : std_logic;
SIGNAL \Y~113_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[28]~117_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[28]~118_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[44]~114_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[44]~115_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[44]~116_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[59]~86_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[60]~140_combout\ : std_logic;
SIGNAL \Y~115_combout\ : std_logic;
SIGNAL \Y~116_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[48]~113_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[44]~33_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[60]~93_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[44]~34_combout\ : std_logic;
SIGNAL \Y~114_combout\ : std_logic;
SIGNAL \Y~117_combout\ : std_logic;
SIGNAL \Y~118_combout\ : std_logic;
SIGNAL \Y~119_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~28_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[13]~80_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[13]~25_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[13]~24_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[13]~26_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[29]~123_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[29]~124_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[45]~121_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[45]~120_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[45]~122_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[61]~119_combout\ : std_logic;
SIGNAL \Y~123_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[61]~94_combout\ : std_logic;
SIGNAL \Y~124_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[45]~35_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[45]~36_combout\ : std_logic;
SIGNAL \Y~122_combout\ : std_logic;
SIGNAL \Y~125_combout\ : std_logic;
SIGNAL \Y~120_combout\ : std_logic;
SIGNAL \Y~121_combout\ : std_logic;
SIGNAL \Y~126_combout\ : std_logic;
SIGNAL \Y~127_combout\ : std_logic;
SIGNAL \Y~128_combout\ : std_logic;
SIGNAL \Y~129_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[46]~126_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[46]~125_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[46]~127_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[30]~128_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[30]~129_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[62]~141_combout\ : std_logic;
SIGNAL \SU1|SRA64|Stage2_sig[62]~81_combout\ : std_logic;
SIGNAL \Y~131_combout\ : std_logic;
SIGNAL \Y~132_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[46]~37_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[46]~38_combout\ : std_logic;
SIGNAL \Y~130_combout\ : std_logic;
SIGNAL \Y~133_combout\ : std_logic;
SIGNAL \Y~134_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~30_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[15]~81_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[14]~82_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[14]~27_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[14]~28_combout\ : std_logic;
SIGNAL \Y~135_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~32_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[15]~29_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[15]~83_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[15]~30_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[31]~132_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[31]~133_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[63]~143_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[47]~142_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[47]~130_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[47]~131_combout\ : std_logic;
SIGNAL \Y~139_combout\ : std_logic;
SIGNAL \Y~140_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[47]~39_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[47]~40_combout\ : std_logic;
SIGNAL \Y~138_combout\ : std_logic;
SIGNAL \Y~141_combout\ : std_logic;
SIGNAL \Y~136_combout\ : std_logic;
SIGNAL \Y~137_combout\ : std_logic;
SIGNAL \Y~142_combout\ : std_logic;
SIGNAL \Y~143_combout\ : std_logic;
SIGNAL \LU1|Y[16]~1_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~34_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[16]~31_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[17]~84_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[16]~85_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[16]~32_combout\ : std_logic;
SIGNAL \Y~144_combout\ : std_logic;
SIGNAL \Y~145_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[16]~43_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[16]~79_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[16]~44_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[16]~45_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[16]~46_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[48]~41_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[48]~42_combout\ : std_logic;
SIGNAL \Y~146_combout\ : std_logic;
SIGNAL \Y~147_combout\ : std_logic;
SIGNAL \Y~148_combout\ : std_logic;
SIGNAL \Y~160_combout\ : std_logic;
SIGNAL \Y~161_combout\ : std_logic;
SIGNAL \Y~155_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[17]~86_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[17]~34_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[17]~33_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[17]~35_combout\ : std_logic;
SIGNAL \Y~454_combout\ : std_logic;
SIGNAL \Y~156_combout\ : std_logic;
SIGNAL \Y~157_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~36_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[49]~47_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[49]~48_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[49]~49_combout\ : std_logic;
SIGNAL \Y~158_combout\ : std_logic;
SIGNAL \Y~159_combout\ : std_logic;
SIGNAL \Y~162_combout\ : std_logic;
SIGNAL \Y~154_combout\ : std_logic;
SIGNAL \Y~149_combout\ : std_logic;
SIGNAL \Y~151_combout\ : std_logic;
SIGNAL \Y~150_combout\ : std_logic;
SIGNAL \Y~152_combout\ : std_logic;
SIGNAL \Y~153_combout\ : std_logic;
SIGNAL \Y~163_combout\ : std_logic;
SIGNAL \Y~164_combout\ : std_logic;
SIGNAL \Y~165_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[18]~36_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[19]~87_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[18]~88_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[18]~37_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[18]~38_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~38_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[50]~50_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[50]~51_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[50]~52_combout\ : std_logic;
SIGNAL \Y~167_combout\ : std_logic;
SIGNAL \Y~168_combout\ : std_logic;
SIGNAL \Y~166_combout\ : std_logic;
SIGNAL \Y~169_combout\ : std_logic;
SIGNAL \Y~170_combout\ : std_logic;
SIGNAL \Y~171_combout\ : std_logic;
SIGNAL \Y~172_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[19]~39_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[19]~89_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[19]~40_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[19]~41_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[51]~53_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[51]~54_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[51]~55_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~40_combout\ : std_logic;
SIGNAL \Y~174_combout\ : std_logic;
SIGNAL \Y~175_combout\ : std_logic;
SIGNAL \Y~173_combout\ : std_logic;
SIGNAL \Y~176_combout\ : std_logic;
SIGNAL \Y~177_combout\ : std_logic;
SIGNAL \Y~180_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[52]~56_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[52]~57_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[52]~58_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~42_combout\ : std_logic;
SIGNAL \Y~181_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[20]~42_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[20]~90_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[20]~91_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[20]~43_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[20]~44_combout\ : std_logic;
SIGNAL \Y~182_combout\ : std_logic;
SIGNAL \Y~183_combout\ : std_logic;
SIGNAL \Y~178_combout\ : std_logic;
SIGNAL \Y~179_combout\ : std_logic;
SIGNAL \Y~184_combout\ : std_logic;
SIGNAL \Y~187_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[22]~92_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[21]~93_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[21]~46_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[21]~45_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[21]~47_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~44_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[53]~59_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[53]~60_combout\ : std_logic;
SIGNAL \Y~188_combout\ : std_logic;
SIGNAL \Y~189_combout\ : std_logic;
SIGNAL \Y~190_combout\ : std_logic;
SIGNAL \Y~185_combout\ : std_logic;
SIGNAL \Y~186_combout\ : std_logic;
SIGNAL \Y~191_combout\ : std_logic;
SIGNAL \Y~194_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[23]~94_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[22]~139_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[22]~48_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[22]~49_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~46_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[54]~61_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[54]~62_combout\ : std_logic;
SIGNAL \Y~195_combout\ : std_logic;
SIGNAL \Y~196_combout\ : std_logic;
SIGNAL \Y~197_combout\ : std_logic;
SIGNAL \Y~192_combout\ : std_logic;
SIGNAL \Y~193_combout\ : std_logic;
SIGNAL \Y~198_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[55]~63_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[55]~64_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~48_combout\ : std_logic;
SIGNAL \Y~202_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[24]~95_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[23]~51_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[23]~50_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[23]~52_combout\ : std_logic;
SIGNAL \Y~203_combout\ : std_logic;
SIGNAL \Y~201_combout\ : std_logic;
SIGNAL \Y~204_combout\ : std_logic;
SIGNAL \Y~199_combout\ : std_logic;
SIGNAL \Y~200_combout\ : std_logic;
SIGNAL \Y~205_combout\ : std_logic;
SIGNAL \Y~206_combout\ : std_logic;
SIGNAL \Y~207_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~50_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[56]~65_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[56]~66_combout\ : std_logic;
SIGNAL \Y~209_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[24]~96_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[24]~53_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[24]~54_combout\ : std_logic;
SIGNAL \Y~210_combout\ : std_logic;
SIGNAL \Y~208_combout\ : std_logic;
SIGNAL \Y~211_combout\ : std_logic;
SIGNAL \Y~212_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[26]~97_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[25]~98_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[25]~56_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[25]~55_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[25]~57_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[57]~67_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[57]~68_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~52_combout\ : std_logic;
SIGNAL \Y~216_combout\ : std_logic;
SIGNAL \Y~217_combout\ : std_logic;
SIGNAL \Y~215_combout\ : std_logic;
SIGNAL \Y~218_combout\ : std_logic;
SIGNAL \Y~213_combout\ : std_logic;
SIGNAL \Y~214_combout\ : std_logic;
SIGNAL \Y~219_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[27]~99_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[26]~140_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[26]~58_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[26]~59_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[58]~69_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[58]~70_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~54_combout\ : std_logic;
SIGNAL \Y~223_combout\ : std_logic;
SIGNAL \Y~224_combout\ : std_logic;
SIGNAL \Y~222_combout\ : std_logic;
SIGNAL \Y~225_combout\ : std_logic;
SIGNAL \Y~220_combout\ : std_logic;
SIGNAL \Y~221_combout\ : std_logic;
SIGNAL \Y~226_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~56_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[59]~71_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[59]~72_combout\ : std_logic;
SIGNAL \Y~230_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[27]~61_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[28]~101_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[27]~141_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[23]~100_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[27]~60_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[27]~62_combout\ : std_logic;
SIGNAL \Y~231_combout\ : std_logic;
SIGNAL \Y~229_combout\ : std_logic;
SIGNAL \Y~232_combout\ : std_logic;
SIGNAL \Y~227_combout\ : std_logic;
SIGNAL \Y~228_combout\ : std_logic;
SIGNAL \Y~233_combout\ : std_logic;
SIGNAL \Y~234_combout\ : std_logic;
SIGNAL \Y~235_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[28]~102_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[28]~63_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[28]~64_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[60]~73_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~58_combout\ : std_logic;
SIGNAL \Y~237_combout\ : std_logic;
SIGNAL \Y~238_combout\ : std_logic;
SIGNAL \Y~236_combout\ : std_logic;
SIGNAL \Y~239_combout\ : std_logic;
SIGNAL \Y~240_combout\ : std_logic;
SIGNAL \Y~243_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~60_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[61]~74_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[61]~75_combout\ : std_logic;
SIGNAL \Y~244_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[30]~103_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[29]~104_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[29]~65_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[29]~66_combout\ : std_logic;
SIGNAL \Y~245_combout\ : std_logic;
SIGNAL \Y~246_combout\ : std_logic;
SIGNAL \Y~241_combout\ : std_logic;
SIGNAL \Y~242_combout\ : std_logic;
SIGNAL \Y~247_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[31]~105_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[30]~142_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[30]~67_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[30]~68_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[62]~76_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[62]~77_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~62_combout\ : std_logic;
SIGNAL \Y~251_combout\ : std_logic;
SIGNAL \Y~252_combout\ : std_logic;
SIGNAL \Y~250_combout\ : std_logic;
SIGNAL \Y~253_combout\ : std_logic;
SIGNAL \Y~248_combout\ : std_logic;
SIGNAL \Y~249_combout\ : std_logic;
SIGNAL \Y~254_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage2_sig[63]~134_combout\ : std_logic;
SIGNAL \SU1|SRA_SRL_sig[47]~78_combout\ : std_logic;
SIGNAL \Y~255_combout\ : std_logic;
SIGNAL \Y~256_combout\ : std_logic;
SIGNAL \Y~257_combout\ : std_logic;
SIGNAL \Y~258_combout\ : std_logic;
SIGNAL \LU1|Y[31]~2_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~64_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[31]~106_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[31]~69_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[31]~70_combout\ : std_logic;
SIGNAL \SU1|SgnExtLower_sig[31]~0_combout\ : std_logic;
SIGNAL \SU1|SgnExtUpper_sig[0]~2_combout\ : std_logic;
SIGNAL \Y~259_combout\ : std_logic;
SIGNAL \Y~260_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[33]~107_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[32]~108_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[32]~17_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[32]~16_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[32]~18_combout\ : std_logic;
SIGNAL \Y~455_combout\ : std_logic;
SIGNAL \Y~261_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~66_combout\ : std_logic;
SIGNAL \Y~262_combout\ : std_logic;
SIGNAL \Y~263_combout\ : std_logic;
SIGNAL \SU1|SgnExtUpper_sig[0]~4_combout\ : std_logic;
SIGNAL \Y~264_combout\ : std_logic;
SIGNAL \Y~265_combout\ : std_logic;
SIGNAL \Y~266_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~68_combout\ : std_logic;
SIGNAL \Y~270_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[33]~19_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[34]~109_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[33]~143_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[33]~20_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[33]~21_combout\ : std_logic;
SIGNAL \Y~271_combout\ : std_logic;
SIGNAL \SU1|SgnExtUpper_sig[0]~3_combout\ : std_logic;
SIGNAL \Y~267_combout\ : std_logic;
SIGNAL \Y~268_combout\ : std_logic;
SIGNAL \Y~269_combout\ : std_logic;
SIGNAL \Y~272_combout\ : std_logic;
SIGNAL \Y~273_combout\ : std_logic;
SIGNAL \Y~274_combout\ : std_logic;
SIGNAL \Y~275_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[35]~110_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[34]~144_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[42]~23_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[34]~22_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[34]~24_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[34]~25_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~70_combout\ : std_logic;
SIGNAL \Y~276_combout\ : std_logic;
SIGNAL \Y~277_combout\ : std_logic;
SIGNAL \Y~278_combout\ : std_logic;
SIGNAL \Y~279_combout\ : std_logic;
SIGNAL \Y~280_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~72_combout\ : std_logic;
SIGNAL \Y~281_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[35]~111_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[35]~27_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[35]~26_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[35]~28_combout\ : std_logic;
SIGNAL \Y~282_combout\ : std_logic;
SIGNAL \Y~283_combout\ : std_logic;
SIGNAL \Y~284_combout\ : std_logic;
SIGNAL \Y~285_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~74_combout\ : std_logic;
SIGNAL \Y~286_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[36]~29_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[37]~112_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[36]~113_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[36]~30_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[36]~31_combout\ : std_logic;
SIGNAL \Y~287_combout\ : std_logic;
SIGNAL \Y~288_combout\ : std_logic;
SIGNAL \Y~289_combout\ : std_logic;
SIGNAL \Y~290_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~76_combout\ : std_logic;
SIGNAL \Y~291_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[38]~114_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[37]~145_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[41]~33_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[37]~32_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[37]~34_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[37]~60_combout\ : std_logic;
SIGNAL \Y~292_combout\ : std_logic;
SIGNAL \Y~293_combout\ : std_logic;
SIGNAL \Y~294_combout\ : std_logic;
SIGNAL \Y~295_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[38]~35_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[39]~115_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[38]~146_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[38]~36_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[38]~37_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~78_combout\ : std_logic;
SIGNAL \Y~296_combout\ : std_logic;
SIGNAL \Y~297_combout\ : std_logic;
SIGNAL \Y~298_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[39]~38_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[39]~116_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[39]~39_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[39]~40_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~80_combout\ : std_logic;
SIGNAL \Y~301_combout\ : std_logic;
SIGNAL \Y~302_combout\ : std_logic;
SIGNAL \Y~299_combout\ : std_logic;
SIGNAL \Y~300_combout\ : std_logic;
SIGNAL \Y~303_combout\ : std_logic;
SIGNAL \Y~304_combout\ : std_logic;
SIGNAL \Y~305_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~82_combout\ : std_logic;
SIGNAL \Y~306_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[40]~41_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[41]~117_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[40]~118_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[40]~42_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[40]~43_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[40]~61_combout\ : std_logic;
SIGNAL \Y~307_combout\ : std_logic;
SIGNAL \Y~308_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[42]~119_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[41]~147_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[41]~44_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[41]~45_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[41]~62_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~84_combout\ : std_logic;
SIGNAL \Y~311_combout\ : std_logic;
SIGNAL \Y~312_combout\ : std_logic;
SIGNAL \Y~309_combout\ : std_logic;
SIGNAL \Y~310_combout\ : std_logic;
SIGNAL \Y~313_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[43]~120_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[42]~148_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[42]~46_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[42]~47_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[42]~63_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~86_combout\ : std_logic;
SIGNAL \Y~316_combout\ : std_logic;
SIGNAL \Y~317_combout\ : std_logic;
SIGNAL \Y~314_combout\ : std_logic;
SIGNAL \Y~315_combout\ : std_logic;
SIGNAL \Y~318_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~88_combout\ : std_logic;
SIGNAL \Y~321_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[43]~121_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[43]~48_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[43]~49_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[43]~64_combout\ : std_logic;
SIGNAL \Y~322_combout\ : std_logic;
SIGNAL \Y~319_combout\ : std_logic;
SIGNAL \Y~320_combout\ : std_logic;
SIGNAL \Y~323_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~90_combout\ : std_logic;
SIGNAL \Y~326_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[45]~122_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[44]~123_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[8]~71_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[44]~50_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[44]~65_combout\ : std_logic;
SIGNAL \Y~327_combout\ : std_logic;
SIGNAL \Y~324_combout\ : std_logic;
SIGNAL \Y~325_combout\ : std_logic;
SIGNAL \Y~328_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[46]~124_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[45]~149_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[9]~72_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[45]~51_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[45]~52_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~92_combout\ : std_logic;
SIGNAL \Y~331_combout\ : std_logic;
SIGNAL \Y~332_combout\ : std_logic;
SIGNAL \Y~329_combout\ : std_logic;
SIGNAL \Y~330_combout\ : std_logic;
SIGNAL \Y~333_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~94_combout\ : std_logic;
SIGNAL \Y~336_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[46]~54_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[47]~125_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[46]~150_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[46]~53_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[46]~55_combout\ : std_logic;
SIGNAL \Y~337_combout\ : std_logic;
SIGNAL \Y~334_combout\ : std_logic;
SIGNAL \Y~335_combout\ : std_logic;
SIGNAL \Y~338_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[47]~57_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[47]~126_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[47]~56_combout\ : std_logic;
SIGNAL \SU1|SLL64|Y[47]~58_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~96_combout\ : std_logic;
SIGNAL \Y~341_combout\ : std_logic;
SIGNAL \Y~342_combout\ : std_logic;
SIGNAL \Y~339_combout\ : std_logic;
SIGNAL \Y~340_combout\ : std_logic;
SIGNAL \Y~343_combout\ : std_logic;
SIGNAL \Y~346_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~98_combout\ : std_logic;
SIGNAL \Y~347_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[49]~127_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[48]~128_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[8]~73_combout\ : std_logic;
SIGNAL \Y~348_combout\ : std_logic;
SIGNAL \Y~349_combout\ : std_logic;
SIGNAL \Y~345_combout\ : std_logic;
SIGNAL \Y~350_combout\ : std_logic;
SIGNAL \Y~351_combout\ : std_logic;
SIGNAL \Y~344_combout\ : std_logic;
SIGNAL \Y~352_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[50]~129_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[49]~151_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[9]~74_combout\ : std_logic;
SIGNAL \Y~354_combout\ : std_logic;
SIGNAL \Y~355_combout\ : std_logic;
SIGNAL \Y~356_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~100_combout\ : std_logic;
SIGNAL \Y~357_combout\ : std_logic;
SIGNAL \Y~353_combout\ : std_logic;
SIGNAL \Y~358_combout\ : std_logic;
SIGNAL \Y~359_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[51]~130_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[50]~152_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[10]~76_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[10]~75_combout\ : std_logic;
SIGNAL \Y~360_combout\ : std_logic;
SIGNAL \Y~361_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~102_combout\ : std_logic;
SIGNAL \Y~362_combout\ : std_logic;
SIGNAL \Y~363_combout\ : std_logic;
SIGNAL \Y~364_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[51]~131_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[11]~78_combout\ : std_logic;
SIGNAL \Y~366_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[11]~77_combout\ : std_logic;
SIGNAL \Y~367_combout\ : std_logic;
SIGNAL \Y~368_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~104_combout\ : std_logic;
SIGNAL \Y~369_combout\ : std_logic;
SIGNAL \Y~365_combout\ : std_logic;
SIGNAL \Y~370_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[53]~132_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[52]~133_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[8]~79_combout\ : std_logic;
SIGNAL \Y~372_combout\ : std_logic;
SIGNAL \Y~373_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~106_combout\ : std_logic;
SIGNAL \Y~374_combout\ : std_logic;
SIGNAL \Y~375_combout\ : std_logic;
SIGNAL \Y~371_combout\ : std_logic;
SIGNAL \Y~376_combout\ : std_logic;
SIGNAL \Y~377_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~108_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[54]~134_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[53]~153_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[9]~80_combout\ : std_logic;
SIGNAL \Y~378_combout\ : std_logic;
SIGNAL \Y~379_combout\ : std_logic;
SIGNAL \Y~380_combout\ : std_logic;
SIGNAL \Y~381_combout\ : std_logic;
SIGNAL \Y~382_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~110_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[54]~135_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[10]~81_combout\ : std_logic;
SIGNAL \Y~384_combout\ : std_logic;
SIGNAL \Y~385_combout\ : std_logic;
SIGNAL \Y~386_combout\ : std_logic;
SIGNAL \Y~387_combout\ : std_logic;
SIGNAL \Y~383_combout\ : std_logic;
SIGNAL \Y~388_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[55]~136_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage1_sig[55]~137_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[11]~82_combout\ : std_logic;
SIGNAL \Y~390_combout\ : std_logic;
SIGNAL \Y~391_combout\ : std_logic;
SIGNAL \Y~392_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~112_combout\ : std_logic;
SIGNAL \Y~393_combout\ : std_logic;
SIGNAL \Y~389_combout\ : std_logic;
SIGNAL \Y~394_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~114_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[9]~83_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[8]~84_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[8]~85_combout\ : std_logic;
SIGNAL \Y~396_combout\ : std_logic;
SIGNAL \Y~397_combout\ : std_logic;
SIGNAL \Y~398_combout\ : std_logic;
SIGNAL \Y~399_combout\ : std_logic;
SIGNAL \Y~395_combout\ : std_logic;
SIGNAL \Y~400_combout\ : std_logic;
SIGNAL \Y~401_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[10]~86_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[9]~87_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[9]~88_combout\ : std_logic;
SIGNAL \Y~402_combout\ : std_logic;
SIGNAL \Y~403_combout\ : std_logic;
SIGNAL \Y~404_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~116_combout\ : std_logic;
SIGNAL \Y~405_combout\ : std_logic;
SIGNAL \Y~406_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~118_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[10]~89_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[10]~90_combout\ : std_logic;
SIGNAL \Y~408_combout\ : std_logic;
SIGNAL \Y~409_combout\ : std_logic;
SIGNAL \Y~410_combout\ : std_logic;
SIGNAL \Y~411_combout\ : std_logic;
SIGNAL \Y~407_combout\ : std_logic;
SIGNAL \Y~412_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~268_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[11]~91_combout\ : std_logic;
SIGNAL \SU1|SLL64|Stage2_sig[11]~92_combout\ : std_logic;
SIGNAL \Y~414_combout\ : std_logic;
SIGNAL \Y~415_combout\ : std_logic;
SIGNAL \Y~416_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~120_combout\ : std_logic;
SIGNAL \Y~417_combout\ : std_logic;
SIGNAL \Y~413_combout\ : std_logic;
SIGNAL \Y~418_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~122_combout\ : std_logic;
SIGNAL \Y~419_combout\ : std_logic;
SIGNAL \Y~420_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~269_combout\ : std_logic;
SIGNAL \Y~421_combout\ : std_logic;
SIGNAL \Y~422_combout\ : std_logic;
SIGNAL \Y~423_combout\ : std_logic;
SIGNAL \Y~424_combout\ : std_logic;
SIGNAL \Y~426_combout\ : std_logic;
SIGNAL \Y~427_combout\ : std_logic;
SIGNAL \Y~425_combout\ : std_logic;
SIGNAL \Y~428_combout\ : std_logic;
SIGNAL \Y~429_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~124_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~270_combout\ : std_logic;
SIGNAL \Y~430_combout\ : std_logic;
SIGNAL \Y~431_combout\ : std_logic;
SIGNAL \Y~432_combout\ : std_logic;
SIGNAL \Y~433_combout\ : std_logic;
SIGNAL \Y~434_combout\ : std_logic;
SIGNAL \Y~435_combout\ : std_logic;
SIGNAL \Y~436_combout\ : std_logic;
SIGNAL \SU1|SRL64|Stage1_sig[48]~271_combout\ : std_logic;
SIGNAL \Y~437_combout\ : std_logic;
SIGNAL \Y~438_combout\ : std_logic;
SIGNAL \Y~439_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~126_combout\ : std_logic;
SIGNAL \Y~440_combout\ : std_logic;
SIGNAL \Y~441_combout\ : std_logic;
SIGNAL \Y~442_combout\ : std_logic;
SIGNAL \Y~443_combout\ : std_logic;
SIGNAL \AU1|Adder|Add0~128_combout\ : std_logic;
SIGNAL \Y~451_combout\ : std_logic;
SIGNAL \Y~444_combout\ : std_logic;
SIGNAL \Y~445_combout\ : std_logic;
SIGNAL \Y~446_combout\ : std_logic;
SIGNAL \Y~447_combout\ : std_logic;
SIGNAL \Y~448_combout\ : std_logic;
SIGNAL \Y~449_combout\ : std_logic;
SIGNAL \Y~450_combout\ : std_logic;
SIGNAL \Y~452_combout\ : std_logic;
SIGNAL \LU1|Y[63]~3_combout\ : std_logic;
SIGNAL \Y~453_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~12_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~13_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~11_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~10_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~14_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~6_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~8_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~5_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~7_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~9_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~18_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~15_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~16_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~17_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~19_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~0_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~3_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~2_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~1_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~4_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|y~20_combout\ : std_logic;
SIGNAL \SU1|ShiftCount\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \AU1|Adder|ALT_INV_Add0~130_combout\ : std_logic;
SIGNAL \AU1|ZeroGate|gen_tree:NORGate1|ALT_INV_y~20_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_FuncClass <= FuncClass;
ww_LogicFN <= LogicFN;
ww_ShiftFN <= ShiftFN;
ww_AddnSub <= AddnSub;
ww_ExtWord <= ExtWord;
Y <= ww_Y;
Zero <= ww_Zero;
AltB <= ww_AltB;
AltBu <= ww_AltBu;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\AU1|Adder|ALT_INV_Add0~130_combout\ <= NOT \AU1|Adder|Add0~130_combout\;
\AU1|ZeroGate|gen_tree:NORGate1|ALT_INV_y~20_combout\ <= NOT \AU1|ZeroGate|gen_tree:NORGate1|y~20_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X67_Y0_N9
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~9_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~24_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~33_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~42_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~55_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~63_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~71_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~79_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~87_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~95_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~103_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~111_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~119_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~127_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~135_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~143_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~148_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~163_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~170_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~177_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~184_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~191_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~198_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~205_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~212_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~219_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~226_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~233_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~240_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~247_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~254_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~260_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~266_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~273_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~278_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~283_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~288_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~293_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~298_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~303_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~308_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~313_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~318_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~323_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~328_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~333_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~338_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~343_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~352_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~358_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~364_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~370_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~376_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~382_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~388_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~394_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~400_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~406_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~412_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~418_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~429_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~436_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~443_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~453_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AU1|ZeroGate|gen_tree:NORGate1|ALT_INV_y~20_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\AltB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AU1|AltB~2_combout\,
	devoe => ww_devoe,
	o => \AltB~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\AltBu~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AU1|Adder|ALT_INV_Add0~130_combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X60_Y0_N1
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X115_Y28_N8
\AddnSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: IOIBUF_X115_Y29_N1
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LCCOMB_X76_Y29_N18
\AU1|B_sig[63]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[63]~0_combout\ = \AddnSub~input_o\ $ (\B[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[63]~input_o\,
	combout => \AU1|B_sig[63]~0_combout\);

-- Location: IOIBUF_X89_Y0_N1
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X77_Y31_N16
\AU1|B_sig[62]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[62]~1_combout\ = \B[62]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[62]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \AU1|B_sig[62]~1_combout\);

-- Location: IOIBUF_X54_Y0_N1
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X115_Y18_N1
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LCCOMB_X76_Y29_N28
\AU1|B_sig[61]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[61]~2_combout\ = \AddnSub~input_o\ $ (\B[61]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[61]~input_o\,
	combout => \AU1|B_sig[61]~2_combout\);

-- Location: IOIBUF_X79_Y0_N1
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X75_Y29_N16
\AU1|B_sig[60]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[60]~3_combout\ = \B[60]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \AU1|B_sig[60]~3_combout\);

-- Location: IOIBUF_X89_Y73_N8
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X115_Y22_N15
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X77_Y32_N24
\AU1|B_sig[59]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[59]~4_combout\ = \AddnSub~input_o\ $ (\B[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[59]~input_o\,
	combout => \AU1|B_sig[59]~4_combout\);

-- Location: IOIBUF_X87_Y0_N22
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LCCOMB_X81_Y29_N24
\AU1|B_sig[58]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[58]~5_combout\ = \AddnSub~input_o\ $ (\B[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[58]~input_o\,
	combout => \AU1|B_sig[58]~5_combout\);

-- Location: IOIBUF_X52_Y0_N15
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X75_Y29_N10
\AU1|B_sig[57]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[57]~6_combout\ = \B[57]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[57]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \AU1|B_sig[57]~6_combout\);

-- Location: IOIBUF_X94_Y0_N1
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X115_Y20_N1
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X75_Y34_N16
\AU1|B_sig[56]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[56]~7_combout\ = \AddnSub~input_o\ $ (\B[56]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[56]~input_o\,
	combout => \AU1|B_sig[56]~7_combout\);

-- Location: IOIBUF_X115_Y18_N8
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X75_Y29_N28
\AU1|B_sig[55]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[55]~8_combout\ = \B[55]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[55]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \AU1|B_sig[55]~8_combout\);

-- Location: IOIBUF_X115_Y34_N22
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X115_Y58_N22
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X76_Y35_N8
\AU1|B_sig[54]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[54]~9_combout\ = \AddnSub~input_o\ $ (\B[54]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[54]~input_o\,
	combout => \AU1|B_sig[54]~9_combout\);

-- Location: IOIBUF_X115_Y46_N8
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X77_Y30_N8
\AU1|B_sig[53]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[53]~10_combout\ = \AddnSub~input_o\ $ (\B[53]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[53]~input_o\,
	combout => \AU1|B_sig[53]~10_combout\);

-- Location: IOIBUF_X83_Y0_N1
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LCCOMB_X75_Y30_N16
\AU1|B_sig[52]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[52]~11_combout\ = \B[52]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[52]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \AU1|B_sig[52]~11_combout\);

-- Location: IOIBUF_X115_Y20_N8
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X96_Y0_N22
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X77_Y30_N26
\AU1|B_sig[51]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[51]~12_combout\ = \B[51]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \AU1|B_sig[51]~12_combout\);

-- Location: IOIBUF_X115_Y47_N22
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X75_Y30_N18
\AU1|B_sig[50]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[50]~13_combout\ = \B[50]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[50]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \AU1|B_sig[50]~13_combout\);

-- Location: IOIBUF_X40_Y0_N22
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LCCOMB_X77_Y31_N26
\AU1|B_sig[49]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[49]~14_combout\ = \B[49]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[49]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \AU1|B_sig[49]~14_combout\);

-- Location: IOIBUF_X115_Y23_N1
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X77_Y30_N20
\AU1|B_sig[48]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[48]~15_combout\ = \AddnSub~input_o\ $ (\B[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[48]~input_o\,
	combout => \AU1|B_sig[48]~15_combout\);

-- Location: IOIBUF_X0_Y31_N15
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LCCOMB_X75_Y30_N12
\AU1|B_sig[47]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[47]~16_combout\ = \AddnSub~input_o\ $ (\B[47]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[47]~input_o\,
	combout => \AU1|B_sig[47]~16_combout\);

-- Location: IOIBUF_X115_Y44_N1
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X85_Y0_N15
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X77_Y30_N6
\AU1|B_sig[46]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[46]~17_combout\ = \B[46]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \AU1|B_sig[46]~17_combout\);

-- Location: IOIBUF_X115_Y23_N8
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X115_Y52_N8
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LCCOMB_X77_Y30_N0
\AU1|B_sig[45]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[45]~18_combout\ = \AddnSub~input_o\ $ (\B[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[45]~input_o\,
	combout => \AU1|B_sig[45]~18_combout\);

-- Location: IOIBUF_X115_Y57_N22
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X70_Y37_N0
\AU1|B_sig[44]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[44]~19_combout\ = \B[44]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[44]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \AU1|B_sig[44]~19_combout\);

-- Location: IOIBUF_X115_Y57_N15
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LCCOMB_X77_Y32_N2
\AU1|B_sig[43]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[43]~20_combout\ = \B[43]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \AU1|B_sig[43]~20_combout\);

-- Location: IOIBUF_X35_Y0_N15
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LCCOMB_X76_Y37_N24
\AU1|B_sig[42]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[42]~21_combout\ = \B[42]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[42]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \AU1|B_sig[42]~21_combout\);

-- Location: IOIBUF_X115_Y46_N1
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X77_Y30_N2
\AU1|B_sig[41]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[41]~22_combout\ = \B[41]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[41]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \AU1|B_sig[41]~22_combout\);

-- Location: IOIBUF_X96_Y0_N8
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X115_Y41_N1
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X87_Y73_N1
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X75_Y34_N18
\AU1|B_sig[40]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[40]~23_combout\ = \B[40]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \AU1|B_sig[40]~23_combout\);

-- Location: IOIBUF_X89_Y0_N8
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LCCOMB_X81_Y29_N26
\AU1|B_sig[39]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[39]~24_combout\ = \AddnSub~input_o\ $ (\B[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[39]~input_o\,
	combout => \AU1|B_sig[39]~24_combout\);

-- Location: IOIBUF_X115_Y16_N8
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X115_Y50_N1
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X77_Y30_N12
\AU1|B_sig[38]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[38]~25_combout\ = \AddnSub~input_o\ $ (\B[38]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[38]~input_o\,
	combout => \AU1|B_sig[38]~25_combout\);

-- Location: IOIBUF_X115_Y40_N8
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X115_Y45_N22
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X77_Y30_N30
\AU1|B_sig[37]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[37]~26_combout\ = \AddnSub~input_o\ $ (\B[37]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[37]~input_o\,
	combout => \AU1|B_sig[37]~26_combout\);

-- Location: IOIBUF_X87_Y73_N8
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X100_Y0_N1
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LCCOMB_X77_Y31_N28
\AU1|B_sig[36]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[36]~27_combout\ = \AddnSub~input_o\ $ (\B[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[36]~input_o\,
	combout => \AU1|B_sig[36]~27_combout\);

-- Location: IOIBUF_X115_Y52_N1
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: LCCOMB_X77_Y32_N20
\AU1|B_sig[35]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[35]~28_combout\ = \AddnSub~input_o\ $ (\B[35]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[35]~input_o\,
	combout => \AU1|B_sig[35]~28_combout\);

-- Location: IOIBUF_X115_Y25_N15
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X96_Y0_N15
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X77_Y31_N6
\AU1|B_sig[34]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[34]~29_combout\ = \AddnSub~input_o\ $ (\B[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[34]~input_o\,
	combout => \AU1|B_sig[34]~29_combout\);

-- Location: IOIBUF_X115_Y47_N15
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X115_Y36_N15
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LCCOMB_X76_Y35_N18
\AU1|B_sig[33]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[33]~30_combout\ = \AddnSub~input_o\ $ (\B[33]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[33]~input_o\,
	combout => \AU1|B_sig[33]~30_combout\);

-- Location: IOIBUF_X54_Y0_N15
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X98_Y0_N22
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X77_Y31_N8
\AU1|B_sig[32]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[32]~31_combout\ = \AddnSub~input_o\ $ (\B[32]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[32]~input_o\,
	combout => \AU1|B_sig[32]~31_combout\);

-- Location: IOIBUF_X54_Y0_N8
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X115_Y27_N8
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X77_Y31_N18
\AU1|B_sig[31]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[31]~32_combout\ = \AddnSub~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[31]~input_o\,
	combout => \AU1|B_sig[31]~32_combout\);

-- Location: IOIBUF_X56_Y73_N1
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X73_Y35_N24
\AU1|B_sig[30]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[30]~33_combout\ = \AddnSub~input_o\ $ (\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[30]~input_o\,
	combout => \AU1|B_sig[30]~33_combout\);

-- Location: IOIBUF_X56_Y73_N8
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X100_Y0_N22
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X73_Y31_N0
\AU1|B_sig[29]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[29]~34_combout\ = \B[29]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[29]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \AU1|B_sig[29]~34_combout\);

-- Location: IOIBUF_X69_Y73_N1
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X70_Y37_N10
\AU1|B_sig[28]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[28]~35_combout\ = \AddnSub~input_o\ $ (\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[28]~input_o\,
	combout => \AU1|B_sig[28]~35_combout\);

-- Location: IOIBUF_X56_Y73_N15
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X56_Y73_N22
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X77_Y32_N30
\AU1|B_sig[27]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[27]~36_combout\ = \B[27]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[27]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \AU1|B_sig[27]~36_combout\);

-- Location: IOIBUF_X115_Y54_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X77_Y31_N20
\AU1|B_sig[26]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[26]~37_combout\ = \B[26]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[26]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \AU1|B_sig[26]~37_combout\);

-- Location: IOIBUF_X85_Y73_N1
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X75_Y34_N20
\AU1|B_sig[25]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[25]~38_combout\ = \B[25]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[25]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \AU1|B_sig[25]~38_combout\);

-- Location: IOIBUF_X54_Y0_N22
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X70_Y28_N8
\AU1|B_sig[24]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[24]~39_combout\ = \AddnSub~input_o\ $ (\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[24]~input_o\,
	combout => \AU1|B_sig[24]~39_combout\);

-- Location: IOIBUF_X52_Y0_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X115_Y19_N8
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X67_Y0_N22
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X70_Y28_N18
\AU1|B_sig[23]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[23]~40_combout\ = \B[23]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[23]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \AU1|B_sig[23]~40_combout\);

-- Location: IOIBUF_X115_Y33_N8
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X115_Y51_N8
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X76_Y35_N12
\AU1|B_sig[22]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[22]~41_combout\ = \AddnSub~input_o\ $ (\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[22]~input_o\,
	combout => \AU1|B_sig[22]~41_combout\);

-- Location: IOIBUF_X60_Y73_N8
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X73_Y31_N2
\AU1|B_sig[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[21]~42_combout\ = \B[21]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[21]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \AU1|B_sig[21]~42_combout\);

-- Location: IOIBUF_X85_Y0_N8
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X77_Y31_N30
\AU1|B_sig[20]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[20]~43_combout\ = \AddnSub~input_o\ $ (\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[20]~input_o\,
	combout => \AU1|B_sig[20]~43_combout\);

-- Location: IOIBUF_X115_Y48_N8
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X96_Y0_N1
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X77_Y31_N0
\AU1|B_sig[19]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[19]~44_combout\ = \AddnSub~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[19]~input_o\,
	combout => \AU1|B_sig[19]~44_combout\);

-- Location: IOIBUF_X62_Y73_N22
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X67_Y0_N15
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X70_Y28_N20
\AU1|B_sig[18]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[18]~45_combout\ = \B[18]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[18]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \AU1|B_sig[18]~45_combout\);

-- Location: IOIBUF_X115_Y19_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X115_Y44_N8
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X77_Y31_N10
\AU1|B_sig[17]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[17]~46_combout\ = \B[17]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \AU1|B_sig[17]~46_combout\);

-- Location: IOIBUF_X60_Y73_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X115_Y24_N1
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X77_Y32_N0
\AU1|B_sig[16]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[16]~47_combout\ = \AddnSub~input_o\ $ (\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[16]~input_o\,
	combout => \AU1|B_sig[16]~47_combout\);

-- Location: IOIBUF_X98_Y0_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X115_Y32_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X77_Y32_N18
\AU1|B_sig[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[15]~48_combout\ = \AddnSub~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[15]~input_o\,
	combout => \AU1|B_sig[15]~48_combout\);

-- Location: IOIBUF_X47_Y0_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X115_Y30_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X77_Y30_N24
\AU1|B_sig[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[14]~49_combout\ = \AddnSub~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[14]~input_o\,
	combout => \AU1|B_sig[14]~49_combout\);

-- Location: IOIBUF_X47_Y0_N8
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X115_Y24_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X77_Y30_N10
\AU1|B_sig[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[13]~50_combout\ = \AddnSub~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[13]~input_o\,
	combout => \AU1|B_sig[13]~50_combout\);

-- Location: IOIBUF_X67_Y73_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X70_Y37_N28
\AU1|B_sig[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[12]~51_combout\ = \B[12]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[12]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \AU1|B_sig[12]~51_combout\);

-- Location: IOIBUF_X67_Y73_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X115_Y56_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X77_Y32_N12
\AU1|B_sig[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[11]~52_combout\ = \AddnSub~input_o\ $ (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[11]~input_o\,
	combout => \AU1|B_sig[11]~52_combout\);

-- Location: IOIBUF_X115_Y48_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X115_Y55_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X76_Y37_N26
\AU1|B_sig[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[10]~53_combout\ = \AddnSub~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[10]~input_o\,
	combout => \AU1|B_sig[10]~53_combout\);

-- Location: IOIBUF_X89_Y73_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X76_Y37_N4
\AU1|B_sig[9]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[9]~54_combout\ = \AddnSub~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[9]~input_o\,
	combout => \AU1|B_sig[9]~54_combout\);

-- Location: IOIBUF_X79_Y73_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X75_Y37_N8
\AU1|B_sig[8]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[8]~55_combout\ = \AddnSub~input_o\ $ (\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[8]~input_o\,
	combout => \AU1|B_sig[8]~55_combout\);

-- Location: IOIBUF_X115_Y55_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X76_Y37_N30
\AU1|B_sig[7]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[7]~56_combout\ = \AddnSub~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[7]~input_o\,
	combout => \AU1|B_sig[7]~56_combout\);

-- Location: IOIBUF_X115_Y41_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X115_Y35_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X75_Y37_N18
\AU1|B_sig[6]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[6]~57_combout\ = \B[6]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \AU1|B_sig[6]~57_combout\);

-- Location: IOIBUF_X56_Y0_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X75_Y33_N16
\AU1|B_sig[5]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[5]~58_combout\ = \B[5]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \AU1|B_sig[5]~58_combout\);

-- Location: IOIBUF_X115_Y49_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X115_Y33_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X75_Y33_N18
\AU1|B_sig[4]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[4]~59_combout\ = \AddnSub~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[4]~input_o\,
	combout => \AU1|B_sig[4]~59_combout\);

-- Location: IOIBUF_X115_Y31_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X77_Y30_N4
\AU1|B_sig[3]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[3]~60_combout\ = \B[3]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \AU1|B_sig[3]~60_combout\);

-- Location: IOIBUF_X115_Y56_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X75_Y34_N14
\AU1|B_sig[2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[2]~61_combout\ = \B[2]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \AU1|B_sig[2]~61_combout\);

-- Location: IOIBUF_X115_Y49_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X74_Y33_N24
\AU1|B_sig[1]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[1]~62_combout\ = \B[1]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \AU1|B_sig[1]~62_combout\);

-- Location: IOIBUF_X60_Y0_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X73_Y31_N20
\AU1|B_sig[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|B_sig[0]~63_combout\ = \B[0]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \AU1|B_sig[0]~63_combout\);

-- Location: IOIBUF_X49_Y0_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X76_Y33_N14
\AU1|Adder|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~1_cout\ = CARRY(\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => VCC,
	cout => \AU1|Adder|Add0~1_cout\);

-- Location: LCCOMB_X76_Y33_N16
\AU1|Adder|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~2_combout\ = (\AU1|B_sig[0]~63_combout\ & ((\A[0]~input_o\ & (\AU1|Adder|Add0~1_cout\ & VCC)) # (!\A[0]~input_o\ & (!\AU1|Adder|Add0~1_cout\)))) # (!\AU1|B_sig[0]~63_combout\ & ((\A[0]~input_o\ & (!\AU1|Adder|Add0~1_cout\)) # 
-- (!\A[0]~input_o\ & ((\AU1|Adder|Add0~1_cout\) # (GND)))))
-- \AU1|Adder|Add0~3\ = CARRY((\AU1|B_sig[0]~63_combout\ & (!\A[0]~input_o\ & !\AU1|Adder|Add0~1_cout\)) # (!\AU1|B_sig[0]~63_combout\ & ((!\AU1|Adder|Add0~1_cout\) # (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[0]~63_combout\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~1_cout\,
	combout => \AU1|Adder|Add0~2_combout\,
	cout => \AU1|Adder|Add0~3\);

-- Location: LCCOMB_X76_Y33_N18
\AU1|Adder|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~4_combout\ = ((\A[1]~input_o\ $ (\AU1|B_sig[1]~62_combout\ $ (!\AU1|Adder|Add0~3\)))) # (GND)
-- \AU1|Adder|Add0~5\ = CARRY((\A[1]~input_o\ & ((\AU1|B_sig[1]~62_combout\) # (!\AU1|Adder|Add0~3\))) # (!\A[1]~input_o\ & (\AU1|B_sig[1]~62_combout\ & !\AU1|Adder|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \AU1|B_sig[1]~62_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~3\,
	combout => \AU1|Adder|Add0~4_combout\,
	cout => \AU1|Adder|Add0~5\);

-- Location: LCCOMB_X76_Y33_N20
\AU1|Adder|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~6_combout\ = (\A[2]~input_o\ & ((\AU1|B_sig[2]~61_combout\ & (\AU1|Adder|Add0~5\ & VCC)) # (!\AU1|B_sig[2]~61_combout\ & (!\AU1|Adder|Add0~5\)))) # (!\A[2]~input_o\ & ((\AU1|B_sig[2]~61_combout\ & (!\AU1|Adder|Add0~5\)) # 
-- (!\AU1|B_sig[2]~61_combout\ & ((\AU1|Adder|Add0~5\) # (GND)))))
-- \AU1|Adder|Add0~7\ = CARRY((\A[2]~input_o\ & (!\AU1|B_sig[2]~61_combout\ & !\AU1|Adder|Add0~5\)) # (!\A[2]~input_o\ & ((!\AU1|Adder|Add0~5\) # (!\AU1|B_sig[2]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \AU1|B_sig[2]~61_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~5\,
	combout => \AU1|Adder|Add0~6_combout\,
	cout => \AU1|Adder|Add0~7\);

-- Location: LCCOMB_X76_Y33_N22
\AU1|Adder|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~8_combout\ = ((\AU1|B_sig[3]~60_combout\ $ (\A[3]~input_o\ $ (!\AU1|Adder|Add0~7\)))) # (GND)
-- \AU1|Adder|Add0~9\ = CARRY((\AU1|B_sig[3]~60_combout\ & ((\A[3]~input_o\) # (!\AU1|Adder|Add0~7\))) # (!\AU1|B_sig[3]~60_combout\ & (\A[3]~input_o\ & !\AU1|Adder|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[3]~60_combout\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~7\,
	combout => \AU1|Adder|Add0~8_combout\,
	cout => \AU1|Adder|Add0~9\);

-- Location: LCCOMB_X76_Y33_N24
\AU1|Adder|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~10_combout\ = (\A[4]~input_o\ & ((\AU1|B_sig[4]~59_combout\ & (\AU1|Adder|Add0~9\ & VCC)) # (!\AU1|B_sig[4]~59_combout\ & (!\AU1|Adder|Add0~9\)))) # (!\A[4]~input_o\ & ((\AU1|B_sig[4]~59_combout\ & (!\AU1|Adder|Add0~9\)) # 
-- (!\AU1|B_sig[4]~59_combout\ & ((\AU1|Adder|Add0~9\) # (GND)))))
-- \AU1|Adder|Add0~11\ = CARRY((\A[4]~input_o\ & (!\AU1|B_sig[4]~59_combout\ & !\AU1|Adder|Add0~9\)) # (!\A[4]~input_o\ & ((!\AU1|Adder|Add0~9\) # (!\AU1|B_sig[4]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \AU1|B_sig[4]~59_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~9\,
	combout => \AU1|Adder|Add0~10_combout\,
	cout => \AU1|Adder|Add0~11\);

-- Location: LCCOMB_X76_Y33_N26
\AU1|Adder|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~12_combout\ = ((\AU1|B_sig[5]~58_combout\ $ (\A[5]~input_o\ $ (!\AU1|Adder|Add0~11\)))) # (GND)
-- \AU1|Adder|Add0~13\ = CARRY((\AU1|B_sig[5]~58_combout\ & ((\A[5]~input_o\) # (!\AU1|Adder|Add0~11\))) # (!\AU1|B_sig[5]~58_combout\ & (\A[5]~input_o\ & !\AU1|Adder|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[5]~58_combout\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~11\,
	combout => \AU1|Adder|Add0~12_combout\,
	cout => \AU1|Adder|Add0~13\);

-- Location: LCCOMB_X76_Y33_N28
\AU1|Adder|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~14_combout\ = (\A[6]~input_o\ & ((\AU1|B_sig[6]~57_combout\ & (\AU1|Adder|Add0~13\ & VCC)) # (!\AU1|B_sig[6]~57_combout\ & (!\AU1|Adder|Add0~13\)))) # (!\A[6]~input_o\ & ((\AU1|B_sig[6]~57_combout\ & (!\AU1|Adder|Add0~13\)) # 
-- (!\AU1|B_sig[6]~57_combout\ & ((\AU1|Adder|Add0~13\) # (GND)))))
-- \AU1|Adder|Add0~15\ = CARRY((\A[6]~input_o\ & (!\AU1|B_sig[6]~57_combout\ & !\AU1|Adder|Add0~13\)) # (!\A[6]~input_o\ & ((!\AU1|Adder|Add0~13\) # (!\AU1|B_sig[6]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \AU1|B_sig[6]~57_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~13\,
	combout => \AU1|Adder|Add0~14_combout\,
	cout => \AU1|Adder|Add0~15\);

-- Location: LCCOMB_X76_Y33_N30
\AU1|Adder|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~16_combout\ = ((\AU1|B_sig[7]~56_combout\ $ (\A[7]~input_o\ $ (!\AU1|Adder|Add0~15\)))) # (GND)
-- \AU1|Adder|Add0~17\ = CARRY((\AU1|B_sig[7]~56_combout\ & ((\A[7]~input_o\) # (!\AU1|Adder|Add0~15\))) # (!\AU1|B_sig[7]~56_combout\ & (\A[7]~input_o\ & !\AU1|Adder|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[7]~56_combout\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~15\,
	combout => \AU1|Adder|Add0~16_combout\,
	cout => \AU1|Adder|Add0~17\);

-- Location: LCCOMB_X76_Y32_N0
\AU1|Adder|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~18_combout\ = (\AU1|B_sig[8]~55_combout\ & ((\A[8]~input_o\ & (\AU1|Adder|Add0~17\ & VCC)) # (!\A[8]~input_o\ & (!\AU1|Adder|Add0~17\)))) # (!\AU1|B_sig[8]~55_combout\ & ((\A[8]~input_o\ & (!\AU1|Adder|Add0~17\)) # (!\A[8]~input_o\ & 
-- ((\AU1|Adder|Add0~17\) # (GND)))))
-- \AU1|Adder|Add0~19\ = CARRY((\AU1|B_sig[8]~55_combout\ & (!\A[8]~input_o\ & !\AU1|Adder|Add0~17\)) # (!\AU1|B_sig[8]~55_combout\ & ((!\AU1|Adder|Add0~17\) # (!\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[8]~55_combout\,
	datab => \A[8]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~17\,
	combout => \AU1|Adder|Add0~18_combout\,
	cout => \AU1|Adder|Add0~19\);

-- Location: LCCOMB_X76_Y32_N2
\AU1|Adder|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~20_combout\ = ((\A[9]~input_o\ $ (\AU1|B_sig[9]~54_combout\ $ (!\AU1|Adder|Add0~19\)))) # (GND)
-- \AU1|Adder|Add0~21\ = CARRY((\A[9]~input_o\ & ((\AU1|B_sig[9]~54_combout\) # (!\AU1|Adder|Add0~19\))) # (!\A[9]~input_o\ & (\AU1|B_sig[9]~54_combout\ & !\AU1|Adder|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \AU1|B_sig[9]~54_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~19\,
	combout => \AU1|Adder|Add0~20_combout\,
	cout => \AU1|Adder|Add0~21\);

-- Location: LCCOMB_X76_Y32_N4
\AU1|Adder|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~22_combout\ = (\A[10]~input_o\ & ((\AU1|B_sig[10]~53_combout\ & (\AU1|Adder|Add0~21\ & VCC)) # (!\AU1|B_sig[10]~53_combout\ & (!\AU1|Adder|Add0~21\)))) # (!\A[10]~input_o\ & ((\AU1|B_sig[10]~53_combout\ & (!\AU1|Adder|Add0~21\)) # 
-- (!\AU1|B_sig[10]~53_combout\ & ((\AU1|Adder|Add0~21\) # (GND)))))
-- \AU1|Adder|Add0~23\ = CARRY((\A[10]~input_o\ & (!\AU1|B_sig[10]~53_combout\ & !\AU1|Adder|Add0~21\)) # (!\A[10]~input_o\ & ((!\AU1|Adder|Add0~21\) # (!\AU1|B_sig[10]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \AU1|B_sig[10]~53_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~21\,
	combout => \AU1|Adder|Add0~22_combout\,
	cout => \AU1|Adder|Add0~23\);

-- Location: LCCOMB_X76_Y32_N6
\AU1|Adder|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~24_combout\ = ((\AU1|B_sig[11]~52_combout\ $ (\A[11]~input_o\ $ (!\AU1|Adder|Add0~23\)))) # (GND)
-- \AU1|Adder|Add0~25\ = CARRY((\AU1|B_sig[11]~52_combout\ & ((\A[11]~input_o\) # (!\AU1|Adder|Add0~23\))) # (!\AU1|B_sig[11]~52_combout\ & (\A[11]~input_o\ & !\AU1|Adder|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[11]~52_combout\,
	datab => \A[11]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~23\,
	combout => \AU1|Adder|Add0~24_combout\,
	cout => \AU1|Adder|Add0~25\);

-- Location: LCCOMB_X76_Y32_N8
\AU1|Adder|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~26_combout\ = (\AU1|B_sig[12]~51_combout\ & ((\A[12]~input_o\ & (\AU1|Adder|Add0~25\ & VCC)) # (!\A[12]~input_o\ & (!\AU1|Adder|Add0~25\)))) # (!\AU1|B_sig[12]~51_combout\ & ((\A[12]~input_o\ & (!\AU1|Adder|Add0~25\)) # (!\A[12]~input_o\ & 
-- ((\AU1|Adder|Add0~25\) # (GND)))))
-- \AU1|Adder|Add0~27\ = CARRY((\AU1|B_sig[12]~51_combout\ & (!\A[12]~input_o\ & !\AU1|Adder|Add0~25\)) # (!\AU1|B_sig[12]~51_combout\ & ((!\AU1|Adder|Add0~25\) # (!\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[12]~51_combout\,
	datab => \A[12]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~25\,
	combout => \AU1|Adder|Add0~26_combout\,
	cout => \AU1|Adder|Add0~27\);

-- Location: LCCOMB_X76_Y32_N10
\AU1|Adder|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~28_combout\ = ((\A[13]~input_o\ $ (\AU1|B_sig[13]~50_combout\ $ (!\AU1|Adder|Add0~27\)))) # (GND)
-- \AU1|Adder|Add0~29\ = CARRY((\A[13]~input_o\ & ((\AU1|B_sig[13]~50_combout\) # (!\AU1|Adder|Add0~27\))) # (!\A[13]~input_o\ & (\AU1|B_sig[13]~50_combout\ & !\AU1|Adder|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \AU1|B_sig[13]~50_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~27\,
	combout => \AU1|Adder|Add0~28_combout\,
	cout => \AU1|Adder|Add0~29\);

-- Location: LCCOMB_X76_Y32_N12
\AU1|Adder|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~30_combout\ = (\A[14]~input_o\ & ((\AU1|B_sig[14]~49_combout\ & (\AU1|Adder|Add0~29\ & VCC)) # (!\AU1|B_sig[14]~49_combout\ & (!\AU1|Adder|Add0~29\)))) # (!\A[14]~input_o\ & ((\AU1|B_sig[14]~49_combout\ & (!\AU1|Adder|Add0~29\)) # 
-- (!\AU1|B_sig[14]~49_combout\ & ((\AU1|Adder|Add0~29\) # (GND)))))
-- \AU1|Adder|Add0~31\ = CARRY((\A[14]~input_o\ & (!\AU1|B_sig[14]~49_combout\ & !\AU1|Adder|Add0~29\)) # (!\A[14]~input_o\ & ((!\AU1|Adder|Add0~29\) # (!\AU1|B_sig[14]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \AU1|B_sig[14]~49_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~29\,
	combout => \AU1|Adder|Add0~30_combout\,
	cout => \AU1|Adder|Add0~31\);

-- Location: LCCOMB_X76_Y32_N14
\AU1|Adder|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~32_combout\ = ((\A[15]~input_o\ $ (\AU1|B_sig[15]~48_combout\ $ (!\AU1|Adder|Add0~31\)))) # (GND)
-- \AU1|Adder|Add0~33\ = CARRY((\A[15]~input_o\ & ((\AU1|B_sig[15]~48_combout\) # (!\AU1|Adder|Add0~31\))) # (!\A[15]~input_o\ & (\AU1|B_sig[15]~48_combout\ & !\AU1|Adder|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \AU1|B_sig[15]~48_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~31\,
	combout => \AU1|Adder|Add0~32_combout\,
	cout => \AU1|Adder|Add0~33\);

-- Location: LCCOMB_X76_Y32_N16
\AU1|Adder|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~34_combout\ = (\A[16]~input_o\ & ((\AU1|B_sig[16]~47_combout\ & (\AU1|Adder|Add0~33\ & VCC)) # (!\AU1|B_sig[16]~47_combout\ & (!\AU1|Adder|Add0~33\)))) # (!\A[16]~input_o\ & ((\AU1|B_sig[16]~47_combout\ & (!\AU1|Adder|Add0~33\)) # 
-- (!\AU1|B_sig[16]~47_combout\ & ((\AU1|Adder|Add0~33\) # (GND)))))
-- \AU1|Adder|Add0~35\ = CARRY((\A[16]~input_o\ & (!\AU1|B_sig[16]~47_combout\ & !\AU1|Adder|Add0~33\)) # (!\A[16]~input_o\ & ((!\AU1|Adder|Add0~33\) # (!\AU1|B_sig[16]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \AU1|B_sig[16]~47_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~33\,
	combout => \AU1|Adder|Add0~34_combout\,
	cout => \AU1|Adder|Add0~35\);

-- Location: LCCOMB_X76_Y32_N18
\AU1|Adder|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~36_combout\ = ((\A[17]~input_o\ $ (\AU1|B_sig[17]~46_combout\ $ (!\AU1|Adder|Add0~35\)))) # (GND)
-- \AU1|Adder|Add0~37\ = CARRY((\A[17]~input_o\ & ((\AU1|B_sig[17]~46_combout\) # (!\AU1|Adder|Add0~35\))) # (!\A[17]~input_o\ & (\AU1|B_sig[17]~46_combout\ & !\AU1|Adder|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \AU1|B_sig[17]~46_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~35\,
	combout => \AU1|Adder|Add0~36_combout\,
	cout => \AU1|Adder|Add0~37\);

-- Location: LCCOMB_X76_Y32_N20
\AU1|Adder|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~38_combout\ = (\AU1|B_sig[18]~45_combout\ & ((\A[18]~input_o\ & (\AU1|Adder|Add0~37\ & VCC)) # (!\A[18]~input_o\ & (!\AU1|Adder|Add0~37\)))) # (!\AU1|B_sig[18]~45_combout\ & ((\A[18]~input_o\ & (!\AU1|Adder|Add0~37\)) # (!\A[18]~input_o\ & 
-- ((\AU1|Adder|Add0~37\) # (GND)))))
-- \AU1|Adder|Add0~39\ = CARRY((\AU1|B_sig[18]~45_combout\ & (!\A[18]~input_o\ & !\AU1|Adder|Add0~37\)) # (!\AU1|B_sig[18]~45_combout\ & ((!\AU1|Adder|Add0~37\) # (!\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[18]~45_combout\,
	datab => \A[18]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~37\,
	combout => \AU1|Adder|Add0~38_combout\,
	cout => \AU1|Adder|Add0~39\);

-- Location: LCCOMB_X76_Y32_N22
\AU1|Adder|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~40_combout\ = ((\AU1|B_sig[19]~44_combout\ $ (\A[19]~input_o\ $ (!\AU1|Adder|Add0~39\)))) # (GND)
-- \AU1|Adder|Add0~41\ = CARRY((\AU1|B_sig[19]~44_combout\ & ((\A[19]~input_o\) # (!\AU1|Adder|Add0~39\))) # (!\AU1|B_sig[19]~44_combout\ & (\A[19]~input_o\ & !\AU1|Adder|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[19]~44_combout\,
	datab => \A[19]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~39\,
	combout => \AU1|Adder|Add0~40_combout\,
	cout => \AU1|Adder|Add0~41\);

-- Location: LCCOMB_X76_Y32_N24
\AU1|Adder|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~42_combout\ = (\AU1|B_sig[20]~43_combout\ & ((\A[20]~input_o\ & (\AU1|Adder|Add0~41\ & VCC)) # (!\A[20]~input_o\ & (!\AU1|Adder|Add0~41\)))) # (!\AU1|B_sig[20]~43_combout\ & ((\A[20]~input_o\ & (!\AU1|Adder|Add0~41\)) # (!\A[20]~input_o\ & 
-- ((\AU1|Adder|Add0~41\) # (GND)))))
-- \AU1|Adder|Add0~43\ = CARRY((\AU1|B_sig[20]~43_combout\ & (!\A[20]~input_o\ & !\AU1|Adder|Add0~41\)) # (!\AU1|B_sig[20]~43_combout\ & ((!\AU1|Adder|Add0~41\) # (!\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[20]~43_combout\,
	datab => \A[20]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~41\,
	combout => \AU1|Adder|Add0~42_combout\,
	cout => \AU1|Adder|Add0~43\);

-- Location: LCCOMB_X76_Y32_N26
\AU1|Adder|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~44_combout\ = ((\A[21]~input_o\ $ (\AU1|B_sig[21]~42_combout\ $ (!\AU1|Adder|Add0~43\)))) # (GND)
-- \AU1|Adder|Add0~45\ = CARRY((\A[21]~input_o\ & ((\AU1|B_sig[21]~42_combout\) # (!\AU1|Adder|Add0~43\))) # (!\A[21]~input_o\ & (\AU1|B_sig[21]~42_combout\ & !\AU1|Adder|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \AU1|B_sig[21]~42_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~43\,
	combout => \AU1|Adder|Add0~44_combout\,
	cout => \AU1|Adder|Add0~45\);

-- Location: LCCOMB_X76_Y32_N28
\AU1|Adder|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~46_combout\ = (\A[22]~input_o\ & ((\AU1|B_sig[22]~41_combout\ & (\AU1|Adder|Add0~45\ & VCC)) # (!\AU1|B_sig[22]~41_combout\ & (!\AU1|Adder|Add0~45\)))) # (!\A[22]~input_o\ & ((\AU1|B_sig[22]~41_combout\ & (!\AU1|Adder|Add0~45\)) # 
-- (!\AU1|B_sig[22]~41_combout\ & ((\AU1|Adder|Add0~45\) # (GND)))))
-- \AU1|Adder|Add0~47\ = CARRY((\A[22]~input_o\ & (!\AU1|B_sig[22]~41_combout\ & !\AU1|Adder|Add0~45\)) # (!\A[22]~input_o\ & ((!\AU1|Adder|Add0~45\) # (!\AU1|B_sig[22]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \AU1|B_sig[22]~41_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~45\,
	combout => \AU1|Adder|Add0~46_combout\,
	cout => \AU1|Adder|Add0~47\);

-- Location: LCCOMB_X76_Y32_N30
\AU1|Adder|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~48_combout\ = ((\A[23]~input_o\ $ (\AU1|B_sig[23]~40_combout\ $ (!\AU1|Adder|Add0~47\)))) # (GND)
-- \AU1|Adder|Add0~49\ = CARRY((\A[23]~input_o\ & ((\AU1|B_sig[23]~40_combout\) # (!\AU1|Adder|Add0~47\))) # (!\A[23]~input_o\ & (\AU1|B_sig[23]~40_combout\ & !\AU1|Adder|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \AU1|B_sig[23]~40_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~47\,
	combout => \AU1|Adder|Add0~48_combout\,
	cout => \AU1|Adder|Add0~49\);

-- Location: LCCOMB_X76_Y31_N0
\AU1|Adder|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~50_combout\ = (\AU1|B_sig[24]~39_combout\ & ((\A[24]~input_o\ & (\AU1|Adder|Add0~49\ & VCC)) # (!\A[24]~input_o\ & (!\AU1|Adder|Add0~49\)))) # (!\AU1|B_sig[24]~39_combout\ & ((\A[24]~input_o\ & (!\AU1|Adder|Add0~49\)) # (!\A[24]~input_o\ & 
-- ((\AU1|Adder|Add0~49\) # (GND)))))
-- \AU1|Adder|Add0~51\ = CARRY((\AU1|B_sig[24]~39_combout\ & (!\A[24]~input_o\ & !\AU1|Adder|Add0~49\)) # (!\AU1|B_sig[24]~39_combout\ & ((!\AU1|Adder|Add0~49\) # (!\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[24]~39_combout\,
	datab => \A[24]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~49\,
	combout => \AU1|Adder|Add0~50_combout\,
	cout => \AU1|Adder|Add0~51\);

-- Location: LCCOMB_X76_Y31_N2
\AU1|Adder|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~52_combout\ = ((\AU1|B_sig[25]~38_combout\ $ (\A[25]~input_o\ $ (!\AU1|Adder|Add0~51\)))) # (GND)
-- \AU1|Adder|Add0~53\ = CARRY((\AU1|B_sig[25]~38_combout\ & ((\A[25]~input_o\) # (!\AU1|Adder|Add0~51\))) # (!\AU1|B_sig[25]~38_combout\ & (\A[25]~input_o\ & !\AU1|Adder|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[25]~38_combout\,
	datab => \A[25]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~51\,
	combout => \AU1|Adder|Add0~52_combout\,
	cout => \AU1|Adder|Add0~53\);

-- Location: LCCOMB_X76_Y31_N4
\AU1|Adder|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~54_combout\ = (\A[26]~input_o\ & ((\AU1|B_sig[26]~37_combout\ & (\AU1|Adder|Add0~53\ & VCC)) # (!\AU1|B_sig[26]~37_combout\ & (!\AU1|Adder|Add0~53\)))) # (!\A[26]~input_o\ & ((\AU1|B_sig[26]~37_combout\ & (!\AU1|Adder|Add0~53\)) # 
-- (!\AU1|B_sig[26]~37_combout\ & ((\AU1|Adder|Add0~53\) # (GND)))))
-- \AU1|Adder|Add0~55\ = CARRY((\A[26]~input_o\ & (!\AU1|B_sig[26]~37_combout\ & !\AU1|Adder|Add0~53\)) # (!\A[26]~input_o\ & ((!\AU1|Adder|Add0~53\) # (!\AU1|B_sig[26]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \AU1|B_sig[26]~37_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~53\,
	combout => \AU1|Adder|Add0~54_combout\,
	cout => \AU1|Adder|Add0~55\);

-- Location: LCCOMB_X76_Y31_N6
\AU1|Adder|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~56_combout\ = ((\AU1|B_sig[27]~36_combout\ $ (\A[27]~input_o\ $ (!\AU1|Adder|Add0~55\)))) # (GND)
-- \AU1|Adder|Add0~57\ = CARRY((\AU1|B_sig[27]~36_combout\ & ((\A[27]~input_o\) # (!\AU1|Adder|Add0~55\))) # (!\AU1|B_sig[27]~36_combout\ & (\A[27]~input_o\ & !\AU1|Adder|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[27]~36_combout\,
	datab => \A[27]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~55\,
	combout => \AU1|Adder|Add0~56_combout\,
	cout => \AU1|Adder|Add0~57\);

-- Location: LCCOMB_X76_Y31_N8
\AU1|Adder|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~58_combout\ = (\AU1|B_sig[28]~35_combout\ & ((\A[28]~input_o\ & (\AU1|Adder|Add0~57\ & VCC)) # (!\A[28]~input_o\ & (!\AU1|Adder|Add0~57\)))) # (!\AU1|B_sig[28]~35_combout\ & ((\A[28]~input_o\ & (!\AU1|Adder|Add0~57\)) # (!\A[28]~input_o\ & 
-- ((\AU1|Adder|Add0~57\) # (GND)))))
-- \AU1|Adder|Add0~59\ = CARRY((\AU1|B_sig[28]~35_combout\ & (!\A[28]~input_o\ & !\AU1|Adder|Add0~57\)) # (!\AU1|B_sig[28]~35_combout\ & ((!\AU1|Adder|Add0~57\) # (!\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[28]~35_combout\,
	datab => \A[28]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~57\,
	combout => \AU1|Adder|Add0~58_combout\,
	cout => \AU1|Adder|Add0~59\);

-- Location: LCCOMB_X76_Y31_N10
\AU1|Adder|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~60_combout\ = ((\A[29]~input_o\ $ (\AU1|B_sig[29]~34_combout\ $ (!\AU1|Adder|Add0~59\)))) # (GND)
-- \AU1|Adder|Add0~61\ = CARRY((\A[29]~input_o\ & ((\AU1|B_sig[29]~34_combout\) # (!\AU1|Adder|Add0~59\))) # (!\A[29]~input_o\ & (\AU1|B_sig[29]~34_combout\ & !\AU1|Adder|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \AU1|B_sig[29]~34_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~59\,
	combout => \AU1|Adder|Add0~60_combout\,
	cout => \AU1|Adder|Add0~61\);

-- Location: LCCOMB_X76_Y31_N12
\AU1|Adder|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~62_combout\ = (\AU1|B_sig[30]~33_combout\ & ((\A[30]~input_o\ & (\AU1|Adder|Add0~61\ & VCC)) # (!\A[30]~input_o\ & (!\AU1|Adder|Add0~61\)))) # (!\AU1|B_sig[30]~33_combout\ & ((\A[30]~input_o\ & (!\AU1|Adder|Add0~61\)) # (!\A[30]~input_o\ & 
-- ((\AU1|Adder|Add0~61\) # (GND)))))
-- \AU1|Adder|Add0~63\ = CARRY((\AU1|B_sig[30]~33_combout\ & (!\A[30]~input_o\ & !\AU1|Adder|Add0~61\)) # (!\AU1|B_sig[30]~33_combout\ & ((!\AU1|Adder|Add0~61\) # (!\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[30]~33_combout\,
	datab => \A[30]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~61\,
	combout => \AU1|Adder|Add0~62_combout\,
	cout => \AU1|Adder|Add0~63\);

-- Location: LCCOMB_X76_Y31_N14
\AU1|Adder|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~64_combout\ = ((\A[31]~input_o\ $ (\AU1|B_sig[31]~32_combout\ $ (!\AU1|Adder|Add0~63\)))) # (GND)
-- \AU1|Adder|Add0~65\ = CARRY((\A[31]~input_o\ & ((\AU1|B_sig[31]~32_combout\) # (!\AU1|Adder|Add0~63\))) # (!\A[31]~input_o\ & (\AU1|B_sig[31]~32_combout\ & !\AU1|Adder|Add0~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \AU1|B_sig[31]~32_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~63\,
	combout => \AU1|Adder|Add0~64_combout\,
	cout => \AU1|Adder|Add0~65\);

-- Location: LCCOMB_X76_Y31_N16
\AU1|Adder|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~66_combout\ = (\A[32]~input_o\ & ((\AU1|B_sig[32]~31_combout\ & (\AU1|Adder|Add0~65\ & VCC)) # (!\AU1|B_sig[32]~31_combout\ & (!\AU1|Adder|Add0~65\)))) # (!\A[32]~input_o\ & ((\AU1|B_sig[32]~31_combout\ & (!\AU1|Adder|Add0~65\)) # 
-- (!\AU1|B_sig[32]~31_combout\ & ((\AU1|Adder|Add0~65\) # (GND)))))
-- \AU1|Adder|Add0~67\ = CARRY((\A[32]~input_o\ & (!\AU1|B_sig[32]~31_combout\ & !\AU1|Adder|Add0~65\)) # (!\A[32]~input_o\ & ((!\AU1|Adder|Add0~65\) # (!\AU1|B_sig[32]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \AU1|B_sig[32]~31_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~65\,
	combout => \AU1|Adder|Add0~66_combout\,
	cout => \AU1|Adder|Add0~67\);

-- Location: LCCOMB_X76_Y31_N18
\AU1|Adder|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~68_combout\ = ((\A[33]~input_o\ $ (\AU1|B_sig[33]~30_combout\ $ (!\AU1|Adder|Add0~67\)))) # (GND)
-- \AU1|Adder|Add0~69\ = CARRY((\A[33]~input_o\ & ((\AU1|B_sig[33]~30_combout\) # (!\AU1|Adder|Add0~67\))) # (!\A[33]~input_o\ & (\AU1|B_sig[33]~30_combout\ & !\AU1|Adder|Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \AU1|B_sig[33]~30_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~67\,
	combout => \AU1|Adder|Add0~68_combout\,
	cout => \AU1|Adder|Add0~69\);

-- Location: LCCOMB_X76_Y31_N20
\AU1|Adder|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~70_combout\ = (\AU1|B_sig[34]~29_combout\ & ((\A[34]~input_o\ & (\AU1|Adder|Add0~69\ & VCC)) # (!\A[34]~input_o\ & (!\AU1|Adder|Add0~69\)))) # (!\AU1|B_sig[34]~29_combout\ & ((\A[34]~input_o\ & (!\AU1|Adder|Add0~69\)) # (!\A[34]~input_o\ & 
-- ((\AU1|Adder|Add0~69\) # (GND)))))
-- \AU1|Adder|Add0~71\ = CARRY((\AU1|B_sig[34]~29_combout\ & (!\A[34]~input_o\ & !\AU1|Adder|Add0~69\)) # (!\AU1|B_sig[34]~29_combout\ & ((!\AU1|Adder|Add0~69\) # (!\A[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[34]~29_combout\,
	datab => \A[34]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~69\,
	combout => \AU1|Adder|Add0~70_combout\,
	cout => \AU1|Adder|Add0~71\);

-- Location: LCCOMB_X76_Y31_N22
\AU1|Adder|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~72_combout\ = ((\AU1|B_sig[35]~28_combout\ $ (\A[35]~input_o\ $ (!\AU1|Adder|Add0~71\)))) # (GND)
-- \AU1|Adder|Add0~73\ = CARRY((\AU1|B_sig[35]~28_combout\ & ((\A[35]~input_o\) # (!\AU1|Adder|Add0~71\))) # (!\AU1|B_sig[35]~28_combout\ & (\A[35]~input_o\ & !\AU1|Adder|Add0~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[35]~28_combout\,
	datab => \A[35]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~71\,
	combout => \AU1|Adder|Add0~72_combout\,
	cout => \AU1|Adder|Add0~73\);

-- Location: LCCOMB_X76_Y31_N24
\AU1|Adder|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~74_combout\ = (\A[36]~input_o\ & ((\AU1|B_sig[36]~27_combout\ & (\AU1|Adder|Add0~73\ & VCC)) # (!\AU1|B_sig[36]~27_combout\ & (!\AU1|Adder|Add0~73\)))) # (!\A[36]~input_o\ & ((\AU1|B_sig[36]~27_combout\ & (!\AU1|Adder|Add0~73\)) # 
-- (!\AU1|B_sig[36]~27_combout\ & ((\AU1|Adder|Add0~73\) # (GND)))))
-- \AU1|Adder|Add0~75\ = CARRY((\A[36]~input_o\ & (!\AU1|B_sig[36]~27_combout\ & !\AU1|Adder|Add0~73\)) # (!\A[36]~input_o\ & ((!\AU1|Adder|Add0~73\) # (!\AU1|B_sig[36]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \AU1|B_sig[36]~27_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~73\,
	combout => \AU1|Adder|Add0~74_combout\,
	cout => \AU1|Adder|Add0~75\);

-- Location: LCCOMB_X76_Y31_N26
\AU1|Adder|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~76_combout\ = ((\A[37]~input_o\ $ (\AU1|B_sig[37]~26_combout\ $ (!\AU1|Adder|Add0~75\)))) # (GND)
-- \AU1|Adder|Add0~77\ = CARRY((\A[37]~input_o\ & ((\AU1|B_sig[37]~26_combout\) # (!\AU1|Adder|Add0~75\))) # (!\A[37]~input_o\ & (\AU1|B_sig[37]~26_combout\ & !\AU1|Adder|Add0~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \AU1|B_sig[37]~26_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~75\,
	combout => \AU1|Adder|Add0~76_combout\,
	cout => \AU1|Adder|Add0~77\);

-- Location: LCCOMB_X76_Y31_N28
\AU1|Adder|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~78_combout\ = (\AU1|B_sig[38]~25_combout\ & ((\A[38]~input_o\ & (\AU1|Adder|Add0~77\ & VCC)) # (!\A[38]~input_o\ & (!\AU1|Adder|Add0~77\)))) # (!\AU1|B_sig[38]~25_combout\ & ((\A[38]~input_o\ & (!\AU1|Adder|Add0~77\)) # (!\A[38]~input_o\ & 
-- ((\AU1|Adder|Add0~77\) # (GND)))))
-- \AU1|Adder|Add0~79\ = CARRY((\AU1|B_sig[38]~25_combout\ & (!\A[38]~input_o\ & !\AU1|Adder|Add0~77\)) # (!\AU1|B_sig[38]~25_combout\ & ((!\AU1|Adder|Add0~77\) # (!\A[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[38]~25_combout\,
	datab => \A[38]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~77\,
	combout => \AU1|Adder|Add0~78_combout\,
	cout => \AU1|Adder|Add0~79\);

-- Location: LCCOMB_X76_Y31_N30
\AU1|Adder|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~80_combout\ = ((\AU1|B_sig[39]~24_combout\ $ (\A[39]~input_o\ $ (!\AU1|Adder|Add0~79\)))) # (GND)
-- \AU1|Adder|Add0~81\ = CARRY((\AU1|B_sig[39]~24_combout\ & ((\A[39]~input_o\) # (!\AU1|Adder|Add0~79\))) # (!\AU1|B_sig[39]~24_combout\ & (\A[39]~input_o\ & !\AU1|Adder|Add0~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[39]~24_combout\,
	datab => \A[39]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~79\,
	combout => \AU1|Adder|Add0~80_combout\,
	cout => \AU1|Adder|Add0~81\);

-- Location: LCCOMB_X76_Y30_N0
\AU1|Adder|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~82_combout\ = (\A[40]~input_o\ & ((\AU1|B_sig[40]~23_combout\ & (\AU1|Adder|Add0~81\ & VCC)) # (!\AU1|B_sig[40]~23_combout\ & (!\AU1|Adder|Add0~81\)))) # (!\A[40]~input_o\ & ((\AU1|B_sig[40]~23_combout\ & (!\AU1|Adder|Add0~81\)) # 
-- (!\AU1|B_sig[40]~23_combout\ & ((\AU1|Adder|Add0~81\) # (GND)))))
-- \AU1|Adder|Add0~83\ = CARRY((\A[40]~input_o\ & (!\AU1|B_sig[40]~23_combout\ & !\AU1|Adder|Add0~81\)) # (!\A[40]~input_o\ & ((!\AU1|Adder|Add0~81\) # (!\AU1|B_sig[40]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \AU1|B_sig[40]~23_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~81\,
	combout => \AU1|Adder|Add0~82_combout\,
	cout => \AU1|Adder|Add0~83\);

-- Location: LCCOMB_X76_Y30_N2
\AU1|Adder|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~84_combout\ = ((\AU1|B_sig[41]~22_combout\ $ (\A[41]~input_o\ $ (!\AU1|Adder|Add0~83\)))) # (GND)
-- \AU1|Adder|Add0~85\ = CARRY((\AU1|B_sig[41]~22_combout\ & ((\A[41]~input_o\) # (!\AU1|Adder|Add0~83\))) # (!\AU1|B_sig[41]~22_combout\ & (\A[41]~input_o\ & !\AU1|Adder|Add0~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[41]~22_combout\,
	datab => \A[41]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~83\,
	combout => \AU1|Adder|Add0~84_combout\,
	cout => \AU1|Adder|Add0~85\);

-- Location: LCCOMB_X76_Y30_N4
\AU1|Adder|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~86_combout\ = (\AU1|B_sig[42]~21_combout\ & ((\A[42]~input_o\ & (\AU1|Adder|Add0~85\ & VCC)) # (!\A[42]~input_o\ & (!\AU1|Adder|Add0~85\)))) # (!\AU1|B_sig[42]~21_combout\ & ((\A[42]~input_o\ & (!\AU1|Adder|Add0~85\)) # (!\A[42]~input_o\ & 
-- ((\AU1|Adder|Add0~85\) # (GND)))))
-- \AU1|Adder|Add0~87\ = CARRY((\AU1|B_sig[42]~21_combout\ & (!\A[42]~input_o\ & !\AU1|Adder|Add0~85\)) # (!\AU1|B_sig[42]~21_combout\ & ((!\AU1|Adder|Add0~85\) # (!\A[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[42]~21_combout\,
	datab => \A[42]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~85\,
	combout => \AU1|Adder|Add0~86_combout\,
	cout => \AU1|Adder|Add0~87\);

-- Location: LCCOMB_X76_Y30_N6
\AU1|Adder|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~88_combout\ = ((\AU1|B_sig[43]~20_combout\ $ (\A[43]~input_o\ $ (!\AU1|Adder|Add0~87\)))) # (GND)
-- \AU1|Adder|Add0~89\ = CARRY((\AU1|B_sig[43]~20_combout\ & ((\A[43]~input_o\) # (!\AU1|Adder|Add0~87\))) # (!\AU1|B_sig[43]~20_combout\ & (\A[43]~input_o\ & !\AU1|Adder|Add0~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[43]~20_combout\,
	datab => \A[43]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~87\,
	combout => \AU1|Adder|Add0~88_combout\,
	cout => \AU1|Adder|Add0~89\);

-- Location: LCCOMB_X76_Y30_N8
\AU1|Adder|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~90_combout\ = (\A[44]~input_o\ & ((\AU1|B_sig[44]~19_combout\ & (\AU1|Adder|Add0~89\ & VCC)) # (!\AU1|B_sig[44]~19_combout\ & (!\AU1|Adder|Add0~89\)))) # (!\A[44]~input_o\ & ((\AU1|B_sig[44]~19_combout\ & (!\AU1|Adder|Add0~89\)) # 
-- (!\AU1|B_sig[44]~19_combout\ & ((\AU1|Adder|Add0~89\) # (GND)))))
-- \AU1|Adder|Add0~91\ = CARRY((\A[44]~input_o\ & (!\AU1|B_sig[44]~19_combout\ & !\AU1|Adder|Add0~89\)) # (!\A[44]~input_o\ & ((!\AU1|Adder|Add0~89\) # (!\AU1|B_sig[44]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \AU1|B_sig[44]~19_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~89\,
	combout => \AU1|Adder|Add0~90_combout\,
	cout => \AU1|Adder|Add0~91\);

-- Location: LCCOMB_X76_Y30_N10
\AU1|Adder|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~92_combout\ = ((\A[45]~input_o\ $ (\AU1|B_sig[45]~18_combout\ $ (!\AU1|Adder|Add0~91\)))) # (GND)
-- \AU1|Adder|Add0~93\ = CARRY((\A[45]~input_o\ & ((\AU1|B_sig[45]~18_combout\) # (!\AU1|Adder|Add0~91\))) # (!\A[45]~input_o\ & (\AU1|B_sig[45]~18_combout\ & !\AU1|Adder|Add0~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \AU1|B_sig[45]~18_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~91\,
	combout => \AU1|Adder|Add0~92_combout\,
	cout => \AU1|Adder|Add0~93\);

-- Location: LCCOMB_X76_Y30_N12
\AU1|Adder|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~94_combout\ = (\AU1|B_sig[46]~17_combout\ & ((\A[46]~input_o\ & (\AU1|Adder|Add0~93\ & VCC)) # (!\A[46]~input_o\ & (!\AU1|Adder|Add0~93\)))) # (!\AU1|B_sig[46]~17_combout\ & ((\A[46]~input_o\ & (!\AU1|Adder|Add0~93\)) # (!\A[46]~input_o\ & 
-- ((\AU1|Adder|Add0~93\) # (GND)))))
-- \AU1|Adder|Add0~95\ = CARRY((\AU1|B_sig[46]~17_combout\ & (!\A[46]~input_o\ & !\AU1|Adder|Add0~93\)) # (!\AU1|B_sig[46]~17_combout\ & ((!\AU1|Adder|Add0~93\) # (!\A[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[46]~17_combout\,
	datab => \A[46]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~93\,
	combout => \AU1|Adder|Add0~94_combout\,
	cout => \AU1|Adder|Add0~95\);

-- Location: LCCOMB_X76_Y30_N14
\AU1|Adder|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~96_combout\ = ((\AU1|B_sig[47]~16_combout\ $ (\A[47]~input_o\ $ (!\AU1|Adder|Add0~95\)))) # (GND)
-- \AU1|Adder|Add0~97\ = CARRY((\AU1|B_sig[47]~16_combout\ & ((\A[47]~input_o\) # (!\AU1|Adder|Add0~95\))) # (!\AU1|B_sig[47]~16_combout\ & (\A[47]~input_o\ & !\AU1|Adder|Add0~95\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[47]~16_combout\,
	datab => \A[47]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~95\,
	combout => \AU1|Adder|Add0~96_combout\,
	cout => \AU1|Adder|Add0~97\);

-- Location: LCCOMB_X76_Y30_N16
\AU1|Adder|Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~98_combout\ = (\AU1|B_sig[48]~15_combout\ & ((\A[48]~input_o\ & (\AU1|Adder|Add0~97\ & VCC)) # (!\A[48]~input_o\ & (!\AU1|Adder|Add0~97\)))) # (!\AU1|B_sig[48]~15_combout\ & ((\A[48]~input_o\ & (!\AU1|Adder|Add0~97\)) # (!\A[48]~input_o\ & 
-- ((\AU1|Adder|Add0~97\) # (GND)))))
-- \AU1|Adder|Add0~99\ = CARRY((\AU1|B_sig[48]~15_combout\ & (!\A[48]~input_o\ & !\AU1|Adder|Add0~97\)) # (!\AU1|B_sig[48]~15_combout\ & ((!\AU1|Adder|Add0~97\) # (!\A[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[48]~15_combout\,
	datab => \A[48]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~97\,
	combout => \AU1|Adder|Add0~98_combout\,
	cout => \AU1|Adder|Add0~99\);

-- Location: LCCOMB_X76_Y30_N18
\AU1|Adder|Add0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~100_combout\ = ((\A[49]~input_o\ $ (\AU1|B_sig[49]~14_combout\ $ (!\AU1|Adder|Add0~99\)))) # (GND)
-- \AU1|Adder|Add0~101\ = CARRY((\A[49]~input_o\ & ((\AU1|B_sig[49]~14_combout\) # (!\AU1|Adder|Add0~99\))) # (!\A[49]~input_o\ & (\AU1|B_sig[49]~14_combout\ & !\AU1|Adder|Add0~99\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \AU1|B_sig[49]~14_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~99\,
	combout => \AU1|Adder|Add0~100_combout\,
	cout => \AU1|Adder|Add0~101\);

-- Location: LCCOMB_X76_Y30_N20
\AU1|Adder|Add0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~102_combout\ = (\A[50]~input_o\ & ((\AU1|B_sig[50]~13_combout\ & (\AU1|Adder|Add0~101\ & VCC)) # (!\AU1|B_sig[50]~13_combout\ & (!\AU1|Adder|Add0~101\)))) # (!\A[50]~input_o\ & ((\AU1|B_sig[50]~13_combout\ & (!\AU1|Adder|Add0~101\)) # 
-- (!\AU1|B_sig[50]~13_combout\ & ((\AU1|Adder|Add0~101\) # (GND)))))
-- \AU1|Adder|Add0~103\ = CARRY((\A[50]~input_o\ & (!\AU1|B_sig[50]~13_combout\ & !\AU1|Adder|Add0~101\)) # (!\A[50]~input_o\ & ((!\AU1|Adder|Add0~101\) # (!\AU1|B_sig[50]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \AU1|B_sig[50]~13_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~101\,
	combout => \AU1|Adder|Add0~102_combout\,
	cout => \AU1|Adder|Add0~103\);

-- Location: LCCOMB_X76_Y30_N22
\AU1|Adder|Add0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~104_combout\ = ((\A[51]~input_o\ $ (\AU1|B_sig[51]~12_combout\ $ (!\AU1|Adder|Add0~103\)))) # (GND)
-- \AU1|Adder|Add0~105\ = CARRY((\A[51]~input_o\ & ((\AU1|B_sig[51]~12_combout\) # (!\AU1|Adder|Add0~103\))) # (!\A[51]~input_o\ & (\AU1|B_sig[51]~12_combout\ & !\AU1|Adder|Add0~103\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \AU1|B_sig[51]~12_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~103\,
	combout => \AU1|Adder|Add0~104_combout\,
	cout => \AU1|Adder|Add0~105\);

-- Location: LCCOMB_X76_Y30_N24
\AU1|Adder|Add0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~106_combout\ = (\AU1|B_sig[52]~11_combout\ & ((\A[52]~input_o\ & (\AU1|Adder|Add0~105\ & VCC)) # (!\A[52]~input_o\ & (!\AU1|Adder|Add0~105\)))) # (!\AU1|B_sig[52]~11_combout\ & ((\A[52]~input_o\ & (!\AU1|Adder|Add0~105\)) # 
-- (!\A[52]~input_o\ & ((\AU1|Adder|Add0~105\) # (GND)))))
-- \AU1|Adder|Add0~107\ = CARRY((\AU1|B_sig[52]~11_combout\ & (!\A[52]~input_o\ & !\AU1|Adder|Add0~105\)) # (!\AU1|B_sig[52]~11_combout\ & ((!\AU1|Adder|Add0~105\) # (!\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[52]~11_combout\,
	datab => \A[52]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~105\,
	combout => \AU1|Adder|Add0~106_combout\,
	cout => \AU1|Adder|Add0~107\);

-- Location: LCCOMB_X76_Y30_N26
\AU1|Adder|Add0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~108_combout\ = ((\A[53]~input_o\ $ (\AU1|B_sig[53]~10_combout\ $ (!\AU1|Adder|Add0~107\)))) # (GND)
-- \AU1|Adder|Add0~109\ = CARRY((\A[53]~input_o\ & ((\AU1|B_sig[53]~10_combout\) # (!\AU1|Adder|Add0~107\))) # (!\A[53]~input_o\ & (\AU1|B_sig[53]~10_combout\ & !\AU1|Adder|Add0~107\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \AU1|B_sig[53]~10_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~107\,
	combout => \AU1|Adder|Add0~108_combout\,
	cout => \AU1|Adder|Add0~109\);

-- Location: LCCOMB_X76_Y30_N28
\AU1|Adder|Add0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~110_combout\ = (\A[54]~input_o\ & ((\AU1|B_sig[54]~9_combout\ & (\AU1|Adder|Add0~109\ & VCC)) # (!\AU1|B_sig[54]~9_combout\ & (!\AU1|Adder|Add0~109\)))) # (!\A[54]~input_o\ & ((\AU1|B_sig[54]~9_combout\ & (!\AU1|Adder|Add0~109\)) # 
-- (!\AU1|B_sig[54]~9_combout\ & ((\AU1|Adder|Add0~109\) # (GND)))))
-- \AU1|Adder|Add0~111\ = CARRY((\A[54]~input_o\ & (!\AU1|B_sig[54]~9_combout\ & !\AU1|Adder|Add0~109\)) # (!\A[54]~input_o\ & ((!\AU1|Adder|Add0~109\) # (!\AU1|B_sig[54]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \AU1|B_sig[54]~9_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~109\,
	combout => \AU1|Adder|Add0~110_combout\,
	cout => \AU1|Adder|Add0~111\);

-- Location: LCCOMB_X76_Y30_N30
\AU1|Adder|Add0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~112_combout\ = ((\A[55]~input_o\ $ (\AU1|B_sig[55]~8_combout\ $ (!\AU1|Adder|Add0~111\)))) # (GND)
-- \AU1|Adder|Add0~113\ = CARRY((\A[55]~input_o\ & ((\AU1|B_sig[55]~8_combout\) # (!\AU1|Adder|Add0~111\))) # (!\A[55]~input_o\ & (\AU1|B_sig[55]~8_combout\ & !\AU1|Adder|Add0~111\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \AU1|B_sig[55]~8_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~111\,
	combout => \AU1|Adder|Add0~112_combout\,
	cout => \AU1|Adder|Add0~113\);

-- Location: LCCOMB_X76_Y29_N0
\AU1|Adder|Add0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~114_combout\ = (\A[56]~input_o\ & ((\AU1|B_sig[56]~7_combout\ & (\AU1|Adder|Add0~113\ & VCC)) # (!\AU1|B_sig[56]~7_combout\ & (!\AU1|Adder|Add0~113\)))) # (!\A[56]~input_o\ & ((\AU1|B_sig[56]~7_combout\ & (!\AU1|Adder|Add0~113\)) # 
-- (!\AU1|B_sig[56]~7_combout\ & ((\AU1|Adder|Add0~113\) # (GND)))))
-- \AU1|Adder|Add0~115\ = CARRY((\A[56]~input_o\ & (!\AU1|B_sig[56]~7_combout\ & !\AU1|Adder|Add0~113\)) # (!\A[56]~input_o\ & ((!\AU1|Adder|Add0~113\) # (!\AU1|B_sig[56]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \AU1|B_sig[56]~7_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~113\,
	combout => \AU1|Adder|Add0~114_combout\,
	cout => \AU1|Adder|Add0~115\);

-- Location: LCCOMB_X76_Y29_N2
\AU1|Adder|Add0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~116_combout\ = ((\AU1|B_sig[57]~6_combout\ $ (\A[57]~input_o\ $ (!\AU1|Adder|Add0~115\)))) # (GND)
-- \AU1|Adder|Add0~117\ = CARRY((\AU1|B_sig[57]~6_combout\ & ((\A[57]~input_o\) # (!\AU1|Adder|Add0~115\))) # (!\AU1|B_sig[57]~6_combout\ & (\A[57]~input_o\ & !\AU1|Adder|Add0~115\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[57]~6_combout\,
	datab => \A[57]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~115\,
	combout => \AU1|Adder|Add0~116_combout\,
	cout => \AU1|Adder|Add0~117\);

-- Location: LCCOMB_X76_Y29_N4
\AU1|Adder|Add0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~118_combout\ = (\AU1|B_sig[58]~5_combout\ & ((\A[58]~input_o\ & (\AU1|Adder|Add0~117\ & VCC)) # (!\A[58]~input_o\ & (!\AU1|Adder|Add0~117\)))) # (!\AU1|B_sig[58]~5_combout\ & ((\A[58]~input_o\ & (!\AU1|Adder|Add0~117\)) # (!\A[58]~input_o\ 
-- & ((\AU1|Adder|Add0~117\) # (GND)))))
-- \AU1|Adder|Add0~119\ = CARRY((\AU1|B_sig[58]~5_combout\ & (!\A[58]~input_o\ & !\AU1|Adder|Add0~117\)) # (!\AU1|B_sig[58]~5_combout\ & ((!\AU1|Adder|Add0~117\) # (!\A[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[58]~5_combout\,
	datab => \A[58]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~117\,
	combout => \AU1|Adder|Add0~118_combout\,
	cout => \AU1|Adder|Add0~119\);

-- Location: LCCOMB_X76_Y29_N6
\AU1|Adder|Add0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~120_combout\ = ((\A[59]~input_o\ $ (\AU1|B_sig[59]~4_combout\ $ (!\AU1|Adder|Add0~119\)))) # (GND)
-- \AU1|Adder|Add0~121\ = CARRY((\A[59]~input_o\ & ((\AU1|B_sig[59]~4_combout\) # (!\AU1|Adder|Add0~119\))) # (!\A[59]~input_o\ & (\AU1|B_sig[59]~4_combout\ & !\AU1|Adder|Add0~119\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \AU1|B_sig[59]~4_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~119\,
	combout => \AU1|Adder|Add0~120_combout\,
	cout => \AU1|Adder|Add0~121\);

-- Location: LCCOMB_X76_Y29_N8
\AU1|Adder|Add0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~122_combout\ = (\AU1|B_sig[60]~3_combout\ & ((\A[60]~input_o\ & (\AU1|Adder|Add0~121\ & VCC)) # (!\A[60]~input_o\ & (!\AU1|Adder|Add0~121\)))) # (!\AU1|B_sig[60]~3_combout\ & ((\A[60]~input_o\ & (!\AU1|Adder|Add0~121\)) # (!\A[60]~input_o\ 
-- & ((\AU1|Adder|Add0~121\) # (GND)))))
-- \AU1|Adder|Add0~123\ = CARRY((\AU1|B_sig[60]~3_combout\ & (!\A[60]~input_o\ & !\AU1|Adder|Add0~121\)) # (!\AU1|B_sig[60]~3_combout\ & ((!\AU1|Adder|Add0~121\) # (!\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[60]~3_combout\,
	datab => \A[60]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~121\,
	combout => \AU1|Adder|Add0~122_combout\,
	cout => \AU1|Adder|Add0~123\);

-- Location: LCCOMB_X76_Y29_N10
\AU1|Adder|Add0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~124_combout\ = ((\A[61]~input_o\ $ (\AU1|B_sig[61]~2_combout\ $ (!\AU1|Adder|Add0~123\)))) # (GND)
-- \AU1|Adder|Add0~125\ = CARRY((\A[61]~input_o\ & ((\AU1|B_sig[61]~2_combout\) # (!\AU1|Adder|Add0~123\))) # (!\A[61]~input_o\ & (\AU1|B_sig[61]~2_combout\ & !\AU1|Adder|Add0~123\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \AU1|B_sig[61]~2_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~123\,
	combout => \AU1|Adder|Add0~124_combout\,
	cout => \AU1|Adder|Add0~125\);

-- Location: LCCOMB_X76_Y29_N12
\AU1|Adder|Add0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~126_combout\ = (\AU1|B_sig[62]~1_combout\ & ((\A[62]~input_o\ & (\AU1|Adder|Add0~125\ & VCC)) # (!\A[62]~input_o\ & (!\AU1|Adder|Add0~125\)))) # (!\AU1|B_sig[62]~1_combout\ & ((\A[62]~input_o\ & (!\AU1|Adder|Add0~125\)) # (!\A[62]~input_o\ 
-- & ((\AU1|Adder|Add0~125\) # (GND)))))
-- \AU1|Adder|Add0~127\ = CARRY((\AU1|B_sig[62]~1_combout\ & (!\A[62]~input_o\ & !\AU1|Adder|Add0~125\)) # (!\AU1|B_sig[62]~1_combout\ & ((!\AU1|Adder|Add0~125\) # (!\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|B_sig[62]~1_combout\,
	datab => \A[62]~input_o\,
	datad => VCC,
	cin => \AU1|Adder|Add0~125\,
	combout => \AU1|Adder|Add0~126_combout\,
	cout => \AU1|Adder|Add0~127\);

-- Location: LCCOMB_X76_Y29_N14
\AU1|Adder|Add0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~128_combout\ = ((\A[63]~input_o\ $ (\AU1|B_sig[63]~0_combout\ $ (!\AU1|Adder|Add0~127\)))) # (GND)
-- \AU1|Adder|Add0~129\ = CARRY((\A[63]~input_o\ & ((\AU1|B_sig[63]~0_combout\) # (!\AU1|Adder|Add0~127\))) # (!\A[63]~input_o\ & (\AU1|B_sig[63]~0_combout\ & !\AU1|Adder|Add0~127\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \AU1|B_sig[63]~0_combout\,
	datad => VCC,
	cin => \AU1|Adder|Add0~127\,
	combout => \AU1|Adder|Add0~128_combout\,
	cout => \AU1|Adder|Add0~129\);

-- Location: LCCOMB_X76_Y29_N16
\AU1|Adder|Add0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|Adder|Add0~130_combout\ = \AU1|Adder|Add0~129\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \AU1|Adder|Add0~129\,
	combout => \AU1|Adder|Add0~130_combout\);

-- Location: LCCOMB_X73_Y29_N30
\AU1|AltB~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|AltB~2_combout\ = \AddnSub~input_o\ $ (\A[63]~input_o\ $ (\AU1|Adder|Add0~130_combout\ $ (\B[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[63]~input_o\,
	datac => \AU1|Adder|Add0~130_combout\,
	datad => \B[63]~input_o\,
	combout => \AU1|AltB~2_combout\);

-- Location: IOIBUF_X115_Y40_N1
\FuncClass[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: IOIBUF_X115_Y26_N15
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LCCOMB_X72_Y30_N10
\SU1|SRL64|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Equal8~0_combout\ = (\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SU1|SRL64|Equal8~0_combout\);

-- Location: LCCOMB_X75_Y33_N6
\SU1|ShiftCount[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|ShiftCount\(5) = (!\ExtWord~input_o\ & \B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	combout => \SU1|ShiftCount\(5));

-- Location: LCCOMB_X76_Y37_N28
\SU1|SRL64|Stage3_sig~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~35_combout\ = (\B[4]~input_o\ & (\A[58]~input_o\ & (\SU1|ShiftCount\(5)))) # (!\B[4]~input_o\ & ((\SU1|ShiftCount\(5) & ((\A[42]~input_o\))) # (!\SU1|ShiftCount\(5) & (\A[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[58]~input_o\,
	datac => \SU1|ShiftCount\(5),
	datad => \A[42]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~35_combout\);

-- Location: LCCOMB_X76_Y37_N14
\SU1|SRL64|Stage3_sig~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~36_combout\ = (\SU1|SRL64|Stage3_sig~35_combout\) # ((\SU1|SRL64|Equal8~0_combout\ & \A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Equal8~0_combout\,
	datac => \A[26]~input_o\,
	datad => \SU1|SRL64|Stage3_sig~35_combout\,
	combout => \SU1|SRL64|Stage3_sig~36_combout\);

-- Location: LCCOMB_X70_Y34_N18
\SU1|SRL64|Stage3_sig~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~33_combout\ = (\SU1|ShiftCount\(5) & ((\B[4]~input_o\ & (\A[59]~input_o\)) # (!\B[4]~input_o\ & ((\A[43]~input_o\))))) # (!\SU1|ShiftCount\(5) & (\A[59]~input_o\ & (!\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|ShiftCount\(5),
	datab => \A[59]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[43]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~33_combout\);

-- Location: LCCOMB_X70_Y34_N28
\SU1|SRL64|Stage3_sig~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~34_combout\ = (\SU1|SRL64|Stage3_sig~33_combout\) # ((\SU1|SRL64|Equal8~0_combout\ & \A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Equal8~0_combout\,
	datac => \A[27]~input_o\,
	datad => \SU1|SRL64|Stage3_sig~33_combout\,
	combout => \SU1|SRL64|Stage3_sig~34_combout\);

-- Location: LCCOMB_X75_Y36_N4
\SU1|SRL64|Stage3_sig~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~37_combout\ = (\B[2]~input_o\ & (((\B[0]~input_o\)))) # (!\B[2]~input_o\ & ((\B[0]~input_o\ & ((\SU1|SRL64|Stage3_sig~34_combout\))) # (!\B[0]~input_o\ & (\SU1|SRL64|Stage3_sig~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SRL64|Stage3_sig~36_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage3_sig~34_combout\,
	combout => \SU1|SRL64|Stage3_sig~37_combout\);

-- Location: LCCOMB_X75_Y36_N8
\SU1|SRL64|Stage3_sig~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~31_combout\ = (\B[4]~input_o\ & (\SU1|ShiftCount\(5) & (\A[62]~input_o\))) # (!\B[4]~input_o\ & ((\SU1|ShiftCount\(5) & ((\A[46]~input_o\))) # (!\SU1|ShiftCount\(5) & (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \SU1|ShiftCount\(5),
	datac => \A[62]~input_o\,
	datad => \A[46]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~31_combout\);

-- Location: LCCOMB_X75_Y36_N26
\SU1|SRL64|Stage3_sig~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~32_combout\ = (\SU1|SRL64|Stage3_sig~31_combout\) # ((\A[30]~input_o\ & \SU1|SRL64|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[30]~input_o\,
	datac => \SU1|SRL64|Stage3_sig~31_combout\,
	datad => \SU1|SRL64|Equal8~0_combout\,
	combout => \SU1|SRL64|Stage3_sig~32_combout\);

-- Location: LCCOMB_X75_Y36_N22
\SU1|SRL64|Stage3_sig~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~38_combout\ = (\SU1|ShiftCount\(5) & ((\B[4]~input_o\ & (\A[63]~input_o\)) # (!\B[4]~input_o\ & ((\A[47]~input_o\))))) # (!\SU1|ShiftCount\(5) & (\A[63]~input_o\ & (!\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \SU1|ShiftCount\(5),
	datac => \B[4]~input_o\,
	datad => \A[47]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~38_combout\);

-- Location: LCCOMB_X75_Y36_N16
\SU1|SRL64|Stage3_sig~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~39_combout\ = (\SU1|SRL64|Stage3_sig~38_combout\) # ((\SU1|SRL64|Equal8~0_combout\ & \A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage3_sig~38_combout\,
	datab => \SU1|SRL64|Equal8~0_combout\,
	datac => \A[31]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~39_combout\);

-- Location: LCCOMB_X75_Y36_N2
\SU1|SRL64|Stage3_sig~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~40_combout\ = (\B[2]~input_o\ & ((\SU1|SRL64|Stage3_sig~37_combout\ & ((\SU1|SRL64|Stage3_sig~39_combout\))) # (!\SU1|SRL64|Stage3_sig~37_combout\ & (\SU1|SRL64|Stage3_sig~32_combout\)))) # (!\B[2]~input_o\ & 
-- (\SU1|SRL64|Stage3_sig~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SRL64|Stage3_sig~37_combout\,
	datac => \SU1|SRL64|Stage3_sig~32_combout\,
	datad => \SU1|SRL64|Stage3_sig~39_combout\,
	combout => \SU1|SRL64|Stage3_sig~40_combout\);

-- Location: LCCOMB_X70_Y37_N16
\SU1|SRL64|Stage3_sig~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~10_combout\ = (\SU1|ShiftCount\(5) & ((\B[4]~input_o\ & ((\A[60]~input_o\))) # (!\B[4]~input_o\ & (\A[44]~input_o\)))) # (!\SU1|ShiftCount\(5) & (((\A[60]~input_o\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|ShiftCount\(5),
	datab => \A[44]~input_o\,
	datac => \A[60]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~10_combout\);

-- Location: LCCOMB_X70_Y37_N2
\SU1|SRL64|Stage3_sig~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~11_combout\ = (\SU1|SRL64|Stage3_sig~10_combout\) # ((\SU1|SRL64|Equal8~0_combout\ & \A[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Equal8~0_combout\,
	datab => \A[28]~input_o\,
	datad => \SU1|SRL64|Stage3_sig~10_combout\,
	combout => \SU1|SRL64|Stage3_sig~11_combout\);

-- Location: LCCOMB_X67_Y36_N28
\SU1|SRL64|Stage3_sig~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~17_combout\ = (\SU1|ShiftCount\(5) & ((\B[4]~input_o\ & (\A[61]~input_o\)) # (!\B[4]~input_o\ & ((\A[45]~input_o\))))) # (!\SU1|ShiftCount\(5) & (!\B[4]~input_o\ & (\A[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|ShiftCount\(5),
	datab => \B[4]~input_o\,
	datac => \A[61]~input_o\,
	datad => \A[45]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~17_combout\);

-- Location: LCCOMB_X67_Y36_N30
\SU1|SRL64|Stage3_sig~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~18_combout\ = (\SU1|SRL64|Stage3_sig~17_combout\) # ((\SU1|SRL64|Equal8~0_combout\ & \A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Equal8~0_combout\,
	datac => \A[29]~input_o\,
	datad => \SU1|SRL64|Stage3_sig~17_combout\,
	combout => \SU1|SRL64|Stage3_sig~18_combout\);

-- Location: LCCOMB_X75_Y34_N26
\SU1|SRL64|Stage3_sig~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~14_combout\ = (\B[4]~input_o\ & (\A[56]~input_o\ & (\SU1|ShiftCount\(5)))) # (!\B[4]~input_o\ & ((\SU1|ShiftCount\(5) & ((\A[40]~input_o\))) # (!\SU1|ShiftCount\(5) & (\A[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \B[4]~input_o\,
	datac => \SU1|ShiftCount\(5),
	datad => \A[40]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~14_combout\);

-- Location: LCCOMB_X75_Y34_N12
\SU1|SRL64|Stage3_sig~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~15_combout\ = (\SU1|SRL64|Stage3_sig~14_combout\) # ((\SU1|SRL64|Equal8~0_combout\ & \A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage3_sig~14_combout\,
	datab => \SU1|SRL64|Equal8~0_combout\,
	datac => \A[24]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~15_combout\);

-- Location: LCCOMB_X72_Y33_N8
\SU1|SRL64|Stage3_sig~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~12_combout\ = (\B[4]~input_o\ & (((\A[57]~input_o\ & \SU1|ShiftCount\(5))))) # (!\B[4]~input_o\ & ((\SU1|ShiftCount\(5) & (\A[41]~input_o\)) # (!\SU1|ShiftCount\(5) & ((\A[57]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \A[57]~input_o\,
	datac => \B[4]~input_o\,
	datad => \SU1|ShiftCount\(5),
	combout => \SU1|SRL64|Stage3_sig~12_combout\);

-- Location: LCCOMB_X75_Y34_N24
\SU1|SRL64|Stage3_sig~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~13_combout\ = (\SU1|SRL64|Stage3_sig~12_combout\) # ((\A[25]~input_o\ & \SU1|SRL64|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[25]~input_o\,
	datac => \SU1|SRL64|Equal8~0_combout\,
	datad => \SU1|SRL64|Stage3_sig~12_combout\,
	combout => \SU1|SRL64|Stage3_sig~13_combout\);

-- Location: LCCOMB_X75_Y34_N30
\SU1|SRL64|Stage3_sig~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~16_combout\ = (\B[2]~input_o\ & (((\B[0]~input_o\)))) # (!\B[2]~input_o\ & ((\B[0]~input_o\ & ((\SU1|SRL64|Stage3_sig~13_combout\))) # (!\B[0]~input_o\ & (\SU1|SRL64|Stage3_sig~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage3_sig~15_combout\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage3_sig~13_combout\,
	combout => \SU1|SRL64|Stage3_sig~16_combout\);

-- Location: LCCOMB_X75_Y36_N10
\SU1|SRL64|Stage3_sig~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~19_combout\ = (\B[2]~input_o\ & ((\SU1|SRL64|Stage3_sig~16_combout\ & ((\SU1|SRL64|Stage3_sig~18_combout\))) # (!\SU1|SRL64|Stage3_sig~16_combout\ & (\SU1|SRL64|Stage3_sig~11_combout\)))) # (!\B[2]~input_o\ & 
-- (((\SU1|SRL64|Stage3_sig~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SRL64|Stage3_sig~11_combout\,
	datac => \SU1|SRL64|Stage3_sig~18_combout\,
	datad => \SU1|SRL64|Stage3_sig~16_combout\,
	combout => \SU1|SRL64|Stage3_sig~19_combout\);

-- Location: LCCOMB_X75_Y36_N12
\SU1|SRL64|Stage3_sig~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~27_combout\ = (\B[4]~input_o\ & (\A[53]~input_o\ & (\SU1|ShiftCount\(5)))) # (!\B[4]~input_o\ & ((\SU1|ShiftCount\(5) & ((\A[37]~input_o\))) # (!\SU1|ShiftCount\(5) & (\A[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[53]~input_o\,
	datac => \SU1|ShiftCount\(5),
	datad => \A[37]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~27_combout\);

-- Location: LCCOMB_X75_Y36_N14
\SU1|SRL64|Stage3_sig~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~28_combout\ = (\SU1|SRL64|Stage3_sig~27_combout\) # ((\A[21]~input_o\ & \SU1|SRL64|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \SU1|SRL64|Equal8~0_combout\,
	datad => \SU1|SRL64|Stage3_sig~27_combout\,
	combout => \SU1|SRL64|Stage3_sig~28_combout\);

-- Location: LCCOMB_X75_Y33_N0
\SU1|SRL64|Stage3_sig~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~20_combout\ = (\SU1|ShiftCount\(5) & ((\B[4]~input_o\ & ((\A[52]~input_o\))) # (!\B[4]~input_o\ & (\A[36]~input_o\)))) # (!\SU1|ShiftCount\(5) & (!\B[4]~input_o\ & ((\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|ShiftCount\(5),
	datab => \B[4]~input_o\,
	datac => \A[36]~input_o\,
	datad => \A[52]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~20_combout\);

-- Location: LCCOMB_X76_Y36_N14
\SU1|SRL64|Stage3_sig~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~21_combout\ = (\SU1|SRL64|Stage3_sig~20_combout\) # ((\SU1|SRL64|Equal8~0_combout\ & \A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage3_sig~20_combout\,
	datab => \SU1|SRL64|Equal8~0_combout\,
	datac => \A[20]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~21_combout\);

-- Location: LCCOMB_X67_Y36_N0
\SU1|SRL64|Stage3_sig~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~24_combout\ = (\SU1|ShiftCount\(5) & ((\B[4]~input_o\ & ((\A[48]~input_o\))) # (!\B[4]~input_o\ & (\A[32]~input_o\)))) # (!\SU1|ShiftCount\(5) & (((\A[48]~input_o\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \A[48]~input_o\,
	datac => \SU1|ShiftCount\(5),
	datad => \B[4]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~24_combout\);

-- Location: LCCOMB_X67_Y36_N18
\SU1|SRL64|Stage3_sig~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~25_combout\ = (\SU1|SRL64|Stage3_sig~24_combout\) # ((\A[16]~input_o\ & \SU1|SRL64|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => \SU1|SRL64|Equal8~0_combout\,
	datad => \SU1|SRL64|Stage3_sig~24_combout\,
	combout => \SU1|SRL64|Stage3_sig~25_combout\);

-- Location: LCCOMB_X76_Y36_N16
\SU1|SRL64|Stage3_sig~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~22_combout\ = (\SU1|ShiftCount\(5) & ((\B[4]~input_o\ & (\A[49]~input_o\)) # (!\B[4]~input_o\ & ((\A[33]~input_o\))))) # (!\SU1|ShiftCount\(5) & (\A[49]~input_o\ & ((!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \SU1|ShiftCount\(5),
	datac => \A[33]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~22_combout\);

-- Location: LCCOMB_X76_Y36_N18
\SU1|SRL64|Stage3_sig~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~23_combout\ = (\SU1|SRL64|Stage3_sig~22_combout\) # ((\SU1|SRL64|Equal8~0_combout\ & \A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Equal8~0_combout\,
	datac => \A[17]~input_o\,
	datad => \SU1|SRL64|Stage3_sig~22_combout\,
	combout => \SU1|SRL64|Stage3_sig~23_combout\);

-- Location: LCCOMB_X76_Y36_N20
\SU1|SRL64|Stage3_sig~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~26_combout\ = (\B[2]~input_o\ & (((\B[0]~input_o\)))) # (!\B[2]~input_o\ & ((\B[0]~input_o\ & ((\SU1|SRL64|Stage3_sig~23_combout\))) # (!\B[0]~input_o\ & (\SU1|SRL64|Stage3_sig~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage3_sig~25_combout\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage3_sig~23_combout\,
	combout => \SU1|SRL64|Stage3_sig~26_combout\);

-- Location: LCCOMB_X76_Y36_N30
\SU1|SRL64|Stage3_sig~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~29_combout\ = (\B[2]~input_o\ & ((\SU1|SRL64|Stage3_sig~26_combout\ & (\SU1|SRL64|Stage3_sig~28_combout\)) # (!\SU1|SRL64|Stage3_sig~26_combout\ & ((\SU1|SRL64|Stage3_sig~21_combout\))))) # (!\B[2]~input_o\ & 
-- (((\SU1|SRL64|Stage3_sig~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage3_sig~28_combout\,
	datab => \SU1|SRL64|Stage3_sig~21_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SRL64|Stage3_sig~26_combout\,
	combout => \SU1|SRL64|Stage3_sig~29_combout\);

-- Location: LCCOMB_X76_Y36_N8
\SU1|SRL64|Stage3_sig~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~30_combout\ = (\B[1]~input_o\ & (((\B[3]~input_o\)))) # (!\B[1]~input_o\ & ((\B[3]~input_o\ & (\SU1|SRL64|Stage3_sig~19_combout\)) # (!\B[3]~input_o\ & ((\SU1|SRL64|Stage3_sig~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SU1|SRL64|Stage3_sig~19_combout\,
	datac => \SU1|SRL64|Stage3_sig~29_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~30_combout\);

-- Location: LCCOMB_X76_Y36_N4
\SU1|SRL64|Stage3_sig~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~2_combout\ = (\SU1|ShiftCount\(5) & ((\B[4]~input_o\ & (\A[51]~input_o\)) # (!\B[4]~input_o\ & ((\A[35]~input_o\))))) # (!\SU1|ShiftCount\(5) & (\A[51]~input_o\ & ((!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \A[35]~input_o\,
	datac => \SU1|ShiftCount\(5),
	datad => \B[4]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~2_combout\);

-- Location: LCCOMB_X76_Y36_N22
\SU1|SRL64|Stage3_sig~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~3_combout\ = (\SU1|SRL64|Stage3_sig~2_combout\) # ((\A[19]~input_o\ & \SU1|SRL64|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[19]~input_o\,
	datac => \SU1|SRL64|Stage3_sig~2_combout\,
	datad => \SU1|SRL64|Equal8~0_combout\,
	combout => \SU1|SRL64|Stage3_sig~3_combout\);

-- Location: LCCOMB_X75_Y36_N24
\SU1|SRL64|Stage3_sig~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~4_combout\ = (\B[4]~input_o\ & (\SU1|ShiftCount\(5) & (\A[50]~input_o\))) # (!\B[4]~input_o\ & ((\SU1|ShiftCount\(5) & ((\A[34]~input_o\))) # (!\SU1|ShiftCount\(5) & (\A[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \SU1|ShiftCount\(5),
	datac => \A[50]~input_o\,
	datad => \A[34]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~4_combout\);

-- Location: LCCOMB_X76_Y36_N24
\SU1|SRL64|Stage3_sig~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~5_combout\ = (\SU1|SRL64|Stage3_sig~4_combout\) # ((\SU1|SRL64|Equal8~0_combout\ & \A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Equal8~0_combout\,
	datac => \A[18]~input_o\,
	datad => \SU1|SRL64|Stage3_sig~4_combout\,
	combout => \SU1|SRL64|Stage3_sig~5_combout\);

-- Location: LCCOMB_X76_Y36_N26
\SU1|SRL64|Stage3_sig~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~6_combout\ = (\B[2]~input_o\ & (((\B[0]~input_o\)))) # (!\B[2]~input_o\ & ((\B[0]~input_o\ & (\SU1|SRL64|Stage3_sig~3_combout\)) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage3_sig~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage3_sig~3_combout\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage3_sig~5_combout\,
	combout => \SU1|SRL64|Stage3_sig~6_combout\);

-- Location: LCCOMB_X72_Y33_N12
\SU1|SRL64|Stage3_sig~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~7_combout\ = (\SU1|ShiftCount\(5) & ((\B[4]~input_o\ & ((\A[55]~input_o\))) # (!\B[4]~input_o\ & (\A[39]~input_o\)))) # (!\SU1|ShiftCount\(5) & (((!\B[4]~input_o\ & \A[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|ShiftCount\(5),
	datab => \A[39]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[55]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~7_combout\);

-- Location: LCCOMB_X72_Y33_N6
\SU1|SRL64|Stage3_sig~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~8_combout\ = (\SU1|SRL64|Stage3_sig~7_combout\) # ((\SU1|SRL64|Equal8~0_combout\ & \A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Equal8~0_combout\,
	datab => \A[23]~input_o\,
	datad => \SU1|SRL64|Stage3_sig~7_combout\,
	combout => \SU1|SRL64|Stage3_sig~8_combout\);

-- Location: LCCOMB_X76_Y36_N0
\SU1|SRL64|Stage3_sig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~0_combout\ = (\SU1|ShiftCount\(5) & ((\B[4]~input_o\ & ((\A[54]~input_o\))) # (!\B[4]~input_o\ & (\A[38]~input_o\)))) # (!\SU1|ShiftCount\(5) & (((\A[54]~input_o\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \A[54]~input_o\,
	datac => \SU1|ShiftCount\(5),
	datad => \B[4]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~0_combout\);

-- Location: LCCOMB_X76_Y36_N10
\SU1|SRL64|Stage3_sig~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~1_combout\ = (\SU1|SRL64|Stage3_sig~0_combout\) # ((\SU1|SRL64|Equal8~0_combout\ & \A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Equal8~0_combout\,
	datac => \A[22]~input_o\,
	datad => \SU1|SRL64|Stage3_sig~0_combout\,
	combout => \SU1|SRL64|Stage3_sig~1_combout\);

-- Location: LCCOMB_X76_Y36_N12
\SU1|SRL64|Stage3_sig~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~9_combout\ = (\SU1|SRL64|Stage3_sig~6_combout\ & ((\SU1|SRL64|Stage3_sig~8_combout\) # ((!\B[2]~input_o\)))) # (!\SU1|SRL64|Stage3_sig~6_combout\ & (((\B[2]~input_o\ & \SU1|SRL64|Stage3_sig~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage3_sig~6_combout\,
	datab => \SU1|SRL64|Stage3_sig~8_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SRL64|Stage3_sig~1_combout\,
	combout => \SU1|SRL64|Stage3_sig~9_combout\);

-- Location: LCCOMB_X76_Y36_N2
\SU1|SRL64|Stage3_sig~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~41_combout\ = (\SU1|SRL64|Stage3_sig~30_combout\ & ((\SU1|SRL64|Stage3_sig~40_combout\) # ((!\B[1]~input_o\)))) # (!\SU1|SRL64|Stage3_sig~30_combout\ & (((\B[1]~input_o\ & \SU1|SRL64|Stage3_sig~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage3_sig~40_combout\,
	datab => \SU1|SRL64|Stage3_sig~30_combout\,
	datac => \B[1]~input_o\,
	datad => \SU1|SRL64|Stage3_sig~9_combout\,
	combout => \SU1|SRL64|Stage3_sig~41_combout\);

-- Location: IOIBUF_X56_Y0_N22
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LCCOMB_X72_Y30_N4
\SU1|Y[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|Y[0]~5_combout\ = (\ShiftFN[1]~input_o\ & (!\ExtWord~input_o\ & ((\B[5]~input_o\) # (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SU1|Y[0]~5_combout\);

-- Location: IOIBUF_X56_Y0_N8
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LCCOMB_X68_Y35_N4
\SU1|X_sig[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|X_sig[0]~1_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[32]~input_o\)) # (!\ExtWord~input_o\ & ((\A[0]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SU1|X_sig[0]~1_combout\);

-- Location: LCCOMB_X72_Y32_N0
\SU1|SRA64|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Equal2~0_combout\ = (\B[0]~input_o\) # (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	combout => \SU1|SRA64|Equal2~0_combout\);

-- Location: LCCOMB_X72_Y32_N10
\SU1|SLL64|Y[32]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[32]~59_combout\ = (\SU1|X_sig[0]~1_combout\ & (!\SU1|SRA64|Equal2~0_combout\ & (!\B[2]~input_o\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|X_sig[0]~1_combout\,
	datab => \SU1|SRA64|Equal2~0_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SU1|SLL64|Y[32]~59_combout\);

-- Location: LCCOMB_X72_Y30_N22
\SU1|SRL64|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Equal8~1_combout\ = (\B[4]~input_o\) # ((\B[5]~input_o\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SU1|SRL64|Equal8~1_combout\);

-- Location: LCCOMB_X73_Y29_N12
\SU1|Y[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|Y[0]~6_combout\ = (\ShiftFN[0]~input_o\ & (\SU1|SLL64|Y[32]~59_combout\ & (!\SU1|SRL64|Equal8~1_combout\))) # (!\ShiftFN[0]~input_o\ & (((\AU1|Adder|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SU1|SLL64|Y[32]~59_combout\,
	datac => \SU1|SRL64|Equal8~1_combout\,
	datad => \AU1|Adder|Add0~2_combout\,
	combout => \SU1|Y[0]~6_combout\);

-- Location: LCCOMB_X73_Y29_N22
\SU1|Y[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|Y[0]~7_combout\ = (\SU1|SRL64|Stage3_sig~41_combout\ & ((\SU1|Y[0]~5_combout\) # ((!\ShiftFN[1]~input_o\ & \SU1|Y[0]~6_combout\)))) # (!\SU1|SRL64|Stage3_sig~41_combout\ & (!\ShiftFN[1]~input_o\ & ((\SU1|Y[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage3_sig~41_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \SU1|Y[0]~5_combout\,
	datad => \SU1|Y[0]~6_combout\,
	combout => \SU1|Y[0]~7_combout\);

-- Location: LCCOMB_X65_Y34_N8
\SU1|SwapWord~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SwapWord~0_combout\ = (\ShiftFN[1]~input_o\ & \ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SU1|SwapWord~0_combout\);

-- Location: LCCOMB_X75_Y33_N26
\SU1|SRL64|Stage1_sig[48]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~122_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[4]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[36]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~122_combout\);

-- Location: LCCOMB_X75_Y37_N20
\SU1|SRL64|Stage1_sig[48]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~121_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[6]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[38]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[38]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~121_combout\);

-- Location: LCCOMB_X68_Y35_N22
\SU1|SRL64|Stage1_sig[36]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[36]~123_combout\ = (\SU1|SRL64|Stage1_sig[48]~122_combout\) # (\SU1|SRL64|Stage1_sig[48]~121_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~122_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~121_combout\,
	combout => \SU1|SRL64|Stage1_sig[36]~123_combout\);

-- Location: LCCOMB_X72_Y33_N22
\SU1|SRL64|Stage1_sig[48]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~118_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[7]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[39]~input_o\,
	datad => \A[7]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~118_combout\);

-- Location: LCCOMB_X75_Y35_N28
\SU1|SRL64|Stage1_sig[48]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~119_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[5]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[37]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[5]~input_o\,
	datad => \A[37]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~119_combout\);

-- Location: LCCOMB_X67_Y35_N18
\SU1|SRL64|Stage1_sig[36]~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[36]~277_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~118_combout\) # (\SU1|SRL64|Stage1_sig[48]~119_combout\)))) # (!\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[36]~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[36]~123_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~118_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~119_combout\,
	combout => \SU1|SRL64|Stage1_sig[36]~277_combout\);

-- Location: LCCOMB_X75_Y35_N6
\SU1|SRL64|Stage1_sig[48]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~127_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[3]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[35]~input_o\,
	datac => \SU1|SwapWord~0_combout\,
	datad => \A[3]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~127_combout\);

-- Location: LCCOMB_X76_Y35_N2
\SU1|SRL64|Stage1_sig[48]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~128_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[1]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[33]~input_o\,
	datad => \A[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~128_combout\);

-- Location: LCCOMB_X68_Y35_N26
\SU1|SRL64|Stage1_sig[48]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~125_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[0]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SU1|SwapWord~0_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~125_combout\);

-- Location: LCCOMB_X68_Y35_N0
\SU1|SRL64|Stage1_sig[48]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~124_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[2]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[34]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[34]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SU1|SwapWord~0_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~124_combout\);

-- Location: LCCOMB_X68_Y35_N20
\SU1|SRL64|Stage1_sig[32]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[32]~126_combout\ = (\SU1|SRL64|Stage1_sig[48]~125_combout\) # (\SU1|SRL64|Stage1_sig[48]~124_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~125_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~124_combout\,
	combout => \SU1|SRL64|Stage1_sig[32]~126_combout\);

-- Location: LCCOMB_X67_Y35_N10
\SU1|SRL64|Stage1_sig[32]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[32]~129_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~127_combout\) # ((\SU1|SRL64|Stage1_sig[48]~128_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[32]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~127_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~128_combout\,
	datac => \SU1|SRL64|Stage1_sig[32]~126_combout\,
	datad => \B[0]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[32]~129_combout\);

-- Location: LCCOMB_X67_Y32_N18
\SU1|SRL64|Stage2_sig[32]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[32]~27_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SU1|SRL64|Stage1_sig[36]~277_combout\)) # (!\B[2]~input_o\ & ((\SU1|SRL64|Stage1_sig[32]~129_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[36]~277_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[32]~129_combout\,
	combout => \SU1|SRL64|Stage2_sig[32]~27_combout\);

-- Location: LCCOMB_X67_Y36_N24
\SU1|SRL64|Stage1_sig[48]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~109_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[14]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[46]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[14]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[46]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~109_combout\);

-- Location: LCCOMB_X70_Y37_N22
\SU1|SRL64|Stage1_sig[48]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~110_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[12]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[44]~input_o\,
	datad => \A[12]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~110_combout\);

-- Location: LCCOMB_X66_Y36_N12
\SU1|SRL64|Stage1_sig[44]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[44]~111_combout\ = (\SU1|SRL64|Stage1_sig[48]~109_combout\) # (\SU1|SRL64|Stage1_sig[48]~110_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~109_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~110_combout\,
	combout => \SU1|SRL64|Stage1_sig[44]~111_combout\);

-- Location: LCCOMB_X67_Y36_N22
\SU1|SRL64|Stage1_sig[48]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~107_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[13]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[45]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[13]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[45]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~107_combout\);

-- Location: LCCOMB_X70_Y36_N22
\SU1|SRL64|Stage1_sig[48]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~106_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[15]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[47]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[15]~input_o\,
	datad => \A[47]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~106_combout\);

-- Location: LCCOMB_X66_Y36_N2
\SU1|SRL64|Stage1_sig[44]~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[44]~276_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~107_combout\) # (\SU1|SRL64|Stage1_sig[48]~106_combout\)))) # (!\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[44]~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[44]~111_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~107_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~106_combout\,
	combout => \SU1|SRL64|Stage1_sig[44]~276_combout\);

-- Location: LCCOMB_X76_Y37_N0
\SU1|SRL64|Stage1_sig[48]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~115_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[10]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[42]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[10]~input_o\,
	datac => \A[42]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~115_combout\);

-- Location: LCCOMB_X75_Y37_N10
\SU1|SRL64|Stage1_sig[48]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~116_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[8]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[40]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[8]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~116_combout\);

-- Location: LCCOMB_X72_Y33_N20
\SU1|SRL64|Stage1_sig[48]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~113_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[9]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[41]~input_o\,
	datad => \A[9]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~113_combout\);

-- Location: LCCOMB_X70_Y34_N2
\SU1|SRL64|Stage1_sig[48]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~112_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[11]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[43]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[43]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~112_combout\);

-- Location: LCCOMB_X67_Y37_N24
\SU1|SRL64|Stage1_sig[41]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[41]~114_combout\ = (\SU1|SRL64|Stage1_sig[48]~113_combout\) # (\SU1|SRL64|Stage1_sig[48]~112_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~113_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~112_combout\,
	combout => \SU1|SRL64|Stage1_sig[41]~114_combout\);

-- Location: LCCOMB_X67_Y37_N26
\SU1|SRL64|Stage1_sig[40]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[40]~117_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[41]~114_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~115_combout\) # ((\SU1|SRL64|Stage1_sig[48]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~115_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~116_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[41]~114_combout\,
	combout => \SU1|SRL64|Stage1_sig[40]~117_combout\);

-- Location: LCCOMB_X67_Y31_N0
\SU1|SRL64|Stage2_sig[32]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[32]~26_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\SU1|SRL64|Stage1_sig[44]~276_combout\)) # (!\B[2]~input_o\ & ((\SU1|SRL64|Stage1_sig[40]~117_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[44]~276_combout\,
	datad => \SU1|SRL64|Stage1_sig[40]~117_combout\,
	combout => \SU1|SRL64|Stage2_sig[32]~26_combout\);

-- Location: LCCOMB_X65_Y34_N26
\SU1|X_sig[63]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|X_sig[63]~2_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[31]~input_o\)) # (!\ExtWord~input_o\ & ((\A[63]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[63]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SU1|X_sig[63]~2_combout\);

-- Location: LCCOMB_X74_Y29_N16
\SU1|SRA_SRL_sig[48]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[48]~4_combout\ = (\SU1|X_sig[63]~2_combout\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|X_sig[63]~2_combout\,
	datac => \ShiftFN[0]~input_o\,
	combout => \SU1|SRA_SRL_sig[48]~4_combout\);

-- Location: LCCOMB_X68_Y36_N18
\SU1|SRL64|Stage1_sig[48]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~91_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[17]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[17]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~91_combout\);

-- Location: LCCOMB_X67_Y36_N12
\SU1|SRL64|Stage1_sig[48]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~94_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[16]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[48]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[16]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~94_combout\);

-- Location: LCCOMB_X69_Y35_N8
\SU1|SRL64|Stage1_sig[48]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~93_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[18]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[50]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[18]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[50]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~93_combout\);

-- Location: LCCOMB_X66_Y36_N24
\SU1|SRL64|Stage1_sig[48]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~95_combout\ = (\SU1|SRL64|Stage1_sig[48]~94_combout\) # (\SU1|SRL64|Stage1_sig[48]~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~94_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~93_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~95_combout\);

-- Location: LCCOMB_X68_Y36_N0
\SU1|SRL64|Stage1_sig[48]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~90_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[19]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \A[19]~input_o\,
	datac => \SU1|SwapWord~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~90_combout\);

-- Location: LCCOMB_X68_Y36_N26
\SU1|SRL64|Stage1_sig[48]~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~275_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~91_combout\) # ((\SU1|SRL64|Stage1_sig[48]~90_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~91_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~95_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~90_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~275_combout\);

-- Location: LCCOMB_X70_Y34_N0
\SU1|SRL64|Stage1_sig[48]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~85_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[25]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[57]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[57]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~85_combout\);

-- Location: LCCOMB_X70_Y34_N22
\SU1|SRL64|Stage1_sig[48]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~84_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[27]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[59]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[59]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~84_combout\);

-- Location: LCCOMB_X75_Y34_N8
\SU1|SRL64|Stage1_sig[48]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~88_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[24]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[56]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[56]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~88_combout\);

-- Location: LCCOMB_X66_Y34_N16
\SU1|SRL64|Stage1_sig[48]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~87_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[26]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[58]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[26]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~87_combout\);

-- Location: LCCOMB_X67_Y34_N10
\SU1|SRL64|Stage1_sig[56]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[56]~89_combout\ = (\SU1|SRL64|Stage1_sig[48]~88_combout\) # (\SU1|SRL64|Stage1_sig[48]~87_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~88_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~87_combout\,
	combout => \SU1|SRL64|Stage1_sig[56]~89_combout\);

-- Location: LCCOMB_X67_Y34_N4
\SU1|SRL64|Stage1_sig[56]~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[56]~274_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~85_combout\) # ((\SU1|SRL64|Stage1_sig[48]~84_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[56]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[48]~85_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~84_combout\,
	datad => \SU1|SRL64|Stage1_sig[56]~89_combout\,
	combout => \SU1|SRL64|Stage1_sig[56]~274_combout\);

-- Location: LCCOMB_X68_Y30_N8
\SU1|SRL64|Stage2_sig[48]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~23_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[56]~274_combout\))) # (!\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[48]~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~275_combout\,
	datad => \SU1|SRL64|Stage1_sig[56]~274_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~23_combout\);

-- Location: LCCOMB_X65_Y34_N12
\SU1|X_sig[62]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|X_sig[62]~3_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[30]~input_o\)) # (!\ExtWord~input_o\ & ((\A[62]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \A[62]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SU1|X_sig[62]~3_combout\);

-- Location: LCCOMB_X65_Y34_N30
\SU1|SRL64|Stage1_sig[60]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[60]~96_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\SU1|X_sig[63]~2_combout\)) # (!\B[0]~input_o\ & ((\SU1|X_sig[62]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SU1|X_sig[62]~3_combout\,
	combout => \SU1|SRL64|Stage1_sig[60]~96_combout\);

-- Location: LCCOMB_X65_Y34_N16
\SU1|SRL64|Stage1_sig[48]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~97_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[29]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[61]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[29]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~97_combout\);

-- Location: LCCOMB_X70_Y37_N4
\SU1|SRL64|Stage1_sig[48]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~98_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[28]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[60]~input_o\,
	datad => \A[28]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~98_combout\);

-- Location: LCCOMB_X65_Y34_N2
\SU1|SRL64|Stage1_sig[60]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[60]~99_combout\ = (\SU1|SRL64|Stage1_sig[60]~96_combout\) # ((\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[48]~97_combout\)) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[60]~96_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~97_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~98_combout\,
	combout => \SU1|SRL64|Stage1_sig[60]~99_combout\);

-- Location: LCCOMB_X69_Y35_N20
\SU1|SRL64|Stage1_sig[48]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~104_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[21]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[53]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[21]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[53]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~104_combout\);

-- Location: LCCOMB_X72_Y33_N26
\SU1|SRL64|Stage1_sig[48]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~103_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[23]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[55]~input_o\,
	datac => \SU1|SwapWord~0_combout\,
	datad => \A[23]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~103_combout\);

-- Location: LCCOMB_X76_Y35_N16
\SU1|SRL64|Stage1_sig[48]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~100_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[22]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[54]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \B[1]~input_o\,
	datad => \A[54]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~100_combout\);

-- Location: LCCOMB_X69_Y35_N26
\SU1|SRL64|Stage1_sig[48]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~101_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[20]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[52]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[20]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~101_combout\);

-- Location: LCCOMB_X68_Y34_N16
\SU1|SRL64|Stage1_sig[52]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[52]~102_combout\ = (\SU1|SRL64|Stage1_sig[48]~100_combout\) # (\SU1|SRL64|Stage1_sig[48]~101_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~100_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~101_combout\,
	combout => \SU1|SRL64|Stage1_sig[52]~102_combout\);

-- Location: LCCOMB_X68_Y34_N10
\SU1|SRL64|Stage1_sig[52]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[52]~105_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~104_combout\) # ((\SU1|SRL64|Stage1_sig[48]~103_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[52]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~104_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~103_combout\,
	datad => \SU1|SRL64|Stage1_sig[52]~102_combout\,
	combout => \SU1|SRL64|Stage1_sig[52]~105_combout\);

-- Location: LCCOMB_X68_Y30_N18
\SU1|SRL64|Stage2_sig[48]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~24_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[60]~99_combout\)) # (!\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[52]~105_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[60]~99_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[52]~105_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~24_combout\);

-- Location: LCCOMB_X68_Y30_N4
\SU1|SRL64|Stage2_sig[48]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~25_combout\ = (\SU1|SRL64|Stage2_sig[48]~23_combout\) # (\SU1|SRL64|Stage2_sig[48]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage2_sig[48]~23_combout\,
	datad => \SU1|SRL64|Stage2_sig[48]~24_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~25_combout\);

-- Location: LCCOMB_X67_Y32_N24
\SU1|SRA_SRL_sig[32]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[32]~5_combout\ = (\SU1|SRL64|Equal8~1_combout\ & ((\SU1|SRL64|Equal8~0_combout\ & ((\SU1|SRL64|Stage2_sig[48]~25_combout\))) # (!\SU1|SRL64|Equal8~0_combout\ & (\SU1|SRA_SRL_sig[48]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Equal8~1_combout\,
	datab => \SU1|SRA_SRL_sig[48]~4_combout\,
	datac => \SU1|SRL64|Equal8~0_combout\,
	datad => \SU1|SRL64|Stage2_sig[48]~25_combout\,
	combout => \SU1|SRA_SRL_sig[32]~5_combout\);

-- Location: LCCOMB_X67_Y32_N4
\SU1|SRA_SRL_sig[32]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[32]~6_combout\ = (\SU1|SRA_SRL_sig[32]~5_combout\) # ((!\SU1|SRL64|Equal8~1_combout\ & ((\SU1|SRL64|Stage2_sig[32]~27_combout\) # (\SU1|SRL64|Stage2_sig[32]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Equal8~1_combout\,
	datab => \SU1|SRL64|Stage2_sig[32]~27_combout\,
	datac => \SU1|SRL64|Stage2_sig[32]~26_combout\,
	datad => \SU1|SRA_SRL_sig[32]~5_combout\,
	combout => \SU1|SRA_SRL_sig[32]~6_combout\);

-- Location: LCCOMB_X75_Y33_N4
\SU1|SRL64|Stage1_sig[48]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~76_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[36]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[36]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~76_combout\);

-- Location: LCCOMB_X76_Y37_N18
\SU1|SRL64|Stage1_sig[48]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~75_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[38]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[6]~input_o\,
	datac => \A[38]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~75_combout\);

-- Location: LCCOMB_X75_Y37_N24
\SU1|SRL64|Stage1_sig[48]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~77_combout\ = (\SU1|SRL64|Stage1_sig[48]~76_combout\) # (\SU1|SRL64|Stage1_sig[48]~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~76_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~75_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~77_combout\);

-- Location: LCCOMB_X75_Y35_N2
\SU1|SRL64|Stage1_sig[48]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~74_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[37]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[5]~input_o\,
	datad => \A[37]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~74_combout\);

-- Location: LCCOMB_X72_Y33_N10
\SU1|SRL64|Stage1_sig[48]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~73_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[39]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[39]~input_o\,
	datad => \A[7]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~73_combout\);

-- Location: LCCOMB_X72_Y35_N14
\SU1|SRL64|Stage2_sig[48]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~20_combout\ = (\SU1|SRL64|Stage1_sig[48]~74_combout\) # (\SU1|SRL64|Stage1_sig[48]~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~74_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~73_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~20_combout\);

-- Location: LCCOMB_X69_Y37_N8
\SU1|SRL64|Stage2_sig[48]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~21_combout\ = (!\B[3]~input_o\ & ((\B[0]~input_o\ & ((\SU1|SRL64|Stage2_sig[48]~20_combout\))) # (!\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[48]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~77_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage2_sig[48]~20_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SRL64|Stage2_sig[48]~21_combout\);

-- Location: LCCOMB_X70_Y37_N14
\SU1|SRL64|Stage1_sig[48]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~82_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[44]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[44]~input_o\,
	datad => \A[12]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~82_combout\);

-- Location: LCCOMB_X67_Y36_N26
\SU1|SRL64|Stage1_sig[48]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~81_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[46]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[14]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[46]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~81_combout\);

-- Location: LCCOMB_X70_Y36_N12
\SU1|SRL64|Stage1_sig[12]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[12]~83_combout\ = (\SU1|SRL64|Stage1_sig[48]~82_combout\) # (\SU1|SRL64|Stage1_sig[48]~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~82_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~81_combout\,
	combout => \SU1|SRL64|Stage1_sig[12]~83_combout\);

-- Location: LCCOMB_X67_Y36_N16
\SU1|SRL64|Stage1_sig[48]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~79_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[45]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[13]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[45]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~79_combout\);

-- Location: LCCOMB_X70_Y36_N0
\SU1|SRL64|Stage1_sig[48]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~78_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[47]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[15]~input_o\,
	datad => \A[47]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~78_combout\);

-- Location: LCCOMB_X70_Y36_N30
\SU1|SRL64|Stage1_sig[12]~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[12]~273_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~79_combout\) # (\SU1|SRL64|Stage1_sig[48]~78_combout\)))) # (!\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[12]~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[12]~83_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~79_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~78_combout\,
	combout => \SU1|SRL64|Stage1_sig[12]~273_combout\);

-- Location: LCCOMB_X69_Y33_N8
\SU1|SRL64|Stage2_sig[48]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~22_combout\ = (\SU1|SRL64|Stage2_sig[48]~21_combout\) # ((\B[3]~input_o\ & \SU1|SRL64|Stage1_sig[12]~273_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SU1|SRL64|Stage2_sig[48]~21_combout\,
	datad => \SU1|SRL64|Stage1_sig[12]~273_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~22_combout\);

-- Location: LCCOMB_X72_Y30_N16
\SU1|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|Y[0]~0_combout\ = (!\B[5]~input_o\ & (!\B[4]~input_o\ & (\ShiftFN[1]~input_o\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SU1|Y[0]~0_combout\);

-- Location: LCCOMB_X68_Y35_N8
\SU1|SRL64|Stage1_sig[48]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~72_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[34]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[34]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SU1|SwapWord~0_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~72_combout\);

-- Location: LCCOMB_X68_Y35_N2
\SU1|Y[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|Y[0]~1_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[32]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SU1|SwapWord~0_combout\,
	combout => \SU1|Y[0]~1_combout\);

-- Location: LCCOMB_X76_Y35_N6
\SU1|X_sig[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|X_sig[1]~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[33]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[1]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \SU1|X_sig[1]~0_combout\);

-- Location: LCCOMB_X75_Y35_N0
\SU1|SRL64|Stage1_sig[48]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~70_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[35]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[35]~input_o\,
	datac => \SU1|SwapWord~0_combout\,
	datad => \A[3]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~70_combout\);

-- Location: LCCOMB_X72_Y35_N24
\SU1|SRL64|Stage1_sig[48]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~71_combout\ = (\SU1|SRL64|Stage1_sig[48]~70_combout\) # ((!\B[1]~input_o\ & \SU1|X_sig[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SU1|X_sig[1]~0_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~70_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~71_combout\);

-- Location: LCCOMB_X72_Y35_N10
\SU1|Y[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|Y[0]~2_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~71_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~72_combout\) # ((\SU1|Y[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~72_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|Y[0]~1_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~71_combout\,
	combout => \SU1|Y[0]~2_combout\);

-- Location: LCCOMB_X75_Y37_N12
\SU1|SRL64|Stage1_sig[48]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~68_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[40]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[40]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[8]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~68_combout\);

-- Location: LCCOMB_X76_Y37_N16
\SU1|SRL64|Stage1_sig[48]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~67_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[42]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[10]~input_o\,
	datac => \A[42]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~67_combout\);

-- Location: LCCOMB_X75_Y37_N6
\SU1|SRL64|Stage1_sig[8]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[8]~69_combout\ = (\SU1|SRL64|Stage1_sig[48]~68_combout\) # (\SU1|SRL64|Stage1_sig[48]~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~68_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~67_combout\,
	combout => \SU1|SRL64|Stage1_sig[8]~69_combout\);

-- Location: LCCOMB_X70_Y34_N16
\SU1|SRL64|Stage1_sig[48]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~64_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[43]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[43]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~64_combout\);

-- Location: LCCOMB_X72_Y33_N24
\SU1|SRL64|Stage1_sig[48]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~65_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[41]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[41]~input_o\,
	datad => \A[9]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~65_combout\);

-- Location: LCCOMB_X72_Y37_N22
\SU1|SRL64|Stage1_sig[8]~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[8]~272_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~64_combout\) # (\SU1|SRL64|Stage1_sig[48]~65_combout\)))) # (!\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[8]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[8]~69_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~64_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~65_combout\,
	combout => \SU1|SRL64|Stage1_sig[8]~272_combout\);

-- Location: LCCOMB_X72_Y35_N20
\SU1|Y[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|Y[0]~3_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[8]~272_combout\))) # (!\B[3]~input_o\ & (\SU1|Y[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|Y[0]~2_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[8]~272_combout\,
	combout => \SU1|Y[0]~3_combout\);

-- Location: LCCOMB_X73_Y29_N26
\SU1|Y[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|Y[0]~4_combout\ = (\SU1|Y[0]~0_combout\ & ((\SU1|Y[0]~3_combout\) # ((\SU1|SRL64|Stage2_sig[48]~22_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[48]~22_combout\,
	datab => \SU1|Y[0]~0_combout\,
	datac => \SU1|Y[0]~3_combout\,
	datad => \B[2]~input_o\,
	combout => \SU1|Y[0]~4_combout\);

-- Location: LCCOMB_X73_Y29_N24
\SU1|Y[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|Y[0]~8_combout\ = (\SU1|Y[0]~7_combout\) # ((\SU1|Y[0]~4_combout\) # ((\SU1|SRA_SRL_sig[32]~6_combout\ & \SU1|SwapWord~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|Y[0]~7_combout\,
	datab => \SU1|SRA_SRL_sig[32]~6_combout\,
	datac => \SU1|Y[0]~4_combout\,
	datad => \SU1|SwapWord~0_combout\,
	combout => \SU1|Y[0]~8_combout\);

-- Location: IOIBUF_X115_Y29_N8
\FuncClass[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: IOIBUF_X115_Y28_N1
\LogicFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: IOIBUF_X115_Y31_N1
\LogicFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: LCCOMB_X73_Y29_N16
\LU1|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LU1|Y[0]~0_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \LU1|Y[0]~0_combout\);

-- Location: LCCOMB_X73_Y29_N10
\Y~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~8_combout\ = (\FuncClass[1]~input_o\ & (((\FuncClass[0]~input_o\)))) # (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\LU1|Y[0]~0_combout\))) # (!\FuncClass[0]~input_o\ & (\SU1|Y[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \SU1|Y[0]~8_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \LU1|Y[0]~0_combout\,
	combout => \Y~8_combout\);

-- Location: LCCOMB_X73_Y29_N4
\Y~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~9_combout\ = (\FuncClass[1]~input_o\ & ((\Y~8_combout\ & (!\AU1|Adder|Add0~130_combout\)) # (!\Y~8_combout\ & ((\AU1|AltB~2_combout\))))) # (!\FuncClass[1]~input_o\ & (((\Y~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~130_combout\,
	datab => \AU1|AltB~2_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Y~8_combout\,
	combout => \Y~9_combout\);

-- Location: LCCOMB_X73_Y29_N6
\Y~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~10_combout\ = (!\FuncClass[1]~input_o\ & !\FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	combout => \Y~10_combout\);

-- Location: LCCOMB_X72_Y30_N18
\Y~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~18_combout\ = ((!\B[5]~input_o\ & (!\B[4]~input_o\ & !\ExtWord~input_o\))) # (!\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~18_combout\);

-- Location: LCCOMB_X72_Y30_N8
\Y~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~17_combout\ = (\ShiftFN[1]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[1]~input_o\ & (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~17_combout\);

-- Location: LCCOMB_X72_Y30_N26
\SU1|SRA_SRL_sig[41]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[41]~7_combout\ = (\ShiftFN[0]~input_o\ & ((\B[4]~input_o\) # ((\B[5]~input_o\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SU1|SRA_SRL_sig[41]~7_combout\);

-- Location: LCCOMB_X72_Y30_N12
\SU1|SRA_SRL_sig[41]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[41]~8_combout\ = (\B[5]~input_o\ & (\ExtWord~input_o\ & ((!\ShiftFN[0]~input_o\) # (!\B[4]~input_o\)))) # (!\B[5]~input_o\ & (((!\ShiftFN[0]~input_o\)) # (!\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SU1|SRA_SRL_sig[41]~8_combout\);

-- Location: LCCOMB_X66_Y34_N2
\SU1|SRL64|Stage1_sig[48]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~142_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[26]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[58]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[26]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~142_combout\);

-- Location: LCCOMB_X67_Y34_N16
\SU1|SRL64|Stage1_sig[57]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[57]~86_combout\ = (\SU1|SRL64|Stage1_sig[48]~84_combout\) # (\SU1|SRL64|Stage1_sig[48]~85_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~84_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~85_combout\,
	combout => \SU1|SRL64|Stage1_sig[57]~86_combout\);

-- Location: LCCOMB_X70_Y37_N18
\SU1|SRL64|Stage1_sig[48]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~141_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[28]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[60]~input_o\,
	datad => \A[28]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~141_combout\);

-- Location: LCCOMB_X67_Y34_N20
\SU1|SRL64|Stage1_sig[57]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[57]~143_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~142_combout\) # ((\SU1|SRL64|Stage1_sig[48]~141_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[57]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~142_combout\,
	datab => \SU1|SRL64|Stage1_sig[57]~86_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~141_combout\,
	combout => \SU1|SRL64|Stage1_sig[57]~143_combout\);

-- Location: LCCOMB_X69_Y35_N6
\SU1|SRL64|Stage1_sig[48]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~144_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[20]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[52]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[20]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~144_combout\);

-- Location: LCCOMB_X68_Y36_N20
\SU1|SRL64|Stage1_sig[49]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[49]~92_combout\ = (\SU1|SRL64|Stage1_sig[48]~90_combout\) # (\SU1|SRL64|Stage1_sig[48]~91_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~90_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~91_combout\,
	combout => \SU1|SRL64|Stage1_sig[49]~92_combout\);

-- Location: LCCOMB_X69_Y35_N0
\SU1|SRL64|Stage1_sig[48]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~145_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[18]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[50]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[18]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[50]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~145_combout\);

-- Location: LCCOMB_X68_Y36_N30
\SU1|SRL64|Stage1_sig[49]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[49]~146_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~144_combout\) # ((\SU1|SRL64|Stage1_sig[48]~145_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[49]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~144_combout\,
	datab => \SU1|SRL64|Stage1_sig[49]~92_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~145_combout\,
	datad => \B[0]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[49]~146_combout\);

-- Location: LCCOMB_X67_Y33_N16
\SU1|SRA64|Stage2_sig[49]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[49]~63_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[57]~143_combout\)) # (!\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[49]~146_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[57]~143_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[49]~146_combout\,
	combout => \SU1|SRA64|Stage2_sig[49]~63_combout\);

-- Location: LCCOMB_X65_Y36_N26
\SU1|SRL64|Stage2_sig[44]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[44]~31_combout\ = (\B[3]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SU1|SRL64|Stage2_sig[44]~31_combout\);

-- Location: LCCOMB_X65_Y34_N20
\SU1|SRL64|Stage1_sig[61]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[61]~164_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\ & \SU1|X_sig[62]~3_combout\)))) # (!\B[0]~input_o\ & (\SU1|X_sig[63]~2_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SU1|X_sig[62]~3_combout\,
	combout => \SU1|SRL64|Stage1_sig[61]~164_combout\);

-- Location: LCCOMB_X66_Y30_N14
\SU1|SRL64|Stage1_sig[61]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[61]~165_combout\ = (\SU1|SRL64|Stage1_sig[61]~164_combout\) # ((!\B[0]~input_o\ & \SU1|SRL64|Stage1_sig[48]~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[61]~164_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~97_combout\,
	combout => \SU1|SRL64|Stage1_sig[61]~165_combout\);

-- Location: LCCOMB_X65_Y36_N8
\SU1|SRA64|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Equal5~0_combout\ = (!\B[3]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SU1|SRA64|Equal5~0_combout\);

-- Location: LCCOMB_X68_Y34_N22
\SU1|SRL64|Stage1_sig[53]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[53]~150_combout\ = (\SU1|SRL64|Stage1_sig[48]~104_combout\) # (\SU1|SRL64|Stage1_sig[48]~103_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~104_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~103_combout\,
	combout => \SU1|SRL64|Stage1_sig[53]~150_combout\);

-- Location: LCCOMB_X76_Y35_N4
\SU1|SRL64|Stage1_sig[48]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~148_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[22]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[54]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \B[1]~input_o\,
	datad => \A[54]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~148_combout\);

-- Location: LCCOMB_X75_Y34_N2
\SU1|SRL64|Stage1_sig[48]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~147_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[24]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[56]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[56]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~147_combout\);

-- Location: LCCOMB_X68_Y34_N20
\SU1|SRL64|Stage1_sig[54]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[54]~149_combout\ = (\SU1|SRL64|Stage1_sig[48]~148_combout\) # (\SU1|SRL64|Stage1_sig[48]~147_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~148_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~147_combout\,
	combout => \SU1|SRL64|Stage1_sig[54]~149_combout\);

-- Location: LCCOMB_X66_Y30_N24
\SU1|SRA64|Stage2_sig[49]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[49]~64_combout\ = (\SU1|SRA64|Equal5~0_combout\ & ((\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[54]~149_combout\))) # (!\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[53]~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRA64|Equal5~0_combout\,
	datac => \SU1|SRL64|Stage1_sig[53]~150_combout\,
	datad => \SU1|SRL64|Stage1_sig[54]~149_combout\,
	combout => \SU1|SRA64|Stage2_sig[49]~64_combout\);

-- Location: LCCOMB_X66_Y30_N0
\SU1|SRL64|Stage2_sig[49]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[49]~35_combout\ = (\SU1|SRA64|Stage2_sig[49]~63_combout\) # ((\SU1|SRA64|Stage2_sig[49]~64_combout\) # ((\SU1|SRL64|Stage2_sig[44]~31_combout\ & \SU1|SRL64|Stage1_sig[61]~165_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[49]~63_combout\,
	datab => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datac => \SU1|SRL64|Stage1_sig[61]~165_combout\,
	datad => \SU1|SRA64|Stage2_sig[49]~64_combout\,
	combout => \SU1|SRL64|Stage2_sig[49]~35_combout\);

-- Location: LCCOMB_X75_Y37_N26
\SU1|SRL64|Stage1_sig[48]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~161_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[8]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[40]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[8]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~161_combout\);

-- Location: LCCOMB_X75_Y37_N4
\SU1|SRL64|Stage1_sig[48]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~162_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[6]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[38]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[38]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~162_combout\);

-- Location: LCCOMB_X67_Y35_N8
\SU1|SRL64|Stage1_sig[37]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[37]~120_combout\ = (\SU1|SRL64|Stage1_sig[48]~118_combout\) # (\SU1|SRL64|Stage1_sig[48]~119_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~118_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~119_combout\,
	combout => \SU1|SRL64|Stage1_sig[37]~120_combout\);

-- Location: LCCOMB_X67_Y35_N28
\SU1|SRL64|Stage1_sig[37]~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[37]~281_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~161_combout\) # ((\SU1|SRL64|Stage1_sig[48]~162_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[37]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~161_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~162_combout\,
	datac => \SU1|SRL64|Stage1_sig[37]~120_combout\,
	datad => \B[0]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[37]~281_combout\);

-- Location: LCCOMB_X73_Y34_N16
\SU1|SRA64|Stage2_sig[52]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[52]~62_combout\ = (!\B[2]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	combout => \SU1|SRA64|Stage2_sig[52]~62_combout\);

-- Location: LCCOMB_X75_Y33_N22
\SU1|SRL64|Stage1_sig[48]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~154_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[4]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[36]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~154_combout\);

-- Location: LCCOMB_X68_Y35_N10
\SU1|SRL64|Stage1_sig[48]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~155_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[2]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[34]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[34]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SU1|SwapWord~0_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~155_combout\);

-- Location: LCCOMB_X66_Y35_N8
\SU1|SRL64|Stage1_sig[34]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[34]~156_combout\ = (\SU1|SRL64|Stage1_sig[48]~154_combout\) # (\SU1|SRL64|Stage1_sig[48]~155_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~154_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~155_combout\,
	combout => \SU1|SRL64|Stage1_sig[34]~156_combout\);

-- Location: LCCOMB_X67_Y35_N4
\SU1|SRL64|Stage1_sig[33]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[33]~157_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[34]~156_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~127_combout\) # ((\SU1|SRL64|Stage1_sig[48]~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~127_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~128_combout\,
	datad => \SU1|SRL64|Stage1_sig[34]~156_combout\,
	combout => \SU1|SRL64|Stage1_sig[33]~157_combout\);

-- Location: LCCOMB_X66_Y30_N4
\SU1|SRA64|Stage2_sig[52]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[52]~66_combout\ = (!\B[2]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SU1|SRA64|Stage2_sig[52]~66_combout\);

-- Location: LCCOMB_X76_Y37_N20
\SU1|SRL64|Stage1_sig[48]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~152_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[10]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[42]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[10]~input_o\,
	datac => \A[42]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~152_combout\);

-- Location: LCCOMB_X70_Y37_N20
\SU1|SRL64|Stage1_sig[48]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~151_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[12]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[44]~input_o\,
	datad => \A[12]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~151_combout\);

-- Location: LCCOMB_X67_Y37_N8
\SU1|SRL64|Stage1_sig[41]~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[41]~280_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~152_combout\) # (\SU1|SRL64|Stage1_sig[48]~151_combout\)))) # (!\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[41]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[41]~114_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~152_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~151_combout\,
	combout => \SU1|SRL64|Stage1_sig[41]~280_combout\);

-- Location: LCCOMB_X67_Y33_N18
\SU1|SRL64|Stage2_sig[33]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[33]~32_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\SU1|SRL64|Stage1_sig[33]~157_combout\) # ((\SU1|SRA64|Stage2_sig[52]~66_combout\ & \SU1|SRL64|Stage1_sig[41]~280_combout\)))) # (!\SU1|SRA64|Stage2_sig[52]~62_combout\ & 
-- (((\SU1|SRA64|Stage2_sig[52]~66_combout\ & \SU1|SRL64|Stage1_sig[41]~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datab => \SU1|SRL64|Stage1_sig[33]~157_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datad => \SU1|SRL64|Stage1_sig[41]~280_combout\,
	combout => \SU1|SRL64|Stage2_sig[33]~32_combout\);

-- Location: LCCOMB_X67_Y36_N8
\SU1|SRL64|Stage1_sig[48]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~159_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[14]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[46]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[14]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[46]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~159_combout\);

-- Location: LCCOMB_X67_Y36_N14
\SU1|SRL64|Stage1_sig[48]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~158_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[16]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[48]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[16]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~158_combout\);

-- Location: LCCOMB_X66_Y36_N22
\SU1|SRL64|Stage1_sig[46]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[46]~160_combout\ = (\SU1|SRL64|Stage1_sig[48]~159_combout\) # (\SU1|SRL64|Stage1_sig[48]~158_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~159_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~158_combout\,
	combout => \SU1|SRL64|Stage1_sig[46]~160_combout\);

-- Location: LCCOMB_X66_Y36_N18
\SU1|SRL64|Stage1_sig[45]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[45]~108_combout\ = (\SU1|SRL64|Stage1_sig[48]~107_combout\) # (\SU1|SRL64|Stage1_sig[48]~106_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~107_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~106_combout\,
	combout => \SU1|SRL64|Stage1_sig[45]~108_combout\);

-- Location: LCCOMB_X67_Y33_N20
\SU1|SRL64|Stage2_sig[33]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[33]~33_combout\ = (\SU1|SRL64|Stage2_sig[44]~31_combout\ & ((\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[46]~160_combout\)) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[45]~108_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datac => \SU1|SRL64|Stage1_sig[46]~160_combout\,
	datad => \SU1|SRL64|Stage1_sig[45]~108_combout\,
	combout => \SU1|SRL64|Stage2_sig[33]~33_combout\);

-- Location: LCCOMB_X67_Y33_N6
\SU1|SRL64|Stage2_sig[33]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[33]~34_combout\ = (\SU1|SRL64|Stage2_sig[33]~32_combout\) # ((\SU1|SRL64|Stage2_sig[33]~33_combout\) # ((\SU1|SRL64|Stage1_sig[37]~281_combout\ & \SU1|SRA64|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[37]~281_combout\,
	datab => \SU1|SRL64|Stage2_sig[33]~32_combout\,
	datac => \SU1|SRA64|Equal5~0_combout\,
	datad => \SU1|SRL64|Stage2_sig[33]~33_combout\,
	combout => \SU1|SRL64|Stage2_sig[33]~34_combout\);

-- Location: LCCOMB_X72_Y30_N6
\SU1|SRA_SRL_sig[41]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[41]~9_combout\ = (\B[5]~input_o\ & (((\B[4]~input_o\ & !\ShiftFN[0]~input_o\)) # (!\ExtWord~input_o\))) # (!\B[5]~input_o\ & (\B[4]~input_o\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SU1|SRA_SRL_sig[41]~9_combout\);

-- Location: LCCOMB_X66_Y31_N18
\SU1|SRA_SRL_sig[33]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[33]~10_combout\ = (\SU1|SRA_SRL_sig[41]~8_combout\ & ((\SU1|SRA_SRL_sig[41]~9_combout\ & (\SU1|SRL64|Stage2_sig[49]~35_combout\)) # (!\SU1|SRA_SRL_sig[41]~9_combout\ & ((\SU1|SRL64|Stage2_sig[33]~34_combout\))))) # 
-- (!\SU1|SRA_SRL_sig[41]~8_combout\ & (((!\SU1|SRA_SRL_sig[41]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[41]~8_combout\,
	datab => \SU1|SRL64|Stage2_sig[49]~35_combout\,
	datac => \SU1|SRL64|Stage2_sig[33]~34_combout\,
	datad => \SU1|SRA_SRL_sig[41]~9_combout\,
	combout => \SU1|SRA_SRL_sig[33]~10_combout\);

-- Location: LCCOMB_X65_Y34_N14
\SU1|SRA64|Stage1_sig[61]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage1_sig[61]~3_combout\ = (\B[1]~input_o\ & (\A[62]~input_o\)) # (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[62]~input_o\)) # (!\B[0]~input_o\ & ((\A[61]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[62]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[61]~input_o\,
	combout => \SU1|SRA64|Stage1_sig[61]~3_combout\);

-- Location: LCCOMB_X65_Y34_N24
\SU1|SRA64|Stage1_sig[61]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage1_sig[61]~4_combout\ = (\SU1|SwapWord~0_combout\ & (((\B[1]~input_o\)))) # (!\SU1|SwapWord~0_combout\ & ((\B[1]~input_o\ & ((\A[63]~input_o\))) # (!\B[1]~input_o\ & (\SU1|SRA64|Stage1_sig[61]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \SU1|SRA64|Stage1_sig[61]~3_combout\,
	datac => \B[1]~input_o\,
	datad => \A[63]~input_o\,
	combout => \SU1|SRA64|Stage1_sig[61]~4_combout\);

-- Location: LCCOMB_X65_Y34_N28
\SU1|SRA64|Stage1_sig[61]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage1_sig[61]~2_combout\ = (\B[0]~input_o\ & (\A[30]~input_o\)) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[30]~input_o\)) # (!\B[1]~input_o\ & ((\A[29]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[29]~input_o\,
	combout => \SU1|SRA64|Stage1_sig[61]~2_combout\);

-- Location: LCCOMB_X65_Y34_N10
\SU1|SRA64|Stage1_sig[61]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage1_sig[61]~5_combout\ = (\SU1|SwapWord~0_combout\ & ((\SU1|SRA64|Stage1_sig[61]~4_combout\ & (\A[31]~input_o\)) # (!\SU1|SRA64|Stage1_sig[61]~4_combout\ & ((\SU1|SRA64|Stage1_sig[61]~2_combout\))))) # (!\SU1|SwapWord~0_combout\ & 
-- (\SU1|SRA64|Stage1_sig[61]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \SU1|SRA64|Stage1_sig[61]~4_combout\,
	datac => \A[31]~input_o\,
	datad => \SU1|SRA64|Stage1_sig[61]~2_combout\,
	combout => \SU1|SRA64|Stage1_sig[61]~5_combout\);

-- Location: LCCOMB_X66_Y30_N2
\SU1|SRA64|Stage2_sig[49]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[49]~65_combout\ = (\SU1|SRA64|Stage2_sig[49]~63_combout\) # ((\SU1|SRA64|Stage2_sig[49]~64_combout\) # ((\SU1|SRA64|Stage1_sig[61]~5_combout\ & \SU1|SRL64|Stage2_sig[44]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[49]~63_combout\,
	datab => \SU1|SRA64|Stage1_sig[61]~5_combout\,
	datac => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datad => \SU1|SRA64|Stage2_sig[49]~64_combout\,
	combout => \SU1|SRA64|Stage2_sig[49]~65_combout\);

-- Location: LCCOMB_X70_Y31_N4
\SU1|SRA_SRL_sig[33]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[33]~11_combout\ = (\SU1|SRA_SRL_sig[41]~7_combout\ & ((\SU1|SRA_SRL_sig[33]~10_combout\ & ((\SU1|SRA64|Stage2_sig[49]~65_combout\))) # (!\SU1|SRA_SRL_sig[33]~10_combout\ & (\SU1|X_sig[63]~2_combout\)))) # (!\SU1|SRA_SRL_sig[41]~7_combout\ 
-- & (((\SU1|SRA_SRL_sig[33]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[41]~7_combout\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \SU1|SRA_SRL_sig[33]~10_combout\,
	datad => \SU1|SRA64|Stage2_sig[49]~65_combout\,
	combout => \SU1|SRA_SRL_sig[33]~11_combout\);

-- Location: LCCOMB_X72_Y35_N30
\SU1|SLL64|Stage1_sig[1]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[1]~62_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\SU1|X_sig[0]~1_combout\)) # (!\B[0]~input_o\ & ((\SU1|X_sig[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SU1|X_sig[0]~1_combout\,
	datad => \SU1|X_sig[1]~0_combout\,
	combout => \SU1|SLL64|Stage1_sig[1]~62_combout\);

-- Location: LCCOMB_X73_Y34_N4
\SU1|SLL64|Stage2_sig[1]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[1]~93_combout\ = (!\B[3]~input_o\ & (!\B[2]~input_o\ & \SU1|SLL64|Stage1_sig[1]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[1]~62_combout\,
	combout => \SU1|SLL64|Stage2_sig[1]~93_combout\);

-- Location: LCCOMB_X70_Y31_N6
\Y~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~19_combout\ = (\Y~18_combout\ & (\Y~17_combout\ & ((\SU1|SLL64|Stage2_sig[1]~93_combout\)))) # (!\Y~18_combout\ & (((\SU1|SRA_SRL_sig[33]~11_combout\)) # (!\Y~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~18_combout\,
	datab => \Y~17_combout\,
	datac => \SU1|SRA_SRL_sig[33]~11_combout\,
	datad => \SU1|SLL64|Stage2_sig[1]~93_combout\,
	combout => \Y~19_combout\);

-- Location: LCCOMB_X73_Y29_N0
\SU1|Y[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|Y[0]~9_combout\ = (\ShiftFN[1]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SU1|Y[0]~9_combout\);

-- Location: LCCOMB_X67_Y36_N4
\SU1|SRL64|Stage1_sig[48]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~139_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[46]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[14]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[46]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~139_combout\);

-- Location: LCCOMB_X67_Y36_N2
\SU1|SRL64|Stage1_sig[48]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~138_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[48]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[48]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[16]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~138_combout\);

-- Location: LCCOMB_X70_Y36_N10
\SU1|SRL64|Stage1_sig[13]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[13]~80_combout\ = (\SU1|SRL64|Stage1_sig[48]~79_combout\) # (\SU1|SRL64|Stage1_sig[48]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~79_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~78_combout\,
	combout => \SU1|SRL64|Stage1_sig[13]~80_combout\);

-- Location: LCCOMB_X69_Y37_N12
\SU1|SRL64|Stage1_sig[13]~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[13]~279_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~139_combout\) # ((\SU1|SRL64|Stage1_sig[48]~138_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[13]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~139_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~138_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[13]~80_combout\,
	combout => \SU1|SRL64|Stage1_sig[13]~279_combout\);

-- Location: LCCOMB_X75_Y37_N0
\SU1|SRL64|Stage1_sig[48]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~137_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[38]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[38]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~137_combout\);

-- Location: LCCOMB_X75_Y37_N22
\SU1|SRL64|Stage1_sig[48]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~136_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[40]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[40]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[8]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~136_combout\);

-- Location: LCCOMB_X72_Y37_N18
\SU1|SRL64|Stage2_sig[48]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~28_combout\ = (\SU1|SRL64|Stage1_sig[48]~137_combout\) # (\SU1|SRL64|Stage1_sig[48]~136_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~137_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~136_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~28_combout\);

-- Location: LCCOMB_X69_Y37_N20
\SU1|SRL64|Stage2_sig[48]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~29_combout\ = (!\B[3]~input_o\ & ((\B[0]~input_o\ & (\SU1|SRL64|Stage2_sig[48]~28_combout\)) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage2_sig[48]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[48]~28_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage2_sig[48]~20_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SRL64|Stage2_sig[48]~29_combout\);

-- Location: LCCOMB_X69_Y37_N0
\SU1|SRL64|Stage2_sig[48]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~30_combout\ = (\SU1|SRL64|Stage2_sig[48]~29_combout\) # ((\SU1|SRL64|Stage1_sig[13]~279_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[13]~279_combout\,
	datab => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage2_sig[48]~29_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~30_combout\);

-- Location: LCCOMB_X72_Y37_N8
\SU1|SRL64|Stage1_sig[9]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[9]~66_combout\ = (\SU1|SRL64|Stage1_sig[48]~64_combout\) # (\SU1|SRL64|Stage1_sig[48]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~64_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~65_combout\,
	combout => \SU1|SRL64|Stage1_sig[9]~66_combout\);

-- Location: LCCOMB_X76_Y37_N2
\SU1|SRL64|Stage1_sig[48]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~131_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[42]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[10]~input_o\,
	datac => \A[42]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~131_combout\);

-- Location: LCCOMB_X70_Y37_N24
\SU1|SRL64|Stage1_sig[48]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~130_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[44]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[44]~input_o\,
	datad => \A[12]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~130_combout\);

-- Location: LCCOMB_X69_Y37_N18
\SU1|SRL64|Stage1_sig[9]~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[9]~278_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~131_combout\) # (\SU1|SRL64|Stage1_sig[48]~130_combout\)))) # (!\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[9]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[9]~66_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~131_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~130_combout\,
	combout => \SU1|SRL64|Stage1_sig[9]~278_combout\);

-- Location: LCCOMB_X72_Y35_N8
\Y~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~11_combout\ = (\B[2]~input_o\) # ((\B[0]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Y~11_combout\);

-- Location: LCCOMB_X75_Y33_N28
\SU1|SRL64|Stage1_sig[48]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~133_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[36]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[36]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~133_combout\);

-- Location: LCCOMB_X68_Y35_N6
\SU1|SRL64|Stage1_sig[48]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~134_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[34]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[34]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SU1|SwapWord~0_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~134_combout\);

-- Location: LCCOMB_X68_Y35_N24
\SU1|SRL64|Stage1_sig[48]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~135_combout\ = (\SU1|SRL64|Stage1_sig[48]~133_combout\) # (\SU1|SRL64|Stage1_sig[48]~134_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~133_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~134_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~135_combout\);

-- Location: LCCOMB_X72_Y35_N2
\Y~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~12_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\Y~11_combout\ & (\SU1|SRL64|Stage1_sig[48]~135_combout\)) # (!\Y~11_combout\ & ((\SU1|SRL64|Stage1_sig[48]~71_combout\))))) # (!\SU1|SRA64|Stage2_sig[52]~62_combout\ & (\Y~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datab => \Y~11_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~135_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~71_combout\,
	combout => \Y~12_combout\);

-- Location: LCCOMB_X72_Y35_N4
\Y~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~13_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & (((\Y~12_combout\)))) # (!\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\Y~12_combout\ & (\SU1|SRL64|Stage2_sig[48]~30_combout\)) # (!\Y~12_combout\ & ((\SU1|SRL64|Stage1_sig[9]~278_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datab => \SU1|SRL64|Stage2_sig[48]~30_combout\,
	datac => \SU1|SRL64|Stage1_sig[9]~278_combout\,
	datad => \Y~12_combout\,
	combout => \Y~13_combout\);

-- Location: LCCOMB_X75_Y33_N8
\SU1|SRL64|Stage3_sig~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage3_sig~42_combout\ = \B[4]~input_o\ $ (((!\ExtWord~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SU1|SRL64|Stage3_sig~42_combout\);

-- Location: LCCOMB_X72_Y30_N24
\Y~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~14_combout\ = (\B[4]~input_o\ & (((\ShiftFN[0]~input_o\) # (\ExtWord~input_o\)) # (!\B[5]~input_o\))) # (!\B[4]~input_o\ & (\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~14_combout\);

-- Location: LCCOMB_X66_Y31_N16
\Y~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~15_combout\ = (\SU1|SRL64|Stage3_sig~42_combout\ & ((\SU1|SRL64|Stage2_sig[33]~34_combout\) # ((\Y~14_combout\)))) # (!\SU1|SRL64|Stage3_sig~42_combout\ & (((!\Y~14_combout\ & \SU1|SRL64|Stage2_sig[49]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[33]~34_combout\,
	datab => \SU1|SRL64|Stage3_sig~42_combout\,
	datac => \Y~14_combout\,
	datad => \SU1|SRL64|Stage2_sig[49]~35_combout\,
	combout => \Y~15_combout\);

-- Location: LCCOMB_X65_Y34_N22
\SU1|SRL64|Stage1_sig[48]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~167_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[62]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \A[62]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SU1|SwapWord~0_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~167_combout\);

-- Location: LCCOMB_X76_Y35_N30
\SU1|SRL64|Stage1_sig[48]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~169_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[63]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[63]~input_o\,
	datac => \SU1|SwapWord~0_combout\,
	datad => \A[31]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~169_combout\);

-- Location: LCCOMB_X66_Y34_N4
\SU1|SRL64|Stage1_sig[48]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~170_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[61]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[29]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \A[29]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SU1|SwapWord~0_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~170_combout\);

-- Location: LCCOMB_X66_Y35_N20
\SU1|SRL64|Stage1_sig[29]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[29]~171_combout\ = (\SU1|SRL64|Stage1_sig[48]~169_combout\) # (\SU1|SRL64|Stage1_sig[48]~170_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~169_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~170_combout\,
	combout => \SU1|SRL64|Stage1_sig[29]~171_combout\);

-- Location: LCCOMB_X68_Y35_N28
\SU1|SRL64|Stage1_sig[48]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~166_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[0]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SU1|SwapWord~0_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~166_combout\);

-- Location: LCCOMB_X66_Y35_N18
\SU1|SRL64|Stage1_sig[29]~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[29]~282_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~167_combout\) # ((\SU1|SRL64|Stage1_sig[48]~166_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[29]~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~167_combout\,
	datab => \SU1|SRL64|Stage1_sig[29]~171_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~166_combout\,
	combout => \SU1|SRL64|Stage1_sig[29]~282_combout\);

-- Location: LCCOMB_X75_Y34_N4
\SU1|SRL64|Stage1_sig[48]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~172_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[56]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[56]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~172_combout\);

-- Location: LCCOMB_X76_Y35_N0
\SU1|SRL64|Stage1_sig[48]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~173_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[54]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \B[1]~input_o\,
	datad => \A[54]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~173_combout\);

-- Location: LCCOMB_X69_Y35_N10
\SU1|SRL64|Stage1_sig[48]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~176_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[53]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[21]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[53]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~176_combout\);

-- Location: LCCOMB_X72_Y33_N0
\SU1|SRL64|Stage1_sig[48]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~175_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[55]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[23]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[55]~input_o\,
	datac => \SU1|SwapWord~0_combout\,
	datad => \A[23]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~175_combout\);

-- Location: LCCOMB_X69_Y36_N0
\SU1|SRL64|Stage1_sig[21]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[21]~177_combout\ = (\SU1|SRL64|Stage1_sig[48]~176_combout\) # (\SU1|SRL64|Stage1_sig[48]~175_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~176_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~175_combout\,
	combout => \SU1|SRL64|Stage1_sig[21]~177_combout\);

-- Location: LCCOMB_X69_Y37_N30
\SU1|SRL64|Stage1_sig[21]~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[21]~283_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~172_combout\) # ((\SU1|SRL64|Stage1_sig[48]~173_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[21]~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~172_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~173_combout\,
	datad => \SU1|SRL64|Stage1_sig[21]~177_combout\,
	combout => \SU1|SRL64|Stage1_sig[21]~283_combout\);

-- Location: LCCOMB_X69_Y37_N2
\SU1|SRL64|Stage2_sig[21]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[21]~36_combout\ = (\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[29]~282_combout\)) # (!\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[21]~283_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[29]~282_combout\,
	datab => \B[3]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[21]~283_combout\,
	combout => \SU1|SRL64|Stage2_sig[21]~36_combout\);

-- Location: LCCOMB_X68_Y36_N8
\SU1|SRL64|Stage1_sig[48]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~187_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[51]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \A[19]~input_o\,
	datac => \SU1|SwapWord~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~187_combout\);

-- Location: LCCOMB_X70_Y36_N24
\SU1|SRL64|Stage1_sig[48]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~188_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[49]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[17]~input_o\,
	datad => \SU1|SwapWord~0_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~188_combout\);

-- Location: LCCOMB_X69_Y36_N10
\SU1|SRL64|Stage1_sig[17]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[17]~189_combout\ = (\SU1|SRL64|Stage1_sig[48]~187_combout\) # (\SU1|SRL64|Stage1_sig[48]~188_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~187_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~188_combout\,
	combout => \SU1|SRL64|Stage1_sig[17]~189_combout\);

-- Location: LCCOMB_X69_Y35_N30
\SU1|SRL64|Stage1_sig[48]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~185_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[50]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[18]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[50]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~185_combout\);

-- Location: LCCOMB_X69_Y35_N4
\SU1|SRL64|Stage1_sig[48]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~184_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[52]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[20]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[52]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[20]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~184_combout\);

-- Location: LCCOMB_X69_Y36_N12
\SU1|SRL64|Stage1_sig[17]~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[17]~285_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~185_combout\) # (\SU1|SRL64|Stage1_sig[48]~184_combout\)))) # (!\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[17]~189_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[17]~189_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~185_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~184_combout\,
	combout => \SU1|SRL64|Stage1_sig[17]~285_combout\);

-- Location: LCCOMB_X66_Y34_N22
\SU1|SRL64|Stage1_sig[48]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~178_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[58]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[58]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[26]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~178_combout\);

-- Location: LCCOMB_X70_Y34_N30
\SU1|SRL64|Stage1_sig[48]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~182_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[59]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[59]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~182_combout\);

-- Location: LCCOMB_X70_Y34_N20
\SU1|SRL64|Stage1_sig[48]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~181_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[57]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[57]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~181_combout\);

-- Location: LCCOMB_X69_Y34_N28
\SU1|SRL64|Stage1_sig[25]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[25]~183_combout\ = (\SU1|SRL64|Stage1_sig[48]~182_combout\) # (\SU1|SRL64|Stage1_sig[48]~181_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~182_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~181_combout\,
	combout => \SU1|SRL64|Stage1_sig[25]~183_combout\);

-- Location: LCCOMB_X70_Y37_N30
\SU1|SRL64|Stage1_sig[48]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~179_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[60]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[60]~input_o\,
	datad => \A[28]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~179_combout\);

-- Location: LCCOMB_X69_Y34_N24
\SU1|SRL64|Stage1_sig[25]~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[25]~284_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~178_combout\) # ((\SU1|SRL64|Stage1_sig[48]~179_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[25]~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~178_combout\,
	datab => \SU1|SRL64|Stage1_sig[25]~183_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~179_combout\,
	combout => \SU1|SRL64|Stage1_sig[25]~284_combout\);

-- Location: LCCOMB_X69_Y37_N4
\SU1|SRL64|Stage2_sig[48]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~37_combout\ = (\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[25]~284_combout\))) # (!\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[17]~285_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[17]~285_combout\,
	datab => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[25]~284_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~37_combout\);

-- Location: LCCOMB_X70_Y31_N16
\SU1|SRL64|Stage2_sig[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[17]~38_combout\ = (\B[2]~input_o\ & (\SU1|SRL64|Stage2_sig[21]~36_combout\)) # (!\B[2]~input_o\ & ((\SU1|SRL64|Stage2_sig[48]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[21]~36_combout\,
	datab => \SU1|SRL64|Stage2_sig[48]~37_combout\,
	datad => \B[2]~input_o\,
	combout => \SU1|SRL64|Stage2_sig[17]~38_combout\);

-- Location: LCCOMB_X70_Y31_N10
\Y~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~16_combout\ = (\Y~15_combout\ & (((\SU1|SRL64|Stage2_sig[17]~38_combout\) # (!\Y~14_combout\)))) # (!\Y~15_combout\ & (\SU1|SRA64|Stage2_sig[49]~65_combout\ & (\Y~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[49]~65_combout\,
	datab => \Y~15_combout\,
	datac => \Y~14_combout\,
	datad => \SU1|SRL64|Stage2_sig[17]~38_combout\,
	combout => \Y~16_combout\);

-- Location: LCCOMB_X70_Y31_N8
\Y~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~20_combout\ = (\Y~19_combout\ & (((\Y~16_combout\)) # (!\SU1|Y[0]~9_combout\))) # (!\Y~19_combout\ & (\SU1|Y[0]~9_combout\ & (\Y~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~19_combout\,
	datab => \SU1|Y[0]~9_combout\,
	datac => \Y~13_combout\,
	datad => \Y~16_combout\,
	combout => \Y~20_combout\);

-- Location: LCCOMB_X73_Y29_N2
\Y~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~21_combout\ = (\ShiftFN[0]~input_o\) # (\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Y~21_combout\);

-- Location: LCCOMB_X76_Y33_N0
\Y~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~22_combout\ = (\Y~10_combout\ & ((\Y~21_combout\ & (\Y~20_combout\)) # (!\Y~21_combout\ & ((\AU1|Adder|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~10_combout\,
	datab => \Y~20_combout\,
	datac => \Y~21_combout\,
	datad => \AU1|Adder|Add0~4_combout\,
	combout => \Y~22_combout\);

-- Location: LCCOMB_X76_Y35_N26
\Y~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~23_combout\ = (\B[1]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Y~23_combout\);

-- Location: LCCOMB_X79_Y33_N0
\Y~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~24_combout\ = (\Y~22_combout\) # ((\FuncClass[0]~input_o\ & (!\FuncClass[1]~input_o\ & \Y~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y~22_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Y~23_combout\,
	combout => \Y~24_combout\);

-- Location: LCCOMB_X70_Y36_N2
\SU1|SRL64|Stage1_sig[48]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~196_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[49]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[17]~input_o\,
	datad => \SU1|SwapWord~0_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~196_combout\);

-- Location: LCCOMB_X69_Y37_N22
\SU1|SRL64|Stage1_sig[14]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[14]~140_combout\ = (\SU1|SRL64|Stage1_sig[48]~138_combout\) # (\SU1|SRL64|Stage1_sig[48]~139_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~138_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~139_combout\,
	combout => \SU1|SRL64|Stage1_sig[14]~140_combout\);

-- Location: LCCOMB_X70_Y36_N20
\SU1|SRL64|Stage1_sig[48]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~197_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[47]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[15]~input_o\,
	datad => \A[47]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~197_combout\);

-- Location: LCCOMB_X70_Y36_N14
\SU1|SRL64|Stage1_sig[14]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[14]~198_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~196_combout\) # ((\SU1|SRL64|Stage1_sig[48]~197_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[14]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~196_combout\,
	datab => \SU1|SRL64|Stage1_sig[14]~140_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~197_combout\,
	combout => \SU1|SRL64|Stage1_sig[14]~198_combout\);

-- Location: LCCOMB_X72_Y33_N4
\SU1|SRL64|Stage1_sig[48]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~200_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[39]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[39]~input_o\,
	datad => \A[7]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~200_combout\);

-- Location: LCCOMB_X72_Y33_N18
\SU1|SRL64|Stage1_sig[48]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~199_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[41]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[41]~input_o\,
	datad => \A[9]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~199_combout\);

-- Location: LCCOMB_X72_Y37_N4
\SU1|SRL64|Stage2_sig[48]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~39_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~200_combout\) # ((\SU1|SRL64|Stage1_sig[48]~199_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage2_sig[48]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[48]~200_combout\,
	datac => \SU1|SRL64|Stage2_sig[48]~28_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~199_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~39_combout\);

-- Location: LCCOMB_X72_Y35_N26
\SU1|SRL64|Stage2_sig[48]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~40_combout\ = (\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[14]~198_combout\)) # (!\B[3]~input_o\ & ((\SU1|SRL64|Stage2_sig[48]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[14]~198_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage2_sig[48]~39_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~40_combout\);

-- Location: LCCOMB_X67_Y36_N10
\SU1|SRL64|Stage1_sig[48]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~193_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[45]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[13]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[45]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~193_combout\);

-- Location: LCCOMB_X70_Y34_N8
\SU1|SRL64|Stage1_sig[48]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~194_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[43]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[43]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~194_combout\);

-- Location: LCCOMB_X69_Y37_N10
\SU1|SRL64|Stage1_sig[10]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[10]~132_combout\ = (\SU1|SRL64|Stage1_sig[48]~131_combout\) # (\SU1|SRL64|Stage1_sig[48]~130_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~131_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~130_combout\,
	combout => \SU1|SRL64|Stage1_sig[10]~132_combout\);

-- Location: LCCOMB_X65_Y35_N24
\SU1|SRL64|Stage1_sig[10]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[10]~195_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~193_combout\) # ((\SU1|SRL64|Stage1_sig[48]~194_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[10]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[48]~193_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~194_combout\,
	datad => \SU1|SRL64|Stage1_sig[10]~132_combout\,
	combout => \SU1|SRL64|Stage1_sig[10]~195_combout\);

-- Location: LCCOMB_X72_Y35_N16
\Y~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~25_combout\ = (\Y~11_combout\ & (((!\SU1|SRA64|Stage2_sig[52]~62_combout\)))) # (!\Y~11_combout\ & ((\SU1|SRA64|Stage2_sig[52]~62_combout\ & (\SU1|SRL64|Stage1_sig[48]~135_combout\)) # (!\SU1|SRA64|Stage2_sig[52]~62_combout\ & 
-- ((\SU1|SRL64|Stage1_sig[10]~195_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~135_combout\,
	datab => \SU1|SRL64|Stage1_sig[10]~195_combout\,
	datac => \Y~11_combout\,
	datad => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	combout => \Y~25_combout\);

-- Location: LCCOMB_X75_Y35_N10
\SU1|SRL64|Stage1_sig[48]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~191_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[35]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[35]~input_o\,
	datac => \SU1|SwapWord~0_combout\,
	datad => \A[3]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~191_combout\);

-- Location: LCCOMB_X75_Y35_N8
\SU1|SRL64|Stage1_sig[48]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~190_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[37]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[5]~input_o\,
	datad => \A[37]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~190_combout\);

-- Location: LCCOMB_X75_Y35_N20
\SU1|SRL64|Stage1_sig[48]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~192_combout\ = (\SU1|SRL64|Stage1_sig[48]~191_combout\) # (\SU1|SRL64|Stage1_sig[48]~190_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~191_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~190_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~192_combout\);

-- Location: LCCOMB_X72_Y35_N12
\Y~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~26_combout\ = (\Y~25_combout\ & ((\SU1|SRL64|Stage2_sig[48]~40_combout\) # ((!\Y~11_combout\)))) # (!\Y~25_combout\ & (((\SU1|SRL64|Stage1_sig[48]~192_combout\ & \Y~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[48]~40_combout\,
	datab => \Y~25_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~192_combout\,
	datad => \Y~11_combout\,
	combout => \Y~26_combout\);

-- Location: LCCOMB_X68_Y35_N14
\SU1|SLL64|Stage1_sig[3]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[3]~63_combout\ = (\SU1|SRL64|Stage1_sig[48]~134_combout\) # ((\SU1|X_sig[0]~1_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|X_sig[0]~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~134_combout\,
	combout => \SU1|SLL64|Stage1_sig[3]~63_combout\);

-- Location: LCCOMB_X72_Y36_N16
\SU1|SLL64|Stage1_sig[2]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[2]~64_combout\ = (\B[0]~input_o\ & (!\B[1]~input_o\ & ((\SU1|X_sig[1]~0_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[3]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[3]~63_combout\,
	datad => \SU1|X_sig[1]~0_combout\,
	combout => \SU1|SLL64|Stage1_sig[2]~64_combout\);

-- Location: LCCOMB_X70_Y31_N28
\SU1|SLL64|Stage2_sig[2]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[2]~94_combout\ = (!\B[2]~input_o\ & (\SU1|SLL64|Stage1_sig[2]~64_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[2]~64_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SLL64|Stage2_sig[2]~94_combout\);

-- Location: LCCOMB_X66_Y34_N14
\SU1|SRL64|Stage1_sig[62]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[62]~224_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\SU1|X_sig[63]~2_combout\)) # (!\B[0]~input_o\ & ((\SU1|X_sig[62]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SU1|X_sig[63]~2_combout\,
	datad => \SU1|X_sig[62]~3_combout\,
	combout => \SU1|SRL64|Stage1_sig[62]~224_combout\);

-- Location: LCCOMB_X72_Y33_N28
\SU1|SRL64|Stage1_sig[48]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~222_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[23]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[55]~input_o\,
	datac => \SU1|SwapWord~0_combout\,
	datad => \A[23]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~222_combout\);

-- Location: LCCOMB_X72_Y33_N2
\SU1|SRL64|Stage1_sig[48]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~221_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[25]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[57]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[25]~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~221_combout\);

-- Location: LCCOMB_X67_Y34_N6
\SU1|SRL64|Stage1_sig[54]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[54]~223_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~222_combout\) # ((\SU1|SRL64|Stage1_sig[48]~221_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[54]~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[48]~222_combout\,
	datac => \SU1|SRL64|Stage1_sig[54]~149_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~221_combout\,
	combout => \SU1|SRL64|Stage1_sig[54]~223_combout\);

-- Location: LCCOMB_X66_Y32_N4
\SU1|SRL64|Stage2_sig[50]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[50]~44_combout\ = (\SU1|SRL64|Stage2_sig[44]~31_combout\ & ((\SU1|SRL64|Stage1_sig[62]~224_combout\) # ((\SU1|SRA64|Equal5~0_combout\ & \SU1|SRL64|Stage1_sig[54]~223_combout\)))) # (!\SU1|SRL64|Stage2_sig[44]~31_combout\ & 
-- (((\SU1|SRA64|Equal5~0_combout\ & \SU1|SRL64|Stage1_sig[54]~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datab => \SU1|SRL64|Stage1_sig[62]~224_combout\,
	datac => \SU1|SRA64|Equal5~0_combout\,
	datad => \SU1|SRL64|Stage1_sig[54]~223_combout\,
	combout => \SU1|SRL64|Stage2_sig[50]~44_combout\);

-- Location: LCCOMB_X68_Y36_N6
\SU1|SRL64|Stage1_sig[48]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~219_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[19]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \A[19]~input_o\,
	datac => \SU1|SwapWord~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~219_combout\);

-- Location: LCCOMB_X69_Y35_N2
\SU1|SRL64|Stage1_sig[48]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~218_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[21]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[53]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[21]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[53]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~218_combout\);

-- Location: LCCOMB_X68_Y36_N12
\SU1|SRL64|Stage1_sig[50]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[50]~217_combout\ = (\SU1|SRL64|Stage1_sig[48]~145_combout\) # (\SU1|SRL64|Stage1_sig[48]~144_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~145_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~144_combout\,
	combout => \SU1|SRL64|Stage1_sig[50]~217_combout\);

-- Location: LCCOMB_X68_Y36_N24
\SU1|SRL64|Stage1_sig[50]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[50]~220_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~219_combout\) # ((\SU1|SRL64|Stage1_sig[48]~218_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[50]~217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~219_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~218_combout\,
	datad => \SU1|SRL64|Stage1_sig[50]~217_combout\,
	combout => \SU1|SRL64|Stage1_sig[50]~220_combout\);

-- Location: LCCOMB_X70_Y34_N4
\SU1|SRL64|Stage1_sig[48]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~214_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[27]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[59]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[59]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~214_combout\);

-- Location: LCCOMB_X66_Y34_N0
\SU1|SRL64|Stage1_sig[48]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~213_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[29]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \A[29]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SU1|SwapWord~0_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~213_combout\);

-- Location: LCCOMB_X66_Y34_N10
\SU1|SRL64|Stage1_sig[58]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[58]~215_combout\ = (\SU1|SRL64|Stage1_sig[48]~214_combout\) # (\SU1|SRL64|Stage1_sig[48]~213_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~214_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~213_combout\,
	combout => \SU1|SRL64|Stage1_sig[58]~215_combout\);

-- Location: LCCOMB_X66_Y34_N12
\SU1|SRL64|Stage1_sig[58]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[58]~216_combout\ = (\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[58]~215_combout\)) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~141_combout\) # (\SU1|SRL64|Stage1_sig[48]~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[58]~215_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~141_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~142_combout\,
	combout => \SU1|SRL64|Stage1_sig[58]~216_combout\);

-- Location: LCCOMB_X66_Y32_N8
\SU1|SRA64|Stage2_sig[50]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[50]~67_combout\ = (\SU1|SRL64|Stage1_sig[50]~220_combout\ & ((\SU1|SRA64|Stage2_sig[52]~62_combout\) # ((\SU1|SRL64|Stage1_sig[58]~216_combout\ & \SU1|SRA64|Stage2_sig[52]~66_combout\)))) # (!\SU1|SRL64|Stage1_sig[50]~220_combout\ & 
-- (((\SU1|SRL64|Stage1_sig[58]~216_combout\ & \SU1|SRA64|Stage2_sig[52]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[50]~220_combout\,
	datab => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datac => \SU1|SRL64|Stage1_sig[58]~216_combout\,
	datad => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	combout => \SU1|SRA64|Stage2_sig[50]~67_combout\);

-- Location: LCCOMB_X66_Y31_N22
\SU1|SRL64|Stage2_sig[50]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[50]~45_combout\ = (\SU1|SRL64|Stage2_sig[50]~44_combout\) # (\SU1|SRA64|Stage2_sig[50]~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage2_sig[50]~44_combout\,
	datac => \SU1|SRA64|Stage2_sig[50]~67_combout\,
	combout => \SU1|SRL64|Stage2_sig[50]~45_combout\);

-- Location: LCCOMB_X70_Y34_N26
\SU1|SRL64|Stage1_sig[48]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~202_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[11]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[43]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[43]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~202_combout\);

-- Location: LCCOMB_X67_Y36_N20
\SU1|SRL64|Stage1_sig[48]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~201_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[13]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[45]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[13]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[45]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~201_combout\);

-- Location: LCCOMB_X67_Y37_N20
\SU1|SRL64|Stage1_sig[42]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[42]~153_combout\ = (\SU1|SRL64|Stage1_sig[48]~152_combout\) # (\SU1|SRL64|Stage1_sig[48]~151_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~152_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~151_combout\,
	combout => \SU1|SRL64|Stage1_sig[42]~153_combout\);

-- Location: LCCOMB_X67_Y37_N6
\SU1|SRL64|Stage1_sig[42]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[42]~203_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~202_combout\) # ((\SU1|SRL64|Stage1_sig[48]~201_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[42]~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~202_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~201_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[42]~153_combout\,
	combout => \SU1|SRL64|Stage1_sig[42]~203_combout\);

-- Location: LCCOMB_X65_Y36_N12
\SU1|SRL64|Stage2_sig[34]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[34]~41_combout\ = (\SU1|SRL64|Stage1_sig[42]~203_combout\ & (!\B[2]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[42]~203_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	combout => \SU1|SRL64|Stage2_sig[34]~41_combout\);

-- Location: LCCOMB_X68_Y36_N10
\SU1|SRL64|Stage1_sig[48]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~207_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[17]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[17]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~207_combout\);

-- Location: LCCOMB_X70_Y36_N16
\SU1|SRL64|Stage1_sig[48]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~208_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[15]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[47]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[15]~input_o\,
	datad => \A[47]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~208_combout\);

-- Location: LCCOMB_X66_Y36_N16
\SU1|SRL64|Stage1_sig[46]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[46]~209_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~207_combout\) # ((\SU1|SRL64|Stage1_sig[48]~208_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[46]~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~207_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[46]~160_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~208_combout\,
	combout => \SU1|SRL64|Stage1_sig[46]~209_combout\);

-- Location: LCCOMB_X72_Y33_N16
\SU1|SRL64|Stage1_sig[48]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~205_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[7]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[39]~input_o\,
	datad => \A[7]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~205_combout\);

-- Location: LCCOMB_X67_Y35_N30
\SU1|SRL64|Stage1_sig[38]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[38]~163_combout\ = (\SU1|SRL64|Stage1_sig[48]~161_combout\) # (\SU1|SRL64|Stage1_sig[48]~162_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~161_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~162_combout\,
	combout => \SU1|SRL64|Stage1_sig[38]~163_combout\);

-- Location: LCCOMB_X72_Y33_N14
\SU1|SRL64|Stage1_sig[48]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~204_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[9]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[41]~input_o\,
	datad => \A[9]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~204_combout\);

-- Location: LCCOMB_X67_Y35_N0
\SU1|SRL64|Stage1_sig[38]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[38]~206_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~205_combout\) # ((\SU1|SRL64|Stage1_sig[48]~204_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[38]~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~205_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[38]~163_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~204_combout\,
	combout => \SU1|SRL64|Stage1_sig[38]~206_combout\);

-- Location: LCCOMB_X65_Y36_N22
\SU1|SRL64|Stage2_sig[34]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[34]~42_combout\ = (\SU1|SRL64|Stage1_sig[46]~209_combout\ & ((\SU1|SRL64|Stage2_sig[44]~31_combout\) # ((\SU1|SRA64|Equal5~0_combout\ & \SU1|SRL64|Stage1_sig[38]~206_combout\)))) # (!\SU1|SRL64|Stage1_sig[46]~209_combout\ & 
-- (\SU1|SRA64|Equal5~0_combout\ & (\SU1|SRL64|Stage1_sig[38]~206_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[46]~209_combout\,
	datab => \SU1|SRA64|Equal5~0_combout\,
	datac => \SU1|SRL64|Stage1_sig[38]~206_combout\,
	datad => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	combout => \SU1|SRL64|Stage2_sig[34]~42_combout\);

-- Location: LCCOMB_X75_Y35_N22
\SU1|SRL64|Stage1_sig[48]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~210_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[5]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[37]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[5]~input_o\,
	datad => \A[37]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~210_combout\);

-- Location: LCCOMB_X75_Y35_N16
\SU1|SRL64|Stage1_sig[48]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~211_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[3]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[35]~input_o\,
	datac => \SU1|SwapWord~0_combout\,
	datad => \A[3]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~211_combout\);

-- Location: LCCOMB_X67_Y35_N2
\SU1|SRL64|Stage1_sig[34]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[34]~212_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~210_combout\) # ((\SU1|SRL64|Stage1_sig[48]~211_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[34]~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~210_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~211_combout\,
	datad => \SU1|SRL64|Stage1_sig[34]~156_combout\,
	combout => \SU1|SRL64|Stage1_sig[34]~212_combout\);

-- Location: LCCOMB_X65_Y36_N0
\SU1|SRL64|Stage2_sig[34]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[34]~43_combout\ = (\SU1|SRL64|Stage2_sig[34]~41_combout\) # ((\SU1|SRL64|Stage2_sig[34]~42_combout\) # ((\SU1|SRA64|Stage2_sig[52]~62_combout\ & \SU1|SRL64|Stage1_sig[34]~212_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[34]~41_combout\,
	datab => \SU1|SRL64|Stage2_sig[34]~42_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datad => \SU1|SRL64|Stage1_sig[34]~212_combout\,
	combout => \SU1|SRL64|Stage2_sig[34]~43_combout\);

-- Location: LCCOMB_X66_Y31_N28
\SU1|SRA_SRL_sig[34]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[34]~12_combout\ = (\SU1|SRA_SRL_sig[41]~8_combout\ & ((\SU1|SRA_SRL_sig[41]~9_combout\ & (\SU1|SRL64|Stage2_sig[50]~45_combout\)) # (!\SU1|SRA_SRL_sig[41]~9_combout\ & ((\SU1|SRL64|Stage2_sig[34]~43_combout\))))) # 
-- (!\SU1|SRA_SRL_sig[41]~8_combout\ & (((!\SU1|SRA_SRL_sig[41]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[50]~45_combout\,
	datab => \SU1|SRL64|Stage2_sig[34]~43_combout\,
	datac => \SU1|SRA_SRL_sig[41]~8_combout\,
	datad => \SU1|SRA_SRL_sig[41]~9_combout\,
	combout => \SU1|SRA_SRL_sig[34]~12_combout\);

-- Location: LCCOMB_X66_Y34_N20
\SU1|SRA64|Stage1_sig[62]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage1_sig[62]~6_combout\ = (\B[1]~input_o\ & (((\SU1|X_sig[63]~2_combout\)))) # (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\SU1|X_sig[63]~2_combout\)) # (!\B[0]~input_o\ & ((\SU1|X_sig[62]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SU1|X_sig[63]~2_combout\,
	datad => \SU1|X_sig[62]~3_combout\,
	combout => \SU1|SRA64|Stage1_sig[62]~6_combout\);

-- Location: LCCOMB_X66_Y32_N18
\SU1|SRA64|Stage2_sig[50]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[50]~68_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\SU1|SRA64|Stage1_sig[62]~6_combout\)) # (!\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[54]~223_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage1_sig[62]~6_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[54]~223_combout\,
	combout => \SU1|SRA64|Stage2_sig[50]~68_combout\);

-- Location: LCCOMB_X66_Y31_N4
\SU1|SRA64|Stage2_sig[50]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[50]~69_combout\ = (\SU1|SRA64|Stage2_sig[50]~67_combout\) # (\SU1|SRA64|Stage2_sig[50]~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[50]~67_combout\,
	datac => \SU1|SRA64|Stage2_sig[50]~68_combout\,
	combout => \SU1|SRA64|Stage2_sig[50]~69_combout\);

-- Location: LCCOMB_X66_Y31_N30
\SU1|SRA_SRL_sig[34]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[34]~13_combout\ = (\SU1|SRA_SRL_sig[34]~12_combout\ & (((\SU1|SRA64|Stage2_sig[50]~69_combout\) # (!\SU1|SRA_SRL_sig[41]~7_combout\)))) # (!\SU1|SRA_SRL_sig[34]~12_combout\ & (\SU1|X_sig[63]~2_combout\ & 
-- ((\SU1|SRA_SRL_sig[41]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|X_sig[63]~2_combout\,
	datab => \SU1|SRA_SRL_sig[34]~12_combout\,
	datac => \SU1|SRA64|Stage2_sig[50]~69_combout\,
	datad => \SU1|SRA_SRL_sig[41]~7_combout\,
	combout => \SU1|SRA_SRL_sig[34]~13_combout\);

-- Location: LCCOMB_X70_Y31_N26
\Y~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~29_combout\ = (\Y~18_combout\ & (\SU1|SLL64|Stage2_sig[2]~94_combout\ & ((\Y~17_combout\)))) # (!\Y~18_combout\ & (((\SU1|SRA_SRL_sig[34]~13_combout\) # (!\Y~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~18_combout\,
	datab => \SU1|SLL64|Stage2_sig[2]~94_combout\,
	datac => \SU1|SRA_SRL_sig[34]~13_combout\,
	datad => \Y~17_combout\,
	combout => \Y~29_combout\);

-- Location: LCCOMB_X66_Y31_N8
\Y~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~27_combout\ = (\SU1|SRL64|Stage3_sig~42_combout\ & (((\Y~14_combout\)))) # (!\SU1|SRL64|Stage3_sig~42_combout\ & ((\Y~14_combout\ & ((\SU1|SRA64|Stage2_sig[50]~69_combout\))) # (!\Y~14_combout\ & (\SU1|SRL64|Stage2_sig[50]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[50]~45_combout\,
	datab => \SU1|SRL64|Stage3_sig~42_combout\,
	datac => \Y~14_combout\,
	datad => \SU1|SRA64|Stage2_sig[50]~69_combout\,
	combout => \Y~27_combout\);

-- Location: LCCOMB_X70_Y34_N14
\SU1|SRL64|Stage1_sig[48]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~228_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[57]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[57]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~228_combout\);

-- Location: LCCOMB_X72_Y33_N30
\SU1|SRL64|Stage1_sig[48]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~229_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[55]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[23]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[55]~input_o\,
	datac => \SU1|SwapWord~0_combout\,
	datad => \A[23]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~229_combout\);

-- Location: LCCOMB_X69_Y34_N8
\SU1|SRL64|Stage1_sig[22]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[22]~174_combout\ = (\SU1|SRL64|Stage1_sig[48]~173_combout\) # (\SU1|SRL64|Stage1_sig[48]~172_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~173_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~172_combout\,
	combout => \SU1|SRL64|Stage1_sig[22]~174_combout\);

-- Location: LCCOMB_X69_Y34_N26
\SU1|SRL64|Stage1_sig[22]~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[22]~286_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~228_combout\) # ((\SU1|SRL64|Stage1_sig[48]~229_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[22]~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[48]~228_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~229_combout\,
	datad => \SU1|SRL64|Stage1_sig[22]~174_combout\,
	combout => \SU1|SRL64|Stage1_sig[22]~286_combout\);

-- Location: LCCOMB_X66_Y35_N22
\SU1|SRL64|Stage1_sig[48]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~226_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[63]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[31]~input_o\,
	datac => \A[63]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~226_combout\);

-- Location: LCCOMB_X76_Y35_N28
\SU1|SRL64|Stage1_sig[48]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~225_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[1]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[33]~input_o\,
	datad => \A[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~225_combout\);

-- Location: LCCOMB_X66_Y35_N10
\SU1|SRL64|Stage1_sig[30]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[30]~168_combout\ = (\SU1|SRL64|Stage1_sig[48]~167_combout\) # (\SU1|SRL64|Stage1_sig[48]~166_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~167_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~166_combout\,
	combout => \SU1|SRL64|Stage1_sig[30]~168_combout\);

-- Location: LCCOMB_X66_Y35_N0
\SU1|SRL64|Stage1_sig[30]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[30]~227_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~226_combout\) # ((\SU1|SRL64|Stage1_sig[48]~225_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[30]~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~226_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~225_combout\,
	datad => \SU1|SRL64|Stage1_sig[30]~168_combout\,
	combout => \SU1|SRL64|Stage1_sig[30]~227_combout\);

-- Location: LCCOMB_X65_Y36_N2
\SU1|SRL64|Stage2_sig[22]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[22]~46_combout\ = (\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[30]~227_combout\))) # (!\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[22]~286_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[22]~286_combout\,
	datab => \B[3]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[30]~227_combout\,
	combout => \SU1|SRL64|Stage2_sig[22]~46_combout\);

-- Location: LCCOMB_X65_Y34_N0
\SU1|SRL64|Stage1_sig[48]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~232_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[61]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[29]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[61]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[29]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~232_combout\);

-- Location: LCCOMB_X70_Y34_N24
\SU1|SRL64|Stage1_sig[48]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~231_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[59]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[59]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~231_combout\);

-- Location: LCCOMB_X69_Y34_N2
\SU1|SRL64|Stage1_sig[26]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[26]~180_combout\ = (\SU1|SRL64|Stage1_sig[48]~178_combout\) # (\SU1|SRL64|Stage1_sig[48]~179_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~178_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~179_combout\,
	combout => \SU1|SRL64|Stage1_sig[26]~180_combout\);

-- Location: LCCOMB_X65_Y35_N2
\SU1|SRL64|Stage1_sig[26]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[26]~233_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~232_combout\) # ((\SU1|SRL64|Stage1_sig[48]~231_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[26]~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[48]~232_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~231_combout\,
	datad => \SU1|SRL64|Stage1_sig[26]~180_combout\,
	combout => \SU1|SRL64|Stage1_sig[26]~233_combout\);

-- Location: LCCOMB_X68_Y36_N2
\SU1|SRL64|Stage1_sig[48]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~235_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[51]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \A[19]~input_o\,
	datac => \SU1|SwapWord~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~235_combout\);

-- Location: LCCOMB_X69_Y35_N12
\SU1|SRL64|Stage1_sig[48]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~234_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[53]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[21]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[53]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~234_combout\);

-- Location: LCCOMB_X69_Y35_N24
\SU1|SRL64|Stage1_sig[18]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[18]~186_combout\ = (\SU1|SRL64|Stage1_sig[48]~184_combout\) # (\SU1|SRL64|Stage1_sig[48]~185_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~184_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~185_combout\,
	combout => \SU1|SRL64|Stage1_sig[18]~186_combout\);

-- Location: LCCOMB_X69_Y35_N14
\SU1|SRL64|Stage1_sig[18]~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[18]~287_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~235_combout\) # ((\SU1|SRL64|Stage1_sig[48]~234_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[18]~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~235_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~234_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[18]~186_combout\,
	combout => \SU1|SRL64|Stage1_sig[18]~287_combout\);

-- Location: LCCOMB_X65_Y35_N12
\SU1|SRL64|Stage2_sig[48]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~47_combout\ = (\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[26]~233_combout\)) # (!\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[18]~287_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[26]~233_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[18]~287_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~47_combout\);

-- Location: LCCOMB_X68_Y34_N8
\SU1|SRL64|Stage2_sig[18]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[18]~48_combout\ = (\B[2]~input_o\ & (\SU1|SRL64|Stage2_sig[22]~46_combout\)) # (!\B[2]~input_o\ & ((\SU1|SRL64|Stage2_sig[48]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SU1|SRL64|Stage2_sig[22]~46_combout\,
	datad => \SU1|SRL64|Stage2_sig[48]~47_combout\,
	combout => \SU1|SRL64|Stage2_sig[18]~48_combout\);

-- Location: LCCOMB_X66_Y31_N10
\Y~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~28_combout\ = (\SU1|SRL64|Stage3_sig~42_combout\ & ((\Y~27_combout\ & ((\SU1|SRL64|Stage2_sig[18]~48_combout\))) # (!\Y~27_combout\ & (\SU1|SRL64|Stage2_sig[34]~43_combout\)))) # (!\SU1|SRL64|Stage3_sig~42_combout\ & (((\Y~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[34]~43_combout\,
	datab => \SU1|SRL64|Stage3_sig~42_combout\,
	datac => \Y~27_combout\,
	datad => \SU1|SRL64|Stage2_sig[18]~48_combout\,
	combout => \Y~28_combout\);

-- Location: LCCOMB_X70_Y31_N20
\Y~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~30_combout\ = (\SU1|Y[0]~9_combout\ & ((\Y~29_combout\ & ((\Y~28_combout\))) # (!\Y~29_combout\ & (\Y~26_combout\)))) # (!\SU1|Y[0]~9_combout\ & (((\Y~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~26_combout\,
	datab => \SU1|Y[0]~9_combout\,
	datac => \Y~29_combout\,
	datad => \Y~28_combout\,
	combout => \Y~30_combout\);

-- Location: LCCOMB_X73_Y29_N20
\Y~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~31_combout\ = (\Y~10_combout\ & ((\Y~21_combout\ & (\Y~30_combout\)) # (!\Y~21_combout\ & ((\AU1|Adder|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~10_combout\,
	datab => \Y~21_combout\,
	datac => \Y~30_combout\,
	datad => \AU1|Adder|Add0~6_combout\,
	combout => \Y~31_combout\);

-- Location: LCCOMB_X73_Y29_N14
\Y~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~32_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y~32_combout\);

-- Location: LCCOMB_X73_Y29_N8
\Y~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~33_combout\ = (\Y~31_combout\) # ((!\FuncClass[1]~input_o\ & (\FuncClass[0]~input_o\ & \Y~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Y~31_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y~32_combout\,
	combout => \Y~33_combout\);

-- Location: LCCOMB_X67_Y34_N0
\SU1|SRL64|Stage1_sig[55]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[55]~245_combout\ = (\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[56]~89_combout\)) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~222_combout\) # (\SU1|SRL64|Stage1_sig[48]~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[56]~89_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~222_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~221_combout\,
	combout => \SU1|SRL64|Stage1_sig[55]~245_combout\);

-- Location: LCCOMB_X69_Y31_N26
\SU1|SRA64|Stage2_sig[55]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[55]~72_combout\ = (!\B[3]~input_o\ & \SU1|SRL64|Stage1_sig[55]~245_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[55]~245_combout\,
	combout => \SU1|SRA64|Stage2_sig[55]~72_combout\);

-- Location: LCCOMB_X68_Y34_N26
\SU1|SRL64|Stage1_sig[51]~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[51]~244_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[52]~102_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~219_combout\) # ((\SU1|SRL64|Stage1_sig[48]~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~219_combout\,
	datab => \SU1|SRL64|Stage1_sig[52]~102_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~218_combout\,
	combout => \SU1|SRL64|Stage1_sig[51]~244_combout\);

-- Location: LCCOMB_X65_Y34_N18
\SU1|SRL64|Stage1_sig[59]~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[59]~242_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[30]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[62]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \A[62]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SU1|SwapWord~0_combout\,
	combout => \SU1|SRL64|Stage1_sig[59]~242_combout\);

-- Location: LCCOMB_X66_Y34_N8
\SU1|SRL64|Stage1_sig[59]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[59]~243_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~98_combout\) # (\SU1|SRL64|Stage1_sig[59]~242_combout\)))) # (!\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[58]~215_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[58]~215_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~98_combout\,
	datad => \SU1|SRL64|Stage1_sig[59]~242_combout\,
	combout => \SU1|SRL64|Stage1_sig[59]~243_combout\);

-- Location: LCCOMB_X69_Y31_N16
\SU1|SRA64|Stage2_sig[51]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[51]~70_combout\ = (\SU1|SRA64|Stage2_sig[52]~66_combout\ & ((\SU1|SRL64|Stage1_sig[59]~243_combout\) # ((\SU1|SRL64|Stage1_sig[51]~244_combout\ & \SU1|SRA64|Stage2_sig[52]~62_combout\)))) # (!\SU1|SRA64|Stage2_sig[52]~66_combout\ & 
-- (\SU1|SRL64|Stage1_sig[51]~244_combout\ & (\SU1|SRA64|Stage2_sig[52]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datab => \SU1|SRL64|Stage1_sig[51]~244_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datad => \SU1|SRL64|Stage1_sig[59]~243_combout\,
	combout => \SU1|SRA64|Stage2_sig[51]~70_combout\);

-- Location: LCCOMB_X70_Y35_N24
\SU1|SRA64|Stage2_sig[51]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[51]~71_combout\ = (\B[3]~input_o\ & \SU1|X_sig[63]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SU1|X_sig[63]~2_combout\,
	combout => \SU1|SRA64|Stage2_sig[51]~71_combout\);

-- Location: LCCOMB_X69_Y31_N20
\SU1|SRA64|Stage2_sig[51]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[51]~73_combout\ = (\SU1|SRA64|Stage2_sig[51]~70_combout\) # ((\B[2]~input_o\ & ((\SU1|SRA64|Stage2_sig[55]~72_combout\) # (\SU1|SRA64|Stage2_sig[51]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[55]~72_combout\,
	datab => \SU1|SRA64|Stage2_sig[51]~70_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SRA64|Stage2_sig[51]~71_combout\,
	combout => \SU1|SRA64|Stage2_sig[51]~73_combout\);

-- Location: LCCOMB_X65_Y35_N16
\SU1|SRL64|Stage1_sig[27]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[27]~255_combout\ = (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~231_combout\) # (\SU1|SRL64|Stage1_sig[48]~232_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~231_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~232_combout\,
	combout => \SU1|SRL64|Stage1_sig[27]~255_combout\);

-- Location: LCCOMB_X65_Y34_N4
\SU1|SRL64|Stage1_sig[48]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~256_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[62]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \A[62]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SU1|SwapWord~0_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~256_combout\);

-- Location: LCCOMB_X70_Y37_N8
\SU1|SRL64|Stage1_sig[48]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~257_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[60]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \A[60]~input_o\,
	datad => \A[28]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~257_combout\);

-- Location: LCCOMB_X65_Y35_N26
\SU1|SRL64|Stage1_sig[27]~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[27]~258_combout\ = (\SU1|SRL64|Stage1_sig[27]~255_combout\) # ((\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~256_combout\) # (\SU1|SRL64|Stage1_sig[48]~257_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[27]~255_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~256_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~257_combout\,
	combout => \SU1|SRL64|Stage1_sig[27]~258_combout\);

-- Location: LCCOMB_X69_Y35_N18
\SU1|SRL64|Stage1_sig[48]~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~260_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[52]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[20]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[52]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[20]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~260_combout\);

-- Location: LCCOMB_X76_Y35_N14
\SU1|SRL64|Stage1_sig[48]~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~259_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[54]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \SU1|SwapWord~0_combout\,
	datac => \B[1]~input_o\,
	datad => \A[54]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~259_combout\);

-- Location: LCCOMB_X69_Y35_N22
\SU1|SRL64|Stage1_sig[19]~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[19]~236_combout\ = (\SU1|SRL64|Stage1_sig[48]~234_combout\) # (\SU1|SRL64|Stage1_sig[48]~235_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~234_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~235_combout\,
	combout => \SU1|SRL64|Stage1_sig[19]~236_combout\);

-- Location: LCCOMB_X69_Y36_N30
\SU1|SRL64|Stage1_sig[19]~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[19]~261_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~260_combout\) # ((\SU1|SRL64|Stage1_sig[48]~259_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[19]~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[48]~260_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~259_combout\,
	datad => \SU1|SRL64|Stage1_sig[19]~236_combout\,
	combout => \SU1|SRL64|Stage1_sig[19]~261_combout\);

-- Location: LCCOMB_X68_Y33_N6
\SU1|SRL64|Stage2_sig[48]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~55_combout\ = (\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[27]~258_combout\)) # (!\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[19]~261_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[27]~258_combout\,
	datad => \SU1|SRL64|Stage1_sig[19]~261_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~55_combout\);

-- Location: LCCOMB_X66_Y35_N2
\SU1|SRL64|Stage1_sig[31]~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[31]~251_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[32]~126_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~226_combout\) # ((\SU1|SRL64|Stage1_sig[48]~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~226_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~225_combout\,
	datad => \SU1|SRL64|Stage1_sig[32]~126_combout\,
	combout => \SU1|SRL64|Stage1_sig[31]~251_combout\);

-- Location: LCCOMB_X75_Y34_N22
\SU1|SRL64|Stage1_sig[48]~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~252_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[56]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[56]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~252_combout\);

-- Location: LCCOMB_X76_Y37_N22
\SU1|SRL64|Stage1_sig[48]~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~253_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[58]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[58]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~253_combout\);

-- Location: LCCOMB_X69_Y34_N6
\SU1|SRL64|Stage1_sig[23]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[23]~230_combout\ = (\SU1|SRL64|Stage1_sig[48]~228_combout\) # (\SU1|SRL64|Stage1_sig[48]~229_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~228_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~229_combout\,
	combout => \SU1|SRL64|Stage1_sig[23]~230_combout\);

-- Location: LCCOMB_X69_Y34_N16
\SU1|SRL64|Stage1_sig[23]~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[23]~254_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~252_combout\) # ((\SU1|SRL64|Stage1_sig[48]~253_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[23]~230_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~252_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~253_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[23]~230_combout\,
	combout => \SU1|SRL64|Stage1_sig[23]~254_combout\);

-- Location: LCCOMB_X68_Y33_N12
\SU1|SRL64|Stage2_sig[23]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[23]~54_combout\ = (\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[31]~251_combout\)) # (!\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[23]~254_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[31]~251_combout\,
	datad => \SU1|SRL64|Stage1_sig[23]~254_combout\,
	combout => \SU1|SRL64|Stage2_sig[23]~54_combout\);

-- Location: LCCOMB_X68_Y33_N0
\SU1|SRL64|Stage2_sig[19]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[19]~56_combout\ = (\B[2]~input_o\ & ((\SU1|SRL64|Stage2_sig[23]~54_combout\))) # (!\B[2]~input_o\ & (\SU1|SRL64|Stage2_sig[48]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[48]~55_combout\,
	datab => \B[2]~input_o\,
	datad => \SU1|SRL64|Stage2_sig[23]~54_combout\,
	combout => \SU1|SRL64|Stage2_sig[19]~56_combout\);

-- Location: LCCOMB_X67_Y37_N16
\SU1|SRL64|Stage1_sig[40]~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[40]~249_combout\ = (\SU1|SRL64|Stage1_sig[48]~115_combout\) # (\SU1|SRL64|Stage1_sig[48]~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~115_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~116_combout\,
	combout => \SU1|SRL64|Stage1_sig[40]~249_combout\);

-- Location: LCCOMB_X67_Y35_N6
\SU1|SRL64|Stage1_sig[39]~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[39]~250_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[40]~249_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~205_combout\) # ((\SU1|SRL64|Stage1_sig[48]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~205_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[40]~249_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~204_combout\,
	combout => \SU1|SRL64|Stage1_sig[39]~250_combout\);

-- Location: LCCOMB_X66_Y36_N26
\SU1|SRL64|Stage1_sig[43]~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[43]~246_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[44]~111_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~202_combout\) # ((\SU1|SRL64|Stage1_sig[48]~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[48]~202_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~201_combout\,
	datad => \SU1|SRL64|Stage1_sig[44]~111_combout\,
	combout => \SU1|SRL64|Stage1_sig[43]~246_combout\);

-- Location: LCCOMB_X67_Y35_N20
\SU1|SRL64|Stage1_sig[35]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[35]~247_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[36]~123_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~210_combout\) # ((\SU1|SRL64|Stage1_sig[48]~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~210_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~211_combout\,
	datad => \SU1|SRL64|Stage1_sig[36]~123_combout\,
	combout => \SU1|SRL64|Stage1_sig[35]~247_combout\);

-- Location: LCCOMB_X68_Y33_N24
\SU1|SRL64|Stage2_sig[35]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[35]~51_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\SU1|SRL64|Stage1_sig[35]~247_combout\) # ((\SU1|SRA64|Stage2_sig[52]~66_combout\ & \SU1|SRL64|Stage1_sig[43]~246_combout\)))) # (!\SU1|SRA64|Stage2_sig[52]~62_combout\ & 
-- (\SU1|SRA64|Stage2_sig[52]~66_combout\ & (\SU1|SRL64|Stage1_sig[43]~246_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datab => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datac => \SU1|SRL64|Stage1_sig[43]~246_combout\,
	datad => \SU1|SRL64|Stage1_sig[35]~247_combout\,
	combout => \SU1|SRL64|Stage2_sig[35]~51_combout\);

-- Location: LCCOMB_X66_Y36_N4
\SU1|SRL64|Stage1_sig[47]~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[47]~248_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~95_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~207_combout\) # ((\SU1|SRL64|Stage1_sig[48]~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~207_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~95_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~208_combout\,
	combout => \SU1|SRL64|Stage1_sig[47]~248_combout\);

-- Location: LCCOMB_X68_Y33_N30
\SU1|SRL64|Stage2_sig[35]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[35]~135_combout\ = (\B[3]~input_o\ & (\B[2]~input_o\ & \SU1|SRL64|Stage1_sig[47]~248_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[47]~248_combout\,
	combout => \SU1|SRL64|Stage2_sig[35]~135_combout\);

-- Location: LCCOMB_X68_Y33_N18
\SU1|SRL64|Stage2_sig[35]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[35]~52_combout\ = (\SU1|SRL64|Stage2_sig[35]~51_combout\) # ((\SU1|SRL64|Stage2_sig[35]~135_combout\) # ((\SU1|SRL64|Stage1_sig[39]~250_combout\ & \SU1|SRA64|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[39]~250_combout\,
	datab => \SU1|SRL64|Stage2_sig[35]~51_combout\,
	datac => \SU1|SRL64|Stage2_sig[35]~135_combout\,
	datad => \SU1|SRA64|Equal5~0_combout\,
	combout => \SU1|SRL64|Stage2_sig[35]~52_combout\);

-- Location: LCCOMB_X69_Y31_N30
\SU1|SRL64|Stage2_sig[51]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[51]~136_combout\ = (\B[3]~input_o\ & (!\B[0]~input_o\ & (!\B[1]~input_o\ & \SU1|X_sig[63]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SU1|X_sig[63]~2_combout\,
	combout => \SU1|SRL64|Stage2_sig[51]~136_combout\);

-- Location: LCCOMB_X69_Y31_N14
\SU1|SRL64|Stage2_sig[51]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[51]~53_combout\ = (\SU1|SRA64|Stage2_sig[51]~70_combout\) # ((\B[2]~input_o\ & ((\SU1|SRA64|Stage2_sig[55]~72_combout\) # (\SU1|SRL64|Stage2_sig[51]~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[55]~72_combout\,
	datab => \SU1|SRA64|Stage2_sig[51]~70_combout\,
	datac => \SU1|SRL64|Stage2_sig[51]~136_combout\,
	datad => \B[2]~input_o\,
	combout => \SU1|SRL64|Stage2_sig[51]~53_combout\);

-- Location: LCCOMB_X72_Y31_N10
\Y~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~36_combout\ = (\SU1|SRL64|Stage3_sig~42_combout\ & ((\SU1|SRL64|Stage2_sig[35]~52_combout\) # ((\Y~14_combout\)))) # (!\SU1|SRL64|Stage3_sig~42_combout\ & (((!\Y~14_combout\ & \SU1|SRL64|Stage2_sig[51]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[35]~52_combout\,
	datab => \SU1|SRL64|Stage3_sig~42_combout\,
	datac => \Y~14_combout\,
	datad => \SU1|SRL64|Stage2_sig[51]~53_combout\,
	combout => \Y~36_combout\);

-- Location: LCCOMB_X72_Y31_N12
\Y~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~37_combout\ = (\Y~14_combout\ & ((\Y~36_combout\ & ((\SU1|SRL64|Stage2_sig[19]~56_combout\))) # (!\Y~36_combout\ & (\SU1|SRA64|Stage2_sig[51]~73_combout\)))) # (!\Y~14_combout\ & (((\Y~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~14_combout\,
	datab => \SU1|SRA64|Stage2_sig[51]~73_combout\,
	datac => \SU1|SRL64|Stage2_sig[19]~56_combout\,
	datad => \Y~36_combout\,
	combout => \Y~37_combout\);

-- Location: LCCOMB_X72_Y31_N30
\SU1|SRA_SRL_sig[35]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[35]~14_combout\ = (\SU1|SRA_SRL_sig[41]~9_combout\ & (((\SU1|SRA_SRL_sig[41]~8_combout\ & \SU1|SRL64|Stage2_sig[51]~53_combout\)))) # (!\SU1|SRA_SRL_sig[41]~9_combout\ & ((\SU1|SRL64|Stage2_sig[35]~52_combout\) # 
-- ((!\SU1|SRA_SRL_sig[41]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[35]~52_combout\,
	datab => \SU1|SRA_SRL_sig[41]~9_combout\,
	datac => \SU1|SRA_SRL_sig[41]~8_combout\,
	datad => \SU1|SRL64|Stage2_sig[51]~53_combout\,
	combout => \SU1|SRA_SRL_sig[35]~14_combout\);

-- Location: LCCOMB_X72_Y31_N24
\SU1|SRA_SRL_sig[35]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[35]~15_combout\ = (\SU1|SRA_SRL_sig[41]~7_combout\ & ((\SU1|SRA_SRL_sig[35]~14_combout\ & (\SU1|SRA64|Stage2_sig[51]~73_combout\)) # (!\SU1|SRA_SRL_sig[35]~14_combout\ & ((\SU1|X_sig[63]~2_combout\))))) # (!\SU1|SRA_SRL_sig[41]~7_combout\ 
-- & (((\SU1|SRA_SRL_sig[35]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[41]~7_combout\,
	datab => \SU1|SRA64|Stage2_sig[51]~73_combout\,
	datac => \SU1|SRA_SRL_sig[35]~14_combout\,
	datad => \SU1|X_sig[63]~2_combout\,
	combout => \SU1|SRA_SRL_sig[35]~15_combout\);

-- Location: LCCOMB_X75_Y35_N26
\SU1|SLL64|Stage1_sig[3]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[3]~65_combout\ = (\SU1|SRL64|Stage1_sig[48]~191_combout\) # ((\B[1]~input_o\ & \SU1|X_sig[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SU1|X_sig[1]~0_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~191_combout\,
	combout => \SU1|SLL64|Stage1_sig[3]~65_combout\);

-- Location: LCCOMB_X72_Y36_N26
\SU1|SLL64|Stage2_sig[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[3]~12_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[3]~63_combout\)) # (!\B[0]~input_o\ & ((\SU1|SLL64|Stage1_sig[3]~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[3]~63_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datad => \SU1|SLL64|Stage1_sig[3]~65_combout\,
	combout => \SU1|SLL64|Stage2_sig[3]~12_combout\);

-- Location: LCCOMB_X72_Y31_N2
\Y~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~38_combout\ = (\Y~18_combout\ & (((\Y~17_combout\ & \SU1|SLL64|Stage2_sig[3]~12_combout\)))) # (!\Y~18_combout\ & ((\SU1|SRA_SRL_sig[35]~15_combout\) # ((!\Y~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~18_combout\,
	datab => \SU1|SRA_SRL_sig[35]~15_combout\,
	datac => \Y~17_combout\,
	datad => \SU1|SLL64|Stage2_sig[3]~12_combout\,
	combout => \Y~38_combout\);

-- Location: LCCOMB_X72_Y37_N30
\SU1|SRL64|Stage2_sig[48]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~49_combout\ = (\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[8]~69_combout\)) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~200_combout\) # (\SU1|SRL64|Stage1_sig[48]~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[8]~69_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~200_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~199_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~49_combout\);

-- Location: LCCOMB_X67_Y36_N6
\SU1|SRL64|Stage1_sig[48]~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~240_combout\ = (!\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & (\A[48]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[48]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[16]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~240_combout\);

-- Location: LCCOMB_X69_Y35_N16
\SU1|SRL64|Stage1_sig[48]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~239_combout\ = (\B[1]~input_o\ & ((\SU1|SwapWord~0_combout\ & ((\A[50]~input_o\))) # (!\SU1|SwapWord~0_combout\ & (\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SwapWord~0_combout\,
	datab => \A[18]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[50]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~239_combout\);

-- Location: LCCOMB_X70_Y36_N18
\SU1|SRL64|Stage1_sig[15]~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[15]~238_combout\ = (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~196_combout\) # (\SU1|SRL64|Stage1_sig[48]~197_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~196_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~197_combout\,
	datac => \B[0]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[15]~238_combout\);

-- Location: LCCOMB_X69_Y36_N4
\SU1|SRL64|Stage1_sig[15]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[15]~241_combout\ = (\SU1|SRL64|Stage1_sig[15]~238_combout\) # ((\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~240_combout\) # (\SU1|SRL64|Stage1_sig[48]~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~240_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~239_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[15]~238_combout\,
	combout => \SU1|SRL64|Stage1_sig[15]~241_combout\);

-- Location: LCCOMB_X68_Y37_N24
\SU1|SRL64|Stage2_sig[48]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~50_combout\ = (\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[15]~241_combout\))) # (!\B[3]~input_o\ & (\SU1|SRL64|Stage2_sig[48]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage2_sig[48]~49_combout\,
	datac => \SU1|SRL64|Stage1_sig[15]~241_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SRL64|Stage2_sig[48]~50_combout\);

-- Location: LCCOMB_X65_Y35_N6
\SU1|SRL64|Stage1_sig[11]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[11]~237_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[12]~83_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~193_combout\) # ((\SU1|SRL64|Stage1_sig[48]~194_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[48]~193_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~194_combout\,
	datad => \SU1|SRL64|Stage1_sig[12]~83_combout\,
	combout => \SU1|SRL64|Stage1_sig[11]~237_combout\);

-- Location: LCCOMB_X72_Y35_N6
\Y~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~34_combout\ = (\Y~11_combout\ & (((\SU1|SRL64|Stage1_sig[48]~77_combout\) # (!\SU1|SRA64|Stage2_sig[52]~62_combout\)))) # (!\Y~11_combout\ & (\SU1|SRL64|Stage1_sig[48]~192_combout\ & ((\SU1|SRA64|Stage2_sig[52]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~192_combout\,
	datab => \Y~11_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~77_combout\,
	datad => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	combout => \Y~34_combout\);

-- Location: LCCOMB_X72_Y31_N16
\Y~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~35_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & (((\Y~34_combout\)))) # (!\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\Y~34_combout\ & (\SU1|SRL64|Stage2_sig[48]~50_combout\)) # (!\Y~34_combout\ & ((\SU1|SRL64|Stage1_sig[11]~237_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datab => \SU1|SRL64|Stage2_sig[48]~50_combout\,
	datac => \SU1|SRL64|Stage1_sig[11]~237_combout\,
	datad => \Y~34_combout\,
	combout => \Y~35_combout\);

-- Location: LCCOMB_X72_Y31_N4
\Y~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~39_combout\ = (\Y~38_combout\ & ((\Y~37_combout\) # ((!\SU1|Y[0]~9_combout\)))) # (!\Y~38_combout\ & (((\SU1|Y[0]~9_combout\ & \Y~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~37_combout\,
	datab => \Y~38_combout\,
	datac => \SU1|Y[0]~9_combout\,
	datad => \Y~35_combout\,
	combout => \Y~39_combout\);

-- Location: LCCOMB_X76_Y33_N10
\Y~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~40_combout\ = (\Y~10_combout\ & ((\Y~21_combout\ & (\Y~39_combout\)) # (!\Y~21_combout\ & ((\AU1|Adder|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~39_combout\,
	datab => \Y~21_combout\,
	datac => \AU1|Adder|Add0~8_combout\,
	datad => \Y~10_combout\,
	combout => \Y~40_combout\);

-- Location: LCCOMB_X75_Y35_N4
\Y~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~41_combout\ = (\B[3]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[3]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Y~41_combout\);

-- Location: LCCOMB_X73_Y33_N24
\Y~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~42_combout\ = (\Y~40_combout\) # ((\Y~41_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~40_combout\,
	datab => \Y~41_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~42_combout\);

-- Location: LCCOMB_X68_Y35_N16
\SU1|SLL64|Stage2_sig[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[4]~13_combout\ = (!\SU1|SRA64|Equal2~0_combout\ & ((\SU1|SwapWord~0_combout\ & (\A[32]~input_o\)) # (!\SU1|SwapWord~0_combout\ & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \SU1|SRA64|Equal2~0_combout\,
	datac => \A[0]~input_o\,
	datad => \SU1|SwapWord~0_combout\,
	combout => \SU1|SLL64|Stage2_sig[4]~13_combout\);

-- Location: LCCOMB_X72_Y35_N22
\SU1|SLL64|Stage1_sig[4]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[4]~138_combout\ = (\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[3]~65_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~72_combout\) # ((\SU1|SRL64|Stage1_sig[48]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~72_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[3]~65_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~76_combout\,
	combout => \SU1|SLL64|Stage1_sig[4]~138_combout\);

-- Location: LCCOMB_X72_Y32_N26
\SU1|SLL64|Stage2_sig[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[4]~14_combout\ = (\SU1|SRA64|Equal5~0_combout\ & ((\SU1|SLL64|Stage2_sig[4]~13_combout\) # ((\SU1|SLL64|Stage1_sig[4]~138_combout\ & \SU1|SRA64|Stage2_sig[52]~62_combout\)))) # (!\SU1|SRA64|Equal5~0_combout\ & 
-- (((\SU1|SLL64|Stage1_sig[4]~138_combout\ & \SU1|SRA64|Stage2_sig[52]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Equal5~0_combout\,
	datab => \SU1|SLL64|Stage2_sig[4]~13_combout\,
	datac => \SU1|SLL64|Stage1_sig[4]~138_combout\,
	datad => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	combout => \SU1|SLL64|Stage2_sig[4]~14_combout\);

-- Location: LCCOMB_X75_Y33_N2
\Y~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~46_combout\ = (\B[4]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[4]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[4]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Y~46_combout\);

-- Location: LCCOMB_X73_Y33_N6
\Y~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~47_combout\ = (\Y~46_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~46_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~47_combout\);

-- Location: LCCOMB_X73_Y33_N20
\Y~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~44_combout\ = (\ShiftFN[1]~input_o\) # ((\FuncClass[0]~input_o\) # (\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~44_combout\);

-- Location: LCCOMB_X69_Y36_N16
\SU1|SRL64|Stage1_sig[16]~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[16]~262_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[17]~189_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~240_combout\) # ((\SU1|SRL64|Stage1_sig[48]~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~240_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~239_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[17]~189_combout\,
	combout => \SU1|SRL64|Stage1_sig[16]~262_combout\);

-- Location: LCCOMB_X69_Y33_N10
\SU1|SRL64|Stage2_sig[48]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~57_combout\ = (\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[16]~262_combout\)) # (!\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[8]~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[16]~262_combout\,
	datad => \SU1|SRL64|Stage1_sig[8]~272_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~57_combout\);

-- Location: LCCOMB_X69_Y33_N12
\Y~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~48_combout\ = (!\ExtWord~input_o\ & ((\B[5]~input_o\) # ((\B[2]~input_o\) # (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[2]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y~48_combout\);

-- Location: LCCOMB_X67_Y31_N10
\SU1|SRA64|Stage2_sig[52]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[52]~75_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\SU1|SRL64|Stage1_sig[52]~105_combout\) # ((\SU1|SRA64|Stage2_sig[52]~66_combout\ & \SU1|SRL64|Stage1_sig[60]~99_combout\)))) # (!\SU1|SRA64|Stage2_sig[52]~62_combout\ & 
-- (((\SU1|SRA64|Stage2_sig[52]~66_combout\ & \SU1|SRL64|Stage1_sig[60]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datab => \SU1|SRL64|Stage1_sig[52]~105_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datad => \SU1|SRL64|Stage1_sig[60]~99_combout\,
	combout => \SU1|SRA64|Stage2_sig[52]~75_combout\);

-- Location: LCCOMB_X67_Y31_N22
\SU1|SRL64|Stage2_sig[52]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[52]~137_combout\ = (!\SU1|SRA64|Stage2_sig[52]~75_combout\ & ((\B[3]~input_o\) # ((!\SU1|SRL64|Stage1_sig[56]~274_combout\) # (!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SU1|SRA64|Stage2_sig[52]~75_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[56]~274_combout\,
	combout => \SU1|SRL64|Stage2_sig[52]~137_combout\);

-- Location: LCCOMB_X67_Y31_N14
\SU1|SRL64|Stage2_sig[36]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[36]~59_combout\ = (\SU1|SRL64|Stage1_sig[48]~275_combout\ & ((\SU1|SRL64|Stage2_sig[44]~31_combout\) # ((\SU1|SRL64|Stage1_sig[40]~117_combout\ & \SU1|SRA64|Equal5~0_combout\)))) # (!\SU1|SRL64|Stage1_sig[48]~275_combout\ & 
-- (\SU1|SRL64|Stage1_sig[40]~117_combout\ & ((\SU1|SRA64|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~275_combout\,
	datab => \SU1|SRL64|Stage1_sig[40]~117_combout\,
	datac => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datad => \SU1|SRA64|Equal5~0_combout\,
	combout => \SU1|SRL64|Stage2_sig[36]~59_combout\);

-- Location: LCCOMB_X67_Y35_N16
\SU1|SRL64|Stage2_sig[36]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[36]~58_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[37]~120_combout\)) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[36]~123_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[37]~120_combout\,
	datad => \SU1|SRL64|Stage1_sig[36]~123_combout\,
	combout => \SU1|SRL64|Stage2_sig[36]~58_combout\);

-- Location: LCCOMB_X67_Y31_N24
\SU1|SRL64|Stage2_sig[36]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[36]~60_combout\ = (\SU1|SRL64|Stage2_sig[36]~59_combout\) # ((\SU1|SRL64|Stage2_sig[36]~58_combout\) # ((\SU1|SRL64|Stage1_sig[44]~276_combout\ & \SU1|SRA64|Stage2_sig[52]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[44]~276_combout\,
	datab => \SU1|SRL64|Stage2_sig[36]~59_combout\,
	datac => \SU1|SRL64|Stage2_sig[36]~58_combout\,
	datad => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	combout => \SU1|SRL64|Stage2_sig[36]~60_combout\);

-- Location: LCCOMB_X66_Y31_N24
\SU1|SRA_SRL_sig[36]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[36]~16_combout\ = (\SU1|SRA_SRL_sig[41]~9_combout\ & (!\SU1|SRL64|Stage2_sig[52]~137_combout\ & (\SU1|SRA_SRL_sig[41]~8_combout\))) # (!\SU1|SRA_SRL_sig[41]~9_combout\ & (((\SU1|SRL64|Stage2_sig[36]~60_combout\) # 
-- (!\SU1|SRA_SRL_sig[41]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[41]~9_combout\,
	datab => \SU1|SRL64|Stage2_sig[52]~137_combout\,
	datac => \SU1|SRA_SRL_sig[41]~8_combout\,
	datad => \SU1|SRL64|Stage2_sig[36]~60_combout\,
	combout => \SU1|SRA_SRL_sig[36]~16_combout\);

-- Location: LCCOMB_X66_Y30_N18
\SU1|SRA64|Stage2_sig[52]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[52]~74_combout\ = (\SU1|X_sig[63]~2_combout\ & (\B[2]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SU1|SRA64|Stage2_sig[52]~74_combout\);

-- Location: LCCOMB_X67_Y31_N4
\SU1|SRA64|Stage2_sig[52]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[52]~76_combout\ = (\SU1|SRA64|Stage2_sig[52]~75_combout\) # ((\SU1|SRA64|Stage2_sig[52]~74_combout\) # ((\SU1|SRA64|Equal5~0_combout\ & \SU1|SRL64|Stage1_sig[56]~274_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~75_combout\,
	datab => \SU1|SRA64|Equal5~0_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~74_combout\,
	datad => \SU1|SRL64|Stage1_sig[56]~274_combout\,
	combout => \SU1|SRA64|Stage2_sig[52]~76_combout\);

-- Location: LCCOMB_X70_Y31_N30
\SU1|SRA_SRL_sig[36]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[36]~17_combout\ = (\SU1|SRA_SRL_sig[41]~7_combout\ & ((\SU1|SRA_SRL_sig[36]~16_combout\ & ((\SU1|SRA64|Stage2_sig[52]~76_combout\))) # (!\SU1|SRA_SRL_sig[36]~16_combout\ & (\SU1|X_sig[63]~2_combout\)))) # (!\SU1|SRA_SRL_sig[41]~7_combout\ 
-- & (((\SU1|SRA_SRL_sig[36]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[41]~7_combout\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \SU1|SRA_SRL_sig[36]~16_combout\,
	datad => \SU1|SRA64|Stage2_sig[52]~76_combout\,
	combout => \SU1|SRA_SRL_sig[36]~17_combout\);

-- Location: LCCOMB_X69_Y33_N6
\Y~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~49_combout\ = (\ExtWord~input_o\) # ((\B[5]~input_o\) # (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y~49_combout\);

-- Location: LCCOMB_X69_Y33_N16
\Y~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~50_combout\ = (\Y~48_combout\ & (((\Y~49_combout\)))) # (!\Y~48_combout\ & ((\Y~49_combout\ & (\SU1|SRA_SRL_sig[36]~17_combout\)) # (!\Y~49_combout\ & ((\SU1|SRL64|Stage2_sig[48]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~48_combout\,
	datab => \SU1|SRA_SRL_sig[36]~17_combout\,
	datac => \SU1|SRL64|Stage2_sig[48]~22_combout\,
	datad => \Y~49_combout\,
	combout => \Y~50_combout\);

-- Location: LCCOMB_X65_Y35_N28
\SU1|SRL64|Stage1_sig[28]~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[28]~264_combout\ = (\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[29]~171_combout\)) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~256_combout\) # (\SU1|SRL64|Stage1_sig[48]~257_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[29]~171_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~256_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~257_combout\,
	combout => \SU1|SRL64|Stage1_sig[28]~264_combout\);

-- Location: LCCOMB_X69_Y36_N2
\SU1|SRL64|Stage1_sig[20]~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[20]~265_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[21]~177_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~260_combout\) # ((\SU1|SRL64|Stage1_sig[48]~259_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[48]~260_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~259_combout\,
	datad => \SU1|SRL64|Stage1_sig[21]~177_combout\,
	combout => \SU1|SRL64|Stage1_sig[20]~265_combout\);

-- Location: LCCOMB_X67_Y32_N8
\SU1|SRA_SRL_sig[16]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[16]~18_combout\ = (\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[28]~264_combout\)) # (!\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[20]~265_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[28]~264_combout\,
	datac => \SU1|SRL64|Stage1_sig[20]~265_combout\,
	combout => \SU1|SRA_SRL_sig[16]~18_combout\);

-- Location: LCCOMB_X69_Y34_N10
\SU1|SRL64|Stage1_sig[24]~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[24]~263_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[25]~183_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~252_combout\) # ((\SU1|SRL64|Stage1_sig[48]~253_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~252_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~253_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[25]~183_combout\,
	combout => \SU1|SRL64|Stage1_sig[24]~263_combout\);

-- Location: LCCOMB_X67_Y32_N30
\SU1|SRL64|Stage2_sig[20]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[20]~61_combout\ = (\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[32]~129_combout\))) # (!\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[24]~263_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[24]~263_combout\,
	datad => \SU1|SRL64|Stage1_sig[32]~129_combout\,
	combout => \SU1|SRL64|Stage2_sig[20]~61_combout\);

-- Location: LCCOMB_X67_Y32_N26
\SU1|SRL64|Stage2_sig[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[20]~62_combout\ = (\B[2]~input_o\ & ((\SU1|SRL64|Stage2_sig[20]~61_combout\))) # (!\B[2]~input_o\ & (\SU1|SRA_SRL_sig[16]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SRA_SRL_sig[16]~18_combout\,
	datac => \SU1|SRL64|Stage2_sig[20]~61_combout\,
	combout => \SU1|SRL64|Stage2_sig[20]~62_combout\);

-- Location: LCCOMB_X66_Y31_N2
\Y~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~51_combout\ = (\SU1|SRL64|Stage3_sig~42_combout\ & (((\Y~14_combout\)))) # (!\SU1|SRL64|Stage3_sig~42_combout\ & (((\SU1|SRA64|Stage2_sig[52]~74_combout\ & \Y~14_combout\)) # (!\SU1|SRL64|Stage2_sig[52]~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~74_combout\,
	datab => \SU1|SRL64|Stage3_sig~42_combout\,
	datac => \Y~14_combout\,
	datad => \SU1|SRL64|Stage2_sig[52]~137_combout\,
	combout => \Y~51_combout\);

-- Location: LCCOMB_X66_Y31_N20
\Y~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~52_combout\ = (\Y~51_combout\ & ((\SU1|SRL64|Stage2_sig[20]~62_combout\) # ((!\SU1|SRL64|Stage3_sig~42_combout\)))) # (!\Y~51_combout\ & (((\SU1|SRL64|Stage3_sig~42_combout\ & \SU1|SRL64|Stage2_sig[36]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[20]~62_combout\,
	datab => \Y~51_combout\,
	datac => \SU1|SRL64|Stage3_sig~42_combout\,
	datad => \SU1|SRL64|Stage2_sig[36]~60_combout\,
	combout => \Y~52_combout\);

-- Location: LCCOMB_X69_Y33_N18
\Y~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~53_combout\ = (\Y~50_combout\ & (((\Y~52_combout\) # (!\Y~48_combout\)))) # (!\Y~50_combout\ & (\SU1|SRL64|Stage2_sig[48]~57_combout\ & ((\Y~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[48]~57_combout\,
	datab => \Y~50_combout\,
	datac => \Y~52_combout\,
	datad => \Y~48_combout\,
	combout => \Y~53_combout\);

-- Location: LCCOMB_X73_Y33_N10
\Y~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~43_combout\ = (\FuncClass[0]~input_o\) # ((\FuncClass[1]~input_o\) # ((!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~43_combout\);

-- Location: LCCOMB_X73_Y33_N8
\Y~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~54_combout\ = (\Y~44_combout\ & ((\Y~43_combout\ & (\Y~47_combout\)) # (!\Y~43_combout\ & ((\Y~53_combout\))))) # (!\Y~44_combout\ & (((!\Y~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~47_combout\,
	datab => \Y~44_combout\,
	datac => \Y~53_combout\,
	datad => \Y~43_combout\,
	combout => \Y~54_combout\);

-- Location: LCCOMB_X76_Y34_N0
\Y~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~45_combout\ = (!\Y~44_combout\ & ((!\SU1|SRL64|Equal8~1_combout\) # (!\Y~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~43_combout\,
	datab => \SU1|SRL64|Equal8~1_combout\,
	datad => \Y~44_combout\,
	combout => \Y~45_combout\);

-- Location: LCCOMB_X72_Y32_N20
\Y~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~55_combout\ = (\Y~54_combout\ & (((\AU1|Adder|Add0~10_combout\) # (!\Y~45_combout\)))) # (!\Y~54_combout\ & (\SU1|SLL64|Stage2_sig[4]~14_combout\ & ((\Y~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[4]~14_combout\,
	datab => \Y~54_combout\,
	datac => \AU1|Adder|Add0~10_combout\,
	datad => \Y~45_combout\,
	combout => \Y~55_combout\);

-- Location: LCCOMB_X72_Y35_N0
\SU1|SLL64|Stage1_sig[5]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[5]~66_combout\ = (\SU1|SRL64|Stage1_sig[48]~72_combout\) # (\SU1|SRL64|Stage1_sig[48]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~72_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~76_combout\,
	combout => \SU1|SLL64|Stage1_sig[5]~66_combout\);

-- Location: LCCOMB_X72_Y35_N18
\SU1|SLL64|Stage1_sig[5]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[5]~67_combout\ = (\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[5]~66_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~70_combout\) # ((\SU1|SRL64|Stage1_sig[48]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~70_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~74_combout\,
	datad => \SU1|SLL64|Stage1_sig[5]~66_combout\,
	combout => \SU1|SLL64|Stage1_sig[5]~67_combout\);

-- Location: LCCOMB_X73_Y34_N18
\SU1|SLL64|Stage2_sig[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[5]~15_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\SU1|SLL64|Stage1_sig[5]~67_combout\) # ((\SU1|SLL64|Stage1_sig[1]~62_combout\ & \SU1|SRA64|Equal5~0_combout\)))) # (!\SU1|SRA64|Stage2_sig[52]~62_combout\ & 
-- (((\SU1|SLL64|Stage1_sig[1]~62_combout\ & \SU1|SRA64|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datab => \SU1|SLL64|Stage1_sig[5]~67_combout\,
	datac => \SU1|SLL64|Stage1_sig[1]~62_combout\,
	datad => \SU1|SRA64|Equal5~0_combout\,
	combout => \SU1|SLL64|Stage2_sig[5]~15_combout\);

-- Location: LCCOMB_X66_Y30_N30
\SU1|SRA64|Stage2_sig[53]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[53]~82_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\SU1|X_sig[63]~2_combout\)) # (!\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[57]~143_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[57]~143_combout\,
	combout => \SU1|SRA64|Stage2_sig[53]~82_combout\);

-- Location: LCCOMB_X66_Y30_N12
\SU1|SRA64|Stage2_sig[53]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[53]~77_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[54]~149_combout\))) # (!\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[53]~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[53]~150_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datad => \SU1|SRL64|Stage1_sig[54]~149_combout\,
	combout => \SU1|SRA64|Stage2_sig[53]~77_combout\);

-- Location: LCCOMB_X66_Y30_N6
\SU1|SRA64|Stage2_sig[53]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[53]~78_combout\ = (\SU1|SRA64|Stage2_sig[53]~82_combout\) # ((\SU1|SRA64|Stage2_sig[53]~77_combout\) # ((\SU1|SRA64|Stage1_sig[61]~5_combout\ & \SU1|SRA64|Stage2_sig[52]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[53]~82_combout\,
	datab => \SU1|SRA64|Stage1_sig[61]~5_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datad => \SU1|SRA64|Stage2_sig[53]~77_combout\,
	combout => \SU1|SRA64|Stage2_sig[53]~78_combout\);

-- Location: LCCOMB_X66_Y30_N8
\SU1|SRL64|Stage2_sig[53]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[53]~63_combout\ = (\SU1|SRA64|Stage2_sig[52]~66_combout\ & ((\SU1|SRL64|Stage1_sig[61]~164_combout\) # ((!\B[0]~input_o\ & \SU1|SRL64|Stage1_sig[48]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[61]~164_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~97_combout\,
	combout => \SU1|SRL64|Stage2_sig[53]~63_combout\);

-- Location: LCCOMB_X66_Y30_N10
\SU1|SRL64|Stage2_sig[53]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[53]~64_combout\ = (\SU1|SRA64|Stage2_sig[53]~77_combout\) # ((\SU1|SRL64|Stage2_sig[53]~63_combout\) # ((\SU1|SRA64|Equal5~0_combout\ & \SU1|SRL64|Stage1_sig[57]~143_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[53]~77_combout\,
	datab => \SU1|SRA64|Equal5~0_combout\,
	datac => \SU1|SRL64|Stage2_sig[53]~63_combout\,
	datad => \SU1|SRL64|Stage1_sig[57]~143_combout\,
	combout => \SU1|SRL64|Stage2_sig[53]~64_combout\);

-- Location: LCCOMB_X66_Y36_N14
\SU1|SRL64|Stage1_sig[45]~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[45]~266_combout\ = (\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[46]~160_combout\)) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~107_combout\) # (\SU1|SRL64|Stage1_sig[48]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[46]~160_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~107_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~106_combout\,
	combout => \SU1|SRL64|Stage1_sig[45]~266_combout\);

-- Location: LCCOMB_X67_Y33_N8
\SU1|SRL64|Stage2_sig[37]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[37]~65_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\SU1|SRL64|Stage1_sig[37]~281_combout\) # ((\SU1|SRL64|Stage1_sig[45]~266_combout\ & \SU1|SRA64|Stage2_sig[52]~66_combout\)))) # (!\SU1|SRA64|Stage2_sig[52]~62_combout\ & 
-- (\SU1|SRL64|Stage1_sig[45]~266_combout\ & (\SU1|SRA64|Stage2_sig[52]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datab => \SU1|SRL64|Stage1_sig[45]~266_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datad => \SU1|SRL64|Stage1_sig[37]~281_combout\,
	combout => \SU1|SRL64|Stage2_sig[37]~65_combout\);

-- Location: LCCOMB_X67_Y33_N2
\SU1|SRL64|Stage2_sig[37]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[37]~66_combout\ = (\SU1|SRL64|Stage1_sig[41]~280_combout\ & ((\SU1|SRA64|Equal5~0_combout\) # ((\SU1|SRL64|Stage2_sig[44]~31_combout\ & \SU1|SRL64|Stage1_sig[49]~146_combout\)))) # (!\SU1|SRL64|Stage1_sig[41]~280_combout\ & 
-- (\SU1|SRL64|Stage2_sig[44]~31_combout\ & ((\SU1|SRL64|Stage1_sig[49]~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[41]~280_combout\,
	datab => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datac => \SU1|SRA64|Equal5~0_combout\,
	datad => \SU1|SRL64|Stage1_sig[49]~146_combout\,
	combout => \SU1|SRL64|Stage2_sig[37]~66_combout\);

-- Location: LCCOMB_X67_Y33_N28
\SU1|SRL64|Stage2_sig[37]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[37]~67_combout\ = (\SU1|SRL64|Stage2_sig[37]~65_combout\) # (\SU1|SRL64|Stage2_sig[37]~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage2_sig[37]~65_combout\,
	datad => \SU1|SRL64|Stage2_sig[37]~66_combout\,
	combout => \SU1|SRL64|Stage2_sig[37]~67_combout\);

-- Location: LCCOMB_X66_Y33_N24
\SU1|SRA_SRL_sig[37]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[37]~19_combout\ = (\SU1|SRA_SRL_sig[41]~8_combout\ & ((\SU1|SRA_SRL_sig[41]~9_combout\ & (\SU1|SRL64|Stage2_sig[53]~64_combout\)) # (!\SU1|SRA_SRL_sig[41]~9_combout\ & ((\SU1|SRL64|Stage2_sig[37]~67_combout\))))) # 
-- (!\SU1|SRA_SRL_sig[41]~8_combout\ & (((!\SU1|SRA_SRL_sig[41]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[41]~8_combout\,
	datab => \SU1|SRL64|Stage2_sig[53]~64_combout\,
	datac => \SU1|SRA_SRL_sig[41]~9_combout\,
	datad => \SU1|SRL64|Stage2_sig[37]~67_combout\,
	combout => \SU1|SRA_SRL_sig[37]~19_combout\);

-- Location: LCCOMB_X65_Y33_N0
\SU1|SRA_SRL_sig[37]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[37]~20_combout\ = (\SU1|SRA_SRL_sig[41]~7_combout\ & ((\SU1|SRA_SRL_sig[37]~19_combout\ & (\SU1|SRA64|Stage2_sig[53]~78_combout\)) # (!\SU1|SRA_SRL_sig[37]~19_combout\ & ((\SU1|X_sig[63]~2_combout\))))) # (!\SU1|SRA_SRL_sig[41]~7_combout\ 
-- & (((\SU1|SRA_SRL_sig[37]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[53]~78_combout\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \SU1|SRA_SRL_sig[41]~7_combout\,
	datad => \SU1|SRA_SRL_sig[37]~19_combout\,
	combout => \SU1|SRA_SRL_sig[37]~20_combout\);

-- Location: LCCOMB_X69_Y37_N24
\SU1|SRL64|Stage2_sig[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[21]~69_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[33]~157_combout\)) # (!\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[25]~284_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[33]~157_combout\,
	datad => \SU1|SRL64|Stage1_sig[25]~284_combout\,
	combout => \SU1|SRL64|Stage2_sig[21]~69_combout\);

-- Location: LCCOMB_X69_Y37_N26
\SU1|SRL64|Stage2_sig[21]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[21]~70_combout\ = (\SU1|SRL64|Stage2_sig[21]~69_combout\) # ((!\B[2]~input_o\ & \SU1|SRL64|Stage2_sig[21]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SRL64|Stage2_sig[21]~69_combout\,
	datad => \SU1|SRL64|Stage2_sig[21]~36_combout\,
	combout => \SU1|SRL64|Stage2_sig[21]~70_combout\);

-- Location: LCCOMB_X66_Y33_N2
\Y~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~59_combout\ = (\Y~14_combout\ & (\SU1|SRL64|Stage3_sig~42_combout\)) # (!\Y~14_combout\ & ((\SU1|SRL64|Stage3_sig~42_combout\ & ((\SU1|SRL64|Stage2_sig[37]~67_combout\))) # (!\SU1|SRL64|Stage3_sig~42_combout\ & 
-- (\SU1|SRL64|Stage2_sig[53]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~14_combout\,
	datab => \SU1|SRL64|Stage3_sig~42_combout\,
	datac => \SU1|SRL64|Stage2_sig[53]~64_combout\,
	datad => \SU1|SRL64|Stage2_sig[37]~67_combout\,
	combout => \Y~59_combout\);

-- Location: LCCOMB_X66_Y33_N28
\Y~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~60_combout\ = (\Y~14_combout\ & ((\Y~59_combout\ & (\SU1|SRL64|Stage2_sig[21]~70_combout\)) # (!\Y~59_combout\ & ((\SU1|SRA64|Stage2_sig[53]~78_combout\))))) # (!\Y~14_combout\ & (((\Y~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[21]~70_combout\,
	datab => \SU1|SRA64|Stage2_sig[53]~78_combout\,
	datac => \Y~14_combout\,
	datad => \Y~59_combout\,
	combout => \Y~60_combout\);

-- Location: LCCOMB_X69_Y37_N14
\SU1|SRL64|Stage2_sig[48]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~68_combout\ = (\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[17]~285_combout\)) # (!\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[9]~278_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[17]~285_combout\,
	datab => \SU1|SRL64|Stage1_sig[9]~278_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SRL64|Stage2_sig[48]~68_combout\);

-- Location: LCCOMB_X70_Y33_N0
\Y~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~58_combout\ = (\Y~48_combout\ & (((\Y~49_combout\) # (\SU1|SRL64|Stage2_sig[48]~68_combout\)))) # (!\Y~48_combout\ & (\SU1|SRL64|Stage2_sig[48]~30_combout\ & (!\Y~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~48_combout\,
	datab => \SU1|SRL64|Stage2_sig[48]~30_combout\,
	datac => \Y~49_combout\,
	datad => \SU1|SRL64|Stage2_sig[48]~68_combout\,
	combout => \Y~58_combout\);

-- Location: LCCOMB_X70_Y33_N2
\Y~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~61_combout\ = (\Y~49_combout\ & ((\Y~58_combout\ & ((\Y~60_combout\))) # (!\Y~58_combout\ & (\SU1|SRA_SRL_sig[37]~20_combout\)))) # (!\Y~49_combout\ & (((\Y~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[37]~20_combout\,
	datab => \Y~60_combout\,
	datac => \Y~49_combout\,
	datad => \Y~58_combout\,
	combout => \Y~61_combout\);

-- Location: LCCOMB_X75_Y35_N30
\Y~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~56_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[5]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y~56_combout\);

-- Location: LCCOMB_X76_Y34_N10
\Y~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~57_combout\ = (\Y~56_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~56_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~57_combout\);

-- Location: LCCOMB_X76_Y34_N28
\Y~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~62_combout\ = (\Y~43_combout\ & (\Y~44_combout\ & ((\Y~57_combout\)))) # (!\Y~43_combout\ & (((\Y~61_combout\)) # (!\Y~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~43_combout\,
	datab => \Y~44_combout\,
	datac => \Y~61_combout\,
	datad => \Y~57_combout\,
	combout => \Y~62_combout\);

-- Location: LCCOMB_X76_Y34_N14
\Y~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~63_combout\ = (\Y~62_combout\ & (((\AU1|Adder|Add0~12_combout\) # (!\Y~45_combout\)))) # (!\Y~62_combout\ & (\SU1|SLL64|Stage2_sig[5]~15_combout\ & ((\Y~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[5]~15_combout\,
	datab => \Y~62_combout\,
	datac => \AU1|Adder|Add0~12_combout\,
	datad => \Y~45_combout\,
	combout => \Y~63_combout\);

-- Location: LCCOMB_X66_Y32_N30
\SU1|SRA64|Stage2_sig[54]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[54]~79_combout\ = (\B[3]~input_o\) # ((\B[2]~input_o\ & (!\SU1|SRL64|Stage1_sig[58]~216_combout\)) # (!\B[2]~input_o\ & ((!\SU1|SRL64|Stage1_sig[54]~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[58]~216_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[54]~223_combout\,
	combout => \SU1|SRA64|Stage2_sig[54]~79_combout\);

-- Location: LCCOMB_X66_Y32_N24
\SU1|SRL64|Stage2_sig[54]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[54]~138_combout\ = ((!\B[2]~input_o\ & (\B[3]~input_o\ & \SU1|SRL64|Stage1_sig[62]~224_combout\))) # (!\SU1|SRA64|Stage2_sig[54]~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[54]~79_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[62]~224_combout\,
	combout => \SU1|SRL64|Stage2_sig[54]~138_combout\);

-- Location: LCCOMB_X66_Y32_N0
\SU1|SRA64|Stage2_sig[54]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[54]~80_combout\ = (\SU1|SRA64|Stage2_sig[52]~74_combout\) # (((\SU1|SRA64|Stage2_sig[52]~66_combout\ & \SU1|SRA64|Stage1_sig[62]~6_combout\)) # (!\SU1|SRA64|Stage2_sig[54]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~74_combout\,
	datab => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datac => \SU1|SRA64|Stage2_sig[54]~79_combout\,
	datad => \SU1|SRA64|Stage1_sig[62]~6_combout\,
	combout => \SU1|SRA64|Stage2_sig[54]~80_combout\);

-- Location: LCCOMB_X66_Y33_N26
\Y~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~67_combout\ = (\Y~14_combout\ & ((\SU1|SRL64|Stage3_sig~42_combout\) # ((\SU1|SRA64|Stage2_sig[54]~80_combout\)))) # (!\Y~14_combout\ & (!\SU1|SRL64|Stage3_sig~42_combout\ & (\SU1|SRL64|Stage2_sig[54]~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~14_combout\,
	datab => \SU1|SRL64|Stage3_sig~42_combout\,
	datac => \SU1|SRL64|Stage2_sig[54]~138_combout\,
	datad => \SU1|SRA64|Stage2_sig[54]~80_combout\,
	combout => \Y~67_combout\);

-- Location: LCCOMB_X65_Y36_N10
\SU1|SRL64|Stage2_sig[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[22]~75_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[34]~212_combout\))) # (!\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[26]~233_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[26]~233_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[34]~212_combout\,
	combout => \SU1|SRL64|Stage2_sig[22]~75_combout\);

-- Location: LCCOMB_X65_Y36_N4
\SU1|SRL64|Stage2_sig[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[22]~76_combout\ = (\SU1|SRL64|Stage2_sig[22]~75_combout\) # ((!\B[2]~input_o\ & \SU1|SRL64|Stage2_sig[22]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[22]~75_combout\,
	datab => \B[2]~input_o\,
	datad => \SU1|SRL64|Stage2_sig[22]~46_combout\,
	combout => \SU1|SRL64|Stage2_sig[22]~76_combout\);

-- Location: LCCOMB_X65_Y36_N20
\SU1|SRL64|Stage2_sig[38]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[38]~72_combout\ = (\SU1|SRL64|Stage1_sig[46]~209_combout\ & ((\SU1|SRA64|Stage2_sig[52]~66_combout\) # ((\SU1|SRA64|Stage2_sig[52]~62_combout\ & \SU1|SRL64|Stage1_sig[38]~206_combout\)))) # (!\SU1|SRL64|Stage1_sig[46]~209_combout\ & 
-- (\SU1|SRA64|Stage2_sig[52]~62_combout\ & (\SU1|SRL64|Stage1_sig[38]~206_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[46]~209_combout\,
	datab => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datac => \SU1|SRL64|Stage1_sig[38]~206_combout\,
	datad => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	combout => \SU1|SRL64|Stage2_sig[38]~72_combout\);

-- Location: LCCOMB_X65_Y36_N6
\SU1|SRL64|Stage2_sig[38]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[38]~73_combout\ = (\SU1|SRL64|Stage1_sig[42]~203_combout\ & ((\SU1|SRA64|Equal5~0_combout\) # ((\SU1|SRL64|Stage2_sig[44]~31_combout\ & \SU1|SRL64|Stage1_sig[50]~220_combout\)))) # (!\SU1|SRL64|Stage1_sig[42]~203_combout\ & 
-- (((\SU1|SRL64|Stage2_sig[44]~31_combout\ & \SU1|SRL64|Stage1_sig[50]~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[42]~203_combout\,
	datab => \SU1|SRA64|Equal5~0_combout\,
	datac => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datad => \SU1|SRL64|Stage1_sig[50]~220_combout\,
	combout => \SU1|SRL64|Stage2_sig[38]~73_combout\);

-- Location: LCCOMB_X65_Y36_N24
\SU1|SRL64|Stage2_sig[38]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[38]~74_combout\ = (\SU1|SRL64|Stage2_sig[38]~72_combout\) # (\SU1|SRL64|Stage2_sig[38]~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage2_sig[38]~72_combout\,
	datad => \SU1|SRL64|Stage2_sig[38]~73_combout\,
	combout => \SU1|SRL64|Stage2_sig[38]~74_combout\);

-- Location: LCCOMB_X66_Y33_N20
\Y~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~68_combout\ = (\Y~67_combout\ & ((\SU1|SRL64|Stage2_sig[22]~76_combout\) # ((!\SU1|SRL64|Stage3_sig~42_combout\)))) # (!\Y~67_combout\ & (((\SU1|SRL64|Stage3_sig~42_combout\ & \SU1|SRL64|Stage2_sig[38]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~67_combout\,
	datab => \SU1|SRL64|Stage2_sig[22]~76_combout\,
	datac => \SU1|SRL64|Stage3_sig~42_combout\,
	datad => \SU1|SRL64|Stage2_sig[38]~74_combout\,
	combout => \Y~68_combout\);

-- Location: LCCOMB_X69_Y35_N28
\SU1|SRL64|Stage2_sig[48]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~71_combout\ = (\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[18]~287_combout\))) # (!\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[10]~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[10]~195_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[18]~287_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~71_combout\);

-- Location: LCCOMB_X66_Y33_N30
\SU1|SRA_SRL_sig[38]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[38]~21_combout\ = (\SU1|SRA_SRL_sig[41]~9_combout\ & (((\SU1|SRL64|Stage2_sig[54]~138_combout\ & \SU1|SRA_SRL_sig[41]~8_combout\)))) # (!\SU1|SRA_SRL_sig[41]~9_combout\ & ((\SU1|SRL64|Stage2_sig[38]~74_combout\) # 
-- ((!\SU1|SRA_SRL_sig[41]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[41]~9_combout\,
	datab => \SU1|SRL64|Stage2_sig[38]~74_combout\,
	datac => \SU1|SRL64|Stage2_sig[54]~138_combout\,
	datad => \SU1|SRA_SRL_sig[41]~8_combout\,
	combout => \SU1|SRA_SRL_sig[38]~21_combout\);

-- Location: LCCOMB_X66_Y33_N16
\SU1|SRA_SRL_sig[38]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[38]~22_combout\ = (\SU1|SRA_SRL_sig[38]~21_combout\ & (((\SU1|SRA64|Stage2_sig[54]~80_combout\) # (!\SU1|SRA_SRL_sig[41]~7_combout\)))) # (!\SU1|SRA_SRL_sig[38]~21_combout\ & (\SU1|X_sig[63]~2_combout\ & 
-- ((\SU1|SRA_SRL_sig[41]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|X_sig[63]~2_combout\,
	datab => \SU1|SRA64|Stage2_sig[54]~80_combout\,
	datac => \SU1|SRA_SRL_sig[38]~21_combout\,
	datad => \SU1|SRA_SRL_sig[41]~7_combout\,
	combout => \SU1|SRA_SRL_sig[38]~22_combout\);

-- Location: LCCOMB_X70_Y33_N4
\Y~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~66_combout\ = (\Y~48_combout\ & (((\Y~49_combout\)))) # (!\Y~48_combout\ & ((\Y~49_combout\ & (\SU1|SRA_SRL_sig[38]~22_combout\)) # (!\Y~49_combout\ & ((\SU1|SRL64|Stage2_sig[48]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~48_combout\,
	datab => \SU1|SRA_SRL_sig[38]~22_combout\,
	datac => \Y~49_combout\,
	datad => \SU1|SRL64|Stage2_sig[48]~40_combout\,
	combout => \Y~66_combout\);

-- Location: LCCOMB_X69_Y33_N4
\Y~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~69_combout\ = (\Y~48_combout\ & ((\Y~66_combout\ & (\Y~68_combout\)) # (!\Y~66_combout\ & ((\SU1|SRL64|Stage2_sig[48]~71_combout\))))) # (!\Y~48_combout\ & (((\Y~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~48_combout\,
	datab => \Y~68_combout\,
	datac => \SU1|SRL64|Stage2_sig[48]~71_combout\,
	datad => \Y~66_combout\,
	combout => \Y~69_combout\);

-- Location: LCCOMB_X75_Y37_N30
\Y~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~64_combout\ = (\B[6]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[6]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Y~64_combout\);

-- Location: LCCOMB_X75_Y35_N24
\Y~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~65_combout\ = (\FuncClass[0]~input_o\ & (\Y~64_combout\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y~64_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~65_combout\);

-- Location: LCCOMB_X74_Y35_N2
\Y~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~70_combout\ = (\Y~44_combout\ & ((\Y~43_combout\ & ((\Y~65_combout\))) # (!\Y~43_combout\ & (\Y~69_combout\)))) # (!\Y~44_combout\ & (!\Y~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~44_combout\,
	datab => \Y~43_combout\,
	datac => \Y~69_combout\,
	datad => \Y~65_combout\,
	combout => \Y~70_combout\);

-- Location: LCCOMB_X72_Y37_N24
\SU1|SLL64|Stage1_sig[7]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[7]~68_combout\ = (\SU1|SRL64|Stage1_sig[48]~133_combout\) # (\SU1|SRL64|Stage1_sig[48]~137_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~133_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~137_combout\,
	combout => \SU1|SLL64|Stage1_sig[7]~68_combout\);

-- Location: LCCOMB_X72_Y35_N28
\SU1|SLL64|Stage1_sig[6]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[6]~69_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~74_combout\) # (\SU1|SRL64|Stage1_sig[48]~70_combout\)))) # (!\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[7]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[7]~68_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~74_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~70_combout\,
	combout => \SU1|SLL64|Stage1_sig[6]~69_combout\);

-- Location: LCCOMB_X74_Y35_N16
\SU1|SLL64|Stage2_sig[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[6]~16_combout\ = (\SU1|SRA64|Equal5~0_combout\ & ((\SU1|SLL64|Stage1_sig[2]~64_combout\) # ((\SU1|SLL64|Stage1_sig[6]~69_combout\ & \SU1|SRA64|Stage2_sig[52]~62_combout\)))) # (!\SU1|SRA64|Equal5~0_combout\ & 
-- (\SU1|SLL64|Stage1_sig[6]~69_combout\ & (\SU1|SRA64|Stage2_sig[52]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Equal5~0_combout\,
	datab => \SU1|SLL64|Stage1_sig[6]~69_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datad => \SU1|SLL64|Stage1_sig[2]~64_combout\,
	combout => \SU1|SLL64|Stage2_sig[6]~16_combout\);

-- Location: LCCOMB_X74_Y35_N4
\Y~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~71_combout\ = (\Y~70_combout\ & (((\AU1|Adder|Add0~14_combout\) # (!\Y~45_combout\)))) # (!\Y~70_combout\ & (\SU1|SLL64|Stage2_sig[6]~16_combout\ & (\Y~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~70_combout\,
	datab => \SU1|SLL64|Stage2_sig[6]~16_combout\,
	datac => \Y~45_combout\,
	datad => \AU1|Adder|Add0~14_combout\,
	combout => \Y~71_combout\);

-- Location: LCCOMB_X76_Y37_N8
\Y~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~72_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[7]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Y~72_combout\);

-- Location: LCCOMB_X73_Y33_N2
\Y~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~73_combout\ = (\Y~72_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~72_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~73_combout\);

-- Location: LCCOMB_X69_Y31_N2
\SU1|SRA64|Stage2_sig[55]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[55]~87_combout\ = (\B[3]~input_o\ & (\SU1|X_sig[63]~2_combout\)) # (!\B[3]~input_o\ & (((\B[2]~input_o\ & \SU1|SRL64|Stage1_sig[59]~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[59]~243_combout\,
	combout => \SU1|SRA64|Stage2_sig[55]~87_combout\);

-- Location: LCCOMB_X69_Y31_N4
\SU1|SRA64|Stage2_sig[55]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[55]~88_combout\ = (\SU1|SRA64|Stage2_sig[55]~87_combout\) # ((\SU1|SRL64|Stage1_sig[55]~245_combout\ & (!\B[2]~input_o\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[55]~245_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRA64|Stage2_sig[55]~87_combout\,
	combout => \SU1|SRA64|Stage2_sig[55]~88_combout\);

-- Location: LCCOMB_X68_Y33_N10
\SU1|SRL64|Stage2_sig[23]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[23]~83_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[35]~247_combout\))) # (!\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[27]~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[27]~258_combout\,
	datad => \SU1|SRL64|Stage1_sig[35]~247_combout\,
	combout => \SU1|SRL64|Stage2_sig[23]~83_combout\);

-- Location: LCCOMB_X68_Y33_N20
\SU1|SRL64|Stage2_sig[23]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[23]~84_combout\ = (\SU1|SRL64|Stage2_sig[23]~83_combout\) # ((!\B[2]~input_o\ & \SU1|SRL64|Stage2_sig[23]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[23]~83_combout\,
	datab => \B[2]~input_o\,
	datad => \SU1|SRL64|Stage2_sig[23]~54_combout\,
	combout => \SU1|SRL64|Stage2_sig[23]~84_combout\);

-- Location: LCCOMB_X68_Y33_N4
\SU1|SRL64|Stage2_sig[39]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[39]~80_combout\ = (\SU1|SRL64|Stage1_sig[43]~246_combout\ & ((\SU1|SRA64|Equal5~0_combout\) # ((\SU1|SRL64|Stage2_sig[44]~31_combout\ & \SU1|SRL64|Stage1_sig[51]~244_combout\)))) # (!\SU1|SRL64|Stage1_sig[43]~246_combout\ & 
-- (\SU1|SRL64|Stage2_sig[44]~31_combout\ & ((\SU1|SRL64|Stage1_sig[51]~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[43]~246_combout\,
	datab => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datac => \SU1|SRA64|Equal5~0_combout\,
	datad => \SU1|SRL64|Stage1_sig[51]~244_combout\,
	combout => \SU1|SRL64|Stage2_sig[39]~80_combout\);

-- Location: LCCOMB_X68_Y33_N2
\SU1|SRL64|Stage2_sig[39]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[39]~79_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\SU1|SRL64|Stage1_sig[39]~250_combout\) # ((\SU1|SRL64|Stage1_sig[47]~248_combout\ & \SU1|SRA64|Stage2_sig[52]~66_combout\)))) # (!\SU1|SRA64|Stage2_sig[52]~62_combout\ & 
-- (\SU1|SRL64|Stage1_sig[47]~248_combout\ & (\SU1|SRA64|Stage2_sig[52]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datab => \SU1|SRL64|Stage1_sig[47]~248_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datad => \SU1|SRL64|Stage1_sig[39]~250_combout\,
	combout => \SU1|SRL64|Stage2_sig[39]~79_combout\);

-- Location: LCCOMB_X68_Y33_N14
\SU1|SRL64|Stage2_sig[39]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[39]~81_combout\ = (\SU1|SRL64|Stage2_sig[39]~80_combout\) # (\SU1|SRL64|Stage2_sig[39]~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage2_sig[39]~80_combout\,
	datad => \SU1|SRL64|Stage2_sig[39]~79_combout\,
	combout => \SU1|SRL64|Stage2_sig[39]~81_combout\);

-- Location: LCCOMB_X72_Y31_N22
\SU1|SRL64|Stage2_sig[59]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[59]~77_combout\ = (!\B[1]~input_o\ & (!\B[0]~input_o\ & \SU1|X_sig[63]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datad => \SU1|X_sig[63]~2_combout\,
	combout => \SU1|SRL64|Stage2_sig[59]~77_combout\);

-- Location: LCCOMB_X69_Y31_N8
\SU1|SRL64|Stage2_sig[55]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[55]~78_combout\ = (\SU1|SRA64|Stage2_sig[52]~66_combout\ & ((\SU1|SRL64|Stage2_sig[59]~77_combout\) # ((\SU1|SRA64|Equal5~0_combout\ & \SU1|SRL64|Stage1_sig[59]~243_combout\)))) # (!\SU1|SRA64|Stage2_sig[52]~66_combout\ & 
-- (\SU1|SRA64|Equal5~0_combout\ & ((\SU1|SRL64|Stage1_sig[59]~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datab => \SU1|SRA64|Equal5~0_combout\,
	datac => \SU1|SRL64|Stage2_sig[59]~77_combout\,
	datad => \SU1|SRL64|Stage1_sig[59]~243_combout\,
	combout => \SU1|SRL64|Stage2_sig[55]~78_combout\);

-- Location: LCCOMB_X69_Y31_N0
\SU1|SRL64|Stage2_sig[55]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[55]~139_combout\ = (\SU1|SRL64|Stage2_sig[55]~78_combout\) # ((\SU1|SRL64|Stage1_sig[55]~245_combout\ & (!\B[3]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[55]~245_combout\,
	datab => \SU1|SRL64|Stage2_sig[55]~78_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SU1|SRL64|Stage2_sig[55]~139_combout\);

-- Location: LCCOMB_X69_Y32_N2
\Y~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~75_combout\ = (\SU1|SRL64|Stage3_sig~42_combout\ & ((\SU1|SRL64|Stage2_sig[39]~81_combout\) # ((\Y~14_combout\)))) # (!\SU1|SRL64|Stage3_sig~42_combout\ & (((!\Y~14_combout\ & \SU1|SRL64|Stage2_sig[55]~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[39]~81_combout\,
	datab => \SU1|SRL64|Stage3_sig~42_combout\,
	datac => \Y~14_combout\,
	datad => \SU1|SRL64|Stage2_sig[55]~139_combout\,
	combout => \Y~75_combout\);

-- Location: LCCOMB_X69_Y32_N20
\Y~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~76_combout\ = (\Y~14_combout\ & ((\Y~75_combout\ & ((\SU1|SRL64|Stage2_sig[23]~84_combout\))) # (!\Y~75_combout\ & (\SU1|SRA64|Stage2_sig[55]~88_combout\)))) # (!\Y~14_combout\ & (((\Y~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[55]~88_combout\,
	datab => \SU1|SRL64|Stage2_sig[23]~84_combout\,
	datac => \Y~14_combout\,
	datad => \Y~75_combout\,
	combout => \Y~76_combout\);

-- Location: LCCOMB_X68_Y33_N16
\SU1|SRL64|Stage2_sig[48]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~82_combout\ = (\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[19]~261_combout\))) # (!\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[11]~237_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[11]~237_combout\,
	datab => \SU1|SRL64|Stage1_sig[19]~261_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SRL64|Stage2_sig[48]~82_combout\);

-- Location: LCCOMB_X70_Y33_N16
\Y~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~74_combout\ = (\Y~49_combout\ & (((\Y~48_combout\)))) # (!\Y~49_combout\ & ((\Y~48_combout\ & ((\SU1|SRL64|Stage2_sig[48]~82_combout\))) # (!\Y~48_combout\ & (\SU1|SRL64|Stage2_sig[48]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[48]~50_combout\,
	datab => \Y~49_combout\,
	datac => \SU1|SRL64|Stage2_sig[48]~82_combout\,
	datad => \Y~48_combout\,
	combout => \Y~74_combout\);

-- Location: LCCOMB_X69_Y32_N0
\SU1|SRA_SRL_sig[39]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[39]~23_combout\ = (\SU1|SRA_SRL_sig[41]~8_combout\ & ((\SU1|SRA_SRL_sig[41]~9_combout\ & ((\SU1|SRL64|Stage2_sig[55]~139_combout\))) # (!\SU1|SRA_SRL_sig[41]~9_combout\ & (\SU1|SRL64|Stage2_sig[39]~81_combout\)))) # 
-- (!\SU1|SRA_SRL_sig[41]~8_combout\ & (((!\SU1|SRA_SRL_sig[41]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[39]~81_combout\,
	datab => \SU1|SRA_SRL_sig[41]~8_combout\,
	datac => \SU1|SRA_SRL_sig[41]~9_combout\,
	datad => \SU1|SRL64|Stage2_sig[55]~139_combout\,
	combout => \SU1|SRA_SRL_sig[39]~23_combout\);

-- Location: LCCOMB_X70_Y33_N6
\SU1|SRA_SRL_sig[39]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[39]~24_combout\ = (\SU1|SRA_SRL_sig[39]~23_combout\ & (((\SU1|SRA64|Stage2_sig[55]~88_combout\) # (!\SU1|SRA_SRL_sig[41]~7_combout\)))) # (!\SU1|SRA_SRL_sig[39]~23_combout\ & (\SU1|X_sig[63]~2_combout\ & 
-- (\SU1|SRA_SRL_sig[41]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|X_sig[63]~2_combout\,
	datab => \SU1|SRA_SRL_sig[39]~23_combout\,
	datac => \SU1|SRA_SRL_sig[41]~7_combout\,
	datad => \SU1|SRA64|Stage2_sig[55]~88_combout\,
	combout => \SU1|SRA_SRL_sig[39]~24_combout\);

-- Location: LCCOMB_X70_Y33_N18
\Y~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~77_combout\ = (\Y~74_combout\ & ((\Y~76_combout\) # ((!\Y~49_combout\)))) # (!\Y~74_combout\ & (((\Y~49_combout\ & \SU1|SRA_SRL_sig[39]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~76_combout\,
	datab => \Y~74_combout\,
	datac => \Y~49_combout\,
	datad => \SU1|SRA_SRL_sig[39]~24_combout\,
	combout => \Y~77_combout\);

-- Location: LCCOMB_X73_Y33_N4
\Y~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~78_combout\ = (\Y~43_combout\ & (\Y~73_combout\ & ((\Y~44_combout\)))) # (!\Y~43_combout\ & (((\Y~77_combout\) # (!\Y~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~43_combout\,
	datab => \Y~73_combout\,
	datac => \Y~77_combout\,
	datad => \Y~44_combout\,
	combout => \Y~78_combout\);

-- Location: LCCOMB_X72_Y37_N26
\SU1|SLL64|Stage1_sig[7]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[7]~71_combout\ = (\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[7]~68_combout\)) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~200_combout\) # (\SU1|SRL64|Stage1_sig[48]~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[7]~68_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~200_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~190_combout\,
	combout => \SU1|SLL64|Stage1_sig[7]~71_combout\);

-- Location: LCCOMB_X72_Y36_N28
\SU1|SLL64|Stage1_sig[3]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[3]~70_combout\ = (\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[3]~63_combout\)) # (!\B[0]~input_o\ & ((\SU1|SLL64|Stage1_sig[3]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SLL64|Stage1_sig[3]~63_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[3]~65_combout\,
	combout => \SU1|SLL64|Stage1_sig[3]~70_combout\);

-- Location: LCCOMB_X72_Y36_N14
\SU1|SLL64|Stage2_sig[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[7]~17_combout\ = (\SU1|SRA64|Equal5~0_combout\ & ((\SU1|SLL64|Stage1_sig[3]~70_combout\) # ((\SU1|SRA64|Stage2_sig[52]~62_combout\ & \SU1|SLL64|Stage1_sig[7]~71_combout\)))) # (!\SU1|SRA64|Equal5~0_combout\ & 
-- (\SU1|SRA64|Stage2_sig[52]~62_combout\ & (\SU1|SLL64|Stage1_sig[7]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Equal5~0_combout\,
	datab => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datac => \SU1|SLL64|Stage1_sig[7]~71_combout\,
	datad => \SU1|SLL64|Stage1_sig[3]~70_combout\,
	combout => \SU1|SLL64|Stage2_sig[7]~17_combout\);

-- Location: LCCOMB_X72_Y36_N24
\Y~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~79_combout\ = (\Y~78_combout\ & ((\AU1|Adder|Add0~16_combout\) # ((!\Y~45_combout\)))) # (!\Y~78_combout\ & (((\SU1|SLL64|Stage2_sig[7]~17_combout\ & \Y~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~78_combout\,
	datab => \AU1|Adder|Add0~16_combout\,
	datac => \SU1|SLL64|Stage2_sig[7]~17_combout\,
	datad => \Y~45_combout\,
	combout => \Y~79_combout\);

-- Location: LCCOMB_X75_Y37_N16
\SU1|SLL64|Stage1_sig[9]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[9]~72_combout\ = (\SU1|SRL64|Stage1_sig[48]~68_combout\) # (\SU1|SRL64|Stage1_sig[48]~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~68_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~75_combout\,
	combout => \SU1|SLL64|Stage1_sig[9]~72_combout\);

-- Location: LCCOMB_X72_Y37_N12
\SU1|SLL64|Stage1_sig[8]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[8]~73_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~190_combout\) # ((\SU1|SRL64|Stage1_sig[48]~200_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[9]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~190_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~200_combout\,
	datad => \SU1|SLL64|Stage1_sig[9]~72_combout\,
	combout => \SU1|SLL64|Stage1_sig[8]~73_combout\);

-- Location: LCCOMB_X72_Y32_N6
\SU1|SLL64|Stage2_sig[12]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[12]~18_combout\ = (\B[3]~input_o\ & (((!\SU1|SRA64|Equal2~0_combout\ & \SU1|X_sig[0]~1_combout\)))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[8]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[8]~73_combout\,
	datab => \SU1|SRA64|Equal2~0_combout\,
	datac => \SU1|X_sig[0]~1_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SLL64|Stage2_sig[12]~18_combout\);

-- Location: LCCOMB_X72_Y32_N12
\SU1|SLL64|Stage2_sig[8]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[8]~95_combout\ = (\B[2]~input_o\ & (\SU1|SLL64|Stage1_sig[4]~138_combout\ & (!\B[3]~input_o\))) # (!\B[2]~input_o\ & (((\SU1|SLL64|Stage2_sig[12]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[4]~138_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SU1|SLL64|Stage2_sig[12]~18_combout\,
	combout => \SU1|SLL64|Stage2_sig[8]~95_combout\);

-- Location: LCCOMB_X75_Y37_N2
\Y~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~80_combout\ = (\B[8]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[8]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Y~80_combout\);

-- Location: LCCOMB_X73_Y33_N14
\Y~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~81_combout\ = (\Y~80_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~80_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~81_combout\);

-- Location: LCCOMB_X67_Y32_N12
\SU1|SRL64|Stage2_sig[24]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[24]~90_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[36]~277_combout\))) # (!\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[28]~264_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[28]~264_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[36]~277_combout\,
	combout => \SU1|SRL64|Stage2_sig[24]~90_combout\);

-- Location: LCCOMB_X67_Y32_N6
\SU1|SRL64|Stage2_sig[24]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[24]~91_combout\ = (\SU1|SRL64|Stage2_sig[24]~90_combout\) # ((!\B[2]~input_o\ & \SU1|SRL64|Stage2_sig[20]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SU1|SRL64|Stage2_sig[20]~61_combout\,
	datad => \SU1|SRL64|Stage2_sig[24]~90_combout\,
	combout => \SU1|SRL64|Stage2_sig[24]~91_combout\);

-- Location: LCCOMB_X67_Y31_N2
\SU1|SRL64|Stage2_sig[56]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[56]~86_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\SU1|SRL64|Stage1_sig[56]~274_combout\) # ((\SU1|SRA64|Equal5~0_combout\ & \SU1|SRL64|Stage1_sig[60]~99_combout\)))) # (!\SU1|SRA64|Stage2_sig[52]~62_combout\ & 
-- (\SU1|SRA64|Equal5~0_combout\ & ((\SU1|SRL64|Stage1_sig[60]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datab => \SU1|SRA64|Equal5~0_combout\,
	datac => \SU1|SRL64|Stage1_sig[56]~274_combout\,
	datad => \SU1|SRL64|Stage1_sig[60]~99_combout\,
	combout => \SU1|SRL64|Stage2_sig[56]~86_combout\);

-- Location: LCCOMB_X68_Y30_N26
\SU1|SRA64|Stage2_sig[56]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[56]~89_combout\ = (\B[3]~input_o\ & (((\SU1|X_sig[63]~2_combout\)))) # (!\B[3]~input_o\ & (\B[2]~input_o\ & (\SU1|SRL64|Stage1_sig[60]~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[60]~99_combout\,
	datad => \SU1|X_sig[63]~2_combout\,
	combout => \SU1|SRA64|Stage2_sig[56]~89_combout\);

-- Location: LCCOMB_X68_Y30_N28
\SU1|SRA64|Stage2_sig[56]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[56]~83_combout\ = (\SU1|SRA64|Stage2_sig[56]~89_combout\) # ((!\B[2]~input_o\ & (!\B[3]~input_o\ & \SU1|SRL64|Stage1_sig[56]~274_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SU1|SRA64|Stage2_sig[56]~89_combout\,
	datad => \SU1|SRL64|Stage1_sig[56]~274_combout\,
	combout => \SU1|SRA64|Stage2_sig[56]~83_combout\);

-- Location: LCCOMB_X68_Y31_N4
\Y~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~83_combout\ = (\Y~14_combout\ & (((\SU1|SRL64|Stage3_sig~42_combout\) # (\SU1|SRA64|Stage2_sig[56]~83_combout\)))) # (!\Y~14_combout\ & (\SU1|SRL64|Stage2_sig[56]~86_combout\ & (!\SU1|SRL64|Stage3_sig~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[56]~86_combout\,
	datab => \Y~14_combout\,
	datac => \SU1|SRL64|Stage3_sig~42_combout\,
	datad => \SU1|SRA64|Stage2_sig[56]~83_combout\,
	combout => \Y~83_combout\);

-- Location: LCCOMB_X67_Y31_N6
\SU1|SRL64|Stage2_sig[40]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[40]~88_combout\ = (\SU1|SRL64|Stage2_sig[44]~31_combout\ & ((\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[53]~150_combout\)) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[52]~102_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[53]~150_combout\,
	datac => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datad => \SU1|SRL64|Stage1_sig[52]~102_combout\,
	combout => \SU1|SRL64|Stage2_sig[40]~88_combout\);

-- Location: LCCOMB_X67_Y31_N20
\SU1|SRL64|Stage2_sig[40]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[40]~87_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\SU1|SRL64|Stage1_sig[40]~117_combout\) # ((\SU1|SRA64|Stage2_sig[52]~66_combout\ & \SU1|SRL64|Stage1_sig[48]~275_combout\)))) # (!\SU1|SRA64|Stage2_sig[52]~62_combout\ & 
-- (((\SU1|SRA64|Stage2_sig[52]~66_combout\ & \SU1|SRL64|Stage1_sig[48]~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datab => \SU1|SRL64|Stage1_sig[40]~117_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~275_combout\,
	combout => \SU1|SRL64|Stage2_sig[40]~87_combout\);

-- Location: LCCOMB_X67_Y31_N8
\SU1|SRL64|Stage2_sig[40]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[40]~89_combout\ = (\SU1|SRL64|Stage2_sig[40]~88_combout\) # ((\SU1|SRL64|Stage2_sig[40]~87_combout\) # ((\SU1|SRA64|Equal5~0_combout\ & \SU1|SRL64|Stage1_sig[44]~276_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[40]~88_combout\,
	datab => \SU1|SRA64|Equal5~0_combout\,
	datac => \SU1|SRL64|Stage1_sig[44]~276_combout\,
	datad => \SU1|SRL64|Stage2_sig[40]~87_combout\,
	combout => \SU1|SRL64|Stage2_sig[40]~89_combout\);

-- Location: LCCOMB_X68_Y31_N14
\Y~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~84_combout\ = (\SU1|SRL64|Stage3_sig~42_combout\ & ((\Y~83_combout\ & (\SU1|SRL64|Stage2_sig[24]~91_combout\)) # (!\Y~83_combout\ & ((\SU1|SRL64|Stage2_sig[40]~89_combout\))))) # (!\SU1|SRL64|Stage3_sig~42_combout\ & (((\Y~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage3_sig~42_combout\,
	datab => \SU1|SRL64|Stage2_sig[24]~91_combout\,
	datac => \Y~83_combout\,
	datad => \SU1|SRL64|Stage2_sig[40]~89_combout\,
	combout => \Y~84_combout\);

-- Location: LCCOMB_X68_Y31_N16
\SU1|SRA_SRL_sig[40]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[40]~25_combout\ = (\SU1|SRA_SRL_sig[41]~9_combout\ & (((\SU1|SRA_SRL_sig[41]~8_combout\ & \SU1|SRL64|Stage2_sig[56]~86_combout\)))) # (!\SU1|SRA_SRL_sig[41]~9_combout\ & ((\SU1|SRL64|Stage2_sig[40]~89_combout\) # 
-- ((!\SU1|SRA_SRL_sig[41]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[40]~89_combout\,
	datab => \SU1|SRA_SRL_sig[41]~9_combout\,
	datac => \SU1|SRA_SRL_sig[41]~8_combout\,
	datad => \SU1|SRL64|Stage2_sig[56]~86_combout\,
	combout => \SU1|SRA_SRL_sig[40]~25_combout\);

-- Location: LCCOMB_X68_Y31_N26
\SU1|SRA_SRL_sig[40]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[40]~26_combout\ = (\SU1|SRA_SRL_sig[41]~7_combout\ & ((\SU1|SRA_SRL_sig[40]~25_combout\ & (\SU1|SRA64|Stage2_sig[56]~83_combout\)) # (!\SU1|SRA_SRL_sig[40]~25_combout\ & ((\SU1|X_sig[63]~2_combout\))))) # (!\SU1|SRA_SRL_sig[41]~7_combout\ 
-- & (((\SU1|SRA_SRL_sig[40]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[56]~83_combout\,
	datab => \SU1|SRA_SRL_sig[41]~7_combout\,
	datac => \SU1|X_sig[63]~2_combout\,
	datad => \SU1|SRA_SRL_sig[40]~25_combout\,
	combout => \SU1|SRA_SRL_sig[40]~26_combout\);

-- Location: LCCOMB_X69_Y33_N24
\Y~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~82_combout\ = (\Y~48_combout\ & (((\Y~49_combout\)))) # (!\Y~48_combout\ & ((\Y~49_combout\ & ((\SU1|SRA_SRL_sig[40]~26_combout\))) # (!\Y~49_combout\ & (\SU1|SRL64|Stage2_sig[48]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[48]~57_combout\,
	datab => \Y~48_combout\,
	datac => \SU1|SRA_SRL_sig[40]~26_combout\,
	datad => \Y~49_combout\,
	combout => \Y~82_combout\);

-- Location: LCCOMB_X69_Y33_N30
\SU1|SRL64|Stage2_sig[48]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~85_combout\ = (\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[20]~265_combout\)) # (!\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[12]~273_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[20]~265_combout\,
	datad => \SU1|SRL64|Stage1_sig[12]~273_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~85_combout\);

-- Location: LCCOMB_X69_Y33_N2
\Y~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~85_combout\ = (\Y~82_combout\ & ((\Y~84_combout\) # ((!\Y~48_combout\)))) # (!\Y~82_combout\ & (((\SU1|SRL64|Stage2_sig[48]~85_combout\ & \Y~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~84_combout\,
	datab => \Y~82_combout\,
	datac => \SU1|SRL64|Stage2_sig[48]~85_combout\,
	datad => \Y~48_combout\,
	combout => \Y~85_combout\);

-- Location: LCCOMB_X73_Y33_N16
\Y~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~86_combout\ = (\Y~43_combout\ & (\Y~81_combout\ & ((\Y~44_combout\)))) # (!\Y~43_combout\ & (((\Y~85_combout\) # (!\Y~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~43_combout\,
	datab => \Y~81_combout\,
	datac => \Y~85_combout\,
	datad => \Y~44_combout\,
	combout => \Y~86_combout\);

-- Location: LCCOMB_X72_Y32_N16
\Y~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~87_combout\ = (\Y~86_combout\ & (((\AU1|Adder|Add0~18_combout\) # (!\Y~45_combout\)))) # (!\Y~86_combout\ & (\SU1|SLL64|Stage2_sig[8]~95_combout\ & ((\Y~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[8]~95_combout\,
	datab => \Y~86_combout\,
	datac => \AU1|Adder|Add0~18_combout\,
	datad => \Y~45_combout\,
	combout => \Y~87_combout\);

-- Location: LCCOMB_X72_Y37_N14
\SU1|SLL64|Stage1_sig[9]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[9]~74_combout\ = (\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[9]~72_combout\)) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~73_combout\) # (\SU1|SRL64|Stage1_sig[48]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[9]~72_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~73_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~65_combout\,
	combout => \SU1|SLL64|Stage1_sig[9]~74_combout\);

-- Location: LCCOMB_X73_Y34_N28
\SU1|SLL64|Stage2_sig[9]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[9]~19_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SU1|SLL64|Stage1_sig[5]~67_combout\)) # (!\B[2]~input_o\ & ((\SU1|SLL64|Stage1_sig[9]~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[5]~67_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[9]~74_combout\,
	combout => \SU1|SLL64|Stage2_sig[9]~19_combout\);

-- Location: LCCOMB_X73_Y34_N22
\SU1|SLL64|Stage2_sig[9]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[9]~96_combout\ = (\SU1|SLL64|Stage2_sig[9]~19_combout\) # ((\B[3]~input_o\ & (!\B[2]~input_o\ & \SU1|SLL64|Stage1_sig[1]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[1]~62_combout\,
	datad => \SU1|SLL64|Stage2_sig[9]~19_combout\,
	combout => \SU1|SLL64|Stage2_sig[9]~96_combout\);

-- Location: LCCOMB_X67_Y33_N14
\SU1|SRL64|Stage2_sig[41]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[41]~93_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\SU1|SRL64|Stage1_sig[41]~280_combout\) # ((\SU1|SRL64|Stage1_sig[49]~146_combout\ & \SU1|SRA64|Stage2_sig[52]~66_combout\)))) # (!\SU1|SRA64|Stage2_sig[52]~62_combout\ & 
-- (\SU1|SRL64|Stage1_sig[49]~146_combout\ & (\SU1|SRA64|Stage2_sig[52]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datab => \SU1|SRL64|Stage1_sig[49]~146_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datad => \SU1|SRL64|Stage1_sig[41]~280_combout\,
	combout => \SU1|SRL64|Stage2_sig[41]~93_combout\);

-- Location: LCCOMB_X68_Y34_N4
\SU1|SRL64|Stage1_sig[53]~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[53]~267_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~147_combout\) # ((\SU1|SRL64|Stage1_sig[48]~148_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[53]~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~147_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~148_combout\,
	datad => \SU1|SRL64|Stage1_sig[53]~150_combout\,
	combout => \SU1|SRL64|Stage1_sig[53]~267_combout\);

-- Location: LCCOMB_X67_Y33_N24
\SU1|SRL64|Stage2_sig[41]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[41]~94_combout\ = (\SU1|SRL64|Stage2_sig[44]~31_combout\ & ((\SU1|SRL64|Stage1_sig[53]~267_combout\) # ((\SU1|SRA64|Equal5~0_combout\ & \SU1|SRL64|Stage1_sig[45]~266_combout\)))) # (!\SU1|SRL64|Stage2_sig[44]~31_combout\ & 
-- (\SU1|SRA64|Equal5~0_combout\ & (\SU1|SRL64|Stage1_sig[45]~266_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datab => \SU1|SRA64|Equal5~0_combout\,
	datac => \SU1|SRL64|Stage1_sig[45]~266_combout\,
	datad => \SU1|SRL64|Stage1_sig[53]~267_combout\,
	combout => \SU1|SRL64|Stage2_sig[41]~94_combout\);

-- Location: LCCOMB_X67_Y33_N26
\SU1|SRL64|Stage2_sig[41]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[41]~95_combout\ = (\SU1|SRL64|Stage2_sig[41]~93_combout\) # (\SU1|SRL64|Stage2_sig[41]~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage2_sig[41]~93_combout\,
	datad => \SU1|SRL64|Stage2_sig[41]~94_combout\,
	combout => \SU1|SRL64|Stage2_sig[41]~95_combout\);

-- Location: LCCOMB_X67_Y30_N24
\SU1|SRL64|Stage2_sig[57]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[57]~92_combout\ = (\SU1|SRL64|Stage1_sig[61]~165_combout\ & ((\SU1|SRA64|Equal5~0_combout\) # ((\SU1|SRA64|Stage2_sig[52]~62_combout\ & \SU1|SRL64|Stage1_sig[57]~143_combout\)))) # (!\SU1|SRL64|Stage1_sig[61]~165_combout\ & 
-- (\SU1|SRA64|Stage2_sig[52]~62_combout\ & (\SU1|SRL64|Stage1_sig[57]~143_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[61]~165_combout\,
	datab => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datac => \SU1|SRL64|Stage1_sig[57]~143_combout\,
	datad => \SU1|SRA64|Equal5~0_combout\,
	combout => \SU1|SRL64|Stage2_sig[57]~92_combout\);

-- Location: LCCOMB_X67_Y30_N6
\Y~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~91_combout\ = (\SU1|SRL64|Stage3_sig~42_combout\ & ((\Y~14_combout\) # ((\SU1|SRL64|Stage2_sig[41]~95_combout\)))) # (!\SU1|SRL64|Stage3_sig~42_combout\ & (!\Y~14_combout\ & ((\SU1|SRL64|Stage2_sig[57]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage3_sig~42_combout\,
	datab => \Y~14_combout\,
	datac => \SU1|SRL64|Stage2_sig[41]~95_combout\,
	datad => \SU1|SRL64|Stage2_sig[57]~92_combout\,
	combout => \Y~91_combout\);

-- Location: LCCOMB_X67_Y30_N2
\SU1|SRA64|Stage2_sig[57]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[57]~90_combout\ = (\B[3]~input_o\ & (((\SU1|X_sig[63]~2_combout\)))) # (!\B[3]~input_o\ & (\B[2]~input_o\ & ((\SU1|SRA64|Stage1_sig[61]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SU1|X_sig[63]~2_combout\,
	datad => \SU1|SRA64|Stage1_sig[61]~5_combout\,
	combout => \SU1|SRA64|Stage2_sig[57]~90_combout\);

-- Location: LCCOMB_X67_Y30_N8
\SU1|SRA64|Stage2_sig[57]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[57]~84_combout\ = (\SU1|SRA64|Stage2_sig[57]~90_combout\) # ((!\B[3]~input_o\ & (!\B[2]~input_o\ & \SU1|SRL64|Stage1_sig[57]~143_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[57]~143_combout\,
	datad => \SU1|SRA64|Stage2_sig[57]~90_combout\,
	combout => \SU1|SRA64|Stage2_sig[57]~84_combout\);

-- Location: LCCOMB_X69_Y37_N6
\SU1|SRL64|Stage2_sig[25]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[25]~97_combout\ = (\B[3]~input_o\ & (((\B[2]~input_o\)))) # (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SU1|SRL64|Stage1_sig[29]~282_combout\)) # (!\B[2]~input_o\ & ((\SU1|SRL64|Stage1_sig[25]~284_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[29]~282_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[25]~284_combout\,
	combout => \SU1|SRL64|Stage2_sig[25]~97_combout\);

-- Location: LCCOMB_X67_Y33_N4
\SU1|SRL64|Stage2_sig[25]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[25]~98_combout\ = (\B[3]~input_o\ & ((\SU1|SRL64|Stage2_sig[25]~97_combout\ & (\SU1|SRL64|Stage1_sig[37]~281_combout\)) # (!\SU1|SRL64|Stage2_sig[25]~97_combout\ & ((\SU1|SRL64|Stage1_sig[33]~157_combout\))))) # (!\B[3]~input_o\ & 
-- (\SU1|SRL64|Stage2_sig[25]~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SU1|SRL64|Stage2_sig[25]~97_combout\,
	datac => \SU1|SRL64|Stage1_sig[37]~281_combout\,
	datad => \SU1|SRL64|Stage1_sig[33]~157_combout\,
	combout => \SU1|SRL64|Stage2_sig[25]~98_combout\);

-- Location: LCCOMB_X67_Y30_N16
\Y~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~92_combout\ = (\Y~91_combout\ & (((\SU1|SRL64|Stage2_sig[25]~98_combout\)) # (!\Y~14_combout\))) # (!\Y~91_combout\ & (\Y~14_combout\ & (\SU1|SRA64|Stage2_sig[57]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~91_combout\,
	datab => \Y~14_combout\,
	datac => \SU1|SRA64|Stage2_sig[57]~84_combout\,
	datad => \SU1|SRL64|Stage2_sig[25]~98_combout\,
	combout => \Y~92_combout\);

-- Location: LCCOMB_X67_Y30_N10
\SU1|SRA_SRL_sig[41]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[41]~27_combout\ = (\SU1|SRA_SRL_sig[41]~9_combout\ & (((\SU1|SRA_SRL_sig[41]~8_combout\ & \SU1|SRL64|Stage2_sig[57]~92_combout\)))) # (!\SU1|SRA_SRL_sig[41]~9_combout\ & ((\SU1|SRL64|Stage2_sig[41]~95_combout\) # 
-- ((!\SU1|SRA_SRL_sig[41]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[41]~95_combout\,
	datab => \SU1|SRA_SRL_sig[41]~9_combout\,
	datac => \SU1|SRA_SRL_sig[41]~8_combout\,
	datad => \SU1|SRL64|Stage2_sig[57]~92_combout\,
	combout => \SU1|SRA_SRL_sig[41]~27_combout\);

-- Location: LCCOMB_X67_Y30_N4
\SU1|SRA_SRL_sig[41]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[41]~28_combout\ = (\SU1|SRA_SRL_sig[41]~7_combout\ & ((\SU1|SRA_SRL_sig[41]~27_combout\ & ((\SU1|SRA64|Stage2_sig[57]~84_combout\))) # (!\SU1|SRA_SRL_sig[41]~27_combout\ & (\SU1|X_sig[63]~2_combout\)))) # (!\SU1|SRA_SRL_sig[41]~7_combout\ 
-- & (((\SU1|SRA_SRL_sig[41]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|X_sig[63]~2_combout\,
	datab => \SU1|SRA_SRL_sig[41]~7_combout\,
	datac => \SU1|SRA64|Stage2_sig[57]~84_combout\,
	datad => \SU1|SRA_SRL_sig[41]~27_combout\,
	combout => \SU1|SRA_SRL_sig[41]~28_combout\);

-- Location: LCCOMB_X69_Y37_N28
\SU1|SRL64|Stage2_sig[48]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~96_combout\ = (\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[21]~283_combout\))) # (!\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[13]~279_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[13]~279_combout\,
	datab => \B[3]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[21]~283_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~96_combout\);

-- Location: LCCOMB_X70_Y33_N28
\Y~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~90_combout\ = (\Y~48_combout\ & ((\SU1|SRL64|Stage2_sig[48]~96_combout\) # ((\Y~49_combout\)))) # (!\Y~48_combout\ & (((!\Y~49_combout\ & \SU1|SRL64|Stage2_sig[48]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~48_combout\,
	datab => \SU1|SRL64|Stage2_sig[48]~96_combout\,
	datac => \Y~49_combout\,
	datad => \SU1|SRL64|Stage2_sig[48]~68_combout\,
	combout => \Y~90_combout\);

-- Location: LCCOMB_X70_Y33_N30
\Y~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~93_combout\ = (\Y~49_combout\ & ((\Y~90_combout\ & (\Y~92_combout\)) # (!\Y~90_combout\ & ((\SU1|SRA_SRL_sig[41]~28_combout\))))) # (!\Y~49_combout\ & (((\Y~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~92_combout\,
	datab => \Y~49_combout\,
	datac => \SU1|SRA_SRL_sig[41]~28_combout\,
	datad => \Y~90_combout\,
	combout => \Y~93_combout\);

-- Location: LCCOMB_X76_Y37_N10
\Y~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~88_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y~88_combout\);

-- Location: LCCOMB_X73_Y33_N26
\Y~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~89_combout\ = (\Y~88_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~88_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~89_combout\);

-- Location: LCCOMB_X73_Y33_N28
\Y~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~94_combout\ = (\Y~43_combout\ & (((\Y~89_combout\ & \Y~44_combout\)))) # (!\Y~43_combout\ & ((\Y~93_combout\) # ((!\Y~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~43_combout\,
	datab => \Y~93_combout\,
	datac => \Y~89_combout\,
	datad => \Y~44_combout\,
	combout => \Y~94_combout\);

-- Location: LCCOMB_X74_Y34_N8
\Y~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~95_combout\ = (\Y~94_combout\ & ((\AU1|Adder|Add0~20_combout\) # ((!\Y~45_combout\)))) # (!\Y~94_combout\ & (((\SU1|SLL64|Stage2_sig[9]~96_combout\ & \Y~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~20_combout\,
	datab => \SU1|SLL64|Stage2_sig[9]~96_combout\,
	datac => \Y~94_combout\,
	datad => \Y~45_combout\,
	combout => \Y~95_combout\);

-- Location: LCCOMB_X66_Y32_N10
\SU1|SRL64|Stage2_sig[58]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[58]~100_combout\ = (\SU1|SRL64|Stage1_sig[58]~216_combout\ & ((\SU1|SRA64|Stage2_sig[52]~62_combout\) # ((\SU1|SRA64|Equal5~0_combout\ & \SU1|SRL64|Stage1_sig[62]~224_combout\)))) # (!\SU1|SRL64|Stage1_sig[58]~216_combout\ & 
-- (((\SU1|SRA64|Equal5~0_combout\ & \SU1|SRL64|Stage1_sig[62]~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[58]~216_combout\,
	datab => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datac => \SU1|SRA64|Equal5~0_combout\,
	datad => \SU1|SRL64|Stage1_sig[62]~224_combout\,
	combout => \SU1|SRL64|Stage2_sig[58]~100_combout\);

-- Location: LCCOMB_X66_Y32_N22
\SU1|SRA64|Stage2_sig[58]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[58]~91_combout\ = (\B[3]~input_o\ & (\SU1|X_sig[63]~2_combout\)) # (!\B[3]~input_o\ & (((\B[2]~input_o\ & \SU1|SRA64|Stage1_sig[62]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|X_sig[63]~2_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRA64|Stage1_sig[62]~6_combout\,
	combout => \SU1|SRA64|Stage2_sig[58]~91_combout\);

-- Location: LCCOMB_X66_Y32_N26
\SU1|SRA64|Stage2_sig[58]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[58]~85_combout\ = (\SU1|SRA64|Stage2_sig[58]~91_combout\) # ((!\B[3]~input_o\ & (!\B[2]~input_o\ & \SU1|SRL64|Stage1_sig[58]~216_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[58]~216_combout\,
	datad => \SU1|SRA64|Stage2_sig[58]~91_combout\,
	combout => \SU1|SRA64|Stage2_sig[58]~85_combout\);

-- Location: LCCOMB_X68_Y32_N30
\Y~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~99_combout\ = (\Y~14_combout\ & (((\SU1|SRL64|Stage3_sig~42_combout\) # (\SU1|SRA64|Stage2_sig[58]~85_combout\)))) # (!\Y~14_combout\ & (\SU1|SRL64|Stage2_sig[58]~100_combout\ & (!\SU1|SRL64|Stage3_sig~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~14_combout\,
	datab => \SU1|SRL64|Stage2_sig[58]~100_combout\,
	datac => \SU1|SRL64|Stage3_sig~42_combout\,
	datad => \SU1|SRA64|Stage2_sig[58]~85_combout\,
	combout => \Y~99_combout\);

-- Location: LCCOMB_X65_Y36_N16
\SU1|SRL64|Stage2_sig[26]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[26]~104_combout\ = (\B[2]~input_o\ & ((\SU1|SRL64|Stage1_sig[30]~227_combout\) # ((\B[3]~input_o\)))) # (!\B[2]~input_o\ & (((!\B[3]~input_o\ & \SU1|SRL64|Stage1_sig[26]~233_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[30]~227_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[26]~233_combout\,
	combout => \SU1|SRL64|Stage2_sig[26]~104_combout\);

-- Location: LCCOMB_X65_Y36_N18
\SU1|SRL64|Stage2_sig[26]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[26]~105_combout\ = (\SU1|SRL64|Stage2_sig[26]~104_combout\ & ((\SU1|SRL64|Stage1_sig[38]~206_combout\) # ((!\B[3]~input_o\)))) # (!\SU1|SRL64|Stage2_sig[26]~104_combout\ & (((\B[3]~input_o\ & 
-- \SU1|SRL64|Stage1_sig[34]~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[38]~206_combout\,
	datab => \SU1|SRL64|Stage2_sig[26]~104_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[34]~212_combout\,
	combout => \SU1|SRL64|Stage2_sig[26]~105_combout\);

-- Location: LCCOMB_X65_Y36_N14
\SU1|SRL64|Stage2_sig[42]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[42]~101_combout\ = (\SU1|SRL64|Stage1_sig[42]~203_combout\ & ((\SU1|SRA64|Stage2_sig[52]~62_combout\) # ((\SU1|SRA64|Stage2_sig[52]~66_combout\ & \SU1|SRL64|Stage1_sig[50]~220_combout\)))) # (!\SU1|SRL64|Stage1_sig[42]~203_combout\ & 
-- (\SU1|SRA64|Stage2_sig[52]~66_combout\ & ((\SU1|SRL64|Stage1_sig[50]~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[42]~203_combout\,
	datab => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datad => \SU1|SRL64|Stage1_sig[50]~220_combout\,
	combout => \SU1|SRL64|Stage2_sig[42]~101_combout\);

-- Location: LCCOMB_X66_Y32_N20
\SU1|SRL64|Stage2_sig[42]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[42]~102_combout\ = (\SU1|SRL64|Stage2_sig[44]~31_combout\ & ((\SU1|SRL64|Stage1_sig[54]~223_combout\) # ((\SU1|SRL64|Stage1_sig[46]~209_combout\ & \SU1|SRA64|Equal5~0_combout\)))) # (!\SU1|SRL64|Stage2_sig[44]~31_combout\ & 
-- (\SU1|SRL64|Stage1_sig[46]~209_combout\ & (\SU1|SRA64|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datab => \SU1|SRL64|Stage1_sig[46]~209_combout\,
	datac => \SU1|SRA64|Equal5~0_combout\,
	datad => \SU1|SRL64|Stage1_sig[54]~223_combout\,
	combout => \SU1|SRL64|Stage2_sig[42]~102_combout\);

-- Location: LCCOMB_X68_Y32_N8
\SU1|SRL64|Stage2_sig[42]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[42]~103_combout\ = (\SU1|SRL64|Stage2_sig[42]~101_combout\) # (\SU1|SRL64|Stage2_sig[42]~102_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[42]~101_combout\,
	datad => \SU1|SRL64|Stage2_sig[42]~102_combout\,
	combout => \SU1|SRL64|Stage2_sig[42]~103_combout\);

-- Location: LCCOMB_X68_Y32_N16
\Y~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~100_combout\ = (\Y~99_combout\ & ((\SU1|SRL64|Stage2_sig[26]~105_combout\) # ((!\SU1|SRL64|Stage3_sig~42_combout\)))) # (!\Y~99_combout\ & (((\SU1|SRL64|Stage3_sig~42_combout\ & \SU1|SRL64|Stage2_sig[42]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~99_combout\,
	datab => \SU1|SRL64|Stage2_sig[26]~105_combout\,
	datac => \SU1|SRL64|Stage3_sig~42_combout\,
	datad => \SU1|SRL64|Stage2_sig[42]~103_combout\,
	combout => \Y~100_combout\);

-- Location: LCCOMB_X69_Y33_N20
\SU1|SRL64|Stage2_sig[48]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~99_combout\ = (\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[22]~286_combout\))) # (!\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[14]~198_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[14]~198_combout\,
	datad => \SU1|SRL64|Stage1_sig[22]~286_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~99_combout\);

-- Location: LCCOMB_X68_Y32_N10
\SU1|SRA_SRL_sig[42]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[42]~29_combout\ = (\SU1|SRA_SRL_sig[41]~8_combout\ & ((\SU1|SRA_SRL_sig[41]~9_combout\ & (\SU1|SRL64|Stage2_sig[58]~100_combout\)) # (!\SU1|SRA_SRL_sig[41]~9_combout\ & ((\SU1|SRL64|Stage2_sig[42]~103_combout\))))) # 
-- (!\SU1|SRA_SRL_sig[41]~8_combout\ & (((!\SU1|SRA_SRL_sig[41]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[41]~8_combout\,
	datab => \SU1|SRL64|Stage2_sig[58]~100_combout\,
	datac => \SU1|SRA_SRL_sig[41]~9_combout\,
	datad => \SU1|SRL64|Stage2_sig[42]~103_combout\,
	combout => \SU1|SRA_SRL_sig[42]~29_combout\);

-- Location: LCCOMB_X68_Y32_N20
\SU1|SRA_SRL_sig[42]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[42]~30_combout\ = (\SU1|SRA_SRL_sig[42]~29_combout\ & ((\SU1|SRA64|Stage2_sig[58]~85_combout\) # ((!\SU1|SRA_SRL_sig[41]~7_combout\)))) # (!\SU1|SRA_SRL_sig[42]~29_combout\ & (((\SU1|SRA_SRL_sig[41]~7_combout\ & 
-- \SU1|X_sig[63]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[42]~29_combout\,
	datab => \SU1|SRA64|Stage2_sig[58]~85_combout\,
	datac => \SU1|SRA_SRL_sig[41]~7_combout\,
	datad => \SU1|X_sig[63]~2_combout\,
	combout => \SU1|SRA_SRL_sig[42]~30_combout\);

-- Location: LCCOMB_X69_Y33_N14
\Y~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~98_combout\ = (\Y~48_combout\ & (((\Y~49_combout\)))) # (!\Y~48_combout\ & ((\Y~49_combout\ & (\SU1|SRA_SRL_sig[42]~30_combout\)) # (!\Y~49_combout\ & ((\SU1|SRL64|Stage2_sig[48]~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~48_combout\,
	datab => \SU1|SRA_SRL_sig[42]~30_combout\,
	datac => \SU1|SRL64|Stage2_sig[48]~71_combout\,
	datad => \Y~49_combout\,
	combout => \Y~98_combout\);

-- Location: LCCOMB_X69_Y33_N0
\Y~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~101_combout\ = (\Y~98_combout\ & ((\Y~100_combout\) # ((!\Y~48_combout\)))) # (!\Y~98_combout\ & (((\SU1|SRL64|Stage2_sig[48]~99_combout\ & \Y~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~100_combout\,
	datab => \SU1|SRL64|Stage2_sig[48]~99_combout\,
	datac => \Y~98_combout\,
	datad => \Y~48_combout\,
	combout => \Y~101_combout\);

-- Location: LCCOMB_X76_Y37_N12
\Y~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~96_combout\ = (\B[10]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[10]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[10]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Y~96_combout\);

-- Location: LCCOMB_X76_Y34_N24
\Y~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~97_combout\ = (\Y~96_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~96_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~97_combout\);

-- Location: LCCOMB_X76_Y34_N26
\Y~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~102_combout\ = (\Y~43_combout\ & (\Y~44_combout\ & ((\Y~97_combout\)))) # (!\Y~43_combout\ & (((\Y~101_combout\)) # (!\Y~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~43_combout\,
	datab => \Y~44_combout\,
	datac => \Y~101_combout\,
	datad => \Y~97_combout\,
	combout => \Y~102_combout\);

-- Location: LCCOMB_X72_Y37_N16
\SU1|SLL64|Stage1_sig[11]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[11]~75_combout\ = (\SU1|SRL64|Stage1_sig[48]~131_combout\) # (\SU1|SRL64|Stage1_sig[48]~136_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~131_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~136_combout\,
	combout => \SU1|SLL64|Stage1_sig[11]~75_combout\);

-- Location: LCCOMB_X72_Y37_N10
\SU1|SLL64|Stage1_sig[10]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[10]~76_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~65_combout\) # (\SU1|SRL64|Stage1_sig[48]~73_combout\)))) # (!\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[11]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[11]~75_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~65_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~73_combout\,
	datad => \B[0]~input_o\,
	combout => \SU1|SLL64|Stage1_sig[10]~76_combout\);

-- Location: LCCOMB_X73_Y35_N26
\SU1|SLL64|Stage2_sig[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[10]~20_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SU1|SLL64|Stage1_sig[6]~69_combout\))) # (!\B[2]~input_o\ & (\SU1|SLL64|Stage1_sig[10]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[10]~76_combout\,
	datab => \SU1|SLL64|Stage1_sig[6]~69_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SU1|SLL64|Stage2_sig[10]~20_combout\);

-- Location: LCCOMB_X73_Y35_N4
\SU1|SLL64|Stage2_sig[10]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[10]~97_combout\ = (\SU1|SLL64|Stage2_sig[10]~20_combout\) # ((\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[2]~64_combout\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[10]~20_combout\,
	datab => \B[3]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[2]~64_combout\,
	datad => \B[2]~input_o\,
	combout => \SU1|SLL64|Stage2_sig[10]~97_combout\);

-- Location: LCCOMB_X76_Y34_N20
\Y~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~103_combout\ = (\Y~102_combout\ & (((\AU1|Adder|Add0~22_combout\) # (!\Y~45_combout\)))) # (!\Y~102_combout\ & (\SU1|SLL64|Stage2_sig[10]~97_combout\ & ((\Y~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~102_combout\,
	datab => \SU1|SLL64|Stage2_sig[10]~97_combout\,
	datac => \AU1|Adder|Add0~22_combout\,
	datad => \Y~45_combout\,
	combout => \Y~103_combout\);

-- Location: LCCOMB_X72_Y37_N28
\SU1|SLL64|Stage1_sig[11]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[11]~77_combout\ = (\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[11]~75_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~199_combout\) # ((\SU1|SRL64|Stage1_sig[48]~194_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[48]~199_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~194_combout\,
	datad => \SU1|SLL64|Stage1_sig[11]~75_combout\,
	combout => \SU1|SLL64|Stage1_sig[11]~77_combout\);

-- Location: LCCOMB_X72_Y36_N18
\SU1|SLL64|Stage2_sig[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[11]~21_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SU1|SLL64|Stage1_sig[7]~71_combout\)) # (!\B[2]~input_o\ & ((\SU1|SLL64|Stage1_sig[11]~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[7]~71_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[11]~77_combout\,
	combout => \SU1|SLL64|Stage2_sig[11]~21_combout\);

-- Location: LCCOMB_X72_Y36_N2
\SU1|SLL64|Stage2_sig[11]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[11]~98_combout\ = (\SU1|SLL64|Stage2_sig[11]~21_combout\) # ((!\B[2]~input_o\ & (\B[3]~input_o\ & \SU1|SLL64|Stage1_sig[3]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SLL64|Stage2_sig[11]~21_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[3]~70_combout\,
	combout => \SU1|SLL64|Stage2_sig[11]~98_combout\);

-- Location: LCCOMB_X69_Y31_N12
\SU1|SRL64|Stage2_sig[43]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[43]~107_combout\ = (\SU1|SRA64|Stage2_sig[52]~66_combout\ & ((\SU1|SRL64|Stage1_sig[51]~244_combout\) # ((\SU1|SRL64|Stage1_sig[43]~246_combout\ & \SU1|SRA64|Stage2_sig[52]~62_combout\)))) # (!\SU1|SRA64|Stage2_sig[52]~66_combout\ & 
-- (\SU1|SRL64|Stage1_sig[43]~246_combout\ & (\SU1|SRA64|Stage2_sig[52]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datab => \SU1|SRL64|Stage1_sig[43]~246_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datad => \SU1|SRL64|Stage1_sig[51]~244_combout\,
	combout => \SU1|SRL64|Stage2_sig[43]~107_combout\);

-- Location: LCCOMB_X69_Y31_N22
\SU1|SRL64|Stage2_sig[43]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[43]~108_combout\ = (\SU1|SRL64|Stage1_sig[55]~245_combout\ & ((\SU1|SRL64|Stage2_sig[44]~31_combout\) # ((\SU1|SRA64|Equal5~0_combout\ & \SU1|SRL64|Stage1_sig[47]~248_combout\)))) # (!\SU1|SRL64|Stage1_sig[55]~245_combout\ & 
-- (\SU1|SRA64|Equal5~0_combout\ & ((\SU1|SRL64|Stage1_sig[47]~248_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[55]~245_combout\,
	datab => \SU1|SRA64|Equal5~0_combout\,
	datac => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datad => \SU1|SRL64|Stage1_sig[47]~248_combout\,
	combout => \SU1|SRL64|Stage2_sig[43]~108_combout\);

-- Location: LCCOMB_X69_Y31_N24
\SU1|SRL64|Stage2_sig[43]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[43]~109_combout\ = (\SU1|SRL64|Stage2_sig[43]~107_combout\) # (\SU1|SRL64|Stage2_sig[43]~108_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[43]~107_combout\,
	datac => \SU1|SRL64|Stage2_sig[43]~108_combout\,
	combout => \SU1|SRL64|Stage2_sig[43]~109_combout\);

-- Location: LCCOMB_X69_Y31_N10
\SU1|SRL64|Stage2_sig[59]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[59]~106_combout\ = (\SU1|SRL64|Stage2_sig[59]~77_combout\ & ((\SU1|SRA64|Equal5~0_combout\) # ((\SU1|SRA64|Stage2_sig[52]~62_combout\ & \SU1|SRL64|Stage1_sig[59]~243_combout\)))) # (!\SU1|SRL64|Stage2_sig[59]~77_combout\ & 
-- (((\SU1|SRA64|Stage2_sig[52]~62_combout\ & \SU1|SRL64|Stage1_sig[59]~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[59]~77_combout\,
	datab => \SU1|SRA64|Equal5~0_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datad => \SU1|SRL64|Stage1_sig[59]~243_combout\,
	combout => \SU1|SRL64|Stage2_sig[59]~106_combout\);

-- Location: LCCOMB_X68_Y31_N0
\SU1|SRA_SRL_sig[43]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[43]~31_combout\ = (\SU1|SRA_SRL_sig[41]~8_combout\ & ((\SU1|SRA_SRL_sig[41]~9_combout\ & ((\SU1|SRL64|Stage2_sig[59]~106_combout\))) # (!\SU1|SRA_SRL_sig[41]~9_combout\ & (\SU1|SRL64|Stage2_sig[43]~109_combout\)))) # 
-- (!\SU1|SRA_SRL_sig[41]~8_combout\ & (((!\SU1|SRA_SRL_sig[41]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[41]~8_combout\,
	datab => \SU1|SRL64|Stage2_sig[43]~109_combout\,
	datac => \SU1|SRL64|Stage2_sig[59]~106_combout\,
	datad => \SU1|SRA_SRL_sig[41]~9_combout\,
	combout => \SU1|SRA_SRL_sig[43]~31_combout\);

-- Location: LCCOMB_X69_Y31_N6
\SU1|SRA64|Stage2_sig[59]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[59]~92_combout\ = (\B[3]~input_o\ & (\SU1|X_sig[63]~2_combout\)) # (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SU1|X_sig[63]~2_combout\)) # (!\B[2]~input_o\ & ((\SU1|SRL64|Stage1_sig[59]~243_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[59]~243_combout\,
	combout => \SU1|SRA64|Stage2_sig[59]~92_combout\);

-- Location: LCCOMB_X68_Y32_N26
\SU1|SRA_SRL_sig[43]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[43]~32_combout\ = (\SU1|SRA_SRL_sig[43]~31_combout\ & (((\SU1|SRA64|Stage2_sig[59]~92_combout\) # (!\SU1|SRA_SRL_sig[41]~7_combout\)))) # (!\SU1|SRA_SRL_sig[43]~31_combout\ & (\SU1|X_sig[63]~2_combout\ & 
-- (\SU1|SRA_SRL_sig[41]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[43]~31_combout\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \SU1|SRA_SRL_sig[41]~7_combout\,
	datad => \SU1|SRA64|Stage2_sig[59]~92_combout\,
	combout => \SU1|SRA_SRL_sig[43]~32_combout\);

-- Location: LCCOMB_X68_Y37_N26
\SU1|SRL64|Stage2_sig[48]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~110_combout\ = (\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[23]~254_combout\))) # (!\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[15]~241_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[15]~241_combout\,
	datad => \SU1|SRL64|Stage1_sig[23]~254_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~110_combout\);

-- Location: LCCOMB_X70_Y33_N8
\Y~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~106_combout\ = (\Y~49_combout\ & (((\Y~48_combout\)))) # (!\Y~49_combout\ & ((\Y~48_combout\ & (\SU1|SRL64|Stage2_sig[48]~110_combout\)) # (!\Y~48_combout\ & ((\SU1|SRL64|Stage2_sig[48]~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[48]~110_combout\,
	datab => \Y~49_combout\,
	datac => \SU1|SRL64|Stage2_sig[48]~82_combout\,
	datad => \Y~48_combout\,
	combout => \Y~106_combout\);

-- Location: LCCOMB_X68_Y31_N2
\Y~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~107_combout\ = (\SU1|SRL64|Stage3_sig~42_combout\ & ((\Y~14_combout\) # ((\SU1|SRL64|Stage2_sig[43]~109_combout\)))) # (!\SU1|SRL64|Stage3_sig~42_combout\ & (!\Y~14_combout\ & (\SU1|SRL64|Stage2_sig[59]~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage3_sig~42_combout\,
	datab => \Y~14_combout\,
	datac => \SU1|SRL64|Stage2_sig[59]~106_combout\,
	datad => \SU1|SRL64|Stage2_sig[43]~109_combout\,
	combout => \Y~107_combout\);

-- Location: LCCOMB_X68_Y33_N22
\SU1|SRL64|Stage2_sig[27]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[27]~111_combout\ = (\B[3]~input_o\ & (((\B[2]~input_o\)))) # (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SU1|SRL64|Stage1_sig[31]~251_combout\)) # (!\B[2]~input_o\ & ((\SU1|SRL64|Stage1_sig[27]~258_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[31]~251_combout\,
	datac => \SU1|SRL64|Stage1_sig[27]~258_combout\,
	datad => \B[2]~input_o\,
	combout => \SU1|SRL64|Stage2_sig[27]~111_combout\);

-- Location: LCCOMB_X68_Y33_N8
\SU1|SRL64|Stage2_sig[27]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[27]~112_combout\ = (\B[3]~input_o\ & ((\SU1|SRL64|Stage2_sig[27]~111_combout\ & ((\SU1|SRL64|Stage1_sig[39]~250_combout\))) # (!\SU1|SRL64|Stage2_sig[27]~111_combout\ & (\SU1|SRL64|Stage1_sig[35]~247_combout\)))) # (!\B[3]~input_o\ & 
-- (((\SU1|SRL64|Stage2_sig[27]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[35]~247_combout\,
	datac => \SU1|SRL64|Stage2_sig[27]~111_combout\,
	datad => \SU1|SRL64|Stage1_sig[39]~250_combout\,
	combout => \SU1|SRL64|Stage2_sig[27]~112_combout\);

-- Location: LCCOMB_X68_Y32_N12
\Y~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~108_combout\ = (\Y~14_combout\ & ((\Y~107_combout\ & (\SU1|SRL64|Stage2_sig[27]~112_combout\)) # (!\Y~107_combout\ & ((\SU1|SRA64|Stage2_sig[59]~92_combout\))))) # (!\Y~14_combout\ & (\Y~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~14_combout\,
	datab => \Y~107_combout\,
	datac => \SU1|SRL64|Stage2_sig[27]~112_combout\,
	datad => \SU1|SRA64|Stage2_sig[59]~92_combout\,
	combout => \Y~108_combout\);

-- Location: LCCOMB_X68_Y32_N14
\Y~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~109_combout\ = (\Y~106_combout\ & (((\Y~108_combout\) # (!\Y~49_combout\)))) # (!\Y~106_combout\ & (\SU1|SRA_SRL_sig[43]~32_combout\ & (\Y~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[43]~32_combout\,
	datab => \Y~106_combout\,
	datac => \Y~49_combout\,
	datad => \Y~108_combout\,
	combout => \Y~109_combout\);

-- Location: LCCOMB_X75_Y33_N20
\Y~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~104_combout\ = (\B[11]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[11]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[11]~input_o\,
	datac => \B[11]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y~104_combout\);

-- Location: LCCOMB_X73_Y33_N22
\Y~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~105_combout\ = (\Y~104_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~104_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~105_combout\);

-- Location: LCCOMB_X73_Y33_N0
\Y~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~110_combout\ = (\Y~44_combout\ & ((\Y~43_combout\ & ((\Y~105_combout\))) # (!\Y~43_combout\ & (\Y~109_combout\)))) # (!\Y~44_combout\ & (((!\Y~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~109_combout\,
	datab => \Y~44_combout\,
	datac => \Y~105_combout\,
	datad => \Y~43_combout\,
	combout => \Y~110_combout\);

-- Location: LCCOMB_X72_Y36_N20
\Y~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~111_combout\ = (\Y~110_combout\ & ((\AU1|Adder|Add0~24_combout\) # ((!\Y~45_combout\)))) # (!\Y~110_combout\ & (((\SU1|SLL64|Stage2_sig[11]~98_combout\ & \Y~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~24_combout\,
	datab => \SU1|SLL64|Stage2_sig[11]~98_combout\,
	datac => \Y~110_combout\,
	datad => \Y~45_combout\,
	combout => \Y~111_combout\);

-- Location: LCCOMB_X72_Y37_N6
\SU1|SLL64|Stage1_sig[13]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[13]~78_combout\ = (\SU1|SRL64|Stage1_sig[48]~82_combout\) # (\SU1|SRL64|Stage1_sig[48]~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~82_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~67_combout\,
	combout => \SU1|SLL64|Stage1_sig[13]~78_combout\);

-- Location: LCCOMB_X72_Y37_N0
\SU1|SLL64|Stage1_sig[12]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[12]~79_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~194_combout\) # (\SU1|SRL64|Stage1_sig[48]~199_combout\)))) # (!\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[13]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[13]~78_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~194_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~199_combout\,
	combout => \SU1|SLL64|Stage1_sig[12]~79_combout\);

-- Location: LCCOMB_X72_Y32_N2
\SU1|SLL64|Stage2_sig[12]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[12]~22_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[4]~138_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[12]~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[4]~138_combout\,
	datab => \SU1|SLL64|Stage1_sig[12]~79_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SU1|SLL64|Stage2_sig[12]~22_combout\);

-- Location: LCCOMB_X72_Y32_N4
\SU1|SLL64|Stage2_sig[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[12]~23_combout\ = (\SU1|SLL64|Stage2_sig[12]~22_combout\) # ((\SU1|SLL64|Stage2_sig[12]~18_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[12]~18_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SLL64|Stage2_sig[12]~22_combout\,
	combout => \SU1|SLL64|Stage2_sig[12]~23_combout\);

-- Location: LCCOMB_X70_Y37_N26
\Y~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~112_combout\ = (\B[12]~input_o\ & ((\A[12]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Y~112_combout\);

-- Location: LCCOMB_X76_Y34_N22
\Y~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~113_combout\ = (\Y~112_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~112_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~113_combout\);

-- Location: LCCOMB_X67_Y32_N2
\SU1|SRL64|Stage2_sig[28]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[28]~117_combout\ = (\B[2]~input_o\ & (((\B[3]~input_o\) # (\SU1|SRL64|Stage1_sig[32]~129_combout\)))) # (!\B[2]~input_o\ & (\SU1|SRL64|Stage1_sig[28]~264_combout\ & (!\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[28]~264_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[32]~129_combout\,
	combout => \SU1|SRL64|Stage2_sig[28]~117_combout\);

-- Location: LCCOMB_X67_Y32_N28
\SU1|SRL64|Stage2_sig[28]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[28]~118_combout\ = (\SU1|SRL64|Stage2_sig[28]~117_combout\ & (((\SU1|SRL64|Stage1_sig[40]~117_combout\) # (!\B[3]~input_o\)))) # (!\SU1|SRL64|Stage2_sig[28]~117_combout\ & (\SU1|SRL64|Stage1_sig[36]~277_combout\ & (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[28]~117_combout\,
	datab => \SU1|SRL64|Stage1_sig[36]~277_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[40]~117_combout\,
	combout => \SU1|SRL64|Stage2_sig[28]~118_combout\);

-- Location: LCCOMB_X67_Y31_N18
\SU1|SRL64|Stage2_sig[44]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[44]~114_combout\ = (\SU1|SRL64|Stage1_sig[56]~274_combout\ & ((\SU1|SRL64|Stage2_sig[44]~31_combout\) # ((\SU1|SRA64|Equal5~0_combout\ & \SU1|SRL64|Stage1_sig[48]~275_combout\)))) # (!\SU1|SRL64|Stage1_sig[56]~274_combout\ & 
-- (\SU1|SRA64|Equal5~0_combout\ & ((\SU1|SRL64|Stage1_sig[48]~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[56]~274_combout\,
	datab => \SU1|SRA64|Equal5~0_combout\,
	datac => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~275_combout\,
	combout => \SU1|SRL64|Stage2_sig[44]~114_combout\);

-- Location: LCCOMB_X67_Y31_N12
\SU1|SRL64|Stage2_sig[44]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[44]~115_combout\ = (\SU1|SRA64|Stage2_sig[52]~66_combout\ & ((\B[0]~input_o\ & (\SU1|SRL64|Stage1_sig[53]~150_combout\)) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[52]~102_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[53]~150_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datad => \SU1|SRL64|Stage1_sig[52]~102_combout\,
	combout => \SU1|SRL64|Stage2_sig[44]~115_combout\);

-- Location: LCCOMB_X67_Y31_N30
\SU1|SRL64|Stage2_sig[44]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[44]~116_combout\ = (\SU1|SRL64|Stage2_sig[44]~114_combout\) # ((\SU1|SRL64|Stage2_sig[44]~115_combout\) # ((\SU1|SRA64|Stage2_sig[52]~62_combout\ & \SU1|SRL64|Stage1_sig[44]~276_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datab => \SU1|SRL64|Stage2_sig[44]~114_combout\,
	datac => \SU1|SRL64|Stage1_sig[44]~276_combout\,
	datad => \SU1|SRL64|Stage2_sig[44]~115_combout\,
	combout => \SU1|SRL64|Stage2_sig[44]~116_combout\);

-- Location: LCCOMB_X68_Y30_N14
\SU1|SRA64|Stage2_sig[59]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[59]~86_combout\ = (\SU1|X_sig[63]~2_combout\ & ((\B[2]~input_o\) # (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|X_sig[63]~2_combout\,
	combout => \SU1|SRA64|Stage2_sig[59]~86_combout\);

-- Location: LCCOMB_X68_Y30_N24
\SU1|SRL64|Stage2_sig[60]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[60]~140_combout\ = (!\B[2]~input_o\ & (\SU1|SRL64|Stage1_sig[60]~99_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[60]~99_combout\,
	datac => \B[3]~input_o\,
	combout => \SU1|SRL64|Stage2_sig[60]~140_combout\);

-- Location: LCCOMB_X68_Y30_N10
\Y~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~115_combout\ = (\SU1|SRL64|Stage3_sig~42_combout\ & (\Y~14_combout\)) # (!\SU1|SRL64|Stage3_sig~42_combout\ & ((\SU1|SRL64|Stage2_sig[60]~140_combout\) # ((\Y~14_combout\ & \SU1|SRA64|Stage2_sig[59]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~14_combout\,
	datab => \SU1|SRA64|Stage2_sig[59]~86_combout\,
	datac => \SU1|SRL64|Stage3_sig~42_combout\,
	datad => \SU1|SRL64|Stage2_sig[60]~140_combout\,
	combout => \Y~115_combout\);

-- Location: LCCOMB_X68_Y30_N12
\Y~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~116_combout\ = (\SU1|SRL64|Stage3_sig~42_combout\ & ((\Y~115_combout\ & (\SU1|SRL64|Stage2_sig[28]~118_combout\)) # (!\Y~115_combout\ & ((\SU1|SRL64|Stage2_sig[44]~116_combout\))))) # (!\SU1|SRL64|Stage3_sig~42_combout\ & (((\Y~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[28]~118_combout\,
	datab => \SU1|SRL64|Stage2_sig[44]~116_combout\,
	datac => \SU1|SRL64|Stage3_sig~42_combout\,
	datad => \Y~115_combout\,
	combout => \Y~116_combout\);

-- Location: LCCOMB_X67_Y32_N16
\SU1|SRL64|Stage2_sig[48]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[48]~113_combout\ = (\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[24]~263_combout\)) # (!\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[16]~262_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[24]~263_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[16]~262_combout\,
	combout => \SU1|SRL64|Stage2_sig[48]~113_combout\);

-- Location: LCCOMB_X68_Y30_N6
\SU1|SRA_SRL_sig[44]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[44]~33_combout\ = (\SU1|SRA_SRL_sig[41]~8_combout\ & ((\SU1|SRA_SRL_sig[41]~9_combout\ & ((\SU1|SRL64|Stage2_sig[60]~140_combout\))) # (!\SU1|SRA_SRL_sig[41]~9_combout\ & (\SU1|SRL64|Stage2_sig[44]~116_combout\)))) # 
-- (!\SU1|SRA_SRL_sig[41]~8_combout\ & (((!\SU1|SRA_SRL_sig[41]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[41]~8_combout\,
	datab => \SU1|SRL64|Stage2_sig[44]~116_combout\,
	datac => \SU1|SRA_SRL_sig[41]~9_combout\,
	datad => \SU1|SRL64|Stage2_sig[60]~140_combout\,
	combout => \SU1|SRA_SRL_sig[44]~33_combout\);

-- Location: LCCOMB_X68_Y30_N20
\SU1|SRA64|Stage2_sig[60]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[60]~93_combout\ = (\B[2]~input_o\ & (((\SU1|X_sig[63]~2_combout\)))) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SU1|X_sig[63]~2_combout\))) # (!\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[60]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[60]~99_combout\,
	datad => \SU1|X_sig[63]~2_combout\,
	combout => \SU1|SRA64|Stage2_sig[60]~93_combout\);

-- Location: LCCOMB_X68_Y30_N0
\SU1|SRA_SRL_sig[44]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[44]~34_combout\ = (\SU1|SRA_SRL_sig[44]~33_combout\ & (((\SU1|SRA64|Stage2_sig[60]~93_combout\)) # (!\SU1|SRA_SRL_sig[41]~7_combout\))) # (!\SU1|SRA_SRL_sig[44]~33_combout\ & (\SU1|SRA_SRL_sig[41]~7_combout\ & 
-- (\SU1|X_sig[63]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[44]~33_combout\,
	datab => \SU1|SRA_SRL_sig[41]~7_combout\,
	datac => \SU1|X_sig[63]~2_combout\,
	datad => \SU1|SRA64|Stage2_sig[60]~93_combout\,
	combout => \SU1|SRA_SRL_sig[44]~34_combout\);

-- Location: LCCOMB_X69_Y33_N26
\Y~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~114_combout\ = (\Y~48_combout\ & (((\Y~49_combout\)))) # (!\Y~48_combout\ & ((\Y~49_combout\ & ((\SU1|SRA_SRL_sig[44]~34_combout\))) # (!\Y~49_combout\ & (\SU1|SRL64|Stage2_sig[48]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[48]~85_combout\,
	datab => \Y~48_combout\,
	datac => \SU1|SRA_SRL_sig[44]~34_combout\,
	datad => \Y~49_combout\,
	combout => \Y~114_combout\);

-- Location: LCCOMB_X69_Y30_N24
\Y~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~117_combout\ = (\Y~48_combout\ & ((\Y~114_combout\ & (\Y~116_combout\)) # (!\Y~114_combout\ & ((\SU1|SRL64|Stage2_sig[48]~113_combout\))))) # (!\Y~48_combout\ & (((\Y~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~116_combout\,
	datab => \SU1|SRL64|Stage2_sig[48]~113_combout\,
	datac => \Y~48_combout\,
	datad => \Y~114_combout\,
	combout => \Y~117_combout\);

-- Location: LCCOMB_X76_Y34_N16
\Y~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~118_combout\ = (\Y~43_combout\ & (\Y~44_combout\ & (\Y~113_combout\))) # (!\Y~43_combout\ & (((\Y~117_combout\)) # (!\Y~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~43_combout\,
	datab => \Y~44_combout\,
	datac => \Y~113_combout\,
	datad => \Y~117_combout\,
	combout => \Y~118_combout\);

-- Location: LCCOMB_X76_Y34_N18
\Y~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~119_combout\ = (\Y~45_combout\ & ((\Y~118_combout\ & ((\AU1|Adder|Add0~26_combout\))) # (!\Y~118_combout\ & (\SU1|SLL64|Stage2_sig[12]~23_combout\)))) # (!\Y~45_combout\ & (((\Y~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~45_combout\,
	datab => \SU1|SLL64|Stage2_sig[12]~23_combout\,
	datac => \AU1|Adder|Add0~26_combout\,
	datad => \Y~118_combout\,
	combout => \Y~119_combout\);

-- Location: LCCOMB_X72_Y37_N2
\SU1|SLL64|Stage1_sig[13]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[13]~80_combout\ = (\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[13]~78_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~79_combout\) # ((\SU1|SRL64|Stage1_sig[48]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~79_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~64_combout\,
	datad => \SU1|SLL64|Stage1_sig[13]~78_combout\,
	combout => \SU1|SLL64|Stage1_sig[13]~80_combout\);

-- Location: LCCOMB_X73_Y34_N8
\SU1|SLL64|Stage2_sig[13]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[13]~25_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[5]~67_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[13]~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[5]~67_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[13]~80_combout\,
	combout => \SU1|SLL64|Stage2_sig[13]~25_combout\);

-- Location: LCCOMB_X73_Y34_N14
\SU1|SLL64|Stage2_sig[13]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[13]~24_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[1]~62_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[9]~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[1]~62_combout\,
	datad => \SU1|SLL64|Stage1_sig[9]~74_combout\,
	combout => \SU1|SLL64|Stage2_sig[13]~24_combout\);

-- Location: LCCOMB_X74_Y34_N26
\SU1|SLL64|Stage2_sig[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[13]~26_combout\ = (\SU1|SLL64|Stage2_sig[13]~25_combout\) # (\SU1|SLL64|Stage2_sig[13]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[13]~25_combout\,
	datad => \SU1|SLL64|Stage2_sig[13]~24_combout\,
	combout => \SU1|SLL64|Stage2_sig[13]~26_combout\);

-- Location: LCCOMB_X67_Y33_N12
\SU1|SRL64|Stage2_sig[29]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[29]~123_combout\ = (\B[2]~input_o\ & (((\B[3]~input_o\)))) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SU1|SRL64|Stage1_sig[37]~281_combout\))) # (!\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[29]~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[29]~282_combout\,
	datac => \SU1|SRL64|Stage1_sig[37]~281_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SRL64|Stage2_sig[29]~123_combout\);

-- Location: LCCOMB_X67_Y33_N30
\SU1|SRL64|Stage2_sig[29]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[29]~124_combout\ = (\SU1|SRL64|Stage2_sig[29]~123_combout\ & (((\SU1|SRL64|Stage1_sig[41]~280_combout\) # (!\B[2]~input_o\)))) # (!\SU1|SRL64|Stage2_sig[29]~123_combout\ & (\SU1|SRL64|Stage1_sig[33]~157_combout\ & (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[33]~157_combout\,
	datab => \SU1|SRL64|Stage2_sig[29]~123_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[41]~280_combout\,
	combout => \SU1|SRL64|Stage2_sig[29]~124_combout\);

-- Location: LCCOMB_X67_Y33_N0
\SU1|SRL64|Stage2_sig[45]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[45]~121_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\SU1|SRL64|Stage1_sig[45]~266_combout\) # ((\SU1|SRA64|Stage2_sig[52]~66_combout\ & \SU1|SRL64|Stage1_sig[53]~267_combout\)))) # (!\SU1|SRA64|Stage2_sig[52]~62_combout\ & 
-- (((\SU1|SRA64|Stage2_sig[52]~66_combout\ & \SU1|SRL64|Stage1_sig[53]~267_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datab => \SU1|SRL64|Stage1_sig[45]~266_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datad => \SU1|SRL64|Stage1_sig[53]~267_combout\,
	combout => \SU1|SRL64|Stage2_sig[45]~121_combout\);

-- Location: LCCOMB_X67_Y33_N22
\SU1|SRL64|Stage2_sig[45]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[45]~120_combout\ = (\SU1|SRL64|Stage2_sig[44]~31_combout\ & ((\SU1|SRL64|Stage1_sig[57]~143_combout\) # ((\SU1|SRA64|Equal5~0_combout\ & \SU1|SRL64|Stage1_sig[49]~146_combout\)))) # (!\SU1|SRL64|Stage2_sig[44]~31_combout\ & 
-- (\SU1|SRA64|Equal5~0_combout\ & ((\SU1|SRL64|Stage1_sig[49]~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datab => \SU1|SRA64|Equal5~0_combout\,
	datac => \SU1|SRL64|Stage1_sig[57]~143_combout\,
	datad => \SU1|SRL64|Stage1_sig[49]~146_combout\,
	combout => \SU1|SRL64|Stage2_sig[45]~120_combout\);

-- Location: LCCOMB_X67_Y33_N10
\SU1|SRL64|Stage2_sig[45]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[45]~122_combout\ = (\SU1|SRL64|Stage2_sig[45]~121_combout\) # (\SU1|SRL64|Stage2_sig[45]~120_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage2_sig[45]~121_combout\,
	datac => \SU1|SRL64|Stage2_sig[45]~120_combout\,
	combout => \SU1|SRL64|Stage2_sig[45]~122_combout\);

-- Location: LCCOMB_X66_Y30_N28
\SU1|SRL64|Stage2_sig[61]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[61]~119_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\SU1|SRL64|Stage1_sig[61]~164_combout\) # ((!\B[0]~input_o\ & \SU1|SRL64|Stage1_sig[48]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[61]~164_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~97_combout\,
	combout => \SU1|SRL64|Stage2_sig[61]~119_combout\);

-- Location: LCCOMB_X69_Y30_N8
\Y~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~123_combout\ = (\SU1|SRL64|Stage3_sig~42_combout\ & ((\SU1|SRL64|Stage2_sig[45]~122_combout\) # ((\Y~14_combout\)))) # (!\SU1|SRL64|Stage3_sig~42_combout\ & (((\SU1|SRL64|Stage2_sig[61]~119_combout\ & !\Y~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[45]~122_combout\,
	datab => \SU1|SRL64|Stage2_sig[61]~119_combout\,
	datac => \SU1|SRL64|Stage3_sig~42_combout\,
	datad => \Y~14_combout\,
	combout => \Y~123_combout\);

-- Location: LCCOMB_X67_Y30_N28
\SU1|SRA64|Stage2_sig[61]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[61]~94_combout\ = (\B[3]~input_o\ & (((\SU1|X_sig[63]~2_combout\)))) # (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SU1|X_sig[63]~2_combout\)) # (!\B[2]~input_o\ & ((\SU1|SRA64|Stage1_sig[61]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SU1|X_sig[63]~2_combout\,
	datad => \SU1|SRA64|Stage1_sig[61]~5_combout\,
	combout => \SU1|SRA64|Stage2_sig[61]~94_combout\);

-- Location: LCCOMB_X69_Y30_N10
\Y~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~124_combout\ = (\Y~14_combout\ & ((\Y~123_combout\ & (\SU1|SRL64|Stage2_sig[29]~124_combout\)) # (!\Y~123_combout\ & ((\SU1|SRA64|Stage2_sig[61]~94_combout\))))) # (!\Y~14_combout\ & (((\Y~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[29]~124_combout\,
	datab => \Y~14_combout\,
	datac => \Y~123_combout\,
	datad => \SU1|SRA64|Stage2_sig[61]~94_combout\,
	combout => \Y~124_combout\);

-- Location: LCCOMB_X69_Y30_N18
\SU1|SRA_SRL_sig[45]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[45]~35_combout\ = (\SU1|SRA_SRL_sig[41]~8_combout\ & ((\SU1|SRA_SRL_sig[41]~9_combout\ & (\SU1|SRL64|Stage2_sig[61]~119_combout\)) # (!\SU1|SRA_SRL_sig[41]~9_combout\ & ((\SU1|SRL64|Stage2_sig[45]~122_combout\))))) # 
-- (!\SU1|SRA_SRL_sig[41]~8_combout\ & (((!\SU1|SRA_SRL_sig[41]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[41]~8_combout\,
	datab => \SU1|SRL64|Stage2_sig[61]~119_combout\,
	datac => \SU1|SRA_SRL_sig[41]~9_combout\,
	datad => \SU1|SRL64|Stage2_sig[45]~122_combout\,
	combout => \SU1|SRA_SRL_sig[45]~35_combout\);

-- Location: LCCOMB_X69_Y30_N12
\SU1|SRA_SRL_sig[45]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[45]~36_combout\ = (\SU1|SRA_SRL_sig[41]~7_combout\ & ((\SU1|SRA_SRL_sig[45]~35_combout\ & (\SU1|SRA64|Stage2_sig[61]~94_combout\)) # (!\SU1|SRA_SRL_sig[45]~35_combout\ & ((\SU1|X_sig[63]~2_combout\))))) # (!\SU1|SRA_SRL_sig[41]~7_combout\ 
-- & (((\SU1|SRA_SRL_sig[45]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[41]~7_combout\,
	datab => \SU1|SRA64|Stage2_sig[61]~94_combout\,
	datac => \SU1|X_sig[63]~2_combout\,
	datad => \SU1|SRA_SRL_sig[45]~35_combout\,
	combout => \SU1|SRA_SRL_sig[45]~36_combout\);

-- Location: LCCOMB_X69_Y30_N30
\Y~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~122_combout\ = (\Y~49_combout\ & (((\Y~48_combout\)))) # (!\Y~49_combout\ & ((\Y~48_combout\ & ((\SU1|SRL64|Stage2_sig[48]~37_combout\))) # (!\Y~48_combout\ & (\SU1|SRL64|Stage2_sig[48]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~49_combout\,
	datab => \SU1|SRL64|Stage2_sig[48]~96_combout\,
	datac => \Y~48_combout\,
	datad => \SU1|SRL64|Stage2_sig[48]~37_combout\,
	combout => \Y~122_combout\);

-- Location: LCCOMB_X69_Y30_N28
\Y~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~125_combout\ = (\Y~122_combout\ & ((\Y~124_combout\) # ((!\Y~49_combout\)))) # (!\Y~122_combout\ & (((\SU1|SRA_SRL_sig[45]~36_combout\ & \Y~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~124_combout\,
	datab => \SU1|SRA_SRL_sig[45]~36_combout\,
	datac => \Y~122_combout\,
	datad => \Y~49_combout\,
	combout => \Y~125_combout\);

-- Location: LCCOMB_X77_Y30_N22
\Y~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~120_combout\ = (\B[13]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[13]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Y~120_combout\);

-- Location: LCCOMB_X76_Y34_N12
\Y~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~121_combout\ = (\Y~120_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~120_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~121_combout\);

-- Location: LCCOMB_X76_Y34_N30
\Y~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~126_combout\ = (\Y~43_combout\ & (\Y~44_combout\ & ((\Y~121_combout\)))) # (!\Y~43_combout\ & (((\Y~125_combout\)) # (!\Y~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~43_combout\,
	datab => \Y~44_combout\,
	datac => \Y~125_combout\,
	datad => \Y~121_combout\,
	combout => \Y~126_combout\);

-- Location: LCCOMB_X76_Y34_N8
\Y~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~127_combout\ = (\Y~126_combout\ & ((\AU1|Adder|Add0~28_combout\) # ((!\Y~45_combout\)))) # (!\Y~126_combout\ & (((\SU1|SLL64|Stage2_sig[13]~26_combout\ & \Y~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~28_combout\,
	datab => \SU1|SLL64|Stage2_sig[13]~26_combout\,
	datac => \Y~126_combout\,
	datad => \Y~45_combout\,
	combout => \Y~127_combout\);

-- Location: LCCOMB_X77_Y30_N16
\Y~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~128_combout\ = (\B[14]~input_o\ & ((\A[14]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[14]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Y~128_combout\);

-- Location: LCCOMB_X73_Y33_N18
\Y~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~129_combout\ = (\Y~128_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~128_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~129_combout\);

-- Location: LCCOMB_X66_Y32_N16
\SU1|SRL64|Stage2_sig[46]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[46]~126_combout\ = (\SU1|SRL64|Stage1_sig[46]~209_combout\ & ((\SU1|SRA64|Stage2_sig[52]~62_combout\) # ((\SU1|SRA64|Stage2_sig[52]~66_combout\ & \SU1|SRL64|Stage1_sig[54]~223_combout\)))) # (!\SU1|SRL64|Stage1_sig[46]~209_combout\ & 
-- (((\SU1|SRA64|Stage2_sig[52]~66_combout\ & \SU1|SRL64|Stage1_sig[54]~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[46]~209_combout\,
	datab => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datad => \SU1|SRL64|Stage1_sig[54]~223_combout\,
	combout => \SU1|SRL64|Stage2_sig[46]~126_combout\);

-- Location: LCCOMB_X66_Y32_N6
\SU1|SRL64|Stage2_sig[46]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[46]~125_combout\ = (\SU1|SRL64|Stage1_sig[58]~216_combout\ & ((\SU1|SRL64|Stage2_sig[44]~31_combout\) # ((\SU1|SRA64|Equal5~0_combout\ & \SU1|SRL64|Stage1_sig[50]~220_combout\)))) # (!\SU1|SRL64|Stage1_sig[58]~216_combout\ & 
-- (\SU1|SRA64|Equal5~0_combout\ & (\SU1|SRL64|Stage1_sig[50]~220_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[58]~216_combout\,
	datab => \SU1|SRA64|Equal5~0_combout\,
	datac => \SU1|SRL64|Stage1_sig[50]~220_combout\,
	datad => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	combout => \SU1|SRL64|Stage2_sig[46]~125_combout\);

-- Location: LCCOMB_X66_Y32_N2
\SU1|SRL64|Stage2_sig[46]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[46]~127_combout\ = (\SU1|SRL64|Stage2_sig[46]~126_combout\) # (\SU1|SRL64|Stage2_sig[46]~125_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage2_sig[46]~126_combout\,
	datad => \SU1|SRL64|Stage2_sig[46]~125_combout\,
	combout => \SU1|SRL64|Stage2_sig[46]~127_combout\);

-- Location: LCCOMB_X65_Y36_N28
\SU1|SRL64|Stage2_sig[30]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[30]~128_combout\ = (\B[3]~input_o\ & (((\SU1|SRL64|Stage1_sig[38]~206_combout\) # (\B[2]~input_o\)))) # (!\B[3]~input_o\ & (\SU1|SRL64|Stage1_sig[30]~227_combout\ & ((!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[30]~227_combout\,
	datab => \B[3]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[38]~206_combout\,
	datad => \B[2]~input_o\,
	combout => \SU1|SRL64|Stage2_sig[30]~128_combout\);

-- Location: LCCOMB_X65_Y36_N30
\SU1|SRL64|Stage2_sig[30]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[30]~129_combout\ = (\SU1|SRL64|Stage2_sig[30]~128_combout\ & (((\SU1|SRL64|Stage1_sig[42]~203_combout\) # (!\B[2]~input_o\)))) # (!\SU1|SRL64|Stage2_sig[30]~128_combout\ & (\SU1|SRL64|Stage1_sig[34]~212_combout\ & 
-- ((\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[34]~212_combout\,
	datab => \SU1|SRL64|Stage2_sig[30]~128_combout\,
	datac => \SU1|SRL64|Stage1_sig[42]~203_combout\,
	datad => \B[2]~input_o\,
	combout => \SU1|SRL64|Stage2_sig[30]~129_combout\);

-- Location: LCCOMB_X66_Y32_N12
\SU1|SRL64|Stage2_sig[62]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[62]~141_combout\ = (!\B[2]~input_o\ & (!\B[3]~input_o\ & \SU1|SRL64|Stage1_sig[62]~224_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[62]~224_combout\,
	combout => \SU1|SRL64|Stage2_sig[62]~141_combout\);

-- Location: LCCOMB_X66_Y34_N26
\SU1|SRA64|Stage2_sig[62]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA64|Stage2_sig[62]~81_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\SU1|SRA64|Equal2~0_combout\ & (\SU1|X_sig[63]~2_combout\)) # (!\SU1|SRA64|Equal2~0_combout\ & ((\SU1|X_sig[62]~3_combout\))))) # (!\SU1|SRA64|Stage2_sig[52]~62_combout\ & 
-- (((\SU1|X_sig[63]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datab => \SU1|SRA64|Equal2~0_combout\,
	datac => \SU1|X_sig[63]~2_combout\,
	datad => \SU1|X_sig[62]~3_combout\,
	combout => \SU1|SRA64|Stage2_sig[62]~81_combout\);

-- Location: LCCOMB_X69_Y32_N24
\Y~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~131_combout\ = (\SU1|SRL64|Stage3_sig~42_combout\ & (((\Y~14_combout\)))) # (!\SU1|SRL64|Stage3_sig~42_combout\ & ((\Y~14_combout\ & ((\SU1|SRA64|Stage2_sig[62]~81_combout\))) # (!\Y~14_combout\ & (\SU1|SRL64|Stage2_sig[62]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[62]~141_combout\,
	datab => \SU1|SRL64|Stage3_sig~42_combout\,
	datac => \SU1|SRA64|Stage2_sig[62]~81_combout\,
	datad => \Y~14_combout\,
	combout => \Y~131_combout\);

-- Location: LCCOMB_X69_Y32_N10
\Y~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~132_combout\ = (\SU1|SRL64|Stage3_sig~42_combout\ & ((\Y~131_combout\ & ((\SU1|SRL64|Stage2_sig[30]~129_combout\))) # (!\Y~131_combout\ & (\SU1|SRL64|Stage2_sig[46]~127_combout\)))) # (!\SU1|SRL64|Stage3_sig~42_combout\ & (((\Y~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[46]~127_combout\,
	datab => \SU1|SRL64|Stage3_sig~42_combout\,
	datac => \SU1|SRL64|Stage2_sig[30]~129_combout\,
	datad => \Y~131_combout\,
	combout => \Y~132_combout\);

-- Location: LCCOMB_X69_Y32_N14
\SU1|SRA_SRL_sig[46]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[46]~37_combout\ = (\SU1|SRA_SRL_sig[41]~8_combout\ & ((\SU1|SRA_SRL_sig[41]~9_combout\ & (\SU1|SRL64|Stage2_sig[62]~141_combout\)) # (!\SU1|SRA_SRL_sig[41]~9_combout\ & ((\SU1|SRL64|Stage2_sig[46]~127_combout\))))) # 
-- (!\SU1|SRA_SRL_sig[41]~8_combout\ & (((!\SU1|SRA_SRL_sig[41]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[62]~141_combout\,
	datab => \SU1|SRA_SRL_sig[41]~8_combout\,
	datac => \SU1|SRA_SRL_sig[41]~9_combout\,
	datad => \SU1|SRL64|Stage2_sig[46]~127_combout\,
	combout => \SU1|SRA_SRL_sig[46]~37_combout\);

-- Location: LCCOMB_X69_Y30_N6
\SU1|SRA_SRL_sig[46]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[46]~38_combout\ = (\SU1|SRA_SRL_sig[41]~7_combout\ & ((\SU1|SRA_SRL_sig[46]~37_combout\ & ((\SU1|SRA64|Stage2_sig[62]~81_combout\))) # (!\SU1|SRA_SRL_sig[46]~37_combout\ & (\SU1|X_sig[63]~2_combout\)))) # (!\SU1|SRA_SRL_sig[41]~7_combout\ 
-- & (((\SU1|SRA_SRL_sig[46]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[41]~7_combout\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \SU1|SRA64|Stage2_sig[62]~81_combout\,
	datad => \SU1|SRA_SRL_sig[46]~37_combout\,
	combout => \SU1|SRA_SRL_sig[46]~38_combout\);

-- Location: LCCOMB_X69_Y33_N28
\Y~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~130_combout\ = (\Y~48_combout\ & (((\Y~49_combout\)))) # (!\Y~48_combout\ & ((\Y~49_combout\ & (\SU1|SRA_SRL_sig[46]~38_combout\)) # (!\Y~49_combout\ & ((\SU1|SRL64|Stage2_sig[48]~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[46]~38_combout\,
	datab => \SU1|SRL64|Stage2_sig[48]~99_combout\,
	datac => \Y~48_combout\,
	datad => \Y~49_combout\,
	combout => \Y~130_combout\);

-- Location: LCCOMB_X69_Y33_N22
\Y~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~133_combout\ = (\Y~130_combout\ & ((\Y~132_combout\) # ((!\Y~48_combout\)))) # (!\Y~130_combout\ & (((\SU1|SRL64|Stage2_sig[48]~47_combout\ & \Y~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~132_combout\,
	datab => \Y~130_combout\,
	datac => \SU1|SRL64|Stage2_sig[48]~47_combout\,
	datad => \Y~48_combout\,
	combout => \Y~133_combout\);

-- Location: LCCOMB_X73_Y33_N12
\Y~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~134_combout\ = (\Y~43_combout\ & (\Y~129_combout\ & ((\Y~44_combout\)))) # (!\Y~43_combout\ & (((\Y~133_combout\) # (!\Y~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~43_combout\,
	datab => \Y~129_combout\,
	datac => \Y~133_combout\,
	datad => \Y~44_combout\,
	combout => \Y~134_combout\);

-- Location: LCCOMB_X69_Y37_N16
\SU1|SLL64|Stage1_sig[15]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[15]~81_combout\ = (\SU1|SRL64|Stage1_sig[48]~139_combout\) # (\SU1|SRL64|Stage1_sig[48]~130_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~139_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~130_combout\,
	combout => \SU1|SLL64|Stage1_sig[15]~81_combout\);

-- Location: LCCOMB_X72_Y37_N20
\SU1|SLL64|Stage1_sig[14]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[14]~82_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~79_combout\) # ((\SU1|SRL64|Stage1_sig[48]~64_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[15]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~79_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~64_combout\,
	datad => \SU1|SLL64|Stage1_sig[15]~81_combout\,
	combout => \SU1|SLL64|Stage1_sig[14]~82_combout\);

-- Location: LCCOMB_X73_Y35_N28
\SU1|SLL64|Stage2_sig[14]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[14]~27_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\SU1|SLL64|Stage1_sig[2]~64_combout\)) # (!\B[2]~input_o\ & ((\SU1|SLL64|Stage1_sig[6]~69_combout\))))) # (!\B[3]~input_o\ & (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[2]~64_combout\,
	datad => \SU1|SLL64|Stage1_sig[6]~69_combout\,
	combout => \SU1|SLL64|Stage2_sig[14]~27_combout\);

-- Location: LCCOMB_X73_Y35_N30
\SU1|SLL64|Stage2_sig[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[14]~28_combout\ = (\B[3]~input_o\ & (((\SU1|SLL64|Stage2_sig[14]~27_combout\)))) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage2_sig[14]~27_combout\ & ((\SU1|SLL64|Stage1_sig[10]~76_combout\))) # (!\SU1|SLL64|Stage2_sig[14]~27_combout\ & 
-- (\SU1|SLL64|Stage1_sig[14]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[14]~82_combout\,
	datab => \B[3]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[10]~76_combout\,
	datad => \SU1|SLL64|Stage2_sig[14]~27_combout\,
	combout => \SU1|SLL64|Stage2_sig[14]~28_combout\);

-- Location: LCCOMB_X73_Y35_N16
\Y~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~135_combout\ = (\Y~134_combout\ & ((\AU1|Adder|Add0~30_combout\) # ((!\Y~45_combout\)))) # (!\Y~134_combout\ & (((\SU1|SLL64|Stage2_sig[14]~28_combout\ & \Y~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~134_combout\,
	datab => \AU1|Adder|Add0~30_combout\,
	datac => \SU1|SLL64|Stage2_sig[14]~28_combout\,
	datad => \Y~45_combout\,
	combout => \Y~135_combout\);

-- Location: LCCOMB_X72_Y36_N30
\SU1|SLL64|Stage2_sig[15]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[15]~29_combout\ = (\B[2]~input_o\ & (((\SU1|SLL64|Stage1_sig[3]~70_combout\) # (!\B[3]~input_o\)))) # (!\B[2]~input_o\ & (\SU1|SLL64|Stage1_sig[7]~71_combout\ & (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[7]~71_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[3]~70_combout\,
	combout => \SU1|SLL64|Stage2_sig[15]~29_combout\);

-- Location: LCCOMB_X70_Y36_N28
\SU1|SLL64|Stage1_sig[15]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[15]~83_combout\ = (\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[15]~81_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~193_combout\) # ((\SU1|SRL64|Stage1_sig[48]~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~193_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[15]~81_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~197_combout\,
	combout => \SU1|SLL64|Stage1_sig[15]~83_combout\);

-- Location: LCCOMB_X72_Y36_N0
\SU1|SLL64|Stage2_sig[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[15]~30_combout\ = (\SU1|SLL64|Stage2_sig[15]~29_combout\ & ((\SU1|SLL64|Stage1_sig[11]~77_combout\) # ((\B[3]~input_o\)))) # (!\SU1|SLL64|Stage2_sig[15]~29_combout\ & (((!\B[3]~input_o\ & \SU1|SLL64|Stage1_sig[15]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[15]~29_combout\,
	datab => \SU1|SLL64|Stage1_sig[11]~77_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[15]~83_combout\,
	combout => \SU1|SLL64|Stage2_sig[15]~30_combout\);

-- Location: LCCOMB_X68_Y33_N26
\SU1|SRL64|Stage2_sig[31]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[31]~132_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\) # ((\SU1|SRL64|Stage1_sig[39]~250_combout\)))) # (!\B[3]~input_o\ & (!\B[2]~input_o\ & (\SU1|SRL64|Stage1_sig[31]~251_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[31]~251_combout\,
	datad => \SU1|SRL64|Stage1_sig[39]~250_combout\,
	combout => \SU1|SRL64|Stage2_sig[31]~132_combout\);

-- Location: LCCOMB_X68_Y33_N28
\SU1|SRL64|Stage2_sig[31]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[31]~133_combout\ = (\SU1|SRL64|Stage2_sig[31]~132_combout\ & (((\SU1|SRL64|Stage1_sig[43]~246_combout\)) # (!\B[2]~input_o\))) # (!\SU1|SRL64|Stage2_sig[31]~132_combout\ & (\B[2]~input_o\ & 
-- ((\SU1|SRL64|Stage1_sig[35]~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[31]~132_combout\,
	datab => \B[2]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[43]~246_combout\,
	datad => \SU1|SRL64|Stage1_sig[35]~247_combout\,
	combout => \SU1|SRL64|Stage2_sig[31]~133_combout\);

-- Location: LCCOMB_X72_Y32_N22
\SU1|SRL64|Stage2_sig[63]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[63]~143_combout\ = (\SU1|X_sig[63]~2_combout\ & (!\SU1|SRA64|Equal2~0_combout\ & (!\B[2]~input_o\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|X_sig[63]~2_combout\,
	datab => \SU1|SRA64|Equal2~0_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SU1|SRL64|Stage2_sig[63]~143_combout\);

-- Location: LCCOMB_X68_Y31_N12
\SU1|SRL64|Stage2_sig[47]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[47]~142_combout\ = (\SU1|SRL64|Stage1_sig[55]~245_combout\ & (!\B[2]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[55]~245_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SU1|SRL64|Stage2_sig[47]~142_combout\);

-- Location: LCCOMB_X69_Y31_N18
\SU1|SRL64|Stage2_sig[47]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[47]~130_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SU1|SRL64|Stage1_sig[51]~244_combout\))) # (!\B[2]~input_o\ & (\SU1|SRL64|Stage1_sig[47]~248_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[47]~248_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[51]~244_combout\,
	combout => \SU1|SRL64|Stage2_sig[47]~130_combout\);

-- Location: LCCOMB_X69_Y31_N28
\SU1|SRL64|Stage2_sig[47]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[47]~131_combout\ = (\SU1|SRL64|Stage2_sig[47]~142_combout\) # ((\SU1|SRL64|Stage2_sig[47]~130_combout\) # ((\SU1|SRL64|Stage2_sig[44]~31_combout\ & \SU1|SRL64|Stage1_sig[59]~243_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[47]~142_combout\,
	datab => \SU1|SRL64|Stage2_sig[47]~130_combout\,
	datac => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datad => \SU1|SRL64|Stage1_sig[59]~243_combout\,
	combout => \SU1|SRL64|Stage2_sig[47]~131_combout\);

-- Location: LCCOMB_X69_Y30_N26
\Y~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~139_combout\ = (\SU1|SRL64|Stage3_sig~42_combout\ & (((\SU1|SRL64|Stage2_sig[47]~131_combout\) # (\Y~14_combout\)))) # (!\SU1|SRL64|Stage3_sig~42_combout\ & (\SU1|SRL64|Stage2_sig[63]~143_combout\ & ((!\Y~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[63]~143_combout\,
	datab => \SU1|SRL64|Stage2_sig[47]~131_combout\,
	datac => \SU1|SRL64|Stage3_sig~42_combout\,
	datad => \Y~14_combout\,
	combout => \Y~139_combout\);

-- Location: LCCOMB_X69_Y30_N20
\Y~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~140_combout\ = (\Y~139_combout\ & ((\SU1|SRL64|Stage2_sig[31]~133_combout\) # ((!\Y~14_combout\)))) # (!\Y~139_combout\ & (((\SU1|X_sig[63]~2_combout\ & \Y~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[31]~133_combout\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \Y~139_combout\,
	datad => \Y~14_combout\,
	combout => \Y~140_combout\);

-- Location: LCCOMB_X72_Y32_N30
\SU1|SRA_SRL_sig[47]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[47]~39_combout\ = (\ShiftFN[0]~input_o\) # ((\SU1|SRL64|Equal8~0_combout\ & (!\SU1|SRA64|Equal2~0_combout\ & \SU1|SRA64|Stage2_sig[52]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Equal8~0_combout\,
	datab => \SU1|SRA64|Equal2~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	combout => \SU1|SRA_SRL_sig[47]~39_combout\);

-- Location: LCCOMB_X69_Y30_N16
\SU1|SRA_SRL_sig[47]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[47]~40_combout\ = (\SU1|SRL64|Equal8~1_combout\ & (\SU1|SRA_SRL_sig[47]~39_combout\ & (\SU1|X_sig[63]~2_combout\))) # (!\SU1|SRL64|Equal8~1_combout\ & (((\SU1|SRL64|Stage2_sig[47]~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[47]~39_combout\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \SU1|SRL64|Stage2_sig[47]~131_combout\,
	datad => \SU1|SRL64|Equal8~1_combout\,
	combout => \SU1|SRA_SRL_sig[47]~40_combout\);

-- Location: LCCOMB_X70_Y33_N26
\Y~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~138_combout\ = (\Y~49_combout\ & (((\Y~48_combout\)))) # (!\Y~49_combout\ & ((\Y~48_combout\ & ((\SU1|SRL64|Stage2_sig[48]~55_combout\))) # (!\Y~48_combout\ & (\SU1|SRL64|Stage2_sig[48]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[48]~110_combout\,
	datab => \Y~49_combout\,
	datac => \SU1|SRL64|Stage2_sig[48]~55_combout\,
	datad => \Y~48_combout\,
	combout => \Y~138_combout\);

-- Location: LCCOMB_X69_Y30_N14
\Y~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~141_combout\ = (\Y~49_combout\ & ((\Y~138_combout\ & (\Y~140_combout\)) # (!\Y~138_combout\ & ((\SU1|SRA_SRL_sig[47]~40_combout\))))) # (!\Y~49_combout\ & (((\Y~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~49_combout\,
	datab => \Y~140_combout\,
	datac => \SU1|SRA_SRL_sig[47]~40_combout\,
	datad => \Y~138_combout\,
	combout => \Y~141_combout\);

-- Location: LCCOMB_X77_Y32_N14
\Y~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~136_combout\ = (\B[15]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[15]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[15]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Y~136_combout\);

-- Location: LCCOMB_X76_Y34_N2
\Y~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~137_combout\ = (\Y~136_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~136_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~137_combout\);

-- Location: LCCOMB_X76_Y34_N4
\Y~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~142_combout\ = (\Y~43_combout\ & (\Y~44_combout\ & ((\Y~137_combout\)))) # (!\Y~43_combout\ & (((\Y~141_combout\)) # (!\Y~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~43_combout\,
	datab => \Y~44_combout\,
	datac => \Y~141_combout\,
	datad => \Y~137_combout\,
	combout => \Y~142_combout\);

-- Location: LCCOMB_X76_Y36_N28
\Y~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~143_combout\ = (\Y~45_combout\ & ((\Y~142_combout\ & (\AU1|Adder|Add0~32_combout\)) # (!\Y~142_combout\ & ((\SU1|SLL64|Stage2_sig[15]~30_combout\))))) # (!\Y~45_combout\ & (((\Y~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~32_combout\,
	datab => \Y~45_combout\,
	datac => \SU1|SLL64|Stage2_sig[15]~30_combout\,
	datad => \Y~142_combout\,
	combout => \Y~143_combout\);

-- Location: LCCOMB_X73_Y30_N16
\LU1|Y[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LU1|Y[16]~1_combout\ = (\B[16]~input_o\ & ((\A[16]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[16]~input_o\ & (\A[16]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[16]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \LU1|Y[16]~1_combout\);

-- Location: LCCOMB_X70_Y32_N8
\SU1|SLL64|Stage2_sig[16]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[16]~31_combout\ = (\B[2]~input_o\ & ((\SU1|SLL64|Stage1_sig[4]~138_combout\) # ((!\B[3]~input_o\)))) # (!\B[2]~input_o\ & (((\B[3]~input_o\ & \SU1|SLL64|Stage1_sig[8]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[4]~138_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[8]~73_combout\,
	combout => \SU1|SLL64|Stage2_sig[16]~31_combout\);

-- Location: LCCOMB_X70_Y36_N6
\SU1|SLL64|Stage1_sig[17]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[17]~84_combout\ = (\SU1|SRL64|Stage1_sig[48]~81_combout\) # (\SU1|SRL64|Stage1_sig[48]~240_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~81_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~240_combout\,
	combout => \SU1|SLL64|Stage1_sig[17]~84_combout\);

-- Location: LCCOMB_X70_Y36_N8
\SU1|SLL64|Stage1_sig[16]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[16]~85_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~193_combout\) # (\SU1|SRL64|Stage1_sig[48]~197_combout\)))) # (!\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[17]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[17]~84_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~193_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~197_combout\,
	combout => \SU1|SLL64|Stage1_sig[16]~85_combout\);

-- Location: LCCOMB_X70_Y32_N26
\SU1|SLL64|Stage2_sig[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[16]~32_combout\ = (\B[3]~input_o\ & (((\SU1|SLL64|Stage2_sig[16]~31_combout\)))) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage2_sig[16]~31_combout\ & (\SU1|SLL64|Stage1_sig[12]~79_combout\)) # (!\SU1|SLL64|Stage2_sig[16]~31_combout\ & 
-- ((\SU1|SLL64|Stage1_sig[16]~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[12]~79_combout\,
	datac => \SU1|SLL64|Stage2_sig[16]~31_combout\,
	datad => \SU1|SLL64|Stage1_sig[16]~85_combout\,
	combout => \SU1|SLL64|Stage2_sig[16]~32_combout\);

-- Location: LCCOMB_X74_Y31_N8
\Y~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~144_combout\ = (\SU1|SRL64|Equal8~1_combout\ & (\SU1|SLL64|Y[32]~59_combout\ & ((\SU1|SRL64|Equal8~0_combout\)))) # (!\SU1|SRL64|Equal8~1_combout\ & (((\SU1|SLL64|Stage2_sig[16]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[32]~59_combout\,
	datab => \SU1|SLL64|Stage2_sig[16]~32_combout\,
	datac => \SU1|SRL64|Equal8~0_combout\,
	datad => \SU1|SRL64|Equal8~1_combout\,
	combout => \Y~144_combout\);

-- Location: LCCOMB_X74_Y31_N18
\Y~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~145_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Y~144_combout\))) # (!\ShiftFN[0]~input_o\ & (\AU1|Adder|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~34_combout\,
	datab => \Y~144_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~145_combout\);

-- Location: LCCOMB_X67_Y32_N22
\SU1|SRA_SRL_sig[16]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[16]~43_combout\ = (!\SU1|SRL64|Equal8~1_combout\ & ((\B[2]~input_o\ & ((\SU1|SRA_SRL_sig[16]~18_combout\))) # (!\B[2]~input_o\ & (\SU1|SRL64|Stage2_sig[48]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SRL64|Stage2_sig[48]~113_combout\,
	datac => \SU1|SRA_SRL_sig[16]~18_combout\,
	datad => \SU1|SRL64|Equal8~1_combout\,
	combout => \SU1|SRA_SRL_sig[16]~43_combout\);

-- Location: LCCOMB_X67_Y32_N14
\SU1|SRA_SRL_sig[16]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[16]~79_combout\ = (!\ExtWord~input_o\ & (!\B[4]~input_o\ & (\B[5]~input_o\ & \SU1|SRL64|Stage2_sig[48]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \SU1|SRL64|Stage2_sig[48]~25_combout\,
	combout => \SU1|SRA_SRL_sig[16]~79_combout\);

-- Location: LCCOMB_X67_Y32_N0
\SU1|SRA_SRL_sig[16]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[16]~44_combout\ = (\ShiftFN[0]~input_o\ & (\SU1|X_sig[63]~2_combout\ & (\SU1|ShiftCount\(5) $ (!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \SU1|ShiftCount\(5),
	datad => \B[4]~input_o\,
	combout => \SU1|SRA_SRL_sig[16]~44_combout\);

-- Location: LCCOMB_X67_Y32_N10
\SU1|SRA_SRL_sig[16]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[16]~45_combout\ = (\SU1|SRA_SRL_sig[16]~44_combout\) # ((\SU1|SRL64|Equal8~0_combout\ & ((\SU1|SRL64|Stage2_sig[32]~26_combout\) # (\SU1|SRL64|Stage2_sig[32]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[32]~26_combout\,
	datab => \SU1|SRA_SRL_sig[16]~44_combout\,
	datac => \SU1|SRL64|Equal8~0_combout\,
	datad => \SU1|SRL64|Stage2_sig[32]~27_combout\,
	combout => \SU1|SRA_SRL_sig[16]~45_combout\);

-- Location: LCCOMB_X67_Y32_N20
\SU1|SRA_SRL_sig[16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[16]~46_combout\ = (\SU1|SRA_SRL_sig[16]~43_combout\) # ((\SU1|SRL64|Equal8~1_combout\ & ((\SU1|SRA_SRL_sig[16]~79_combout\) # (\SU1|SRA_SRL_sig[16]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[16]~43_combout\,
	datab => \SU1|SRA_SRL_sig[16]~79_combout\,
	datac => \SU1|SRA_SRL_sig[16]~45_combout\,
	datad => \SU1|SRL64|Equal8~1_combout\,
	combout => \SU1|SRA_SRL_sig[16]~46_combout\);

-- Location: LCCOMB_X69_Y32_N4
\SU1|SRA_SRL_sig[48]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[48]~41_combout\ = (\SU1|X_sig[63]~2_combout\ & (\ShiftFN[0]~input_o\ & ((\SU1|ShiftCount\(5)) # (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|ShiftCount\(5),
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SU1|SRA_SRL_sig[48]~41_combout\);

-- Location: LCCOMB_X74_Y30_N24
\SU1|SRA_SRL_sig[48]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[48]~42_combout\ = (\SU1|SRA_SRL_sig[48]~41_combout\) # ((!\SU1|SRL64|Equal8~1_combout\ & ((\SU1|SRL64|Stage2_sig[48]~24_combout\) # (\SU1|SRL64|Stage2_sig[48]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[48]~24_combout\,
	datab => \SU1|SRA_SRL_sig[48]~41_combout\,
	datac => \SU1|SRL64|Stage2_sig[48]~23_combout\,
	datad => \SU1|SRL64|Equal8~1_combout\,
	combout => \SU1|SRA_SRL_sig[48]~42_combout\);

-- Location: LCCOMB_X73_Y30_N18
\Y~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~146_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\SU1|SRA_SRL_sig[48]~42_combout\))) # (!\ExtWord~input_o\ & (\SU1|SRA_SRL_sig[16]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \SU1|SRA_SRL_sig[16]~46_combout\,
	datad => \SU1|SRA_SRL_sig[48]~42_combout\,
	combout => \Y~146_combout\);

-- Location: LCCOMB_X73_Y30_N12
\Y~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~147_combout\ = (\FuncClass[0]~input_o\ & (\LU1|Y[16]~1_combout\)) # (!\FuncClass[0]~input_o\ & (((\Y~145_combout\) # (\Y~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \LU1|Y[16]~1_combout\,
	datac => \Y~145_combout\,
	datad => \Y~146_combout\,
	combout => \Y~147_combout\);

-- Location: LCCOMB_X73_Y30_N14
\Y~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~148_combout\ = (\Y~147_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~147_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~148_combout\);

-- Location: LCCOMB_X73_Y29_N18
\Y~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~160_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\) # ((!\SU1|Y[0]~9_combout\ & !\SU1|Y[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \SU1|Y[0]~9_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \SU1|Y[0]~5_combout\,
	combout => \Y~160_combout\);

-- Location: LCCOMB_X73_Y29_N28
\Y~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~161_combout\ = (\FuncClass[0]~input_o\) # ((\FuncClass[1]~input_o\) # ((\SU1|SRL64|Equal8~1_combout\ & \SU1|Y[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \SU1|SRL64|Equal8~1_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \SU1|Y[0]~9_combout\,
	combout => \Y~161_combout\);

-- Location: LCCOMB_X77_Y31_N4
\Y~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~155_combout\ = (\B[17]~input_o\ & ((\A[17]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[17]~input_o\ & (\A[17]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y~155_combout\);

-- Location: LCCOMB_X70_Y36_N26
\SU1|SLL64|Stage1_sig[17]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[17]~86_combout\ = (\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[17]~84_combout\)) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~78_combout\) # (\SU1|SRL64|Stage1_sig[48]~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[17]~84_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~78_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~188_combout\,
	combout => \SU1|SLL64|Stage1_sig[17]~86_combout\);

-- Location: LCCOMB_X73_Y34_N20
\SU1|SLL64|Stage2_sig[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[17]~34_combout\ = (\SU1|SLL64|Stage1_sig[9]~74_combout\ & ((\SU1|SRA64|Stage2_sig[52]~66_combout\) # ((\SU1|SLL64|Stage1_sig[17]~86_combout\ & \SU1|SRA64|Stage2_sig[52]~62_combout\)))) # (!\SU1|SLL64|Stage1_sig[9]~74_combout\ & 
-- (\SU1|SLL64|Stage1_sig[17]~86_combout\ & ((\SU1|SRA64|Stage2_sig[52]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[9]~74_combout\,
	datab => \SU1|SLL64|Stage1_sig[17]~86_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datad => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	combout => \SU1|SLL64|Stage2_sig[17]~34_combout\);

-- Location: LCCOMB_X73_Y34_N10
\SU1|SLL64|Stage2_sig[17]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[17]~33_combout\ = (\SU1|SLL64|Stage1_sig[13]~80_combout\ & ((\SU1|SRA64|Equal5~0_combout\) # ((\SU1|SLL64|Stage1_sig[5]~67_combout\ & \SU1|SRL64|Stage2_sig[44]~31_combout\)))) # (!\SU1|SLL64|Stage1_sig[13]~80_combout\ & 
-- (\SU1|SLL64|Stage1_sig[5]~67_combout\ & (\SU1|SRL64|Stage2_sig[44]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[13]~80_combout\,
	datab => \SU1|SLL64|Stage1_sig[5]~67_combout\,
	datac => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datad => \SU1|SRA64|Equal5~0_combout\,
	combout => \SU1|SLL64|Stage2_sig[17]~33_combout\);

-- Location: LCCOMB_X73_Y34_N30
\SU1|SLL64|Stage2_sig[17]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[17]~35_combout\ = (\SU1|SLL64|Stage2_sig[17]~34_combout\) # (\SU1|SLL64|Stage2_sig[17]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SLL64|Stage2_sig[17]~34_combout\,
	datad => \SU1|SLL64|Stage2_sig[17]~33_combout\,
	combout => \SU1|SLL64|Stage2_sig[17]~35_combout\);

-- Location: LCCOMB_X74_Y31_N30
\Y~454\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~454_combout\ = (\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & ((\SU1|SRL64|Equal8~0_combout\) # (!\SU1|SRL64|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SU1|SRL64|Equal8~1_combout\,
	datac => \SU1|SRL64|Equal8~0_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~454_combout\);

-- Location: LCCOMB_X74_Y29_N18
\Y~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~156_combout\ = (\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~156_combout\);

-- Location: LCCOMB_X74_Y31_N4
\Y~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~157_combout\ = (\ShiftFN[1]~input_o\) # ((\SU1|SRL64|Equal8~1_combout\ & \ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Equal8~1_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~157_combout\);

-- Location: LCCOMB_X66_Y30_N22
\SU1|SRA_SRL_sig[49]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[49]~47_combout\ = (\ShiftFN[0]~input_o\ & (\SU1|SRA64|Stage1_sig[61]~5_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[61]~165_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRA64|Stage1_sig[61]~5_combout\,
	datac => \SU1|SRL64|Stage1_sig[61]~165_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SU1|SRA_SRL_sig[49]~47_combout\);

-- Location: LCCOMB_X66_Y30_N16
\SU1|SRA_SRL_sig[49]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[49]~48_combout\ = (\SU1|SRA_SRL_sig[49]~47_combout\ & ((\SU1|SRL64|Stage2_sig[44]~31_combout\) # ((\SU1|SRL64|Stage1_sig[53]~267_combout\ & \SU1|SRA64|Equal5~0_combout\)))) # (!\SU1|SRA_SRL_sig[49]~47_combout\ & 
-- (((\SU1|SRL64|Stage1_sig[53]~267_combout\ & \SU1|SRA64|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[49]~47_combout\,
	datab => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datac => \SU1|SRL64|Stage1_sig[53]~267_combout\,
	datad => \SU1|SRA64|Equal5~0_combout\,
	combout => \SU1|SRA_SRL_sig[49]~48_combout\);

-- Location: LCCOMB_X66_Y30_N26
\SU1|SRA_SRL_sig[49]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[49]~49_combout\ = (\SU1|SRA_SRL_sig[48]~41_combout\) # ((!\SU1|SRL64|Equal8~1_combout\ & ((\SU1|SRA64|Stage2_sig[49]~63_combout\) # (\SU1|SRA_SRL_sig[49]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[49]~63_combout\,
	datab => \SU1|SRA_SRL_sig[48]~41_combout\,
	datac => \SU1|SRA_SRL_sig[49]~48_combout\,
	datad => \SU1|SRL64|Equal8~1_combout\,
	combout => \SU1|SRA_SRL_sig[49]~49_combout\);

-- Location: LCCOMB_X74_Y31_N14
\Y~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~158_combout\ = (\Y~156_combout\ & (!\Y~157_combout\)) # (!\Y~156_combout\ & ((\Y~157_combout\ & ((\SU1|SRA_SRL_sig[49]~49_combout\))) # (!\Y~157_combout\ & (\AU1|Adder|Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~156_combout\,
	datab => \Y~157_combout\,
	datac => \AU1|Adder|Add0~36_combout\,
	datad => \SU1|SRA_SRL_sig[49]~49_combout\,
	combout => \Y~158_combout\);

-- Location: LCCOMB_X70_Y31_N18
\Y~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~159_combout\ = (\Y~454_combout\ & ((\Y~158_combout\ & ((\SU1|SLL64|Stage2_sig[17]~35_combout\))) # (!\Y~158_combout\ & (\SU1|SLL64|Stage2_sig[1]~93_combout\)))) # (!\Y~454_combout\ & (((\Y~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[1]~93_combout\,
	datab => \SU1|SLL64|Stage2_sig[17]~35_combout\,
	datac => \Y~454_combout\,
	datad => \Y~158_combout\,
	combout => \Y~159_combout\);

-- Location: LCCOMB_X70_Y31_N12
\Y~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~162_combout\ = (\Y~160_combout\ & ((\Y~161_combout\ & (\Y~155_combout\)) # (!\Y~161_combout\ & ((\Y~159_combout\))))) # (!\Y~160_combout\ & (!\Y~161_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~160_combout\,
	datab => \Y~161_combout\,
	datac => \Y~155_combout\,
	datad => \Y~159_combout\,
	combout => \Y~162_combout\);

-- Location: LCCOMB_X73_Y33_N30
\Y~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~154_combout\ = ((\ExtWord~input_o\) # ((\FuncClass[0]~input_o\) # (\FuncClass[1]~input_o\))) # (!\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~154_combout\);

-- Location: LCCOMB_X72_Y30_N20
\Y~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~149_combout\ = (\ShiftFN[0]~input_o\ & (((\B[5]~input_o\ & !\ExtWord~input_o\)) # (!\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~149_combout\);

-- Location: LCCOMB_X72_Y30_N0
\Y~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~151_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & ((\ExtWord~input_o\))) # (!\B[4]~input_o\ & (\ShiftFN[0]~input_o\ & !\ExtWord~input_o\)))) # (!\B[5]~input_o\ & (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~151_combout\);

-- Location: LCCOMB_X72_Y30_N14
\Y~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~150_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & ((\ExtWord~input_o\))) # (!\B[4]~input_o\ & (!\ShiftFN[0]~input_o\ & !\ExtWord~input_o\)))) # (!\B[5]~input_o\ & (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~150_combout\);

-- Location: LCCOMB_X66_Y31_N14
\Y~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~152_combout\ = (\Y~151_combout\ & ((\SU1|SRL64|Stage2_sig[33]~34_combout\) # ((!\Y~150_combout\)))) # (!\Y~151_combout\ & (((\Y~150_combout\ & \SU1|SRL64|Stage2_sig[49]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[33]~34_combout\,
	datab => \Y~151_combout\,
	datac => \Y~150_combout\,
	datad => \SU1|SRL64|Stage2_sig[49]~35_combout\,
	combout => \Y~152_combout\);

-- Location: LCCOMB_X70_Y31_N24
\Y~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~153_combout\ = (\Y~149_combout\ & ((\Y~152_combout\ & ((\SU1|SRA64|Stage2_sig[49]~65_combout\))) # (!\Y~152_combout\ & (\SU1|X_sig[63]~2_combout\)))) # (!\Y~149_combout\ & (((\Y~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~149_combout\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \Y~152_combout\,
	datad => \SU1|SRA64|Stage2_sig[49]~65_combout\,
	combout => \Y~153_combout\);

-- Location: LCCOMB_X70_Y31_N22
\Y~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~163_combout\ = (\Y~162_combout\ & ((\SU1|SRL64|Stage2_sig[17]~38_combout\) # ((\Y~154_combout\)))) # (!\Y~162_combout\ & (((!\Y~154_combout\ & \Y~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~162_combout\,
	datab => \SU1|SRL64|Stage2_sig[17]~38_combout\,
	datac => \Y~154_combout\,
	datad => \Y~153_combout\,
	combout => \Y~163_combout\);

-- Location: LCCOMB_X66_Y31_N0
\Y~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~164_combout\ = (\Y~150_combout\ & ((\Y~151_combout\ & (\SU1|SRL64|Stage2_sig[34]~43_combout\)) # (!\Y~151_combout\ & ((\SU1|SRL64|Stage2_sig[50]~45_combout\))))) # (!\Y~150_combout\ & (((\Y~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~150_combout\,
	datab => \SU1|SRL64|Stage2_sig[34]~43_combout\,
	datac => \SU1|SRL64|Stage2_sig[50]~45_combout\,
	datad => \Y~151_combout\,
	combout => \Y~164_combout\);

-- Location: LCCOMB_X66_Y31_N26
\Y~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~165_combout\ = (\Y~149_combout\ & ((\Y~164_combout\ & ((\SU1|SRA64|Stage2_sig[50]~69_combout\))) # (!\Y~164_combout\ & (\SU1|X_sig[63]~2_combout\)))) # (!\Y~149_combout\ & (((\Y~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~149_combout\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \SU1|SRA64|Stage2_sig[50]~69_combout\,
	datad => \Y~164_combout\,
	combout => \Y~165_combout\);

-- Location: LCCOMB_X73_Y35_N18
\SU1|SLL64|Stage2_sig[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[18]~36_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[6]~69_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[14]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[14]~82_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[6]~69_combout\,
	combout => \SU1|SLL64|Stage2_sig[18]~36_combout\);

-- Location: LCCOMB_X69_Y36_N20
\SU1|SLL64|Stage1_sig[19]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[19]~87_combout\ = (\SU1|SRL64|Stage1_sig[48]~138_combout\) # (\SU1|SRL64|Stage1_sig[48]~185_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~138_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~185_combout\,
	combout => \SU1|SLL64|Stage1_sig[19]~87_combout\);

-- Location: LCCOMB_X70_Y36_N4
\SU1|SLL64|Stage1_sig[18]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[18]~88_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~188_combout\) # ((\SU1|SRL64|Stage1_sig[48]~78_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[19]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~188_combout\,
	datab => \SU1|SLL64|Stage1_sig[19]~87_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~78_combout\,
	combout => \SU1|SLL64|Stage1_sig[18]~88_combout\);

-- Location: LCCOMB_X73_Y35_N12
\SU1|SLL64|Stage2_sig[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[18]~37_combout\ = (\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[10]~76_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[18]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[10]~76_combout\,
	datab => \SU1|SLL64|Stage1_sig[18]~88_combout\,
	datac => \B[3]~input_o\,
	combout => \SU1|SLL64|Stage2_sig[18]~37_combout\);

-- Location: LCCOMB_X74_Y35_N6
\SU1|SLL64|Stage2_sig[18]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[18]~38_combout\ = (\SU1|SLL64|Stage2_sig[18]~36_combout\) # ((!\B[2]~input_o\ & \SU1|SLL64|Stage2_sig[18]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SLL64|Stage2_sig[18]~36_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SLL64|Stage2_sig[18]~37_combout\,
	combout => \SU1|SLL64|Stage2_sig[18]~38_combout\);

-- Location: LCCOMB_X66_Y32_N28
\SU1|SRA_SRL_sig[50]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[50]~50_combout\ = (\B[3]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SU1|SRA64|Stage1_sig[62]~6_combout\))) # (!\ShiftFN[0]~input_o\ & (\SU1|SRL64|Stage1_sig[62]~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[62]~224_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRA64|Stage1_sig[62]~6_combout\,
	combout => \SU1|SRA_SRL_sig[50]~50_combout\);

-- Location: LCCOMB_X66_Y32_N14
\SU1|SRA_SRL_sig[50]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[50]~51_combout\ = (\B[2]~input_o\ & ((\SU1|SRA_SRL_sig[50]~50_combout\) # ((\SU1|SRL64|Stage1_sig[54]~223_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[54]~223_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|SRA_SRL_sig[50]~50_combout\,
	combout => \SU1|SRA_SRL_sig[50]~51_combout\);

-- Location: LCCOMB_X66_Y30_N20
\SU1|SRA_SRL_sig[50]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[50]~52_combout\ = (\SU1|SRA_SRL_sig[48]~41_combout\) # ((!\SU1|SRL64|Equal8~1_combout\ & ((\SU1|SRA_SRL_sig[50]~51_combout\) # (\SU1|SRA64|Stage2_sig[50]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[50]~51_combout\,
	datab => \SU1|SRA64|Stage2_sig[50]~67_combout\,
	datac => \SU1|SRA_SRL_sig[48]~41_combout\,
	datad => \SU1|SRL64|Equal8~1_combout\,
	combout => \SU1|SRA_SRL_sig[50]~52_combout\);

-- Location: LCCOMB_X74_Y31_N0
\Y~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~167_combout\ = (\Y~156_combout\ & (((!\Y~157_combout\)))) # (!\Y~156_combout\ & ((\Y~157_combout\ & ((\SU1|SRA_SRL_sig[50]~52_combout\))) # (!\Y~157_combout\ & (\AU1|Adder|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~156_combout\,
	datab => \AU1|Adder|Add0~38_combout\,
	datac => \Y~157_combout\,
	datad => \SU1|SRA_SRL_sig[50]~52_combout\,
	combout => \Y~167_combout\);

-- Location: LCCOMB_X74_Y31_N10
\Y~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~168_combout\ = (\Y~454_combout\ & ((\Y~167_combout\ & (\SU1|SLL64|Stage2_sig[18]~38_combout\)) # (!\Y~167_combout\ & ((\SU1|SLL64|Stage2_sig[2]~94_combout\))))) # (!\Y~454_combout\ & (((\Y~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[18]~38_combout\,
	datab => \SU1|SLL64|Stage2_sig[2]~94_combout\,
	datac => \Y~454_combout\,
	datad => \Y~167_combout\,
	combout => \Y~168_combout\);

-- Location: LCCOMB_X70_Y28_N6
\Y~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~166_combout\ = (\B[18]~input_o\ & ((\A[18]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[18]~input_o\ & (\A[18]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[18]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y~166_combout\);

-- Location: LCCOMB_X70_Y28_N24
\Y~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~169_combout\ = (\Y~161_combout\ & (((\Y~160_combout\ & \Y~166_combout\)))) # (!\Y~161_combout\ & ((\Y~168_combout\) # ((!\Y~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~161_combout\,
	datab => \Y~168_combout\,
	datac => \Y~160_combout\,
	datad => \Y~166_combout\,
	combout => \Y~169_combout\);

-- Location: LCCOMB_X66_Y31_N12
\Y~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~170_combout\ = (\Y~154_combout\ & (((\Y~169_combout\)))) # (!\Y~154_combout\ & ((\Y~169_combout\ & ((\SU1|SRL64|Stage2_sig[18]~48_combout\))) # (!\Y~169_combout\ & (\Y~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~165_combout\,
	datab => \Y~154_combout\,
	datac => \Y~169_combout\,
	datad => \SU1|SRL64|Stage2_sig[18]~48_combout\,
	combout => \Y~170_combout\);

-- Location: LCCOMB_X72_Y31_N8
\Y~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~171_combout\ = (\Y~151_combout\ & (((\SU1|SRL64|Stage2_sig[35]~52_combout\) # (!\Y~150_combout\)))) # (!\Y~151_combout\ & (\SU1|SRL64|Stage2_sig[51]~53_combout\ & ((\Y~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[51]~53_combout\,
	datab => \Y~151_combout\,
	datac => \SU1|SRL64|Stage2_sig[35]~52_combout\,
	datad => \Y~150_combout\,
	combout => \Y~171_combout\);

-- Location: LCCOMB_X72_Y31_N18
\Y~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~172_combout\ = (\Y~149_combout\ & ((\Y~171_combout\ & (\SU1|SRA64|Stage2_sig[51]~73_combout\)) # (!\Y~171_combout\ & ((\SU1|X_sig[63]~2_combout\))))) # (!\Y~149_combout\ & (((\Y~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~149_combout\,
	datab => \SU1|SRA64|Stage2_sig[51]~73_combout\,
	datac => \Y~171_combout\,
	datad => \SU1|X_sig[63]~2_combout\,
	combout => \Y~172_combout\);

-- Location: LCCOMB_X72_Y36_N10
\SU1|SLL64|Stage2_sig[19]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[19]~39_combout\ = (\SU1|SRL64|Stage2_sig[44]~31_combout\ & ((\SU1|SLL64|Stage1_sig[7]~71_combout\) # ((\SU1|SRA64|Equal5~0_combout\ & \SU1|SLL64|Stage1_sig[15]~83_combout\)))) # (!\SU1|SRL64|Stage2_sig[44]~31_combout\ & 
-- (\SU1|SRA64|Equal5~0_combout\ & ((\SU1|SLL64|Stage1_sig[15]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datab => \SU1|SRA64|Equal5~0_combout\,
	datac => \SU1|SLL64|Stage1_sig[7]~71_combout\,
	datad => \SU1|SLL64|Stage1_sig[15]~83_combout\,
	combout => \SU1|SLL64|Stage2_sig[19]~39_combout\);

-- Location: LCCOMB_X69_Y36_N6
\SU1|SLL64|Stage1_sig[19]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[19]~89_combout\ = (\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[19]~87_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~235_combout\) # ((\SU1|SRL64|Stage1_sig[48]~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~235_combout\,
	datab => \SU1|SLL64|Stage1_sig[19]~87_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~196_combout\,
	combout => \SU1|SLL64|Stage1_sig[19]~89_combout\);

-- Location: LCCOMB_X72_Y36_N12
\SU1|SLL64|Stage2_sig[19]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[19]~40_combout\ = (\SU1|SLL64|Stage1_sig[19]~89_combout\ & ((\SU1|SRA64|Stage2_sig[52]~62_combout\) # ((\SU1|SLL64|Stage1_sig[11]~77_combout\ & \SU1|SRA64|Stage2_sig[52]~66_combout\)))) # (!\SU1|SLL64|Stage1_sig[19]~89_combout\ & 
-- (\SU1|SLL64|Stage1_sig[11]~77_combout\ & ((\SU1|SRA64|Stage2_sig[52]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[19]~89_combout\,
	datab => \SU1|SLL64|Stage1_sig[11]~77_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datad => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	combout => \SU1|SLL64|Stage2_sig[19]~40_combout\);

-- Location: LCCOMB_X73_Y36_N16
\SU1|SLL64|Stage2_sig[19]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[19]~41_combout\ = (\SU1|SLL64|Stage2_sig[19]~39_combout\) # (\SU1|SLL64|Stage2_sig[19]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[19]~39_combout\,
	datad => \SU1|SLL64|Stage2_sig[19]~40_combout\,
	combout => \SU1|SLL64|Stage2_sig[19]~41_combout\);

-- Location: LCCOMB_X72_Y32_N24
\SU1|SRA_SRL_sig[51]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[51]~53_combout\ = (\SU1|X_sig[63]~2_combout\ & (\B[3]~input_o\ & ((\ShiftFN[0]~input_o\) # (!\SU1|SRA64|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|X_sig[63]~2_combout\,
	datab => \SU1|SRA64|Equal2~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SU1|SRA_SRL_sig[51]~53_combout\);

-- Location: LCCOMB_X72_Y32_N18
\SU1|SRA_SRL_sig[51]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[51]~54_combout\ = (\B[2]~input_o\ & ((\SU1|SRA_SRL_sig[51]~53_combout\) # ((\SU1|SRL64|Stage1_sig[55]~245_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SRA_SRL_sig[51]~53_combout\,
	datac => \SU1|SRL64|Stage1_sig[55]~245_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SRA_SRL_sig[51]~54_combout\);

-- Location: LCCOMB_X73_Y31_N30
\SU1|SRA_SRL_sig[51]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[51]~55_combout\ = (\SU1|SRA_SRL_sig[48]~41_combout\) # ((!\SU1|SRL64|Equal8~1_combout\ & ((\SU1|SRA_SRL_sig[51]~54_combout\) # (\SU1|SRA64|Stage2_sig[51]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[51]~54_combout\,
	datab => \SU1|SRA64|Stage2_sig[51]~70_combout\,
	datac => \SU1|SRA_SRL_sig[48]~41_combout\,
	datad => \SU1|SRL64|Equal8~1_combout\,
	combout => \SU1|SRA_SRL_sig[51]~55_combout\);

-- Location: LCCOMB_X74_Y31_N28
\Y~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~174_combout\ = (\Y~156_combout\ & (((!\Y~157_combout\)))) # (!\Y~156_combout\ & ((\Y~157_combout\ & (\SU1|SRA_SRL_sig[51]~55_combout\)) # (!\Y~157_combout\ & ((\AU1|Adder|Add0~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~156_combout\,
	datab => \SU1|SRA_SRL_sig[51]~55_combout\,
	datac => \Y~157_combout\,
	datad => \AU1|Adder|Add0~40_combout\,
	combout => \Y~174_combout\);

-- Location: LCCOMB_X74_Y31_N6
\Y~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~175_combout\ = (\Y~454_combout\ & ((\Y~174_combout\ & ((\SU1|SLL64|Stage2_sig[19]~41_combout\))) # (!\Y~174_combout\ & (\SU1|SLL64|Stage2_sig[3]~12_combout\)))) # (!\Y~454_combout\ & (((\Y~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~454_combout\,
	datab => \SU1|SLL64|Stage2_sig[3]~12_combout\,
	datac => \SU1|SLL64|Stage2_sig[19]~41_combout\,
	datad => \Y~174_combout\,
	combout => \Y~175_combout\);

-- Location: LCCOMB_X77_Y31_N22
\Y~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~173_combout\ = (\B[19]~input_o\ & ((\A[19]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[19]~input_o\ & (\A[19]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y~173_combout\);

-- Location: LCCOMB_X73_Y31_N16
\Y~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~176_combout\ = (\Y~161_combout\ & (((\Y~160_combout\ & \Y~173_combout\)))) # (!\Y~161_combout\ & ((\Y~175_combout\) # ((!\Y~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~175_combout\,
	datab => \Y~161_combout\,
	datac => \Y~160_combout\,
	datad => \Y~173_combout\,
	combout => \Y~176_combout\);

-- Location: LCCOMB_X73_Y31_N18
\Y~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~177_combout\ = (\Y~154_combout\ & (((\Y~176_combout\)))) # (!\Y~154_combout\ & ((\Y~176_combout\ & (\SU1|SRL64|Stage2_sig[19]~56_combout\)) # (!\Y~176_combout\ & ((\Y~172_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[19]~56_combout\,
	datab => \Y~172_combout\,
	datac => \Y~154_combout\,
	datad => \Y~176_combout\,
	combout => \Y~177_combout\);

-- Location: LCCOMB_X77_Y31_N24
\Y~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~180_combout\ = (\B[20]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[20]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[20]~input_o\ & (\A[20]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[20]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Y~180_combout\);

-- Location: LCCOMB_X74_Y32_N8
\SU1|SRA_SRL_sig[52]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[52]~56_combout\ = (\B[3]~input_o\ & (\ShiftFN[0]~input_o\ & \SU1|X_sig[63]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SU1|X_sig[63]~2_combout\,
	combout => \SU1|SRA_SRL_sig[52]~56_combout\);

-- Location: LCCOMB_X67_Y31_N16
\SU1|SRA_SRL_sig[52]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[52]~57_combout\ = (\B[2]~input_o\ & ((\SU1|SRA_SRL_sig[52]~56_combout\) # ((!\B[3]~input_o\ & \SU1|SRL64|Stage1_sig[56]~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SU1|SRA_SRL_sig[52]~56_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[56]~274_combout\,
	combout => \SU1|SRA_SRL_sig[52]~57_combout\);

-- Location: LCCOMB_X67_Y31_N26
\SU1|SRA_SRL_sig[52]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[52]~58_combout\ = (\SU1|SRA_SRL_sig[48]~41_combout\) # ((!\SU1|SRL64|Equal8~1_combout\ & ((\SU1|SRA64|Stage2_sig[52]~75_combout\) # (\SU1|SRA_SRL_sig[52]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~75_combout\,
	datab => \SU1|SRA_SRL_sig[52]~57_combout\,
	datac => \SU1|SRA_SRL_sig[48]~41_combout\,
	datad => \SU1|SRL64|Equal8~1_combout\,
	combout => \SU1|SRA_SRL_sig[52]~58_combout\);

-- Location: LCCOMB_X75_Y32_N8
\Y~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~181_combout\ = (\Y~156_combout\ & (((!\Y~157_combout\)))) # (!\Y~156_combout\ & ((\Y~157_combout\ & (\SU1|SRA_SRL_sig[52]~58_combout\)) # (!\Y~157_combout\ & ((\AU1|Adder|Add0~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[52]~58_combout\,
	datab => \Y~156_combout\,
	datac => \Y~157_combout\,
	datad => \AU1|Adder|Add0~42_combout\,
	combout => \Y~181_combout\);

-- Location: LCCOMB_X70_Y32_N4
\SU1|SLL64|Stage2_sig[20]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[20]~42_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[8]~73_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[16]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[16]~85_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[8]~73_combout\,
	combout => \SU1|SLL64|Stage2_sig[20]~42_combout\);

-- Location: LCCOMB_X69_Y36_N8
\SU1|SLL64|Stage1_sig[20]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[20]~90_combout\ = (\SU1|SRL64|Stage1_sig[48]~235_combout\) # (\SU1|SRL64|Stage1_sig[48]~196_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~235_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~196_combout\,
	combout => \SU1|SLL64|Stage1_sig[20]~90_combout\);

-- Location: LCCOMB_X69_Y36_N26
\SU1|SLL64|Stage1_sig[20]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[20]~91_combout\ = (\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[20]~90_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~260_combout\) # ((\SU1|SRL64|Stage1_sig[48]~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[48]~260_combout\,
	datac => \SU1|SLL64|Stage1_sig[20]~90_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~239_combout\,
	combout => \SU1|SLL64|Stage1_sig[20]~91_combout\);

-- Location: LCCOMB_X72_Y32_N28
\SU1|SLL64|Stage2_sig[20]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[20]~43_combout\ = (\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[12]~79_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[20]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[20]~91_combout\,
	datab => \SU1|SLL64|Stage1_sig[12]~79_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SLL64|Stage2_sig[20]~43_combout\);

-- Location: LCCOMB_X73_Y32_N0
\SU1|SLL64|Stage2_sig[20]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[20]~44_combout\ = (\SU1|SLL64|Stage2_sig[20]~42_combout\) # ((!\B[2]~input_o\ & \SU1|SLL64|Stage2_sig[20]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SU1|SLL64|Stage2_sig[20]~42_combout\,
	datad => \SU1|SLL64|Stage2_sig[20]~43_combout\,
	combout => \SU1|SLL64|Stage2_sig[20]~44_combout\);

-- Location: LCCOMB_X73_Y32_N2
\Y~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~182_combout\ = (\Y~454_combout\ & ((\Y~181_combout\ & ((\SU1|SLL64|Stage2_sig[20]~44_combout\))) # (!\Y~181_combout\ & (\SU1|SLL64|Stage2_sig[4]~14_combout\)))) # (!\Y~454_combout\ & (((\Y~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[4]~14_combout\,
	datab => \Y~454_combout\,
	datac => \Y~181_combout\,
	datad => \SU1|SLL64|Stage2_sig[20]~44_combout\,
	combout => \Y~182_combout\);

-- Location: LCCOMB_X73_Y31_N4
\Y~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~183_combout\ = (\Y~161_combout\ & (\Y~180_combout\ & (\Y~160_combout\))) # (!\Y~161_combout\ & (((\Y~182_combout\) # (!\Y~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~180_combout\,
	datab => \Y~161_combout\,
	datac => \Y~160_combout\,
	datad => \Y~182_combout\,
	combout => \Y~183_combout\);

-- Location: LCCOMB_X66_Y31_N6
\Y~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~178_combout\ = (\Y~151_combout\ & ((\SU1|SRL64|Stage2_sig[36]~60_combout\) # ((!\Y~150_combout\)))) # (!\Y~151_combout\ & (((\Y~150_combout\ & !\SU1|SRL64|Stage2_sig[52]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~151_combout\,
	datab => \SU1|SRL64|Stage2_sig[36]~60_combout\,
	datac => \Y~150_combout\,
	datad => \SU1|SRL64|Stage2_sig[52]~137_combout\,
	combout => \Y~178_combout\);

-- Location: LCCOMB_X70_Y31_N0
\Y~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~179_combout\ = (\Y~149_combout\ & ((\Y~178_combout\ & ((\SU1|SRA64|Stage2_sig[52]~76_combout\))) # (!\Y~178_combout\ & (\SU1|X_sig[63]~2_combout\)))) # (!\Y~149_combout\ & (((\Y~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~149_combout\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \Y~178_combout\,
	datad => \SU1|SRA64|Stage2_sig[52]~76_combout\,
	combout => \Y~179_combout\);

-- Location: LCCOMB_X70_Y31_N2
\Y~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~184_combout\ = (\Y~183_combout\ & ((\SU1|SRL64|Stage2_sig[20]~62_combout\) # ((\Y~154_combout\)))) # (!\Y~183_combout\ & (((!\Y~154_combout\ & \Y~179_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~183_combout\,
	datab => \SU1|SRL64|Stage2_sig[20]~62_combout\,
	datac => \Y~154_combout\,
	datad => \Y~179_combout\,
	combout => \Y~184_combout\);

-- Location: LCCOMB_X73_Y31_N6
\Y~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~187_combout\ = (\B[21]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[21]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[21]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Y~187_combout\);

-- Location: LCCOMB_X69_Y36_N28
\SU1|SLL64|Stage1_sig[22]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[22]~92_combout\ = (\SU1|SRL64|Stage1_sig[48]~187_combout\) # (\SU1|SRL64|Stage1_sig[48]~176_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~187_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~176_combout\,
	combout => \SU1|SLL64|Stage1_sig[22]~92_combout\);

-- Location: LCCOMB_X69_Y36_N14
\SU1|SLL64|Stage1_sig[21]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[21]~93_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~239_combout\) # ((\SU1|SRL64|Stage1_sig[48]~260_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[22]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[48]~239_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~260_combout\,
	datad => \SU1|SLL64|Stage1_sig[22]~92_combout\,
	combout => \SU1|SLL64|Stage1_sig[21]~93_combout\);

-- Location: LCCOMB_X73_Y34_N2
\SU1|SLL64|Stage2_sig[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[21]~46_combout\ = (\SU1|SLL64|Stage1_sig[21]~93_combout\ & ((\SU1|SRA64|Stage2_sig[52]~62_combout\) # ((\SU1|SRA64|Stage2_sig[52]~66_combout\ & \SU1|SLL64|Stage1_sig[13]~80_combout\)))) # (!\SU1|SLL64|Stage1_sig[21]~93_combout\ & 
-- (((\SU1|SRA64|Stage2_sig[52]~66_combout\ & \SU1|SLL64|Stage1_sig[13]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[21]~93_combout\,
	datab => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datad => \SU1|SLL64|Stage1_sig[13]~80_combout\,
	combout => \SU1|SLL64|Stage2_sig[21]~46_combout\);

-- Location: LCCOMB_X73_Y34_N24
\SU1|SLL64|Stage2_sig[21]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[21]~45_combout\ = (\SU1|SRL64|Stage2_sig[44]~31_combout\ & ((\SU1|SLL64|Stage1_sig[9]~74_combout\) # ((\SU1|SRA64|Equal5~0_combout\ & \SU1|SLL64|Stage1_sig[17]~86_combout\)))) # (!\SU1|SRL64|Stage2_sig[44]~31_combout\ & 
-- (\SU1|SRA64|Equal5~0_combout\ & (\SU1|SLL64|Stage1_sig[17]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datab => \SU1|SRA64|Equal5~0_combout\,
	datac => \SU1|SLL64|Stage1_sig[17]~86_combout\,
	datad => \SU1|SLL64|Stage1_sig[9]~74_combout\,
	combout => \SU1|SLL64|Stage2_sig[21]~45_combout\);

-- Location: LCCOMB_X73_Y34_N12
\SU1|SLL64|Stage2_sig[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[21]~47_combout\ = (\SU1|SLL64|Stage2_sig[21]~46_combout\) # (\SU1|SLL64|Stage2_sig[21]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SLL64|Stage2_sig[21]~46_combout\,
	datad => \SU1|SLL64|Stage2_sig[21]~45_combout\,
	combout => \SU1|SLL64|Stage2_sig[21]~47_combout\);

-- Location: LCCOMB_X66_Y33_N10
\SU1|SRA_SRL_sig[53]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[53]~59_combout\ = (!\SU1|SRL64|Equal8~1_combout\ & ((\ShiftFN[0]~input_o\ & ((\SU1|SRA64|Stage2_sig[53]~78_combout\))) # (!\ShiftFN[0]~input_o\ & (\SU1|SRL64|Stage2_sig[53]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Equal8~1_combout\,
	datab => \SU1|SRL64|Stage2_sig[53]~64_combout\,
	datac => \SU1|SRA64|Stage2_sig[53]~78_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SU1|SRA_SRL_sig[53]~59_combout\);

-- Location: LCCOMB_X66_Y33_N4
\SU1|SRA_SRL_sig[53]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[53]~60_combout\ = (\SU1|SRA_SRL_sig[48]~41_combout\) # (\SU1|SRA_SRL_sig[53]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRA_SRL_sig[48]~41_combout\,
	datad => \SU1|SRA_SRL_sig[53]~59_combout\,
	combout => \SU1|SRA_SRL_sig[53]~60_combout\);

-- Location: LCCOMB_X74_Y34_N28
\Y~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~188_combout\ = (\Y~157_combout\ & (((!\Y~156_combout\ & \SU1|SRA_SRL_sig[53]~60_combout\)))) # (!\Y~157_combout\ & ((\AU1|Adder|Add0~44_combout\) # ((\Y~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~44_combout\,
	datab => \Y~157_combout\,
	datac => \Y~156_combout\,
	datad => \SU1|SRA_SRL_sig[53]~60_combout\,
	combout => \Y~188_combout\);

-- Location: LCCOMB_X74_Y34_N22
\Y~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~189_combout\ = (\Y~454_combout\ & ((\Y~188_combout\ & (\SU1|SLL64|Stage2_sig[21]~47_combout\)) # (!\Y~188_combout\ & ((\SU1|SLL64|Stage2_sig[5]~15_combout\))))) # (!\Y~454_combout\ & (((\Y~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[21]~47_combout\,
	datab => \SU1|SLL64|Stage2_sig[5]~15_combout\,
	datac => \Y~454_combout\,
	datad => \Y~188_combout\,
	combout => \Y~189_combout\);

-- Location: LCCOMB_X73_Y31_N24
\Y~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~190_combout\ = (\Y~161_combout\ & (\Y~187_combout\ & (\Y~160_combout\))) # (!\Y~161_combout\ & (((\Y~189_combout\) # (!\Y~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~187_combout\,
	datab => \Y~161_combout\,
	datac => \Y~160_combout\,
	datad => \Y~189_combout\,
	combout => \Y~190_combout\);

-- Location: LCCOMB_X66_Y33_N6
\Y~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~185_combout\ = (\Y~150_combout\ & ((\Y~151_combout\ & (\SU1|SRL64|Stage2_sig[37]~67_combout\)) # (!\Y~151_combout\ & ((\SU1|SRL64|Stage2_sig[53]~64_combout\))))) # (!\Y~150_combout\ & (((\Y~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~150_combout\,
	datab => \SU1|SRL64|Stage2_sig[37]~67_combout\,
	datac => \SU1|SRL64|Stage2_sig[53]~64_combout\,
	datad => \Y~151_combout\,
	combout => \Y~185_combout\);

-- Location: LCCOMB_X66_Y33_N0
\Y~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~186_combout\ = (\Y~149_combout\ & ((\Y~185_combout\ & (\SU1|SRA64|Stage2_sig[53]~78_combout\)) # (!\Y~185_combout\ & ((\SU1|X_sig[63]~2_combout\))))) # (!\Y~149_combout\ & (((\Y~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[53]~78_combout\,
	datab => \Y~149_combout\,
	datac => \SU1|X_sig[63]~2_combout\,
	datad => \Y~185_combout\,
	combout => \Y~186_combout\);

-- Location: LCCOMB_X66_Y33_N14
\Y~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~191_combout\ = (\Y~154_combout\ & (((\Y~190_combout\)))) # (!\Y~154_combout\ & ((\Y~190_combout\ & (\SU1|SRL64|Stage2_sig[21]~70_combout\)) # (!\Y~190_combout\ & ((\Y~186_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[21]~70_combout\,
	datab => \Y~154_combout\,
	datac => \Y~190_combout\,
	datad => \Y~186_combout\,
	combout => \Y~191_combout\);

-- Location: LCCOMB_X76_Y35_N24
\Y~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~194_combout\ = (\B[22]~input_o\ & ((\A[22]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[22]~input_o\ & (\A[22]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y~194_combout\);

-- Location: LCCOMB_X69_Y36_N24
\SU1|SLL64|Stage1_sig[23]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[23]~94_combout\ = (\SU1|SRL64|Stage1_sig[48]~173_combout\) # (\SU1|SRL64|Stage1_sig[48]~184_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~173_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~184_combout\,
	combout => \SU1|SLL64|Stage1_sig[23]~94_combout\);

-- Location: LCCOMB_X69_Y36_N22
\SU1|SLL64|Stage1_sig[22]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[22]~139_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~176_combout\) # (\SU1|SRL64|Stage1_sig[48]~187_combout\)))) # (!\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[23]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[23]~94_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~176_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~187_combout\,
	combout => \SU1|SLL64|Stage1_sig[22]~139_combout\);

-- Location: LCCOMB_X73_Y35_N14
\SU1|SLL64|Stage2_sig[22]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[22]~48_combout\ = (\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[14]~82_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[22]~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SLL64|Stage1_sig[22]~139_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[14]~82_combout\,
	combout => \SU1|SLL64|Stage2_sig[22]~48_combout\);

-- Location: LCCOMB_X74_Y35_N8
\SU1|SLL64|Stage2_sig[22]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[22]~49_combout\ = (\B[2]~input_o\ & (\SU1|SLL64|Stage2_sig[18]~37_combout\)) # (!\B[2]~input_o\ & ((\SU1|SLL64|Stage2_sig[22]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[18]~37_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SLL64|Stage2_sig[22]~48_combout\,
	combout => \SU1|SLL64|Stage2_sig[22]~49_combout\);

-- Location: LCCOMB_X66_Y33_N12
\SU1|SRA_SRL_sig[54]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[54]~61_combout\ = (!\SU1|SRL64|Equal8~1_combout\ & ((\ShiftFN[0]~input_o\ & (\SU1|SRA64|Stage2_sig[54]~80_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SU1|SRL64|Stage2_sig[54]~138_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Equal8~1_combout\,
	datab => \SU1|SRA64|Stage2_sig[54]~80_combout\,
	datac => \SU1|SRL64|Stage2_sig[54]~138_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SU1|SRA_SRL_sig[54]~61_combout\);

-- Location: LCCOMB_X74_Y33_N18
\SU1|SRA_SRL_sig[54]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[54]~62_combout\ = (\SU1|SRA_SRL_sig[48]~41_combout\) # (\SU1|SRA_SRL_sig[54]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRA_SRL_sig[48]~41_combout\,
	datad => \SU1|SRA_SRL_sig[54]~61_combout\,
	combout => \SU1|SRA_SRL_sig[54]~62_combout\);

-- Location: LCCOMB_X75_Y31_N0
\Y~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~195_combout\ = (\Y~156_combout\ & (((!\Y~157_combout\)))) # (!\Y~156_combout\ & ((\Y~157_combout\ & ((\SU1|SRA_SRL_sig[54]~62_combout\))) # (!\Y~157_combout\ & (\AU1|Adder|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~156_combout\,
	datab => \AU1|Adder|Add0~46_combout\,
	datac => \Y~157_combout\,
	datad => \SU1|SRA_SRL_sig[54]~62_combout\,
	combout => \Y~195_combout\);

-- Location: LCCOMB_X74_Y35_N18
\Y~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~196_combout\ = (\Y~454_combout\ & ((\Y~195_combout\ & ((\SU1|SLL64|Stage2_sig[22]~49_combout\))) # (!\Y~195_combout\ & (\SU1|SLL64|Stage2_sig[6]~16_combout\)))) # (!\Y~454_combout\ & (((\Y~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~454_combout\,
	datab => \SU1|SLL64|Stage2_sig[6]~16_combout\,
	datac => \SU1|SLL64|Stage2_sig[22]~49_combout\,
	datad => \Y~195_combout\,
	combout => \Y~196_combout\);

-- Location: LCCOMB_X73_Y31_N26
\Y~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~197_combout\ = (\Y~161_combout\ & (\Y~194_combout\ & (\Y~160_combout\))) # (!\Y~161_combout\ & (((\Y~196_combout\) # (!\Y~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~194_combout\,
	datab => \Y~161_combout\,
	datac => \Y~160_combout\,
	datad => \Y~196_combout\,
	combout => \Y~197_combout\);

-- Location: LCCOMB_X66_Y33_N8
\Y~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~192_combout\ = (\Y~150_combout\ & ((\Y~151_combout\ & (\SU1|SRL64|Stage2_sig[38]~74_combout\)) # (!\Y~151_combout\ & ((\SU1|SRL64|Stage2_sig[54]~138_combout\))))) # (!\Y~150_combout\ & (((\Y~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~150_combout\,
	datab => \SU1|SRL64|Stage2_sig[38]~74_combout\,
	datac => \SU1|SRL64|Stage2_sig[54]~138_combout\,
	datad => \Y~151_combout\,
	combout => \Y~192_combout\);

-- Location: LCCOMB_X66_Y33_N18
\Y~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~193_combout\ = (\Y~149_combout\ & ((\Y~192_combout\ & ((\SU1|SRA64|Stage2_sig[54]~80_combout\))) # (!\Y~192_combout\ & (\SU1|X_sig[63]~2_combout\)))) # (!\Y~149_combout\ & (((\Y~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|X_sig[63]~2_combout\,
	datab => \Y~149_combout\,
	datac => \Y~192_combout\,
	datad => \SU1|SRA64|Stage2_sig[54]~80_combout\,
	combout => \Y~193_combout\);

-- Location: LCCOMB_X66_Y33_N22
\Y~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~198_combout\ = (\Y~197_combout\ & ((\Y~154_combout\) # ((\SU1|SRL64|Stage2_sig[22]~76_combout\)))) # (!\Y~197_combout\ & (!\Y~154_combout\ & ((\Y~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~197_combout\,
	datab => \Y~154_combout\,
	datac => \SU1|SRL64|Stage2_sig[22]~76_combout\,
	datad => \Y~193_combout\,
	combout => \Y~198_combout\);

-- Location: LCCOMB_X69_Y32_N18
\SU1|SRA_SRL_sig[55]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[55]~63_combout\ = (!\SU1|SRL64|Equal8~1_combout\ & ((\ShiftFN[0]~input_o\ & (\SU1|SRA64|Stage2_sig[55]~88_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SU1|SRL64|Stage2_sig[55]~139_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[55]~88_combout\,
	datab => \SU1|SRL64|Stage2_sig[55]~139_combout\,
	datac => \SU1|SRL64|Equal8~1_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SU1|SRA_SRL_sig[55]~63_combout\);

-- Location: LCCOMB_X74_Y32_N2
\SU1|SRA_SRL_sig[55]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[55]~64_combout\ = (\SU1|SRA_SRL_sig[55]~63_combout\) # (\SU1|SRA_SRL_sig[48]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRA_SRL_sig[55]~63_combout\,
	datad => \SU1|SRA_SRL_sig[48]~41_combout\,
	combout => \SU1|SRA_SRL_sig[55]~64_combout\);

-- Location: LCCOMB_X74_Y32_N4
\Y~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~202_combout\ = (\Y~157_combout\ & (\SU1|SRA_SRL_sig[55]~64_combout\ & ((!\Y~156_combout\)))) # (!\Y~157_combout\ & (((\AU1|Adder|Add0~48_combout\) # (\Y~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~157_combout\,
	datab => \SU1|SRA_SRL_sig[55]~64_combout\,
	datac => \AU1|Adder|Add0~48_combout\,
	datad => \Y~156_combout\,
	combout => \Y~202_combout\);

-- Location: LCCOMB_X73_Y36_N18
\SU1|SLL64|Stage1_sig[24]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[24]~95_combout\ = (\SU1|SRL64|Stage1_sig[48]~229_combout\) # (\SU1|SRL64|Stage1_sig[48]~234_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~229_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~234_combout\,
	combout => \SU1|SLL64|Stage1_sig[24]~95_combout\);

-- Location: LCCOMB_X73_Y36_N12
\SU1|SLL64|Stage2_sig[23]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[23]~51_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[23]~94_combout\)) # (!\B[0]~input_o\ & ((\SU1|SLL64|Stage1_sig[24]~95_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[23]~94_combout\,
	datab => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[24]~95_combout\,
	combout => \SU1|SLL64|Stage2_sig[23]~51_combout\);

-- Location: LCCOMB_X72_Y36_N22
\SU1|SLL64|Stage2_sig[23]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[23]~50_combout\ = (\SU1|SRL64|Stage2_sig[44]~31_combout\ & ((\SU1|SLL64|Stage1_sig[11]~77_combout\) # ((\SU1|SRA64|Equal5~0_combout\ & \SU1|SLL64|Stage1_sig[19]~89_combout\)))) # (!\SU1|SRL64|Stage2_sig[44]~31_combout\ & 
-- (((\SU1|SRA64|Equal5~0_combout\ & \SU1|SLL64|Stage1_sig[19]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datab => \SU1|SLL64|Stage1_sig[11]~77_combout\,
	datac => \SU1|SRA64|Equal5~0_combout\,
	datad => \SU1|SLL64|Stage1_sig[19]~89_combout\,
	combout => \SU1|SLL64|Stage2_sig[23]~50_combout\);

-- Location: LCCOMB_X73_Y36_N30
\SU1|SLL64|Stage2_sig[23]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[23]~52_combout\ = (\SU1|SLL64|Stage2_sig[23]~51_combout\) # ((\SU1|SLL64|Stage2_sig[23]~50_combout\) # ((\SU1|SRA64|Stage2_sig[52]~66_combout\ & \SU1|SLL64|Stage1_sig[15]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[23]~51_combout\,
	datab => \SU1|SLL64|Stage2_sig[23]~50_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datad => \SU1|SLL64|Stage1_sig[15]~83_combout\,
	combout => \SU1|SLL64|Stage2_sig[23]~52_combout\);

-- Location: LCCOMB_X73_Y36_N24
\Y~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~203_combout\ = (\Y~454_combout\ & ((\Y~202_combout\ & (\SU1|SLL64|Stage2_sig[23]~52_combout\)) # (!\Y~202_combout\ & ((\SU1|SLL64|Stage2_sig[7]~17_combout\))))) # (!\Y~454_combout\ & (\Y~202_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~454_combout\,
	datab => \Y~202_combout\,
	datac => \SU1|SLL64|Stage2_sig[23]~52_combout\,
	datad => \SU1|SLL64|Stage2_sig[7]~17_combout\,
	combout => \Y~203_combout\);

-- Location: LCCOMB_X70_Y28_N10
\Y~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~201_combout\ = (\B[23]~input_o\ & ((\A[23]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[23]~input_o\ & (\A[23]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[23]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y~201_combout\);

-- Location: LCCOMB_X70_Y28_N12
\Y~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~204_combout\ = (\Y~161_combout\ & (((\Y~160_combout\ & \Y~201_combout\)))) # (!\Y~161_combout\ & ((\Y~203_combout\) # ((!\Y~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~161_combout\,
	datab => \Y~203_combout\,
	datac => \Y~160_combout\,
	datad => \Y~201_combout\,
	combout => \Y~204_combout\);

-- Location: LCCOMB_X69_Y32_N30
\Y~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~199_combout\ = (\Y~150_combout\ & ((\Y~151_combout\ & (\SU1|SRL64|Stage2_sig[39]~81_combout\)) # (!\Y~151_combout\ & ((\SU1|SRL64|Stage2_sig[55]~139_combout\))))) # (!\Y~150_combout\ & (((\Y~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[39]~81_combout\,
	datab => \Y~150_combout\,
	datac => \Y~151_combout\,
	datad => \SU1|SRL64|Stage2_sig[55]~139_combout\,
	combout => \Y~199_combout\);

-- Location: LCCOMB_X69_Y32_N16
\Y~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~200_combout\ = (\Y~149_combout\ & ((\Y~199_combout\ & (\SU1|SRA64|Stage2_sig[55]~88_combout\)) # (!\Y~199_combout\ & ((\SU1|X_sig[63]~2_combout\))))) # (!\Y~149_combout\ & (((\Y~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[55]~88_combout\,
	datab => \Y~149_combout\,
	datac => \Y~199_combout\,
	datad => \SU1|X_sig[63]~2_combout\,
	combout => \Y~200_combout\);

-- Location: LCCOMB_X70_Y28_N30
\Y~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~205_combout\ = (\Y~204_combout\ & ((\SU1|SRL64|Stage2_sig[23]~84_combout\) # ((\Y~154_combout\)))) # (!\Y~204_combout\ & (((!\Y~154_combout\ & \Y~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~204_combout\,
	datab => \SU1|SRL64|Stage2_sig[23]~84_combout\,
	datac => \Y~154_combout\,
	datad => \Y~200_combout\,
	combout => \Y~205_combout\);

-- Location: LCCOMB_X68_Y31_N28
\Y~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~206_combout\ = (\Y~151_combout\ & ((\SU1|SRL64|Stage2_sig[40]~89_combout\) # ((!\Y~150_combout\)))) # (!\Y~151_combout\ & (((\Y~150_combout\ & \SU1|SRL64|Stage2_sig[56]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[40]~89_combout\,
	datab => \Y~151_combout\,
	datac => \Y~150_combout\,
	datad => \SU1|SRL64|Stage2_sig[56]~86_combout\,
	combout => \Y~206_combout\);

-- Location: LCCOMB_X68_Y31_N30
\Y~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~207_combout\ = (\Y~149_combout\ & ((\Y~206_combout\ & (\SU1|SRA64|Stage2_sig[56]~83_combout\)) # (!\Y~206_combout\ & ((\SU1|X_sig[63]~2_combout\))))) # (!\Y~149_combout\ & (((\Y~206_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[56]~83_combout\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \Y~149_combout\,
	datad => \Y~206_combout\,
	combout => \Y~207_combout\);

-- Location: LCCOMB_X68_Y31_N24
\SU1|SRA_SRL_sig[56]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[56]~65_combout\ = (\SU1|SRA_SRL_sig[48]~41_combout\) # ((\SU1|SRL64|Stage2_sig[56]~86_combout\ & (!\ShiftFN[0]~input_o\ & !\SU1|SRL64|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[56]~86_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SU1|SRL64|Equal8~1_combout\,
	datad => \SU1|SRA_SRL_sig[48]~41_combout\,
	combout => \SU1|SRA_SRL_sig[56]~65_combout\);

-- Location: LCCOMB_X68_Y31_N10
\SU1|SRA_SRL_sig[56]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[56]~66_combout\ = (\SU1|SRA_SRL_sig[56]~65_combout\) # ((\SU1|SRA64|Stage2_sig[56]~83_combout\ & (\ShiftFN[0]~input_o\ & !\SU1|SRL64|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[56]~83_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SU1|SRL64|Equal8~1_combout\,
	datad => \SU1|SRA_SRL_sig[56]~65_combout\,
	combout => \SU1|SRA_SRL_sig[56]~66_combout\);

-- Location: LCCOMB_X75_Y32_N26
\Y~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~209_combout\ = (\Y~157_combout\ & (((\SU1|SRA_SRL_sig[56]~66_combout\ & !\Y~156_combout\)))) # (!\Y~157_combout\ & ((\AU1|Adder|Add0~50_combout\) # ((\Y~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~50_combout\,
	datab => \SU1|SRA_SRL_sig[56]~66_combout\,
	datac => \Y~157_combout\,
	datad => \Y~156_combout\,
	combout => \Y~209_combout\);

-- Location: LCCOMB_X69_Y34_N20
\SU1|SLL64|Stage1_sig[24]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[24]~96_combout\ = (\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[24]~95_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~252_combout\) # ((\SU1|SRL64|Stage1_sig[48]~259_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~252_combout\,
	datab => \SU1|SLL64|Stage1_sig[24]~95_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~259_combout\,
	datad => \B[0]~input_o\,
	combout => \SU1|SLL64|Stage1_sig[24]~96_combout\);

-- Location: LCCOMB_X70_Y32_N22
\SU1|SLL64|Stage2_sig[24]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[24]~53_combout\ = (\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[16]~85_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[24]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SLL64|Stage1_sig[24]~96_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[16]~85_combout\,
	combout => \SU1|SLL64|Stage2_sig[24]~53_combout\);

-- Location: LCCOMB_X73_Y32_N20
\SU1|SLL64|Stage2_sig[24]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[24]~54_combout\ = (\B[2]~input_o\ & ((\SU1|SLL64|Stage2_sig[20]~43_combout\))) # (!\B[2]~input_o\ & (\SU1|SLL64|Stage2_sig[24]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SLL64|Stage2_sig[24]~53_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SLL64|Stage2_sig[20]~43_combout\,
	combout => \SU1|SLL64|Stage2_sig[24]~54_combout\);

-- Location: LCCOMB_X73_Y32_N22
\Y~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~210_combout\ = (\Y~454_combout\ & ((\Y~209_combout\ & ((\SU1|SLL64|Stage2_sig[24]~54_combout\))) # (!\Y~209_combout\ & (\SU1|SLL64|Stage2_sig[8]~95_combout\)))) # (!\Y~454_combout\ & (((\Y~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[8]~95_combout\,
	datab => \Y~454_combout\,
	datac => \Y~209_combout\,
	datad => \SU1|SLL64|Stage2_sig[24]~54_combout\,
	combout => \Y~210_combout\);

-- Location: LCCOMB_X70_Y28_N16
\Y~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~208_combout\ = (\B[24]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[24]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \Y~208_combout\);

-- Location: LCCOMB_X70_Y28_N2
\Y~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~211_combout\ = (\Y~161_combout\ & (((\Y~160_combout\ & \Y~208_combout\)))) # (!\Y~161_combout\ & ((\Y~210_combout\) # ((!\Y~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~161_combout\,
	datab => \Y~210_combout\,
	datac => \Y~160_combout\,
	datad => \Y~208_combout\,
	combout => \Y~211_combout\);

-- Location: LCCOMB_X70_Y28_N28
\Y~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~212_combout\ = (\Y~211_combout\ & (((\Y~154_combout\) # (\SU1|SRL64|Stage2_sig[24]~91_combout\)))) # (!\Y~211_combout\ & (\Y~207_combout\ & (!\Y~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~207_combout\,
	datab => \Y~211_combout\,
	datac => \Y~154_combout\,
	datad => \SU1|SRL64|Stage2_sig[24]~91_combout\,
	combout => \Y~212_combout\);

-- Location: LCCOMB_X69_Y34_N14
\SU1|SLL64|Stage1_sig[26]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[26]~97_combout\ = (\SU1|SRL64|Stage1_sig[48]~175_combout\) # (\SU1|SRL64|Stage1_sig[48]~181_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~175_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~181_combout\,
	combout => \SU1|SLL64|Stage1_sig[26]~97_combout\);

-- Location: LCCOMB_X69_Y34_N0
\SU1|SLL64|Stage1_sig[25]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[25]~98_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~259_combout\) # (\SU1|SRL64|Stage1_sig[48]~252_combout\)))) # (!\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[26]~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[26]~97_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~259_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~252_combout\,
	combout => \SU1|SLL64|Stage1_sig[25]~98_combout\);

-- Location: LCCOMB_X72_Y34_N8
\SU1|SLL64|Stage2_sig[25]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[25]~56_combout\ = (\SU1|SLL64|Stage1_sig[25]~98_combout\ & ((\SU1|SRA64|Stage2_sig[52]~62_combout\) # ((\SU1|SRA64|Stage2_sig[52]~66_combout\ & \SU1|SLL64|Stage1_sig[17]~86_combout\)))) # (!\SU1|SLL64|Stage1_sig[25]~98_combout\ & 
-- (\SU1|SRA64|Stage2_sig[52]~66_combout\ & (\SU1|SLL64|Stage1_sig[17]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[25]~98_combout\,
	datab => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datac => \SU1|SLL64|Stage1_sig[17]~86_combout\,
	datad => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	combout => \SU1|SLL64|Stage2_sig[25]~56_combout\);

-- Location: LCCOMB_X73_Y34_N6
\SU1|SLL64|Stage2_sig[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[25]~55_combout\ = (\SU1|SRL64|Stage2_sig[44]~31_combout\ & ((\SU1|SLL64|Stage1_sig[13]~80_combout\) # ((\SU1|SRA64|Equal5~0_combout\ & \SU1|SLL64|Stage1_sig[21]~93_combout\)))) # (!\SU1|SRL64|Stage2_sig[44]~31_combout\ & 
-- (\SU1|SRA64|Equal5~0_combout\ & (\SU1|SLL64|Stage1_sig[21]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datab => \SU1|SRA64|Equal5~0_combout\,
	datac => \SU1|SLL64|Stage1_sig[21]~93_combout\,
	datad => \SU1|SLL64|Stage1_sig[13]~80_combout\,
	combout => \SU1|SLL64|Stage2_sig[25]~55_combout\);

-- Location: LCCOMB_X73_Y34_N0
\SU1|SLL64|Stage2_sig[25]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[25]~57_combout\ = (\SU1|SLL64|Stage2_sig[25]~56_combout\) # (\SU1|SLL64|Stage2_sig[25]~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[25]~56_combout\,
	datad => \SU1|SLL64|Stage2_sig[25]~55_combout\,
	combout => \SU1|SLL64|Stage2_sig[25]~57_combout\);

-- Location: LCCOMB_X67_Y30_N30
\SU1|SRA_SRL_sig[57]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[57]~67_combout\ = (\SU1|SRA_SRL_sig[48]~41_combout\) # ((!\SU1|SRL64|Equal8~1_combout\ & (!\ShiftFN[0]~input_o\ & \SU1|SRL64|Stage2_sig[57]~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Equal8~1_combout\,
	datab => \SU1|SRA_SRL_sig[48]~41_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SU1|SRL64|Stage2_sig[57]~92_combout\,
	combout => \SU1|SRA_SRL_sig[57]~67_combout\);

-- Location: LCCOMB_X67_Y30_N0
\SU1|SRA_SRL_sig[57]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[57]~68_combout\ = (\SU1|SRA_SRL_sig[57]~67_combout\) # ((\ShiftFN[0]~input_o\ & (\SU1|SRA64|Stage2_sig[57]~84_combout\ & !\SU1|SRL64|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[57]~67_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SU1|SRA64|Stage2_sig[57]~84_combout\,
	datad => \SU1|SRL64|Equal8~1_combout\,
	combout => \SU1|SRA_SRL_sig[57]~68_combout\);

-- Location: LCCOMB_X75_Y32_N4
\Y~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~216_combout\ = (\Y~156_combout\ & (((!\Y~157_combout\)))) # (!\Y~156_combout\ & ((\Y~157_combout\ & (\SU1|SRA_SRL_sig[57]~68_combout\)) # (!\Y~157_combout\ & ((\AU1|Adder|Add0~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[57]~68_combout\,
	datab => \Y~156_combout\,
	datac => \Y~157_combout\,
	datad => \AU1|Adder|Add0~52_combout\,
	combout => \Y~216_combout\);

-- Location: LCCOMB_X74_Y34_N24
\Y~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~217_combout\ = (\Y~454_combout\ & ((\Y~216_combout\ & ((\SU1|SLL64|Stage2_sig[25]~57_combout\))) # (!\Y~216_combout\ & (\SU1|SLL64|Stage2_sig[9]~96_combout\)))) # (!\Y~454_combout\ & (((\Y~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~454_combout\,
	datab => \SU1|SLL64|Stage2_sig[9]~96_combout\,
	datac => \SU1|SLL64|Stage2_sig[25]~57_combout\,
	datad => \Y~216_combout\,
	combout => \Y~217_combout\);

-- Location: LCCOMB_X75_Y34_N0
\Y~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~215_combout\ = (\B[25]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[25]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[25]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[25]~input_o\,
	combout => \Y~215_combout\);

-- Location: LCCOMB_X73_Y31_N28
\Y~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~218_combout\ = (\Y~160_combout\ & ((\Y~161_combout\ & ((\Y~215_combout\))) # (!\Y~161_combout\ & (\Y~217_combout\)))) # (!\Y~160_combout\ & (((!\Y~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~217_combout\,
	datab => \Y~160_combout\,
	datac => \Y~215_combout\,
	datad => \Y~161_combout\,
	combout => \Y~218_combout\);

-- Location: LCCOMB_X67_Y30_N18
\Y~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~213_combout\ = (\Y~150_combout\ & ((\Y~151_combout\ & (\SU1|SRL64|Stage2_sig[41]~95_combout\)) # (!\Y~151_combout\ & ((\SU1|SRL64|Stage2_sig[57]~92_combout\))))) # (!\Y~150_combout\ & (((\Y~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[41]~95_combout\,
	datab => \Y~150_combout\,
	datac => \Y~151_combout\,
	datad => \SU1|SRL64|Stage2_sig[57]~92_combout\,
	combout => \Y~213_combout\);

-- Location: LCCOMB_X67_Y30_N20
\Y~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~214_combout\ = (\Y~149_combout\ & ((\Y~213_combout\ & ((\SU1|SRA64|Stage2_sig[57]~84_combout\))) # (!\Y~213_combout\ & (\SU1|X_sig[63]~2_combout\)))) # (!\Y~149_combout\ & (((\Y~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~149_combout\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \SU1|SRA64|Stage2_sig[57]~84_combout\,
	datad => \Y~213_combout\,
	combout => \Y~214_combout\);

-- Location: LCCOMB_X67_Y30_N26
\Y~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~219_combout\ = (\Y~218_combout\ & ((\SU1|SRL64|Stage2_sig[25]~98_combout\) # ((\Y~154_combout\)))) # (!\Y~218_combout\ & (((!\Y~154_combout\ & \Y~214_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[25]~98_combout\,
	datab => \Y~218_combout\,
	datac => \Y~154_combout\,
	datad => \Y~214_combout\,
	combout => \Y~219_combout\);

-- Location: LCCOMB_X69_Y34_N18
\SU1|SLL64|Stage1_sig[27]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[27]~99_combout\ = (\SU1|SRL64|Stage1_sig[48]~172_combout\) # (\SU1|SRL64|Stage1_sig[48]~178_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~172_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~178_combout\,
	combout => \SU1|SLL64|Stage1_sig[27]~99_combout\);

-- Location: LCCOMB_X69_Y34_N4
\SU1|SLL64|Stage1_sig[26]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[26]~140_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~175_combout\) # (\SU1|SRL64|Stage1_sig[48]~181_combout\)))) # (!\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[27]~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[27]~99_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~175_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~181_combout\,
	combout => \SU1|SLL64|Stage1_sig[26]~140_combout\);

-- Location: LCCOMB_X73_Y35_N0
\SU1|SLL64|Stage2_sig[26]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[26]~58_combout\ = (\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[18]~88_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[26]~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[26]~140_combout\,
	datab => \SU1|SLL64|Stage1_sig[18]~88_combout\,
	datac => \B[3]~input_o\,
	combout => \SU1|SLL64|Stage2_sig[26]~58_combout\);

-- Location: LCCOMB_X73_Y35_N2
\SU1|SLL64|Stage2_sig[26]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[26]~59_combout\ = (\B[2]~input_o\ & ((\SU1|SLL64|Stage2_sig[22]~48_combout\))) # (!\B[2]~input_o\ & (\SU1|SLL64|Stage2_sig[26]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SLL64|Stage2_sig[26]~58_combout\,
	datac => \SU1|SLL64|Stage2_sig[22]~48_combout\,
	datad => \B[2]~input_o\,
	combout => \SU1|SLL64|Stage2_sig[26]~59_combout\);

-- Location: LCCOMB_X74_Y32_N30
\SU1|SRA_SRL_sig[58]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[58]~69_combout\ = (\SU1|SRA_SRL_sig[48]~41_combout\) # ((\SU1|SRL64|Stage2_sig[58]~100_combout\ & (!\SU1|SRL64|Equal8~1_combout\ & !\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[58]~100_combout\,
	datab => \SU1|SRL64|Equal8~1_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SU1|SRA_SRL_sig[48]~41_combout\,
	combout => \SU1|SRA_SRL_sig[58]~69_combout\);

-- Location: LCCOMB_X74_Y32_N16
\SU1|SRA_SRL_sig[58]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[58]~70_combout\ = (\SU1|SRA_SRL_sig[58]~69_combout\) # ((\ShiftFN[0]~input_o\ & (!\SU1|SRL64|Equal8~1_combout\ & \SU1|SRA64|Stage2_sig[58]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SU1|SRL64|Equal8~1_combout\,
	datac => \SU1|SRA_SRL_sig[58]~69_combout\,
	datad => \SU1|SRA64|Stage2_sig[58]~85_combout\,
	combout => \SU1|SRA_SRL_sig[58]~70_combout\);

-- Location: LCCOMB_X74_Y32_N10
\Y~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~223_combout\ = (\Y~157_combout\ & (\SU1|SRA_SRL_sig[58]~70_combout\ & ((!\Y~156_combout\)))) # (!\Y~157_combout\ & (((\AU1|Adder|Add0~54_combout\) # (\Y~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~157_combout\,
	datab => \SU1|SRA_SRL_sig[58]~70_combout\,
	datac => \AU1|Adder|Add0~54_combout\,
	datad => \Y~156_combout\,
	combout => \Y~223_combout\);

-- Location: LCCOMB_X74_Y32_N20
\Y~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~224_combout\ = (\Y~454_combout\ & ((\Y~223_combout\ & ((\SU1|SLL64|Stage2_sig[26]~59_combout\))) # (!\Y~223_combout\ & (\SU1|SLL64|Stage2_sig[10]~97_combout\)))) # (!\Y~454_combout\ & (((\Y~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[10]~97_combout\,
	datab => \Y~454_combout\,
	datac => \SU1|SLL64|Stage2_sig[26]~59_combout\,
	datad => \Y~223_combout\,
	combout => \Y~224_combout\);

-- Location: LCCOMB_X77_Y31_N2
\Y~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~222_combout\ = (\B[26]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[26]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[26]~input_o\ & (\A[26]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[26]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[26]~input_o\,
	combout => \Y~222_combout\);

-- Location: LCCOMB_X72_Y32_N14
\Y~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~225_combout\ = (\Y~160_combout\ & ((\Y~161_combout\ & ((\Y~222_combout\))) # (!\Y~161_combout\ & (\Y~224_combout\)))) # (!\Y~160_combout\ & (((!\Y~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~224_combout\,
	datab => \Y~160_combout\,
	datac => \Y~161_combout\,
	datad => \Y~222_combout\,
	combout => \Y~225_combout\);

-- Location: LCCOMB_X68_Y32_N24
\Y~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~220_combout\ = (\Y~150_combout\ & ((\Y~151_combout\ & ((\SU1|SRL64|Stage2_sig[42]~103_combout\))) # (!\Y~151_combout\ & (\SU1|SRL64|Stage2_sig[58]~100_combout\)))) # (!\Y~150_combout\ & (((\Y~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~150_combout\,
	datab => \SU1|SRL64|Stage2_sig[58]~100_combout\,
	datac => \Y~151_combout\,
	datad => \SU1|SRL64|Stage2_sig[42]~103_combout\,
	combout => \Y~220_combout\);

-- Location: LCCOMB_X68_Y32_N2
\Y~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~221_combout\ = (\Y~149_combout\ & ((\Y~220_combout\ & ((\SU1|SRA64|Stage2_sig[58]~85_combout\))) # (!\Y~220_combout\ & (\SU1|X_sig[63]~2_combout\)))) # (!\Y~149_combout\ & (((\Y~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|X_sig[63]~2_combout\,
	datab => \SU1|SRA64|Stage2_sig[58]~85_combout\,
	datac => \Y~149_combout\,
	datad => \Y~220_combout\,
	combout => \Y~221_combout\);

-- Location: LCCOMB_X68_Y32_N28
\Y~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~226_combout\ = (\Y~225_combout\ & (((\Y~154_combout\) # (\SU1|SRL64|Stage2_sig[26]~105_combout\)))) # (!\Y~225_combout\ & (\Y~221_combout\ & (!\Y~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~225_combout\,
	datab => \Y~221_combout\,
	datac => \Y~154_combout\,
	datad => \SU1|SRL64|Stage2_sig[26]~105_combout\,
	combout => \Y~226_combout\);

-- Location: LCCOMB_X68_Y31_N8
\SU1|SRA_SRL_sig[59]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[59]~71_combout\ = (\SU1|SRA_SRL_sig[48]~41_combout\) # ((\SU1|SRA64|Stage2_sig[59]~92_combout\ & (\ShiftFN[0]~input_o\ & !\SU1|SRL64|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[59]~92_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SU1|SRL64|Equal8~1_combout\,
	datad => \SU1|SRA_SRL_sig[48]~41_combout\,
	combout => \SU1|SRA_SRL_sig[59]~71_combout\);

-- Location: LCCOMB_X68_Y31_N18
\SU1|SRA_SRL_sig[59]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[59]~72_combout\ = (\SU1|SRA_SRL_sig[59]~71_combout\) # ((!\SU1|SRL64|Equal8~1_combout\ & (\SU1|SRL64|Stage2_sig[59]~106_combout\ & !\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Equal8~1_combout\,
	datab => \SU1|SRL64|Stage2_sig[59]~106_combout\,
	datac => \SU1|SRA_SRL_sig[59]~71_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SU1|SRA_SRL_sig[59]~72_combout\);

-- Location: LCCOMB_X75_Y32_N22
\Y~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~230_combout\ = (\Y~157_combout\ & (!\Y~156_combout\ & ((\SU1|SRA_SRL_sig[59]~72_combout\)))) # (!\Y~157_combout\ & ((\Y~156_combout\) # ((\AU1|Adder|Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~157_combout\,
	datab => \Y~156_combout\,
	datac => \AU1|Adder|Add0~56_combout\,
	datad => \SU1|SRA_SRL_sig[59]~72_combout\,
	combout => \Y~230_combout\);

-- Location: LCCOMB_X69_Y36_N18
\SU1|SLL64|Stage2_sig[27]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[27]~61_combout\ = (\SU1|SRA64|Stage2_sig[52]~66_combout\ & ((\B[0]~input_o\ & ((\SU1|SLL64|Stage1_sig[19]~87_combout\))) # (!\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[20]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRA64|Stage2_sig[52]~66_combout\,
	datac => \SU1|SLL64|Stage1_sig[20]~90_combout\,
	datad => \SU1|SLL64|Stage1_sig[19]~87_combout\,
	combout => \SU1|SLL64|Stage2_sig[27]~61_combout\);

-- Location: LCCOMB_X69_Y34_N12
\SU1|SLL64|Stage1_sig[28]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[28]~101_combout\ = (\SU1|SRL64|Stage1_sig[48]~231_combout\) # (\SU1|SRL64|Stage1_sig[48]~228_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~231_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~228_combout\,
	combout => \SU1|SLL64|Stage1_sig[28]~101_combout\);

-- Location: LCCOMB_X69_Y34_N22
\SU1|SLL64|Stage1_sig[27]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[27]~141_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~178_combout\) # (\SU1|SRL64|Stage1_sig[48]~172_combout\)))) # (!\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[28]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[28]~101_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~178_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~172_combout\,
	combout => \SU1|SLL64|Stage1_sig[27]~141_combout\);

-- Location: LCCOMB_X73_Y36_N26
\SU1|SLL64|Stage1_sig[23]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[23]~100_combout\ = (\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[23]~94_combout\)) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~234_combout\) # (\SU1|SRL64|Stage1_sig[48]~229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[23]~94_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~234_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~229_combout\,
	datad => \B[0]~input_o\,
	combout => \SU1|SLL64|Stage1_sig[23]~100_combout\);

-- Location: LCCOMB_X72_Y36_N8
\SU1|SLL64|Stage2_sig[27]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[27]~60_combout\ = (\SU1|SRL64|Stage2_sig[44]~31_combout\ & ((\SU1|SLL64|Stage1_sig[15]~83_combout\) # ((\SU1|SRA64|Equal5~0_combout\ & \SU1|SLL64|Stage1_sig[23]~100_combout\)))) # (!\SU1|SRL64|Stage2_sig[44]~31_combout\ & 
-- (\SU1|SRA64|Equal5~0_combout\ & (\SU1|SLL64|Stage1_sig[23]~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[44]~31_combout\,
	datab => \SU1|SRA64|Equal5~0_combout\,
	datac => \SU1|SLL64|Stage1_sig[23]~100_combout\,
	datad => \SU1|SLL64|Stage1_sig[15]~83_combout\,
	combout => \SU1|SLL64|Stage2_sig[27]~60_combout\);

-- Location: LCCOMB_X73_Y36_N28
\SU1|SLL64|Stage2_sig[27]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[27]~62_combout\ = (\SU1|SLL64|Stage2_sig[27]~61_combout\) # ((\SU1|SLL64|Stage2_sig[27]~60_combout\) # ((\SU1|SLL64|Stage1_sig[27]~141_combout\ & \SU1|SRA64|Stage2_sig[52]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[27]~61_combout\,
	datab => \SU1|SLL64|Stage1_sig[27]~141_combout\,
	datac => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datad => \SU1|SLL64|Stage2_sig[27]~60_combout\,
	combout => \SU1|SLL64|Stage2_sig[27]~62_combout\);

-- Location: LCCOMB_X73_Y36_N22
\Y~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~231_combout\ = (\Y~230_combout\ & (((\SU1|SLL64|Stage2_sig[27]~62_combout\) # (!\Y~454_combout\)))) # (!\Y~230_combout\ & (\SU1|SLL64|Stage2_sig[11]~98_combout\ & (\Y~454_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[11]~98_combout\,
	datab => \Y~230_combout\,
	datac => \Y~454_combout\,
	datad => \SU1|SLL64|Stage2_sig[27]~62_combout\,
	combout => \Y~231_combout\);

-- Location: LCCOMB_X70_Y34_N10
\Y~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~229_combout\ = (\B[27]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[27]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[27]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y~229_combout\);

-- Location: LCCOMB_X68_Y32_N6
\Y~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~232_combout\ = (\Y~160_combout\ & ((\Y~161_combout\ & ((\Y~229_combout\))) # (!\Y~161_combout\ & (\Y~231_combout\)))) # (!\Y~160_combout\ & (((!\Y~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~231_combout\,
	datab => \Y~229_combout\,
	datac => \Y~160_combout\,
	datad => \Y~161_combout\,
	combout => \Y~232_combout\);

-- Location: LCCOMB_X68_Y31_N20
\Y~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~227_combout\ = (\Y~150_combout\ & ((\Y~151_combout\ & ((\SU1|SRL64|Stage2_sig[43]~109_combout\))) # (!\Y~151_combout\ & (\SU1|SRL64|Stage2_sig[59]~106_combout\)))) # (!\Y~150_combout\ & (\Y~151_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~150_combout\,
	datab => \Y~151_combout\,
	datac => \SU1|SRL64|Stage2_sig[59]~106_combout\,
	datad => \SU1|SRL64|Stage2_sig[43]~109_combout\,
	combout => \Y~227_combout\);

-- Location: LCCOMB_X68_Y31_N22
\Y~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~228_combout\ = (\Y~149_combout\ & ((\Y~227_combout\ & (\SU1|SRA64|Stage2_sig[59]~92_combout\)) # (!\Y~227_combout\ & ((\SU1|X_sig[63]~2_combout\))))) # (!\Y~149_combout\ & (((\Y~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[59]~92_combout\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \Y~149_combout\,
	datad => \Y~227_combout\,
	combout => \Y~228_combout\);

-- Location: LCCOMB_X68_Y32_N0
\Y~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~233_combout\ = (\Y~232_combout\ & ((\Y~154_combout\) # ((\SU1|SRL64|Stage2_sig[27]~112_combout\)))) # (!\Y~232_combout\ & (!\Y~154_combout\ & ((\Y~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~232_combout\,
	datab => \Y~154_combout\,
	datac => \SU1|SRL64|Stage2_sig[27]~112_combout\,
	datad => \Y~228_combout\,
	combout => \Y~233_combout\);

-- Location: LCCOMB_X68_Y30_N30
\Y~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~234_combout\ = (\Y~151_combout\ & (((\SU1|SRL64|Stage2_sig[44]~116_combout\)) # (!\Y~150_combout\))) # (!\Y~151_combout\ & (\Y~150_combout\ & ((\SU1|SRL64|Stage2_sig[60]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~151_combout\,
	datab => \Y~150_combout\,
	datac => \SU1|SRL64|Stage2_sig[44]~116_combout\,
	datad => \SU1|SRL64|Stage2_sig[60]~140_combout\,
	combout => \Y~234_combout\);

-- Location: LCCOMB_X68_Y30_N16
\Y~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~235_combout\ = (\Y~149_combout\ & ((\Y~234_combout\ & (\SU1|SRA64|Stage2_sig[60]~93_combout\)) # (!\Y~234_combout\ & ((\SU1|X_sig[63]~2_combout\))))) # (!\Y~149_combout\ & (((\Y~234_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~149_combout\,
	datab => \SU1|SRA64|Stage2_sig[60]~93_combout\,
	datac => \Y~234_combout\,
	datad => \SU1|X_sig[63]~2_combout\,
	combout => \Y~235_combout\);

-- Location: LCCOMB_X69_Y34_N30
\SU1|SLL64|Stage1_sig[28]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[28]~102_combout\ = (\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[28]~101_combout\)) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~253_combout\) # (\SU1|SRL64|Stage1_sig[48]~257_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[28]~101_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~253_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~257_combout\,
	combout => \SU1|SLL64|Stage1_sig[28]~102_combout\);

-- Location: LCCOMB_X70_Y32_N24
\SU1|SLL64|Stage2_sig[28]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[28]~63_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[20]~91_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[28]~102_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[20]~91_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[28]~102_combout\,
	combout => \SU1|SLL64|Stage2_sig[28]~63_combout\);

-- Location: LCCOMB_X70_Y32_N10
\SU1|SLL64|Stage2_sig[28]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[28]~64_combout\ = (\SU1|SLL64|Stage2_sig[28]~63_combout\) # ((\SU1|SLL64|Stage2_sig[24]~53_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[24]~53_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SLL64|Stage2_sig[28]~63_combout\,
	combout => \SU1|SLL64|Stage2_sig[28]~64_combout\);

-- Location: LCCOMB_X67_Y31_N28
\SU1|SRA_SRL_sig[60]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[60]~73_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\SU1|SRL64|Equal8~1_combout\ & (\SU1|SRA_SRL_sig[48]~4_combout\)) # (!\SU1|SRL64|Equal8~1_combout\ & ((\SU1|SRL64|Stage1_sig[60]~99_combout\))))) # 
-- (!\SU1|SRA64|Stage2_sig[52]~62_combout\ & (((\SU1|SRA_SRL_sig[48]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datab => \SU1|SRL64|Equal8~1_combout\,
	datac => \SU1|SRA_SRL_sig[48]~4_combout\,
	datad => \SU1|SRL64|Stage1_sig[60]~99_combout\,
	combout => \SU1|SRA_SRL_sig[60]~73_combout\);

-- Location: LCCOMB_X75_Y31_N2
\Y~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~237_combout\ = (\Y~157_combout\ & (\SU1|SRA_SRL_sig[60]~73_combout\ & ((!\Y~156_combout\)))) # (!\Y~157_combout\ & (((\AU1|Adder|Add0~58_combout\) # (\Y~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~157_combout\,
	datab => \SU1|SRA_SRL_sig[60]~73_combout\,
	datac => \AU1|Adder|Add0~58_combout\,
	datad => \Y~156_combout\,
	combout => \Y~237_combout\);

-- Location: LCCOMB_X72_Y32_N8
\Y~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~238_combout\ = (\Y~454_combout\ & ((\Y~237_combout\ & ((\SU1|SLL64|Stage2_sig[28]~64_combout\))) # (!\Y~237_combout\ & (\SU1|SLL64|Stage2_sig[12]~23_combout\)))) # (!\Y~454_combout\ & (((\Y~237_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[12]~23_combout\,
	datab => \SU1|SLL64|Stage2_sig[28]~64_combout\,
	datac => \Y~454_combout\,
	datad => \Y~237_combout\,
	combout => \Y~238_combout\);

-- Location: LCCOMB_X70_Y37_N12
\Y~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~236_combout\ = (\B[28]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[28]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[28]~input_o\,
	combout => \Y~236_combout\);

-- Location: LCCOMB_X68_Y32_N18
\Y~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~239_combout\ = (\Y~161_combout\ & (((\Y~160_combout\ & \Y~236_combout\)))) # (!\Y~161_combout\ & ((\Y~238_combout\) # ((!\Y~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~238_combout\,
	datab => \Y~161_combout\,
	datac => \Y~160_combout\,
	datad => \Y~236_combout\,
	combout => \Y~239_combout\);

-- Location: LCCOMB_X68_Y30_N2
\Y~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~240_combout\ = (\Y~239_combout\ & ((\SU1|SRL64|Stage2_sig[28]~118_combout\) # ((\Y~154_combout\)))) # (!\Y~239_combout\ & (((\Y~235_combout\ & !\Y~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[28]~118_combout\,
	datab => \Y~235_combout\,
	datac => \Y~239_combout\,
	datad => \Y~154_combout\,
	combout => \Y~240_combout\);

-- Location: LCCOMB_X73_Y31_N22
\Y~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~243_combout\ = (\B[29]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[29]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[29]~input_o\ & (\A[29]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Y~243_combout\);

-- Location: LCCOMB_X74_Y30_N10
\SU1|SRA_SRL_sig[61]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[61]~74_combout\ = (\SU1|SRA_SRL_sig[48]~41_combout\) # ((\ShiftFN[0]~input_o\ & (\SU1|SRA64|Stage2_sig[61]~94_combout\ & !\SU1|SRL64|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SU1|SRA_SRL_sig[48]~41_combout\,
	datac => \SU1|SRA64|Stage2_sig[61]~94_combout\,
	datad => \SU1|SRL64|Equal8~1_combout\,
	combout => \SU1|SRA_SRL_sig[61]~74_combout\);

-- Location: LCCOMB_X74_Y30_N12
\SU1|SRA_SRL_sig[61]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[61]~75_combout\ = (\SU1|SRA_SRL_sig[61]~74_combout\) # ((!\ShiftFN[0]~input_o\ & (!\SU1|SRL64|Equal8~1_combout\ & \SU1|SRL64|Stage2_sig[61]~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SU1|SRL64|Equal8~1_combout\,
	datac => \SU1|SRL64|Stage2_sig[61]~119_combout\,
	datad => \SU1|SRA_SRL_sig[61]~74_combout\,
	combout => \SU1|SRA_SRL_sig[61]~75_combout\);

-- Location: LCCOMB_X74_Y31_N16
\Y~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~244_combout\ = (\Y~156_combout\ & (((!\Y~157_combout\)))) # (!\Y~156_combout\ & ((\Y~157_combout\ & ((\SU1|SRA_SRL_sig[61]~75_combout\))) # (!\Y~157_combout\ & (\AU1|Adder|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~156_combout\,
	datab => \AU1|Adder|Add0~60_combout\,
	datac => \Y~157_combout\,
	datad => \SU1|SRA_SRL_sig[61]~75_combout\,
	combout => \Y~244_combout\);

-- Location: LCCOMB_X66_Y35_N4
\SU1|SLL64|Stage1_sig[30]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[30]~103_combout\ = (\SU1|SRL64|Stage1_sig[48]~170_combout\) # (\SU1|SRL64|Stage1_sig[48]~182_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~170_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~182_combout\,
	combout => \SU1|SLL64|Stage1_sig[30]~103_combout\);

-- Location: LCCOMB_X65_Y35_N30
\SU1|SLL64|Stage1_sig[29]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[29]~104_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~253_combout\) # (\SU1|SRL64|Stage1_sig[48]~257_combout\)))) # (!\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[30]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[30]~103_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~253_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~257_combout\,
	combout => \SU1|SLL64|Stage1_sig[29]~104_combout\);

-- Location: LCCOMB_X72_Y34_N26
\SU1|SLL64|Stage2_sig[29]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[29]~65_combout\ = (\B[2]~input_o\ & (((\B[3]~input_o\)))) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[21]~93_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[29]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[29]~104_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[21]~93_combout\,
	combout => \SU1|SLL64|Stage2_sig[29]~65_combout\);

-- Location: LCCOMB_X72_Y34_N28
\SU1|SLL64|Stage2_sig[29]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[29]~66_combout\ = (\B[2]~input_o\ & ((\SU1|SLL64|Stage2_sig[29]~65_combout\ & (\SU1|SLL64|Stage1_sig[17]~86_combout\)) # (!\SU1|SLL64|Stage2_sig[29]~65_combout\ & ((\SU1|SLL64|Stage1_sig[25]~98_combout\))))) # (!\B[2]~input_o\ & 
-- (((\SU1|SLL64|Stage2_sig[29]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[17]~86_combout\,
	datac => \SU1|SLL64|Stage2_sig[29]~65_combout\,
	datad => \SU1|SLL64|Stage1_sig[25]~98_combout\,
	combout => \SU1|SLL64|Stage2_sig[29]~66_combout\);

-- Location: LCCOMB_X74_Y31_N2
\Y~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~245_combout\ = (\Y~454_combout\ & ((\Y~244_combout\ & (\SU1|SLL64|Stage2_sig[29]~66_combout\)) # (!\Y~244_combout\ & ((\SU1|SLL64|Stage2_sig[13]~26_combout\))))) # (!\Y~454_combout\ & (\Y~244_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~454_combout\,
	datab => \Y~244_combout\,
	datac => \SU1|SLL64|Stage2_sig[29]~66_combout\,
	datad => \SU1|SLL64|Stage2_sig[13]~26_combout\,
	combout => \Y~245_combout\);

-- Location: LCCOMB_X73_Y31_N8
\Y~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~246_combout\ = (\Y~161_combout\ & (\Y~243_combout\ & (\Y~160_combout\))) # (!\Y~161_combout\ & (((\Y~245_combout\) # (!\Y~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~243_combout\,
	datab => \Y~161_combout\,
	datac => \Y~160_combout\,
	datad => \Y~245_combout\,
	combout => \Y~246_combout\);

-- Location: LCCOMB_X67_Y30_N12
\Y~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~241_combout\ = (\Y~151_combout\ & (((\SU1|SRL64|Stage2_sig[45]~122_combout\)) # (!\Y~150_combout\))) # (!\Y~151_combout\ & (\Y~150_combout\ & ((\SU1|SRL64|Stage2_sig[61]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~151_combout\,
	datab => \Y~150_combout\,
	datac => \SU1|SRL64|Stage2_sig[45]~122_combout\,
	datad => \SU1|SRL64|Stage2_sig[61]~119_combout\,
	combout => \Y~241_combout\);

-- Location: LCCOMB_X67_Y30_N22
\Y~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~242_combout\ = (\Y~241_combout\ & (((\SU1|SRA64|Stage2_sig[61]~94_combout\) # (!\Y~149_combout\)))) # (!\Y~241_combout\ & (\SU1|X_sig[63]~2_combout\ & (\Y~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~241_combout\,
	datab => \SU1|X_sig[63]~2_combout\,
	datac => \Y~149_combout\,
	datad => \SU1|SRA64|Stage2_sig[61]~94_combout\,
	combout => \Y~242_combout\);

-- Location: LCCOMB_X70_Y28_N22
\Y~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~247_combout\ = (\Y~246_combout\ & ((\Y~154_combout\) # ((\SU1|SRL64|Stage2_sig[29]~124_combout\)))) # (!\Y~246_combout\ & (!\Y~154_combout\ & ((\Y~242_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~246_combout\,
	datab => \Y~154_combout\,
	datac => \SU1|SRL64|Stage2_sig[29]~124_combout\,
	datad => \Y~242_combout\,
	combout => \Y~247_combout\);

-- Location: LCCOMB_X66_Y35_N14
\SU1|SLL64|Stage1_sig[31]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[31]~105_combout\ = (\SU1|SRL64|Stage1_sig[48]~167_combout\) # (\SU1|SRL64|Stage1_sig[48]~179_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~167_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~179_combout\,
	combout => \SU1|SLL64|Stage1_sig[31]~105_combout\);

-- Location: LCCOMB_X66_Y35_N12
\SU1|SLL64|Stage1_sig[30]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[30]~142_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~170_combout\) # ((\SU1|SRL64|Stage1_sig[48]~182_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[31]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~170_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[31]~105_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~182_combout\,
	combout => \SU1|SLL64|Stage1_sig[30]~142_combout\);

-- Location: LCCOMB_X73_Y35_N22
\SU1|SLL64|Stage2_sig[30]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[30]~67_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[22]~139_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[30]~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[30]~142_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[22]~139_combout\,
	combout => \SU1|SLL64|Stage2_sig[30]~67_combout\);

-- Location: LCCOMB_X73_Y35_N8
\SU1|SLL64|Stage2_sig[30]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[30]~68_combout\ = (\SU1|SLL64|Stage2_sig[30]~67_combout\) # ((\B[2]~input_o\ & \SU1|SLL64|Stage2_sig[26]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[30]~67_combout\,
	datab => \B[2]~input_o\,
	datad => \SU1|SLL64|Stage2_sig[26]~58_combout\,
	combout => \SU1|SLL64|Stage2_sig[30]~68_combout\);

-- Location: LCCOMB_X69_Y32_N8
\SU1|SRA_SRL_sig[62]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[62]~76_combout\ = (!\SU1|SRL64|Equal8~1_combout\ & ((\ShiftFN[0]~input_o\ & (\SU1|SRA64|Stage2_sig[62]~81_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SU1|SRL64|Stage2_sig[62]~141_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SU1|SRA64|Stage2_sig[62]~81_combout\,
	datac => \SU1|SRL64|Stage2_sig[62]~141_combout\,
	datad => \SU1|SRL64|Equal8~1_combout\,
	combout => \SU1|SRA_SRL_sig[62]~76_combout\);

-- Location: LCCOMB_X74_Y30_N14
\SU1|SRA_SRL_sig[62]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[62]~77_combout\ = (\SU1|SRA_SRL_sig[62]~76_combout\) # (\SU1|SRA_SRL_sig[48]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRA_SRL_sig[62]~76_combout\,
	datad => \SU1|SRA_SRL_sig[48]~41_combout\,
	combout => \SU1|SRA_SRL_sig[62]~77_combout\);

-- Location: LCCOMB_X74_Y31_N12
\Y~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~251_combout\ = (\Y~157_combout\ & (\SU1|SRA_SRL_sig[62]~77_combout\ & (!\Y~156_combout\))) # (!\Y~157_combout\ & (((\Y~156_combout\) # (\AU1|Adder|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[62]~77_combout\,
	datab => \Y~157_combout\,
	datac => \Y~156_combout\,
	datad => \AU1|Adder|Add0~62_combout\,
	combout => \Y~251_combout\);

-- Location: LCCOMB_X73_Y35_N10
\Y~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~252_combout\ = (\Y~251_combout\ & ((\SU1|SLL64|Stage2_sig[30]~68_combout\) # ((!\Y~454_combout\)))) # (!\Y~251_combout\ & (((\Y~454_combout\ & \SU1|SLL64|Stage2_sig[14]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[30]~68_combout\,
	datab => \Y~251_combout\,
	datac => \Y~454_combout\,
	datad => \SU1|SLL64|Stage2_sig[14]~28_combout\,
	combout => \Y~252_combout\);

-- Location: LCCOMB_X73_Y35_N20
\Y~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~250_combout\ = (\B[30]~input_o\ & ((\A[30]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[30]~input_o\,
	combout => \Y~250_combout\);

-- Location: LCCOMB_X74_Y32_N22
\Y~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~253_combout\ = (\Y~161_combout\ & (((\Y~160_combout\ & \Y~250_combout\)))) # (!\Y~161_combout\ & ((\Y~252_combout\) # ((!\Y~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~252_combout\,
	datab => \Y~161_combout\,
	datac => \Y~160_combout\,
	datad => \Y~250_combout\,
	combout => \Y~253_combout\);

-- Location: LCCOMB_X69_Y32_N12
\Y~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~248_combout\ = (\Y~150_combout\ & ((\Y~151_combout\ & ((\SU1|SRL64|Stage2_sig[46]~127_combout\))) # (!\Y~151_combout\ & (\SU1|SRL64|Stage2_sig[62]~141_combout\)))) # (!\Y~150_combout\ & (((\Y~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[62]~141_combout\,
	datab => \Y~150_combout\,
	datac => \Y~151_combout\,
	datad => \SU1|SRL64|Stage2_sig[46]~127_combout\,
	combout => \Y~248_combout\);

-- Location: LCCOMB_X69_Y32_N6
\Y~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~249_combout\ = (\Y~248_combout\ & (((\SU1|SRA64|Stage2_sig[62]~81_combout\)) # (!\Y~149_combout\))) # (!\Y~248_combout\ & (\Y~149_combout\ & ((\SU1|X_sig[63]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~248_combout\,
	datab => \Y~149_combout\,
	datac => \SU1|SRA64|Stage2_sig[62]~81_combout\,
	datad => \SU1|X_sig[63]~2_combout\,
	combout => \Y~249_combout\);

-- Location: LCCOMB_X69_Y32_N26
\Y~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~254_combout\ = (\Y~154_combout\ & (\Y~253_combout\)) # (!\Y~154_combout\ & ((\Y~253_combout\ & (\SU1|SRL64|Stage2_sig[30]~129_combout\)) # (!\Y~253_combout\ & ((\Y~249_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~154_combout\,
	datab => \Y~253_combout\,
	datac => \SU1|SRL64|Stage2_sig[30]~129_combout\,
	datad => \Y~249_combout\,
	combout => \Y~254_combout\);

-- Location: LCCOMB_X76_Y36_N6
\SU1|SRL64|Stage2_sig[63]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage2_sig[63]~134_combout\ = (!\B[0]~input_o\ & (!\B[2]~input_o\ & (!\B[1]~input_o\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SU1|SRL64|Stage2_sig[63]~134_combout\);

-- Location: LCCOMB_X74_Y29_N24
\SU1|SRA_SRL_sig[47]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRA_SRL_sig[47]~78_combout\ = (\SU1|X_sig[63]~2_combout\ & ((\ShiftFN[0]~input_o\) # ((!\SU1|SRL64|Equal8~1_combout\ & \SU1|SRL64|Stage2_sig[63]~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|X_sig[63]~2_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SU1|SRL64|Equal8~1_combout\,
	datad => \SU1|SRL64|Stage2_sig[63]~134_combout\,
	combout => \SU1|SRA_SRL_sig[47]~78_combout\);

-- Location: LCCOMB_X69_Y32_N28
\Y~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~255_combout\ = (\SU1|ShiftCount\(5) & (\SU1|SRL64|Stage2_sig[63]~143_combout\ & (!\B[4]~input_o\ & !\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|ShiftCount\(5),
	datab => \SU1|SRL64|Stage2_sig[63]~143_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~255_combout\);

-- Location: LCCOMB_X74_Y29_N28
\Y~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~256_combout\ = (\Y~255_combout\) # ((\SU1|SRL64|Equal8~0_combout\ & (\SU1|SRL64|Stage2_sig[47]~131_combout\)) # (!\SU1|SRL64|Equal8~0_combout\ & ((\SU1|SRA_SRL_sig[48]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage2_sig[47]~131_combout\,
	datab => \Y~255_combout\,
	datac => \SU1|SRL64|Equal8~0_combout\,
	datad => \SU1|SRA_SRL_sig[48]~4_combout\,
	combout => \Y~256_combout\);

-- Location: LCCOMB_X74_Y29_N22
\Y~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~257_combout\ = (!\ExtWord~input_o\ & ((\SU1|SRL64|Equal8~1_combout\ & ((\Y~256_combout\))) # (!\SU1|SRL64|Equal8~1_combout\ & (\SU1|SRL64|Stage2_sig[31]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SU1|SRL64|Stage2_sig[31]~133_combout\,
	datac => \SU1|SRL64|Equal8~1_combout\,
	datad => \Y~256_combout\,
	combout => \Y~257_combout\);

-- Location: LCCOMB_X74_Y29_N2
\Y~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~258_combout\ = (\ShiftFN[1]~input_o\ & ((\Y~257_combout\) # ((\ExtWord~input_o\ & \SU1|SRA_SRL_sig[47]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SU1|SRA_SRL_sig[47]~78_combout\,
	datac => \Y~257_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~258_combout\);

-- Location: LCCOMB_X81_Y29_N4
\LU1|Y[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LU1|Y[31]~2_combout\ = (\B[31]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[31]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[31]~input_o\ & (\A[31]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \LU1|Y[31]~2_combout\);

-- Location: LCCOMB_X66_Y35_N24
\SU1|SLL64|Stage1_sig[31]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[31]~106_combout\ = (\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[31]~105_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~226_combout\) # ((\SU1|SRL64|Stage1_sig[48]~232_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~226_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[31]~105_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~232_combout\,
	combout => \SU1|SLL64|Stage1_sig[31]~106_combout\);

-- Location: LCCOMB_X74_Y36_N8
\SU1|SLL64|Stage2_sig[31]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[31]~69_combout\ = (\B[3]~input_o\ & (((\SU1|SLL64|Stage1_sig[23]~100_combout\) # (\B[2]~input_o\)))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[31]~106_combout\ & ((!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[31]~106_combout\,
	datab => \B[3]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[23]~100_combout\,
	datad => \B[2]~input_o\,
	combout => \SU1|SLL64|Stage2_sig[31]~69_combout\);

-- Location: LCCOMB_X74_Y36_N2
\SU1|SLL64|Stage2_sig[31]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[31]~70_combout\ = (\SU1|SLL64|Stage2_sig[31]~69_combout\ & ((\SU1|SLL64|Stage1_sig[19]~89_combout\) # ((!\B[2]~input_o\)))) # (!\SU1|SLL64|Stage2_sig[31]~69_combout\ & (((\SU1|SLL64|Stage1_sig[27]~141_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[19]~89_combout\,
	datab => \SU1|SLL64|Stage1_sig[27]~141_combout\,
	datac => \SU1|SLL64|Stage2_sig[31]~69_combout\,
	datad => \B[2]~input_o\,
	combout => \SU1|SLL64|Stage2_sig[31]~70_combout\);

-- Location: LCCOMB_X75_Y35_N18
\SU1|SgnExtLower_sig[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SgnExtLower_sig[31]~0_combout\ = (\SU1|SRL64|Equal8~1_combout\ & (\SU1|SRL64|Equal8~0_combout\ & (\SU1|SLL64|Stage2_sig[15]~30_combout\))) # (!\SU1|SRL64|Equal8~1_combout\ & ((\SU1|SLL64|Stage2_sig[31]~70_combout\) # ((\SU1|SRL64|Equal8~0_combout\ & 
-- \SU1|SLL64|Stage2_sig[15]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Equal8~1_combout\,
	datab => \SU1|SRL64|Equal8~0_combout\,
	datac => \SU1|SLL64|Stage2_sig[15]~30_combout\,
	datad => \SU1|SLL64|Stage2_sig[31]~70_combout\,
	combout => \SU1|SgnExtLower_sig[31]~0_combout\);

-- Location: LCCOMB_X74_Y31_N22
\SU1|SgnExtUpper_sig[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SgnExtUpper_sig[0]~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SU1|SgnExtLower_sig[31]~0_combout\))) # (!\ShiftFN[0]~input_o\ & (\AU1|Adder|Add0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~64_combout\,
	datab => \SU1|SgnExtLower_sig[31]~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \SU1|SgnExtUpper_sig[0]~2_combout\);

-- Location: LCCOMB_X81_Y29_N22
\Y~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~259_combout\ = (\FuncClass[0]~input_o\ & (((\LU1|Y[31]~2_combout\)))) # (!\FuncClass[0]~input_o\ & ((\Y~258_combout\) # ((\SU1|SgnExtUpper_sig[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~258_combout\,
	datab => \LU1|Y[31]~2_combout\,
	datac => \SU1|SgnExtUpper_sig[0]~2_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Y~259_combout\);

-- Location: LCCOMB_X81_Y29_N8
\Y~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~260_combout\ = (\Y~259_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~259_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Y~260_combout\);

-- Location: LCCOMB_X65_Y35_N8
\SU1|SLL64|Stage1_sig[33]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[33]~107_combout\ = (\SU1|SRL64|Stage1_sig[48]~256_combout\) # (\SU1|SRL64|Stage1_sig[48]~125_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~256_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~125_combout\,
	combout => \SU1|SLL64|Stage1_sig[33]~107_combout\);

-- Location: LCCOMB_X66_Y35_N26
\SU1|SLL64|Stage1_sig[32]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[32]~108_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~232_combout\) # ((\SU1|SRL64|Stage1_sig[48]~226_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[33]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~232_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~226_combout\,
	datad => \SU1|SLL64|Stage1_sig[33]~107_combout\,
	combout => \SU1|SLL64|Stage1_sig[32]~108_combout\);

-- Location: LCCOMB_X70_Y32_N14
\SU1|SLL64|Y[32]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[32]~17_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SU1|SLL64|Stage1_sig[28]~102_combout\))) # (!\B[2]~input_o\ & (\SU1|SLL64|Stage1_sig[32]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[32]~108_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[28]~102_combout\,
	combout => \SU1|SLL64|Y[32]~17_combout\);

-- Location: LCCOMB_X70_Y32_N12
\SU1|SLL64|Y[32]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[32]~16_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\SU1|SLL64|Stage1_sig[20]~91_combout\)) # (!\B[2]~input_o\ & ((\SU1|SLL64|Stage1_sig[24]~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[20]~91_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[24]~96_combout\,
	combout => \SU1|SLL64|Y[32]~16_combout\);

-- Location: LCCOMB_X70_Y32_N16
\SU1|SLL64|Y[32]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[32]~18_combout\ = (\SU1|ShiftCount\(5) & (\SU1|SLL64|Y[32]~59_combout\)) # (!\SU1|ShiftCount\(5) & (((\SU1|SLL64|Y[32]~17_combout\) # (\SU1|SLL64|Y[32]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[32]~59_combout\,
	datab => \SU1|ShiftCount\(5),
	datac => \SU1|SLL64|Y[32]~17_combout\,
	datad => \SU1|SLL64|Y[32]~16_combout\,
	combout => \SU1|SLL64|Y[32]~18_combout\);

-- Location: LCCOMB_X69_Y32_N22
\Y~455\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~455_combout\ = (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & ((!\B[4]~input_o\) # (!\SU1|ShiftCount\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|ShiftCount\(5),
	datab => \ShiftFN[1]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~455_combout\);

-- Location: LCCOMB_X72_Y31_N20
\Y~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~261_combout\ = (\ShiftFN[1]~input_o\) # ((\ShiftFN[0]~input_o\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~261_combout\);

-- Location: LCCOMB_X72_Y31_N14
\Y~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~262_combout\ = (\Y~261_combout\ & (\SU1|SRA_SRL_sig[32]~6_combout\ & ((!\Y~156_combout\)))) # (!\Y~261_combout\ & (((\AU1|Adder|Add0~66_combout\) # (\Y~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[32]~6_combout\,
	datab => \Y~261_combout\,
	datac => \AU1|Adder|Add0~66_combout\,
	datad => \Y~156_combout\,
	combout => \Y~262_combout\);

-- Location: LCCOMB_X73_Y31_N10
\Y~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~263_combout\ = (\Y~455_combout\ & ((\Y~262_combout\ & (\SU1|SLL64|Y[32]~18_combout\)) # (!\Y~262_combout\ & ((\SU1|SLL64|Stage2_sig[16]~32_combout\))))) # (!\Y~455_combout\ & (((\Y~262_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[32]~18_combout\,
	datab => \Y~455_combout\,
	datac => \SU1|SLL64|Stage2_sig[16]~32_combout\,
	datad => \Y~262_combout\,
	combout => \Y~263_combout\);

-- Location: LCCOMB_X74_Y29_N26
\SU1|SgnExtUpper_sig[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SgnExtUpper_sig[0]~4_combout\ = (\SU1|SgnExtUpper_sig[0]~2_combout\) # ((\ShiftFN[1]~input_o\ & \SU1|SRA_SRL_sig[47]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \SU1|SRA_SRL_sig[47]~78_combout\,
	datad => \SU1|SgnExtUpper_sig[0]~2_combout\,
	combout => \SU1|SgnExtUpper_sig[0]~4_combout\);

-- Location: LCCOMB_X73_Y30_N0
\Y~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~264_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & ((\SU1|SgnExtUpper_sig[0]~4_combout\))) # (!\ExtWord~input_o\ & (\Y~263_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y~263_combout\,
	datac => \SU1|SgnExtUpper_sig[0]~4_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Y~264_combout\);

-- Location: LCCOMB_X73_Y30_N2
\Y~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~265_combout\ = (\B[32]~input_o\ & ((\A[32]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[32]~input_o\ & (\A[32]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[32]~input_o\,
	combout => \Y~265_combout\);

-- Location: LCCOMB_X73_Y30_N20
\Y~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~266_combout\ = (!\FuncClass[1]~input_o\ & ((\Y~264_combout\) # ((\FuncClass[0]~input_o\ & \Y~265_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y~264_combout\,
	datac => \Y~265_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~266_combout\);

-- Location: LCCOMB_X72_Y31_N0
\Y~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~270_combout\ = (\Y~156_combout\ & (!\Y~261_combout\)) # (!\Y~156_combout\ & ((\Y~261_combout\ & (\SU1|SRA_SRL_sig[33]~11_combout\)) # (!\Y~261_combout\ & ((\AU1|Adder|Add0~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~156_combout\,
	datab => \Y~261_combout\,
	datac => \SU1|SRA_SRL_sig[33]~11_combout\,
	datad => \AU1|Adder|Add0~68_combout\,
	combout => \Y~270_combout\);

-- Location: LCCOMB_X72_Y34_N14
\SU1|SLL64|Y[33]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[33]~19_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\SU1|SLL64|Stage1_sig[21]~93_combout\)) # (!\B[2]~input_o\ & ((\SU1|SLL64|Stage1_sig[25]~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[21]~93_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[25]~98_combout\,
	combout => \SU1|SLL64|Y[33]~19_combout\);

-- Location: LCCOMB_X65_Y35_N10
\SU1|SLL64|Stage1_sig[34]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[34]~109_combout\ = (\SU1|SRL64|Stage1_sig[48]~128_combout\) # (\SU1|SRL64|Stage1_sig[48]~169_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~128_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~169_combout\,
	combout => \SU1|SLL64|Stage1_sig[34]~109_combout\);

-- Location: LCCOMB_X65_Y35_N4
\SU1|SLL64|Stage1_sig[33]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[33]~143_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~256_combout\) # (\SU1|SRL64|Stage1_sig[48]~125_combout\)))) # (!\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[34]~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[34]~109_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~256_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~125_combout\,
	combout => \SU1|SLL64|Stage1_sig[33]~143_combout\);

-- Location: LCCOMB_X72_Y34_N0
\SU1|SLL64|Y[33]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[33]~20_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SU1|SLL64|Stage1_sig[29]~104_combout\))) # (!\B[2]~input_o\ & (\SU1|SLL64|Stage1_sig[33]~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[33]~143_combout\,
	datab => \B[3]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[29]~104_combout\,
	datad => \B[2]~input_o\,
	combout => \SU1|SLL64|Y[33]~20_combout\);

-- Location: LCCOMB_X72_Y34_N10
\SU1|SLL64|Y[33]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[33]~21_combout\ = (\SU1|ShiftCount\(5) & (\SU1|SLL64|Stage2_sig[1]~93_combout\)) # (!\SU1|ShiftCount\(5) & (((\SU1|SLL64|Y[33]~19_combout\) # (\SU1|SLL64|Y[33]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|ShiftCount\(5),
	datab => \SU1|SLL64|Stage2_sig[1]~93_combout\,
	datac => \SU1|SLL64|Y[33]~19_combout\,
	datad => \SU1|SLL64|Y[33]~20_combout\,
	combout => \SU1|SLL64|Y[33]~21_combout\);

-- Location: LCCOMB_X72_Y34_N4
\Y~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~271_combout\ = (\Y~455_combout\ & ((\Y~270_combout\ & ((\SU1|SLL64|Y[33]~21_combout\))) # (!\Y~270_combout\ & (\SU1|SLL64|Stage2_sig[17]~35_combout\)))) # (!\Y~455_combout\ & (((\Y~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[17]~35_combout\,
	datab => \Y~455_combout\,
	datac => \Y~270_combout\,
	datad => \SU1|SLL64|Y[33]~21_combout\,
	combout => \Y~271_combout\);

-- Location: LCCOMB_X74_Y29_N20
\SU1|SgnExtUpper_sig[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SgnExtUpper_sig[0]~3_combout\ = (\ShiftFN[1]~input_o\ & \SU1|SRA_SRL_sig[47]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datad => \SU1|SRA_SRL_sig[47]~78_combout\,
	combout => \SU1|SgnExtUpper_sig[0]~3_combout\);

-- Location: LCCOMB_X74_Y29_N14
\Y~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~267_combout\ = (\ExtWord~input_o\ & (\Y~10_combout\ & ((\SU1|SgnExtUpper_sig[0]~3_combout\) # (\SU1|SgnExtUpper_sig[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SU1|SgnExtUpper_sig[0]~3_combout\,
	datac => \Y~10_combout\,
	datad => \SU1|SgnExtUpper_sig[0]~2_combout\,
	combout => \Y~267_combout\);

-- Location: LCCOMB_X76_Y35_N10
\Y~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~268_combout\ = (\B[33]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[33]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[33]~input_o\ & (\A[33]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[33]~input_o\,
	datad => \B[33]~input_o\,
	combout => \Y~268_combout\);

-- Location: LCCOMB_X80_Y35_N8
\Y~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~269_combout\ = (\Y~268_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~268_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~269_combout\);

-- Location: LCCOMB_X80_Y35_N18
\Y~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~272_combout\ = (!\FuncClass[0]~input_o\ & (!\ExtWord~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~272_combout\);

-- Location: LCCOMB_X80_Y35_N20
\Y~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~273_combout\ = (\Y~267_combout\) # ((\Y~269_combout\) # ((\Y~271_combout\ & \Y~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~271_combout\,
	datab => \Y~267_combout\,
	datac => \Y~269_combout\,
	datad => \Y~272_combout\,
	combout => \Y~273_combout\);

-- Location: LCCOMB_X77_Y31_N12
\Y~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~274_combout\ = (\B[34]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[34]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[34]~input_o\ & (\A[34]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[34]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[34]~input_o\,
	combout => \Y~274_combout\);

-- Location: LCCOMB_X80_Y35_N30
\Y~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~275_combout\ = (\Y~274_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~274_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~275_combout\);

-- Location: LCCOMB_X66_Y35_N28
\SU1|SLL64|Stage1_sig[35]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[35]~110_combout\ = (\SU1|SRL64|Stage1_sig[48]~155_combout\) # (\SU1|SRL64|Stage1_sig[48]~166_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~155_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~166_combout\,
	combout => \SU1|SLL64|Stage1_sig[35]~110_combout\);

-- Location: LCCOMB_X66_Y35_N6
\SU1|SLL64|Stage1_sig[34]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[34]~144_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~169_combout\) # ((\SU1|SRL64|Stage1_sig[48]~128_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[35]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~169_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~128_combout\,
	datad => \SU1|SLL64|Stage1_sig[35]~110_combout\,
	combout => \SU1|SLL64|Stage1_sig[34]~144_combout\);

-- Location: LCCOMB_X70_Y35_N12
\SU1|SLL64|Y[42]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[42]~23_combout\ = (\B[2]~input_o\ & (\SU1|SLL64|Stage1_sig[30]~142_combout\)) # (!\B[2]~input_o\ & ((\SU1|SLL64|Stage1_sig[34]~144_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[30]~142_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[34]~144_combout\,
	combout => \SU1|SLL64|Y[42]~23_combout\);

-- Location: LCCOMB_X70_Y35_N10
\SU1|SLL64|Y[34]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[34]~22_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SU1|SLL64|Stage1_sig[22]~139_combout\))) # (!\B[2]~input_o\ & (\SU1|SLL64|Stage1_sig[26]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[26]~140_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[22]~139_combout\,
	combout => \SU1|SLL64|Y[34]~22_combout\);

-- Location: LCCOMB_X70_Y35_N22
\SU1|SLL64|Y[34]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[34]~24_combout\ = (!\SU1|ShiftCount\(5) & ((\SU1|SLL64|Y[34]~22_combout\) # ((\SU1|SLL64|Y[42]~23_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|ShiftCount\(5),
	datab => \SU1|SLL64|Y[42]~23_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Y[34]~22_combout\,
	combout => \SU1|SLL64|Y[34]~24_combout\);

-- Location: LCCOMB_X74_Y35_N12
\SU1|SLL64|Y[34]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[34]~25_combout\ = (\SU1|SLL64|Y[34]~24_combout\) # ((\SU1|SRA64|Stage2_sig[52]~62_combout\ & (\SU1|ShiftCount\(5) & \SU1|SLL64|Stage1_sig[2]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datab => \SU1|SLL64|Y[34]~24_combout\,
	datac => \SU1|ShiftCount\(5),
	datad => \SU1|SLL64|Stage1_sig[2]~64_combout\,
	combout => \SU1|SLL64|Y[34]~25_combout\);

-- Location: LCCOMB_X72_Y31_N26
\Y~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~276_combout\ = (\Y~156_combout\ & (!\Y~261_combout\)) # (!\Y~156_combout\ & ((\Y~261_combout\ & ((\SU1|SRA_SRL_sig[34]~13_combout\))) # (!\Y~261_combout\ & (\AU1|Adder|Add0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~156_combout\,
	datab => \Y~261_combout\,
	datac => \AU1|Adder|Add0~70_combout\,
	datad => \SU1|SRA_SRL_sig[34]~13_combout\,
	combout => \Y~276_combout\);

-- Location: LCCOMB_X74_Y35_N30
\Y~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~277_combout\ = (\Y~276_combout\ & ((\SU1|SLL64|Y[34]~25_combout\) # ((!\Y~455_combout\)))) # (!\Y~276_combout\ & (((\Y~455_combout\ & \SU1|SLL64|Stage2_sig[18]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[34]~25_combout\,
	datab => \Y~276_combout\,
	datac => \Y~455_combout\,
	datad => \SU1|SLL64|Stage2_sig[18]~38_combout\,
	combout => \Y~277_combout\);

-- Location: LCCOMB_X80_Y35_N16
\Y~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~278_combout\ = (\Y~275_combout\) # ((\Y~267_combout\) # ((\Y~277_combout\ & \Y~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \Y~267_combout\,
	datac => \Y~277_combout\,
	datad => \Y~272_combout\,
	combout => \Y~278_combout\);

-- Location: LCCOMB_X75_Y35_N12
\Y~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~279_combout\ = (\B[35]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[35]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[35]~input_o\ & (\A[35]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[35]~input_o\,
	datad => \A[35]~input_o\,
	combout => \Y~279_combout\);

-- Location: LCCOMB_X80_Y35_N2
\Y~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~280_combout\ = (\Y~279_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~279_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~280_combout\);

-- Location: LCCOMB_X72_Y31_N28
\Y~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~281_combout\ = (\Y~156_combout\ & (!\Y~261_combout\)) # (!\Y~156_combout\ & ((\Y~261_combout\ & (\SU1|SRA_SRL_sig[35]~15_combout\)) # (!\Y~261_combout\ & ((\AU1|Adder|Add0~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~156_combout\,
	datab => \Y~261_combout\,
	datac => \SU1|SRA_SRL_sig[35]~15_combout\,
	datad => \AU1|Adder|Add0~72_combout\,
	combout => \Y~281_combout\);

-- Location: LCCOMB_X66_Y35_N30
\SU1|SLL64|Stage1_sig[35]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[35]~111_combout\ = (\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[35]~110_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~225_combout\) # ((\SU1|SRL64|Stage1_sig[48]~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~225_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~211_combout\,
	datad => \SU1|SLL64|Stage1_sig[35]~110_combout\,
	combout => \SU1|SLL64|Stage1_sig[35]~111_combout\);

-- Location: LCCOMB_X74_Y36_N30
\SU1|SLL64|Y[35]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[35]~27_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SU1|SLL64|Stage1_sig[31]~106_combout\))) # (!\B[2]~input_o\ & (\SU1|SLL64|Stage1_sig[35]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[35]~111_combout\,
	datac => \SU1|SLL64|Stage1_sig[31]~106_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SLL64|Y[35]~27_combout\);

-- Location: LCCOMB_X74_Y36_N12
\SU1|SLL64|Y[35]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[35]~26_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SU1|SLL64|Stage1_sig[23]~100_combout\))) # (!\B[2]~input_o\ & (\SU1|SLL64|Stage1_sig[27]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[27]~141_combout\,
	datac => \SU1|SLL64|Stage1_sig[23]~100_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SLL64|Y[35]~26_combout\);

-- Location: LCCOMB_X74_Y36_N16
\SU1|SLL64|Y[35]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[35]~28_combout\ = (\SU1|ShiftCount\(5) & (\SU1|SLL64|Stage2_sig[3]~12_combout\)) # (!\SU1|ShiftCount\(5) & (((\SU1|SLL64|Y[35]~27_combout\) # (\SU1|SLL64|Y[35]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|ShiftCount\(5),
	datab => \SU1|SLL64|Stage2_sig[3]~12_combout\,
	datac => \SU1|SLL64|Y[35]~27_combout\,
	datad => \SU1|SLL64|Y[35]~26_combout\,
	combout => \SU1|SLL64|Y[35]~28_combout\);

-- Location: LCCOMB_X74_Y31_N24
\Y~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~282_combout\ = (\Y~281_combout\ & (((\SU1|SLL64|Y[35]~28_combout\)) # (!\Y~455_combout\))) # (!\Y~281_combout\ & (\Y~455_combout\ & (\SU1|SLL64|Stage2_sig[19]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~281_combout\,
	datab => \Y~455_combout\,
	datac => \SU1|SLL64|Stage2_sig[19]~41_combout\,
	datad => \SU1|SLL64|Y[35]~28_combout\,
	combout => \Y~282_combout\);

-- Location: LCCOMB_X80_Y35_N28
\Y~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~283_combout\ = (\Y~267_combout\) # ((\Y~280_combout\) # ((\Y~282_combout\ & \Y~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~267_combout\,
	datab => \Y~280_combout\,
	datac => \Y~282_combout\,
	datad => \Y~272_combout\,
	combout => \Y~283_combout\);

-- Location: LCCOMB_X75_Y33_N14
\Y~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~284_combout\ = (\B[36]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[36]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[36]~input_o\ & (\A[36]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[36]~input_o\,
	datac => \B[36]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y~284_combout\);

-- Location: LCCOMB_X80_Y35_N6
\Y~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~285_combout\ = (\FuncClass[0]~input_o\ & (\Y~284_combout\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[0]~input_o\,
	datac => \Y~284_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~285_combout\);

-- Location: LCCOMB_X73_Y32_N26
\Y~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~286_combout\ = (\Y~261_combout\ & (!\Y~156_combout\ & (\SU1|SRA_SRL_sig[36]~17_combout\))) # (!\Y~261_combout\ & ((\Y~156_combout\) # ((\AU1|Adder|Add0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~261_combout\,
	datab => \Y~156_combout\,
	datac => \SU1|SRA_SRL_sig[36]~17_combout\,
	datad => \AU1|Adder|Add0~74_combout\,
	combout => \Y~286_combout\);

-- Location: LCCOMB_X70_Y32_N2
\SU1|SLL64|Y[36]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[36]~29_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[24]~96_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[32]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[32]~108_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[24]~96_combout\,
	combout => \SU1|SLL64|Y[36]~29_combout\);

-- Location: LCCOMB_X68_Y35_N18
\SU1|SLL64|Stage1_sig[37]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[37]~112_combout\ = (\SU1|SRL64|Stage1_sig[48]~122_combout\) # (\SU1|SRL64|Stage1_sig[48]~124_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~122_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~124_combout\,
	combout => \SU1|SLL64|Stage1_sig[37]~112_combout\);

-- Location: LCCOMB_X66_Y35_N16
\SU1|SLL64|Stage1_sig[36]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[36]~113_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~225_combout\) # ((\SU1|SRL64|Stage1_sig[48]~211_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[37]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~225_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~211_combout\,
	datad => \SU1|SLL64|Stage1_sig[37]~112_combout\,
	combout => \SU1|SLL64|Stage1_sig[36]~113_combout\);

-- Location: LCCOMB_X70_Y32_N20
\SU1|SLL64|Y[36]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[36]~30_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[28]~102_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[36]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[36]~113_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[28]~102_combout\,
	combout => \SU1|SLL64|Y[36]~30_combout\);

-- Location: LCCOMB_X73_Y32_N24
\SU1|SLL64|Y[36]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[36]~31_combout\ = (\SU1|ShiftCount\(5) & (((\SU1|SLL64|Stage2_sig[4]~14_combout\)))) # (!\SU1|ShiftCount\(5) & ((\SU1|SLL64|Y[36]~29_combout\) # ((\SU1|SLL64|Y[36]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[36]~29_combout\,
	datab => \SU1|SLL64|Y[36]~30_combout\,
	datac => \SU1|ShiftCount\(5),
	datad => \SU1|SLL64|Stage2_sig[4]~14_combout\,
	combout => \SU1|SLL64|Y[36]~31_combout\);

-- Location: LCCOMB_X73_Y32_N4
\Y~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~287_combout\ = (\Y~286_combout\ & (((\SU1|SLL64|Y[36]~31_combout\) # (!\Y~455_combout\)))) # (!\Y~286_combout\ & (\SU1|SLL64|Stage2_sig[20]~44_combout\ & (\Y~455_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~286_combout\,
	datab => \SU1|SLL64|Stage2_sig[20]~44_combout\,
	datac => \Y~455_combout\,
	datad => \SU1|SLL64|Y[36]~31_combout\,
	combout => \Y~287_combout\);

-- Location: LCCOMB_X80_Y35_N24
\Y~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~288_combout\ = (\Y~285_combout\) # ((\Y~267_combout\) # ((\Y~287_combout\ & \Y~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~285_combout\,
	datab => \Y~267_combout\,
	datac => \Y~287_combout\,
	datad => \Y~272_combout\,
	combout => \Y~288_combout\);

-- Location: LCCOMB_X75_Y35_N14
\Y~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~289_combout\ = (\B[37]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[37]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[37]~input_o\ & (\A[37]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[37]~input_o\,
	datad => \A[37]~input_o\,
	combout => \Y~289_combout\);

-- Location: LCCOMB_X80_Y35_N10
\Y~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~290_combout\ = (\Y~289_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~289_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~290_combout\);

-- Location: LCCOMB_X70_Y33_N20
\Y~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~291_combout\ = (\Y~261_combout\ & (((!\Y~156_combout\ & \SU1|SRA_SRL_sig[37]~20_combout\)))) # (!\Y~261_combout\ & ((\AU1|Adder|Add0~76_combout\) # ((\Y~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~261_combout\,
	datab => \AU1|Adder|Add0~76_combout\,
	datac => \Y~156_combout\,
	datad => \SU1|SRA_SRL_sig[37]~20_combout\,
	combout => \Y~291_combout\);

-- Location: LCCOMB_X67_Y35_N26
\SU1|SLL64|Stage1_sig[38]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[38]~114_combout\ = (\SU1|SRL64|Stage1_sig[48]~127_combout\) # (\SU1|SRL64|Stage1_sig[48]~119_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~127_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~119_combout\,
	combout => \SU1|SLL64|Stage1_sig[38]~114_combout\);

-- Location: LCCOMB_X68_Y35_N12
\SU1|SLL64|Stage1_sig[37]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[37]~145_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~122_combout\) # ((\SU1|SRL64|Stage1_sig[48]~124_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[38]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[48]~122_combout\,
	datac => \SU1|SLL64|Stage1_sig[38]~114_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~124_combout\,
	combout => \SU1|SLL64|Stage1_sig[37]~145_combout\);

-- Location: LCCOMB_X72_Y34_N24
\SU1|SLL64|Y[41]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[41]~33_combout\ = (\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[29]~104_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[37]~145_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[37]~145_combout\,
	datab => \B[3]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[29]~104_combout\,
	combout => \SU1|SLL64|Y[41]~33_combout\);

-- Location: LCCOMB_X72_Y34_N30
\SU1|SLL64|Y[37]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[37]~32_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[25]~98_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[33]~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[33]~143_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[25]~98_combout\,
	combout => \SU1|SLL64|Y[37]~32_combout\);

-- Location: LCCOMB_X72_Y34_N18
\SU1|SLL64|Y[37]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[37]~34_combout\ = (!\SU1|ShiftCount\(5) & ((\SU1|SLL64|Y[37]~32_combout\) # ((\SU1|SLL64|Y[41]~33_combout\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|ShiftCount\(5),
	datab => \SU1|SLL64|Y[41]~33_combout\,
	datac => \SU1|SLL64|Y[37]~32_combout\,
	datad => \B[2]~input_o\,
	combout => \SU1|SLL64|Y[37]~34_combout\);

-- Location: LCCOMB_X74_Y34_N0
\SU1|SLL64|Y[37]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[37]~60_combout\ = (\SU1|SLL64|Y[37]~34_combout\) # ((!\ExtWord~input_o\ & (\B[5]~input_o\ & \SU1|SLL64|Stage2_sig[5]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SU1|SLL64|Y[37]~34_combout\,
	datac => \B[5]~input_o\,
	datad => \SU1|SLL64|Stage2_sig[5]~15_combout\,
	combout => \SU1|SLL64|Y[37]~60_combout\);

-- Location: LCCOMB_X74_Y34_N2
\Y~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~292_combout\ = (\Y~455_combout\ & ((\Y~291_combout\ & ((\SU1|SLL64|Y[37]~60_combout\))) # (!\Y~291_combout\ & (\SU1|SLL64|Stage2_sig[21]~47_combout\)))) # (!\Y~455_combout\ & (((\Y~291_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[21]~47_combout\,
	datab => \Y~455_combout\,
	datac => \Y~291_combout\,
	datad => \SU1|SLL64|Y[37]~60_combout\,
	combout => \Y~292_combout\);

-- Location: LCCOMB_X80_Y35_N12
\Y~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~293_combout\ = (\Y~290_combout\) # ((\Y~267_combout\) # ((\Y~292_combout\ & \Y~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~290_combout\,
	datab => \Y~267_combout\,
	datac => \Y~292_combout\,
	datad => \Y~272_combout\,
	combout => \Y~293_combout\);

-- Location: LCCOMB_X75_Y37_N28
\Y~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~294_combout\ = (\B[38]~input_o\ & ((\A[38]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[38]~input_o\ & (\A[38]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[38]~input_o\,
	combout => \Y~294_combout\);

-- Location: LCCOMB_X80_Y35_N22
\Y~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~295_combout\ = (\Y~294_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~294_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~295_combout\);

-- Location: LCCOMB_X70_Y35_N8
\SU1|SLL64|Y[38]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[38]~35_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[26]~140_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[34]~144_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[26]~140_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[34]~144_combout\,
	combout => \SU1|SLL64|Y[38]~35_combout\);

-- Location: LCCOMB_X67_Y35_N12
\SU1|SLL64|Stage1_sig[39]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[39]~115_combout\ = (\SU1|SRL64|Stage1_sig[48]~154_combout\) # (\SU1|SRL64|Stage1_sig[48]~162_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~154_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~162_combout\,
	combout => \SU1|SLL64|Stage1_sig[39]~115_combout\);

-- Location: LCCOMB_X67_Y35_N22
\SU1|SLL64|Stage1_sig[38]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[38]~146_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~127_combout\) # ((\SU1|SRL64|Stage1_sig[48]~119_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[39]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~127_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[39]~115_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~119_combout\,
	combout => \SU1|SLL64|Stage1_sig[38]~146_combout\);

-- Location: LCCOMB_X70_Y35_N26
\SU1|SLL64|Y[38]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[38]~36_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[30]~142_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[38]~146_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[30]~142_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[38]~146_combout\,
	combout => \SU1|SLL64|Y[38]~36_combout\);

-- Location: LCCOMB_X70_Y35_N20
\SU1|SLL64|Y[38]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[38]~37_combout\ = (\SU1|ShiftCount\(5) & (\SU1|SLL64|Stage2_sig[6]~16_combout\)) # (!\SU1|ShiftCount\(5) & (((\SU1|SLL64|Y[38]~35_combout\) # (\SU1|SLL64|Y[38]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|ShiftCount\(5),
	datab => \SU1|SLL64|Stage2_sig[6]~16_combout\,
	datac => \SU1|SLL64|Y[38]~35_combout\,
	datad => \SU1|SLL64|Y[38]~36_combout\,
	combout => \SU1|SLL64|Y[38]~37_combout\);

-- Location: LCCOMB_X70_Y33_N22
\Y~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~296_combout\ = (\Y~261_combout\ & (((!\Y~156_combout\ & \SU1|SRA_SRL_sig[38]~22_combout\)))) # (!\Y~261_combout\ & ((\AU1|Adder|Add0~78_combout\) # ((\Y~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~261_combout\,
	datab => \AU1|Adder|Add0~78_combout\,
	datac => \Y~156_combout\,
	datad => \SU1|SRA_SRL_sig[38]~22_combout\,
	combout => \Y~296_combout\);

-- Location: LCCOMB_X74_Y35_N24
\Y~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~297_combout\ = (\Y~455_combout\ & ((\Y~296_combout\ & (\SU1|SLL64|Y[38]~37_combout\)) # (!\Y~296_combout\ & ((\SU1|SLL64|Stage2_sig[22]~49_combout\))))) # (!\Y~455_combout\ & (((\Y~296_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~455_combout\,
	datab => \SU1|SLL64|Y[38]~37_combout\,
	datac => \SU1|SLL64|Stage2_sig[22]~49_combout\,
	datad => \Y~296_combout\,
	combout => \Y~297_combout\);

-- Location: LCCOMB_X80_Y35_N0
\Y~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~298_combout\ = (\Y~295_combout\) # ((\Y~267_combout\) # ((\Y~297_combout\ & \Y~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~295_combout\,
	datab => \Y~267_combout\,
	datac => \Y~297_combout\,
	datad => \Y~272_combout\,
	combout => \Y~298_combout\);

-- Location: LCCOMB_X74_Y36_N18
\SU1|SLL64|Y[39]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[39]~38_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[27]~141_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[35]~111_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[27]~141_combout\,
	datac => \SU1|SLL64|Stage1_sig[35]~111_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SLL64|Y[39]~38_combout\);

-- Location: LCCOMB_X67_Y35_N14
\SU1|SLL64|Stage1_sig[39]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[39]~116_combout\ = (\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[39]~115_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~205_combout\) # ((\SU1|SRL64|Stage1_sig[48]~210_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~205_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~210_combout\,
	datad => \SU1|SLL64|Stage1_sig[39]~115_combout\,
	combout => \SU1|SLL64|Stage1_sig[39]~116_combout\);

-- Location: LCCOMB_X74_Y36_N4
\SU1|SLL64|Y[39]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[39]~39_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[31]~106_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[39]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[39]~116_combout\,
	datac => \SU1|SLL64|Stage1_sig[31]~106_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SLL64|Y[39]~39_combout\);

-- Location: LCCOMB_X73_Y36_N8
\SU1|SLL64|Y[39]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[39]~40_combout\ = (\SU1|ShiftCount\(5) & (\SU1|SLL64|Stage2_sig[7]~17_combout\)) # (!\SU1|ShiftCount\(5) & (((\SU1|SLL64|Y[39]~38_combout\) # (\SU1|SLL64|Y[39]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[7]~17_combout\,
	datab => \SU1|SLL64|Y[39]~38_combout\,
	datac => \SU1|ShiftCount\(5),
	datad => \SU1|SLL64|Y[39]~39_combout\,
	combout => \SU1|SLL64|Y[39]~40_combout\);

-- Location: LCCOMB_X70_Y33_N24
\Y~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~301_combout\ = (\Y~261_combout\ & (((!\Y~156_combout\ & \SU1|SRA_SRL_sig[39]~24_combout\)))) # (!\Y~261_combout\ & ((\AU1|Adder|Add0~80_combout\) # ((\Y~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~261_combout\,
	datab => \AU1|Adder|Add0~80_combout\,
	datac => \Y~156_combout\,
	datad => \SU1|SRA_SRL_sig[39]~24_combout\,
	combout => \Y~301_combout\);

-- Location: LCCOMB_X73_Y36_N2
\Y~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~302_combout\ = (\Y~455_combout\ & ((\Y~301_combout\ & ((\SU1|SLL64|Y[39]~40_combout\))) # (!\Y~301_combout\ & (\SU1|SLL64|Stage2_sig[23]~52_combout\)))) # (!\Y~455_combout\ & (((\Y~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[23]~52_combout\,
	datab => \SU1|SLL64|Y[39]~40_combout\,
	datac => \Y~455_combout\,
	datad => \Y~301_combout\,
	combout => \Y~302_combout\);

-- Location: LCCOMB_X81_Y29_N2
\Y~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~299_combout\ = (\B[39]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[39]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[39]~input_o\ & (\A[39]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[39]~input_o\,
	datad => \B[39]~input_o\,
	combout => \Y~299_combout\);

-- Location: LCCOMB_X80_Y35_N26
\Y~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~300_combout\ = (\Y~299_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~299_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~300_combout\);

-- Location: LCCOMB_X80_Y35_N4
\Y~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~303_combout\ = (\Y~267_combout\) # ((\Y~300_combout\) # ((\Y~302_combout\ & \Y~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~302_combout\,
	datab => \Y~267_combout\,
	datac => \Y~300_combout\,
	datad => \Y~272_combout\,
	combout => \Y~303_combout\);

-- Location: LCCOMB_X75_Y34_N10
\Y~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~304_combout\ = (\B[40]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[40]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[40]~input_o\ & (\A[40]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[40]~input_o\,
	combout => \Y~304_combout\);

-- Location: LCCOMB_X79_Y30_N8
\Y~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~305_combout\ = (\Y~304_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~304_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~305_combout\);

-- Location: LCCOMB_X74_Y32_N24
\Y~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~306_combout\ = (\Y~156_combout\ & (((!\Y~261_combout\)))) # (!\Y~156_combout\ & ((\Y~261_combout\ & (\SU1|SRA_SRL_sig[40]~26_combout\)) # (!\Y~261_combout\ & ((\AU1|Adder|Add0~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~156_combout\,
	datab => \SU1|SRA_SRL_sig[40]~26_combout\,
	datac => \AU1|Adder|Add0~82_combout\,
	datad => \Y~261_combout\,
	combout => \Y~306_combout\);

-- Location: LCCOMB_X70_Y32_N6
\SU1|SLL64|Y[40]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[40]~41_combout\ = (\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[28]~102_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[36]~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[36]~113_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[28]~102_combout\,
	combout => \SU1|SLL64|Y[40]~41_combout\);

-- Location: LCCOMB_X67_Y37_N2
\SU1|SLL64|Stage1_sig[41]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[41]~117_combout\ = (\SU1|SRL64|Stage1_sig[48]~121_combout\) # (\SU1|SRL64|Stage1_sig[48]~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~121_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~116_combout\,
	combout => \SU1|SLL64|Stage1_sig[41]~117_combout\);

-- Location: LCCOMB_X67_Y35_N24
\SU1|SLL64|Stage1_sig[40]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[40]~118_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~205_combout\) # ((\SU1|SRL64|Stage1_sig[48]~210_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[41]~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~205_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SRL64|Stage1_sig[48]~210_combout\,
	datad => \SU1|SLL64|Stage1_sig[41]~117_combout\,
	combout => \SU1|SLL64|Stage1_sig[40]~118_combout\);

-- Location: LCCOMB_X70_Y32_N0
\SU1|SLL64|Y[40]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[40]~42_combout\ = (\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[32]~108_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[40]~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[32]~108_combout\,
	datad => \SU1|SLL64|Stage1_sig[40]~118_combout\,
	combout => \SU1|SLL64|Y[40]~42_combout\);

-- Location: LCCOMB_X70_Y32_N18
\SU1|SLL64|Y[40]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[40]~43_combout\ = (!\SU1|ShiftCount\(5) & ((\B[2]~input_o\ & (\SU1|SLL64|Y[40]~41_combout\)) # (!\B[2]~input_o\ & ((\SU1|SLL64|Y[40]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[40]~41_combout\,
	datab => \SU1|ShiftCount\(5),
	datac => \B[2]~input_o\,
	datad => \SU1|SLL64|Y[40]~42_combout\,
	combout => \SU1|SLL64|Y[40]~43_combout\);

-- Location: LCCOMB_X73_Y32_N18
\SU1|SLL64|Y[40]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[40]~61_combout\ = (\SU1|SLL64|Y[40]~43_combout\) # ((\SU1|SLL64|Stage2_sig[8]~95_combout\ & (\B[5]~input_o\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[8]~95_combout\,
	datab => \B[5]~input_o\,
	datac => \SU1|SLL64|Y[40]~43_combout\,
	datad => \ExtWord~input_o\,
	combout => \SU1|SLL64|Y[40]~61_combout\);

-- Location: LCCOMB_X73_Y32_N14
\Y~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~307_combout\ = (\Y~306_combout\ & ((\SU1|SLL64|Y[40]~61_combout\) # ((!\Y~455_combout\)))) # (!\Y~306_combout\ & (((\Y~455_combout\ & \SU1|SLL64|Stage2_sig[24]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~306_combout\,
	datab => \SU1|SLL64|Y[40]~61_combout\,
	datac => \Y~455_combout\,
	datad => \SU1|SLL64|Stage2_sig[24]~54_combout\,
	combout => \Y~307_combout\);

-- Location: LCCOMB_X79_Y30_N18
\Y~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~308_combout\ = (\Y~267_combout\) # ((\Y~305_combout\) # ((\Y~272_combout\ & \Y~307_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~267_combout\,
	datab => \Y~305_combout\,
	datac => \Y~272_combout\,
	datad => \Y~307_combout\,
	combout => \Y~308_combout\);

-- Location: LCCOMB_X67_Y37_N12
\SU1|SLL64|Stage1_sig[42]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[42]~119_combout\ = (\SU1|SRL64|Stage1_sig[48]~118_combout\) # (\SU1|SRL64|Stage1_sig[48]~113_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~118_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~113_combout\,
	combout => \SU1|SLL64|Stage1_sig[42]~119_combout\);

-- Location: LCCOMB_X67_Y37_N10
\SU1|SLL64|Stage1_sig[41]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[41]~147_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~121_combout\) # (\SU1|SRL64|Stage1_sig[48]~116_combout\)))) # (!\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[42]~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[42]~119_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~121_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~116_combout\,
	combout => \SU1|SLL64|Stage1_sig[41]~147_combout\);

-- Location: LCCOMB_X72_Y34_N12
\SU1|SLL64|Y[41]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[41]~44_combout\ = (\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[33]~143_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[41]~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[41]~147_combout\,
	datab => \B[3]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[33]~143_combout\,
	combout => \SU1|SLL64|Y[41]~44_combout\);

-- Location: LCCOMB_X72_Y34_N22
\SU1|SLL64|Y[41]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[41]~45_combout\ = (!\SU1|ShiftCount\(5) & ((\B[2]~input_o\ & (\SU1|SLL64|Y[41]~33_combout\)) # (!\B[2]~input_o\ & ((\SU1|SLL64|Y[41]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|ShiftCount\(5),
	datab => \SU1|SLL64|Y[41]~33_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SLL64|Y[41]~44_combout\,
	combout => \SU1|SLL64|Y[41]~45_combout\);

-- Location: LCCOMB_X74_Y34_N10
\SU1|SLL64|Y[41]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[41]~62_combout\ = (\SU1|SLL64|Y[41]~45_combout\) # ((!\ExtWord~input_o\ & (\B[5]~input_o\ & \SU1|SLL64|Stage2_sig[9]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SU1|SLL64|Y[41]~45_combout\,
	datac => \B[5]~input_o\,
	datad => \SU1|SLL64|Stage2_sig[9]~96_combout\,
	combout => \SU1|SLL64|Y[41]~62_combout\);

-- Location: LCCOMB_X75_Y31_N4
\Y~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~311_combout\ = (\Y~261_combout\ & (\SU1|SRA_SRL_sig[41]~28_combout\ & ((!\Y~156_combout\)))) # (!\Y~261_combout\ & (((\AU1|Adder|Add0~84_combout\) # (\Y~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[41]~28_combout\,
	datab => \Y~261_combout\,
	datac => \AU1|Adder|Add0~84_combout\,
	datad => \Y~156_combout\,
	combout => \Y~311_combout\);

-- Location: LCCOMB_X74_Y34_N4
\Y~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~312_combout\ = (\Y~455_combout\ & ((\Y~311_combout\ & (\SU1|SLL64|Y[41]~62_combout\)) # (!\Y~311_combout\ & ((\SU1|SLL64|Stage2_sig[25]~57_combout\))))) # (!\Y~455_combout\ & (((\Y~311_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[41]~62_combout\,
	datab => \Y~455_combout\,
	datac => \SU1|SLL64|Stage2_sig[25]~57_combout\,
	datad => \Y~311_combout\,
	combout => \Y~312_combout\);

-- Location: LCCOMB_X77_Y30_N18
\Y~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~309_combout\ = (\B[41]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[41]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[41]~input_o\ & (\A[41]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[41]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[41]~input_o\,
	combout => \Y~309_combout\);

-- Location: LCCOMB_X79_Y30_N12
\Y~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~310_combout\ = (\Y~309_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~309_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~310_combout\);

-- Location: LCCOMB_X79_Y30_N30
\Y~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~313_combout\ = (\Y~267_combout\) # ((\Y~310_combout\) # ((\Y~312_combout\ & \Y~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~267_combout\,
	datab => \Y~312_combout\,
	datac => \Y~272_combout\,
	datad => \Y~310_combout\,
	combout => \Y~313_combout\);

-- Location: LCCOMB_X67_Y37_N30
\SU1|SLL64|Stage1_sig[43]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[43]~120_combout\ = (\SU1|SRL64|Stage1_sig[48]~152_combout\) # (\SU1|SRL64|Stage1_sig[48]~161_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~152_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~161_combout\,
	combout => \SU1|SLL64|Stage1_sig[43]~120_combout\);

-- Location: LCCOMB_X67_Y37_N4
\SU1|SLL64|Stage1_sig[42]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[42]~148_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~118_combout\) # ((\SU1|SRL64|Stage1_sig[48]~113_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[43]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[48]~118_combout\,
	datac => \SU1|SLL64|Stage1_sig[43]~120_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~113_combout\,
	combout => \SU1|SLL64|Stage1_sig[42]~148_combout\);

-- Location: LCCOMB_X70_Y35_N6
\SU1|SLL64|Y[42]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[42]~46_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SU1|SLL64|Stage1_sig[38]~146_combout\)) # (!\B[2]~input_o\ & ((\SU1|SLL64|Stage1_sig[42]~148_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[38]~146_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[42]~148_combout\,
	combout => \SU1|SLL64|Y[42]~46_combout\);

-- Location: LCCOMB_X70_Y35_N0
\SU1|SLL64|Y[42]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[42]~47_combout\ = (!\SU1|ShiftCount\(5) & ((\SU1|SLL64|Y[42]~46_combout\) # ((\SU1|SLL64|Y[42]~23_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|ShiftCount\(5),
	datab => \SU1|SLL64|Y[42]~23_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Y[42]~46_combout\,
	combout => \SU1|SLL64|Y[42]~47_combout\);

-- Location: LCCOMB_X73_Y32_N12
\SU1|SLL64|Y[42]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[42]~63_combout\ = (\SU1|SLL64|Y[42]~47_combout\) # ((\B[5]~input_o\ & (\SU1|SLL64|Stage2_sig[10]~97_combout\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[42]~47_combout\,
	datab => \B[5]~input_o\,
	datac => \SU1|SLL64|Stage2_sig[10]~97_combout\,
	datad => \ExtWord~input_o\,
	combout => \SU1|SLL64|Y[42]~63_combout\);

-- Location: LCCOMB_X74_Y32_N26
\Y~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~316_combout\ = (\Y~156_combout\ & (!\Y~261_combout\)) # (!\Y~156_combout\ & ((\Y~261_combout\ & (\SU1|SRA_SRL_sig[42]~30_combout\)) # (!\Y~261_combout\ & ((\AU1|Adder|Add0~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~156_combout\,
	datab => \Y~261_combout\,
	datac => \SU1|SRA_SRL_sig[42]~30_combout\,
	datad => \AU1|Adder|Add0~86_combout\,
	combout => \Y~316_combout\);

-- Location: LCCOMB_X74_Y32_N28
\Y~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~317_combout\ = (\Y~316_combout\ & ((\SU1|SLL64|Y[42]~63_combout\) # ((!\Y~455_combout\)))) # (!\Y~316_combout\ & (((\SU1|SLL64|Stage2_sig[26]~59_combout\ & \Y~455_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[42]~63_combout\,
	datab => \SU1|SLL64|Stage2_sig[26]~59_combout\,
	datac => \Y~316_combout\,
	datad => \Y~455_combout\,
	combout => \Y~317_combout\);

-- Location: LCCOMB_X76_Y37_N6
\Y~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~314_combout\ = (\B[42]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[42]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[42]~input_o\ & (\A[42]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[42]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[42]~input_o\,
	combout => \Y~314_combout\);

-- Location: LCCOMB_X79_Y30_N0
\Y~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~315_combout\ = (\Y~314_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~314_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~315_combout\);

-- Location: LCCOMB_X79_Y30_N10
\Y~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~318_combout\ = (\Y~267_combout\) # ((\Y~315_combout\) # ((\Y~317_combout\ & \Y~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~267_combout\,
	datab => \Y~317_combout\,
	datac => \Y~272_combout\,
	datad => \Y~315_combout\,
	combout => \Y~318_combout\);

-- Location: LCCOMB_X74_Y32_N6
\Y~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~321_combout\ = (\Y~261_combout\ & (\SU1|SRA_SRL_sig[43]~32_combout\ & ((!\Y~156_combout\)))) # (!\Y~261_combout\ & (((\AU1|Adder|Add0~88_combout\) # (\Y~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[43]~32_combout\,
	datab => \Y~261_combout\,
	datac => \AU1|Adder|Add0~88_combout\,
	datad => \Y~156_combout\,
	combout => \Y~321_combout\);

-- Location: LCCOMB_X67_Y37_N0
\SU1|SLL64|Stage1_sig[43]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[43]~121_combout\ = (\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[43]~120_combout\)) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~202_combout\) # (\SU1|SRL64|Stage1_sig[48]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[43]~120_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~202_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~204_combout\,
	combout => \SU1|SLL64|Stage1_sig[43]~121_combout\);

-- Location: LCCOMB_X74_Y36_N6
\SU1|SLL64|Y[43]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[43]~48_combout\ = (\B[2]~input_o\ & (((\SU1|SLL64|Stage1_sig[31]~106_combout\) # (!\B[3]~input_o\)))) # (!\B[2]~input_o\ & (\SU1|SLL64|Stage1_sig[35]~111_combout\ & ((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[35]~111_combout\,
	datac => \SU1|SLL64|Stage1_sig[31]~106_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SLL64|Y[43]~48_combout\);

-- Location: LCCOMB_X74_Y36_N24
\SU1|SLL64|Y[43]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[43]~49_combout\ = (\B[3]~input_o\ & (((\SU1|SLL64|Y[43]~48_combout\)))) # (!\B[3]~input_o\ & ((\SU1|SLL64|Y[43]~48_combout\ & ((\SU1|SLL64|Stage1_sig[39]~116_combout\))) # (!\SU1|SLL64|Y[43]~48_combout\ & 
-- (\SU1|SLL64|Stage1_sig[43]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[43]~121_combout\,
	datac => \SU1|SLL64|Stage1_sig[39]~116_combout\,
	datad => \SU1|SLL64|Y[43]~48_combout\,
	combout => \SU1|SLL64|Y[43]~49_combout\);

-- Location: LCCOMB_X73_Y36_N6
\SU1|SLL64|Y[43]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[43]~64_combout\ = (\ExtWord~input_o\ & (\SU1|SLL64|Y[43]~49_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\SU1|SLL64|Stage2_sig[11]~98_combout\))) # (!\B[5]~input_o\ & (\SU1|SLL64|Y[43]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SU1|SLL64|Y[43]~49_combout\,
	datac => \B[5]~input_o\,
	datad => \SU1|SLL64|Stage2_sig[11]~98_combout\,
	combout => \SU1|SLL64|Y[43]~64_combout\);

-- Location: LCCOMB_X73_Y36_N4
\Y~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~322_combout\ = (\Y~455_combout\ & ((\Y~321_combout\ & ((\SU1|SLL64|Y[43]~64_combout\))) # (!\Y~321_combout\ & (\SU1|SLL64|Stage2_sig[27]~62_combout\)))) # (!\Y~455_combout\ & (((\Y~321_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~455_combout\,
	datab => \SU1|SLL64|Stage2_sig[27]~62_combout\,
	datac => \Y~321_combout\,
	datad => \SU1|SLL64|Y[43]~64_combout\,
	combout => \Y~322_combout\);

-- Location: LCCOMB_X70_Y34_N12
\Y~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~319_combout\ = (\B[43]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[43]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[43]~input_o\ & (\A[43]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[43]~input_o\,
	datad => \B[43]~input_o\,
	combout => \Y~319_combout\);

-- Location: LCCOMB_X79_Y30_N4
\Y~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~320_combout\ = (\Y~319_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~319_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~320_combout\);

-- Location: LCCOMB_X79_Y30_N14
\Y~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~323_combout\ = (\Y~320_combout\) # ((\Y~267_combout\) # ((\Y~322_combout\ & \Y~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~322_combout\,
	datab => \Y~320_combout\,
	datac => \Y~272_combout\,
	datad => \Y~267_combout\,
	combout => \Y~323_combout\);

-- Location: LCCOMB_X69_Y30_N0
\Y~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~326_combout\ = (\Y~156_combout\ & (((!\Y~261_combout\)))) # (!\Y~156_combout\ & ((\Y~261_combout\ & ((\SU1|SRA_SRL_sig[44]~34_combout\))) # (!\Y~261_combout\ & (\AU1|Adder|Add0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~156_combout\,
	datab => \AU1|Adder|Add0~90_combout\,
	datac => \SU1|SRA_SRL_sig[44]~34_combout\,
	datad => \Y~261_combout\,
	combout => \Y~326_combout\);

-- Location: LCCOMB_X67_Y37_N18
\SU1|SLL64|Stage1_sig[45]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[45]~122_combout\ = (\SU1|SRL64|Stage1_sig[48]~115_combout\) # (\SU1|SRL64|Stage1_sig[48]~110_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~115_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~110_combout\,
	combout => \SU1|SLL64|Stage1_sig[45]~122_combout\);

-- Location: LCCOMB_X67_Y37_N28
\SU1|SLL64|Stage1_sig[44]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[44]~123_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~202_combout\) # (\SU1|SRL64|Stage1_sig[48]~204_combout\)))) # (!\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[45]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[45]~122_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~202_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~204_combout\,
	combout => \SU1|SLL64|Stage1_sig[44]~123_combout\);

-- Location: LCCOMB_X70_Y32_N28
\SU1|SLL64|Stage2_sig[8]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[8]~71_combout\ = (\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[36]~113_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[44]~123_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[36]~113_combout\,
	datab => \SU1|SLL64|Stage1_sig[44]~123_combout\,
	datac => \B[3]~input_o\,
	combout => \SU1|SLL64|Stage2_sig[8]~71_combout\);

-- Location: LCCOMB_X70_Y32_N30
\SU1|SLL64|Y[44]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[44]~50_combout\ = (!\SU1|ShiftCount\(5) & ((\B[2]~input_o\ & (\SU1|SLL64|Y[40]~42_combout\)) # (!\B[2]~input_o\ & ((\SU1|SLL64|Stage2_sig[8]~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[40]~42_combout\,
	datab => \SU1|ShiftCount\(5),
	datac => \B[2]~input_o\,
	datad => \SU1|SLL64|Stage2_sig[8]~71_combout\,
	combout => \SU1|SLL64|Y[44]~50_combout\);

-- Location: LCCOMB_X72_Y30_N30
\SU1|SLL64|Y[44]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[44]~65_combout\ = (\SU1|SLL64|Y[44]~50_combout\) # ((\SU1|SLL64|Stage2_sig[12]~23_combout\ & (\B[5]~input_o\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[12]~23_combout\,
	datab => \SU1|SLL64|Y[44]~50_combout\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SU1|SLL64|Y[44]~65_combout\);

-- Location: LCCOMB_X70_Y30_N16
\Y~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~327_combout\ = (\Y~326_combout\ & (((\SU1|SLL64|Y[44]~65_combout\) # (!\Y~455_combout\)))) # (!\Y~326_combout\ & (\SU1|SLL64|Stage2_sig[28]~64_combout\ & (\Y~455_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~326_combout\,
	datab => \SU1|SLL64|Stage2_sig[28]~64_combout\,
	datac => \Y~455_combout\,
	datad => \SU1|SLL64|Y[44]~65_combout\,
	combout => \Y~327_combout\);

-- Location: LCCOMB_X70_Y37_N6
\Y~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~324_combout\ = (\B[44]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[44]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[44]~input_o\ & (\A[44]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => \Y~324_combout\);

-- Location: LCCOMB_X79_Y30_N16
\Y~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~325_combout\ = (\Y~324_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~324_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~325_combout\);

-- Location: LCCOMB_X79_Y30_N2
\Y~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~328_combout\ = (\Y~325_combout\) # ((\Y~267_combout\) # ((\Y~327_combout\ & \Y~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~327_combout\,
	datab => \Y~325_combout\,
	datac => \Y~272_combout\,
	datad => \Y~267_combout\,
	combout => \Y~328_combout\);

-- Location: LCCOMB_X67_Y37_N22
\SU1|SLL64|Stage1_sig[46]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[46]~124_combout\ = (\SU1|SRL64|Stage1_sig[48]~112_combout\) # (\SU1|SRL64|Stage1_sig[48]~107_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~112_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~107_combout\,
	combout => \SU1|SLL64|Stage1_sig[46]~124_combout\);

-- Location: LCCOMB_X67_Y37_N14
\SU1|SLL64|Stage1_sig[45]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[45]~149_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~115_combout\) # ((\SU1|SRL64|Stage1_sig[48]~110_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[46]~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[48]~115_combout\,
	datac => \SU1|SLL64|Stage1_sig[46]~124_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~110_combout\,
	combout => \SU1|SLL64|Stage1_sig[45]~149_combout\);

-- Location: LCCOMB_X72_Y34_N16
\SU1|SLL64|Stage2_sig[9]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[9]~72_combout\ = (\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[37]~145_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[45]~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[37]~145_combout\,
	datab => \B[3]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[45]~149_combout\,
	combout => \SU1|SLL64|Stage2_sig[9]~72_combout\);

-- Location: LCCOMB_X72_Y34_N2
\SU1|SLL64|Y[45]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[45]~51_combout\ = (!\SU1|ShiftCount\(5) & ((\B[2]~input_o\ & ((\SU1|SLL64|Y[41]~44_combout\))) # (!\B[2]~input_o\ & (\SU1|SLL64|Stage2_sig[9]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|ShiftCount\(5),
	datab => \SU1|SLL64|Stage2_sig[9]~72_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SLL64|Y[41]~44_combout\,
	combout => \SU1|SLL64|Y[45]~51_combout\);

-- Location: LCCOMB_X73_Y34_N26
\SU1|SLL64|Y[45]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[45]~52_combout\ = (\SU1|SLL64|Y[45]~51_combout\) # ((\SU1|ShiftCount\(5) & ((\SU1|SLL64|Stage2_sig[13]~24_combout\) # (\SU1|SLL64|Stage2_sig[13]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[45]~51_combout\,
	datab => \SU1|ShiftCount\(5),
	datac => \SU1|SLL64|Stage2_sig[13]~24_combout\,
	datad => \SU1|SLL64|Stage2_sig[13]~25_combout\,
	combout => \SU1|SLL64|Y[45]~52_combout\);

-- Location: LCCOMB_X69_Y30_N2
\Y~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~331_combout\ = (\Y~156_combout\ & (((!\Y~261_combout\)))) # (!\Y~156_combout\ & ((\Y~261_combout\ & ((\SU1|SRA_SRL_sig[45]~36_combout\))) # (!\Y~261_combout\ & (\AU1|Adder|Add0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~156_combout\,
	datab => \AU1|Adder|Add0~92_combout\,
	datac => \SU1|SRA_SRL_sig[45]~36_combout\,
	datad => \Y~261_combout\,
	combout => \Y~331_combout\);

-- Location: LCCOMB_X70_Y30_N18
\Y~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~332_combout\ = (\Y~455_combout\ & ((\Y~331_combout\ & ((\SU1|SLL64|Y[45]~52_combout\))) # (!\Y~331_combout\ & (\SU1|SLL64|Stage2_sig[29]~66_combout\)))) # (!\Y~455_combout\ & (((\Y~331_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~455_combout\,
	datab => \SU1|SLL64|Stage2_sig[29]~66_combout\,
	datac => \SU1|SLL64|Y[45]~52_combout\,
	datad => \Y~331_combout\,
	combout => \Y~332_combout\);

-- Location: LCCOMB_X77_Y30_N28
\Y~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~329_combout\ = (\B[45]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[45]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[45]~input_o\ & (\A[45]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[45]~input_o\,
	datad => \B[45]~input_o\,
	combout => \Y~329_combout\);

-- Location: LCCOMB_X79_Y30_N20
\Y~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~330_combout\ = (\Y~329_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~329_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~330_combout\);

-- Location: LCCOMB_X79_Y30_N22
\Y~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~333_combout\ = (\Y~330_combout\) # ((\Y~267_combout\) # ((\Y~332_combout\ & \Y~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~332_combout\,
	datab => \Y~330_combout\,
	datac => \Y~272_combout\,
	datad => \Y~267_combout\,
	combout => \Y~333_combout\);

-- Location: LCCOMB_X69_Y30_N4
\Y~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~336_combout\ = (\Y~261_combout\ & (((!\Y~156_combout\ & \SU1|SRA_SRL_sig[46]~38_combout\)))) # (!\Y~261_combout\ & ((\AU1|Adder|Add0~94_combout\) # ((\Y~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~261_combout\,
	datab => \AU1|Adder|Add0~94_combout\,
	datac => \Y~156_combout\,
	datad => \SU1|SRA_SRL_sig[46]~38_combout\,
	combout => \Y~336_combout\);

-- Location: LCCOMB_X70_Y35_N4
\SU1|SLL64|Y[46]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[46]~54_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[34]~144_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[42]~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[42]~148_combout\,
	datac => \B[2]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[34]~144_combout\,
	combout => \SU1|SLL64|Y[46]~54_combout\);

-- Location: LCCOMB_X66_Y36_N0
\SU1|SLL64|Stage1_sig[47]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[47]~125_combout\ = (\SU1|SRL64|Stage1_sig[48]~159_combout\) # (\SU1|SRL64|Stage1_sig[48]~151_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~159_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~151_combout\,
	combout => \SU1|SLL64|Stage1_sig[47]~125_combout\);

-- Location: LCCOMB_X66_Y36_N28
\SU1|SLL64|Stage1_sig[46]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[46]~150_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~107_combout\) # (\SU1|SRL64|Stage1_sig[48]~112_combout\)))) # (!\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[47]~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[47]~125_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~107_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~112_combout\,
	combout => \SU1|SLL64|Stage1_sig[46]~150_combout\);

-- Location: LCCOMB_X70_Y35_N18
\SU1|SLL64|Y[46]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[46]~53_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[38]~146_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[46]~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[46]~150_combout\,
	datad => \SU1|SLL64|Stage1_sig[38]~146_combout\,
	combout => \SU1|SLL64|Y[46]~53_combout\);

-- Location: LCCOMB_X70_Y35_N30
\SU1|SLL64|Y[46]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[46]~55_combout\ = (\SU1|ShiftCount\(5) & (\SU1|SLL64|Stage2_sig[14]~28_combout\)) # (!\SU1|ShiftCount\(5) & (((\SU1|SLL64|Y[46]~54_combout\) # (\SU1|SLL64|Y[46]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|ShiftCount\(5),
	datab => \SU1|SLL64|Stage2_sig[14]~28_combout\,
	datac => \SU1|SLL64|Y[46]~54_combout\,
	datad => \SU1|SLL64|Y[46]~53_combout\,
	combout => \SU1|SLL64|Y[46]~55_combout\);

-- Location: LCCOMB_X70_Y30_N4
\Y~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~337_combout\ = (\Y~336_combout\ & (((\SU1|SLL64|Y[46]~55_combout\) # (!\Y~455_combout\)))) # (!\Y~336_combout\ & (\SU1|SLL64|Stage2_sig[30]~68_combout\ & (\Y~455_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[30]~68_combout\,
	datab => \Y~336_combout\,
	datac => \Y~455_combout\,
	datad => \SU1|SLL64|Y[46]~55_combout\,
	combout => \Y~337_combout\);

-- Location: LCCOMB_X77_Y30_N14
\Y~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~334_combout\ = (\B[46]~input_o\ & ((\A[46]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[46]~input_o\ & (\A[46]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[46]~input_o\,
	combout => \Y~334_combout\);

-- Location: LCCOMB_X79_Y30_N24
\Y~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~335_combout\ = (\Y~334_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~334_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~335_combout\);

-- Location: LCCOMB_X79_Y30_N26
\Y~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~338_combout\ = (\Y~335_combout\) # ((\Y~267_combout\) # ((\Y~337_combout\ & \Y~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~337_combout\,
	datab => \Y~335_combout\,
	datac => \Y~272_combout\,
	datad => \Y~267_combout\,
	combout => \Y~338_combout\);

-- Location: LCCOMB_X74_Y36_N28
\SU1|SLL64|Y[47]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[47]~57_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[35]~111_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[43]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[43]~121_combout\,
	datac => \SU1|SLL64|Stage1_sig[35]~111_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SLL64|Y[47]~57_combout\);

-- Location: LCCOMB_X66_Y36_N10
\SU1|SLL64|Stage1_sig[47]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[47]~126_combout\ = (\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[47]~125_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~201_combout\) # ((\SU1|SRL64|Stage1_sig[48]~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~201_combout\,
	datab => \SU1|SLL64|Stage1_sig[47]~125_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~208_combout\,
	combout => \SU1|SLL64|Stage1_sig[47]~126_combout\);

-- Location: LCCOMB_X74_Y36_N26
\SU1|SLL64|Y[47]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[47]~56_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[39]~116_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[47]~126_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[39]~116_combout\,
	datac => \SU1|SLL64|Stage1_sig[47]~126_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SLL64|Y[47]~56_combout\);

-- Location: LCCOMB_X74_Y36_N14
\SU1|SLL64|Y[47]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Y[47]~58_combout\ = (\SU1|ShiftCount\(5) & (((\SU1|SLL64|Stage2_sig[15]~30_combout\)))) # (!\SU1|ShiftCount\(5) & ((\SU1|SLL64|Y[47]~57_combout\) # ((\SU1|SLL64|Y[47]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|ShiftCount\(5),
	datab => \SU1|SLL64|Y[47]~57_combout\,
	datac => \SU1|SLL64|Y[47]~56_combout\,
	datad => \SU1|SLL64|Stage2_sig[15]~30_combout\,
	combout => \SU1|SLL64|Y[47]~58_combout\);

-- Location: LCCOMB_X75_Y30_N0
\Y~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~341_combout\ = (\Y~261_combout\ & (!\Y~156_combout\ & ((\SU1|SRA_SRL_sig[47]~40_combout\)))) # (!\Y~261_combout\ & ((\Y~156_combout\) # ((\AU1|Adder|Add0~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~261_combout\,
	datab => \Y~156_combout\,
	datac => \AU1|Adder|Add0~96_combout\,
	datad => \SU1|SRA_SRL_sig[47]~40_combout\,
	combout => \Y~341_combout\);

-- Location: LCCOMB_X75_Y36_N28
\Y~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~342_combout\ = (\Y~455_combout\ & ((\Y~341_combout\ & (\SU1|SLL64|Y[47]~58_combout\)) # (!\Y~341_combout\ & ((\SU1|SLL64|Stage2_sig[31]~70_combout\))))) # (!\Y~455_combout\ & (((\Y~341_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[47]~58_combout\,
	datab => \Y~455_combout\,
	datac => \SU1|SLL64|Stage2_sig[31]~70_combout\,
	datad => \Y~341_combout\,
	combout => \Y~342_combout\);

-- Location: LCCOMB_X75_Y30_N6
\Y~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~339_combout\ = (\B[47]~input_o\ & ((\A[47]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[47]~input_o\ & (\A[47]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[47]~input_o\,
	datac => \A[47]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y~339_combout\);

-- Location: LCCOMB_X79_Y30_N28
\Y~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~340_combout\ = (\Y~339_combout\ & (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~339_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~340_combout\);

-- Location: LCCOMB_X79_Y30_N6
\Y~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~343_combout\ = (\Y~267_combout\) # ((\Y~340_combout\) # ((\Y~342_combout\ & \Y~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~267_combout\,
	datab => \Y~342_combout\,
	datac => \Y~272_combout\,
	datad => \Y~340_combout\,
	combout => \Y~343_combout\);

-- Location: LCCOMB_X74_Y29_N10
\Y~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~346_combout\ = (\ExtWord~input_o\) # ((!\ShiftFN[1]~input_o\ & !\ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~346_combout\);

-- Location: LCCOMB_X72_Y30_N2
\Y~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~347_combout\ = (\B[4]~input_o\) # ((\B[2]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~347_combout\);

-- Location: LCCOMB_X66_Y36_N20
\SU1|SLL64|Stage1_sig[49]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[49]~127_combout\ = (\SU1|SRL64|Stage1_sig[48]~94_combout\) # (\SU1|SRL64|Stage1_sig[48]~109_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~94_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~109_combout\,
	combout => \SU1|SLL64|Stage1_sig[49]~127_combout\);

-- Location: LCCOMB_X66_Y36_N30
\SU1|SLL64|Stage1_sig[48]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[48]~128_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~201_combout\) # ((\SU1|SRL64|Stage1_sig[48]~208_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[49]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~201_combout\,
	datab => \SU1|SLL64|Stage1_sig[49]~127_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~208_combout\,
	combout => \SU1|SLL64|Stage1_sig[48]~128_combout\);

-- Location: LCCOMB_X68_Y37_N12
\SU1|SLL64|Stage2_sig[8]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[8]~73_combout\ = (\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[40]~118_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[48]~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[48]~128_combout\,
	datab => \B[3]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[40]~118_combout\,
	combout => \SU1|SLL64|Stage2_sig[8]~73_combout\);

-- Location: LCCOMB_X73_Y32_N8
\Y~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~348_combout\ = (\Y~347_combout\ & ((\SU1|SLL64|Stage2_sig[8]~71_combout\) # ((\SU1|SRL64|Equal8~1_combout\)))) # (!\Y~347_combout\ & (((!\SU1|SRL64|Equal8~1_combout\ & \SU1|SLL64|Stage2_sig[8]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[8]~71_combout\,
	datab => \Y~347_combout\,
	datac => \SU1|SRL64|Equal8~1_combout\,
	datad => \SU1|SLL64|Stage2_sig[8]~73_combout\,
	combout => \Y~348_combout\);

-- Location: LCCOMB_X73_Y30_N8
\Y~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~349_combout\ = (\SU1|SRL64|Equal8~1_combout\ & ((\Y~348_combout\ & ((\SU1|SLL64|Y[32]~18_combout\))) # (!\Y~348_combout\ & (\SU1|SLL64|Stage2_sig[16]~32_combout\)))) # (!\SU1|SRL64|Equal8~1_combout\ & (((\Y~348_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Equal8~1_combout\,
	datab => \SU1|SLL64|Stage2_sig[16]~32_combout\,
	datac => \Y~348_combout\,
	datad => \SU1|SLL64|Y[32]~18_combout\,
	combout => \Y~349_combout\);

-- Location: LCCOMB_X74_Y29_N0
\Y~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~345_combout\ = (!\ShiftFN[1]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~345_combout\);

-- Location: LCCOMB_X73_Y30_N26
\Y~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~350_combout\ = (\Y~346_combout\ & ((\AU1|Adder|Add0~98_combout\) # ((!\Y~345_combout\)))) # (!\Y~346_combout\ & (((\Y~349_combout\ & \Y~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~346_combout\,
	datab => \AU1|Adder|Add0~98_combout\,
	datac => \Y~349_combout\,
	datad => \Y~345_combout\,
	combout => \Y~350_combout\);

-- Location: LCCOMB_X73_Y30_N28
\Y~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~351_combout\ = (\Y~350_combout\ & ((\Y~345_combout\) # ((\SU1|SgnExtUpper_sig[0]~4_combout\)))) # (!\Y~350_combout\ & (!\Y~345_combout\ & ((\SU1|SRA_SRL_sig[48]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~350_combout\,
	datab => \Y~345_combout\,
	datac => \SU1|SgnExtUpper_sig[0]~4_combout\,
	datad => \SU1|SRA_SRL_sig[48]~42_combout\,
	combout => \Y~351_combout\);

-- Location: LCCOMB_X73_Y30_N30
\Y~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~344_combout\ = (\B[48]~input_o\ & ((\A[48]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[48]~input_o\ & (\A[48]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[48]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y~344_combout\);

-- Location: LCCOMB_X73_Y30_N22
\Y~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~352_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y~344_combout\))) # (!\FuncClass[0]~input_o\ & (\Y~351_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y~351_combout\,
	datac => \Y~344_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~352_combout\);

-- Location: LCCOMB_X66_Y36_N8
\SU1|SLL64|Stage1_sig[50]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[50]~129_combout\ = (\SU1|SRL64|Stage1_sig[48]~91_combout\) # (\SU1|SRL64|Stage1_sig[48]~106_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~91_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~106_combout\,
	combout => \SU1|SLL64|Stage1_sig[50]~129_combout\);

-- Location: LCCOMB_X66_Y36_N6
\SU1|SLL64|Stage1_sig[49]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[49]~151_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~94_combout\) # (\SU1|SRL64|Stage1_sig[48]~109_combout\)))) # (!\B[0]~input_o\ & (\SU1|SLL64|Stage1_sig[50]~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[50]~129_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~94_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~109_combout\,
	combout => \SU1|SLL64|Stage1_sig[49]~151_combout\);

-- Location: LCCOMB_X67_Y34_N18
\SU1|SLL64|Stage2_sig[9]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[9]~74_combout\ = (\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[41]~147_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[49]~151_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SLL64|Stage1_sig[41]~147_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[49]~151_combout\,
	combout => \SU1|SLL64|Stage2_sig[9]~74_combout\);

-- Location: LCCOMB_X72_Y34_N20
\Y~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~354_combout\ = (\SU1|SRL64|Equal8~1_combout\ & ((\SU1|SLL64|Stage2_sig[17]~35_combout\) # ((\Y~347_combout\)))) # (!\SU1|SRL64|Equal8~1_combout\ & (((\SU1|SLL64|Stage2_sig[9]~74_combout\ & !\Y~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[17]~35_combout\,
	datab => \SU1|SLL64|Stage2_sig[9]~74_combout\,
	datac => \SU1|SRL64|Equal8~1_combout\,
	datad => \Y~347_combout\,
	combout => \Y~354_combout\);

-- Location: LCCOMB_X72_Y34_N6
\Y~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~355_combout\ = (\Y~354_combout\ & ((\SU1|SLL64|Y[33]~21_combout\) # ((!\Y~347_combout\)))) # (!\Y~354_combout\ & (((\Y~347_combout\ & \SU1|SLL64|Stage2_sig[9]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[33]~21_combout\,
	datab => \Y~354_combout\,
	datac => \Y~347_combout\,
	datad => \SU1|SLL64|Stage2_sig[9]~72_combout\,
	combout => \Y~355_combout\);

-- Location: LCCOMB_X74_Y30_N8
\Y~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~356_combout\ = (\Y~345_combout\ & (((\Y~355_combout\ & !\Y~346_combout\)))) # (!\Y~345_combout\ & ((\SU1|SRA_SRL_sig[49]~49_combout\) # ((\Y~346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[49]~49_combout\,
	datab => \Y~345_combout\,
	datac => \Y~355_combout\,
	datad => \Y~346_combout\,
	combout => \Y~356_combout\);

-- Location: LCCOMB_X75_Y30_N20
\Y~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~357_combout\ = (\Y~356_combout\ & (((\SU1|SgnExtUpper_sig[0]~4_combout\)) # (!\Y~346_combout\))) # (!\Y~356_combout\ & (\Y~346_combout\ & ((\AU1|Adder|Add0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~356_combout\,
	datab => \Y~346_combout\,
	datac => \SU1|SgnExtUpper_sig[0]~4_combout\,
	datad => \AU1|Adder|Add0~100_combout\,
	combout => \Y~357_combout\);

-- Location: LCCOMB_X75_Y30_N26
\Y~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~353_combout\ = (\B[49]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[49]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[49]~input_o\ & (\A[49]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[49]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[49]~input_o\,
	combout => \Y~353_combout\);

-- Location: LCCOMB_X75_Y30_N22
\Y~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~358_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y~353_combout\))) # (!\FuncClass[0]~input_o\ & (\Y~357_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y~357_combout\,
	datac => \Y~353_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~358_combout\);

-- Location: LCCOMB_X75_Y30_N8
\Y~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~359_combout\ = (\B[50]~input_o\ & ((\A[50]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[50]~input_o\ & (\A[50]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[50]~input_o\,
	datab => \A[50]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y~359_combout\);

-- Location: LCCOMB_X68_Y36_N4
\SU1|SLL64|Stage1_sig[51]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[51]~130_combout\ = (\SU1|SRL64|Stage1_sig[48]~158_combout\) # (\SU1|SRL64|Stage1_sig[48]~145_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~158_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~145_combout\,
	combout => \SU1|SLL64|Stage1_sig[51]~130_combout\);

-- Location: LCCOMB_X68_Y36_N28
\SU1|SLL64|Stage1_sig[50]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[50]~152_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~91_combout\) # ((\SU1|SRL64|Stage1_sig[48]~106_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[51]~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~91_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[51]~130_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~106_combout\,
	combout => \SU1|SLL64|Stage1_sig[50]~152_combout\);

-- Location: LCCOMB_X70_Y35_N2
\SU1|SLL64|Stage2_sig[10]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[10]~76_combout\ = (\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[42]~148_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[50]~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[50]~152_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage1_sig[42]~148_combout\,
	combout => \SU1|SLL64|Stage2_sig[10]~76_combout\);

-- Location: LCCOMB_X70_Y35_N16
\SU1|SLL64|Stage2_sig[10]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[10]~75_combout\ = (\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[38]~146_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[46]~150_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[46]~150_combout\,
	datad => \SU1|SLL64|Stage1_sig[38]~146_combout\,
	combout => \SU1|SLL64|Stage2_sig[10]~75_combout\);

-- Location: LCCOMB_X74_Y35_N26
\Y~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~360_combout\ = (\Y~347_combout\ & (((\SU1|SLL64|Stage2_sig[10]~75_combout\) # (\SU1|SRL64|Equal8~1_combout\)))) # (!\Y~347_combout\ & (\SU1|SLL64|Stage2_sig[10]~76_combout\ & ((!\SU1|SRL64|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~347_combout\,
	datab => \SU1|SLL64|Stage2_sig[10]~76_combout\,
	datac => \SU1|SLL64|Stage2_sig[10]~75_combout\,
	datad => \SU1|SRL64|Equal8~1_combout\,
	combout => \Y~360_combout\);

-- Location: LCCOMB_X74_Y35_N28
\Y~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~361_combout\ = (\SU1|SRL64|Equal8~1_combout\ & ((\Y~360_combout\ & (\SU1|SLL64|Y[34]~25_combout\)) # (!\Y~360_combout\ & ((\SU1|SLL64|Stage2_sig[18]~38_combout\))))) # (!\SU1|SRL64|Equal8~1_combout\ & (((\Y~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[34]~25_combout\,
	datab => \SU1|SRL64|Equal8~1_combout\,
	datac => \Y~360_combout\,
	datad => \SU1|SLL64|Stage2_sig[18]~38_combout\,
	combout => \Y~361_combout\);

-- Location: LCCOMB_X75_Y30_N10
\Y~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~362_combout\ = (\Y~345_combout\ & ((\Y~346_combout\ & ((\AU1|Adder|Add0~102_combout\))) # (!\Y~346_combout\ & (\Y~361_combout\)))) # (!\Y~345_combout\ & (((\Y~346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~361_combout\,
	datab => \Y~345_combout\,
	datac => \AU1|Adder|Add0~102_combout\,
	datad => \Y~346_combout\,
	combout => \Y~362_combout\);

-- Location: LCCOMB_X75_Y30_N28
\Y~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~363_combout\ = (\Y~345_combout\ & (((\Y~362_combout\)))) # (!\Y~345_combout\ & ((\Y~362_combout\ & ((\SU1|SgnExtUpper_sig[0]~4_combout\))) # (!\Y~362_combout\ & (\SU1|SRA_SRL_sig[50]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[50]~52_combout\,
	datab => \Y~345_combout\,
	datac => \SU1|SgnExtUpper_sig[0]~4_combout\,
	datad => \Y~362_combout\,
	combout => \Y~363_combout\);

-- Location: LCCOMB_X76_Y29_N30
\Y~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~364_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y~359_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y~363_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Y~359_combout\,
	datac => \Y~363_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Y~364_combout\);

-- Location: LCCOMB_X68_Y36_N22
\SU1|SLL64|Stage1_sig[51]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[51]~131_combout\ = (\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[51]~130_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~219_combout\) # ((\SU1|SRL64|Stage1_sig[48]~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~219_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[51]~130_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~207_combout\,
	combout => \SU1|SLL64|Stage1_sig[51]~131_combout\);

-- Location: LCCOMB_X74_Y36_N10
\SU1|SLL64|Stage2_sig[11]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[11]~78_combout\ = (\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[43]~121_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[51]~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SLL64|Stage1_sig[43]~121_combout\,
	datac => \SU1|SLL64|Stage1_sig[51]~131_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SLL64|Stage2_sig[11]~78_combout\);

-- Location: LCCOMB_X74_Y30_N2
\Y~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~366_combout\ = (\SU1|SRL64|Equal8~1_combout\ & ((\SU1|SLL64|Stage2_sig[19]~41_combout\) # ((\Y~347_combout\)))) # (!\SU1|SRL64|Equal8~1_combout\ & (((\SU1|SLL64|Stage2_sig[11]~78_combout\ & !\Y~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[19]~41_combout\,
	datab => \SU1|SRL64|Equal8~1_combout\,
	datac => \SU1|SLL64|Stage2_sig[11]~78_combout\,
	datad => \Y~347_combout\,
	combout => \Y~366_combout\);

-- Location: LCCOMB_X74_Y36_N0
\SU1|SLL64|Stage2_sig[11]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[11]~77_combout\ = (\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[39]~116_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[47]~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SLL64|Stage1_sig[39]~116_combout\,
	datac => \SU1|SLL64|Stage1_sig[47]~126_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SLL64|Stage2_sig[11]~77_combout\);

-- Location: LCCOMB_X74_Y30_N20
\Y~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~367_combout\ = (\Y~347_combout\ & ((\Y~366_combout\ & ((\SU1|SLL64|Y[35]~28_combout\))) # (!\Y~366_combout\ & (\SU1|SLL64|Stage2_sig[11]~77_combout\)))) # (!\Y~347_combout\ & (\Y~366_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~347_combout\,
	datab => \Y~366_combout\,
	datac => \SU1|SLL64|Stage2_sig[11]~77_combout\,
	datad => \SU1|SLL64|Y[35]~28_combout\,
	combout => \Y~367_combout\);

-- Location: LCCOMB_X74_Y30_N22
\Y~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~368_combout\ = (\Y~346_combout\ & (!\Y~345_combout\)) # (!\Y~346_combout\ & ((\Y~345_combout\ & ((\Y~367_combout\))) # (!\Y~345_combout\ & (\SU1|SRA_SRL_sig[51]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~346_combout\,
	datab => \Y~345_combout\,
	datac => \SU1|SRA_SRL_sig[51]~55_combout\,
	datad => \Y~367_combout\,
	combout => \Y~368_combout\);

-- Location: LCCOMB_X74_Y30_N16
\Y~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~369_combout\ = (\Y~346_combout\ & ((\Y~368_combout\ & (\SU1|SgnExtUpper_sig[0]~4_combout\)) # (!\Y~368_combout\ & ((\AU1|Adder|Add0~104_combout\))))) # (!\Y~346_combout\ & (((\Y~368_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~346_combout\,
	datab => \SU1|SgnExtUpper_sig[0]~4_combout\,
	datac => \Y~368_combout\,
	datad => \AU1|Adder|Add0~104_combout\,
	combout => \Y~369_combout\);

-- Location: LCCOMB_X81_Y29_N20
\Y~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~365_combout\ = (\B[51]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[51]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[51]~input_o\ & (\A[51]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[51]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[51]~input_o\,
	combout => \Y~365_combout\);

-- Location: LCCOMB_X81_Y29_N30
\Y~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~370_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y~365_combout\))) # (!\FuncClass[0]~input_o\ & (\Y~369_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~369_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Y~365_combout\,
	combout => \Y~370_combout\);

-- Location: LCCOMB_X68_Y34_N14
\SU1|SLL64|Stage1_sig[53]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[53]~132_combout\ = (\SU1|SRL64|Stage1_sig[48]~101_combout\) # (\SU1|SRL64|Stage1_sig[48]~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~101_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~93_combout\,
	combout => \SU1|SLL64|Stage1_sig[53]~132_combout\);

-- Location: LCCOMB_X68_Y36_N16
\SU1|SLL64|Stage1_sig[52]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[52]~133_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~219_combout\) # ((\SU1|SRL64|Stage1_sig[48]~207_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[53]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~219_combout\,
	datab => \B[0]~input_o\,
	datac => \SU1|SLL64|Stage1_sig[53]~132_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~207_combout\,
	combout => \SU1|SLL64|Stage1_sig[52]~133_combout\);

-- Location: LCCOMB_X70_Y35_N28
\SU1|SLL64|Stage2_sig[8]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[8]~79_combout\ = (\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[44]~123_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[52]~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[44]~123_combout\,
	datab => \SU1|SLL64|Stage1_sig[52]~133_combout\,
	datac => \B[3]~input_o\,
	combout => \SU1|SLL64|Stage2_sig[8]~79_combout\);

-- Location: LCCOMB_X73_Y32_N10
\Y~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~372_combout\ = (\SU1|SRL64|Equal8~1_combout\ & (((\Y~347_combout\)))) # (!\SU1|SRL64|Equal8~1_combout\ & ((\Y~347_combout\ & (\SU1|SLL64|Stage2_sig[8]~73_combout\)) # (!\Y~347_combout\ & ((\SU1|SLL64|Stage2_sig[8]~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[8]~73_combout\,
	datab => \SU1|SLL64|Stage2_sig[8]~79_combout\,
	datac => \SU1|SRL64|Equal8~1_combout\,
	datad => \Y~347_combout\,
	combout => \Y~372_combout\);

-- Location: LCCOMB_X73_Y32_N28
\Y~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~373_combout\ = (\Y~372_combout\ & ((\SU1|SLL64|Y[36]~31_combout\) # ((!\SU1|SRL64|Equal8~1_combout\)))) # (!\Y~372_combout\ & (((\SU1|SRL64|Equal8~1_combout\ & \SU1|SLL64|Stage2_sig[20]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~372_combout\,
	datab => \SU1|SLL64|Y[36]~31_combout\,
	datac => \SU1|SRL64|Equal8~1_combout\,
	datad => \SU1|SLL64|Stage2_sig[20]~44_combout\,
	combout => \Y~373_combout\);

-- Location: LCCOMB_X74_Y30_N18
\Y~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~374_combout\ = (\Y~345_combout\ & ((\Y~346_combout\ & ((\AU1|Adder|Add0~106_combout\))) # (!\Y~346_combout\ & (\Y~373_combout\)))) # (!\Y~345_combout\ & (((\Y~346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~373_combout\,
	datab => \Y~345_combout\,
	datac => \AU1|Adder|Add0~106_combout\,
	datad => \Y~346_combout\,
	combout => \Y~374_combout\);

-- Location: LCCOMB_X74_Y30_N28
\Y~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~375_combout\ = (\Y~345_combout\ & (((\Y~374_combout\)))) # (!\Y~345_combout\ & ((\Y~374_combout\ & ((\SU1|SgnExtUpper_sig[0]~4_combout\))) # (!\Y~374_combout\ & (\SU1|SRA_SRL_sig[52]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[52]~58_combout\,
	datab => \Y~345_combout\,
	datac => \SU1|SgnExtUpper_sig[0]~4_combout\,
	datad => \Y~374_combout\,
	combout => \Y~375_combout\);

-- Location: LCCOMB_X75_Y30_N30
\Y~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~371_combout\ = (\B[52]~input_o\ & ((\A[52]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[52]~input_o\ & (\A[52]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => \A[52]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y~371_combout\);

-- Location: LCCOMB_X75_Y30_N24
\Y~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~376_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y~371_combout\))) # (!\FuncClass[0]~input_o\ & (\Y~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y~375_combout\,
	datac => \Y~371_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~376_combout\);

-- Location: LCCOMB_X73_Y30_N24
\Y~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~377_combout\ = (\B[53]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[53]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[53]~input_o\ & (\A[53]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[53]~input_o\,
	combout => \Y~377_combout\);

-- Location: LCCOMB_X68_Y34_N0
\SU1|SLL64|Stage1_sig[54]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[54]~134_combout\ = (\SU1|SRL64|Stage1_sig[48]~90_combout\) # (\SU1|SRL64|Stage1_sig[48]~104_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~90_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~104_combout\,
	combout => \SU1|SLL64|Stage1_sig[54]~134_combout\);

-- Location: LCCOMB_X68_Y34_N28
\SU1|SLL64|Stage1_sig[53]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[53]~153_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~101_combout\) # ((\SU1|SRL64|Stage1_sig[48]~93_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[54]~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~101_combout\,
	datab => \SU1|SLL64|Stage1_sig[54]~134_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~93_combout\,
	combout => \SU1|SLL64|Stage1_sig[53]~153_combout\);

-- Location: LCCOMB_X74_Y34_N6
\SU1|SLL64|Stage2_sig[9]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[9]~80_combout\ = (\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[45]~149_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[53]~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[45]~149_combout\,
	datab => \SU1|SLL64|Stage1_sig[53]~153_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SLL64|Stage2_sig[9]~80_combout\);

-- Location: LCCOMB_X74_Y34_N16
\Y~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~378_combout\ = (\SU1|SRL64|Equal8~1_combout\ & ((\SU1|SLL64|Stage2_sig[21]~47_combout\) # ((\Y~347_combout\)))) # (!\SU1|SRL64|Equal8~1_combout\ & (((!\Y~347_combout\ & \SU1|SLL64|Stage2_sig[9]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[21]~47_combout\,
	datab => \SU1|SRL64|Equal8~1_combout\,
	datac => \Y~347_combout\,
	datad => \SU1|SLL64|Stage2_sig[9]~80_combout\,
	combout => \Y~378_combout\);

-- Location: LCCOMB_X74_Y34_N18
\Y~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~379_combout\ = (\Y~378_combout\ & (((\SU1|SLL64|Y[37]~60_combout\) # (!\Y~347_combout\)))) # (!\Y~378_combout\ & (\SU1|SLL64|Stage2_sig[9]~74_combout\ & (\Y~347_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[9]~74_combout\,
	datab => \Y~378_combout\,
	datac => \Y~347_combout\,
	datad => \SU1|SLL64|Y[37]~60_combout\,
	combout => \Y~379_combout\);

-- Location: LCCOMB_X73_Y30_N10
\Y~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~380_combout\ = (\Y~346_combout\ & (!\Y~345_combout\)) # (!\Y~346_combout\ & ((\Y~345_combout\ & ((\Y~379_combout\))) # (!\Y~345_combout\ & (\SU1|SRA_SRL_sig[53]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~346_combout\,
	datab => \Y~345_combout\,
	datac => \SU1|SRA_SRL_sig[53]~60_combout\,
	datad => \Y~379_combout\,
	combout => \Y~380_combout\);

-- Location: LCCOMB_X73_Y30_N4
\Y~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~381_combout\ = (\Y~346_combout\ & ((\Y~380_combout\ & ((\SU1|SgnExtUpper_sig[0]~4_combout\))) # (!\Y~380_combout\ & (\AU1|Adder|Add0~108_combout\)))) # (!\Y~346_combout\ & (((\Y~380_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~346_combout\,
	datab => \AU1|Adder|Add0~108_combout\,
	datac => \SU1|SgnExtUpper_sig[0]~4_combout\,
	datad => \Y~380_combout\,
	combout => \Y~381_combout\);

-- Location: LCCOMB_X73_Y30_N6
\Y~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~382_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y~377_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y~381_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y~377_combout\,
	datac => \Y~381_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~382_combout\);

-- Location: LCCOMB_X68_Y34_N2
\SU1|SLL64|Stage1_sig[54]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[54]~135_combout\ = (\B[0]~input_o\ & (((\SU1|SLL64|Stage1_sig[54]~134_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~148_combout\) # ((\SU1|SRL64|Stage1_sig[48]~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~148_combout\,
	datab => \SU1|SLL64|Stage1_sig[54]~134_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~144_combout\,
	combout => \SU1|SLL64|Stage1_sig[54]~135_combout\);

-- Location: LCCOMB_X70_Y35_N14
\SU1|SLL64|Stage2_sig[10]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[10]~81_combout\ = (\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[46]~150_combout\))) # (!\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[54]~135_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[54]~135_combout\,
	datac => \SU1|SLL64|Stage1_sig[46]~150_combout\,
	combout => \SU1|SLL64|Stage2_sig[10]~81_combout\);

-- Location: LCCOMB_X74_Y35_N22
\Y~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~384_combout\ = (\Y~347_combout\ & ((\SU1|SLL64|Stage2_sig[10]~76_combout\) # ((\SU1|SRL64|Equal8~1_combout\)))) # (!\Y~347_combout\ & (((\SU1|SLL64|Stage2_sig[10]~81_combout\ & !\SU1|SRL64|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~347_combout\,
	datab => \SU1|SLL64|Stage2_sig[10]~76_combout\,
	datac => \SU1|SLL64|Stage2_sig[10]~81_combout\,
	datad => \SU1|SRL64|Equal8~1_combout\,
	combout => \Y~384_combout\);

-- Location: LCCOMB_X74_Y35_N0
\Y~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~385_combout\ = (\Y~384_combout\ & ((\SU1|SLL64|Y[38]~37_combout\) # ((!\SU1|SRL64|Equal8~1_combout\)))) # (!\Y~384_combout\ & (((\SU1|SLL64|Stage2_sig[22]~49_combout\ & \SU1|SRL64|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~384_combout\,
	datab => \SU1|SLL64|Y[38]~37_combout\,
	datac => \SU1|SLL64|Stage2_sig[22]~49_combout\,
	datad => \SU1|SRL64|Equal8~1_combout\,
	combout => \Y~385_combout\);

-- Location: LCCOMB_X75_Y32_N16
\Y~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~386_combout\ = (\Y~345_combout\ & ((\Y~346_combout\ & (\AU1|Adder|Add0~110_combout\)) # (!\Y~346_combout\ & ((\Y~385_combout\))))) # (!\Y~345_combout\ & (\Y~346_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~345_combout\,
	datab => \Y~346_combout\,
	datac => \AU1|Adder|Add0~110_combout\,
	datad => \Y~385_combout\,
	combout => \Y~386_combout\);

-- Location: LCCOMB_X75_Y32_N10
\Y~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~387_combout\ = (\Y~345_combout\ & (((\Y~386_combout\)))) # (!\Y~345_combout\ & ((\Y~386_combout\ & (\SU1|SgnExtUpper_sig[0]~4_combout\)) # (!\Y~386_combout\ & ((\SU1|SRA_SRL_sig[54]~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SgnExtUpper_sig[0]~4_combout\,
	datab => \SU1|SRA_SRL_sig[54]~62_combout\,
	datac => \Y~345_combout\,
	datad => \Y~386_combout\,
	combout => \Y~387_combout\);

-- Location: LCCOMB_X76_Y35_N20
\Y~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~383_combout\ = (\B[54]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[54]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[54]~input_o\ & (\A[54]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[54]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[54]~input_o\,
	combout => \Y~383_combout\);

-- Location: LCCOMB_X75_Y32_N12
\Y~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~388_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y~383_combout\))) # (!\FuncClass[0]~input_o\ & (\Y~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~387_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y~383_combout\,
	combout => \Y~388_combout\);

-- Location: LCCOMB_X68_Y34_N12
\SU1|SLL64|Stage1_sig[55]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[55]~136_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~148_combout\) # (\SU1|SRL64|Stage1_sig[48]~144_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~148_combout\,
	datab => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~144_combout\,
	combout => \SU1|SLL64|Stage1_sig[55]~136_combout\);

-- Location: LCCOMB_X68_Y34_N30
\SU1|SLL64|Stage1_sig[55]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage1_sig[55]~137_combout\ = (\SU1|SLL64|Stage1_sig[55]~136_combout\) # ((!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~222_combout\) # (\SU1|SRL64|Stage1_sig[48]~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[55]~136_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~222_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~218_combout\,
	combout => \SU1|SLL64|Stage1_sig[55]~137_combout\);

-- Location: LCCOMB_X75_Y36_N30
\SU1|SLL64|Stage2_sig[11]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[11]~82_combout\ = (\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[47]~126_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage1_sig[55]~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SLL64|Stage1_sig[47]~126_combout\,
	datac => \SU1|SLL64|Stage1_sig[55]~137_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SLL64|Stage2_sig[11]~82_combout\);

-- Location: LCCOMB_X73_Y36_N14
\Y~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~390_combout\ = (\Y~347_combout\ & (\SU1|SRL64|Equal8~1_combout\)) # (!\Y~347_combout\ & ((\SU1|SRL64|Equal8~1_combout\ & (\SU1|SLL64|Stage2_sig[23]~52_combout\)) # (!\SU1|SRL64|Equal8~1_combout\ & ((\SU1|SLL64|Stage2_sig[11]~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~347_combout\,
	datab => \SU1|SRL64|Equal8~1_combout\,
	datac => \SU1|SLL64|Stage2_sig[23]~52_combout\,
	datad => \SU1|SLL64|Stage2_sig[11]~82_combout\,
	combout => \Y~390_combout\);

-- Location: LCCOMB_X74_Y36_N20
\Y~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~391_combout\ = (\Y~347_combout\ & ((\Y~390_combout\ & (\SU1|SLL64|Y[39]~40_combout\)) # (!\Y~390_combout\ & ((\SU1|SLL64|Stage2_sig[11]~78_combout\))))) # (!\Y~347_combout\ & (((\Y~390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[39]~40_combout\,
	datab => \SU1|SLL64|Stage2_sig[11]~78_combout\,
	datac => \Y~347_combout\,
	datad => \Y~390_combout\,
	combout => \Y~391_combout\);

-- Location: LCCOMB_X74_Y32_N0
\Y~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~392_combout\ = (\Y~346_combout\ & (((!\Y~345_combout\)))) # (!\Y~346_combout\ & ((\Y~345_combout\ & ((\Y~391_combout\))) # (!\Y~345_combout\ & (\SU1|SRA_SRL_sig[55]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~346_combout\,
	datab => \SU1|SRA_SRL_sig[55]~64_combout\,
	datac => \Y~345_combout\,
	datad => \Y~391_combout\,
	combout => \Y~392_combout\);

-- Location: LCCOMB_X75_Y29_N24
\Y~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~393_combout\ = (\Y~392_combout\ & (((\SU1|SgnExtUpper_sig[0]~4_combout\)) # (!\Y~346_combout\))) # (!\Y~392_combout\ & (\Y~346_combout\ & (\AU1|Adder|Add0~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~392_combout\,
	datab => \Y~346_combout\,
	datac => \AU1|Adder|Add0~112_combout\,
	datad => \SU1|SgnExtUpper_sig[0]~4_combout\,
	combout => \Y~393_combout\);

-- Location: LCCOMB_X75_Y29_N22
\Y~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~389_combout\ = (\B[55]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[55]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[55]~input_o\ & (\A[55]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[55]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[55]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y~389_combout\);

-- Location: LCCOMB_X75_Y29_N2
\Y~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~394_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y~389_combout\))) # (!\FuncClass[0]~input_o\ & (\Y~393_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y~393_combout\,
	datac => \Y~389_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~394_combout\);

-- Location: LCCOMB_X68_Y34_N24
\SU1|SLL64|Stage2_sig[9]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[9]~83_combout\ = (\SU1|SRL64|Stage1_sig[48]~88_combout\) # (\SU1|SRL64|Stage1_sig[48]~100_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~88_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~100_combout\,
	combout => \SU1|SLL64|Stage2_sig[9]~83_combout\);

-- Location: LCCOMB_X68_Y34_N18
\SU1|SLL64|Stage2_sig[8]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[8]~84_combout\ = (\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~222_combout\) # (\SU1|SRL64|Stage1_sig[48]~218_combout\)))) # (!\B[0]~input_o\ & (\SU1|SLL64|Stage2_sig[9]~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[9]~83_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~222_combout\,
	datac => \B[0]~input_o\,
	datad => \SU1|SRL64|Stage1_sig[48]~218_combout\,
	combout => \SU1|SLL64|Stage2_sig[8]~84_combout\);

-- Location: LCCOMB_X67_Y34_N28
\SU1|SLL64|Stage2_sig[8]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[8]~85_combout\ = (\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[48]~128_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage2_sig[8]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[48]~128_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage2_sig[8]~84_combout\,
	combout => \SU1|SLL64|Stage2_sig[8]~85_combout\);

-- Location: LCCOMB_X73_Y32_N30
\Y~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~396_combout\ = (\SU1|SRL64|Equal8~1_combout\ & (((\Y~347_combout\)))) # (!\SU1|SRL64|Equal8~1_combout\ & ((\Y~347_combout\ & ((\SU1|SLL64|Stage2_sig[8]~79_combout\))) # (!\Y~347_combout\ & (\SU1|SLL64|Stage2_sig[8]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[8]~85_combout\,
	datab => \SU1|SLL64|Stage2_sig[8]~79_combout\,
	datac => \SU1|SRL64|Equal8~1_combout\,
	datad => \Y~347_combout\,
	combout => \Y~396_combout\);

-- Location: LCCOMB_X73_Y32_N16
\Y~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~397_combout\ = (\SU1|SRL64|Equal8~1_combout\ & ((\Y~396_combout\ & (\SU1|SLL64|Y[40]~61_combout\)) # (!\Y~396_combout\ & ((\SU1|SLL64|Stage2_sig[24]~54_combout\))))) # (!\SU1|SRL64|Equal8~1_combout\ & (((\Y~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Equal8~1_combout\,
	datab => \SU1|SLL64|Y[40]~61_combout\,
	datac => \Y~396_combout\,
	datad => \SU1|SLL64|Stage2_sig[24]~54_combout\,
	combout => \Y~397_combout\);

-- Location: LCCOMB_X75_Y32_N6
\Y~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~398_combout\ = (\Y~345_combout\ & ((\Y~346_combout\ & (\AU1|Adder|Add0~114_combout\)) # (!\Y~346_combout\ & ((\Y~397_combout\))))) # (!\Y~345_combout\ & (\Y~346_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~345_combout\,
	datab => \Y~346_combout\,
	datac => \AU1|Adder|Add0~114_combout\,
	datad => \Y~397_combout\,
	combout => \Y~398_combout\);

-- Location: LCCOMB_X75_Y32_N24
\Y~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~399_combout\ = (\Y~345_combout\ & (((\Y~398_combout\)))) # (!\Y~345_combout\ & ((\Y~398_combout\ & (\SU1|SgnExtUpper_sig[0]~4_combout\)) # (!\Y~398_combout\ & ((\SU1|SRA_SRL_sig[56]~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SgnExtUpper_sig[0]~4_combout\,
	datab => \SU1|SRA_SRL_sig[56]~66_combout\,
	datac => \Y~345_combout\,
	datad => \Y~398_combout\,
	combout => \Y~399_combout\);

-- Location: LCCOMB_X75_Y34_N28
\Y~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~395_combout\ = (\B[56]~input_o\ & ((\A[56]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[56]~input_o\ & (\A[56]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[56]~input_o\,
	combout => \Y~395_combout\);

-- Location: LCCOMB_X75_Y32_N18
\Y~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~400_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y~395_combout\))) # (!\FuncClass[0]~input_o\ & (\Y~399_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y~399_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Y~395_combout\,
	combout => \Y~400_combout\);

-- Location: LCCOMB_X75_Y29_N12
\Y~401\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~401_combout\ = (\B[57]~input_o\ & ((\A[57]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[57]~input_o\ & (\A[57]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[57]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y~401_combout\);

-- Location: LCCOMB_X67_Y34_N30
\SU1|SLL64|Stage2_sig[10]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[10]~86_combout\ = (\SU1|SRL64|Stage1_sig[48]~103_combout\) # (\SU1|SRL64|Stage1_sig[48]~85_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~103_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~85_combout\,
	combout => \SU1|SLL64|Stage2_sig[10]~86_combout\);

-- Location: LCCOMB_X67_Y34_N24
\SU1|SLL64|Stage2_sig[9]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[9]~87_combout\ = (!\B[3]~input_o\ & ((\B[0]~input_o\ & ((\SU1|SLL64|Stage2_sig[9]~83_combout\))) # (!\B[0]~input_o\ & (\SU1|SLL64|Stage2_sig[10]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SU1|SLL64|Stage2_sig[10]~86_combout\,
	datad => \SU1|SLL64|Stage2_sig[9]~83_combout\,
	combout => \SU1|SLL64|Stage2_sig[9]~87_combout\);

-- Location: LCCOMB_X67_Y34_N2
\SU1|SLL64|Stage2_sig[9]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[9]~88_combout\ = (\SU1|SLL64|Stage2_sig[9]~87_combout\) # ((\SU1|SLL64|Stage1_sig[49]~151_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SLL64|Stage1_sig[49]~151_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage2_sig[9]~87_combout\,
	combout => \SU1|SLL64|Stage2_sig[9]~88_combout\);

-- Location: LCCOMB_X74_Y34_N20
\Y~402\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~402_combout\ = (\Y~347_combout\ & (((\SU1|SRL64|Equal8~1_combout\)))) # (!\Y~347_combout\ & ((\SU1|SRL64|Equal8~1_combout\ & (\SU1|SLL64|Stage2_sig[25]~57_combout\)) # (!\SU1|SRL64|Equal8~1_combout\ & ((\SU1|SLL64|Stage2_sig[9]~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[25]~57_combout\,
	datab => \SU1|SLL64|Stage2_sig[9]~88_combout\,
	datac => \Y~347_combout\,
	datad => \SU1|SRL64|Equal8~1_combout\,
	combout => \Y~402_combout\);

-- Location: LCCOMB_X74_Y34_N30
\Y~403\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~403_combout\ = (\Y~402_combout\ & ((\SU1|SLL64|Y[41]~62_combout\) # ((!\Y~347_combout\)))) # (!\Y~402_combout\ & (((\Y~347_combout\ & \SU1|SLL64|Stage2_sig[9]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[41]~62_combout\,
	datab => \Y~402_combout\,
	datac => \Y~347_combout\,
	datad => \SU1|SLL64|Stage2_sig[9]~80_combout\,
	combout => \Y~403_combout\);

-- Location: LCCOMB_X75_Y32_N20
\Y~404\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~404_combout\ = (\Y~346_combout\ & (((!\Y~345_combout\)))) # (!\Y~346_combout\ & ((\Y~345_combout\ & ((\Y~403_combout\))) # (!\Y~345_combout\ & (\SU1|SRA_SRL_sig[57]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[57]~68_combout\,
	datab => \Y~346_combout\,
	datac => \Y~345_combout\,
	datad => \Y~403_combout\,
	combout => \Y~404_combout\);

-- Location: LCCOMB_X75_Y29_N30
\Y~405\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~405_combout\ = (\Y~404_combout\ & (((\SU1|SgnExtUpper_sig[0]~4_combout\)) # (!\Y~346_combout\))) # (!\Y~404_combout\ & (\Y~346_combout\ & ((\AU1|Adder|Add0~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~404_combout\,
	datab => \Y~346_combout\,
	datac => \SU1|SgnExtUpper_sig[0]~4_combout\,
	datad => \AU1|Adder|Add0~116_combout\,
	combout => \Y~405_combout\);

-- Location: LCCOMB_X75_Y29_N8
\Y~406\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~406_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y~401_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y~405_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~401_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \Y~405_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~406_combout\);

-- Location: LCCOMB_X67_Y34_N12
\SU1|SLL64|Stage2_sig[10]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[10]~89_combout\ = (\B[0]~input_o\ & (((\SU1|SLL64|Stage2_sig[10]~86_combout\)))) # (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~147_combout\) # ((\SU1|SRL64|Stage1_sig[48]~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[48]~147_combout\,
	datac => \SU1|SLL64|Stage2_sig[10]~86_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~142_combout\,
	combout => \SU1|SLL64|Stage2_sig[10]~89_combout\);

-- Location: LCCOMB_X67_Y34_N22
\SU1|SLL64|Stage2_sig[10]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[10]~90_combout\ = (\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[50]~152_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage2_sig[10]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[50]~152_combout\,
	datac => \B[3]~input_o\,
	datad => \SU1|SLL64|Stage2_sig[10]~89_combout\,
	combout => \SU1|SLL64|Stage2_sig[10]~90_combout\);

-- Location: LCCOMB_X74_Y35_N10
\Y~408\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~408_combout\ = (\Y~347_combout\ & (((\SU1|SLL64|Stage2_sig[10]~81_combout\) # (\SU1|SRL64|Equal8~1_combout\)))) # (!\Y~347_combout\ & (\SU1|SLL64|Stage2_sig[10]~90_combout\ & ((!\SU1|SRL64|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage2_sig[10]~90_combout\,
	datab => \SU1|SLL64|Stage2_sig[10]~81_combout\,
	datac => \Y~347_combout\,
	datad => \SU1|SRL64|Equal8~1_combout\,
	combout => \Y~408_combout\);

-- Location: LCCOMB_X74_Y32_N18
\Y~409\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~409_combout\ = (\Y~408_combout\ & ((\SU1|SLL64|Y[42]~63_combout\) # ((!\SU1|SRL64|Equal8~1_combout\)))) # (!\Y~408_combout\ & (((\SU1|SLL64|Stage2_sig[26]~59_combout\ & \SU1|SRL64|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[42]~63_combout\,
	datab => \Y~408_combout\,
	datac => \SU1|SLL64|Stage2_sig[26]~59_combout\,
	datad => \SU1|SRL64|Equal8~1_combout\,
	combout => \Y~409_combout\);

-- Location: LCCOMB_X74_Y32_N12
\Y~410\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~410_combout\ = (\Y~345_combout\ & ((\Y~346_combout\ & (\AU1|Adder|Add0~118_combout\)) # (!\Y~346_combout\ & ((\Y~409_combout\))))) # (!\Y~345_combout\ & (((\Y~346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~118_combout\,
	datab => \Y~345_combout\,
	datac => \Y~346_combout\,
	datad => \Y~409_combout\,
	combout => \Y~410_combout\);

-- Location: LCCOMB_X74_Y32_N14
\Y~411\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~411_combout\ = (\Y~410_combout\ & ((\SU1|SgnExtUpper_sig[0]~4_combout\) # ((\Y~345_combout\)))) # (!\Y~410_combout\ & (((!\Y~345_combout\ & \SU1|SRA_SRL_sig[58]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~410_combout\,
	datab => \SU1|SgnExtUpper_sig[0]~4_combout\,
	datac => \Y~345_combout\,
	datad => \SU1|SRA_SRL_sig[58]~70_combout\,
	combout => \Y~411_combout\);

-- Location: LCCOMB_X81_Y29_N16
\Y~407\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~407_combout\ = (\B[58]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[58]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[58]~input_o\ & (\A[58]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => \Y~407_combout\);

-- Location: LCCOMB_X81_Y29_N10
\Y~412\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~412_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y~407_combout\))) # (!\FuncClass[0]~input_o\ & (\Y~411_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~411_combout\,
	datab => \Y~407_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Y~412_combout\);

-- Location: LCCOMB_X67_Y34_N8
\SU1|SRL64|Stage1_sig[48]~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~268_combout\ = (\SU1|SRL64|Stage1_sig[48]~221_combout\) # (\SU1|SRL64|Stage1_sig[48]~214_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~221_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~214_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~268_combout\);

-- Location: LCCOMB_X67_Y34_N26
\SU1|SLL64|Stage2_sig[11]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[11]~91_combout\ = (\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~147_combout\) # ((\SU1|SRL64|Stage1_sig[48]~142_combout\)))) # (!\B[0]~input_o\ & (((\SU1|SRL64|Stage1_sig[48]~268_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SU1|SRL64|Stage1_sig[48]~147_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~268_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~142_combout\,
	combout => \SU1|SLL64|Stage2_sig[11]~91_combout\);

-- Location: LCCOMB_X73_Y36_N0
\SU1|SLL64|Stage2_sig[11]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SLL64|Stage2_sig[11]~92_combout\ = (\B[3]~input_o\ & (\SU1|SLL64|Stage1_sig[51]~131_combout\)) # (!\B[3]~input_o\ & ((\SU1|SLL64|Stage2_sig[11]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[51]~131_combout\,
	datab => \SU1|SLL64|Stage2_sig[11]~91_combout\,
	datad => \B[3]~input_o\,
	combout => \SU1|SLL64|Stage2_sig[11]~92_combout\);

-- Location: LCCOMB_X73_Y36_N10
\Y~414\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~414_combout\ = (\Y~347_combout\ & (((\SU1|SRL64|Equal8~1_combout\)))) # (!\Y~347_combout\ & ((\SU1|SRL64|Equal8~1_combout\ & (\SU1|SLL64|Stage2_sig[27]~62_combout\)) # (!\SU1|SRL64|Equal8~1_combout\ & ((\SU1|SLL64|Stage2_sig[11]~92_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~347_combout\,
	datab => \SU1|SLL64|Stage2_sig[27]~62_combout\,
	datac => \SU1|SRL64|Equal8~1_combout\,
	datad => \SU1|SLL64|Stage2_sig[11]~92_combout\,
	combout => \Y~414_combout\);

-- Location: LCCOMB_X73_Y36_N20
\Y~415\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~415_combout\ = (\Y~347_combout\ & ((\Y~414_combout\ & (\SU1|SLL64|Y[43]~64_combout\)) # (!\Y~414_combout\ & ((\SU1|SLL64|Stage2_sig[11]~82_combout\))))) # (!\Y~347_combout\ & (((\Y~414_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[43]~64_combout\,
	datab => \SU1|SLL64|Stage2_sig[11]~82_combout\,
	datac => \Y~347_combout\,
	datad => \Y~414_combout\,
	combout => \Y~415_combout\);

-- Location: LCCOMB_X75_Y32_N30
\Y~416\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~416_combout\ = (\Y~345_combout\ & (((\Y~415_combout\ & !\Y~346_combout\)))) # (!\Y~345_combout\ & ((\SU1|SRA_SRL_sig[59]~72_combout\) # ((\Y~346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[59]~72_combout\,
	datab => \Y~415_combout\,
	datac => \Y~345_combout\,
	datad => \Y~346_combout\,
	combout => \Y~416_combout\);

-- Location: LCCOMB_X75_Y32_N0
\Y~417\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~417_combout\ = (\Y~416_combout\ & (((\SU1|SgnExtUpper_sig[0]~4_combout\)) # (!\Y~346_combout\))) # (!\Y~416_combout\ & (\Y~346_combout\ & ((\AU1|Adder|Add0~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~416_combout\,
	datab => \Y~346_combout\,
	datac => \SU1|SgnExtUpper_sig[0]~4_combout\,
	datad => \AU1|Adder|Add0~120_combout\,
	combout => \Y~417_combout\);

-- Location: LCCOMB_X77_Y32_N8
\Y~413\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~413_combout\ = (\B[59]~input_o\ & ((\A[59]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[59]~input_o\ & (\A[59]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[59]~input_o\,
	datab => \A[59]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y~413_combout\);

-- Location: LCCOMB_X75_Y32_N2
\Y~418\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~418_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y~413_combout\))) # (!\FuncClass[0]~input_o\ & (\Y~417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y~417_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Y~413_combout\,
	combout => \Y~418_combout\);

-- Location: LCCOMB_X70_Y30_N30
\Y~419\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~419_combout\ = (\B[4]~input_o\) # (!\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \B[4]~input_o\,
	combout => \Y~419_combout\);

-- Location: LCCOMB_X72_Y30_N28
\Y~420\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~420_combout\ = ((\B[5]~input_o\ & (!\B[4]~input_o\ & !\ExtWord~input_o\))) # (!\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~420_combout\);

-- Location: LCCOMB_X66_Y34_N28
\SU1|SRL64|Stage1_sig[48]~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~269_combout\ = (\SU1|SRL64|Stage1_sig[48]~98_combout\) # (\SU1|SRL64|Stage1_sig[48]~87_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SU1|SRL64|Stage1_sig[48]~98_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~87_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~269_combout\);

-- Location: LCCOMB_X70_Y30_N8
\Y~421\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~421_combout\ = (\Y~11_combout\ & (((!\SU1|SRA64|Stage2_sig[52]~62_combout\)))) # (!\Y~11_combout\ & ((\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\SU1|SRL64|Stage1_sig[48]~269_combout\))) # (!\SU1|SRA64|Stage2_sig[52]~62_combout\ & 
-- (\SU1|SLL64|Stage1_sig[52]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[52]~133_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~269_combout\,
	datac => \Y~11_combout\,
	datad => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	combout => \Y~421_combout\);

-- Location: LCCOMB_X70_Y30_N10
\Y~422\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~422_combout\ = (\Y~11_combout\ & ((\Y~421_combout\ & ((\SU1|SLL64|Stage2_sig[8]~85_combout\))) # (!\Y~421_combout\ & (\SU1|SRL64|Stage1_sig[48]~268_combout\)))) # (!\Y~11_combout\ & (\Y~421_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~11_combout\,
	datab => \Y~421_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~268_combout\,
	datad => \SU1|SLL64|Stage2_sig[8]~85_combout\,
	combout => \Y~422_combout\);

-- Location: LCCOMB_X70_Y30_N28
\Y~423\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~423_combout\ = (\Y~419_combout\ & (((\Y~420_combout\)))) # (!\Y~419_combout\ & ((\Y~420_combout\ & (\SU1|SLL64|Stage2_sig[28]~64_combout\)) # (!\Y~420_combout\ & ((\Y~422_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~419_combout\,
	datab => \SU1|SLL64|Stage2_sig[28]~64_combout\,
	datac => \Y~420_combout\,
	datad => \Y~422_combout\,
	combout => \Y~423_combout\);

-- Location: LCCOMB_X70_Y30_N14
\Y~424\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~424_combout\ = (\Y~423_combout\ & ((\AU1|Adder|Add0~122_combout\) # ((!\Y~419_combout\)))) # (!\Y~423_combout\ & (((\Y~419_combout\ & \SU1|SLL64|Y[44]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~122_combout\,
	datab => \Y~423_combout\,
	datac => \Y~419_combout\,
	datad => \SU1|SLL64|Y[44]~65_combout\,
	combout => \Y~424_combout\);

-- Location: LCCOMB_X75_Y29_N20
\Y~426\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~426_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\) # (\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y~426_combout\);

-- Location: LCCOMB_X75_Y29_N14
\Y~427\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~427_combout\ = (!\FuncClass[1]~input_o\ & (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\) # (\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~427_combout\);

-- Location: LCCOMB_X75_Y29_N18
\Y~425\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~425_combout\ = (\B[60]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[60]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[60]~input_o\ & (\A[60]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[60]~input_o\,
	datad => \A[60]~input_o\,
	combout => \Y~425_combout\);

-- Location: LCCOMB_X75_Y29_N0
\Y~428\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~428_combout\ = (\Y~426_combout\ & ((\Y~427_combout\ & (\SU1|SgnExtUpper_sig[0]~4_combout\)) # (!\Y~427_combout\ & ((\Y~425_combout\))))) # (!\Y~426_combout\ & (((\Y~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SgnExtUpper_sig[0]~4_combout\,
	datab => \Y~426_combout\,
	datac => \Y~427_combout\,
	datad => \Y~425_combout\,
	combout => \Y~428_combout\);

-- Location: LCCOMB_X74_Y30_N30
\Y~429\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~429_combout\ = (\Y~428_combout\ & (((\SU1|SRA_SRL_sig[60]~73_combout\) # (!\Y~272_combout\)))) # (!\Y~428_combout\ & (\Y~424_combout\ & ((\Y~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~424_combout\,
	datab => \Y~428_combout\,
	datac => \SU1|SRA_SRL_sig[60]~73_combout\,
	datad => \Y~272_combout\,
	combout => \Y~429_combout\);

-- Location: LCCOMB_X65_Y34_N6
\SU1|SRL64|Stage1_sig[48]~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~270_combout\ = (\SU1|SRL64|Stage1_sig[48]~97_combout\) # (\SU1|SRL64|Stage1_sig[48]~84_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SU1|SRL64|Stage1_sig[48]~97_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~84_combout\,
	combout => \SU1|SRL64|Stage1_sig[48]~270_combout\);

-- Location: LCCOMB_X70_Y30_N0
\Y~430\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~430_combout\ = (\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\Y~11_combout\ & ((\SU1|SRL64|Stage1_sig[48]~269_combout\))) # (!\Y~11_combout\ & (\SU1|SRL64|Stage1_sig[48]~270_combout\)))) # (!\SU1|SRA64|Stage2_sig[52]~62_combout\ & (((\Y~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	datab => \SU1|SRL64|Stage1_sig[48]~270_combout\,
	datac => \Y~11_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~269_combout\,
	combout => \Y~430_combout\);

-- Location: LCCOMB_X70_Y30_N2
\Y~431\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~431_combout\ = (\Y~430_combout\ & (((\SU1|SLL64|Stage2_sig[9]~88_combout\) # (\SU1|SRA64|Stage2_sig[52]~62_combout\)))) # (!\Y~430_combout\ & (\SU1|SLL64|Stage1_sig[53]~153_combout\ & ((!\SU1|SRA64|Stage2_sig[52]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Stage1_sig[53]~153_combout\,
	datab => \Y~430_combout\,
	datac => \SU1|SLL64|Stage2_sig[9]~88_combout\,
	datad => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	combout => \Y~431_combout\);

-- Location: LCCOMB_X70_Y30_N12
\Y~432\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~432_combout\ = (\Y~420_combout\ & (((\Y~419_combout\)))) # (!\Y~420_combout\ & ((\Y~419_combout\ & (\SU1|SLL64|Y[45]~52_combout\)) # (!\Y~419_combout\ & ((\Y~431_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[45]~52_combout\,
	datab => \Y~420_combout\,
	datac => \Y~419_combout\,
	datad => \Y~431_combout\,
	combout => \Y~432_combout\);

-- Location: LCCOMB_X70_Y30_N6
\Y~433\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~433_combout\ = (\Y~420_combout\ & ((\Y~432_combout\ & (\AU1|Adder|Add0~124_combout\)) # (!\Y~432_combout\ & ((\SU1|SLL64|Stage2_sig[29]~66_combout\))))) # (!\Y~420_combout\ & (((\Y~432_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~124_combout\,
	datab => \SU1|SLL64|Stage2_sig[29]~66_combout\,
	datac => \Y~420_combout\,
	datad => \Y~432_combout\,
	combout => \Y~433_combout\);

-- Location: LCCOMB_X75_Y29_N26
\Y~434\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~434_combout\ = (\B[61]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[61]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[61]~input_o\ & (\A[61]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[61]~input_o\,
	datad => \B[61]~input_o\,
	combout => \Y~434_combout\);

-- Location: LCCOMB_X75_Y29_N4
\Y~435\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~435_combout\ = (\Y~426_combout\ & ((\Y~427_combout\ & ((\SU1|SgnExtUpper_sig[0]~4_combout\))) # (!\Y~427_combout\ & (\Y~434_combout\)))) # (!\Y~426_combout\ & (((\Y~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~434_combout\,
	datab => \Y~426_combout\,
	datac => \Y~427_combout\,
	datad => \SU1|SgnExtUpper_sig[0]~4_combout\,
	combout => \Y~435_combout\);

-- Location: LCCOMB_X74_Y30_N0
\Y~436\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~436_combout\ = (\Y~272_combout\ & ((\Y~435_combout\ & (\SU1|SRA_SRL_sig[61]~75_combout\)) # (!\Y~435_combout\ & ((\Y~433_combout\))))) # (!\Y~272_combout\ & (((\Y~435_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRA_SRL_sig[61]~75_combout\,
	datab => \Y~272_combout\,
	datac => \Y~433_combout\,
	datad => \Y~435_combout\,
	combout => \Y~436_combout\);

-- Location: LCCOMB_X66_Y34_N6
\SU1|SRL64|Stage1_sig[48]~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \SU1|SRL64|Stage1_sig[48]~271_combout\ = (\SU1|SRL64|Stage1_sig[48]~141_combout\) # ((\SU1|X_sig[62]~3_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|X_sig[62]~3_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~141_combout\,
	datad => \B[1]~input_o\,
	combout => \SU1|SRL64|Stage1_sig[48]~271_combout\);

-- Location: LCCOMB_X70_Y30_N24
\Y~437\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~437_combout\ = (\Y~11_combout\ & (((!\SU1|SRA64|Stage2_sig[52]~62_combout\)))) # (!\Y~11_combout\ & ((\SU1|SRA64|Stage2_sig[52]~62_combout\ & ((\SU1|SRL64|Stage1_sig[48]~271_combout\))) # (!\SU1|SRA64|Stage2_sig[52]~62_combout\ & 
-- (\SU1|SLL64|Stage1_sig[54]~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~11_combout\,
	datab => \SU1|SLL64|Stage1_sig[54]~135_combout\,
	datac => \SU1|SRL64|Stage1_sig[48]~271_combout\,
	datad => \SU1|SRA64|Stage2_sig[52]~62_combout\,
	combout => \Y~437_combout\);

-- Location: LCCOMB_X70_Y30_N26
\Y~438\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~438_combout\ = (\Y~437_combout\ & ((\SU1|SLL64|Stage2_sig[10]~90_combout\) # ((!\Y~11_combout\)))) # (!\Y~437_combout\ & (((\Y~11_combout\ & \SU1|SRL64|Stage1_sig[48]~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~437_combout\,
	datab => \SU1|SLL64|Stage2_sig[10]~90_combout\,
	datac => \Y~11_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~270_combout\,
	combout => \Y~438_combout\);

-- Location: LCCOMB_X70_Y30_N20
\Y~439\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~439_combout\ = (\Y~419_combout\ & (((\Y~420_combout\)))) # (!\Y~419_combout\ & ((\Y~420_combout\ & ((\SU1|SLL64|Stage2_sig[30]~68_combout\))) # (!\Y~420_combout\ & (\Y~438_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~438_combout\,
	datab => \Y~419_combout\,
	datac => \Y~420_combout\,
	datad => \SU1|SLL64|Stage2_sig[30]~68_combout\,
	combout => \Y~439_combout\);

-- Location: LCCOMB_X70_Y30_N22
\Y~440\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~440_combout\ = (\Y~419_combout\ & ((\Y~439_combout\ & (\AU1|Adder|Add0~126_combout\)) # (!\Y~439_combout\ & ((\SU1|SLL64|Y[46]~55_combout\))))) # (!\Y~419_combout\ & (\Y~439_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~419_combout\,
	datab => \Y~439_combout\,
	datac => \AU1|Adder|Add0~126_combout\,
	datad => \SU1|SLL64|Y[46]~55_combout\,
	combout => \Y~440_combout\);

-- Location: LCCOMB_X77_Y31_N14
\Y~441\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~441_combout\ = (\B[62]~input_o\ & ((\A[62]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[62]~input_o\ & (\A[62]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[62]~input_o\,
	datab => \A[62]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y~441_combout\);

-- Location: LCCOMB_X75_Y29_N6
\Y~442\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~442_combout\ = (\Y~426_combout\ & ((\Y~427_combout\ & ((\SU1|SgnExtUpper_sig[0]~4_combout\))) # (!\Y~427_combout\ & (\Y~441_combout\)))) # (!\Y~426_combout\ & (((\Y~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~441_combout\,
	datab => \Y~426_combout\,
	datac => \Y~427_combout\,
	datad => \SU1|SgnExtUpper_sig[0]~4_combout\,
	combout => \Y~442_combout\);

-- Location: LCCOMB_X74_Y30_N26
\Y~443\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~443_combout\ = (\Y~442_combout\ & (((\SU1|SRA_SRL_sig[62]~77_combout\) # (!\Y~272_combout\)))) # (!\Y~442_combout\ & (\Y~440_combout\ & ((\Y~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~440_combout\,
	datab => \SU1|SRA_SRL_sig[62]~77_combout\,
	datac => \Y~442_combout\,
	datad => \Y~272_combout\,
	combout => \Y~443_combout\);

-- Location: LCCOMB_X74_Y29_N30
\Y~451\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~451_combout\ = (\SU1|SgnExtUpper_sig[0]~3_combout\) # ((\AU1|Adder|Add0~128_combout\ & (\Y~345_combout\ & !\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~128_combout\,
	datab => \Y~345_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SU1|SgnExtUpper_sig[0]~3_combout\,
	combout => \Y~451_combout\);

-- Location: LCCOMB_X74_Y29_N12
\Y~444\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~444_combout\ = (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y~444_combout\);

-- Location: LCCOMB_X66_Y34_N24
\Y~445\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~445_combout\ = (!\B[0]~input_o\ & ((\SU1|SRL64|Stage1_sig[48]~213_combout\) # ((!\B[1]~input_o\ & \SU1|X_sig[63]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SU1|X_sig[63]~2_combout\,
	datad => \SU1|SRL64|Stage1_sig[48]~213_combout\,
	combout => \Y~445_combout\);

-- Location: LCCOMB_X66_Y34_N18
\Y~446\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~446_combout\ = (!\B[3]~input_o\ & ((\Y~445_combout\) # ((\SU1|SRL64|Stage1_sig[48]~271_combout\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SRL64|Stage1_sig[48]~271_combout\,
	datab => \B[3]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Y~445_combout\,
	combout => \Y~446_combout\);

-- Location: LCCOMB_X75_Y36_N0
\Y~447\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~447_combout\ = (!\B[2]~input_o\ & ((\Y~446_combout\) # ((\SU1|SLL64|Stage1_sig[55]~137_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SU1|SLL64|Stage1_sig[55]~137_combout\,
	datac => \Y~446_combout\,
	datad => \B[3]~input_o\,
	combout => \Y~447_combout\);

-- Location: LCCOMB_X75_Y36_N18
\Y~448\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~448_combout\ = (!\SU1|ShiftCount\(5) & ((\Y~447_combout\) # ((\B[2]~input_o\ & \SU1|SLL64|Stage2_sig[11]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Y~447_combout\,
	datac => \SU1|ShiftCount\(5),
	datad => \SU1|SLL64|Stage2_sig[11]~92_combout\,
	combout => \Y~448_combout\);

-- Location: LCCOMB_X75_Y36_N20
\Y~449\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~449_combout\ = (!\B[4]~input_o\ & ((\Y~448_combout\) # ((\SU1|ShiftCount\(5) & \SU1|SLL64|Stage2_sig[31]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \SU1|ShiftCount\(5),
	datac => \SU1|SLL64|Stage2_sig[31]~70_combout\,
	datad => \Y~448_combout\,
	combout => \Y~449_combout\);

-- Location: LCCOMB_X75_Y36_N6
\Y~450\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~450_combout\ = (\Y~444_combout\ & ((\Y~449_combout\) # ((\SU1|SLL64|Y[47]~58_combout\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SU1|SLL64|Y[47]~58_combout\,
	datab => \Y~444_combout\,
	datac => \B[4]~input_o\,
	datad => \Y~449_combout\,
	combout => \Y~450_combout\);

-- Location: LCCOMB_X74_Y29_N8
\Y~452\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~452_combout\ = (\Y~451_combout\) # ((\Y~450_combout\) # ((\ExtWord~input_o\ & \SU1|SgnExtUpper_sig[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SU1|SgnExtUpper_sig[0]~2_combout\,
	datac => \Y~451_combout\,
	datad => \Y~450_combout\,
	combout => \Y~452_combout\);

-- Location: LCCOMB_X81_Y29_N28
\LU1|Y[63]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LU1|Y[63]~3_combout\ = (\B[63]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[63]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[63]~input_o\ & (\A[63]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[63]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[63]~input_o\,
	combout => \LU1|Y[63]~3_combout\);

-- Location: LCCOMB_X81_Y29_N6
\Y~453\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~453_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\LU1|Y[63]~3_combout\))) # (!\FuncClass[0]~input_o\ & (\Y~452_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~452_combout\,
	datab => \LU1|Y[63]~3_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Y~453_combout\);

-- Location: LCCOMB_X75_Y31_N10
\AU1|ZeroGate|gen_tree:NORGate1|y~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~12_combout\ = (\AU1|Adder|Add0~86_combout\) # ((\AU1|Adder|Add0~88_combout\) # ((\AU1|Adder|Add0~84_combout\) # (\AU1|Adder|Add0~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~86_combout\,
	datab => \AU1|Adder|Add0~88_combout\,
	datac => \AU1|Adder|Add0~84_combout\,
	datad => \AU1|Adder|Add0~82_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~12_combout\);

-- Location: LCCOMB_X75_Y30_N2
\AU1|ZeroGate|gen_tree:NORGate1|y~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~13_combout\ = (\AU1|Adder|Add0~92_combout\) # ((\AU1|Adder|Add0~90_combout\) # ((\AU1|Adder|Add0~96_combout\) # (\AU1|Adder|Add0~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~92_combout\,
	datab => \AU1|Adder|Add0~90_combout\,
	datac => \AU1|Adder|Add0~96_combout\,
	datad => \AU1|Adder|Add0~94_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~13_combout\);

-- Location: LCCOMB_X74_Y33_N12
\AU1|ZeroGate|gen_tree:NORGate1|y~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~11_combout\ = (\AU1|Adder|Add0~80_combout\) # ((\AU1|Adder|Add0~78_combout\) # ((\AU1|Adder|Add0~76_combout\) # (\AU1|Adder|Add0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~80_combout\,
	datab => \AU1|Adder|Add0~78_combout\,
	datac => \AU1|Adder|Add0~76_combout\,
	datad => \AU1|Adder|Add0~74_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~11_combout\);

-- Location: LCCOMB_X72_Y31_N6
\AU1|ZeroGate|gen_tree:NORGate1|y~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~10_combout\ = (\AU1|Adder|Add0~70_combout\) # ((\AU1|Adder|Add0~72_combout\) # ((\AU1|Adder|Add0~66_combout\) # (\AU1|Adder|Add0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~70_combout\,
	datab => \AU1|Adder|Add0~72_combout\,
	datac => \AU1|Adder|Add0~66_combout\,
	datad => \AU1|Adder|Add0~68_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~10_combout\);

-- Location: LCCOMB_X75_Y31_N12
\AU1|ZeroGate|gen_tree:NORGate1|y~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~14_combout\ = (\AU1|ZeroGate|gen_tree:NORGate1|y~12_combout\) # ((\AU1|ZeroGate|gen_tree:NORGate1|y~13_combout\) # ((\AU1|ZeroGate|gen_tree:NORGate1|y~11_combout\) # (\AU1|ZeroGate|gen_tree:NORGate1|y~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|ZeroGate|gen_tree:NORGate1|y~12_combout\,
	datab => \AU1|ZeroGate|gen_tree:NORGate1|y~13_combout\,
	datac => \AU1|ZeroGate|gen_tree:NORGate1|y~11_combout\,
	datad => \AU1|ZeroGate|gen_tree:NORGate1|y~10_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~14_combout\);

-- Location: LCCOMB_X75_Y31_N6
\AU1|ZeroGate|gen_tree:NORGate1|y~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~6_combout\ = (\AU1|Adder|Add0~42_combout\) # ((\AU1|Adder|Add0~46_combout\) # ((\AU1|Adder|Add0~48_combout\) # (\AU1|Adder|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~42_combout\,
	datab => \AU1|Adder|Add0~46_combout\,
	datac => \AU1|Adder|Add0~48_combout\,
	datad => \AU1|Adder|Add0~44_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~6_combout\);

-- Location: LCCOMB_X74_Y31_N20
\AU1|ZeroGate|gen_tree:NORGate1|y~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~8_combout\ = (\AU1|Adder|Add0~62_combout\) # ((\AU1|Adder|Add0~60_combout\) # ((\AU1|Adder|Add0~64_combout\) # (\AU1|Adder|Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~62_combout\,
	datab => \AU1|Adder|Add0~60_combout\,
	datac => \AU1|Adder|Add0~64_combout\,
	datad => \AU1|Adder|Add0~58_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~8_combout\);

-- Location: LCCOMB_X74_Y31_N26
\AU1|ZeroGate|gen_tree:NORGate1|y~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~5_combout\ = (\AU1|Adder|Add0~34_combout\) # ((\AU1|Adder|Add0~38_combout\) # ((\AU1|Adder|Add0~36_combout\) # (\AU1|Adder|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~34_combout\,
	datab => \AU1|Adder|Add0~38_combout\,
	datac => \AU1|Adder|Add0~36_combout\,
	datad => \AU1|Adder|Add0~40_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~5_combout\);

-- Location: LCCOMB_X75_Y32_N28
\AU1|ZeroGate|gen_tree:NORGate1|y~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~7_combout\ = (\AU1|Adder|Add0~54_combout\) # ((\AU1|Adder|Add0~56_combout\) # ((\AU1|Adder|Add0~50_combout\) # (\AU1|Adder|Add0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~54_combout\,
	datab => \AU1|Adder|Add0~56_combout\,
	datac => \AU1|Adder|Add0~50_combout\,
	datad => \AU1|Adder|Add0~52_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~7_combout\);

-- Location: LCCOMB_X75_Y31_N24
\AU1|ZeroGate|gen_tree:NORGate1|y~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~9_combout\ = (\AU1|ZeroGate|gen_tree:NORGate1|y~6_combout\) # ((\AU1|ZeroGate|gen_tree:NORGate1|y~8_combout\) # ((\AU1|ZeroGate|gen_tree:NORGate1|y~5_combout\) # (\AU1|ZeroGate|gen_tree:NORGate1|y~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|ZeroGate|gen_tree:NORGate1|y~6_combout\,
	datab => \AU1|ZeroGate|gen_tree:NORGate1|y~8_combout\,
	datac => \AU1|ZeroGate|gen_tree:NORGate1|y~5_combout\,
	datad => \AU1|ZeroGate|gen_tree:NORGate1|y~7_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~9_combout\);

-- Location: LCCOMB_X76_Y29_N26
\AU1|ZeroGate|gen_tree:NORGate1|y~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~18_combout\ = (\AU1|Adder|Add0~122_combout\) # ((\AU1|Adder|Add0~126_combout\) # ((\AU1|Adder|Add0~128_combout\) # (\AU1|Adder|Add0~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~122_combout\,
	datab => \AU1|Adder|Add0~126_combout\,
	datac => \AU1|Adder|Add0~128_combout\,
	datad => \AU1|Adder|Add0~124_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~18_combout\);

-- Location: LCCOMB_X75_Y30_N4
\AU1|ZeroGate|gen_tree:NORGate1|y~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~15_combout\ = (\AU1|Adder|Add0~104_combout\) # ((\AU1|Adder|Add0~100_combout\) # ((\AU1|Adder|Add0~102_combout\) # (\AU1|Adder|Add0~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~104_combout\,
	datab => \AU1|Adder|Add0~100_combout\,
	datac => \AU1|Adder|Add0~102_combout\,
	datad => \AU1|Adder|Add0~98_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~15_combout\);

-- Location: LCCOMB_X75_Y30_N14
\AU1|ZeroGate|gen_tree:NORGate1|y~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~16_combout\ = (\AU1|Adder|Add0~108_combout\) # ((\AU1|Adder|Add0~110_combout\) # ((\AU1|Adder|Add0~112_combout\) # (\AU1|Adder|Add0~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~108_combout\,
	datab => \AU1|Adder|Add0~110_combout\,
	datac => \AU1|Adder|Add0~112_combout\,
	datad => \AU1|Adder|Add0~106_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~16_combout\);

-- Location: LCCOMB_X76_Y29_N24
\AU1|ZeroGate|gen_tree:NORGate1|y~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~17_combout\ = (\AU1|Adder|Add0~120_combout\) # ((\AU1|Adder|Add0~116_combout\) # ((\AU1|Adder|Add0~118_combout\) # (\AU1|Adder|Add0~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~120_combout\,
	datab => \AU1|Adder|Add0~116_combout\,
	datac => \AU1|Adder|Add0~118_combout\,
	datad => \AU1|Adder|Add0~114_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~17_combout\);

-- Location: LCCOMB_X76_Y29_N20
\AU1|ZeroGate|gen_tree:NORGate1|y~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~19_combout\ = (\AU1|ZeroGate|gen_tree:NORGate1|y~18_combout\) # ((\AU1|ZeroGate|gen_tree:NORGate1|y~15_combout\) # ((\AU1|ZeroGate|gen_tree:NORGate1|y~16_combout\) # (\AU1|ZeroGate|gen_tree:NORGate1|y~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|ZeroGate|gen_tree:NORGate1|y~18_combout\,
	datab => \AU1|ZeroGate|gen_tree:NORGate1|y~15_combout\,
	datac => \AU1|ZeroGate|gen_tree:NORGate1|y~16_combout\,
	datad => \AU1|ZeroGate|gen_tree:NORGate1|y~17_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~19_combout\);

-- Location: LCCOMB_X76_Y33_N12
\AU1|ZeroGate|gen_tree:NORGate1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~0_combout\ = (\AU1|Adder|Add0~6_combout\) # ((\AU1|Adder|Add0~2_combout\) # ((\AU1|Adder|Add0~8_combout\) # (\AU1|Adder|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~6_combout\,
	datab => \AU1|Adder|Add0~2_combout\,
	datac => \AU1|Adder|Add0~8_combout\,
	datad => \AU1|Adder|Add0~4_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~0_combout\);

-- Location: LCCOMB_X76_Y33_N2
\AU1|ZeroGate|gen_tree:NORGate1|y~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~3_combout\ = (\AU1|Adder|Add0~28_combout\) # ((\AU1|Adder|Add0~30_combout\) # ((\AU1|Adder|Add0~26_combout\) # (\AU1|Adder|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~28_combout\,
	datab => \AU1|Adder|Add0~30_combout\,
	datac => \AU1|Adder|Add0~26_combout\,
	datad => \AU1|Adder|Add0~32_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~3_combout\);

-- Location: LCCOMB_X76_Y33_N8
\AU1|ZeroGate|gen_tree:NORGate1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~2_combout\ = (\AU1|Adder|Add0~24_combout\) # ((\AU1|Adder|Add0~18_combout\) # ((\AU1|Adder|Add0~20_combout\) # (\AU1|Adder|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~24_combout\,
	datab => \AU1|Adder|Add0~18_combout\,
	datac => \AU1|Adder|Add0~20_combout\,
	datad => \AU1|Adder|Add0~22_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~2_combout\);

-- Location: LCCOMB_X76_Y33_N6
\AU1|ZeroGate|gen_tree:NORGate1|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~1_combout\ = (\AU1|Adder|Add0~16_combout\) # ((\AU1|Adder|Add0~10_combout\) # ((\AU1|Adder|Add0~12_combout\) # (\AU1|Adder|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|Adder|Add0~16_combout\,
	datab => \AU1|Adder|Add0~10_combout\,
	datac => \AU1|Adder|Add0~12_combout\,
	datad => \AU1|Adder|Add0~14_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~1_combout\);

-- Location: LCCOMB_X76_Y33_N4
\AU1|ZeroGate|gen_tree:NORGate1|y~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~4_combout\ = (\AU1|ZeroGate|gen_tree:NORGate1|y~0_combout\) # ((\AU1|ZeroGate|gen_tree:NORGate1|y~3_combout\) # ((\AU1|ZeroGate|gen_tree:NORGate1|y~2_combout\) # (\AU1|ZeroGate|gen_tree:NORGate1|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|ZeroGate|gen_tree:NORGate1|y~0_combout\,
	datab => \AU1|ZeroGate|gen_tree:NORGate1|y~3_combout\,
	datac => \AU1|ZeroGate|gen_tree:NORGate1|y~2_combout\,
	datad => \AU1|ZeroGate|gen_tree:NORGate1|y~1_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~4_combout\);

-- Location: LCCOMB_X75_Y31_N22
\AU1|ZeroGate|gen_tree:NORGate1|y~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU1|ZeroGate|gen_tree:NORGate1|y~20_combout\ = (\AU1|ZeroGate|gen_tree:NORGate1|y~14_combout\) # ((\AU1|ZeroGate|gen_tree:NORGate1|y~9_combout\) # ((\AU1|ZeroGate|gen_tree:NORGate1|y~19_combout\) # (\AU1|ZeroGate|gen_tree:NORGate1|y~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU1|ZeroGate|gen_tree:NORGate1|y~14_combout\,
	datab => \AU1|ZeroGate|gen_tree:NORGate1|y~9_combout\,
	datac => \AU1|ZeroGate|gen_tree:NORGate1|y~19_combout\,
	datad => \AU1|ZeroGate|gen_tree:NORGate1|y~4_combout\,
	combout => \AU1|ZeroGate|gen_tree:NORGate1|y~20_combout\);

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

ww_Zero <= \Zero~output_o\;

ww_AltB <= \AltB~output_o\;

ww_AltBu <= \AltBu~output_o\;
END structure;


