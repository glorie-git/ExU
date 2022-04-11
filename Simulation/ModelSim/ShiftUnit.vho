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

-- DATE "04/09/2022 09:38:07"

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

ENTITY 	ShiftUnit IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	C : IN std_logic_vector(63 DOWNTO 0);
	Y : OUT std_logic_vector(63 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	ExtWord : IN std_logic
	);
END ShiftUnit;

-- Design Ports Information
-- B[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[8]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[9]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[10]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[11]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[12]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[13]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[14]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[15]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[16]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[17]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[18]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[19]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[20]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[21]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[22]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[23]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[24]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[25]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[26]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[27]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[28]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[29]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[30]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[31]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[32]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[33]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[34]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[35]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[36]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[37]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[38]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[39]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[40]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[41]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[42]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[43]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[44]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[45]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[46]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[47]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[48]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[49]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[50]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[51]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[52]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[53]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[54]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[55]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[56]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[57]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[58]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[59]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[60]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[61]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[62]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[63]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftUnit IS
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
SIGNAL ww_C : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_ShiftFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ExtWord : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
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
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \SgnExtLower_sig[31]~0_combout\ : std_logic;
SIGNAL \C[0]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \SRL64|Stage2_sig[63]~27_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \X_sig[0]~1_combout\ : std_logic;
SIGNAL \SLL64|Y[32]~10_combout\ : std_logic;
SIGNAL \Y_sig~42_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \SRA64|Equal8~0_combout\ : std_logic;
SIGNAL \ShiftCount[5]~0_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \SRL64|Stage3_sig~0_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~1_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \SRL64|Stage3_sig~2_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~3_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \SRL64|Stage3_sig~4_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~5_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~6_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \SRL64|Stage3_sig~7_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~8_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~9_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \SRL64|Stage3_sig~31_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~32_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \SRL64|Stage3_sig~38_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \SRL64|Stage3_sig~39_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \SRL64|Stage3_sig~33_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~34_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \SRL64|Stage3_sig~35_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~36_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~37_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~40_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \SRL64|Stage3_sig~17_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~18_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \SRL64|Stage3_sig~12_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \SRL64|Stage3_sig~13_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \SRL64|Stage3_sig~14_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~15_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~16_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \SRL64|Stage3_sig~10_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~11_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~19_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \SRL64|Stage3_sig~20_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~21_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \SRL64|Stage3_sig~22_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~23_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \SRL64|Stage3_sig~24_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~25_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~26_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \SRL64|Stage3_sig~27_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~28_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~29_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~30_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~41_combout\ : std_logic;
SIGNAL \Y_sig~41_combout\ : std_logic;
SIGNAL \Y_sig~43_combout\ : std_logic;
SIGNAL \SwapWord~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~76_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~74_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \X_sig[1]~0_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~75_combout\ : std_logic;
SIGNAL \Y_sig~37_combout\ : std_logic;
SIGNAL \Y_sig~38_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~68_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~71_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~72_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[8]~73_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~69_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[8]~274_combout\ : std_logic;
SIGNAL \Y_sig~39_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~83_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~86_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~85_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[12]~87_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~82_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[12]~275_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~80_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~79_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~81_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~77_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~78_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~24_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~25_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~26_combout\ : std_logic;
SIGNAL \Y_sig~36_combout\ : std_logic;
SIGNAL \Y_sig~40_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~111_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~110_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[41]~112_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~28_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~114_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~113_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[40]~115_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[32]~34_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~29_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~132_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~128_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~129_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[32]~130_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~131_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[32]~133_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[44]~32_combout\ : std_logic;
SIGNAL \SRA64|Equal5~0_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~122_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~126_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~125_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[36]~127_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~123_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[36]~278_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~117_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~116_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~120_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~119_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[44]~121_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[44]~277_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[32]~35_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[32]~36_combout\ : std_logic;
SIGNAL \SRA64|Equal8~1_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~103_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~104_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[52]~105_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~101_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~100_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[53]~102_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~31_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~95_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~98_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~97_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[56]~99_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~94_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[56]~276_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~92_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~88_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~89_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~90_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~91_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~93_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~30_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~107_combout\ : std_logic;
SIGNAL \X_sig[62]~3_combout\ : std_logic;
SIGNAL \X_sig[63]~2_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[60]~106_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~108_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[60]~109_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~33_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[32]~0_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[32]~1_combout\ : std_logic;
SIGNAL \Y_sig~44_combout\ : std_logic;
SIGNAL \Y_sig~51_combout\ : std_logic;
SIGNAL \Y_sig~48_combout\ : std_logic;
SIGNAL \SRL64|Stage3_sig~42_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~152_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~153_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[54]~154_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[49]~29_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[61]~168_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[61]~169_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~150_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[57]~96_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~149_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[57]~151_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~145_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~146_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[50]~147_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[49]~148_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[49]~28_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[49]~43_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~166_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~165_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[45]~118_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[45]~283_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~163_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~162_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[37]~124_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[37]~282_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[33]~41_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~155_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~156_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[34]~157_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[33]~158_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~159_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~160_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[41]~281_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[33]~40_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[33]~42_combout\ : std_logic;
SIGNAL \Y_sig~49_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~183_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~182_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~186_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~185_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[25]~187_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[25]~286_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~191_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~188_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~189_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[18]~190_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~192_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[17]~193_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~45_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~176_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~180_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~179_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[21]~181_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~177_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[21]~285_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~173_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~174_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[29]~175_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~171_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~170_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[29]~284_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[17]~44_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[17]~46_combout\ : std_logic;
SIGNAL \SRA64|Stage1_sig[61]~1_combout\ : std_logic;
SIGNAL \SRA64|Stage1_sig[61]~2_combout\ : std_logic;
SIGNAL \SRA64|Stage1_sig[61]~0_combout\ : std_logic;
SIGNAL \SRA64|Stage1_sig[61]~3_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[49]~30_combout\ : std_logic;
SIGNAL \Y_sig~50_combout\ : std_logic;
SIGNAL \Y_sig~52_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[41]~2_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[41]~4_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[41]~3_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[33]~5_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[33]~6_combout\ : std_logic;
SIGNAL \Y_sig~53_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[1]~30_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[1]~104_combout\ : std_logic;
SIGNAL \Y_sig~54_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~140_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~141_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~37_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~38_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~142_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~143_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[13]~84_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[13]~280_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~39_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~138_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~137_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~139_combout\ : std_logic;
SIGNAL \Y_sig~45_combout\ : std_logic;
SIGNAL \Y_sig~46_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~134_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~135_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[9]~70_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[9]~279_combout\ : std_logic;
SIGNAL \Y_sig~47_combout\ : std_logic;
SIGNAL \Y_sig~55_combout\ : std_logic;
SIGNAL \C[1]~input_o\ : std_logic;
SIGNAL \Y_sig~56_combout\ : std_logic;
SIGNAL \C[2]~input_o\ : std_logic;
SIGNAL \SRL64|Stage1_sig[10]~136_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~198_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~197_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[10]~199_combout\ : std_logic;
SIGNAL \Y_sig~57_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~194_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~195_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~196_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~200_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~201_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[14]~144_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[14]~202_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~204_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~203_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~47_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~48_combout\ : std_logic;
SIGNAL \Y_sig~58_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[2]~31_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[2]~14_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~219_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~218_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[58]~217_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[58]~220_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~222_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~221_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[50]~223_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[50]~32_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~224_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~225_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[54]~226_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[62]~227_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[50]~153_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[50]~52_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~211_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~212_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[38]~164_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[38]~213_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~214_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~215_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[46]~167_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[46]~216_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[34]~50_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~205_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~206_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[34]~207_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~209_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~208_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[42]~161_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[42]~210_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[34]~49_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[34]~51_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[34]~7_combout\ : std_logic;
SIGNAL \SRA64|Equal2~0_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[50]~31_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[50]~33_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[34]~8_combout\ : std_logic;
SIGNAL \Y_sig~61_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~231_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~232_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[22]~178_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[22]~287_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~229_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~228_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[30]~172_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[30]~230_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[18]~53_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[26]~184_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~235_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~234_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[26]~236_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~238_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~237_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[18]~288_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~54_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[18]~55_combout\ : std_logic;
SIGNAL \Y_sig~59_combout\ : std_logic;
SIGNAL \Y_sig~60_combout\ : std_logic;
SIGNAL \Y_sig~62_combout\ : std_logic;
SIGNAL \Y_sig~63_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[3]~32_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[3]~33_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[3]~105_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[55]~248_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[51]~247_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[51]~35_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[51]~154_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[59]~245_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[59]~246_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[51]~61_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[47]~252_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[39]~251_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[35]~59_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[43]~250_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[35]~249_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[35]~58_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[35]~60_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[35]~9_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[51]~34_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[51]~36_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[35]~10_combout\ : std_logic;
SIGNAL \Y_sig~68_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~243_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[15]~241_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~242_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[15]~244_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~56_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~57_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[11]~240_combout\ : std_logic;
SIGNAL \Y_sig~64_combout\ : std_logic;
SIGNAL \Y_sig~65_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~262_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~261_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[19]~239_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[19]~263_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[27]~257_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~259_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~258_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[27]~260_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~63_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~255_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[23]~233_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~254_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[23]~256_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[31]~253_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[19]~62_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[19]~64_combout\ : std_logic;
SIGNAL \Y_sig~66_combout\ : std_logic;
SIGNAL \Y_sig~67_combout\ : std_logic;
SIGNAL \Y_sig~69_combout\ : std_logic;
SIGNAL \C[3]~input_o\ : std_logic;
SIGNAL \Y_sig~70_combout\ : std_logic;
SIGNAL \C[4]~input_o\ : std_logic;
SIGNAL \SLL64|Stage2_sig[4]~15_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[4]~34_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[4]~111_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[4]~16_combout\ : std_logic;
SIGNAL \Y_sig~77_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[17]~264_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[16]~265_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~65_combout\ : std_logic;
SIGNAL \Y_sig~71_combout\ : std_logic;
SIGNAL \Y_sig~72_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[52]~66_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[52]~289_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[52]~37_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[52]~38_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[40]~290_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[36]~68_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[36]~67_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[36]~69_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[52]~155_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[36]~11_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[36]~12_combout\ : std_logic;
SIGNAL \Y_sig~73_combout\ : std_logic;
SIGNAL \Y_sig~74_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[24]~268_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[20]~71_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[28]~267_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[20]~266_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[20]~70_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[20]~72_combout\ : std_logic;
SIGNAL \Y_sig~75_combout\ : std_logic;
SIGNAL \Y_sig~76_combout\ : std_logic;
SIGNAL \Y_sig~78_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~76_combout\ : std_logic;
SIGNAL \Y_sig~79_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[53]~269_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[53]~39_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[53]~45_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[53]~40_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[37]~157_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[37]~74_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[37]~75_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[53]~73_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[53]~156_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[37]~13_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[37]~14_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[21]~77_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[21]~78_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[21]~79_combout\ : std_logic;
SIGNAL \Y_sig~80_combout\ : std_logic;
SIGNAL \Y_sig~81_combout\ : std_logic;
SIGNAL \Y_sig~82_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[4]~35_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[5]~36_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[5]~17_combout\ : std_logic;
SIGNAL \C[5]~input_o\ : std_logic;
SIGNAL \Y_sig~83_combout\ : std_logic;
SIGNAL \Y_sig~84_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[7]~38_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[6]~39_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[2]~37_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[6]~18_combout\ : std_logic;
SIGNAL \C[6]~input_o\ : std_logic;
SIGNAL \Y_sig~89_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~80_combout\ : std_logic;
SIGNAL \SRA64|Stage1_sig[62]~4_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[54]~41_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[54]~42_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[54]~158_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[38]~82_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[38]~81_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[38]~83_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[38]~15_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[38]~16_combout\ : std_logic;
SIGNAL \Y_sig~85_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[22]~84_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[22]~85_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[22]~86_combout\ : std_logic;
SIGNAL \Y_sig~86_combout\ : std_logic;
SIGNAL \Y_sig~87_combout\ : std_logic;
SIGNAL \Y_sig~88_combout\ : std_logic;
SIGNAL \Y_sig~90_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~91_combout\ : std_logic;
SIGNAL \Y_sig~91_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[59]~159_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[55]~87_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[55]~160_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[39]~88_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[39]~89_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[39]~90_combout\ : std_logic;
SIGNAL \Y_sig~92_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[23]~93_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[23]~92_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[23]~94_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[55]~46_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[55]~43_combout\ : std_logic;
SIGNAL \Y_sig~93_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[39]~17_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[39]~18_combout\ : std_logic;
SIGNAL \Y_sig~94_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[7]~40_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[7]~19_combout\ : std_logic;
SIGNAL \C[7]~input_o\ : std_logic;
SIGNAL \Y_sig~95_combout\ : std_logic;
SIGNAL \Y_sig~96_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[9]~41_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[8]~42_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[8]~20_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[8]~106_combout\ : std_logic;
SIGNAL \C[8]~input_o\ : std_logic;
SIGNAL \Y_sig~101_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~95_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[56]~47_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[56]~48_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[56]~96_combout\ : std_logic;
SIGNAL \Y_sig~98_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[40]~97_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[40]~98_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[40]~99_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[24]~100_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[24]~101_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[24]~102_combout\ : std_logic;
SIGNAL \Y_sig~99_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[40]~19_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[40]~20_combout\ : std_logic;
SIGNAL \Y_sig~97_combout\ : std_logic;
SIGNAL \Y_sig~100_combout\ : std_logic;
SIGNAL \Y_sig~102_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[9]~43_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[9]~21_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[9]~107_combout\ : std_logic;
SIGNAL \C[9]~input_o\ : std_logic;
SIGNAL \Y_sig~107_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[41]~104_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[41]~105_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[41]~106_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[57]~103_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[41]~21_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[57]~49_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[57]~50_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[41]~22_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~107_combout\ : std_logic;
SIGNAL \Y_sig~103_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[25]~108_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[25]~109_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[25]~110_combout\ : std_logic;
SIGNAL \Y_sig~104_combout\ : std_logic;
SIGNAL \Y_sig~105_combout\ : std_logic;
SIGNAL \Y_sig~106_combout\ : std_logic;
SIGNAL \Y_sig~108_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[58]~51_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[58]~52_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[42]~113_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[42]~114_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[42]~115_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[58]~112_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[42]~23_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[42]~24_combout\ : std_logic;
SIGNAL \Y_sig~109_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~111_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[26]~116_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[26]~117_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[26]~118_combout\ : std_logic;
SIGNAL \Y_sig~110_combout\ : std_logic;
SIGNAL \Y_sig~111_combout\ : std_logic;
SIGNAL \Y_sig~112_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[11]~44_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[10]~45_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[10]~22_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[10]~108_combout\ : std_logic;
SIGNAL \C[10]~input_o\ : std_logic;
SIGNAL \Y_sig~113_combout\ : std_logic;
SIGNAL \Y_sig~114_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~123_combout\ : std_logic;
SIGNAL \Y_sig~115_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[59]~119_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[43]~121_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[43]~120_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[43]~122_combout\ : std_logic;
SIGNAL \Y_sig~116_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[27]~125_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[27]~124_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[27]~126_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[59]~55_combout\ : std_logic;
SIGNAL \Y_sig~117_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[43]~25_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[43]~26_combout\ : std_logic;
SIGNAL \Y_sig~118_combout\ : std_logic;
SIGNAL \C[11]~input_o\ : std_logic;
SIGNAL \SLL64|Stage1_sig[11]~46_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[11]~23_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[11]~109_combout\ : std_logic;
SIGNAL \Y_sig~119_combout\ : std_logic;
SIGNAL \Y_sig~120_combout\ : std_logic;
SIGNAL \C[12]~input_o\ : std_logic;
SIGNAL \SLL64|Stage2_sig[12]~24_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[13]~47_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[12]~48_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[12]~25_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[12]~26_combout\ : std_logic;
SIGNAL \Y_sig~125_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[28]~131_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[28]~132_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[28]~133_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[59]~53_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[60]~161_combout\ : std_logic;
SIGNAL \Y_sig~122_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[44]~128_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[44]~129_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[44]~130_combout\ : std_logic;
SIGNAL \Y_sig~123_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[44]~27_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[60]~56_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[44]~28_combout\ : std_logic;
SIGNAL \Y_sig~121_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[48]~127_combout\ : std_logic;
SIGNAL \Y_sig~124_combout\ : std_logic;
SIGNAL \Y_sig~126_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[61]~134_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[45]~135_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[45]~136_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[45]~137_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[45]~29_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[61]~54_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[45]~30_combout\ : std_logic;
SIGNAL \Y_sig~127_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[29]~139_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[29]~138_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[29]~140_combout\ : std_logic;
SIGNAL \Y_sig~128_combout\ : std_logic;
SIGNAL \Y_sig~129_combout\ : std_logic;
SIGNAL \Y_sig~130_combout\ : std_logic;
SIGNAL \C[13]~input_o\ : std_logic;
SIGNAL \SLL64|Stage1_sig[13]~49_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[13]~28_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[13]~27_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[13]~29_combout\ : std_logic;
SIGNAL \Y_sig~131_combout\ : std_logic;
SIGNAL \Y_sig~132_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[14]~30_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[15]~50_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[14]~51_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[14]~31_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[14]~32_combout\ : std_logic;
SIGNAL \C[14]~input_o\ : std_logic;
SIGNAL \Y_sig~137_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[46]~141_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[46]~142_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[46]~143_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[62]~162_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[46]~31_combout\ : std_logic;
SIGNAL \SRA64|Stage2_sig[62]~44_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[46]~32_combout\ : std_logic;
SIGNAL \Y_sig~133_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[30]~145_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[30]~144_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[30]~146_combout\ : std_logic;
SIGNAL \Y_sig~134_combout\ : std_logic;
SIGNAL \Y_sig~135_combout\ : std_logic;
SIGNAL \Y_sig~136_combout\ : std_logic;
SIGNAL \Y_sig~138_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[31]~150_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[31]~151_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[31]~152_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[47]~147_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[47]~163_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[47]~148_combout\ : std_logic;
SIGNAL \SRL64|Stage2_sig[63]~149_combout\ : std_logic;
SIGNAL \Y_sig~140_combout\ : std_logic;
SIGNAL \Y_sig~141_combout\ : std_logic;
SIGNAL \Y_sig~139_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[47]~33_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[47]~34_combout\ : std_logic;
SIGNAL \Y_sig~142_combout\ : std_logic;
SIGNAL \C[15]~input_o\ : std_logic;
SIGNAL \SLL64|Stage1_sig[15]~52_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[15]~33_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[15]~34_combout\ : std_logic;
SIGNAL \Y_sig~143_combout\ : std_logic;
SIGNAL \Y_sig~144_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[16]~41_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[16]~42_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[48]~35_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[48]~36_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[16]~37_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[16]~38_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[48]~39_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[16]~40_combout\ : std_logic;
SIGNAL \Y_sig~147_combout\ : std_logic;
SIGNAL \C[16]~input_o\ : std_logic;
SIGNAL \SLL64|Stage1_sig[17]~53_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[16]~54_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[16]~110_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[16]~35_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[16]~36_combout\ : std_logic;
SIGNAL \Y_sig~145_combout\ : std_logic;
SIGNAL \Y_sig~146_combout\ : std_logic;
SIGNAL \Y_sig~148_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[17]~37_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[17]~55_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[17]~38_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[17]~39_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[49]~45_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[49]~44_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[49]~43_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[49]~46_combout\ : std_logic;
SIGNAL \Y_sig~156_combout\ : std_logic;
SIGNAL \Y_sig~155_combout\ : std_logic;
SIGNAL \C[17]~input_o\ : std_logic;
SIGNAL \Y_sig~157_combout\ : std_logic;
SIGNAL \Y_sig~345_combout\ : std_logic;
SIGNAL \Y_sig~158_combout\ : std_logic;
SIGNAL \Y_sig~149_combout\ : std_logic;
SIGNAL \Y_sig~150_combout\ : std_logic;
SIGNAL \Y_sig~151_combout\ : std_logic;
SIGNAL \Y_sig~152_combout\ : std_logic;
SIGNAL \Y_sig~153_combout\ : std_logic;
SIGNAL \Y_sig~154_combout\ : std_logic;
SIGNAL \Y_sig~346_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[18]~40_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[19]~57_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[18]~112_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[18]~41_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[18]~42_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[50]~47_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[50]~48_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[50]~49_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[50]~50_combout\ : std_logic;
SIGNAL \C[18]~input_o\ : std_logic;
SIGNAL \Y_sig~162_combout\ : std_logic;
SIGNAL \Y_sig~163_combout\ : std_logic;
SIGNAL \Y_sig~159_combout\ : std_logic;
SIGNAL \Y_sig~160_combout\ : std_logic;
SIGNAL \Y_sig~161_combout\ : std_logic;
SIGNAL \Y_sig~347_combout\ : std_logic;
SIGNAL \C[19]~input_o\ : std_logic;
SIGNAL \SRA_SRL_sig[51]~51_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[51]~52_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[51]~53_combout\ : std_logic;
SIGNAL \Y_sig~167_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[19]~43_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[20]~58_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[19]~59_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[19]~44_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[19]~45_combout\ : std_logic;
SIGNAL \Y_sig~168_combout\ : std_logic;
SIGNAL \Y_sig~164_combout\ : std_logic;
SIGNAL \Y_sig~165_combout\ : std_logic;
SIGNAL \Y_sig~166_combout\ : std_logic;
SIGNAL \Y_sig~348_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[52]~54_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[52]~55_combout\ : std_logic;
SIGNAL \C[20]~input_o\ : std_logic;
SIGNAL \Y_sig~171_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[20]~60_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[20]~47_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[20]~46_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[20]~48_combout\ : std_logic;
SIGNAL \Y_sig~172_combout\ : std_logic;
SIGNAL \Y_sig~169_combout\ : std_logic;
SIGNAL \Y_sig~170_combout\ : std_logic;
SIGNAL \Y_sig~173_combout\ : std_logic;
SIGNAL \Y_sig~349_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[22]~61_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[21]~62_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[21]~50_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[18]~56_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[21]~49_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[21]~51_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[53]~56_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[53]~57_combout\ : std_logic;
SIGNAL \C[21]~input_o\ : std_logic;
SIGNAL \Y_sig~177_combout\ : std_logic;
SIGNAL \Y_sig~178_combout\ : std_logic;
SIGNAL \Y_sig~174_combout\ : std_logic;
SIGNAL \Y_sig~175_combout\ : std_logic;
SIGNAL \Y_sig~176_combout\ : std_logic;
SIGNAL \Y_sig~350_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[23]~63_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[22]~113_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[22]~53_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[22]~52_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[22]~54_combout\ : std_logic;
SIGNAL \C[22]~input_o\ : std_logic;
SIGNAL \SRA_SRL_sig[54]~58_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[54]~59_combout\ : std_logic;
SIGNAL \Y_sig~182_combout\ : std_logic;
SIGNAL \Y_sig~183_combout\ : std_logic;
SIGNAL \Y_sig~179_combout\ : std_logic;
SIGNAL \Y_sig~180_combout\ : std_logic;
SIGNAL \Y_sig~181_combout\ : std_logic;
SIGNAL \Y_sig~351_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[24]~64_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[23]~114_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[23]~56_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[23]~55_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[23]~57_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[55]~60_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[55]~61_combout\ : std_logic;
SIGNAL \C[23]~input_o\ : std_logic;
SIGNAL \Y_sig~187_combout\ : std_logic;
SIGNAL \Y_sig~188_combout\ : std_logic;
SIGNAL \Y_sig~184_combout\ : std_logic;
SIGNAL \Y_sig~185_combout\ : std_logic;
SIGNAL \Y_sig~186_combout\ : std_logic;
SIGNAL \Y_sig~352_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[24]~58_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[24]~65_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[24]~59_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[24]~60_combout\ : std_logic;
SIGNAL \C[24]~input_o\ : std_logic;
SIGNAL \SRA_SRL_sig[56]~62_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[56]~63_combout\ : std_logic;
SIGNAL \Y_sig~192_combout\ : std_logic;
SIGNAL \Y_sig~193_combout\ : std_logic;
SIGNAL \Y_sig~189_combout\ : std_logic;
SIGNAL \Y_sig~190_combout\ : std_logic;
SIGNAL \Y_sig~191_combout\ : std_logic;
SIGNAL \Y_sig~353_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[26]~66_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[25]~67_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[25]~62_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[25]~61_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[25]~63_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[57]~64_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[57]~65_combout\ : std_logic;
SIGNAL \C[25]~input_o\ : std_logic;
SIGNAL \Y_sig~197_combout\ : std_logic;
SIGNAL \Y_sig~198_combout\ : std_logic;
SIGNAL \Y_sig~194_combout\ : std_logic;
SIGNAL \Y_sig~195_combout\ : std_logic;
SIGNAL \Y_sig~196_combout\ : std_logic;
SIGNAL \Y_sig~354_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[58]~66_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[58]~67_combout\ : std_logic;
SIGNAL \C[26]~input_o\ : std_logic;
SIGNAL \Y_sig~202_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[26]~68_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[26]~65_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[26]~64_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[26]~66_combout\ : std_logic;
SIGNAL \Y_sig~203_combout\ : std_logic;
SIGNAL \Y_sig~199_combout\ : std_logic;
SIGNAL \Y_sig~200_combout\ : std_logic;
SIGNAL \Y_sig~201_combout\ : std_logic;
SIGNAL \Y_sig~355_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[27]~67_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[28]~69_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[27]~70_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[27]~68_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[27]~69_combout\ : std_logic;
SIGNAL \C[27]~input_o\ : std_logic;
SIGNAL \SRA_SRL_sig[59]~68_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[59]~69_combout\ : std_logic;
SIGNAL \Y_sig~207_combout\ : std_logic;
SIGNAL \Y_sig~208_combout\ : std_logic;
SIGNAL \Y_sig~204_combout\ : std_logic;
SIGNAL \Y_sig~205_combout\ : std_logic;
SIGNAL \Y_sig~206_combout\ : std_logic;
SIGNAL \Y_sig~356_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[28]~70_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[28]~71_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[28]~71_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[28]~72_combout\ : std_logic;
SIGNAL \C[28]~input_o\ : std_logic;
SIGNAL \SRA_SRL_sig[60]~70_combout\ : std_logic;
SIGNAL \Y_sig~211_combout\ : std_logic;
SIGNAL \Y_sig~212_combout\ : std_logic;
SIGNAL \Y_sig~209_combout\ : std_logic;
SIGNAL \Y_sig~210_combout\ : std_logic;
SIGNAL \Y_sig~213_combout\ : std_logic;
SIGNAL \Y_sig~357_combout\ : std_logic;
SIGNAL \Y_sig~214_combout\ : std_logic;
SIGNAL \Y_sig~215_combout\ : std_logic;
SIGNAL \Y_sig~216_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[30]~72_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[29]~73_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[29]~74_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[29]~73_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[29]~75_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[61]~71_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[61]~72_combout\ : std_logic;
SIGNAL \C[29]~input_o\ : std_logic;
SIGNAL \Y_sig~217_combout\ : std_logic;
SIGNAL \Y_sig~218_combout\ : std_logic;
SIGNAL \Y_sig~358_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[31]~74_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[30]~115_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[30]~77_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[30]~76_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[30]~78_combout\ : std_logic;
SIGNAL \C[30]~input_o\ : std_logic;
SIGNAL \SRA_SRL_sig[62]~73_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[62]~74_combout\ : std_logic;
SIGNAL \Y_sig~221_combout\ : std_logic;
SIGNAL \Y_sig~222_combout\ : std_logic;
SIGNAL \Y_sig~219_combout\ : std_logic;
SIGNAL \Y_sig~220_combout\ : std_logic;
SIGNAL \Y_sig~223_combout\ : std_logic;
SIGNAL \Y_sig~359_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[31]~75_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[31]~80_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[31]~79_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[31]~81_combout\ : std_logic;
SIGNAL \C[31]~input_o\ : std_logic;
SIGNAL \SgnExtLower_sig[31]~1_combout\ : std_logic;
SIGNAL \SgnExtUpper_sig[0]~5_combout\ : std_logic;
SIGNAL \SgnExtUpper_sig[0]~2_combout\ : std_logic;
SIGNAL \SgnExtUpper_sig[0]~3_combout\ : std_logic;
SIGNAL \SgnExtUpper_sig[0]~11_combout\ : std_logic;
SIGNAL \SRA_SRL_sig[47]~75_combout\ : std_logic;
SIGNAL \SgnExtUpper_sig[0]~4_combout\ : std_logic;
SIGNAL \SgnExtUpper_sig[0]~6_combout\ : std_logic;
SIGNAL \SLL64|Y[32]~12_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[33]~76_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[32]~77_combout\ : std_logic;
SIGNAL \SLL64|Y[32]~13_combout\ : std_logic;
SIGNAL \SLL64|Y[32]~14_combout\ : std_logic;
SIGNAL \Y_sig~224_combout\ : std_logic;
SIGNAL \SLL64|Y[32]~11_combout\ : std_logic;
SIGNAL \SLL64|Y[32]~15_combout\ : std_logic;
SIGNAL \Y_sig~360_combout\ : std_logic;
SIGNAL \C[32]~input_o\ : std_logic;
SIGNAL \Y_sig~225_combout\ : std_logic;
SIGNAL \Y_sig~226_combout\ : std_logic;
SIGNAL \Y_sig~227_combout\ : std_logic;
SIGNAL \SgnExtUpper_sig[0]~7_combout\ : std_logic;
SIGNAL \Y_sig~228_combout\ : std_logic;
SIGNAL \C[33]~input_o\ : std_logic;
SIGNAL \Y_sig~229_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[33]~78_combout\ : std_logic;
SIGNAL \SLL64|Y[33]~16_combout\ : std_logic;
SIGNAL \SLL64|Y[33]~17_combout\ : std_logic;
SIGNAL \SLL64|Y[33]~18_combout\ : std_logic;
SIGNAL \Y_sig~230_combout\ : std_logic;
SIGNAL \Y_sig~231_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[35]~79_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[34]~80_combout\ : std_logic;
SIGNAL \SLL64|Y[34]~20_combout\ : std_logic;
SIGNAL \SLL64|Y[34]~19_combout\ : std_logic;
SIGNAL \SLL64|Y[34]~21_combout\ : std_logic;
SIGNAL \C[34]~input_o\ : std_logic;
SIGNAL \Y_sig~232_combout\ : std_logic;
SIGNAL \Y_sig~233_combout\ : std_logic;
SIGNAL \Y_sig~234_combout\ : std_logic;
SIGNAL \SLL64|Y[35]~22_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[35]~81_combout\ : std_logic;
SIGNAL \SLL64|Y[35]~23_combout\ : std_logic;
SIGNAL \SLL64|Y[35]~24_combout\ : std_logic;
SIGNAL \C[35]~input_o\ : std_logic;
SIGNAL \Y_sig~235_combout\ : std_logic;
SIGNAL \Y_sig~236_combout\ : std_logic;
SIGNAL \Y_sig~237_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[37]~82_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[36]~83_combout\ : std_logic;
SIGNAL \SLL64|Y[36]~28_combout\ : std_logic;
SIGNAL \SLL64|Y[36]~25_combout\ : std_logic;
SIGNAL \SLL64|Y[39]~26_combout\ : std_logic;
SIGNAL \SLL64|Y[36]~27_combout\ : std_logic;
SIGNAL \SLL64|Y[36]~29_combout\ : std_logic;
SIGNAL \C[36]~input_o\ : std_logic;
SIGNAL \Y_sig~238_combout\ : std_logic;
SIGNAL \Y_sig~239_combout\ : std_logic;
SIGNAL \Y_sig~240_combout\ : std_logic;
SIGNAL \C[37]~input_o\ : std_logic;
SIGNAL \Y_sig~241_combout\ : std_logic;
SIGNAL \SLL64|Y[37]~30_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[37]~84_combout\ : std_logic;
SIGNAL \SLL64|Y[37]~31_combout\ : std_logic;
SIGNAL \SLL64|Y[37]~32_combout\ : std_logic;
SIGNAL \Y_sig~242_combout\ : std_logic;
SIGNAL \Y_sig~243_combout\ : std_logic;
SIGNAL \SLL64|Y[38]~33_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[39]~85_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[38]~86_combout\ : std_logic;
SIGNAL \SLL64|Y[38]~34_combout\ : std_logic;
SIGNAL \SLL64|Y[38]~35_combout\ : std_logic;
SIGNAL \C[38]~input_o\ : std_logic;
SIGNAL \Y_sig~244_combout\ : std_logic;
SIGNAL \Y_sig~245_combout\ : std_logic;
SIGNAL \Y_sig~246_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[39]~87_combout\ : std_logic;
SIGNAL \SLL64|Y[39]~37_combout\ : std_logic;
SIGNAL \SLL64|Y[39]~36_combout\ : std_logic;
SIGNAL \SLL64|Y[39]~38_combout\ : std_logic;
SIGNAL \C[39]~input_o\ : std_logic;
SIGNAL \Y_sig~247_combout\ : std_logic;
SIGNAL \Y_sig~248_combout\ : std_logic;
SIGNAL \Y_sig~249_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[41]~88_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[40]~89_combout\ : std_logic;
SIGNAL \SLL64|Y[40]~39_combout\ : std_logic;
SIGNAL \SLL64|Y[40]~58_combout\ : std_logic;
SIGNAL \SLL64|Y[40]~40_combout\ : std_logic;
SIGNAL \SLL64|Y[40]~41_combout\ : std_logic;
SIGNAL \C[40]~input_o\ : std_logic;
SIGNAL \Y_sig~250_combout\ : std_logic;
SIGNAL \Y_sig~251_combout\ : std_logic;
SIGNAL \Y_sig~252_combout\ : std_logic;
SIGNAL \SLL64|Y[41]~44_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[41]~90_combout\ : std_logic;
SIGNAL \SLL64|Y[41]~42_combout\ : std_logic;
SIGNAL \SLL64|Y[41]~43_combout\ : std_logic;
SIGNAL \SLL64|Y[41]~45_combout\ : std_logic;
SIGNAL \C[41]~input_o\ : std_logic;
SIGNAL \Y_sig~253_combout\ : std_logic;
SIGNAL \Y_sig~254_combout\ : std_logic;
SIGNAL \Y_sig~255_combout\ : std_logic;
SIGNAL \SLL64|Y[42]~46_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[43]~91_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[42]~92_combout\ : std_logic;
SIGNAL \SLL64|Y[42]~47_combout\ : std_logic;
SIGNAL \SLL64|Y[42]~48_combout\ : std_logic;
SIGNAL \SLL64|Y[42]~59_combout\ : std_logic;
SIGNAL \C[42]~input_o\ : std_logic;
SIGNAL \Y_sig~256_combout\ : std_logic;
SIGNAL \Y_sig~257_combout\ : std_logic;
SIGNAL \Y_sig~258_combout\ : std_logic;
SIGNAL \SLL64|Y[43]~50_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[43]~93_combout\ : std_logic;
SIGNAL \SLL64|Y[43]~49_combout\ : std_logic;
SIGNAL \SLL64|Y[43]~60_combout\ : std_logic;
SIGNAL \SLL64|Y[43]~51_combout\ : std_logic;
SIGNAL \C[43]~input_o\ : std_logic;
SIGNAL \Y_sig~259_combout\ : std_logic;
SIGNAL \Y_sig~260_combout\ : std_logic;
SIGNAL \Y_sig~261_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[45]~94_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[44]~95_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[8]~82_combout\ : std_logic;
SIGNAL \SLL64|Y[44]~52_combout\ : std_logic;
SIGNAL \SLL64|Y[44]~53_combout\ : std_logic;
SIGNAL \C[44]~input_o\ : std_logic;
SIGNAL \Y_sig~262_combout\ : std_logic;
SIGNAL \Y_sig~263_combout\ : std_logic;
SIGNAL \Y_sig~264_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[45]~96_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[9]~83_combout\ : std_logic;
SIGNAL \SLL64|Y[45]~54_combout\ : std_logic;
SIGNAL \SLL64|Y[45]~61_combout\ : std_logic;
SIGNAL \C[45]~input_o\ : std_logic;
SIGNAL \Y_sig~265_combout\ : std_logic;
SIGNAL \Y_sig~266_combout\ : std_logic;
SIGNAL \Y_sig~267_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[47]~97_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[46]~98_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[10]~84_combout\ : std_logic;
SIGNAL \SLL64|Y[46]~55_combout\ : std_logic;
SIGNAL \SLL64|Y[46]~56_combout\ : std_logic;
SIGNAL \C[46]~input_o\ : std_logic;
SIGNAL \Y_sig~268_combout\ : std_logic;
SIGNAL \Y_sig~269_combout\ : std_logic;
SIGNAL \Y_sig~270_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[47]~99_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[11]~85_combout\ : std_logic;
SIGNAL \SLL64|Y[47]~57_combout\ : std_logic;
SIGNAL \SLL64|Y[47]~62_combout\ : std_logic;
SIGNAL \C[47]~input_o\ : std_logic;
SIGNAL \Y_sig~271_combout\ : std_logic;
SIGNAL \Y_sig~272_combout\ : std_logic;
SIGNAL \Y_sig~273_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[49]~100_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[48]~101_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[8]~86_combout\ : std_logic;
SIGNAL \Y_sig~276_combout\ : std_logic;
SIGNAL \Y_sig~277_combout\ : std_logic;
SIGNAL \Y_sig~278_combout\ : std_logic;
SIGNAL \Y_sig~274_combout\ : std_logic;
SIGNAL \C[48]~input_o\ : std_logic;
SIGNAL \Y_sig~275_combout\ : std_logic;
SIGNAL \Y_sig~279_combout\ : std_logic;
SIGNAL \Y_sig~280_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[50]~102_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[49]~116_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[9]~87_combout\ : std_logic;
SIGNAL \Y_sig~281_combout\ : std_logic;
SIGNAL \Y_sig~282_combout\ : std_logic;
SIGNAL \Y_sig~283_combout\ : std_logic;
SIGNAL \C[49]~input_o\ : std_logic;
SIGNAL \Y_sig~284_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[51]~103_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[50]~117_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[10]~88_combout\ : std_logic;
SIGNAL \Y_sig~285_combout\ : std_logic;
SIGNAL \Y_sig~286_combout\ : std_logic;
SIGNAL \C[50]~input_o\ : std_logic;
SIGNAL \Y_sig~287_combout\ : std_logic;
SIGNAL \Y_sig~288_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[51]~104_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[11]~89_combout\ : std_logic;
SIGNAL \Y_sig~289_combout\ : std_logic;
SIGNAL \Y_sig~290_combout\ : std_logic;
SIGNAL \Y_sig~291_combout\ : std_logic;
SIGNAL \C[51]~input_o\ : std_logic;
SIGNAL \Y_sig~292_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[53]~105_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[52]~106_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[8]~90_combout\ : std_logic;
SIGNAL \Y_sig~293_combout\ : std_logic;
SIGNAL \Y_sig~294_combout\ : std_logic;
SIGNAL \C[52]~input_o\ : std_logic;
SIGNAL \Y_sig~295_combout\ : std_logic;
SIGNAL \Y_sig~296_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[54]~107_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[53]~118_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[9]~91_combout\ : std_logic;
SIGNAL \Y_sig~297_combout\ : std_logic;
SIGNAL \Y_sig~298_combout\ : std_logic;
SIGNAL \Y_sig~299_combout\ : std_logic;
SIGNAL \C[53]~input_o\ : std_logic;
SIGNAL \Y_sig~300_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[54]~108_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[10]~92_combout\ : std_logic;
SIGNAL \Y_sig~301_combout\ : std_logic;
SIGNAL \Y_sig~302_combout\ : std_logic;
SIGNAL \C[54]~input_o\ : std_logic;
SIGNAL \Y_sig~303_combout\ : std_logic;
SIGNAL \Y_sig~304_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[55]~109_combout\ : std_logic;
SIGNAL \SLL64|Stage1_sig[55]~110_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[11]~93_combout\ : std_logic;
SIGNAL \Y_sig~305_combout\ : std_logic;
SIGNAL \Y_sig~306_combout\ : std_logic;
SIGNAL \Y_sig~307_combout\ : std_logic;
SIGNAL \C[55]~input_o\ : std_logic;
SIGNAL \Y_sig~308_combout\ : std_logic;
SIGNAL \C[56]~input_o\ : std_logic;
SIGNAL \SLL64|Stage2_sig[9]~94_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[8]~95_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[8]~96_combout\ : std_logic;
SIGNAL \Y_sig~309_combout\ : std_logic;
SIGNAL \Y_sig~310_combout\ : std_logic;
SIGNAL \Y_sig~311_combout\ : std_logic;
SIGNAL \Y_sig~312_combout\ : std_logic;
SIGNAL \C[57]~input_o\ : std_logic;
SIGNAL \SLL64|Stage2_sig[10]~97_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[9]~98_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[9]~99_combout\ : std_logic;
SIGNAL \Y_sig~313_combout\ : std_logic;
SIGNAL \Y_sig~314_combout\ : std_logic;
SIGNAL \Y_sig~315_combout\ : std_logic;
SIGNAL \Y_sig~316_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[10]~100_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[10]~101_combout\ : std_logic;
SIGNAL \Y_sig~317_combout\ : std_logic;
SIGNAL \Y_sig~318_combout\ : std_logic;
SIGNAL \C[58]~input_o\ : std_logic;
SIGNAL \Y_sig~319_combout\ : std_logic;
SIGNAL \Y_sig~320_combout\ : std_logic;
SIGNAL \C[59]~input_o\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~270_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[11]~102_combout\ : std_logic;
SIGNAL \SLL64|Stage2_sig[11]~103_combout\ : std_logic;
SIGNAL \Y_sig~321_combout\ : std_logic;
SIGNAL \Y_sig~322_combout\ : std_logic;
SIGNAL \Y_sig~323_combout\ : std_logic;
SIGNAL \Y_sig~324_combout\ : std_logic;
SIGNAL \Y_sig~325_combout\ : std_logic;
SIGNAL \Y_sig~326_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~271_combout\ : std_logic;
SIGNAL \Y_sig~327_combout\ : std_logic;
SIGNAL \Y_sig~328_combout\ : std_logic;
SIGNAL \Y_sig~329_combout\ : std_logic;
SIGNAL \C[60]~input_o\ : std_logic;
SIGNAL \Y_sig~330_combout\ : std_logic;
SIGNAL \Y_sig~331_combout\ : std_logic;
SIGNAL \Y_sig~332_combout\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~272_combout\ : std_logic;
SIGNAL \Y_sig~333_combout\ : std_logic;
SIGNAL \Y_sig~334_combout\ : std_logic;
SIGNAL \Y_sig~335_combout\ : std_logic;
SIGNAL \C[61]~input_o\ : std_logic;
SIGNAL \Y_sig~336_combout\ : std_logic;
SIGNAL \Y_sig~337_combout\ : std_logic;
SIGNAL \Y_sig~338_combout\ : std_logic;
SIGNAL \C[62]~input_o\ : std_logic;
SIGNAL \SRL64|Stage1_sig[48]~273_combout\ : std_logic;
SIGNAL \Y_sig~339_combout\ : std_logic;
SIGNAL \Y_sig~340_combout\ : std_logic;
SIGNAL \Y_sig~341_combout\ : std_logic;
SIGNAL \Y_sig~342_combout\ : std_logic;
SIGNAL \Y_sig~343_combout\ : std_logic;
SIGNAL \Y_sig~344_combout\ : std_logic;
SIGNAL \SLL_PASS_sig[63]~0_combout\ : std_logic;
SIGNAL \SLL_PASS_sig[63]~1_combout\ : std_logic;
SIGNAL \SLL_PASS_sig[63]~2_combout\ : std_logic;
SIGNAL \SLL_PASS_sig[63]~3_combout\ : std_logic;
SIGNAL \SLL_PASS_sig[63]~4_combout\ : std_logic;
SIGNAL \SLL_PASS_sig[63]~5_combout\ : std_logic;
SIGNAL \C[63]~input_o\ : std_logic;
SIGNAL \SgnExtUpper_sig[0]~9_combout\ : std_logic;
SIGNAL \SgnExtUpper_sig[0]~8_combout\ : std_logic;
SIGNAL \SgnExtUpper_sig[0]~10_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
Y <= ww_Y;
ww_ShiftFN <= ShiftFN;
ww_ExtWord <= ExtWord;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y58_N23
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~44_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~56_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~63_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~70_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~78_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~84_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~90_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~96_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~102_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~108_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~114_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~120_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~126_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~132_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~138_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~144_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~148_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~346_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~347_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~348_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~349_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~350_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~351_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~352_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~353_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~354_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~355_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~356_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~357_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~358_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~359_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SgnExtUpper_sig[0]~6_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~228_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~231_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~234_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~237_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~240_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~243_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~246_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~249_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~252_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~255_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~258_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~261_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~264_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~267_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~270_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~273_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~280_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~284_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~288_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~292_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~296_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~300_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~304_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~308_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~312_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~316_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~320_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~324_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~332_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~338_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_sig~344_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SgnExtUpper_sig[0]~10_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOIBUF_X115_Y30_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X115_Y36_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X115_Y44_N1
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LCCOMB_X76_Y39_N18
\SgnExtLower_sig[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SgnExtLower_sig[31]~0_combout\ = (!\B[4]~input_o\ & (\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SgnExtLower_sig[31]~0_combout\);

-- Location: IOIBUF_X115_Y40_N8
\C[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(0),
	o => \C[0]~input_o\);

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

-- Location: IOIBUF_X115_Y36_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X115_Y34_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X77_Y40_N8
\SRL64|Stage2_sig[63]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[63]~27_combout\ = (!\B[3]~input_o\ & (!\B[2]~input_o\ & (!\B[1]~input_o\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \SRL64|Stage2_sig[63]~27_combout\);

-- Location: IOIBUF_X115_Y33_N8
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X74_Y0_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X74_Y36_N16
\X_sig[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \X_sig[0]~1_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[32]~input_o\)) # (!\ExtWord~input_o\ & ((\A[0]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[32]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[0]~input_o\,
	combout => \X_sig[0]~1_combout\);

-- Location: LCCOMB_X76_Y39_N20
\SLL64|Y[32]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[32]~10_combout\ = (\SRL64|Stage2_sig[63]~27_combout\ & \X_sig[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage2_sig[63]~27_combout\,
	datac => \X_sig[0]~1_combout\,
	combout => \SLL64|Y[32]~10_combout\);

-- Location: LCCOMB_X75_Y40_N22
\Y_sig~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~42_combout\ = (\SgnExtLower_sig[31]~0_combout\ & ((\SLL64|Y[32]~10_combout\) # ((\C[0]~input_o\ & !\ShiftFN[0]~input_o\)))) # (!\SgnExtLower_sig[31]~0_combout\ & (\C[0]~input_o\ & ((!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtLower_sig[31]~0_combout\,
	datab => \C[0]~input_o\,
	datac => \SLL64|Y[32]~10_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_sig~42_combout\);

-- Location: IOIBUF_X67_Y0_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X76_Y39_N8
\SRA64|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Equal8~0_combout\ = (\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	combout => \SRA64|Equal8~0_combout\);

-- Location: LCCOMB_X79_Y37_N8
\ShiftCount[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftCount[5]~0_combout\ = (!\ExtWord~input_o\ & \B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	combout => \ShiftCount[5]~0_combout\);

-- Location: IOIBUF_X60_Y73_N8
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X67_Y41_N2
\SRL64|Stage3_sig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~0_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\A[54]~input_o\)) # (!\B[4]~input_o\ & ((\A[38]~input_o\))))) # (!\ShiftCount[5]~0_combout\ & (!\B[4]~input_o\ & (\A[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \A[54]~input_o\,
	datad => \A[38]~input_o\,
	combout => \SRL64|Stage3_sig~0_combout\);

-- Location: LCCOMB_X67_Y41_N20
\SRL64|Stage3_sig~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~1_combout\ = (\SRL64|Stage3_sig~0_combout\) # ((\A[22]~input_o\ & \SRA64|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \SRA64|Equal8~0_combout\,
	datad => \SRL64|Stage3_sig~0_combout\,
	combout => \SRL64|Stage3_sig~1_combout\);

-- Location: IOIBUF_X60_Y0_N22
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X67_Y40_N24
\SRL64|Stage3_sig~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~2_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\A[51]~input_o\)) # (!\B[4]~input_o\ & ((\A[35]~input_o\))))) # (!\ShiftCount[5]~0_combout\ & (\A[51]~input_o\ & (!\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \A[35]~input_o\,
	combout => \SRL64|Stage3_sig~2_combout\);

-- Location: LCCOMB_X67_Y40_N26
\SRL64|Stage3_sig~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~3_combout\ = (\SRL64|Stage3_sig~2_combout\) # ((\A[19]~input_o\ & \SRA64|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[19]~input_o\,
	datac => \SRA64|Equal8~0_combout\,
	datad => \SRL64|Stage3_sig~2_combout\,
	combout => \SRL64|Stage3_sig~3_combout\);

-- Location: IOIBUF_X62_Y0_N22
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: LCCOMB_X67_Y40_N28
\SRL64|Stage3_sig~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~4_combout\ = (\B[4]~input_o\ & (\A[50]~input_o\ & ((\ShiftCount[5]~0_combout\)))) # (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & ((\A[34]~input_o\))) # (!\ShiftCount[5]~0_combout\ & (\A[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[50]~input_o\,
	datac => \A[34]~input_o\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \SRL64|Stage3_sig~4_combout\);

-- Location: LCCOMB_X67_Y40_N22
\SRL64|Stage3_sig~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~5_combout\ = (\SRL64|Stage3_sig~4_combout\) # ((\A[18]~input_o\ & \SRA64|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datac => \SRA64|Equal8~0_combout\,
	datad => \SRL64|Stage3_sig~4_combout\,
	combout => \SRL64|Stage3_sig~5_combout\);

-- Location: LCCOMB_X67_Y40_N0
\SRL64|Stage3_sig~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~6_combout\ = (\B[2]~input_o\ & (((\B[0]~input_o\)))) # (!\B[2]~input_o\ & ((\B[0]~input_o\ & (\SRL64|Stage3_sig~3_combout\)) # (!\B[0]~input_o\ & ((\SRL64|Stage3_sig~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage3_sig~3_combout\,
	datab => \B[2]~input_o\,
	datac => \SRL64|Stage3_sig~5_combout\,
	datad => \B[0]~input_o\,
	combout => \SRL64|Stage3_sig~6_combout\);

-- Location: IOIBUF_X60_Y73_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
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
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X67_Y40_N10
\SRL64|Stage3_sig~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~7_combout\ = (\B[4]~input_o\ & (\ShiftCount[5]~0_combout\ & (\A[55]~input_o\))) # (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & ((\A[39]~input_o\))) # (!\ShiftCount[5]~0_combout\ & (\A[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \A[55]~input_o\,
	datad => \A[39]~input_o\,
	combout => \SRL64|Stage3_sig~7_combout\);

-- Location: LCCOMB_X67_Y40_N20
\SRL64|Stage3_sig~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~8_combout\ = (\SRL64|Stage3_sig~7_combout\) # ((\SRA64|Equal8~0_combout\ & \A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal8~0_combout\,
	datac => \A[23]~input_o\,
	datad => \SRL64|Stage3_sig~7_combout\,
	combout => \SRL64|Stage3_sig~8_combout\);

-- Location: LCCOMB_X67_Y40_N30
\SRL64|Stage3_sig~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~9_combout\ = (\SRL64|Stage3_sig~6_combout\ & (((\SRL64|Stage3_sig~8_combout\) # (!\B[2]~input_o\)))) # (!\SRL64|Stage3_sig~6_combout\ & (\SRL64|Stage3_sig~1_combout\ & (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage3_sig~1_combout\,
	datab => \SRL64|Stage3_sig~6_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64|Stage3_sig~8_combout\,
	combout => \SRL64|Stage3_sig~9_combout\);

-- Location: IOIBUF_X49_Y73_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X69_Y40_N24
\SRL64|Stage3_sig~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~31_combout\ = (\B[4]~input_o\ & (\A[62]~input_o\ & ((\ShiftCount[5]~0_combout\)))) # (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & ((\A[46]~input_o\))) # (!\ShiftCount[5]~0_combout\ & (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[46]~input_o\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \SRL64|Stage3_sig~31_combout\);

-- Location: LCCOMB_X69_Y40_N26
\SRL64|Stage3_sig~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~32_combout\ = (\SRL64|Stage3_sig~31_combout\) # ((\A[30]~input_o\ & \SRA64|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datac => \SRA64|Equal8~0_combout\,
	datad => \SRL64|Stage3_sig~31_combout\,
	combout => \SRL64|Stage3_sig~32_combout\);

-- Location: IOIBUF_X56_Y0_N8
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X115_Y40_N1
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X69_Y40_N30
\SRL64|Stage3_sig~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~38_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\A[63]~input_o\))) # (!\B[4]~input_o\ & (\A[47]~input_o\)))) # (!\ShiftCount[5]~0_combout\ & (((\A[63]~input_o\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \A[63]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRL64|Stage3_sig~38_combout\);

-- Location: IOIBUF_X52_Y73_N15
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X69_Y40_N16
\SRL64|Stage3_sig~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~39_combout\ = (\SRL64|Stage3_sig~38_combout\) # ((\A[31]~input_o\ & \SRA64|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage3_sig~38_combout\,
	datab => \A[31]~input_o\,
	datac => \SRA64|Equal8~0_combout\,
	combout => \SRL64|Stage3_sig~39_combout\);

-- Location: IOIBUF_X0_Y44_N22
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LCCOMB_X69_Y40_N28
\SRL64|Stage3_sig~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~33_combout\ = (\B[4]~input_o\ & (((\A[59]~input_o\ & \ShiftCount[5]~0_combout\)))) # (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & (\A[43]~input_o\)) # (!\ShiftCount[5]~0_combout\ & ((\A[59]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[59]~input_o\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \SRL64|Stage3_sig~33_combout\);

-- Location: LCCOMB_X69_Y40_N14
\SRL64|Stage3_sig~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~34_combout\ = (\SRL64|Stage3_sig~33_combout\) # ((\A[27]~input_o\ & \SRA64|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[27]~input_o\,
	datac => \SRA64|Equal8~0_combout\,
	datad => \SRL64|Stage3_sig~33_combout\,
	combout => \SRL64|Stage3_sig~34_combout\);

-- Location: IOIBUF_X62_Y73_N15
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X69_Y40_N8
\SRL64|Stage3_sig~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~35_combout\ = (\B[4]~input_o\ & (\A[58]~input_o\ & ((\ShiftCount[5]~0_combout\)))) # (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & ((\A[42]~input_o\))) # (!\ShiftCount[5]~0_combout\ & (\A[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[42]~input_o\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \SRL64|Stage3_sig~35_combout\);

-- Location: LCCOMB_X69_Y40_N2
\SRL64|Stage3_sig~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~36_combout\ = (\SRL64|Stage3_sig~35_combout\) # ((\A[26]~input_o\ & \SRA64|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \SRL64|Stage3_sig~35_combout\,
	datac => \SRA64|Equal8~0_combout\,
	combout => \SRL64|Stage3_sig~36_combout\);

-- Location: LCCOMB_X69_Y40_N20
\SRL64|Stage3_sig~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~37_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage3_sig~34_combout\) # ((\B[2]~input_o\)))) # (!\B[0]~input_o\ & (((!\B[2]~input_o\ & \SRL64|Stage3_sig~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage3_sig~34_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64|Stage3_sig~36_combout\,
	combout => \SRL64|Stage3_sig~37_combout\);

-- Location: LCCOMB_X69_Y40_N18
\SRL64|Stage3_sig~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~40_combout\ = (\B[2]~input_o\ & ((\SRL64|Stage3_sig~37_combout\ & ((\SRL64|Stage3_sig~39_combout\))) # (!\SRL64|Stage3_sig~37_combout\ & (\SRL64|Stage3_sig~32_combout\)))) # (!\B[2]~input_o\ & (((\SRL64|Stage3_sig~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage3_sig~32_combout\,
	datab => \SRL64|Stage3_sig~39_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64|Stage3_sig~37_combout\,
	combout => \SRL64|Stage3_sig~40_combout\);

-- Location: IOIBUF_X65_Y73_N22
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X115_Y20_N8
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X68_Y39_N20
\SRL64|Stage3_sig~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~17_combout\ = (\B[4]~input_o\ & (\ShiftCount[5]~0_combout\ & (\A[61]~input_o\))) # (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & ((\A[45]~input_o\))) # (!\ShiftCount[5]~0_combout\ & (\A[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \A[61]~input_o\,
	datad => \A[45]~input_o\,
	combout => \SRL64|Stage3_sig~17_combout\);

-- Location: LCCOMB_X72_Y40_N2
\SRL64|Stage3_sig~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~18_combout\ = (\SRL64|Stage3_sig~17_combout\) # ((\A[29]~input_o\ & \SRA64|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \SRA64|Equal8~0_combout\,
	datad => \SRL64|Stage3_sig~17_combout\,
	combout => \SRL64|Stage3_sig~18_combout\);

-- Location: IOIBUF_X58_Y73_N22
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X67_Y41_N30
\SRL64|Stage3_sig~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~12_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\A[57]~input_o\)) # (!\B[4]~input_o\ & ((\A[41]~input_o\))))) # (!\ShiftCount[5]~0_combout\ & (!\B[4]~input_o\ & (\A[57]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \A[57]~input_o\,
	datad => \A[41]~input_o\,
	combout => \SRL64|Stage3_sig~12_combout\);

-- Location: IOIBUF_X67_Y0_N8
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X67_Y41_N16
\SRL64|Stage3_sig~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~13_combout\ = (\SRL64|Stage3_sig~12_combout\) # ((\A[25]~input_o\ & \SRA64|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage3_sig~12_combout\,
	datab => \A[25]~input_o\,
	datac => \SRA64|Equal8~0_combout\,
	combout => \SRL64|Stage3_sig~13_combout\);

-- Location: IOIBUF_X54_Y0_N8
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X67_Y40_N16
\SRL64|Stage3_sig~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~14_combout\ = (\B[4]~input_o\ & (\A[56]~input_o\ & ((\ShiftCount[5]~0_combout\)))) # (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & ((\A[40]~input_o\))) # (!\ShiftCount[5]~0_combout\ & (\A[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \A[40]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \SRL64|Stage3_sig~14_combout\);

-- Location: LCCOMB_X67_Y40_N18
\SRL64|Stage3_sig~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~15_combout\ = (\SRL64|Stage3_sig~14_combout\) # ((\SRA64|Equal8~0_combout\ & \A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal8~0_combout\,
	datac => \A[24]~input_o\,
	datad => \SRL64|Stage3_sig~14_combout\,
	combout => \SRL64|Stage3_sig~15_combout\);

-- Location: LCCOMB_X67_Y40_N4
\SRL64|Stage3_sig~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~16_combout\ = (\B[2]~input_o\ & (((\B[0]~input_o\)))) # (!\B[2]~input_o\ & ((\B[0]~input_o\ & (\SRL64|Stage3_sig~13_combout\)) # (!\B[0]~input_o\ & ((\SRL64|Stage3_sig~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage3_sig~13_combout\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage3_sig~15_combout\,
	combout => \SRL64|Stage3_sig~16_combout\);

-- Location: IOIBUF_X54_Y73_N1
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X68_Y40_N16
\SRL64|Stage3_sig~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~10_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\A[60]~input_o\))) # (!\B[4]~input_o\ & (\A[44]~input_o\)))) # (!\ShiftCount[5]~0_combout\ & (((!\B[4]~input_o\ & \A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \A[44]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[60]~input_o\,
	combout => \SRL64|Stage3_sig~10_combout\);

-- Location: LCCOMB_X68_Y40_N18
\SRL64|Stage3_sig~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~11_combout\ = (\SRL64|Stage3_sig~10_combout\) # ((\A[28]~input_o\ & \SRA64|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \SRA64|Equal8~0_combout\,
	datad => \SRL64|Stage3_sig~10_combout\,
	combout => \SRL64|Stage3_sig~11_combout\);

-- Location: LCCOMB_X67_Y40_N6
\SRL64|Stage3_sig~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~19_combout\ = (\SRL64|Stage3_sig~16_combout\ & ((\SRL64|Stage3_sig~18_combout\) # ((!\B[2]~input_o\)))) # (!\SRL64|Stage3_sig~16_combout\ & (((\B[2]~input_o\ & \SRL64|Stage3_sig~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage3_sig~18_combout\,
	datab => \SRL64|Stage3_sig~16_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64|Stage3_sig~11_combout\,
	combout => \SRL64|Stage3_sig~19_combout\);

-- Location: IOIBUF_X67_Y73_N8
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X68_Y40_N20
\SRL64|Stage3_sig~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~20_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\A[52]~input_o\)) # (!\B[4]~input_o\ & ((\A[36]~input_o\))))) # (!\ShiftCount[5]~0_combout\ & (\A[52]~input_o\ & (!\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \A[52]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[36]~input_o\,
	combout => \SRL64|Stage3_sig~20_combout\);

-- Location: LCCOMB_X68_Y40_N22
\SRL64|Stage3_sig~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~21_combout\ = (\SRL64|Stage3_sig~20_combout\) # ((\SRA64|Equal8~0_combout\ & \A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64|Equal8~0_combout\,
	datac => \A[20]~input_o\,
	datad => \SRL64|Stage3_sig~20_combout\,
	combout => \SRL64|Stage3_sig~21_combout\);

-- Location: IOIBUF_X115_Y20_N1
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X67_Y0_N22
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X70_Y36_N24
\SRL64|Stage3_sig~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~22_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\A[49]~input_o\)) # (!\B[4]~input_o\ & ((\A[33]~input_o\))))) # (!\ShiftCount[5]~0_combout\ & (\A[49]~input_o\ & ((!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \A[33]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRL64|Stage3_sig~22_combout\);

-- Location: LCCOMB_X70_Y36_N26
\SRL64|Stage3_sig~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~23_combout\ = (\SRL64|Stage3_sig~22_combout\) # ((\SRA64|Equal8~0_combout\ & \A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64|Equal8~0_combout\,
	datac => \A[17]~input_o\,
	datad => \SRL64|Stage3_sig~22_combout\,
	combout => \SRL64|Stage3_sig~23_combout\);

-- Location: IOIBUF_X62_Y0_N15
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X70_Y36_N12
\SRL64|Stage3_sig~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~24_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\A[48]~input_o\))) # (!\B[4]~input_o\ & (\A[32]~input_o\)))) # (!\ShiftCount[5]~0_combout\ & (!\B[4]~input_o\ & ((\A[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \A[32]~input_o\,
	datad => \A[48]~input_o\,
	combout => \SRL64|Stage3_sig~24_combout\);

-- Location: LCCOMB_X70_Y36_N6
\SRL64|Stage3_sig~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~25_combout\ = (\SRL64|Stage3_sig~24_combout\) # ((\SRA64|Equal8~0_combout\ & \A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64|Equal8~0_combout\,
	datac => \A[16]~input_o\,
	datad => \SRL64|Stage3_sig~24_combout\,
	combout => \SRL64|Stage3_sig~25_combout\);

-- Location: LCCOMB_X70_Y36_N8
\SRL64|Stage3_sig~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~26_combout\ = (\B[2]~input_o\ & (((\B[0]~input_o\)))) # (!\B[2]~input_o\ & ((\B[0]~input_o\ & (\SRL64|Stage3_sig~23_combout\)) # (!\B[0]~input_o\ & ((\SRL64|Stage3_sig~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage3_sig~23_combout\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage3_sig~25_combout\,
	combout => \SRL64|Stage3_sig~26_combout\);

-- Location: IOIBUF_X58_Y73_N1
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LCCOMB_X73_Y36_N12
\SRL64|Stage3_sig~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~27_combout\ = (\B[4]~input_o\ & (\A[53]~input_o\ & (\ShiftCount[5]~0_combout\))) # (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & ((\A[37]~input_o\))) # (!\ShiftCount[5]~0_combout\ & (\A[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[53]~input_o\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \A[37]~input_o\,
	combout => \SRL64|Stage3_sig~27_combout\);

-- Location: LCCOMB_X70_Y36_N18
\SRL64|Stage3_sig~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~28_combout\ = (\SRL64|Stage3_sig~27_combout\) # ((\A[21]~input_o\ & \SRA64|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datac => \SRA64|Equal8~0_combout\,
	datad => \SRL64|Stage3_sig~27_combout\,
	combout => \SRL64|Stage3_sig~28_combout\);

-- Location: LCCOMB_X70_Y36_N20
\SRL64|Stage3_sig~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~29_combout\ = (\B[2]~input_o\ & ((\SRL64|Stage3_sig~26_combout\ & ((\SRL64|Stage3_sig~28_combout\))) # (!\SRL64|Stage3_sig~26_combout\ & (\SRL64|Stage3_sig~21_combout\)))) # (!\B[2]~input_o\ & (((\SRL64|Stage3_sig~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage3_sig~21_combout\,
	datab => \B[2]~input_o\,
	datac => \SRL64|Stage3_sig~26_combout\,
	datad => \SRL64|Stage3_sig~28_combout\,
	combout => \SRL64|Stage3_sig~29_combout\);

-- Location: LCCOMB_X70_Y36_N30
\SRL64|Stage3_sig~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~30_combout\ = (\B[1]~input_o\ & (((\B[3]~input_o\)))) # (!\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRL64|Stage3_sig~19_combout\)) # (!\B[3]~input_o\ & ((\SRL64|Stage3_sig~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64|Stage3_sig~19_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64|Stage3_sig~29_combout\,
	combout => \SRL64|Stage3_sig~30_combout\);

-- Location: LCCOMB_X75_Y40_N18
\SRL64|Stage3_sig~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~41_combout\ = (\B[1]~input_o\ & ((\SRL64|Stage3_sig~30_combout\ & ((\SRL64|Stage3_sig~40_combout\))) # (!\SRL64|Stage3_sig~30_combout\ & (\SRL64|Stage3_sig~9_combout\)))) # (!\B[1]~input_o\ & (((\SRL64|Stage3_sig~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage3_sig~9_combout\,
	datab => \SRL64|Stage3_sig~40_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64|Stage3_sig~30_combout\,
	combout => \SRL64|Stage3_sig~41_combout\);

-- Location: LCCOMB_X75_Y40_N4
\Y_sig~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~41_combout\ = (\ShiftFN[1]~input_o\ & (!\ExtWord~input_o\ & ((\B[5]~input_o\) # (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y_sig~41_combout\);

-- Location: LCCOMB_X75_Y40_N16
\Y_sig~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~43_combout\ = (\Y_sig~42_combout\ & (((\SRL64|Stage3_sig~41_combout\ & \Y_sig~41_combout\)) # (!\ShiftFN[1]~input_o\))) # (!\Y_sig~42_combout\ & (\SRL64|Stage3_sig~41_combout\ & (\Y_sig~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~42_combout\,
	datab => \SRL64|Stage3_sig~41_combout\,
	datac => \Y_sig~41_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_sig~43_combout\);

-- Location: LCCOMB_X72_Y40_N24
\SwapWord~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SwapWord~0_combout\ = (\ShiftFN[1]~input_o\ & \ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SwapWord~0_combout\);

-- Location: IOIBUF_X65_Y0_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X68_Y36_N8
\SRL64|Stage1_sig[48]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~76_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[34]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[34]~input_o\,
	datad => \A[2]~input_o\,
	combout => \SRL64|Stage1_sig[48]~76_combout\);

-- Location: IOIBUF_X58_Y0_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X73_Y36_N0
\SRL64|Stage1_sig[48]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~74_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[35]~input_o\))) # (!\SwapWord~0_combout\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[35]~input_o\,
	combout => \SRL64|Stage1_sig[48]~74_combout\);

-- Location: IOIBUF_X74_Y0_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X74_Y36_N24
\X_sig[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \X_sig[1]~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[33]~input_o\)) # (!\ExtWord~input_o\ & ((\A[1]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[33]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[1]~input_o\,
	combout => \X_sig[1]~0_combout\);

-- Location: LCCOMB_X74_Y36_N26
\SRL64|Stage1_sig[48]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~75_combout\ = (\SRL64|Stage1_sig[48]~74_combout\) # ((!\B[1]~input_o\ & \X_sig[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SRL64|Stage1_sig[48]~74_combout\,
	datad => \X_sig[1]~0_combout\,
	combout => \SRL64|Stage1_sig[48]~75_combout\);

-- Location: LCCOMB_X74_Y36_N28
\Y_sig~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~37_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[32]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[32]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[0]~input_o\,
	combout => \Y_sig~37_combout\);

-- Location: LCCOMB_X74_Y36_N14
\Y_sig~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~38_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~75_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~76_combout\) # ((\Y_sig~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~76_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[48]~75_combout\,
	datad => \Y_sig~37_combout\,
	combout => \Y_sig~38_combout\);

-- Location: IOIBUF_X60_Y0_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X68_Y39_N0
\SRL64|Stage1_sig[48]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~68_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[43]~input_o\))) # (!\SwapWord~0_combout\ & (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[43]~input_o\,
	datad => \SwapWord~0_combout\,
	combout => \SRL64|Stage1_sig[48]~68_combout\);

-- Location: IOIBUF_X58_Y0_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X72_Y39_N16
\SRL64|Stage1_sig[48]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~71_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[42]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[42]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~71_combout\);

-- Location: IOIBUF_X115_Y25_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X72_Y36_N8
\SRL64|Stage1_sig[48]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~72_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[40]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[40]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[8]~input_o\,
	combout => \SRL64|Stage1_sig[48]~72_combout\);

-- Location: LCCOMB_X72_Y36_N2
\SRL64|Stage1_sig[8]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[8]~73_combout\ = (\SRL64|Stage1_sig[48]~71_combout\) # (\SRL64|Stage1_sig[48]~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~71_combout\,
	datac => \SRL64|Stage1_sig[48]~72_combout\,
	combout => \SRL64|Stage1_sig[8]~73_combout\);

-- Location: IOIBUF_X38_Y73_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X67_Y41_N8
\SRL64|Stage1_sig[48]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~69_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[41]~input_o\))) # (!\SwapWord~0_combout\ & (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[9]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[41]~input_o\,
	combout => \SRL64|Stage1_sig[48]~69_combout\);

-- Location: LCCOMB_X73_Y37_N2
\SRL64|Stage1_sig[8]~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[8]~274_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~68_combout\) # ((\SRL64|Stage1_sig[48]~69_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[8]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~68_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[8]~73_combout\,
	datad => \SRL64|Stage1_sig[48]~69_combout\,
	combout => \SRL64|Stage1_sig[8]~274_combout\);

-- Location: LCCOMB_X73_Y38_N0
\Y_sig~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~39_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SRL64|Stage1_sig[8]~274_combout\))) # (!\B[3]~input_o\ & (\Y_sig~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Y_sig~38_combout\,
	datad => \SRL64|Stage1_sig[8]~274_combout\,
	combout => \Y_sig~39_combout\);

-- Location: IOIBUF_X42_Y73_N8
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X68_Y39_N26
\SRL64|Stage1_sig[48]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~83_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[45]~input_o\))) # (!\SwapWord~0_combout\ & (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[45]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SwapWord~0_combout\,
	combout => \SRL64|Stage1_sig[48]~83_combout\);

-- Location: IOIBUF_X56_Y0_N15
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X67_Y39_N10
\SRL64|Stage1_sig[48]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~86_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[44]~input_o\))) # (!\SwapWord~0_combout\ & (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[12]~input_o\,
	datac => \A[44]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~86_combout\);

-- Location: IOIBUF_X67_Y0_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X67_Y39_N16
\SRL64|Stage1_sig[48]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~85_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[46]~input_o\))) # (!\SwapWord~0_combout\ & (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[14]~input_o\,
	datac => \A[46]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~85_combout\);

-- Location: LCCOMB_X67_Y39_N4
\SRL64|Stage1_sig[12]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[12]~87_combout\ = (\SRL64|Stage1_sig[48]~86_combout\) # (\SRL64|Stage1_sig[48]~85_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~86_combout\,
	datad => \SRL64|Stage1_sig[48]~85_combout\,
	combout => \SRL64|Stage1_sig[12]~87_combout\);

-- Location: IOIBUF_X0_Y34_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X69_Y38_N0
\SRL64|Stage1_sig[48]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~82_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[47]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[47]~input_o\,
	datad => \A[15]~input_o\,
	combout => \SRL64|Stage1_sig[48]~82_combout\);

-- Location: LCCOMB_X69_Y38_N12
\SRL64|Stage1_sig[12]~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[12]~275_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~83_combout\) # ((\SRL64|Stage1_sig[48]~82_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[12]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~83_combout\,
	datab => \SRL64|Stage1_sig[12]~87_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~82_combout\,
	combout => \SRL64|Stage1_sig[12]~275_combout\);

-- Location: IOIBUF_X60_Y0_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X68_Y36_N2
\SRL64|Stage1_sig[48]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~80_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[36]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[36]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \SRL64|Stage1_sig[48]~80_combout\);

-- Location: IOIBUF_X72_Y0_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X72_Y36_N28
\SRL64|Stage1_sig[48]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~79_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[38]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[38]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[6]~input_o\,
	combout => \SRL64|Stage1_sig[48]~79_combout\);

-- Location: LCCOMB_X72_Y36_N6
\SRL64|Stage1_sig[48]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~81_combout\ = (\SRL64|Stage1_sig[48]~80_combout\) # (\SRL64|Stage1_sig[48]~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage1_sig[48]~80_combout\,
	datad => \SRL64|Stage1_sig[48]~79_combout\,
	combout => \SRL64|Stage1_sig[48]~81_combout\);

-- Location: IOIBUF_X58_Y73_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X69_Y41_N24
\SRL64|Stage1_sig[48]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~77_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[39]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[7]~input_o\,
	combout => \SRL64|Stage1_sig[48]~77_combout\);

-- Location: IOIBUF_X115_Y28_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X73_Y36_N2
\SRL64|Stage1_sig[48]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~78_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[37]~input_o\))) # (!\SwapWord~0_combout\ & (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[5]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[37]~input_o\,
	combout => \SRL64|Stage1_sig[48]~78_combout\);

-- Location: LCCOMB_X73_Y37_N18
\SRL64|Stage2_sig[48]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~24_combout\ = (\SRL64|Stage1_sig[48]~77_combout\) # (\SRL64|Stage1_sig[48]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~77_combout\,
	datad => \SRL64|Stage1_sig[48]~78_combout\,
	combout => \SRL64|Stage2_sig[48]~24_combout\);

-- Location: LCCOMB_X73_Y37_N12
\SRL64|Stage2_sig[48]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~25_combout\ = (!\B[3]~input_o\ & ((\B[0]~input_o\ & ((\SRL64|Stage2_sig[48]~24_combout\))) # (!\B[0]~input_o\ & (\SRL64|Stage1_sig[48]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64|Stage1_sig[48]~81_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage2_sig[48]~24_combout\,
	combout => \SRL64|Stage2_sig[48]~25_combout\);

-- Location: LCCOMB_X73_Y38_N18
\SRL64|Stage2_sig[48]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~26_combout\ = (\SRL64|Stage2_sig[48]~25_combout\) # ((\SRL64|Stage1_sig[12]~275_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[12]~275_combout\,
	datab => \B[3]~input_o\,
	datad => \SRL64|Stage2_sig[48]~25_combout\,
	combout => \SRL64|Stage2_sig[48]~26_combout\);

-- Location: LCCOMB_X75_Y40_N8
\Y_sig~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~36_combout\ = (\ShiftFN[1]~input_o\ & (!\B[5]~input_o\ & (!\ExtWord~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y_sig~36_combout\);

-- Location: LCCOMB_X73_Y38_N28
\Y_sig~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~40_combout\ = (\Y_sig~36_combout\ & ((\Y_sig~39_combout\) # ((\B[2]~input_o\ & \SRL64|Stage2_sig[48]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Y_sig~39_combout\,
	datac => \SRL64|Stage2_sig[48]~26_combout\,
	datad => \Y_sig~36_combout\,
	combout => \Y_sig~40_combout\);

-- Location: LCCOMB_X67_Y41_N14
\SRL64|Stage1_sig[48]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~111_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[9]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[41]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[9]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[41]~input_o\,
	combout => \SRL64|Stage1_sig[48]~111_combout\);

-- Location: LCCOMB_X68_Y39_N22
\SRL64|Stage1_sig[48]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~110_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[11]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[43]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[43]~input_o\,
	datad => \SwapWord~0_combout\,
	combout => \SRL64|Stage1_sig[48]~110_combout\);

-- Location: LCCOMB_X72_Y39_N10
\SRL64|Stage1_sig[41]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[41]~112_combout\ = (\SRL64|Stage1_sig[48]~111_combout\) # (\SRL64|Stage1_sig[48]~110_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage1_sig[48]~111_combout\,
	datad => \SRL64|Stage1_sig[48]~110_combout\,
	combout => \SRL64|Stage1_sig[41]~112_combout\);

-- Location: LCCOMB_X76_Y36_N8
\SRL64|Stage2_sig[48]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~28_combout\ = (\B[3]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \SRL64|Stage2_sig[48]~28_combout\);

-- Location: LCCOMB_X72_Y36_N24
\SRL64|Stage1_sig[48]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~114_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[8]~input_o\))) # (!\SwapWord~0_combout\ & (\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[40]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[8]~input_o\,
	combout => \SRL64|Stage1_sig[48]~114_combout\);

-- Location: LCCOMB_X72_Y39_N28
\SRL64|Stage1_sig[48]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~113_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[10]~input_o\))) # (!\SwapWord~0_combout\ & (\A[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[42]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~113_combout\);

-- Location: LCCOMB_X72_Y39_N6
\SRL64|Stage1_sig[40]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[40]~115_combout\ = (\SRL64|Stage1_sig[48]~114_combout\) # (\SRL64|Stage1_sig[48]~113_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~114_combout\,
	datad => \SRL64|Stage1_sig[48]~113_combout\,
	combout => \SRL64|Stage1_sig[40]~115_combout\);

-- Location: LCCOMB_X72_Y39_N0
\SRL64|Stage2_sig[32]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[32]~34_combout\ = (\SRL64|Stage2_sig[48]~28_combout\ & ((\B[0]~input_o\ & (\SRL64|Stage1_sig[41]~112_combout\)) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[40]~115_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[41]~112_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SRL64|Stage1_sig[40]~115_combout\,
	combout => \SRL64|Stage2_sig[32]~34_combout\);

-- Location: LCCOMB_X77_Y40_N26
\SRL64|Stage2_sig[48]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~29_combout\ = (!\B[3]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \SRL64|Stage2_sig[48]~29_combout\);

-- Location: LCCOMB_X74_Y36_N12
\SRL64|Stage1_sig[48]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~132_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[1]~input_o\))) # (!\SwapWord~0_combout\ & (\A[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[33]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~132_combout\);

-- Location: LCCOMB_X68_Y36_N10
\SRL64|Stage1_sig[48]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~128_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[2]~input_o\))) # (!\SwapWord~0_combout\ & (\A[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[34]~input_o\,
	datad => \A[2]~input_o\,
	combout => \SRL64|Stage1_sig[48]~128_combout\);

-- Location: LCCOMB_X74_Y36_N2
\SRL64|Stage1_sig[48]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~129_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[0]~input_o\))) # (!\SwapWord~0_combout\ & (\A[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[32]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[0]~input_o\,
	combout => \SRL64|Stage1_sig[48]~129_combout\);

-- Location: LCCOMB_X68_Y36_N4
\SRL64|Stage1_sig[32]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[32]~130_combout\ = (\SRL64|Stage1_sig[48]~128_combout\) # (\SRL64|Stage1_sig[48]~129_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~128_combout\,
	datad => \SRL64|Stage1_sig[48]~129_combout\,
	combout => \SRL64|Stage1_sig[32]~130_combout\);

-- Location: LCCOMB_X73_Y36_N8
\SRL64|Stage1_sig[48]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~131_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[3]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[35]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[35]~input_o\,
	combout => \SRL64|Stage1_sig[48]~131_combout\);

-- Location: LCCOMB_X72_Y37_N24
\SRL64|Stage1_sig[32]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[32]~133_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~132_combout\) # ((\SRL64|Stage1_sig[48]~131_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[32]~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[48]~132_combout\,
	datac => \SRL64|Stage1_sig[32]~130_combout\,
	datad => \SRL64|Stage1_sig[48]~131_combout\,
	combout => \SRL64|Stage1_sig[32]~133_combout\);

-- Location: LCCOMB_X76_Y36_N4
\SRL64|Stage2_sig[44]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[44]~32_combout\ = (\B[3]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \SRL64|Stage2_sig[44]~32_combout\);

-- Location: LCCOMB_X76_Y36_N2
\SRA64|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Equal5~0_combout\ = (!\B[3]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \SRA64|Equal5~0_combout\);

-- Location: LCCOMB_X69_Y41_N12
\SRL64|Stage1_sig[48]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~122_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[7]~input_o\))) # (!\SwapWord~0_combout\ & (\A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[7]~input_o\,
	combout => \SRL64|Stage1_sig[48]~122_combout\);

-- Location: LCCOMB_X68_Y36_N6
\SRL64|Stage1_sig[48]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~126_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[4]~input_o\))) # (!\SwapWord~0_combout\ & (\A[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[36]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \SRL64|Stage1_sig[48]~126_combout\);

-- Location: LCCOMB_X72_Y36_N18
\SRL64|Stage1_sig[48]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~125_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[6]~input_o\))) # (!\SwapWord~0_combout\ & (\A[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[38]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[6]~input_o\,
	combout => \SRL64|Stage1_sig[48]~125_combout\);

-- Location: LCCOMB_X68_Y36_N24
\SRL64|Stage1_sig[36]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[36]~127_combout\ = (\SRL64|Stage1_sig[48]~126_combout\) # (\SRL64|Stage1_sig[48]~125_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~126_combout\,
	datad => \SRL64|Stage1_sig[48]~125_combout\,
	combout => \SRL64|Stage1_sig[36]~127_combout\);

-- Location: LCCOMB_X73_Y36_N14
\SRL64|Stage1_sig[48]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~123_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[5]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[37]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[5]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[37]~input_o\,
	combout => \SRL64|Stage1_sig[48]~123_combout\);

-- Location: LCCOMB_X72_Y38_N12
\SRL64|Stage1_sig[36]~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[36]~278_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~122_combout\) # ((\SRL64|Stage1_sig[48]~123_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[36]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~122_combout\,
	datab => \SRL64|Stage1_sig[36]~127_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~123_combout\,
	combout => \SRL64|Stage1_sig[36]~278_combout\);

-- Location: LCCOMB_X68_Y39_N16
\SRL64|Stage1_sig[48]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~117_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[13]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[45]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[45]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SwapWord~0_combout\,
	combout => \SRL64|Stage1_sig[48]~117_combout\);

-- Location: LCCOMB_X69_Y38_N22
\SRL64|Stage1_sig[48]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~116_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[15]~input_o\))) # (!\SwapWord~0_combout\ & (\A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[47]~input_o\,
	datad => \A[15]~input_o\,
	combout => \SRL64|Stage1_sig[48]~116_combout\);

-- Location: LCCOMB_X67_Y39_N8
\SRL64|Stage1_sig[48]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~120_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[12]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[44]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[12]~input_o\,
	datac => \A[44]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~120_combout\);

-- Location: LCCOMB_X67_Y39_N22
\SRL64|Stage1_sig[48]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~119_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[14]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[46]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[14]~input_o\,
	datac => \A[46]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~119_combout\);

-- Location: LCCOMB_X70_Y39_N18
\SRL64|Stage1_sig[44]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[44]~121_combout\ = (\SRL64|Stage1_sig[48]~120_combout\) # (\SRL64|Stage1_sig[48]~119_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage1_sig[48]~120_combout\,
	datad => \SRL64|Stage1_sig[48]~119_combout\,
	combout => \SRL64|Stage1_sig[44]~121_combout\);

-- Location: LCCOMB_X70_Y39_N28
\SRL64|Stage1_sig[44]~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[44]~277_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~117_combout\) # ((\SRL64|Stage1_sig[48]~116_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[44]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~117_combout\,
	datab => \SRL64|Stage1_sig[48]~116_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[44]~121_combout\,
	combout => \SRL64|Stage1_sig[44]~277_combout\);

-- Location: LCCOMB_X73_Y40_N16
\SRL64|Stage2_sig[32]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[32]~35_combout\ = (\SRL64|Stage2_sig[44]~32_combout\ & ((\SRL64|Stage1_sig[44]~277_combout\) # ((\SRA64|Equal5~0_combout\ & \SRL64|Stage1_sig[36]~278_combout\)))) # (!\SRL64|Stage2_sig[44]~32_combout\ & (\SRA64|Equal5~0_combout\ & 
-- (\SRL64|Stage1_sig[36]~278_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[44]~32_combout\,
	datab => \SRA64|Equal5~0_combout\,
	datac => \SRL64|Stage1_sig[36]~278_combout\,
	datad => \SRL64|Stage1_sig[44]~277_combout\,
	combout => \SRL64|Stage2_sig[32]~35_combout\);

-- Location: LCCOMB_X73_Y40_N2
\SRL64|Stage2_sig[32]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[32]~36_combout\ = (\SRL64|Stage2_sig[32]~34_combout\) # ((\SRL64|Stage2_sig[32]~35_combout\) # ((\SRL64|Stage2_sig[48]~29_combout\ & \SRL64|Stage1_sig[32]~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[32]~34_combout\,
	datab => \SRL64|Stage2_sig[48]~29_combout\,
	datac => \SRL64|Stage1_sig[32]~133_combout\,
	datad => \SRL64|Stage2_sig[32]~35_combout\,
	combout => \SRL64|Stage2_sig[32]~36_combout\);

-- Location: LCCOMB_X76_Y39_N14
\SRA64|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Equal8~1_combout\ = (\B[4]~input_o\) # ((\B[5]~input_o\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	combout => \SRA64|Equal8~1_combout\);

-- Location: LCCOMB_X67_Y41_N4
\SRL64|Stage1_sig[48]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~103_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[22]~input_o\))) # (!\SwapWord~0_combout\ & (\A[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \A[54]~input_o\,
	datad => \A[22]~input_o\,
	combout => \SRL64|Stage1_sig[48]~103_combout\);

-- Location: LCCOMB_X68_Y40_N26
\SRL64|Stage1_sig[48]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~104_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[20]~input_o\))) # (!\SwapWord~0_combout\ & (\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[52]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~104_combout\);

-- Location: LCCOMB_X68_Y40_N12
\SRL64|Stage1_sig[52]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[52]~105_combout\ = (\SRL64|Stage1_sig[48]~103_combout\) # (\SRL64|Stage1_sig[48]~104_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~103_combout\,
	datac => \SRL64|Stage1_sig[48]~104_combout\,
	combout => \SRL64|Stage1_sig[52]~105_combout\);

-- Location: LCCOMB_X69_Y38_N28
\SRL64|Stage1_sig[48]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~101_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[21]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[53]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[21]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[53]~input_o\,
	combout => \SRL64|Stage1_sig[48]~101_combout\);

-- Location: LCCOMB_X69_Y41_N10
\SRL64|Stage1_sig[48]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~100_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[23]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[55]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[55]~input_o\,
	combout => \SRL64|Stage1_sig[48]~100_combout\);

-- Location: LCCOMB_X70_Y41_N10
\SRL64|Stage1_sig[53]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[53]~102_combout\ = (\SRL64|Stage1_sig[48]~101_combout\) # (\SRL64|Stage1_sig[48]~100_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~101_combout\,
	datad => \SRL64|Stage1_sig[48]~100_combout\,
	combout => \SRL64|Stage1_sig[53]~102_combout\);

-- Location: LCCOMB_X70_Y41_N12
\SRL64|Stage2_sig[48]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~31_combout\ = (\SRA64|Equal5~0_combout\ & ((\B[0]~input_o\ & ((\SRL64|Stage1_sig[53]~102_combout\))) # (!\B[0]~input_o\ & (\SRL64|Stage1_sig[52]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \SRL64|Stage1_sig[52]~105_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[53]~102_combout\,
	combout => \SRL64|Stage2_sig[48]~31_combout\);

-- Location: LCCOMB_X67_Y41_N10
\SRL64|Stage1_sig[48]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~95_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[25]~input_o\))) # (!\SwapWord~0_combout\ & (\A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[57]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[25]~input_o\,
	combout => \SRL64|Stage1_sig[48]~95_combout\);

-- Location: LCCOMB_X67_Y40_N8
\SRL64|Stage1_sig[48]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~98_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[24]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[56]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \A[24]~input_o\,
	datad => \A[56]~input_o\,
	combout => \SRL64|Stage1_sig[48]~98_combout\);

-- Location: LCCOMB_X69_Y40_N22
\SRL64|Stage1_sig[48]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~97_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[26]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[58]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[58]~input_o\,
	combout => \SRL64|Stage1_sig[48]~97_combout\);

-- Location: LCCOMB_X68_Y40_N8
\SRL64|Stage1_sig[56]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[56]~99_combout\ = (\SRL64|Stage1_sig[48]~98_combout\) # (\SRL64|Stage1_sig[48]~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~98_combout\,
	datad => \SRL64|Stage1_sig[48]~97_combout\,
	combout => \SRL64|Stage1_sig[56]~99_combout\);

-- Location: LCCOMB_X69_Y40_N4
\SRL64|Stage1_sig[48]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~94_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[27]~input_o\))) # (!\SwapWord~0_combout\ & (\A[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[59]~input_o\,
	datad => \A[27]~input_o\,
	combout => \SRL64|Stage1_sig[48]~94_combout\);

-- Location: LCCOMB_X70_Y40_N4
\SRL64|Stage1_sig[56]~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[56]~276_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~95_combout\) # ((\SRL64|Stage1_sig[48]~94_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[56]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~95_combout\,
	datab => \SRL64|Stage1_sig[56]~99_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~94_combout\,
	combout => \SRL64|Stage1_sig[56]~276_combout\);

-- Location: LCCOMB_X70_Y36_N10
\SRL64|Stage1_sig[48]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~92_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[17]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[49]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \A[17]~input_o\,
	datad => \A[49]~input_o\,
	combout => \SRL64|Stage1_sig[48]~92_combout\);

-- Location: LCCOMB_X70_Y38_N0
\SRL64|Stage1_sig[48]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~88_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[18]~input_o\))) # (!\SwapWord~0_combout\ & (\A[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \A[50]~input_o\,
	datad => \A[18]~input_o\,
	combout => \SRL64|Stage1_sig[48]~88_combout\);

-- Location: LCCOMB_X70_Y36_N0
\SRL64|Stage1_sig[48]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~89_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[16]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[48]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \B[1]~input_o\,
	datad => \A[48]~input_o\,
	combout => \SRL64|Stage1_sig[48]~89_combout\);

-- Location: LCCOMB_X69_Y39_N8
\SRL64|Stage1_sig[48]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~90_combout\ = (\SRL64|Stage1_sig[48]~88_combout\) # (\SRL64|Stage1_sig[48]~89_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~88_combout\,
	datac => \SRL64|Stage1_sig[48]~89_combout\,
	combout => \SRL64|Stage1_sig[48]~90_combout\);

-- Location: LCCOMB_X68_Y36_N28
\SRL64|Stage1_sig[48]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~91_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[19]~input_o\))) # (!\SwapWord~0_combout\ & (\A[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[51]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[19]~input_o\,
	combout => \SRL64|Stage1_sig[48]~91_combout\);

-- Location: LCCOMB_X69_Y39_N2
\SRL64|Stage1_sig[48]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~93_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~92_combout\) # ((\SRL64|Stage1_sig[48]~91_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~92_combout\,
	datab => \SRL64|Stage1_sig[48]~90_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~91_combout\,
	combout => \SRL64|Stage1_sig[48]~93_combout\);

-- Location: LCCOMB_X70_Y41_N16
\SRL64|Stage2_sig[48]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~30_combout\ = (\SRL64|Stage2_sig[48]~28_combout\ & ((\SRL64|Stage1_sig[56]~276_combout\) # ((\SRL64|Stage2_sig[48]~29_combout\ & \SRL64|Stage1_sig[48]~93_combout\)))) # (!\SRL64|Stage2_sig[48]~28_combout\ & 
-- (\SRL64|Stage2_sig[48]~29_combout\ & ((\SRL64|Stage1_sig[48]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~28_combout\,
	datab => \SRL64|Stage2_sig[48]~29_combout\,
	datac => \SRL64|Stage1_sig[56]~276_combout\,
	datad => \SRL64|Stage1_sig[48]~93_combout\,
	combout => \SRL64|Stage2_sig[48]~30_combout\);

-- Location: LCCOMB_X72_Y40_N8
\SRL64|Stage1_sig[48]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~107_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[29]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[61]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \A[61]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~107_combout\);

-- Location: LCCOMB_X72_Y40_N22
\X_sig[62]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \X_sig[62]~3_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[30]~input_o\)) # (!\ExtWord~input_o\ & ((\A[62]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[30]~input_o\,
	datad => \A[62]~input_o\,
	combout => \X_sig[62]~3_combout\);

-- Location: LCCOMB_X72_Y40_N28
\X_sig[63]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \X_sig[63]~2_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[31]~input_o\)) # (!\ExtWord~input_o\ & ((\A[63]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[31]~input_o\,
	datac => \A[63]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \X_sig[63]~2_combout\);

-- Location: LCCOMB_X73_Y41_N8
\SRL64|Stage1_sig[60]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[60]~106_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\X_sig[63]~2_combout\))) # (!\B[0]~input_o\ & (\X_sig[62]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_sig[62]~3_combout\,
	datab => \B[0]~input_o\,
	datac => \X_sig[63]~2_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[60]~106_combout\);

-- Location: LCCOMB_X68_Y40_N6
\SRL64|Stage1_sig[48]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~108_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[28]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[60]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \A[60]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~108_combout\);

-- Location: LCCOMB_X73_Y41_N18
\SRL64|Stage1_sig[60]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[60]~109_combout\ = (\SRL64|Stage1_sig[60]~106_combout\) # ((\B[0]~input_o\ & (\SRL64|Stage1_sig[48]~107_combout\)) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~107_combout\,
	datab => \SRL64|Stage1_sig[60]~106_combout\,
	datac => \SRL64|Stage1_sig[48]~108_combout\,
	datad => \B[0]~input_o\,
	combout => \SRL64|Stage1_sig[60]~109_combout\);

-- Location: LCCOMB_X70_Y41_N22
\SRL64|Stage2_sig[48]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~33_combout\ = (\SRL64|Stage2_sig[48]~31_combout\) # ((\SRL64|Stage2_sig[48]~30_combout\) # ((\SRL64|Stage1_sig[60]~109_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~31_combout\,
	datab => \SRL64|Stage2_sig[48]~30_combout\,
	datac => \SRL64|Stage1_sig[60]~109_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SRL64|Stage2_sig[48]~33_combout\);

-- Location: LCCOMB_X76_Y39_N0
\SRA_SRL_sig[32]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[32]~0_combout\ = (\SRA64|Equal8~1_combout\ & (((\SRA64|Equal8~0_combout\ & \SRL64|Stage2_sig[48]~33_combout\)))) # (!\SRA64|Equal8~1_combout\ & (\SRL64|Stage2_sig[32]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[32]~36_combout\,
	datab => \SRA64|Equal8~0_combout\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \SRL64|Stage2_sig[48]~33_combout\,
	combout => \SRA_SRL_sig[32]~0_combout\);

-- Location: LCCOMB_X79_Y40_N24
\SRA_SRL_sig[32]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[32]~1_combout\ = (\SRA_SRL_sig[32]~0_combout\) # ((\ShiftCount[5]~0_combout\ & (\ShiftFN[0]~input_o\ & \A[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[63]~input_o\,
	datad => \SRA_SRL_sig[32]~0_combout\,
	combout => \SRA_SRL_sig[32]~1_combout\);

-- Location: LCCOMB_X79_Y40_N26
\Y_sig~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~44_combout\ = (\Y_sig~43_combout\) # ((\Y_sig~40_combout\) # ((\SwapWord~0_combout\ & \SRA_SRL_sig[32]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~43_combout\,
	datab => \SwapWord~0_combout\,
	datac => \Y_sig~40_combout\,
	datad => \SRA_SRL_sig[32]~1_combout\,
	combout => \Y_sig~44_combout\);

-- Location: LCCOMB_X74_Y42_N8
\Y_sig~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~51_combout\ = (\ShiftFN[1]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \Y_sig~51_combout\);

-- Location: LCCOMB_X77_Y41_N0
\Y_sig~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~48_combout\ = (\B[4]~input_o\ & ((\ExtWord~input_o\) # ((\ShiftFN[0]~input_o\) # (!\B[5]~input_o\)))) # (!\B[4]~input_o\ & (\ShiftFN[0]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_sig~48_combout\);

-- Location: LCCOMB_X76_Y39_N10
\SRL64|Stage3_sig~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage3_sig~42_combout\ = \B[4]~input_o\ $ (((\B[5]~input_o\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	combout => \SRL64|Stage3_sig~42_combout\);

-- Location: LCCOMB_X67_Y40_N2
\SRL64|Stage1_sig[48]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~152_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[24]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[56]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \A[24]~input_o\,
	datad => \A[56]~input_o\,
	combout => \SRL64|Stage1_sig[48]~152_combout\);

-- Location: LCCOMB_X67_Y41_N24
\SRL64|Stage1_sig[48]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~153_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[22]~input_o\))) # (!\SwapWord~0_combout\ & (\A[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \A[54]~input_o\,
	datad => \A[22]~input_o\,
	combout => \SRL64|Stage1_sig[48]~153_combout\);

-- Location: LCCOMB_X70_Y41_N24
\SRL64|Stage1_sig[54]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[54]~154_combout\ = (\SRL64|Stage1_sig[48]~152_combout\) # (\SRL64|Stage1_sig[48]~153_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~152_combout\,
	datad => \SRL64|Stage1_sig[48]~153_combout\,
	combout => \SRL64|Stage1_sig[54]~154_combout\);

-- Location: LCCOMB_X70_Y41_N18
\SRA64|Stage2_sig[49]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[49]~29_combout\ = (\SRA64|Equal5~0_combout\ & ((\B[0]~input_o\ & (\SRL64|Stage1_sig[54]~154_combout\)) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[53]~102_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \SRL64|Stage1_sig[54]~154_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[53]~102_combout\,
	combout => \SRA64|Stage2_sig[49]~29_combout\);

-- Location: LCCOMB_X73_Y41_N12
\SRL64|Stage1_sig[61]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[61]~168_combout\ = (\B[0]~input_o\ & (\X_sig[62]~3_combout\ & ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\X_sig[63]~2_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_sig[62]~3_combout\,
	datab => \B[0]~input_o\,
	datac => \X_sig[63]~2_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[61]~168_combout\);

-- Location: LCCOMB_X73_Y41_N14
\SRL64|Stage1_sig[61]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[61]~169_combout\ = (\SRL64|Stage1_sig[61]~168_combout\) # ((\SRL64|Stage1_sig[48]~107_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~107_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[61]~168_combout\,
	combout => \SRL64|Stage1_sig[61]~169_combout\);

-- Location: LCCOMB_X69_Y40_N0
\SRL64|Stage1_sig[48]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~150_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[26]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[58]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[58]~input_o\,
	combout => \SRL64|Stage1_sig[48]~150_combout\);

-- Location: LCCOMB_X70_Y40_N8
\SRL64|Stage1_sig[57]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[57]~96_combout\ = (\SRL64|Stage1_sig[48]~95_combout\) # (\SRL64|Stage1_sig[48]~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage1_sig[48]~95_combout\,
	datad => \SRL64|Stage1_sig[48]~94_combout\,
	combout => \SRL64|Stage1_sig[57]~96_combout\);

-- Location: LCCOMB_X68_Y40_N2
\SRL64|Stage1_sig[48]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~149_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[28]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[60]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \A[60]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~149_combout\);

-- Location: LCCOMB_X70_Y40_N18
\SRL64|Stage1_sig[57]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[57]~151_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~150_combout\) # ((\SRL64|Stage1_sig[48]~149_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[57]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~150_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[57]~96_combout\,
	datad => \SRL64|Stage1_sig[48]~149_combout\,
	combout => \SRL64|Stage1_sig[57]~151_combout\);

-- Location: LCCOMB_X68_Y40_N24
\SRL64|Stage1_sig[48]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~145_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[20]~input_o\))) # (!\SwapWord~0_combout\ & (\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[52]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~145_combout\);

-- Location: LCCOMB_X70_Y38_N12
\SRL64|Stage1_sig[48]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~146_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[18]~input_o\))) # (!\SwapWord~0_combout\ & (\A[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \A[50]~input_o\,
	datad => \A[18]~input_o\,
	combout => \SRL64|Stage1_sig[48]~146_combout\);

-- Location: LCCOMB_X69_Y39_N12
\SRL64|Stage1_sig[50]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[50]~147_combout\ = (\SRL64|Stage1_sig[48]~145_combout\) # (\SRL64|Stage1_sig[48]~146_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~145_combout\,
	datac => \SRL64|Stage1_sig[48]~146_combout\,
	combout => \SRL64|Stage1_sig[50]~147_combout\);

-- Location: LCCOMB_X69_Y39_N30
\SRL64|Stage1_sig[49]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[49]~148_combout\ = (\B[0]~input_o\ & (\SRL64|Stage1_sig[50]~147_combout\)) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~92_combout\) # (\SRL64|Stage1_sig[48]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[50]~147_combout\,
	datab => \SRL64|Stage1_sig[48]~92_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~91_combout\,
	combout => \SRL64|Stage1_sig[49]~148_combout\);

-- Location: LCCOMB_X76_Y41_N24
\SRA64|Stage2_sig[49]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[49]~28_combout\ = (\SRL64|Stage2_sig[48]~28_combout\ & ((\SRL64|Stage1_sig[57]~151_combout\) # ((\SRL64|Stage2_sig[48]~29_combout\ & \SRL64|Stage1_sig[49]~148_combout\)))) # (!\SRL64|Stage2_sig[48]~28_combout\ & 
-- (((\SRL64|Stage2_sig[48]~29_combout\ & \SRL64|Stage1_sig[49]~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~28_combout\,
	datab => \SRL64|Stage1_sig[57]~151_combout\,
	datac => \SRL64|Stage2_sig[48]~29_combout\,
	datad => \SRL64|Stage1_sig[49]~148_combout\,
	combout => \SRA64|Stage2_sig[49]~28_combout\);

-- Location: LCCOMB_X76_Y41_N12
\SRL64|Stage2_sig[49]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[49]~43_combout\ = (\SRA64|Stage2_sig[49]~29_combout\) # ((\SRA64|Stage2_sig[49]~28_combout\) # ((\SRL64|Stage2_sig[44]~32_combout\ & \SRL64|Stage1_sig[61]~169_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Stage2_sig[49]~29_combout\,
	datab => \SRL64|Stage2_sig[44]~32_combout\,
	datac => \SRL64|Stage1_sig[61]~169_combout\,
	datad => \SRA64|Stage2_sig[49]~28_combout\,
	combout => \SRL64|Stage2_sig[49]~43_combout\);

-- Location: LCCOMB_X67_Y39_N24
\SRL64|Stage1_sig[48]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~166_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[14]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[46]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[14]~input_o\,
	datac => \A[46]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~166_combout\);

-- Location: LCCOMB_X70_Y36_N22
\SRL64|Stage1_sig[48]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~165_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[16]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[48]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \B[1]~input_o\,
	datad => \A[48]~input_o\,
	combout => \SRL64|Stage1_sig[48]~165_combout\);

-- Location: LCCOMB_X70_Y39_N16
\SRL64|Stage1_sig[45]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[45]~118_combout\ = (\SRL64|Stage1_sig[48]~117_combout\) # (\SRL64|Stage1_sig[48]~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage1_sig[48]~117_combout\,
	datad => \SRL64|Stage1_sig[48]~116_combout\,
	combout => \SRL64|Stage1_sig[45]~118_combout\);

-- Location: LCCOMB_X69_Y39_N26
\SRL64|Stage1_sig[45]~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[45]~283_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~166_combout\) # ((\SRL64|Stage1_sig[48]~165_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[45]~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~166_combout\,
	datab => \SRL64|Stage1_sig[48]~165_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[45]~118_combout\,
	combout => \SRL64|Stage1_sig[45]~283_combout\);

-- Location: LCCOMB_X72_Y36_N10
\SRL64|Stage1_sig[48]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~163_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[6]~input_o\))) # (!\SwapWord~0_combout\ & (\A[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[38]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[6]~input_o\,
	combout => \SRL64|Stage1_sig[48]~163_combout\);

-- Location: LCCOMB_X72_Y36_N0
\SRL64|Stage1_sig[48]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~162_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[8]~input_o\))) # (!\SwapWord~0_combout\ & (\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[40]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[8]~input_o\,
	combout => \SRL64|Stage1_sig[48]~162_combout\);

-- Location: LCCOMB_X72_Y38_N24
\SRL64|Stage1_sig[37]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[37]~124_combout\ = (\SRL64|Stage1_sig[48]~122_combout\) # (\SRL64|Stage1_sig[48]~123_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~122_combout\,
	datad => \SRL64|Stage1_sig[48]~123_combout\,
	combout => \SRL64|Stage1_sig[37]~124_combout\);

-- Location: LCCOMB_X72_Y38_N22
\SRL64|Stage1_sig[37]~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[37]~282_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~163_combout\) # ((\SRL64|Stage1_sig[48]~162_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[37]~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~163_combout\,
	datab => \SRL64|Stage1_sig[48]~162_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[37]~124_combout\,
	combout => \SRL64|Stage1_sig[37]~282_combout\);

-- Location: LCCOMB_X72_Y41_N2
\SRL64|Stage2_sig[33]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[33]~41_combout\ = (\SRL64|Stage2_sig[44]~32_combout\ & ((\SRL64|Stage1_sig[45]~283_combout\) # ((\SRA64|Equal5~0_combout\ & \SRL64|Stage1_sig[37]~282_combout\)))) # (!\SRL64|Stage2_sig[44]~32_combout\ & (\SRA64|Equal5~0_combout\ & 
-- ((\SRL64|Stage1_sig[37]~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[44]~32_combout\,
	datab => \SRA64|Equal5~0_combout\,
	datac => \SRL64|Stage1_sig[45]~283_combout\,
	datad => \SRL64|Stage1_sig[37]~282_combout\,
	combout => \SRL64|Stage2_sig[33]~41_combout\);

-- Location: LCCOMB_X68_Y36_N18
\SRL64|Stage1_sig[48]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~155_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[4]~input_o\))) # (!\SwapWord~0_combout\ & (\A[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[36]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \SRL64|Stage1_sig[48]~155_combout\);

-- Location: LCCOMB_X68_Y36_N12
\SRL64|Stage1_sig[48]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~156_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[2]~input_o\))) # (!\SwapWord~0_combout\ & (\A[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[34]~input_o\,
	datad => \A[2]~input_o\,
	combout => \SRL64|Stage1_sig[48]~156_combout\);

-- Location: LCCOMB_X72_Y38_N10
\SRL64|Stage1_sig[34]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[34]~157_combout\ = (\SRL64|Stage1_sig[48]~155_combout\) # (\SRL64|Stage1_sig[48]~156_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage1_sig[48]~155_combout\,
	datad => \SRL64|Stage1_sig[48]~156_combout\,
	combout => \SRL64|Stage1_sig[34]~157_combout\);

-- Location: LCCOMB_X72_Y38_N4
\SRL64|Stage1_sig[33]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[33]~158_combout\ = (\B[0]~input_o\ & (\SRL64|Stage1_sig[34]~157_combout\)) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~132_combout\) # (\SRL64|Stage1_sig[48]~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[34]~157_combout\,
	datab => \SRL64|Stage1_sig[48]~132_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~131_combout\,
	combout => \SRL64|Stage1_sig[33]~158_combout\);

-- Location: LCCOMB_X67_Y39_N6
\SRL64|Stage1_sig[48]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~159_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[12]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[44]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[12]~input_o\,
	datac => \A[44]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~159_combout\);

-- Location: LCCOMB_X72_Y39_N4
\SRL64|Stage1_sig[48]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~160_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[10]~input_o\))) # (!\SwapWord~0_combout\ & (\A[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[42]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~160_combout\);

-- Location: LCCOMB_X72_Y39_N12
\SRL64|Stage1_sig[41]~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[41]~281_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~159_combout\) # ((\SRL64|Stage1_sig[48]~160_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[41]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~159_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[48]~160_combout\,
	datad => \SRL64|Stage1_sig[41]~112_combout\,
	combout => \SRL64|Stage1_sig[41]~281_combout\);

-- Location: LCCOMB_X72_Y41_N0
\SRL64|Stage2_sig[33]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[33]~40_combout\ = (\SRL64|Stage1_sig[33]~158_combout\ & ((\SRL64|Stage2_sig[48]~29_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SRL64|Stage1_sig[41]~281_combout\)))) # (!\SRL64|Stage1_sig[33]~158_combout\ & 
-- (((\SRL64|Stage2_sig[48]~28_combout\ & \SRL64|Stage1_sig[41]~281_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[33]~158_combout\,
	datab => \SRL64|Stage2_sig[48]~29_combout\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SRL64|Stage1_sig[41]~281_combout\,
	combout => \SRL64|Stage2_sig[33]~40_combout\);

-- Location: LCCOMB_X72_Y41_N20
\SRL64|Stage2_sig[33]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[33]~42_combout\ = (\SRL64|Stage2_sig[33]~41_combout\) # (\SRL64|Stage2_sig[33]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage2_sig[33]~41_combout\,
	datad => \SRL64|Stage2_sig[33]~40_combout\,
	combout => \SRL64|Stage2_sig[33]~42_combout\);

-- Location: LCCOMB_X75_Y41_N8
\Y_sig~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~49_combout\ = (\SRL64|Stage3_sig~42_combout\ & (((\SRL64|Stage2_sig[33]~42_combout\) # (\Y_sig~48_combout\)))) # (!\SRL64|Stage3_sig~42_combout\ & (\SRL64|Stage2_sig[49]~43_combout\ & ((!\Y_sig~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage3_sig~42_combout\,
	datab => \SRL64|Stage2_sig[49]~43_combout\,
	datac => \SRL64|Stage2_sig[33]~42_combout\,
	datad => \Y_sig~48_combout\,
	combout => \Y_sig~49_combout\);

-- Location: LCCOMB_X69_Y40_N10
\SRL64|Stage1_sig[48]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~183_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[58]~input_o\))) # (!\SwapWord~0_combout\ & (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[58]~input_o\,
	combout => \SRL64|Stage1_sig[48]~183_combout\);

-- Location: LCCOMB_X68_Y40_N28
\SRL64|Stage1_sig[48]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~182_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[60]~input_o\))) # (!\SwapWord~0_combout\ & (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \A[60]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~182_combout\);

-- Location: LCCOMB_X67_Y41_N28
\SRL64|Stage1_sig[48]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~186_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[57]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[57]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[25]~input_o\,
	combout => \SRL64|Stage1_sig[48]~186_combout\);

-- Location: LCCOMB_X69_Y41_N16
\SRL64|Stage1_sig[48]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~185_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[59]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \B[1]~input_o\,
	datad => \A[27]~input_o\,
	combout => \SRL64|Stage1_sig[48]~185_combout\);

-- Location: LCCOMB_X68_Y41_N28
\SRL64|Stage1_sig[25]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[25]~187_combout\ = (\SRL64|Stage1_sig[48]~186_combout\) # (\SRL64|Stage1_sig[48]~185_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~186_combout\,
	datad => \SRL64|Stage1_sig[48]~185_combout\,
	combout => \SRL64|Stage1_sig[25]~187_combout\);

-- Location: LCCOMB_X68_Y41_N20
\SRL64|Stage1_sig[25]~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[25]~286_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~183_combout\) # ((\SRL64|Stage1_sig[48]~182_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[25]~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~183_combout\,
	datab => \SRL64|Stage1_sig[48]~182_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[25]~187_combout\,
	combout => \SRL64|Stage1_sig[25]~286_combout\);

-- Location: LCCOMB_X68_Y36_N22
\SRL64|Stage1_sig[48]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~191_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[51]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[51]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[19]~input_o\,
	combout => \SRL64|Stage1_sig[48]~191_combout\);

-- Location: LCCOMB_X68_Y40_N14
\SRL64|Stage1_sig[48]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~188_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[52]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[20]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[52]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~188_combout\);

-- Location: LCCOMB_X70_Y38_N6
\SRL64|Stage1_sig[48]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~189_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[50]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[18]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \A[50]~input_o\,
	datad => \A[18]~input_o\,
	combout => \SRL64|Stage1_sig[48]~189_combout\);

-- Location: LCCOMB_X68_Y38_N26
\SRL64|Stage1_sig[18]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[18]~190_combout\ = (\SRL64|Stage1_sig[48]~188_combout\) # (\SRL64|Stage1_sig[48]~189_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage1_sig[48]~188_combout\,
	datad => \SRL64|Stage1_sig[48]~189_combout\,
	combout => \SRL64|Stage1_sig[18]~190_combout\);

-- Location: LCCOMB_X70_Y36_N16
\SRL64|Stage1_sig[48]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~192_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[49]~input_o\))) # (!\SwapWord~0_combout\ & (\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \A[17]~input_o\,
	datad => \A[49]~input_o\,
	combout => \SRL64|Stage1_sig[48]~192_combout\);

-- Location: LCCOMB_X68_Y38_N12
\SRL64|Stage1_sig[17]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[17]~193_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[18]~190_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~191_combout\) # ((\SRL64|Stage1_sig[48]~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[48]~191_combout\,
	datac => \SRL64|Stage1_sig[18]~190_combout\,
	datad => \SRL64|Stage1_sig[48]~192_combout\,
	combout => \SRL64|Stage1_sig[17]~193_combout\);

-- Location: LCCOMB_X74_Y41_N2
\SRL64|Stage2_sig[48]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~45_combout\ = (\B[3]~input_o\ & (\SRL64|Stage1_sig[25]~286_combout\)) # (!\B[3]~input_o\ & ((\SRL64|Stage1_sig[17]~193_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[25]~286_combout\,
	datac => \SRL64|Stage1_sig[17]~193_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL64|Stage2_sig[48]~45_combout\);

-- Location: LCCOMB_X67_Y40_N12
\SRL64|Stage1_sig[48]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~176_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[56]~input_o\))) # (!\SwapWord~0_combout\ & (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \A[24]~input_o\,
	datad => \A[56]~input_o\,
	combout => \SRL64|Stage1_sig[48]~176_combout\);

-- Location: LCCOMB_X69_Y38_N16
\SRL64|Stage1_sig[48]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~180_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[53]~input_o\))) # (!\SwapWord~0_combout\ & (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[21]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[53]~input_o\,
	combout => \SRL64|Stage1_sig[48]~180_combout\);

-- Location: LCCOMB_X69_Y41_N6
\SRL64|Stage1_sig[48]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~179_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[55]~input_o\))) # (!\SwapWord~0_combout\ & (\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[55]~input_o\,
	combout => \SRL64|Stage1_sig[48]~179_combout\);

-- Location: LCCOMB_X68_Y38_N16
\SRL64|Stage1_sig[21]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[21]~181_combout\ = (\SRL64|Stage1_sig[48]~180_combout\) # (\SRL64|Stage1_sig[48]~179_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~180_combout\,
	datad => \SRL64|Stage1_sig[48]~179_combout\,
	combout => \SRL64|Stage1_sig[21]~181_combout\);

-- Location: LCCOMB_X67_Y41_N18
\SRL64|Stage1_sig[48]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~177_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[54]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[22]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \A[54]~input_o\,
	datad => \A[22]~input_o\,
	combout => \SRL64|Stage1_sig[48]~177_combout\);

-- Location: LCCOMB_X68_Y41_N26
\SRL64|Stage1_sig[21]~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[21]~285_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~176_combout\) # ((\SRL64|Stage1_sig[48]~177_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[21]~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~176_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[21]~181_combout\,
	datad => \SRL64|Stage1_sig[48]~177_combout\,
	combout => \SRL64|Stage1_sig[21]~285_combout\);

-- Location: LCCOMB_X72_Y40_N4
\SRL64|Stage1_sig[48]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~173_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[63]~input_o\))) # (!\SwapWord~0_combout\ & (\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[31]~input_o\,
	datac => \A[63]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~173_combout\);

-- Location: LCCOMB_X72_Y40_N30
\SRL64|Stage1_sig[48]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~174_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[61]~input_o\))) # (!\SwapWord~0_combout\ & (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \A[61]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~174_combout\);

-- Location: LCCOMB_X72_Y37_N12
\SRL64|Stage1_sig[29]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[29]~175_combout\ = (\SRL64|Stage1_sig[48]~173_combout\) # (\SRL64|Stage1_sig[48]~174_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage1_sig[48]~173_combout\,
	datad => \SRL64|Stage1_sig[48]~174_combout\,
	combout => \SRL64|Stage1_sig[29]~175_combout\);

-- Location: LCCOMB_X72_Y40_N26
\SRL64|Stage1_sig[48]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~171_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[62]~input_o\))) # (!\SwapWord~0_combout\ & (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[30]~input_o\,
	datad => \A[62]~input_o\,
	combout => \SRL64|Stage1_sig[48]~171_combout\);

-- Location: LCCOMB_X74_Y36_N30
\SRL64|Stage1_sig[48]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~170_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[0]~input_o\))) # (!\SwapWord~0_combout\ & (\A[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[32]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[0]~input_o\,
	combout => \SRL64|Stage1_sig[48]~170_combout\);

-- Location: LCCOMB_X72_Y37_N28
\SRL64|Stage1_sig[29]~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[29]~284_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~171_combout\) # (\SRL64|Stage1_sig[48]~170_combout\)))) # (!\B[0]~input_o\ & (\SRL64|Stage1_sig[29]~175_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[29]~175_combout\,
	datab => \SRL64|Stage1_sig[48]~171_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~170_combout\,
	combout => \SRL64|Stage1_sig[29]~284_combout\);

-- Location: LCCOMB_X77_Y37_N24
\SRL64|Stage2_sig[17]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[17]~44_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SRL64|Stage1_sig[29]~284_combout\))) # (!\B[3]~input_o\ & (\SRL64|Stage1_sig[21]~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[21]~285_combout\,
	datab => \SRL64|Stage1_sig[29]~284_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRL64|Stage2_sig[17]~44_combout\);

-- Location: LCCOMB_X77_Y37_N18
\SRL64|Stage2_sig[17]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[17]~46_combout\ = (\SRL64|Stage2_sig[17]~44_combout\) # ((!\B[2]~input_o\ & \SRL64|Stage2_sig[48]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SRL64|Stage2_sig[48]~45_combout\,
	datad => \SRL64|Stage2_sig[17]~44_combout\,
	combout => \SRL64|Stage2_sig[17]~46_combout\);

-- Location: LCCOMB_X72_Y40_N20
\SRA64|Stage1_sig[61]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage1_sig[61]~1_combout\ = (\B[1]~input_o\ & (\A[62]~input_o\)) # (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[62]~input_o\)) # (!\B[0]~input_o\ & ((\A[61]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[61]~input_o\,
	combout => \SRA64|Stage1_sig[61]~1_combout\);

-- Location: LCCOMB_X72_Y40_N14
\SRA64|Stage1_sig[61]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage1_sig[61]~2_combout\ = (\SwapWord~0_combout\ & (\B[1]~input_o\)) # (!\SwapWord~0_combout\ & ((\B[1]~input_o\ & (\A[63]~input_o\)) # (!\B[1]~input_o\ & ((\SRA64|Stage1_sig[61]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[63]~input_o\,
	datad => \SRA64|Stage1_sig[61]~1_combout\,
	combout => \SRA64|Stage1_sig[61]~2_combout\);

-- Location: LCCOMB_X72_Y40_N18
\SRA64|Stage1_sig[61]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage1_sig[61]~0_combout\ = (\B[0]~input_o\ & (((\A[30]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[30]~input_o\))) # (!\B[1]~input_o\ & (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRA64|Stage1_sig[61]~0_combout\);

-- Location: LCCOMB_X72_Y40_N0
\SRA64|Stage1_sig[61]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage1_sig[61]~3_combout\ = (\SwapWord~0_combout\ & ((\SRA64|Stage1_sig[61]~2_combout\ & (\A[31]~input_o\)) # (!\SRA64|Stage1_sig[61]~2_combout\ & ((\SRA64|Stage1_sig[61]~0_combout\))))) # (!\SwapWord~0_combout\ & 
-- (((\SRA64|Stage1_sig[61]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[31]~input_o\,
	datac => \SRA64|Stage1_sig[61]~2_combout\,
	datad => \SRA64|Stage1_sig[61]~0_combout\,
	combout => \SRA64|Stage1_sig[61]~3_combout\);

-- Location: LCCOMB_X76_Y41_N26
\SRA64|Stage2_sig[49]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[49]~30_combout\ = (\SRA64|Stage2_sig[49]~29_combout\) # ((\SRA64|Stage2_sig[49]~28_combout\) # ((\SRA64|Stage1_sig[61]~3_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Stage2_sig[49]~29_combout\,
	datab => \SRA64|Stage1_sig[61]~3_combout\,
	datac => \SRL64|Stage2_sig[44]~32_combout\,
	datad => \SRA64|Stage2_sig[49]~28_combout\,
	combout => \SRA64|Stage2_sig[49]~30_combout\);

-- Location: LCCOMB_X75_Y41_N18
\Y_sig~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~50_combout\ = (\Y_sig~48_combout\ & ((\Y_sig~49_combout\ & (\SRL64|Stage2_sig[17]~46_combout\)) # (!\Y_sig~49_combout\ & ((\SRA64|Stage2_sig[49]~30_combout\))))) # (!\Y_sig~48_combout\ & (\Y_sig~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~48_combout\,
	datab => \Y_sig~49_combout\,
	datac => \SRL64|Stage2_sig[17]~46_combout\,
	datad => \SRA64|Stage2_sig[49]~30_combout\,
	combout => \Y_sig~50_combout\);

-- Location: LCCOMB_X75_Y40_N10
\Y_sig~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~52_combout\ = (\ShiftFN[1]~input_o\ & (((\ExtWord~input_o\)))) # (!\ShiftFN[1]~input_o\ & (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y_sig~52_combout\);

-- Location: LCCOMB_X80_Y41_N8
\SRA_SRL_sig[41]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[41]~2_combout\ = (\ShiftFN[0]~input_o\ & ((\B[4]~input_o\) # ((\B[5]~input_o\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SRA_SRL_sig[41]~2_combout\);

-- Location: LCCOMB_X77_Y41_N20
\SRA_SRL_sig[41]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[41]~4_combout\ = (\ExtWord~input_o\ & (((\B[4]~input_o\ & !\ShiftFN[0]~input_o\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\) # ((\B[4]~input_o\ & !\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SRA_SRL_sig[41]~4_combout\);

-- Location: LCCOMB_X77_Y41_N26
\SRA_SRL_sig[41]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[41]~3_combout\ = (\ExtWord~input_o\ & (((!\ShiftFN[0]~input_o\) # (!\B[4]~input_o\)))) # (!\ExtWord~input_o\ & (!\B[5]~input_o\ & ((!\ShiftFN[0]~input_o\) # (!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SRA_SRL_sig[41]~3_combout\);

-- Location: LCCOMB_X75_Y41_N28
\SRA_SRL_sig[33]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[33]~5_combout\ = (\SRA_SRL_sig[41]~4_combout\ & (\SRL64|Stage2_sig[49]~43_combout\ & ((\SRA_SRL_sig[41]~3_combout\)))) # (!\SRA_SRL_sig[41]~4_combout\ & (((\SRL64|Stage2_sig[33]~42_combout\) # (!\SRA_SRL_sig[41]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[41]~4_combout\,
	datab => \SRL64|Stage2_sig[49]~43_combout\,
	datac => \SRL64|Stage2_sig[33]~42_combout\,
	datad => \SRA_SRL_sig[41]~3_combout\,
	combout => \SRA_SRL_sig[33]~5_combout\);

-- Location: LCCOMB_X75_Y41_N6
\SRA_SRL_sig[33]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[33]~6_combout\ = (\SRA_SRL_sig[41]~2_combout\ & ((\SRA_SRL_sig[33]~5_combout\ & ((\SRA64|Stage2_sig[49]~30_combout\))) # (!\SRA_SRL_sig[33]~5_combout\ & (\X_sig[63]~2_combout\)))) # (!\SRA_SRL_sig[41]~2_combout\ & 
-- (\SRA_SRL_sig[33]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[41]~2_combout\,
	datab => \SRA_SRL_sig[33]~5_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \SRA64|Stage2_sig[49]~30_combout\,
	combout => \SRA_SRL_sig[33]~6_combout\);

-- Location: LCCOMB_X75_Y40_N12
\Y_sig~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~53_combout\ = ((!\B[5]~input_o\ & (!\ExtWord~input_o\ & !\B[4]~input_o\))) # (!\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y_sig~53_combout\);

-- Location: LCCOMB_X74_Y36_N8
\SLL64|Stage1_sig[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[1]~30_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\X_sig[0]~1_combout\)) # (!\B[0]~input_o\ & ((\X_sig[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \X_sig[0]~1_combout\,
	datac => \B[0]~input_o\,
	datad => \X_sig[1]~0_combout\,
	combout => \SLL64|Stage1_sig[1]~30_combout\);

-- Location: LCCOMB_X83_Y39_N8
\SLL64|Stage2_sig[1]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[1]~104_combout\ = (!\B[2]~input_o\ & (!\B[3]~input_o\ & \SLL64|Stage1_sig[1]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datad => \SLL64|Stage1_sig[1]~30_combout\,
	combout => \SLL64|Stage2_sig[1]~104_combout\);

-- Location: LCCOMB_X77_Y43_N8
\Y_sig~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~54_combout\ = (\Y_sig~52_combout\ & ((\Y_sig~53_combout\ & ((\SLL64|Stage2_sig[1]~104_combout\))) # (!\Y_sig~53_combout\ & (\SRA_SRL_sig[33]~6_combout\)))) # (!\Y_sig~52_combout\ & (((!\Y_sig~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~52_combout\,
	datab => \SRA_SRL_sig[33]~6_combout\,
	datac => \Y_sig~53_combout\,
	datad => \SLL64|Stage2_sig[1]~104_combout\,
	combout => \Y_sig~54_combout\);

-- Location: LCCOMB_X72_Y36_N4
\SRL64|Stage1_sig[48]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~140_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[40]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[40]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[8]~input_o\,
	combout => \SRL64|Stage1_sig[48]~140_combout\);

-- Location: LCCOMB_X72_Y36_N14
\SRL64|Stage1_sig[48]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~141_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[38]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[38]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[6]~input_o\,
	combout => \SRL64|Stage1_sig[48]~141_combout\);

-- Location: LCCOMB_X73_Y37_N30
\SRL64|Stage2_sig[48]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~37_combout\ = (\SRL64|Stage1_sig[48]~140_combout\) # (\SRL64|Stage1_sig[48]~141_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~140_combout\,
	datad => \SRL64|Stage1_sig[48]~141_combout\,
	combout => \SRL64|Stage2_sig[48]~37_combout\);

-- Location: LCCOMB_X73_Y37_N16
\SRL64|Stage2_sig[48]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~38_combout\ = (!\B[3]~input_o\ & ((\B[0]~input_o\ & (\SRL64|Stage2_sig[48]~37_combout\)) # (!\B[0]~input_o\ & ((\SRL64|Stage2_sig[48]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage2_sig[48]~37_combout\,
	datad => \SRL64|Stage2_sig[48]~24_combout\,
	combout => \SRL64|Stage2_sig[48]~38_combout\);

-- Location: LCCOMB_X70_Y36_N28
\SRL64|Stage1_sig[48]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~142_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[48]~input_o\))) # (!\SwapWord~0_combout\ & (\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \B[1]~input_o\,
	datad => \A[48]~input_o\,
	combout => \SRL64|Stage1_sig[48]~142_combout\);

-- Location: LCCOMB_X67_Y39_N28
\SRL64|Stage1_sig[48]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~143_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[46]~input_o\))) # (!\SwapWord~0_combout\ & (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[14]~input_o\,
	datac => \A[46]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~143_combout\);

-- Location: LCCOMB_X69_Y38_N10
\SRL64|Stage1_sig[13]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[13]~84_combout\ = (\SRL64|Stage1_sig[48]~83_combout\) # (\SRL64|Stage1_sig[48]~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~83_combout\,
	datad => \SRL64|Stage1_sig[48]~82_combout\,
	combout => \SRL64|Stage1_sig[13]~84_combout\);

-- Location: LCCOMB_X73_Y37_N6
\SRL64|Stage1_sig[13]~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[13]~280_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~142_combout\) # ((\SRL64|Stage1_sig[48]~143_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[13]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~142_combout\,
	datab => \SRL64|Stage1_sig[48]~143_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[13]~84_combout\,
	combout => \SRL64|Stage1_sig[13]~280_combout\);

-- Location: LCCOMB_X73_Y37_N26
\SRL64|Stage2_sig[48]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~39_combout\ = (\SRL64|Stage2_sig[48]~38_combout\) # ((\B[3]~input_o\ & \SRL64|Stage1_sig[13]~280_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage2_sig[48]~38_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64|Stage1_sig[13]~280_combout\,
	combout => \SRL64|Stage2_sig[48]~39_combout\);

-- Location: LCCOMB_X68_Y36_N16
\SRL64|Stage1_sig[48]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~138_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[34]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[34]~input_o\,
	datad => \A[2]~input_o\,
	combout => \SRL64|Stage1_sig[48]~138_combout\);

-- Location: LCCOMB_X68_Y36_N30
\SRL64|Stage1_sig[48]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~137_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[36]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[36]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \SRL64|Stage1_sig[48]~137_combout\);

-- Location: LCCOMB_X74_Y39_N16
\SRL64|Stage1_sig[48]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~139_combout\ = (\SRL64|Stage1_sig[48]~138_combout\) # (\SRL64|Stage1_sig[48]~137_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~138_combout\,
	datad => \SRL64|Stage1_sig[48]~137_combout\,
	combout => \SRL64|Stage1_sig[48]~139_combout\);

-- Location: LCCOMB_X77_Y40_N28
\Y_sig~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~45_combout\ = (\B[2]~input_o\) # ((\B[0]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Y_sig~45_combout\);

-- Location: LCCOMB_X74_Y39_N26
\Y_sig~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~46_combout\ = (\Y_sig~45_combout\ & ((\SRL64|Stage1_sig[48]~139_combout\) # ((!\SRL64|Stage2_sig[48]~29_combout\)))) # (!\Y_sig~45_combout\ & (((\SRL64|Stage1_sig[48]~75_combout\ & \SRL64|Stage2_sig[48]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~139_combout\,
	datab => \Y_sig~45_combout\,
	datac => \SRL64|Stage1_sig[48]~75_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \Y_sig~46_combout\);

-- Location: LCCOMB_X67_Y39_N26
\SRL64|Stage1_sig[48]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~134_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[44]~input_o\))) # (!\SwapWord~0_combout\ & (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[12]~input_o\,
	datac => \A[44]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~134_combout\);

-- Location: LCCOMB_X72_Y39_N18
\SRL64|Stage1_sig[48]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~135_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[42]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[42]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~135_combout\);

-- Location: LCCOMB_X73_Y37_N24
\SRL64|Stage1_sig[9]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[9]~70_combout\ = (\SRL64|Stage1_sig[48]~69_combout\) # (\SRL64|Stage1_sig[48]~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~69_combout\,
	datac => \SRL64|Stage1_sig[48]~68_combout\,
	combout => \SRL64|Stage1_sig[9]~70_combout\);

-- Location: LCCOMB_X73_Y37_N4
\SRL64|Stage1_sig[9]~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[9]~279_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~134_combout\) # ((\SRL64|Stage1_sig[48]~135_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[9]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~134_combout\,
	datab => \SRL64|Stage1_sig[48]~135_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[9]~70_combout\,
	combout => \SRL64|Stage1_sig[9]~279_combout\);

-- Location: LCCOMB_X74_Y41_N24
\Y_sig~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~47_combout\ = (\Y_sig~46_combout\ & ((\SRL64|Stage2_sig[48]~39_combout\) # ((\SRL64|Stage2_sig[48]~29_combout\)))) # (!\Y_sig~46_combout\ & (((!\SRL64|Stage2_sig[48]~29_combout\ & \SRL64|Stage1_sig[9]~279_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~39_combout\,
	datab => \Y_sig~46_combout\,
	datac => \SRL64|Stage2_sig[48]~29_combout\,
	datad => \SRL64|Stage1_sig[9]~279_combout\,
	combout => \Y_sig~47_combout\);

-- Location: LCCOMB_X74_Y41_N12
\Y_sig~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~55_combout\ = (\Y_sig~51_combout\ & ((\Y_sig~54_combout\ & (\Y_sig~50_combout\)) # (!\Y_sig~54_combout\ & ((\Y_sig~47_combout\))))) # (!\Y_sig~51_combout\ & (((\Y_sig~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~51_combout\,
	datab => \Y_sig~50_combout\,
	datac => \Y_sig~54_combout\,
	datad => \Y_sig~47_combout\,
	combout => \Y_sig~55_combout\);

-- Location: IOIBUF_X74_Y73_N15
\C[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(1),
	o => \C[1]~input_o\);

-- Location: LCCOMB_X74_Y41_N30
\Y_sig~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~56_combout\ = (\ShiftFN[0]~input_o\ & (\Y_sig~55_combout\)) # (!\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\Y_sig~55_combout\)) # (!\ShiftFN[1]~input_o\ & ((\C[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~55_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \C[1]~input_o\,
	combout => \Y_sig~56_combout\);

-- Location: IOIBUF_X79_Y73_N1
\C[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(2),
	o => \C[2]~input_o\);

-- Location: LCCOMB_X68_Y39_N10
\SRL64|Stage1_sig[10]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[10]~136_combout\ = (\SRL64|Stage1_sig[48]~134_combout\) # (\SRL64|Stage1_sig[48]~135_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage1_sig[48]~134_combout\,
	datad => \SRL64|Stage1_sig[48]~135_combout\,
	combout => \SRL64|Stage1_sig[10]~136_combout\);

-- Location: LCCOMB_X68_Y39_N6
\SRL64|Stage1_sig[48]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~198_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[43]~input_o\))) # (!\SwapWord~0_combout\ & (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[43]~input_o\,
	datad => \SwapWord~0_combout\,
	combout => \SRL64|Stage1_sig[48]~198_combout\);

-- Location: LCCOMB_X68_Y39_N4
\SRL64|Stage1_sig[48]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~197_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[45]~input_o\))) # (!\SwapWord~0_combout\ & (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[45]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SwapWord~0_combout\,
	combout => \SRL64|Stage1_sig[48]~197_combout\);

-- Location: LCCOMB_X68_Y39_N24
\SRL64|Stage1_sig[10]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[10]~199_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~198_combout\) # (\SRL64|Stage1_sig[48]~197_combout\)))) # (!\B[0]~input_o\ & (\SRL64|Stage1_sig[10]~136_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[10]~136_combout\,
	datab => \SRL64|Stage1_sig[48]~198_combout\,
	datac => \SRL64|Stage1_sig[48]~197_combout\,
	datad => \B[0]~input_o\,
	combout => \SRL64|Stage1_sig[10]~199_combout\);

-- Location: LCCOMB_X74_Y39_N12
\Y_sig~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~57_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & (\SRL64|Stage1_sig[48]~139_combout\ & ((!\Y_sig~45_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & (((\SRL64|Stage1_sig[10]~199_combout\) # (\Y_sig~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~139_combout\,
	datab => \SRL64|Stage2_sig[48]~29_combout\,
	datac => \SRL64|Stage1_sig[10]~199_combout\,
	datad => \Y_sig~45_combout\,
	combout => \Y_sig~57_combout\);

-- Location: LCCOMB_X73_Y36_N18
\SRL64|Stage1_sig[48]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~194_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[37]~input_o\))) # (!\SwapWord~0_combout\ & (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[5]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[37]~input_o\,
	combout => \SRL64|Stage1_sig[48]~194_combout\);

-- Location: LCCOMB_X73_Y36_N20
\SRL64|Stage1_sig[48]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~195_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[35]~input_o\))) # (!\SwapWord~0_combout\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[35]~input_o\,
	combout => \SRL64|Stage1_sig[48]~195_combout\);

-- Location: LCCOMB_X73_Y36_N22
\SRL64|Stage1_sig[48]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~196_combout\ = (\SRL64|Stage1_sig[48]~194_combout\) # (\SRL64|Stage1_sig[48]~195_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~194_combout\,
	datad => \SRL64|Stage1_sig[48]~195_combout\,
	combout => \SRL64|Stage1_sig[48]~196_combout\);

-- Location: LCCOMB_X70_Y36_N2
\SRL64|Stage1_sig[48]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~200_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[49]~input_o\))) # (!\SwapWord~0_combout\ & (\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \A[17]~input_o\,
	datad => \A[49]~input_o\,
	combout => \SRL64|Stage1_sig[48]~200_combout\);

-- Location: LCCOMB_X69_Y38_N26
\SRL64|Stage1_sig[48]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~201_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[47]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[47]~input_o\,
	datad => \A[15]~input_o\,
	combout => \SRL64|Stage1_sig[48]~201_combout\);

-- Location: LCCOMB_X70_Y38_N18
\SRL64|Stage1_sig[14]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[14]~144_combout\ = (\SRL64|Stage1_sig[48]~142_combout\) # (\SRL64|Stage1_sig[48]~143_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~142_combout\,
	datac => \SRL64|Stage1_sig[48]~143_combout\,
	combout => \SRL64|Stage1_sig[14]~144_combout\);

-- Location: LCCOMB_X70_Y38_N8
\SRL64|Stage1_sig[14]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[14]~202_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~200_combout\) # ((\SRL64|Stage1_sig[48]~201_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[14]~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[48]~200_combout\,
	datac => \SRL64|Stage1_sig[48]~201_combout\,
	datad => \SRL64|Stage1_sig[14]~144_combout\,
	combout => \SRL64|Stage1_sig[14]~202_combout\);

-- Location: LCCOMB_X69_Y41_N2
\SRL64|Stage1_sig[48]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~204_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[39]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[7]~input_o\,
	combout => \SRL64|Stage1_sig[48]~204_combout\);

-- Location: LCCOMB_X67_Y41_N22
\SRL64|Stage1_sig[48]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~203_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[41]~input_o\))) # (!\SwapWord~0_combout\ & (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[9]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[41]~input_o\,
	combout => \SRL64|Stage1_sig[48]~203_combout\);

-- Location: LCCOMB_X73_Y37_N20
\SRL64|Stage2_sig[48]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~47_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~204_combout\) # ((\SRL64|Stage1_sig[48]~203_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage2_sig[48]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~204_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage2_sig[48]~37_combout\,
	datad => \SRL64|Stage1_sig[48]~203_combout\,
	combout => \SRL64|Stage2_sig[48]~47_combout\);

-- Location: LCCOMB_X74_Y39_N6
\SRL64|Stage2_sig[48]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~48_combout\ = (\B[3]~input_o\ & (\SRL64|Stage1_sig[14]~202_combout\)) # (!\B[3]~input_o\ & ((\SRL64|Stage2_sig[48]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[14]~202_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64|Stage2_sig[48]~47_combout\,
	combout => \SRL64|Stage2_sig[48]~48_combout\);

-- Location: LCCOMB_X74_Y39_N8
\Y_sig~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~58_combout\ = (\Y_sig~57_combout\ & (((\SRL64|Stage2_sig[48]~48_combout\)) # (!\Y_sig~45_combout\))) # (!\Y_sig~57_combout\ & (\Y_sig~45_combout\ & (\SRL64|Stage1_sig[48]~196_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~57_combout\,
	datab => \Y_sig~45_combout\,
	datac => \SRL64|Stage1_sig[48]~196_combout\,
	datad => \SRL64|Stage2_sig[48]~48_combout\,
	combout => \Y_sig~58_combout\);

-- Location: LCCOMB_X74_Y36_N20
\SLL64|Stage1_sig[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[2]~31_combout\ = (\B[1]~input_o\ & (\X_sig[0]~1_combout\ & (!\B[0]~input_o\))) # (!\B[1]~input_o\ & (((\B[0]~input_o\ & \X_sig[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \X_sig[0]~1_combout\,
	datac => \B[0]~input_o\,
	datad => \X_sig[1]~0_combout\,
	combout => \SLL64|Stage1_sig[2]~31_combout\);

-- Location: LCCOMB_X77_Y40_N30
\SLL64|Stage2_sig[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[2]~14_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SLL64|Stage1_sig[2]~31_combout\) # ((!\B[0]~input_o\ & \SRL64|Stage1_sig[48]~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage2_sig[48]~29_combout\,
	datac => \SLL64|Stage1_sig[2]~31_combout\,
	datad => \SRL64|Stage1_sig[48]~138_combout\,
	combout => \SLL64|Stage2_sig[2]~14_combout\);

-- Location: LCCOMB_X69_Y40_N12
\SRL64|Stage1_sig[48]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~219_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[27]~input_o\))) # (!\SwapWord~0_combout\ & (\A[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[59]~input_o\,
	datad => \A[27]~input_o\,
	combout => \SRL64|Stage1_sig[48]~219_combout\);

-- Location: LCCOMB_X72_Y40_N16
\SRL64|Stage1_sig[48]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~218_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[29]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[61]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \A[61]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~218_combout\);

-- Location: LCCOMB_X73_Y41_N24
\SRL64|Stage1_sig[58]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[58]~217_combout\ = (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~150_combout\) # (\SRL64|Stage1_sig[48]~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~150_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~149_combout\,
	combout => \SRL64|Stage1_sig[58]~217_combout\);

-- Location: LCCOMB_X73_Y41_N2
\SRL64|Stage1_sig[58]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[58]~220_combout\ = (\SRL64|Stage1_sig[58]~217_combout\) # ((\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~219_combout\) # (\SRL64|Stage1_sig[48]~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~219_combout\,
	datab => \SRL64|Stage1_sig[48]~218_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[58]~217_combout\,
	combout => \SRL64|Stage1_sig[58]~220_combout\);

-- Location: LCCOMB_X68_Y36_N0
\SRL64|Stage1_sig[48]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~222_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[19]~input_o\))) # (!\SwapWord~0_combout\ & (\A[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[51]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[19]~input_o\,
	combout => \SRL64|Stage1_sig[48]~222_combout\);

-- Location: LCCOMB_X69_Y38_N14
\SRL64|Stage1_sig[48]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~221_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[21]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[53]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[21]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[53]~input_o\,
	combout => \SRL64|Stage1_sig[48]~221_combout\);

-- Location: LCCOMB_X69_Y39_N4
\SRL64|Stage1_sig[50]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[50]~223_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~222_combout\) # ((\SRL64|Stage1_sig[48]~221_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[50]~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~222_combout\,
	datab => \SRL64|Stage1_sig[48]~221_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[50]~147_combout\,
	combout => \SRL64|Stage1_sig[50]~223_combout\);

-- Location: LCCOMB_X73_Y43_N20
\SRA64|Stage2_sig[50]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[50]~32_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRL64|Stage1_sig[58]~220_combout\)) # (!\B[3]~input_o\ & ((\SRL64|Stage1_sig[50]~223_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64|Stage1_sig[58]~220_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64|Stage1_sig[50]~223_combout\,
	combout => \SRA64|Stage2_sig[50]~32_combout\);

-- Location: LCCOMB_X67_Y41_N26
\SRL64|Stage1_sig[48]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~224_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[25]~input_o\))) # (!\SwapWord~0_combout\ & (\A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[57]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[25]~input_o\,
	combout => \SRL64|Stage1_sig[48]~224_combout\);

-- Location: LCCOMB_X69_Y41_N30
\SRL64|Stage1_sig[48]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~225_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[23]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[55]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[55]~input_o\,
	combout => \SRL64|Stage1_sig[48]~225_combout\);

-- Location: LCCOMB_X70_Y41_N20
\SRL64|Stage1_sig[54]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[54]~226_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~224_combout\) # ((\SRL64|Stage1_sig[48]~225_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[54]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~224_combout\,
	datab => \SRL64|Stage1_sig[48]~225_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[54]~154_combout\,
	combout => \SRL64|Stage1_sig[54]~226_combout\);

-- Location: LCCOMB_X73_Y41_N4
\SRL64|Stage1_sig[62]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[62]~227_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\X_sig[63]~2_combout\))) # (!\B[0]~input_o\ & (\X_sig[62]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_sig[62]~3_combout\,
	datab => \B[0]~input_o\,
	datac => \X_sig[63]~2_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[62]~227_combout\);

-- Location: LCCOMB_X76_Y43_N24
\SRL64|Stage2_sig[50]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[50]~153_combout\ = (\SRL64|Stage1_sig[62]~227_combout\ & (\B[2]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[62]~227_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRL64|Stage2_sig[50]~153_combout\);

-- Location: LCCOMB_X76_Y43_N2
\SRL64|Stage2_sig[50]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[50]~52_combout\ = (\SRA64|Stage2_sig[50]~32_combout\) # ((\SRL64|Stage2_sig[50]~153_combout\) # ((\SRL64|Stage1_sig[54]~226_combout\ & \SRA64|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Stage2_sig[50]~32_combout\,
	datab => \SRL64|Stage1_sig[54]~226_combout\,
	datac => \SRA64|Equal5~0_combout\,
	datad => \SRL64|Stage2_sig[50]~153_combout\,
	combout => \SRL64|Stage2_sig[50]~52_combout\);

-- Location: LCCOMB_X67_Y41_N0
\SRL64|Stage1_sig[48]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~211_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[9]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[41]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[9]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[41]~input_o\,
	combout => \SRL64|Stage1_sig[48]~211_combout\);

-- Location: LCCOMB_X69_Y41_N4
\SRL64|Stage1_sig[48]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~212_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[7]~input_o\))) # (!\SwapWord~0_combout\ & (\A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[7]~input_o\,
	combout => \SRL64|Stage1_sig[48]~212_combout\);

-- Location: LCCOMB_X72_Y38_N14
\SRL64|Stage1_sig[38]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[38]~164_combout\ = (\SRL64|Stage1_sig[48]~163_combout\) # (\SRL64|Stage1_sig[48]~162_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~163_combout\,
	datac => \SRL64|Stage1_sig[48]~162_combout\,
	combout => \SRL64|Stage1_sig[38]~164_combout\);

-- Location: LCCOMB_X72_Y39_N24
\SRL64|Stage1_sig[38]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[38]~213_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~211_combout\) # ((\SRL64|Stage1_sig[48]~212_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[38]~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~211_combout\,
	datab => \SRL64|Stage1_sig[48]~212_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[38]~164_combout\,
	combout => \SRL64|Stage1_sig[38]~213_combout\);

-- Location: LCCOMB_X70_Y36_N4
\SRL64|Stage1_sig[48]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~214_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[17]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[49]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \A[17]~input_o\,
	datad => \A[49]~input_o\,
	combout => \SRL64|Stage1_sig[48]~214_combout\);

-- Location: LCCOMB_X69_Y38_N4
\SRL64|Stage1_sig[48]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~215_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[15]~input_o\))) # (!\SwapWord~0_combout\ & (\A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[47]~input_o\,
	datad => \A[15]~input_o\,
	combout => \SRL64|Stage1_sig[48]~215_combout\);

-- Location: LCCOMB_X69_Y39_N0
\SRL64|Stage1_sig[46]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[46]~167_combout\ = (\SRL64|Stage1_sig[48]~166_combout\) # (\SRL64|Stage1_sig[48]~165_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~166_combout\,
	datad => \SRL64|Stage1_sig[48]~165_combout\,
	combout => \SRL64|Stage1_sig[46]~167_combout\);

-- Location: LCCOMB_X69_Y39_N18
\SRL64|Stage1_sig[46]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[46]~216_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~214_combout\) # ((\SRL64|Stage1_sig[48]~215_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[46]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~214_combout\,
	datab => \SRL64|Stage1_sig[48]~215_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[46]~167_combout\,
	combout => \SRL64|Stage1_sig[46]~216_combout\);

-- Location: LCCOMB_X73_Y43_N26
\SRL64|Stage2_sig[34]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[34]~50_combout\ = (\SRL64|Stage1_sig[38]~213_combout\ & ((\SRA64|Equal5~0_combout\) # ((\SRL64|Stage1_sig[46]~216_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))) # (!\SRL64|Stage1_sig[38]~213_combout\ & 
-- (\SRL64|Stage1_sig[46]~216_combout\ & ((\SRL64|Stage2_sig[44]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[38]~213_combout\,
	datab => \SRL64|Stage1_sig[46]~216_combout\,
	datac => \SRA64|Equal5~0_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SRL64|Stage2_sig[34]~50_combout\);

-- Location: LCCOMB_X73_Y36_N24
\SRL64|Stage1_sig[48]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~205_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[5]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[37]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[5]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[37]~input_o\,
	combout => \SRL64|Stage1_sig[48]~205_combout\);

-- Location: LCCOMB_X73_Y36_N10
\SRL64|Stage1_sig[48]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~206_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[3]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[35]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[35]~input_o\,
	combout => \SRL64|Stage1_sig[48]~206_combout\);

-- Location: LCCOMB_X72_Y38_N0
\SRL64|Stage1_sig[34]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[34]~207_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~205_combout\) # (\SRL64|Stage1_sig[48]~206_combout\)))) # (!\B[0]~input_o\ & (\SRL64|Stage1_sig[34]~157_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[34]~157_combout\,
	datab => \SRL64|Stage1_sig[48]~205_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~206_combout\,
	combout => \SRL64|Stage1_sig[34]~207_combout\);

-- Location: LCCOMB_X68_Y39_N28
\SRL64|Stage1_sig[48]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~209_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[11]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[43]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[43]~input_o\,
	datad => \SwapWord~0_combout\,
	combout => \SRL64|Stage1_sig[48]~209_combout\);

-- Location: LCCOMB_X68_Y39_N2
\SRL64|Stage1_sig[48]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~208_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[13]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[45]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[45]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SwapWord~0_combout\,
	combout => \SRL64|Stage1_sig[48]~208_combout\);

-- Location: LCCOMB_X72_Y39_N30
\SRL64|Stage1_sig[42]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[42]~161_combout\ = (\SRL64|Stage1_sig[48]~159_combout\) # (\SRL64|Stage1_sig[48]~160_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~159_combout\,
	datac => \SRL64|Stage1_sig[48]~160_combout\,
	combout => \SRL64|Stage1_sig[42]~161_combout\);

-- Location: LCCOMB_X70_Y39_N20
\SRL64|Stage1_sig[42]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[42]~210_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~209_combout\) # ((\SRL64|Stage1_sig[48]~208_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[42]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~209_combout\,
	datab => \SRL64|Stage1_sig[48]~208_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[42]~161_combout\,
	combout => \SRL64|Stage1_sig[42]~210_combout\);

-- Location: LCCOMB_X73_Y43_N16
\SRL64|Stage2_sig[34]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[34]~49_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SRL64|Stage1_sig[34]~207_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SRL64|Stage1_sig[42]~210_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- (\SRL64|Stage2_sig[48]~28_combout\ & ((\SRL64|Stage1_sig[42]~210_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SRL64|Stage1_sig[34]~207_combout\,
	datad => \SRL64|Stage1_sig[42]~210_combout\,
	combout => \SRL64|Stage2_sig[34]~49_combout\);

-- Location: LCCOMB_X77_Y43_N10
\SRL64|Stage2_sig[34]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[34]~51_combout\ = (\SRL64|Stage2_sig[34]~50_combout\) # (\SRL64|Stage2_sig[34]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage2_sig[34]~50_combout\,
	datad => \SRL64|Stage2_sig[34]~49_combout\,
	combout => \SRL64|Stage2_sig[34]~51_combout\);

-- Location: LCCOMB_X77_Y43_N2
\SRA_SRL_sig[34]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[34]~7_combout\ = (\SRA_SRL_sig[41]~3_combout\ & ((\SRA_SRL_sig[41]~4_combout\ & (\SRL64|Stage2_sig[50]~52_combout\)) # (!\SRA_SRL_sig[41]~4_combout\ & ((\SRL64|Stage2_sig[34]~51_combout\))))) # (!\SRA_SRL_sig[41]~3_combout\ & 
-- (((!\SRA_SRL_sig[41]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[41]~3_combout\,
	datab => \SRL64|Stage2_sig[50]~52_combout\,
	datac => \SRA_SRL_sig[41]~4_combout\,
	datad => \SRL64|Stage2_sig[34]~51_combout\,
	combout => \SRA_SRL_sig[34]~7_combout\);

-- Location: LCCOMB_X70_Y38_N10
\SRA64|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Equal2~0_combout\ = (\B[0]~input_o\) # (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	combout => \SRA64|Equal2~0_combout\);

-- Location: LCCOMB_X77_Y42_N0
\SRA64|Stage2_sig[50]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[50]~31_combout\ = (\SRL64|Stage2_sig[44]~32_combout\ & ((\SRA64|Equal2~0_combout\ & (\X_sig[63]~2_combout\)) # (!\SRA64|Equal2~0_combout\ & ((\X_sig[62]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[44]~32_combout\,
	datab => \SRA64|Equal2~0_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \X_sig[62]~3_combout\,
	combout => \SRA64|Stage2_sig[50]~31_combout\);

-- Location: LCCOMB_X76_Y43_N8
\SRA64|Stage2_sig[50]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[50]~33_combout\ = (\SRA64|Stage2_sig[50]~31_combout\) # ((\SRA64|Stage2_sig[50]~32_combout\) # ((\SRA64|Equal5~0_combout\ & \SRL64|Stage1_sig[54]~226_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \SRA64|Stage2_sig[50]~31_combout\,
	datac => \SRA64|Stage2_sig[50]~32_combout\,
	datad => \SRL64|Stage1_sig[54]~226_combout\,
	combout => \SRA64|Stage2_sig[50]~33_combout\);

-- Location: LCCOMB_X77_Y43_N4
\SRA_SRL_sig[34]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[34]~8_combout\ = (\SRA_SRL_sig[41]~2_combout\ & ((\SRA_SRL_sig[34]~7_combout\ & ((\SRA64|Stage2_sig[50]~33_combout\))) # (!\SRA_SRL_sig[34]~7_combout\ & (\X_sig[63]~2_combout\)))) # (!\SRA_SRL_sig[41]~2_combout\ & 
-- (\SRA_SRL_sig[34]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[41]~2_combout\,
	datab => \SRA_SRL_sig[34]~7_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \SRA64|Stage2_sig[50]~33_combout\,
	combout => \SRA_SRL_sig[34]~8_combout\);

-- Location: LCCOMB_X77_Y43_N30
\Y_sig~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~61_combout\ = (\Y_sig~52_combout\ & ((\Y_sig~53_combout\ & (\SLL64|Stage2_sig[2]~14_combout\)) # (!\Y_sig~53_combout\ & ((\SRA_SRL_sig[34]~8_combout\))))) # (!\Y_sig~52_combout\ & (((!\Y_sig~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~52_combout\,
	datab => \SLL64|Stage2_sig[2]~14_combout\,
	datac => \SRA_SRL_sig[34]~8_combout\,
	datad => \Y_sig~53_combout\,
	combout => \Y_sig~61_combout\);

-- Location: LCCOMB_X67_Y41_N12
\SRL64|Stage1_sig[48]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~231_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[57]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[57]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[25]~input_o\,
	combout => \SRL64|Stage1_sig[48]~231_combout\);

-- Location: LCCOMB_X69_Y41_N8
\SRL64|Stage1_sig[48]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~232_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[55]~input_o\))) # (!\SwapWord~0_combout\ & (\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[55]~input_o\,
	combout => \SRL64|Stage1_sig[48]~232_combout\);

-- Location: LCCOMB_X68_Y41_N24
\SRL64|Stage1_sig[22]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[22]~178_combout\ = (\SRL64|Stage1_sig[48]~176_combout\) # (\SRL64|Stage1_sig[48]~177_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~176_combout\,
	datad => \SRL64|Stage1_sig[48]~177_combout\,
	combout => \SRL64|Stage1_sig[22]~178_combout\);

-- Location: LCCOMB_X68_Y41_N22
\SRL64|Stage1_sig[22]~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[22]~287_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~231_combout\) # ((\SRL64|Stage1_sig[48]~232_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[22]~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~231_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[48]~232_combout\,
	datad => \SRL64|Stage1_sig[22]~178_combout\,
	combout => \SRL64|Stage1_sig[22]~287_combout\);

-- Location: LCCOMB_X72_Y40_N10
\SRL64|Stage1_sig[48]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~229_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[63]~input_o\))) # (!\SwapWord~0_combout\ & (\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[31]~input_o\,
	datac => \A[63]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~229_combout\);

-- Location: LCCOMB_X74_Y36_N18
\SRL64|Stage1_sig[48]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~228_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[1]~input_o\))) # (!\SwapWord~0_combout\ & (\A[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[33]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~228_combout\);

-- Location: LCCOMB_X72_Y37_N10
\SRL64|Stage1_sig[30]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[30]~172_combout\ = (\SRL64|Stage1_sig[48]~171_combout\) # (\SRL64|Stage1_sig[48]~170_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~171_combout\,
	datad => \SRL64|Stage1_sig[48]~170_combout\,
	combout => \SRL64|Stage1_sig[30]~172_combout\);

-- Location: LCCOMB_X72_Y37_N22
\SRL64|Stage1_sig[30]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[30]~230_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~229_combout\) # ((\SRL64|Stage1_sig[48]~228_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[30]~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[48]~229_combout\,
	datac => \SRL64|Stage1_sig[48]~228_combout\,
	datad => \SRL64|Stage1_sig[30]~172_combout\,
	combout => \SRL64|Stage1_sig[30]~230_combout\);

-- Location: LCCOMB_X73_Y43_N22
\SRL64|Stage2_sig[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[18]~53_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SRL64|Stage1_sig[30]~230_combout\))) # (!\B[3]~input_o\ & (\SRL64|Stage1_sig[22]~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRL64|Stage1_sig[22]~287_combout\,
	datad => \SRL64|Stage1_sig[30]~230_combout\,
	combout => \SRL64|Stage2_sig[18]~53_combout\);

-- Location: LCCOMB_X68_Y41_N2
\SRL64|Stage1_sig[26]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[26]~184_combout\ = (\SRL64|Stage1_sig[48]~182_combout\) # (\SRL64|Stage1_sig[48]~183_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~182_combout\,
	datad => \SRL64|Stage1_sig[48]~183_combout\,
	combout => \SRL64|Stage1_sig[26]~184_combout\);

-- Location: LCCOMB_X69_Y41_N18
\SRL64|Stage1_sig[48]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~235_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[59]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \B[1]~input_o\,
	datad => \A[27]~input_o\,
	combout => \SRL64|Stage1_sig[48]~235_combout\);

-- Location: LCCOMB_X72_Y40_N12
\SRL64|Stage1_sig[48]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~234_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[61]~input_o\))) # (!\SwapWord~0_combout\ & (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \A[61]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~234_combout\);

-- Location: LCCOMB_X69_Y41_N28
\SRL64|Stage1_sig[26]~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[26]~236_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~235_combout\) # (\SRL64|Stage1_sig[48]~234_combout\)))) # (!\B[0]~input_o\ & (\SRL64|Stage1_sig[26]~184_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[26]~184_combout\,
	datab => \SRL64|Stage1_sig[48]~235_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~234_combout\,
	combout => \SRL64|Stage1_sig[26]~236_combout\);

-- Location: LCCOMB_X68_Y36_N26
\SRL64|Stage1_sig[48]~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~238_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[51]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[51]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[19]~input_o\,
	combout => \SRL64|Stage1_sig[48]~238_combout\);

-- Location: LCCOMB_X69_Y38_N24
\SRL64|Stage1_sig[48]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~237_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[53]~input_o\))) # (!\SwapWord~0_combout\ & (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[21]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[53]~input_o\,
	combout => \SRL64|Stage1_sig[48]~237_combout\);

-- Location: LCCOMB_X68_Y38_N0
\SRL64|Stage1_sig[18]~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[18]~288_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~238_combout\) # ((\SRL64|Stage1_sig[48]~237_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[18]~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[48]~238_combout\,
	datac => \SRL64|Stage1_sig[18]~190_combout\,
	datad => \SRL64|Stage1_sig[48]~237_combout\,
	combout => \SRL64|Stage1_sig[18]~288_combout\);

-- Location: LCCOMB_X74_Y43_N16
\SRL64|Stage2_sig[48]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~54_combout\ = (\B[3]~input_o\ & (\SRL64|Stage1_sig[26]~236_combout\)) # (!\B[3]~input_o\ & ((\SRL64|Stage1_sig[18]~288_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[26]~236_combout\,
	datac => \SRL64|Stage1_sig[18]~288_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL64|Stage2_sig[48]~54_combout\);

-- Location: LCCOMB_X77_Y43_N14
\SRL64|Stage2_sig[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[18]~55_combout\ = (\SRL64|Stage2_sig[18]~53_combout\) # ((!\B[2]~input_o\ & \SRL64|Stage2_sig[48]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64|Stage2_sig[18]~53_combout\,
	datad => \SRL64|Stage2_sig[48]~54_combout\,
	combout => \SRL64|Stage2_sig[18]~55_combout\);

-- Location: LCCOMB_X77_Y43_N20
\Y_sig~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~59_combout\ = (\Y_sig~48_combout\ & (((\SRL64|Stage3_sig~42_combout\) # (\SRA64|Stage2_sig[50]~33_combout\)))) # (!\Y_sig~48_combout\ & (\SRL64|Stage2_sig[50]~52_combout\ & (!\SRL64|Stage3_sig~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~48_combout\,
	datab => \SRL64|Stage2_sig[50]~52_combout\,
	datac => \SRL64|Stage3_sig~42_combout\,
	datad => \SRA64|Stage2_sig[50]~33_combout\,
	combout => \Y_sig~59_combout\);

-- Location: LCCOMB_X77_Y43_N24
\Y_sig~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~60_combout\ = (\SRL64|Stage3_sig~42_combout\ & ((\Y_sig~59_combout\ & ((\SRL64|Stage2_sig[18]~55_combout\))) # (!\Y_sig~59_combout\ & (\SRL64|Stage2_sig[34]~51_combout\)))) # (!\SRL64|Stage3_sig~42_combout\ & (((\Y_sig~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[34]~51_combout\,
	datab => \SRL64|Stage2_sig[18]~55_combout\,
	datac => \SRL64|Stage3_sig~42_combout\,
	datad => \Y_sig~59_combout\,
	combout => \Y_sig~60_combout\);

-- Location: LCCOMB_X77_Y43_N0
\Y_sig~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~62_combout\ = (\Y_sig~51_combout\ & ((\Y_sig~61_combout\ & ((\Y_sig~60_combout\))) # (!\Y_sig~61_combout\ & (\Y_sig~58_combout\)))) # (!\Y_sig~51_combout\ & (((\Y_sig~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~51_combout\,
	datab => \Y_sig~58_combout\,
	datac => \Y_sig~61_combout\,
	datad => \Y_sig~60_combout\,
	combout => \Y_sig~62_combout\);

-- Location: LCCOMB_X75_Y44_N0
\Y_sig~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~63_combout\ = (\ShiftFN[0]~input_o\ & (((\Y_sig~62_combout\)))) # (!\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Y_sig~62_combout\))) # (!\ShiftFN[1]~input_o\ & (\C[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \Y_sig~62_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_sig~63_combout\);

-- Location: LCCOMB_X74_Y36_N6
\SLL64|Stage1_sig[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[3]~32_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\X_sig[0]~1_combout\)) # (!\B[0]~input_o\ & ((\X_sig[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \X_sig[0]~1_combout\,
	datac => \B[0]~input_o\,
	datad => \X_sig[1]~0_combout\,
	combout => \SLL64|Stage1_sig[3]~32_combout\);

-- Location: LCCOMB_X74_Y38_N0
\SLL64|Stage1_sig[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[3]~33_combout\ = (\SLL64|Stage1_sig[3]~32_combout\) # ((\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~138_combout\))) # (!\B[0]~input_o\ & (\SRL64|Stage1_sig[48]~195_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~195_combout\,
	datab => \SRL64|Stage1_sig[48]~138_combout\,
	datac => \B[0]~input_o\,
	datad => \SLL64|Stage1_sig[3]~32_combout\,
	combout => \SLL64|Stage1_sig[3]~33_combout\);

-- Location: LCCOMB_X74_Y38_N20
\SLL64|Stage2_sig[3]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[3]~105_combout\ = (!\B[2]~input_o\ & (!\B[3]~input_o\ & \SLL64|Stage1_sig[3]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datad => \SLL64|Stage1_sig[3]~33_combout\,
	combout => \SLL64|Stage2_sig[3]~105_combout\);

-- Location: LCCOMB_X70_Y40_N20
\SRL64|Stage1_sig[55]~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[55]~248_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[56]~99_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~224_combout\) # ((\SRL64|Stage1_sig[48]~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~224_combout\,
	datab => \SRL64|Stage1_sig[56]~99_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~225_combout\,
	combout => \SRL64|Stage1_sig[55]~248_combout\);

-- Location: LCCOMB_X69_Y39_N14
\SRL64|Stage1_sig[51]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[51]~247_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[52]~105_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~222_combout\) # ((\SRL64|Stage1_sig[48]~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~222_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[48]~221_combout\,
	datad => \SRL64|Stage1_sig[52]~105_combout\,
	combout => \SRL64|Stage1_sig[51]~247_combout\);

-- Location: LCCOMB_X73_Y42_N8
\SRA64|Stage2_sig[51]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[51]~35_combout\ = (\B[3]~input_o\) # ((\B[2]~input_o\ & (!\SRL64|Stage1_sig[55]~248_combout\)) # (!\B[2]~input_o\ & ((!\SRL64|Stage1_sig[51]~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL64|Stage1_sig[55]~248_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64|Stage1_sig[51]~247_combout\,
	combout => \SRA64|Stage2_sig[51]~35_combout\);

-- Location: LCCOMB_X74_Y42_N4
\SRL64|Stage2_sig[51]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[51]~154_combout\ = (!\SRA64|Equal2~0_combout\ & (\X_sig[63]~2_combout\ & (\B[3]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal2~0_combout\,
	datab => \X_sig[63]~2_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SRL64|Stage2_sig[51]~154_combout\);

-- Location: LCCOMB_X73_Y41_N6
\SRL64|Stage1_sig[59]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[59]~245_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~108_combout\) # ((\X_sig[62]~3_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_sig[62]~3_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[48]~108_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[59]~245_combout\);

-- Location: LCCOMB_X73_Y41_N0
\SRL64|Stage1_sig[59]~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[59]~246_combout\ = (\SRL64|Stage1_sig[59]~245_combout\) # ((!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~219_combout\) # (\SRL64|Stage1_sig[48]~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~219_combout\,
	datab => \SRL64|Stage1_sig[48]~218_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[59]~245_combout\,
	combout => \SRL64|Stage1_sig[59]~246_combout\);

-- Location: LCCOMB_X74_Y42_N30
\SRL64|Stage2_sig[51]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[51]~61_combout\ = ((\SRL64|Stage2_sig[51]~154_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SRL64|Stage1_sig[59]~246_combout\))) # (!\SRA64|Stage2_sig[51]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~28_combout\,
	datab => \SRA64|Stage2_sig[51]~35_combout\,
	datac => \SRL64|Stage2_sig[51]~154_combout\,
	datad => \SRL64|Stage1_sig[59]~246_combout\,
	combout => \SRL64|Stage2_sig[51]~61_combout\);

-- Location: LCCOMB_X69_Y39_N16
\SRL64|Stage1_sig[47]~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[47]~252_combout\ = (\B[0]~input_o\ & (\SRL64|Stage1_sig[48]~90_combout\)) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~215_combout\) # (\SRL64|Stage1_sig[48]~214_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~90_combout\,
	datab => \SRL64|Stage1_sig[48]~215_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~214_combout\,
	combout => \SRL64|Stage1_sig[47]~252_combout\);

-- Location: LCCOMB_X72_Y39_N2
\SRL64|Stage1_sig[39]~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[39]~251_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[40]~115_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~211_combout\) # ((\SRL64|Stage1_sig[48]~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~211_combout\,
	datab => \SRL64|Stage1_sig[48]~212_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[40]~115_combout\,
	combout => \SRL64|Stage1_sig[39]~251_combout\);

-- Location: LCCOMB_X73_Y42_N12
\SRL64|Stage2_sig[35]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[35]~59_combout\ = (\SRA64|Equal5~0_combout\ & ((\SRL64|Stage1_sig[39]~251_combout\) # ((\SRL64|Stage2_sig[44]~32_combout\ & \SRL64|Stage1_sig[47]~252_combout\)))) # (!\SRA64|Equal5~0_combout\ & (\SRL64|Stage2_sig[44]~32_combout\ & 
-- (\SRL64|Stage1_sig[47]~252_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \SRL64|Stage2_sig[44]~32_combout\,
	datac => \SRL64|Stage1_sig[47]~252_combout\,
	datad => \SRL64|Stage1_sig[39]~251_combout\,
	combout => \SRL64|Stage2_sig[35]~59_combout\);

-- Location: LCCOMB_X70_Y39_N22
\SRL64|Stage1_sig[43]~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[43]~250_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[44]~121_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~209_combout\) # ((\SRL64|Stage1_sig[48]~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~209_combout\,
	datab => \SRL64|Stage1_sig[48]~208_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[44]~121_combout\,
	combout => \SRL64|Stage1_sig[43]~250_combout\);

-- Location: LCCOMB_X72_Y38_N18
\SRL64|Stage1_sig[35]~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[35]~249_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[36]~127_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~206_combout\) # ((\SRL64|Stage1_sig[48]~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~206_combout\,
	datab => \SRL64|Stage1_sig[36]~127_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~205_combout\,
	combout => \SRL64|Stage1_sig[35]~249_combout\);

-- Location: LCCOMB_X73_Y42_N2
\SRL64|Stage2_sig[35]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[35]~58_combout\ = (\SRL64|Stage2_sig[48]~28_combout\ & ((\SRL64|Stage1_sig[43]~250_combout\) # ((\SRL64|Stage1_sig[35]~249_combout\ & \SRL64|Stage2_sig[48]~29_combout\)))) # (!\SRL64|Stage2_sig[48]~28_combout\ & 
-- (((\SRL64|Stage1_sig[35]~249_combout\ & \SRL64|Stage2_sig[48]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~28_combout\,
	datab => \SRL64|Stage1_sig[43]~250_combout\,
	datac => \SRL64|Stage1_sig[35]~249_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \SRL64|Stage2_sig[35]~58_combout\);

-- Location: LCCOMB_X74_Y42_N20
\SRL64|Stage2_sig[35]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[35]~60_combout\ = (\SRL64|Stage2_sig[35]~59_combout\) # (\SRL64|Stage2_sig[35]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[35]~59_combout\,
	datad => \SRL64|Stage2_sig[35]~58_combout\,
	combout => \SRL64|Stage2_sig[35]~60_combout\);

-- Location: LCCOMB_X74_Y42_N28
\SRA_SRL_sig[35]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[35]~9_combout\ = (\SRA_SRL_sig[41]~4_combout\ & (\SRA_SRL_sig[41]~3_combout\ & (\SRL64|Stage2_sig[51]~61_combout\))) # (!\SRA_SRL_sig[41]~4_combout\ & (((\SRL64|Stage2_sig[35]~60_combout\)) # (!\SRA_SRL_sig[41]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[41]~4_combout\,
	datab => \SRA_SRL_sig[41]~3_combout\,
	datac => \SRL64|Stage2_sig[51]~61_combout\,
	datad => \SRL64|Stage2_sig[35]~60_combout\,
	combout => \SRA_SRL_sig[35]~9_combout\);

-- Location: LCCOMB_X77_Y40_N16
\SRA64|Stage2_sig[51]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[51]~34_combout\ = (\B[3]~input_o\ & (\X_sig[63]~2_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \X_sig[63]~2_combout\,
	datac => \B[2]~input_o\,
	combout => \SRA64|Stage2_sig[51]~34_combout\);

-- Location: LCCOMB_X74_Y42_N2
\SRA64|Stage2_sig[51]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[51]~36_combout\ = ((\SRA64|Stage2_sig[51]~34_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SRL64|Stage1_sig[59]~246_combout\))) # (!\SRA64|Stage2_sig[51]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~28_combout\,
	datab => \SRA64|Stage2_sig[51]~35_combout\,
	datac => \SRA64|Stage2_sig[51]~34_combout\,
	datad => \SRL64|Stage1_sig[59]~246_combout\,
	combout => \SRA64|Stage2_sig[51]~36_combout\);

-- Location: LCCOMB_X74_Y42_N14
\SRA_SRL_sig[35]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[35]~10_combout\ = (\SRA_SRL_sig[41]~2_combout\ & ((\SRA_SRL_sig[35]~9_combout\ & ((\SRA64|Stage2_sig[51]~36_combout\))) # (!\SRA_SRL_sig[35]~9_combout\ & (\X_sig[63]~2_combout\)))) # (!\SRA_SRL_sig[41]~2_combout\ & 
-- (\SRA_SRL_sig[35]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[41]~2_combout\,
	datab => \SRA_SRL_sig[35]~9_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \SRA64|Stage2_sig[51]~36_combout\,
	combout => \SRA_SRL_sig[35]~10_combout\);

-- Location: LCCOMB_X77_Y43_N26
\Y_sig~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~68_combout\ = (\Y_sig~52_combout\ & ((\Y_sig~53_combout\ & (\SLL64|Stage2_sig[3]~105_combout\)) # (!\Y_sig~53_combout\ & ((\SRA_SRL_sig[35]~10_combout\))))) # (!\Y_sig~52_combout\ & (((!\Y_sig~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~52_combout\,
	datab => \SLL64|Stage2_sig[3]~105_combout\,
	datac => \Y_sig~53_combout\,
	datad => \SRA_SRL_sig[35]~10_combout\,
	combout => \Y_sig~68_combout\);

-- Location: LCCOMB_X70_Y36_N14
\SRL64|Stage1_sig[48]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~243_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[48]~input_o\))) # (!\SwapWord~0_combout\ & (\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \B[1]~input_o\,
	datad => \A[48]~input_o\,
	combout => \SRL64|Stage1_sig[48]~243_combout\);

-- Location: LCCOMB_X70_Y38_N4
\SRL64|Stage1_sig[15]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[15]~241_combout\ = (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~201_combout\) # (\SRL64|Stage1_sig[48]~200_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[48]~201_combout\,
	datad => \SRL64|Stage1_sig[48]~200_combout\,
	combout => \SRL64|Stage1_sig[15]~241_combout\);

-- Location: LCCOMB_X70_Y38_N22
\SRL64|Stage1_sig[48]~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~242_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[50]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[18]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \A[50]~input_o\,
	datad => \A[18]~input_o\,
	combout => \SRL64|Stage1_sig[48]~242_combout\);

-- Location: LCCOMB_X70_Y38_N24
\SRL64|Stage1_sig[15]~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[15]~244_combout\ = (\SRL64|Stage1_sig[15]~241_combout\) # ((\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~243_combout\) # (\SRL64|Stage1_sig[48]~242_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~243_combout\,
	datab => \SRL64|Stage1_sig[15]~241_combout\,
	datac => \SRL64|Stage1_sig[48]~242_combout\,
	datad => \B[0]~input_o\,
	combout => \SRL64|Stage1_sig[15]~244_combout\);

-- Location: LCCOMB_X73_Y37_N22
\SRL64|Stage2_sig[48]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~56_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[8]~73_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~204_combout\) # ((\SRL64|Stage1_sig[48]~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~204_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[8]~73_combout\,
	datad => \SRL64|Stage1_sig[48]~203_combout\,
	combout => \SRL64|Stage2_sig[48]~56_combout\);

-- Location: LCCOMB_X74_Y39_N20
\SRL64|Stage2_sig[48]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~57_combout\ = (\B[3]~input_o\ & (\SRL64|Stage1_sig[15]~244_combout\)) # (!\B[3]~input_o\ & ((\SRL64|Stage2_sig[48]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64|Stage1_sig[15]~244_combout\,
	datad => \SRL64|Stage2_sig[48]~56_combout\,
	combout => \SRL64|Stage2_sig[48]~57_combout\);

-- Location: LCCOMB_X68_Y39_N14
\SRL64|Stage1_sig[11]~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[11]~240_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[12]~87_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~197_combout\) # ((\SRL64|Stage1_sig[48]~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[48]~197_combout\,
	datac => \SRL64|Stage1_sig[12]~87_combout\,
	datad => \SRL64|Stage1_sig[48]~198_combout\,
	combout => \SRL64|Stage1_sig[11]~240_combout\);

-- Location: LCCOMB_X74_Y39_N2
\Y_sig~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~64_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\Y_sig~45_combout\ & (\SRL64|Stage1_sig[48]~81_combout\)) # (!\Y_sig~45_combout\ & ((\SRL64|Stage1_sig[48]~196_combout\))))) # (!\SRL64|Stage2_sig[48]~29_combout\ & (((\Y_sig~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~81_combout\,
	datab => \SRL64|Stage2_sig[48]~29_combout\,
	datac => \SRL64|Stage1_sig[48]~196_combout\,
	datad => \Y_sig~45_combout\,
	combout => \Y_sig~64_combout\);

-- Location: LCCOMB_X74_Y39_N30
\Y_sig~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~65_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & (((\Y_sig~64_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & ((\Y_sig~64_combout\ & (\SRL64|Stage2_sig[48]~57_combout\)) # (!\Y_sig~64_combout\ & ((\SRL64|Stage1_sig[11]~240_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRL64|Stage2_sig[48]~57_combout\,
	datac => \SRL64|Stage1_sig[11]~240_combout\,
	datad => \Y_sig~64_combout\,
	combout => \Y_sig~65_combout\);

-- Location: LCCOMB_X68_Y40_N10
\SRL64|Stage1_sig[48]~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~262_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[52]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[20]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[52]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~262_combout\);

-- Location: LCCOMB_X67_Y41_N6
\SRL64|Stage1_sig[48]~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~261_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & (\A[54]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[22]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \A[54]~input_o\,
	datad => \A[22]~input_o\,
	combout => \SRL64|Stage1_sig[48]~261_combout\);

-- Location: LCCOMB_X68_Y38_N6
\SRL64|Stage1_sig[19]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[19]~239_combout\ = (\SRL64|Stage1_sig[48]~238_combout\) # (\SRL64|Stage1_sig[48]~237_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage1_sig[48]~238_combout\,
	datad => \SRL64|Stage1_sig[48]~237_combout\,
	combout => \SRL64|Stage1_sig[19]~239_combout\);

-- Location: LCCOMB_X68_Y38_N8
\SRL64|Stage1_sig[19]~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[19]~263_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~262_combout\) # ((\SRL64|Stage1_sig[48]~261_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[19]~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[48]~262_combout\,
	datac => \SRL64|Stage1_sig[48]~261_combout\,
	datad => \SRL64|Stage1_sig[19]~239_combout\,
	combout => \SRL64|Stage1_sig[19]~263_combout\);

-- Location: LCCOMB_X69_Y41_N22
\SRL64|Stage1_sig[27]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[27]~257_combout\ = (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~235_combout\) # (\SRL64|Stage1_sig[48]~234_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~235_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~234_combout\,
	combout => \SRL64|Stage1_sig[27]~257_combout\);

-- Location: LCCOMB_X68_Y40_N0
\SRL64|Stage1_sig[48]~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~259_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[60]~input_o\))) # (!\SwapWord~0_combout\ & (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \A[60]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SRL64|Stage1_sig[48]~259_combout\);

-- Location: LCCOMB_X72_Y40_N6
\SRL64|Stage1_sig[48]~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~258_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[62]~input_o\))) # (!\SwapWord~0_combout\ & (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[30]~input_o\,
	datad => \A[62]~input_o\,
	combout => \SRL64|Stage1_sig[48]~258_combout\);

-- Location: LCCOMB_X69_Y41_N0
\SRL64|Stage1_sig[27]~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[27]~260_combout\ = (\SRL64|Stage1_sig[27]~257_combout\) # ((\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~259_combout\) # (\SRL64|Stage1_sig[48]~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[27]~257_combout\,
	datab => \SRL64|Stage1_sig[48]~259_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~258_combout\,
	combout => \SRL64|Stage1_sig[27]~260_combout\);

-- Location: LCCOMB_X74_Y39_N10
\SRL64|Stage2_sig[48]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~63_combout\ = (\B[3]~input_o\ & ((\SRL64|Stage1_sig[27]~260_combout\))) # (!\B[3]~input_o\ & (\SRL64|Stage1_sig[19]~263_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[19]~263_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64|Stage1_sig[27]~260_combout\,
	combout => \SRL64|Stage2_sig[48]~63_combout\);

-- Location: LCCOMB_X67_Y40_N14
\SRL64|Stage1_sig[48]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~255_combout\ = (!\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[56]~input_o\))) # (!\SwapWord~0_combout\ & (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SwapWord~0_combout\,
	datac => \A[24]~input_o\,
	datad => \A[56]~input_o\,
	combout => \SRL64|Stage1_sig[48]~255_combout\);

-- Location: LCCOMB_X68_Y41_N14
\SRL64|Stage1_sig[23]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[23]~233_combout\ = (\SRL64|Stage1_sig[48]~231_combout\) # (\SRL64|Stage1_sig[48]~232_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~231_combout\,
	datac => \SRL64|Stage1_sig[48]~232_combout\,
	combout => \SRL64|Stage1_sig[23]~233_combout\);

-- Location: LCCOMB_X69_Y40_N6
\SRL64|Stage1_sig[48]~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~254_combout\ = (\B[1]~input_o\ & ((\SwapWord~0_combout\ & ((\A[58]~input_o\))) # (!\SwapWord~0_combout\ & (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SwapWord~0_combout\,
	datad => \A[58]~input_o\,
	combout => \SRL64|Stage1_sig[48]~254_combout\);

-- Location: LCCOMB_X68_Y41_N16
\SRL64|Stage1_sig[23]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[23]~256_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~255_combout\) # ((\SRL64|Stage1_sig[48]~254_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[23]~233_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~255_combout\,
	datab => \SRL64|Stage1_sig[23]~233_combout\,
	datac => \SRL64|Stage1_sig[48]~254_combout\,
	datad => \B[0]~input_o\,
	combout => \SRL64|Stage1_sig[23]~256_combout\);

-- Location: LCCOMB_X72_Y37_N0
\SRL64|Stage1_sig[31]~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[31]~253_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[32]~130_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~228_combout\) # ((\SRL64|Stage1_sig[48]~229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~228_combout\,
	datab => \SRL64|Stage1_sig[48]~229_combout\,
	datac => \SRL64|Stage1_sig[32]~130_combout\,
	datad => \B[0]~input_o\,
	combout => \SRL64|Stage1_sig[31]~253_combout\);

-- Location: LCCOMB_X74_Y39_N24
\SRL64|Stage2_sig[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[19]~62_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SRL64|Stage1_sig[31]~253_combout\))) # (!\B[3]~input_o\ & (\SRL64|Stage1_sig[23]~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[23]~256_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRL64|Stage1_sig[31]~253_combout\,
	combout => \SRL64|Stage2_sig[19]~62_combout\);

-- Location: LCCOMB_X74_Y39_N4
\SRL64|Stage2_sig[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[19]~64_combout\ = (\SRL64|Stage2_sig[19]~62_combout\) # ((\SRL64|Stage2_sig[48]~63_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~63_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL64|Stage2_sig[19]~62_combout\,
	combout => \SRL64|Stage2_sig[19]~64_combout\);

-- Location: LCCOMB_X74_Y42_N0
\Y_sig~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~66_combout\ = (\Y_sig~48_combout\ & (((\SRL64|Stage3_sig~42_combout\)))) # (!\Y_sig~48_combout\ & ((\SRL64|Stage3_sig~42_combout\ & ((\SRL64|Stage2_sig[35]~60_combout\))) # (!\SRL64|Stage3_sig~42_combout\ & (\SRL64|Stage2_sig[51]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[51]~61_combout\,
	datab => \Y_sig~48_combout\,
	datac => \SRL64|Stage3_sig~42_combout\,
	datad => \SRL64|Stage2_sig[35]~60_combout\,
	combout => \Y_sig~66_combout\);

-- Location: LCCOMB_X74_Y42_N10
\Y_sig~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~67_combout\ = (\Y_sig~48_combout\ & ((\Y_sig~66_combout\ & (\SRL64|Stage2_sig[19]~64_combout\)) # (!\Y_sig~66_combout\ & ((\SRA64|Stage2_sig[51]~36_combout\))))) # (!\Y_sig~48_combout\ & (((\Y_sig~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[19]~64_combout\,
	datab => \Y_sig~48_combout\,
	datac => \Y_sig~66_combout\,
	datad => \SRA64|Stage2_sig[51]~36_combout\,
	combout => \Y_sig~67_combout\);

-- Location: LCCOMB_X74_Y39_N22
\Y_sig~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~69_combout\ = (\Y_sig~51_combout\ & ((\Y_sig~68_combout\ & ((\Y_sig~67_combout\))) # (!\Y_sig~68_combout\ & (\Y_sig~65_combout\)))) # (!\Y_sig~51_combout\ & (\Y_sig~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~51_combout\,
	datab => \Y_sig~68_combout\,
	datac => \Y_sig~65_combout\,
	datad => \Y_sig~67_combout\,
	combout => \Y_sig~69_combout\);

-- Location: IOIBUF_X105_Y73_N1
\C[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(3),
	o => \C[3]~input_o\);

-- Location: LCCOMB_X75_Y44_N26
\Y_sig~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~70_combout\ = (\ShiftFN[1]~input_o\ & (\Y_sig~69_combout\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Y_sig~69_combout\)) # (!\ShiftFN[0]~input_o\ & ((\C[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y_sig~69_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \C[3]~input_o\,
	combout => \Y_sig~70_combout\);

-- Location: IOIBUF_X79_Y73_N8
\C[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(4),
	o => \C[4]~input_o\);

-- Location: LCCOMB_X74_Y36_N0
\SLL64|Stage2_sig[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[4]~15_combout\ = (!\SRA64|Equal2~0_combout\ & ((\SwapWord~0_combout\ & (\A[32]~input_o\)) # (!\SwapWord~0_combout\ & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SwapWord~0_combout\,
	datab => \A[32]~input_o\,
	datac => \SRA64|Equal2~0_combout\,
	datad => \A[0]~input_o\,
	combout => \SLL64|Stage2_sig[4]~15_combout\);

-- Location: LCCOMB_X74_Y36_N10
\SLL64|Stage1_sig[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[4]~34_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~195_combout\) # ((\B[1]~input_o\ & \X_sig[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL64|Stage1_sig[48]~195_combout\,
	datac => \B[0]~input_o\,
	datad => \X_sig[1]~0_combout\,
	combout => \SLL64|Stage1_sig[4]~34_combout\);

-- Location: LCCOMB_X74_Y36_N22
\SLL64|Stage1_sig[4]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[4]~111_combout\ = (\SLL64|Stage1_sig[4]~34_combout\) # ((!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~76_combout\) # (\SRL64|Stage1_sig[48]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~76_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[48]~80_combout\,
	datad => \SLL64|Stage1_sig[4]~34_combout\,
	combout => \SLL64|Stage1_sig[4]~111_combout\);

-- Location: LCCOMB_X75_Y38_N8
\SLL64|Stage2_sig[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[4]~16_combout\ = (\SLL64|Stage2_sig[4]~15_combout\ & ((\SRA64|Equal5~0_combout\) # ((\SLL64|Stage1_sig[4]~111_combout\ & \SRL64|Stage2_sig[48]~29_combout\)))) # (!\SLL64|Stage2_sig[4]~15_combout\ & (\SLL64|Stage1_sig[4]~111_combout\ & 
-- (\SRL64|Stage2_sig[48]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[4]~15_combout\,
	datab => \SLL64|Stage1_sig[4]~111_combout\,
	datac => \SRL64|Stage2_sig[48]~29_combout\,
	datad => \SRA64|Equal5~0_combout\,
	combout => \SLL64|Stage2_sig[4]~16_combout\);

-- Location: LCCOMB_X75_Y44_N12
\Y_sig~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~77_combout\ = (\SgnExtLower_sig[31]~0_combout\ & ((\SLL64|Stage2_sig[4]~16_combout\) # ((\C[4]~input_o\ & !\ShiftFN[0]~input_o\)))) # (!\SgnExtLower_sig[31]~0_combout\ & (\C[4]~input_o\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtLower_sig[31]~0_combout\,
	datab => \C[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SLL64|Stage2_sig[4]~16_combout\,
	combout => \Y_sig~77_combout\);

-- Location: LCCOMB_X68_Y38_N2
\SRL64|Stage1_sig[17]~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[17]~264_combout\ = (\SRL64|Stage1_sig[48]~191_combout\) # (\SRL64|Stage1_sig[48]~192_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~191_combout\,
	datad => \SRL64|Stage1_sig[48]~192_combout\,
	combout => \SRL64|Stage1_sig[17]~264_combout\);

-- Location: LCCOMB_X70_Y38_N26
\SRL64|Stage1_sig[16]~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[16]~265_combout\ = (\B[0]~input_o\ & (\SRL64|Stage1_sig[17]~264_combout\)) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~242_combout\) # (\SRL64|Stage1_sig[48]~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[17]~264_combout\,
	datac => \SRL64|Stage1_sig[48]~242_combout\,
	datad => \SRL64|Stage1_sig[48]~243_combout\,
	combout => \SRL64|Stage1_sig[16]~265_combout\);

-- Location: LCCOMB_X73_Y38_N14
\SRL64|Stage2_sig[48]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~65_combout\ = (\B[3]~input_o\ & (\SRL64|Stage1_sig[16]~265_combout\)) # (!\B[3]~input_o\ & ((\SRL64|Stage1_sig[8]~274_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SRL64|Stage1_sig[16]~265_combout\,
	datad => \SRL64|Stage1_sig[8]~274_combout\,
	combout => \SRL64|Stage2_sig[48]~65_combout\);

-- Location: LCCOMB_X76_Y39_N28
\Y_sig~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~71_combout\ = (!\ExtWord~input_o\ & ((\B[5]~input_o\) # ((\B[4]~input_o\) # (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Y_sig~71_combout\);

-- Location: LCCOMB_X79_Y42_N0
\Y_sig~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~72_combout\ = (\B[5]~input_o\) # ((\B[4]~input_o\) # (\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Y_sig~72_combout\);

-- Location: LCCOMB_X70_Y40_N22
\SRL64|Stage2_sig[52]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[52]~66_combout\ = (\SRA64|Equal5~0_combout\ & ((\B[0]~input_o\ & (\SRL64|Stage1_sig[57]~96_combout\)) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[56]~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[57]~96_combout\,
	datad => \SRL64|Stage1_sig[56]~99_combout\,
	combout => \SRL64|Stage2_sig[52]~66_combout\);

-- Location: LCCOMB_X70_Y41_N4
\SRL64|Stage1_sig[52]~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[52]~289_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~100_combout\) # ((\SRL64|Stage1_sig[48]~101_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[52]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~100_combout\,
	datab => \SRL64|Stage1_sig[52]~105_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~101_combout\,
	combout => \SRL64|Stage1_sig[52]~289_combout\);

-- Location: LCCOMB_X73_Y40_N20
\SRA64|Stage2_sig[52]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[52]~37_combout\ = (\SRL64|Stage1_sig[52]~289_combout\ & ((\SRL64|Stage2_sig[48]~29_combout\) # ((\SRL64|Stage1_sig[60]~109_combout\ & \SRL64|Stage2_sig[48]~28_combout\)))) # (!\SRL64|Stage1_sig[52]~289_combout\ & 
-- (\SRL64|Stage1_sig[60]~109_combout\ & (\SRL64|Stage2_sig[48]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[52]~289_combout\,
	datab => \SRL64|Stage1_sig[60]~109_combout\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \SRA64|Stage2_sig[52]~37_combout\);

-- Location: LCCOMB_X73_Y40_N14
\SRA64|Stage2_sig[52]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[52]~38_combout\ = (\SRA64|Stage2_sig[51]~34_combout\) # ((\SRL64|Stage2_sig[52]~66_combout\) # (\SRA64|Stage2_sig[52]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64|Stage2_sig[51]~34_combout\,
	datac => \SRL64|Stage2_sig[52]~66_combout\,
	datad => \SRA64|Stage2_sig[52]~37_combout\,
	combout => \SRA64|Stage2_sig[52]~38_combout\);

-- Location: LCCOMB_X72_Y39_N14
\SRL64|Stage1_sig[40]~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[40]~290_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~111_combout\) # (\SRL64|Stage1_sig[48]~110_combout\)))) # (!\B[0]~input_o\ & (\SRL64|Stage1_sig[40]~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[40]~115_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[48]~111_combout\,
	datad => \SRL64|Stage1_sig[48]~110_combout\,
	combout => \SRL64|Stage1_sig[40]~290_combout\);

-- Location: LCCOMB_X73_Y40_N10
\SRL64|Stage2_sig[36]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[36]~68_combout\ = (\SRL64|Stage1_sig[40]~290_combout\ & ((\SRA64|Equal5~0_combout\) # ((\SRL64|Stage1_sig[48]~93_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))) # (!\SRL64|Stage1_sig[40]~290_combout\ & 
-- (((\SRL64|Stage1_sig[48]~93_combout\ & \SRL64|Stage2_sig[44]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[40]~290_combout\,
	datab => \SRA64|Equal5~0_combout\,
	datac => \SRL64|Stage1_sig[48]~93_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SRL64|Stage2_sig[36]~68_combout\);

-- Location: LCCOMB_X73_Y40_N24
\SRL64|Stage2_sig[36]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[36]~67_combout\ = (\SRL64|Stage1_sig[44]~277_combout\ & ((\SRL64|Stage2_sig[48]~28_combout\) # ((\SRL64|Stage1_sig[36]~278_combout\ & \SRL64|Stage2_sig[48]~29_combout\)))) # (!\SRL64|Stage1_sig[44]~277_combout\ & 
-- (((\SRL64|Stage1_sig[36]~278_combout\ & \SRL64|Stage2_sig[48]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[44]~277_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SRL64|Stage1_sig[36]~278_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \SRL64|Stage2_sig[36]~67_combout\);

-- Location: LCCOMB_X73_Y40_N4
\SRL64|Stage2_sig[36]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[36]~69_combout\ = (\SRL64|Stage2_sig[36]~68_combout\) # (\SRL64|Stage2_sig[36]~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[36]~68_combout\,
	datad => \SRL64|Stage2_sig[36]~67_combout\,
	combout => \SRL64|Stage2_sig[36]~69_combout\);

-- Location: LCCOMB_X73_Y40_N12
\SRL64|Stage2_sig[52]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[52]~155_combout\ = (!\SRA64|Stage2_sig[52]~37_combout\ & ((\B[3]~input_o\) # ((!\SRL64|Stage1_sig[56]~276_combout\) # (!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRL64|Stage1_sig[56]~276_combout\,
	datad => \SRA64|Stage2_sig[52]~37_combout\,
	combout => \SRL64|Stage2_sig[52]~155_combout\);

-- Location: LCCOMB_X73_Y40_N6
\SRA_SRL_sig[36]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[36]~11_combout\ = (\SRA_SRL_sig[41]~4_combout\ & (\SRA_SRL_sig[41]~3_combout\ & ((!\SRL64|Stage2_sig[52]~155_combout\)))) # (!\SRA_SRL_sig[41]~4_combout\ & (((\SRL64|Stage2_sig[36]~69_combout\)) # (!\SRA_SRL_sig[41]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[41]~4_combout\,
	datab => \SRA_SRL_sig[41]~3_combout\,
	datac => \SRL64|Stage2_sig[36]~69_combout\,
	datad => \SRL64|Stage2_sig[52]~155_combout\,
	combout => \SRA_SRL_sig[36]~11_combout\);

-- Location: LCCOMB_X79_Y40_N28
\SRA_SRL_sig[36]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[36]~12_combout\ = (\SRA_SRL_sig[36]~11_combout\ & (((\SRA64|Stage2_sig[52]~38_combout\) # (!\SRA_SRL_sig[41]~2_combout\)))) # (!\SRA_SRL_sig[36]~11_combout\ & (\X_sig[63]~2_combout\ & ((\SRA_SRL_sig[41]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_sig[63]~2_combout\,
	datab => \SRA64|Stage2_sig[52]~38_combout\,
	datac => \SRA_SRL_sig[36]~11_combout\,
	datad => \SRA_SRL_sig[41]~2_combout\,
	combout => \SRA_SRL_sig[36]~12_combout\);

-- Location: LCCOMB_X74_Y41_N16
\Y_sig~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~73_combout\ = (\Y_sig~71_combout\ & (\Y_sig~72_combout\)) # (!\Y_sig~71_combout\ & ((\Y_sig~72_combout\ & ((\SRA_SRL_sig[36]~12_combout\))) # (!\Y_sig~72_combout\ & (\SRL64|Stage2_sig[48]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~71_combout\,
	datab => \Y_sig~72_combout\,
	datac => \SRL64|Stage2_sig[48]~26_combout\,
	datad => \SRA_SRL_sig[36]~12_combout\,
	combout => \Y_sig~73_combout\);

-- Location: LCCOMB_X73_Y40_N0
\Y_sig~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~74_combout\ = (\SRL64|Stage3_sig~42_combout\ & (((\Y_sig~48_combout\)))) # (!\SRL64|Stage3_sig~42_combout\ & (((\SRA64|Stage2_sig[51]~34_combout\ & \Y_sig~48_combout\)) # (!\SRL64|Stage2_sig[52]~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage3_sig~42_combout\,
	datab => \SRA64|Stage2_sig[51]~34_combout\,
	datac => \Y_sig~48_combout\,
	datad => \SRL64|Stage2_sig[52]~155_combout\,
	combout => \Y_sig~74_combout\);

-- Location: LCCOMB_X68_Y41_N18
\SRL64|Stage1_sig[24]~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[24]~268_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[25]~187_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~255_combout\) # ((\SRL64|Stage1_sig[48]~254_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~255_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[48]~254_combout\,
	datad => \SRL64|Stage1_sig[25]~187_combout\,
	combout => \SRL64|Stage1_sig[24]~268_combout\);

-- Location: LCCOMB_X73_Y38_N26
\SRL64|Stage2_sig[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[20]~71_combout\ = (\SRL64|Stage1_sig[32]~133_combout\ & ((\SRL64|Stage2_sig[44]~32_combout\) # ((\SRL64|Stage1_sig[24]~268_combout\ & \SRA64|Equal5~0_combout\)))) # (!\SRL64|Stage1_sig[32]~133_combout\ & 
-- (\SRL64|Stage1_sig[24]~268_combout\ & (\SRA64|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[32]~133_combout\,
	datab => \SRL64|Stage1_sig[24]~268_combout\,
	datac => \SRA64|Equal5~0_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SRL64|Stage2_sig[20]~71_combout\);

-- Location: LCCOMB_X69_Y41_N26
\SRL64|Stage1_sig[28]~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[28]~267_combout\ = (\B[0]~input_o\ & (\SRL64|Stage1_sig[29]~175_combout\)) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~259_combout\) # (\SRL64|Stage1_sig[48]~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[29]~175_combout\,
	datab => \SRL64|Stage1_sig[48]~259_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~258_combout\,
	combout => \SRL64|Stage1_sig[28]~267_combout\);

-- Location: LCCOMB_X68_Y38_N20
\SRL64|Stage1_sig[20]~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[20]~266_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[21]~181_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~261_combout\) # ((\SRL64|Stage1_sig[48]~262_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[48]~261_combout\,
	datac => \SRL64|Stage1_sig[48]~262_combout\,
	datad => \SRL64|Stage1_sig[21]~181_combout\,
	combout => \SRL64|Stage1_sig[20]~266_combout\);

-- Location: LCCOMB_X73_Y38_N24
\SRL64|Stage2_sig[20]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[20]~70_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SRL64|Stage1_sig[20]~266_combout\) # ((\SRL64|Stage1_sig[28]~267_combout\ & \SRL64|Stage2_sig[48]~28_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- (\SRL64|Stage1_sig[28]~267_combout\ & (\SRL64|Stage2_sig[48]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRL64|Stage1_sig[28]~267_combout\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SRL64|Stage1_sig[20]~266_combout\,
	combout => \SRL64|Stage2_sig[20]~70_combout\);

-- Location: LCCOMB_X73_Y38_N4
\SRL64|Stage2_sig[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[20]~72_combout\ = (\SRL64|Stage2_sig[20]~71_combout\) # (\SRL64|Stage2_sig[20]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage2_sig[20]~71_combout\,
	datad => \SRL64|Stage2_sig[20]~70_combout\,
	combout => \SRL64|Stage2_sig[20]~72_combout\);

-- Location: LCCOMB_X74_Y41_N18
\Y_sig~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~75_combout\ = (\SRL64|Stage3_sig~42_combout\ & ((\Y_sig~74_combout\ & ((\SRL64|Stage2_sig[20]~72_combout\))) # (!\Y_sig~74_combout\ & (\SRL64|Stage2_sig[36]~69_combout\)))) # (!\SRL64|Stage3_sig~42_combout\ & (\Y_sig~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage3_sig~42_combout\,
	datab => \Y_sig~74_combout\,
	datac => \SRL64|Stage2_sig[36]~69_combout\,
	datad => \SRL64|Stage2_sig[20]~72_combout\,
	combout => \Y_sig~75_combout\);

-- Location: LCCOMB_X74_Y41_N20
\Y_sig~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~76_combout\ = (\Y_sig~73_combout\ & (((\Y_sig~75_combout\) # (!\Y_sig~71_combout\)))) # (!\Y_sig~73_combout\ & (\SRL64|Stage2_sig[48]~65_combout\ & ((\Y_sig~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~65_combout\,
	datab => \Y_sig~73_combout\,
	datac => \Y_sig~75_combout\,
	datad => \Y_sig~71_combout\,
	combout => \Y_sig~76_combout\);

-- Location: LCCOMB_X75_Y44_N30
\Y_sig~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~78_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_sig~76_combout\))) # (!\ShiftFN[1]~input_o\ & (\Y_sig~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~77_combout\,
	datab => \Y_sig~76_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_sig~78_combout\);

-- Location: LCCOMB_X74_Y41_N0
\SRL64|Stage2_sig[48]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~76_combout\ = (\B[3]~input_o\ & (\SRL64|Stage1_sig[17]~193_combout\)) # (!\B[3]~input_o\ & ((\SRL64|Stage1_sig[9]~279_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SRL64|Stage1_sig[17]~193_combout\,
	datad => \SRL64|Stage1_sig[9]~279_combout\,
	combout => \SRL64|Stage2_sig[48]~76_combout\);

-- Location: LCCOMB_X74_Y41_N26
\Y_sig~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~79_combout\ = (\Y_sig~71_combout\ & ((\Y_sig~72_combout\) # ((\SRL64|Stage2_sig[48]~76_combout\)))) # (!\Y_sig~71_combout\ & (!\Y_sig~72_combout\ & (\SRL64|Stage2_sig[48]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~71_combout\,
	datab => \Y_sig~72_combout\,
	datac => \SRL64|Stage2_sig[48]~39_combout\,
	datad => \SRL64|Stage2_sig[48]~76_combout\,
	combout => \Y_sig~79_combout\);

-- Location: LCCOMB_X70_Y41_N30
\SRL64|Stage1_sig[53]~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[53]~269_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~152_combout\) # (\SRL64|Stage1_sig[48]~153_combout\)))) # (!\B[0]~input_o\ & (\SRL64|Stage1_sig[53]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[53]~102_combout\,
	datab => \SRL64|Stage1_sig[48]~152_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~153_combout\,
	combout => \SRL64|Stage1_sig[53]~269_combout\);

-- Location: LCCOMB_X73_Y41_N26
\SRA64|Stage2_sig[53]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[53]~39_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\X_sig[63]~2_combout\)) # (!\B[3]~input_o\ & ((\SRL64|Stage1_sig[57]~151_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_sig[63]~2_combout\,
	datab => \SRL64|Stage1_sig[57]~151_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SRA64|Stage2_sig[53]~39_combout\);

-- Location: LCCOMB_X76_Y41_N6
\SRA64|Stage2_sig[53]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[53]~45_combout\ = (\B[3]~input_o\ & (\SRA64|Stage1_sig[61]~3_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64|Stage1_sig[61]~3_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64|Stage2_sig[53]~45_combout\);

-- Location: LCCOMB_X76_Y41_N14
\SRA64|Stage2_sig[53]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[53]~40_combout\ = (\SRA64|Stage2_sig[53]~39_combout\) # ((\SRA64|Stage2_sig[53]~45_combout\) # ((\SRL64|Stage1_sig[53]~269_combout\ & \SRL64|Stage2_sig[48]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[53]~269_combout\,
	datab => \SRA64|Stage2_sig[53]~39_combout\,
	datac => \SRL64|Stage2_sig[48]~29_combout\,
	datad => \SRA64|Stage2_sig[53]~45_combout\,
	combout => \SRA64|Stage2_sig[53]~40_combout\);

-- Location: LCCOMB_X77_Y37_N16
\SRL64|Stage2_sig[37]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[37]~157_combout\ = (\B[3]~input_o\ & (\SRL64|Stage1_sig[49]~148_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64|Stage1_sig[49]~148_combout\,
	datac => \B[2]~input_o\,
	combout => \SRL64|Stage2_sig[37]~157_combout\);

-- Location: LCCOMB_X72_Y41_N6
\SRL64|Stage2_sig[37]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[37]~74_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SRL64|Stage1_sig[37]~282_combout\) # ((\SRL64|Stage1_sig[45]~283_combout\ & \SRL64|Stage2_sig[48]~28_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- (\SRL64|Stage1_sig[45]~283_combout\ & (\SRL64|Stage2_sig[48]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRL64|Stage1_sig[45]~283_combout\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SRL64|Stage1_sig[37]~282_combout\,
	combout => \SRL64|Stage2_sig[37]~74_combout\);

-- Location: LCCOMB_X72_Y41_N16
\SRL64|Stage2_sig[37]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[37]~75_combout\ = (\SRL64|Stage2_sig[37]~157_combout\) # ((\SRL64|Stage2_sig[37]~74_combout\) # ((\SRL64|Stage1_sig[41]~281_combout\ & \SRA64|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[41]~281_combout\,
	datab => \SRA64|Equal5~0_combout\,
	datac => \SRL64|Stage2_sig[37]~157_combout\,
	datad => \SRL64|Stage2_sig[37]~74_combout\,
	combout => \SRL64|Stage2_sig[37]~75_combout\);

-- Location: LCCOMB_X76_Y41_N0
\SRL64|Stage2_sig[53]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[53]~73_combout\ = (\SRL64|Stage1_sig[53]~269_combout\ & ((\SRL64|Stage2_sig[48]~29_combout\) # ((\SRL64|Stage1_sig[61]~169_combout\ & \SRL64|Stage2_sig[48]~28_combout\)))) # (!\SRL64|Stage1_sig[53]~269_combout\ & 
-- (\SRL64|Stage1_sig[61]~169_combout\ & ((\SRL64|Stage2_sig[48]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[53]~269_combout\,
	datab => \SRL64|Stage1_sig[61]~169_combout\,
	datac => \SRL64|Stage2_sig[48]~29_combout\,
	datad => \SRL64|Stage2_sig[48]~28_combout\,
	combout => \SRL64|Stage2_sig[53]~73_combout\);

-- Location: LCCOMB_X76_Y41_N8
\SRL64|Stage2_sig[53]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[53]~156_combout\ = (\SRL64|Stage2_sig[53]~73_combout\) # ((!\B[3]~input_o\ & (\SRL64|Stage1_sig[57]~151_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64|Stage2_sig[53]~73_combout\,
	datac => \SRL64|Stage1_sig[57]~151_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64|Stage2_sig[53]~156_combout\);

-- Location: LCCOMB_X77_Y41_N30
\SRA_SRL_sig[37]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[37]~13_combout\ = (\SRA_SRL_sig[41]~4_combout\ & (((\SRA_SRL_sig[41]~3_combout\ & \SRL64|Stage2_sig[53]~156_combout\)))) # (!\SRA_SRL_sig[41]~4_combout\ & ((\SRL64|Stage2_sig[37]~75_combout\) # ((!\SRA_SRL_sig[41]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[37]~75_combout\,
	datab => \SRA_SRL_sig[41]~4_combout\,
	datac => \SRA_SRL_sig[41]~3_combout\,
	datad => \SRL64|Stage2_sig[53]~156_combout\,
	combout => \SRA_SRL_sig[37]~13_combout\);

-- Location: LCCOMB_X74_Y41_N14
\SRA_SRL_sig[37]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[37]~14_combout\ = (\SRA_SRL_sig[41]~2_combout\ & ((\SRA_SRL_sig[37]~13_combout\ & ((\SRA64|Stage2_sig[53]~40_combout\))) # (!\SRA_SRL_sig[37]~13_combout\ & (\X_sig[63]~2_combout\)))) # (!\SRA_SRL_sig[41]~2_combout\ & 
-- (((\SRA_SRL_sig[37]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_sig[63]~2_combout\,
	datab => \SRA64|Stage2_sig[53]~40_combout\,
	datac => \SRA_SRL_sig[41]~2_combout\,
	datad => \SRA_SRL_sig[37]~13_combout\,
	combout => \SRA_SRL_sig[37]~14_combout\);

-- Location: LCCOMB_X72_Y37_N2
\SRL64|Stage2_sig[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[21]~77_combout\ = (\SRL64|Stage2_sig[48]~28_combout\ & ((\B[0]~input_o\ & (\SRL64|Stage1_sig[30]~172_combout\)) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[29]~175_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[30]~172_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[29]~175_combout\,
	combout => \SRL64|Stage2_sig[21]~77_combout\);

-- Location: LCCOMB_X72_Y41_N18
\SRL64|Stage2_sig[21]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[21]~78_combout\ = (\SRL64|Stage2_sig[44]~32_combout\ & ((\SRL64|Stage1_sig[33]~158_combout\) # ((\SRA64|Equal5~0_combout\ & \SRL64|Stage1_sig[25]~286_combout\)))) # (!\SRL64|Stage2_sig[44]~32_combout\ & (\SRA64|Equal5~0_combout\ & 
-- (\SRL64|Stage1_sig[25]~286_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[44]~32_combout\,
	datab => \SRA64|Equal5~0_combout\,
	datac => \SRL64|Stage1_sig[25]~286_combout\,
	datad => \SRL64|Stage1_sig[33]~158_combout\,
	combout => \SRL64|Stage2_sig[21]~78_combout\);

-- Location: LCCOMB_X72_Y41_N4
\SRL64|Stage2_sig[21]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[21]~79_combout\ = (\SRL64|Stage2_sig[21]~77_combout\) # ((\SRL64|Stage2_sig[21]~78_combout\) # ((\SRL64|Stage2_sig[48]~29_combout\ & \SRL64|Stage1_sig[21]~285_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRL64|Stage2_sig[21]~77_combout\,
	datac => \SRL64|Stage1_sig[21]~285_combout\,
	datad => \SRL64|Stage2_sig[21]~78_combout\,
	combout => \SRL64|Stage2_sig[21]~79_combout\);

-- Location: LCCOMB_X77_Y41_N16
\Y_sig~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~80_combout\ = (\Y_sig~48_combout\ & (((\SRL64|Stage3_sig~42_combout\)))) # (!\Y_sig~48_combout\ & ((\SRL64|Stage3_sig~42_combout\ & (\SRL64|Stage2_sig[37]~75_combout\)) # (!\SRL64|Stage3_sig~42_combout\ & ((\SRL64|Stage2_sig[53]~156_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[37]~75_combout\,
	datab => \Y_sig~48_combout\,
	datac => \SRL64|Stage3_sig~42_combout\,
	datad => \SRL64|Stage2_sig[53]~156_combout\,
	combout => \Y_sig~80_combout\);

-- Location: LCCOMB_X74_Y41_N4
\Y_sig~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~81_combout\ = (\Y_sig~48_combout\ & ((\Y_sig~80_combout\ & ((\SRL64|Stage2_sig[21]~79_combout\))) # (!\Y_sig~80_combout\ & (\SRA64|Stage2_sig[53]~40_combout\)))) # (!\Y_sig~48_combout\ & (((\Y_sig~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~48_combout\,
	datab => \SRA64|Stage2_sig[53]~40_combout\,
	datac => \SRL64|Stage2_sig[21]~79_combout\,
	datad => \Y_sig~80_combout\,
	combout => \Y_sig~81_combout\);

-- Location: LCCOMB_X74_Y41_N6
\Y_sig~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~82_combout\ = (\Y_sig~79_combout\ & (((\Y_sig~81_combout\)) # (!\Y_sig~72_combout\))) # (!\Y_sig~79_combout\ & (\Y_sig~72_combout\ & (\SRA_SRL_sig[37]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~79_combout\,
	datab => \Y_sig~72_combout\,
	datac => \SRA_SRL_sig[37]~14_combout\,
	datad => \Y_sig~81_combout\,
	combout => \Y_sig~82_combout\);

-- Location: LCCOMB_X74_Y36_N4
\SLL64|Stage1_sig[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[4]~35_combout\ = (\SRL64|Stage1_sig[48]~76_combout\) # (\SRL64|Stage1_sig[48]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~76_combout\,
	datac => \SRL64|Stage1_sig[48]~80_combout\,
	combout => \SLL64|Stage1_sig[4]~35_combout\);

-- Location: LCCOMB_X73_Y36_N28
\SLL64|Stage1_sig[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[5]~36_combout\ = (\B[0]~input_o\ & (\SLL64|Stage1_sig[4]~35_combout\)) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~74_combout\) # (\SRL64|Stage1_sig[48]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[4]~35_combout\,
	datab => \SRL64|Stage1_sig[48]~74_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~78_combout\,
	combout => \SLL64|Stage1_sig[5]~36_combout\);

-- Location: LCCOMB_X76_Y37_N16
\SLL64|Stage2_sig[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[5]~17_combout\ = (\SRA64|Equal5~0_combout\ & ((\SLL64|Stage1_sig[1]~30_combout\) # ((\SRL64|Stage2_sig[48]~29_combout\ & \SLL64|Stage1_sig[5]~36_combout\)))) # (!\SRA64|Equal5~0_combout\ & (((\SRL64|Stage2_sig[48]~29_combout\ & 
-- \SLL64|Stage1_sig[5]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \SLL64|Stage1_sig[1]~30_combout\,
	datac => \SRL64|Stage2_sig[48]~29_combout\,
	datad => \SLL64|Stage1_sig[5]~36_combout\,
	combout => \SLL64|Stage2_sig[5]~17_combout\);

-- Location: IOIBUF_X45_Y73_N8
\C[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(5),
	o => \C[5]~input_o\);

-- Location: LCCOMB_X75_Y44_N24
\Y_sig~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~83_combout\ = (\SgnExtLower_sig[31]~0_combout\ & ((\SLL64|Stage2_sig[5]~17_combout\) # ((!\ShiftFN[0]~input_o\ & \C[5]~input_o\)))) # (!\SgnExtLower_sig[31]~0_combout\ & (((!\ShiftFN[0]~input_o\ & \C[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtLower_sig[31]~0_combout\,
	datab => \SLL64|Stage2_sig[5]~17_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \C[5]~input_o\,
	combout => \Y_sig~83_combout\);

-- Location: LCCOMB_X75_Y44_N10
\Y_sig~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~84_combout\ = (\ShiftFN[1]~input_o\ & (\Y_sig~82_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Y_sig~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \Y_sig~82_combout\,
	datad => \Y_sig~83_combout\,
	combout => \Y_sig~84_combout\);

-- Location: LCCOMB_X73_Y36_N6
\SLL64|Stage1_sig[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[7]~38_combout\ = (\SRL64|Stage1_sig[48]~137_combout\) # (\SRL64|Stage1_sig[48]~141_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~137_combout\,
	datad => \SRL64|Stage1_sig[48]~141_combout\,
	combout => \SLL64|Stage1_sig[7]~38_combout\);

-- Location: LCCOMB_X73_Y36_N16
\SLL64|Stage1_sig[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[6]~39_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~74_combout\) # (\SRL64|Stage1_sig[48]~78_combout\)))) # (!\B[0]~input_o\ & (\SLL64|Stage1_sig[7]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[7]~38_combout\,
	datab => \SRL64|Stage1_sig[48]~74_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~78_combout\,
	combout => \SLL64|Stage1_sig[6]~39_combout\);

-- Location: LCCOMB_X77_Y40_N2
\SLL64|Stage1_sig[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[2]~37_combout\ = (\SLL64|Stage1_sig[2]~31_combout\) # ((!\B[0]~input_o\ & \SRL64|Stage1_sig[48]~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \SLL64|Stage1_sig[2]~31_combout\,
	datad => \SRL64|Stage1_sig[48]~138_combout\,
	combout => \SLL64|Stage1_sig[2]~37_combout\);

-- Location: LCCOMB_X75_Y36_N24
\SLL64|Stage2_sig[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[6]~18_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SLL64|Stage1_sig[6]~39_combout\) # ((\SRA64|Equal5~0_combout\ & \SLL64|Stage1_sig[2]~37_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & (\SRA64|Equal5~0_combout\ & 
-- ((\SLL64|Stage1_sig[2]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRA64|Equal5~0_combout\,
	datac => \SLL64|Stage1_sig[6]~39_combout\,
	datad => \SLL64|Stage1_sig[2]~37_combout\,
	combout => \SLL64|Stage2_sig[6]~18_combout\);

-- Location: IOIBUF_X115_Y57_N15
\C[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(6),
	o => \C[6]~input_o\);

-- Location: LCCOMB_X75_Y44_N4
\Y_sig~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~89_combout\ = (\SgnExtLower_sig[31]~0_combout\ & ((\SLL64|Stage2_sig[6]~18_combout\) # ((!\ShiftFN[0]~input_o\ & \C[6]~input_o\)))) # (!\SgnExtLower_sig[31]~0_combout\ & (((!\ShiftFN[0]~input_o\ & \C[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtLower_sig[31]~0_combout\,
	datab => \SLL64|Stage2_sig[6]~18_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \C[6]~input_o\,
	combout => \Y_sig~89_combout\);

-- Location: LCCOMB_X74_Y43_N2
\SRL64|Stage2_sig[48]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~80_combout\ = (\B[3]~input_o\ & ((\SRL64|Stage1_sig[18]~288_combout\))) # (!\B[3]~input_o\ & (\SRL64|Stage1_sig[10]~199_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[10]~199_combout\,
	datac => \SRL64|Stage1_sig[18]~288_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL64|Stage2_sig[48]~80_combout\);

-- Location: LCCOMB_X73_Y41_N28
\SRA64|Stage1_sig[62]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage1_sig[62]~4_combout\ = (\B[0]~input_o\ & (((\X_sig[63]~2_combout\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\X_sig[63]~2_combout\))) # (!\B[1]~input_o\ & (\X_sig[62]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_sig[62]~3_combout\,
	datab => \B[0]~input_o\,
	datac => \X_sig[63]~2_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA64|Stage1_sig[62]~4_combout\);

-- Location: LCCOMB_X76_Y43_N28
\SRA64|Stage2_sig[54]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[54]~41_combout\ = (\B[3]~input_o\) # ((\B[2]~input_o\ & ((!\SRL64|Stage1_sig[58]~220_combout\))) # (!\B[2]~input_o\ & (!\SRL64|Stage1_sig[54]~226_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[54]~226_combout\,
	datab => \B[2]~input_o\,
	datac => \SRL64|Stage1_sig[58]~220_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA64|Stage2_sig[54]~41_combout\);

-- Location: LCCOMB_X76_Y43_N14
\SRA64|Stage2_sig[54]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[54]~42_combout\ = (\SRA64|Stage2_sig[51]~34_combout\) # (((\SRA64|Stage1_sig[62]~4_combout\ & \SRL64|Stage2_sig[48]~28_combout\)) # (!\SRA64|Stage2_sig[54]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Stage1_sig[62]~4_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SRA64|Stage2_sig[51]~34_combout\,
	datad => \SRA64|Stage2_sig[54]~41_combout\,
	combout => \SRA64|Stage2_sig[54]~42_combout\);

-- Location: LCCOMB_X76_Y43_N18
\SRL64|Stage2_sig[54]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[54]~158_combout\ = ((\B[3]~input_o\ & (\SRL64|Stage1_sig[62]~227_combout\ & !\B[2]~input_o\))) # (!\SRA64|Stage2_sig[54]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64|Stage1_sig[62]~227_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64|Stage2_sig[54]~41_combout\,
	combout => \SRL64|Stage2_sig[54]~158_combout\);

-- Location: LCCOMB_X73_Y43_N10
\SRL64|Stage2_sig[38]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[38]~82_combout\ = (\SRL64|Stage1_sig[50]~223_combout\ & ((\SRL64|Stage2_sig[44]~32_combout\) # ((\SRL64|Stage1_sig[42]~210_combout\ & \SRA64|Equal5~0_combout\)))) # (!\SRL64|Stage1_sig[50]~223_combout\ & 
-- (\SRL64|Stage1_sig[42]~210_combout\ & (\SRA64|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[50]~223_combout\,
	datab => \SRL64|Stage1_sig[42]~210_combout\,
	datac => \SRA64|Equal5~0_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SRL64|Stage2_sig[38]~82_combout\);

-- Location: LCCOMB_X73_Y43_N0
\SRL64|Stage2_sig[38]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[38]~81_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SRL64|Stage1_sig[38]~213_combout\) # ((\SRL64|Stage1_sig[46]~216_combout\ & \SRL64|Stage2_sig[48]~28_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- (\SRL64|Stage1_sig[46]~216_combout\ & ((\SRL64|Stage2_sig[48]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRL64|Stage1_sig[46]~216_combout\,
	datac => \SRL64|Stage1_sig[38]~213_combout\,
	datad => \SRL64|Stage2_sig[48]~28_combout\,
	combout => \SRL64|Stage2_sig[38]~81_combout\);

-- Location: LCCOMB_X73_Y43_N12
\SRL64|Stage2_sig[38]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[38]~83_combout\ = (\SRL64|Stage2_sig[38]~82_combout\) # (\SRL64|Stage2_sig[38]~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[38]~82_combout\,
	datad => \SRL64|Stage2_sig[38]~81_combout\,
	combout => \SRL64|Stage2_sig[38]~83_combout\);

-- Location: LCCOMB_X74_Y43_N4
\SRA_SRL_sig[38]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[38]~15_combout\ = (\SRA_SRL_sig[41]~3_combout\ & ((\SRA_SRL_sig[41]~4_combout\ & (\SRL64|Stage2_sig[54]~158_combout\)) # (!\SRA_SRL_sig[41]~4_combout\ & ((\SRL64|Stage2_sig[38]~83_combout\))))) # (!\SRA_SRL_sig[41]~3_combout\ & 
-- (((!\SRA_SRL_sig[41]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[54]~158_combout\,
	datab => \SRA_SRL_sig[41]~3_combout\,
	datac => \SRA_SRL_sig[41]~4_combout\,
	datad => \SRL64|Stage2_sig[38]~83_combout\,
	combout => \SRA_SRL_sig[38]~15_combout\);

-- Location: LCCOMB_X79_Y40_N22
\SRA_SRL_sig[38]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[38]~16_combout\ = (\SRA_SRL_sig[38]~15_combout\ & ((\SRA64|Stage2_sig[54]~42_combout\) # ((!\SRA_SRL_sig[41]~2_combout\)))) # (!\SRA_SRL_sig[38]~15_combout\ & (((\X_sig[63]~2_combout\ & \SRA_SRL_sig[41]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Stage2_sig[54]~42_combout\,
	datab => \X_sig[63]~2_combout\,
	datac => \SRA_SRL_sig[38]~15_combout\,
	datad => \SRA_SRL_sig[41]~2_combout\,
	combout => \SRA_SRL_sig[38]~16_combout\);

-- Location: LCCOMB_X74_Y43_N30
\Y_sig~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~85_combout\ = (\Y_sig~72_combout\ & ((\SRA_SRL_sig[38]~16_combout\) # ((\Y_sig~71_combout\)))) # (!\Y_sig~72_combout\ & (((!\Y_sig~71_combout\ & \SRL64|Stage2_sig[48]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[38]~16_combout\,
	datab => \Y_sig~72_combout\,
	datac => \Y_sig~71_combout\,
	datad => \SRL64|Stage2_sig[48]~48_combout\,
	combout => \Y_sig~85_combout\);

-- Location: LCCOMB_X73_Y43_N30
\SRL64|Stage2_sig[22]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[22]~84_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SRL64|Stage1_sig[22]~287_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SRL64|Stage1_sig[30]~230_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- (\SRL64|Stage2_sig[48]~28_combout\ & ((\SRL64|Stage1_sig[30]~230_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SRL64|Stage1_sig[22]~287_combout\,
	datad => \SRL64|Stage1_sig[30]~230_combout\,
	combout => \SRL64|Stage2_sig[22]~84_combout\);

-- Location: LCCOMB_X73_Y43_N24
\SRL64|Stage2_sig[22]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[22]~85_combout\ = (\SRL64|Stage1_sig[34]~207_combout\ & ((\SRL64|Stage2_sig[44]~32_combout\) # ((\SRL64|Stage1_sig[26]~236_combout\ & \SRA64|Equal5~0_combout\)))) # (!\SRL64|Stage1_sig[34]~207_combout\ & 
-- (\SRL64|Stage1_sig[26]~236_combout\ & (\SRA64|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[34]~207_combout\,
	datab => \SRL64|Stage1_sig[26]~236_combout\,
	datac => \SRA64|Equal5~0_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SRL64|Stage2_sig[22]~85_combout\);

-- Location: LCCOMB_X72_Y43_N16
\SRL64|Stage2_sig[22]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[22]~86_combout\ = (\SRL64|Stage2_sig[22]~84_combout\) # (\SRL64|Stage2_sig[22]~85_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage2_sig[22]~84_combout\,
	datad => \SRL64|Stage2_sig[22]~85_combout\,
	combout => \SRL64|Stage2_sig[22]~86_combout\);

-- Location: LCCOMB_X74_Y43_N24
\Y_sig~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~86_combout\ = (\Y_sig~48_combout\ & ((\SRA64|Stage2_sig[54]~42_combout\) # ((\SRL64|Stage3_sig~42_combout\)))) # (!\Y_sig~48_combout\ & (((\SRL64|Stage2_sig[54]~158_combout\ & !\SRL64|Stage3_sig~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Stage2_sig[54]~42_combout\,
	datab => \Y_sig~48_combout\,
	datac => \SRL64|Stage2_sig[54]~158_combout\,
	datad => \SRL64|Stage3_sig~42_combout\,
	combout => \Y_sig~86_combout\);

-- Location: LCCOMB_X74_Y43_N26
\Y_sig~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~87_combout\ = (\SRL64|Stage3_sig~42_combout\ & ((\Y_sig~86_combout\ & ((\SRL64|Stage2_sig[22]~86_combout\))) # (!\Y_sig~86_combout\ & (\SRL64|Stage2_sig[38]~83_combout\)))) # (!\SRL64|Stage3_sig~42_combout\ & (((\Y_sig~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[38]~83_combout\,
	datab => \SRL64|Stage3_sig~42_combout\,
	datac => \SRL64|Stage2_sig[22]~86_combout\,
	datad => \Y_sig~86_combout\,
	combout => \Y_sig~87_combout\);

-- Location: LCCOMB_X74_Y43_N20
\Y_sig~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~88_combout\ = (\Y_sig~71_combout\ & ((\Y_sig~85_combout\ & ((\Y_sig~87_combout\))) # (!\Y_sig~85_combout\ & (\SRL64|Stage2_sig[48]~80_combout\)))) # (!\Y_sig~71_combout\ & (((\Y_sig~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~71_combout\,
	datab => \SRL64|Stage2_sig[48]~80_combout\,
	datac => \Y_sig~85_combout\,
	datad => \Y_sig~87_combout\,
	combout => \Y_sig~88_combout\);

-- Location: LCCOMB_X75_Y44_N6
\Y_sig~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~90_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_sig~88_combout\))) # (!\ShiftFN[1]~input_o\ & (\Y_sig~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y_sig~89_combout\,
	datac => \Y_sig~88_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_sig~90_combout\);

-- Location: LCCOMB_X74_Y39_N0
\SRL64|Stage2_sig[48]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~91_combout\ = (\B[3]~input_o\ & ((\SRL64|Stage1_sig[19]~263_combout\))) # (!\B[3]~input_o\ & (\SRL64|Stage1_sig[11]~240_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64|Stage1_sig[11]~240_combout\,
	datac => \SRL64|Stage1_sig[19]~263_combout\,
	combout => \SRL64|Stage2_sig[48]~91_combout\);

-- Location: LCCOMB_X76_Y42_N10
\Y_sig~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~91_combout\ = (\Y_sig~71_combout\ & (((\Y_sig~72_combout\) # (\SRL64|Stage2_sig[48]~91_combout\)))) # (!\Y_sig~71_combout\ & (\SRL64|Stage2_sig[48]~57_combout\ & (!\Y_sig~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~71_combout\,
	datab => \SRL64|Stage2_sig[48]~57_combout\,
	datac => \Y_sig~72_combout\,
	datad => \SRL64|Stage2_sig[48]~91_combout\,
	combout => \Y_sig~91_combout\);

-- Location: LCCOMB_X69_Y42_N0
\SRL64|Stage2_sig[59]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[59]~159_combout\ = (!\B[0]~input_o\ & (!\B[1]~input_o\ & \X_sig[63]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \X_sig[63]~2_combout\,
	combout => \SRL64|Stage2_sig[59]~159_combout\);

-- Location: LCCOMB_X76_Y42_N18
\SRL64|Stage2_sig[55]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[55]~87_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRL64|Stage1_sig[59]~246_combout\))) # (!\B[2]~input_o\ & (\SRL64|Stage1_sig[55]~248_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[55]~248_combout\,
	datab => \B[3]~input_o\,
	datac => \SRL64|Stage1_sig[59]~246_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL64|Stage2_sig[55]~87_combout\);

-- Location: LCCOMB_X76_Y42_N20
\SRL64|Stage2_sig[55]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[55]~160_combout\ = (\SRL64|Stage2_sig[55]~87_combout\) # ((\SRL64|Stage2_sig[59]~159_combout\ & (!\B[2]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[59]~159_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRL64|Stage2_sig[55]~87_combout\,
	combout => \SRL64|Stage2_sig[55]~160_combout\);

-- Location: LCCOMB_X73_Y42_N14
\SRL64|Stage2_sig[39]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[39]~88_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SRL64|Stage1_sig[39]~251_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SRL64|Stage1_sig[47]~252_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- (\SRL64|Stage2_sig[48]~28_combout\ & (\SRL64|Stage1_sig[47]~252_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SRL64|Stage1_sig[47]~252_combout\,
	datad => \SRL64|Stage1_sig[39]~251_combout\,
	combout => \SRL64|Stage2_sig[39]~88_combout\);

-- Location: LCCOMB_X73_Y42_N0
\SRL64|Stage2_sig[39]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[39]~89_combout\ = (\SRL64|Stage1_sig[51]~247_combout\ & ((\SRL64|Stage2_sig[44]~32_combout\) # ((\SRA64|Equal5~0_combout\ & \SRL64|Stage1_sig[43]~250_combout\)))) # (!\SRL64|Stage1_sig[51]~247_combout\ & (((\SRA64|Equal5~0_combout\ & 
-- \SRL64|Stage1_sig[43]~250_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[51]~247_combout\,
	datab => \SRL64|Stage2_sig[44]~32_combout\,
	datac => \SRA64|Equal5~0_combout\,
	datad => \SRL64|Stage1_sig[43]~250_combout\,
	combout => \SRL64|Stage2_sig[39]~89_combout\);

-- Location: LCCOMB_X76_Y42_N4
\SRL64|Stage2_sig[39]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[39]~90_combout\ = (\SRL64|Stage2_sig[39]~88_combout\) # (\SRL64|Stage2_sig[39]~89_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage2_sig[39]~88_combout\,
	datac => \SRL64|Stage2_sig[39]~89_combout\,
	combout => \SRL64|Stage2_sig[39]~90_combout\);

-- Location: LCCOMB_X76_Y42_N28
\Y_sig~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~92_combout\ = (\SRL64|Stage3_sig~42_combout\ & (((\SRL64|Stage2_sig[39]~90_combout\) # (\Y_sig~48_combout\)))) # (!\SRL64|Stage3_sig~42_combout\ & (\SRL64|Stage2_sig[55]~160_combout\ & ((!\Y_sig~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage3_sig~42_combout\,
	datab => \SRL64|Stage2_sig[55]~160_combout\,
	datac => \SRL64|Stage2_sig[39]~90_combout\,
	datad => \Y_sig~48_combout\,
	combout => \Y_sig~92_combout\);

-- Location: LCCOMB_X73_Y42_N20
\SRL64|Stage2_sig[23]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[23]~93_combout\ = (\SRA64|Equal5~0_combout\ & ((\SRL64|Stage1_sig[27]~260_combout\) # ((\SRL64|Stage1_sig[35]~249_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))) # (!\SRA64|Equal5~0_combout\ & (((\SRL64|Stage1_sig[35]~249_combout\ & 
-- \SRL64|Stage2_sig[44]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \SRL64|Stage1_sig[27]~260_combout\,
	datac => \SRL64|Stage1_sig[35]~249_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SRL64|Stage2_sig[23]~93_combout\);

-- Location: LCCOMB_X73_Y42_N10
\SRL64|Stage2_sig[23]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[23]~92_combout\ = (\SRL64|Stage1_sig[31]~253_combout\ & ((\SRL64|Stage2_sig[48]~28_combout\) # ((\SRL64|Stage1_sig[23]~256_combout\ & \SRL64|Stage2_sig[48]~29_combout\)))) # (!\SRL64|Stage1_sig[31]~253_combout\ & 
-- (\SRL64|Stage1_sig[23]~256_combout\ & ((\SRL64|Stage2_sig[48]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[31]~253_combout\,
	datab => \SRL64|Stage1_sig[23]~256_combout\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \SRL64|Stage2_sig[23]~92_combout\);

-- Location: LCCOMB_X76_Y42_N30
\SRL64|Stage2_sig[23]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[23]~94_combout\ = (\SRL64|Stage2_sig[23]~93_combout\) # (\SRL64|Stage2_sig[23]~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage2_sig[23]~93_combout\,
	datad => \SRL64|Stage2_sig[23]~92_combout\,
	combout => \SRL64|Stage2_sig[23]~94_combout\);

-- Location: LCCOMB_X76_Y42_N2
\SRA64|Stage2_sig[55]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[55]~46_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRL64|Stage1_sig[59]~246_combout\))) # (!\B[2]~input_o\ & (\SRL64|Stage1_sig[55]~248_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[55]~248_combout\,
	datab => \B[3]~input_o\,
	datac => \SRL64|Stage1_sig[59]~246_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64|Stage2_sig[55]~46_combout\);

-- Location: LCCOMB_X76_Y42_N0
\SRA64|Stage2_sig[55]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[55]~43_combout\ = (\SRA64|Stage2_sig[55]~46_combout\) # ((\X_sig[63]~2_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X_sig[63]~2_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA64|Stage2_sig[55]~46_combout\,
	combout => \SRA64|Stage2_sig[55]~43_combout\);

-- Location: LCCOMB_X76_Y42_N24
\Y_sig~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~93_combout\ = (\Y_sig~48_combout\ & ((\Y_sig~92_combout\ & (\SRL64|Stage2_sig[23]~94_combout\)) # (!\Y_sig~92_combout\ & ((\SRA64|Stage2_sig[55]~43_combout\))))) # (!\Y_sig~48_combout\ & (\Y_sig~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~48_combout\,
	datab => \Y_sig~92_combout\,
	datac => \SRL64|Stage2_sig[23]~94_combout\,
	datad => \SRA64|Stage2_sig[55]~43_combout\,
	combout => \Y_sig~93_combout\);

-- Location: LCCOMB_X76_Y42_N14
\SRA_SRL_sig[39]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[39]~17_combout\ = (\SRA_SRL_sig[41]~4_combout\ & (((\SRA_SRL_sig[41]~3_combout\ & \SRL64|Stage2_sig[55]~160_combout\)))) # (!\SRA_SRL_sig[41]~4_combout\ & ((\SRL64|Stage2_sig[39]~90_combout\) # ((!\SRA_SRL_sig[41]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[41]~4_combout\,
	datab => \SRL64|Stage2_sig[39]~90_combout\,
	datac => \SRA_SRL_sig[41]~3_combout\,
	datad => \SRL64|Stage2_sig[55]~160_combout\,
	combout => \SRA_SRL_sig[39]~17_combout\);

-- Location: LCCOMB_X76_Y42_N8
\SRA_SRL_sig[39]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[39]~18_combout\ = (\SRA_SRL_sig[41]~2_combout\ & ((\SRA_SRL_sig[39]~17_combout\ & ((\SRA64|Stage2_sig[55]~43_combout\))) # (!\SRA_SRL_sig[39]~17_combout\ & (\X_sig[63]~2_combout\)))) # (!\SRA_SRL_sig[41]~2_combout\ & 
-- (\SRA_SRL_sig[39]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[41]~2_combout\,
	datab => \SRA_SRL_sig[39]~17_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \SRA64|Stage2_sig[55]~43_combout\,
	combout => \SRA_SRL_sig[39]~18_combout\);

-- Location: LCCOMB_X76_Y42_N26
\Y_sig~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~94_combout\ = (\Y_sig~91_combout\ & ((\Y_sig~93_combout\) # ((!\Y_sig~72_combout\)))) # (!\Y_sig~91_combout\ & (((\Y_sig~72_combout\ & \SRA_SRL_sig[39]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~91_combout\,
	datab => \Y_sig~93_combout\,
	datac => \Y_sig~72_combout\,
	datad => \SRA_SRL_sig[39]~18_combout\,
	combout => \Y_sig~94_combout\);

-- Location: LCCOMB_X73_Y36_N26
\SLL64|Stage1_sig[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[7]~40_combout\ = (\B[0]~input_o\ & (((\SLL64|Stage1_sig[7]~38_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~204_combout\) # ((\SRL64|Stage1_sig[48]~194_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~204_combout\,
	datab => \SRL64|Stage1_sig[48]~194_combout\,
	datac => \B[0]~input_o\,
	datad => \SLL64|Stage1_sig[7]~38_combout\,
	combout => \SLL64|Stage1_sig[7]~40_combout\);

-- Location: LCCOMB_X74_Y38_N26
\SLL64|Stage2_sig[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[7]~19_combout\ = (\SRA64|Equal5~0_combout\ & ((\SLL64|Stage1_sig[3]~33_combout\) # ((\SRL64|Stage2_sig[48]~29_combout\ & \SLL64|Stage1_sig[7]~40_combout\)))) # (!\SRA64|Equal5~0_combout\ & (\SRL64|Stage2_sig[48]~29_combout\ & 
-- (\SLL64|Stage1_sig[7]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \SRL64|Stage2_sig[48]~29_combout\,
	datac => \SLL64|Stage1_sig[7]~40_combout\,
	datad => \SLL64|Stage1_sig[3]~33_combout\,
	combout => \SLL64|Stage2_sig[7]~19_combout\);

-- Location: IOIBUF_X115_Y44_N8
\C[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(7),
	o => \C[7]~input_o\);

-- Location: LCCOMB_X80_Y42_N24
\Y_sig~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~95_combout\ = (\SLL64|Stage2_sig[7]~19_combout\ & ((\SgnExtLower_sig[31]~0_combout\) # ((!\ShiftFN[0]~input_o\ & \C[7]~input_o\)))) # (!\SLL64|Stage2_sig[7]~19_combout\ & (((!\ShiftFN[0]~input_o\ & \C[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[7]~19_combout\,
	datab => \SgnExtLower_sig[31]~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \C[7]~input_o\,
	combout => \Y_sig~95_combout\);

-- Location: LCCOMB_X80_Y42_N18
\Y_sig~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~96_combout\ = (\ShiftFN[1]~input_o\ & (\Y_sig~94_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Y_sig~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~94_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_sig~95_combout\,
	combout => \Y_sig~96_combout\);

-- Location: LCCOMB_X73_Y36_N4
\SLL64|Stage1_sig[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[9]~41_combout\ = (\SRL64|Stage1_sig[48]~72_combout\) # (\SRL64|Stage1_sig[48]~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~72_combout\,
	datad => \SRL64|Stage1_sig[48]~79_combout\,
	combout => \SLL64|Stage1_sig[9]~41_combout\);

-- Location: LCCOMB_X73_Y36_N30
\SLL64|Stage1_sig[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[8]~42_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~204_combout\) # ((\SRL64|Stage1_sig[48]~194_combout\)))) # (!\B[0]~input_o\ & (((\SLL64|Stage1_sig[9]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~204_combout\,
	datab => \SRL64|Stage1_sig[48]~194_combout\,
	datac => \SLL64|Stage1_sig[9]~41_combout\,
	datad => \B[0]~input_o\,
	combout => \SLL64|Stage1_sig[8]~42_combout\);

-- Location: LCCOMB_X75_Y38_N26
\SLL64|Stage2_sig[8]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[8]~20_combout\ = (\SLL64|Stage2_sig[4]~15_combout\ & ((\SRL64|Stage2_sig[48]~28_combout\) # ((\SRL64|Stage2_sig[48]~29_combout\ & \SLL64|Stage1_sig[8]~42_combout\)))) # (!\SLL64|Stage2_sig[4]~15_combout\ & 
-- (((\SRL64|Stage2_sig[48]~29_combout\ & \SLL64|Stage1_sig[8]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[4]~15_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SRL64|Stage2_sig[48]~29_combout\,
	datad => \SLL64|Stage1_sig[8]~42_combout\,
	combout => \SLL64|Stage2_sig[8]~20_combout\);

-- Location: LCCOMB_X75_Y38_N28
\SLL64|Stage2_sig[8]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[8]~106_combout\ = (\SLL64|Stage2_sig[8]~20_combout\) # ((\SLL64|Stage1_sig[4]~111_combout\ & (!\B[3]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[8]~20_combout\,
	datab => \SLL64|Stage1_sig[4]~111_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLL64|Stage2_sig[8]~106_combout\);

-- Location: IOIBUF_X115_Y21_N15
\C[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(8),
	o => \C[8]~input_o\);

-- Location: LCCOMB_X80_Y41_N10
\Y_sig~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~101_combout\ = (\SgnExtLower_sig[31]~0_combout\ & ((\SLL64|Stage2_sig[8]~106_combout\) # ((!\ShiftFN[0]~input_o\ & \C[8]~input_o\)))) # (!\SgnExtLower_sig[31]~0_combout\ & (!\ShiftFN[0]~input_o\ & ((\C[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtLower_sig[31]~0_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SLL64|Stage2_sig[8]~106_combout\,
	datad => \C[8]~input_o\,
	combout => \Y_sig~101_combout\);

-- Location: LCCOMB_X73_Y38_N22
\SRL64|Stage2_sig[48]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~95_combout\ = (\B[3]~input_o\ & (\SRL64|Stage1_sig[20]~266_combout\)) # (!\B[3]~input_o\ & ((\SRL64|Stage1_sig[12]~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[20]~266_combout\,
	datab => \B[3]~input_o\,
	datad => \SRL64|Stage1_sig[12]~275_combout\,
	combout => \SRL64|Stage2_sig[48]~95_combout\);

-- Location: LCCOMB_X77_Y40_N10
\SRA64|Stage2_sig[56]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[56]~47_combout\ = (\B[3]~input_o\ & (((\X_sig[63]~2_combout\)))) # (!\B[3]~input_o\ & (\SRL64|Stage1_sig[56]~276_combout\ & (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64|Stage1_sig[56]~276_combout\,
	datac => \B[2]~input_o\,
	datad => \X_sig[63]~2_combout\,
	combout => \SRA64|Stage2_sig[56]~47_combout\);

-- Location: LCCOMB_X77_Y40_N4
\SRA64|Stage2_sig[56]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[56]~48_combout\ = (\SRA64|Stage2_sig[56]~47_combout\) # ((!\B[3]~input_o\ & (\SRL64|Stage1_sig[60]~109_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64|Stage1_sig[60]~109_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA64|Stage2_sig[56]~47_combout\,
	combout => \SRA64|Stage2_sig[56]~48_combout\);

-- Location: LCCOMB_X77_Y40_N12
\SRL64|Stage2_sig[56]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[56]~96_combout\ = (\SRA64|Equal5~0_combout\ & ((\SRL64|Stage1_sig[60]~109_combout\) # ((\SRL64|Stage1_sig[56]~276_combout\ & \SRL64|Stage2_sig[48]~29_combout\)))) # (!\SRA64|Equal5~0_combout\ & (((\SRL64|Stage1_sig[56]~276_combout\ & 
-- \SRL64|Stage2_sig[48]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \SRL64|Stage1_sig[60]~109_combout\,
	datac => \SRL64|Stage1_sig[56]~276_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \SRL64|Stage2_sig[56]~96_combout\);

-- Location: LCCOMB_X77_Y40_N18
\Y_sig~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~98_combout\ = (\SRL64|Stage3_sig~42_combout\ & (\Y_sig~48_combout\)) # (!\SRL64|Stage3_sig~42_combout\ & ((\Y_sig~48_combout\ & (\SRA64|Stage2_sig[56]~48_combout\)) # (!\Y_sig~48_combout\ & ((\SRL64|Stage2_sig[56]~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage3_sig~42_combout\,
	datab => \Y_sig~48_combout\,
	datac => \SRA64|Stage2_sig[56]~48_combout\,
	datad => \SRL64|Stage2_sig[56]~96_combout\,
	combout => \Y_sig~98_combout\);

-- Location: LCCOMB_X73_Y40_N26
\SRL64|Stage2_sig[40]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[40]~97_combout\ = (\SRL64|Stage1_sig[40]~290_combout\ & ((\SRL64|Stage2_sig[48]~29_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SRL64|Stage1_sig[48]~93_combout\)))) # (!\SRL64|Stage1_sig[40]~290_combout\ & 
-- (\SRL64|Stage2_sig[48]~28_combout\ & (\SRL64|Stage1_sig[48]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[40]~290_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SRL64|Stage1_sig[48]~93_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \SRL64|Stage2_sig[40]~97_combout\);

-- Location: LCCOMB_X73_Y40_N28
\SRL64|Stage2_sig[40]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[40]~98_combout\ = (\SRL64|Stage2_sig[44]~32_combout\ & ((\SRL64|Stage1_sig[52]~289_combout\) # ((\SRA64|Equal5~0_combout\ & \SRL64|Stage1_sig[44]~277_combout\)))) # (!\SRL64|Stage2_sig[44]~32_combout\ & (\SRA64|Equal5~0_combout\ & 
-- ((\SRL64|Stage1_sig[44]~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[44]~32_combout\,
	datab => \SRA64|Equal5~0_combout\,
	datac => \SRL64|Stage1_sig[52]~289_combout\,
	datad => \SRL64|Stage1_sig[44]~277_combout\,
	combout => \SRL64|Stage2_sig[40]~98_combout\);

-- Location: LCCOMB_X73_Y40_N22
\SRL64|Stage2_sig[40]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[40]~99_combout\ = (\SRL64|Stage2_sig[40]~97_combout\) # (\SRL64|Stage2_sig[40]~98_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage2_sig[40]~97_combout\,
	datad => \SRL64|Stage2_sig[40]~98_combout\,
	combout => \SRL64|Stage2_sig[40]~99_combout\);

-- Location: LCCOMB_X73_Y38_N16
\SRL64|Stage2_sig[24]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[24]~100_combout\ = (\SRL64|Stage1_sig[32]~133_combout\ & ((\SRL64|Stage2_sig[48]~28_combout\) # ((\SRL64|Stage2_sig[48]~29_combout\ & \SRL64|Stage1_sig[24]~268_combout\)))) # (!\SRL64|Stage1_sig[32]~133_combout\ & 
-- (((\SRL64|Stage2_sig[48]~29_combout\ & \SRL64|Stage1_sig[24]~268_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[32]~133_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SRL64|Stage2_sig[48]~29_combout\,
	datad => \SRL64|Stage1_sig[24]~268_combout\,
	combout => \SRL64|Stage2_sig[24]~100_combout\);

-- Location: LCCOMB_X72_Y38_N28
\SRL64|Stage2_sig[24]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[24]~101_combout\ = (\SRL64|Stage2_sig[44]~32_combout\ & ((\B[0]~input_o\ & (\SRL64|Stage1_sig[37]~124_combout\)) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[36]~127_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[37]~124_combout\,
	datac => \SRL64|Stage1_sig[36]~127_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SRL64|Stage2_sig[24]~101_combout\);

-- Location: LCCOMB_X73_Y38_N2
\SRL64|Stage2_sig[24]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[24]~102_combout\ = (\SRL64|Stage2_sig[24]~100_combout\) # ((\SRL64|Stage2_sig[24]~101_combout\) # ((\SRA64|Equal5~0_combout\ & \SRL64|Stage1_sig[28]~267_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[24]~100_combout\,
	datab => \SRL64|Stage2_sig[24]~101_combout\,
	datac => \SRA64|Equal5~0_combout\,
	datad => \SRL64|Stage1_sig[28]~267_combout\,
	combout => \SRL64|Stage2_sig[24]~102_combout\);

-- Location: LCCOMB_X74_Y40_N16
\Y_sig~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~99_combout\ = (\Y_sig~98_combout\ & (((\SRL64|Stage2_sig[24]~102_combout\) # (!\SRL64|Stage3_sig~42_combout\)))) # (!\Y_sig~98_combout\ & (\SRL64|Stage2_sig[40]~99_combout\ & (\SRL64|Stage3_sig~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~98_combout\,
	datab => \SRL64|Stage2_sig[40]~99_combout\,
	datac => \SRL64|Stage3_sig~42_combout\,
	datad => \SRL64|Stage2_sig[24]~102_combout\,
	combout => \Y_sig~99_combout\);

-- Location: LCCOMB_X77_Y40_N6
\SRA_SRL_sig[40]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[40]~19_combout\ = (\SRA_SRL_sig[41]~4_combout\ & (((\SRA_SRL_sig[41]~3_combout\ & \SRL64|Stage2_sig[56]~96_combout\)))) # (!\SRA_SRL_sig[41]~4_combout\ & ((\SRL64|Stage2_sig[40]~99_combout\) # ((!\SRA_SRL_sig[41]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[41]~4_combout\,
	datab => \SRL64|Stage2_sig[40]~99_combout\,
	datac => \SRA_SRL_sig[41]~3_combout\,
	datad => \SRL64|Stage2_sig[56]~96_combout\,
	combout => \SRA_SRL_sig[40]~19_combout\);

-- Location: LCCOMB_X77_Y40_N24
\SRA_SRL_sig[40]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[40]~20_combout\ = (\SRA_SRL_sig[40]~19_combout\ & (((\SRA64|Stage2_sig[56]~48_combout\) # (!\SRA_SRL_sig[41]~2_combout\)))) # (!\SRA_SRL_sig[40]~19_combout\ & (\X_sig[63]~2_combout\ & ((\SRA_SRL_sig[41]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[40]~19_combout\,
	datab => \X_sig[63]~2_combout\,
	datac => \SRA64|Stage2_sig[56]~48_combout\,
	datad => \SRA_SRL_sig[41]~2_combout\,
	combout => \SRA_SRL_sig[40]~20_combout\);

-- Location: LCCOMB_X74_Y41_N8
\Y_sig~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~97_combout\ = (\Y_sig~71_combout\ & (\Y_sig~72_combout\)) # (!\Y_sig~71_combout\ & ((\Y_sig~72_combout\ & (\SRA_SRL_sig[40]~20_combout\)) # (!\Y_sig~72_combout\ & ((\SRL64|Stage2_sig[48]~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~71_combout\,
	datab => \Y_sig~72_combout\,
	datac => \SRA_SRL_sig[40]~20_combout\,
	datad => \SRL64|Stage2_sig[48]~65_combout\,
	combout => \Y_sig~97_combout\);

-- Location: LCCOMB_X74_Y40_N18
\Y_sig~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~100_combout\ = (\Y_sig~71_combout\ & ((\Y_sig~97_combout\ & ((\Y_sig~99_combout\))) # (!\Y_sig~97_combout\ & (\SRL64|Stage2_sig[48]~95_combout\)))) # (!\Y_sig~71_combout\ & (((\Y_sig~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~95_combout\,
	datab => \Y_sig~99_combout\,
	datac => \Y_sig~71_combout\,
	datad => \Y_sig~97_combout\,
	combout => \Y_sig~100_combout\);

-- Location: LCCOMB_X80_Y41_N12
\Y_sig~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~102_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_sig~100_combout\))) # (!\ShiftFN[1]~input_o\ & (\Y_sig~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~101_combout\,
	datab => \Y_sig~100_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_sig~102_combout\);

-- Location: LCCOMB_X73_Y37_N8
\SLL64|Stage1_sig[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[9]~43_combout\ = (\B[0]~input_o\ & (\SLL64|Stage1_sig[9]~41_combout\)) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~69_combout\) # (\SRL64|Stage1_sig[48]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[9]~41_combout\,
	datab => \SRL64|Stage1_sig[48]~69_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~77_combout\,
	combout => \SLL64|Stage1_sig[9]~43_combout\);

-- Location: LCCOMB_X76_Y37_N18
\SLL64|Stage2_sig[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[9]~21_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SLL64|Stage1_sig[9]~43_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SLL64|Stage1_sig[1]~30_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- (\SRL64|Stage2_sig[48]~28_combout\ & (\SLL64|Stage1_sig[1]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SLL64|Stage1_sig[1]~30_combout\,
	datad => \SLL64|Stage1_sig[9]~43_combout\,
	combout => \SLL64|Stage2_sig[9]~21_combout\);

-- Location: LCCOMB_X76_Y37_N30
\SLL64|Stage2_sig[9]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[9]~107_combout\ = (\SLL64|Stage2_sig[9]~21_combout\) # ((!\B[3]~input_o\ & (\SLL64|Stage1_sig[5]~36_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL64|Stage1_sig[5]~36_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64|Stage2_sig[9]~21_combout\,
	combout => \SLL64|Stage2_sig[9]~107_combout\);

-- Location: IOIBUF_X96_Y73_N15
\C[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(9),
	o => \C[9]~input_o\);

-- Location: LCCOMB_X80_Y41_N4
\Y_sig~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~107_combout\ = (\SgnExtLower_sig[31]~0_combout\ & ((\SLL64|Stage2_sig[9]~107_combout\) # ((\C[9]~input_o\ & !\ShiftFN[0]~input_o\)))) # (!\SgnExtLower_sig[31]~0_combout\ & (((\C[9]~input_o\ & !\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtLower_sig[31]~0_combout\,
	datab => \SLL64|Stage2_sig[9]~107_combout\,
	datac => \C[9]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_sig~107_combout\);

-- Location: LCCOMB_X72_Y41_N30
\SRL64|Stage2_sig[41]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[41]~104_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SRL64|Stage1_sig[41]~281_combout\) # ((\SRL64|Stage1_sig[49]~148_combout\ & \SRL64|Stage2_sig[48]~28_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- (\SRL64|Stage1_sig[49]~148_combout\ & (\SRL64|Stage2_sig[48]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRL64|Stage1_sig[49]~148_combout\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SRL64|Stage1_sig[41]~281_combout\,
	combout => \SRL64|Stage2_sig[41]~104_combout\);

-- Location: LCCOMB_X72_Y41_N24
\SRL64|Stage2_sig[41]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[41]~105_combout\ = (\SRL64|Stage2_sig[44]~32_combout\ & ((\SRL64|Stage1_sig[53]~269_combout\) # ((\SRA64|Equal5~0_combout\ & \SRL64|Stage1_sig[45]~283_combout\)))) # (!\SRL64|Stage2_sig[44]~32_combout\ & (\SRA64|Equal5~0_combout\ & 
-- (\SRL64|Stage1_sig[45]~283_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[44]~32_combout\,
	datab => \SRA64|Equal5~0_combout\,
	datac => \SRL64|Stage1_sig[45]~283_combout\,
	datad => \SRL64|Stage1_sig[53]~269_combout\,
	combout => \SRL64|Stage2_sig[41]~105_combout\);

-- Location: LCCOMB_X72_Y41_N26
\SRL64|Stage2_sig[41]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[41]~106_combout\ = (\SRL64|Stage2_sig[41]~104_combout\) # (\SRL64|Stage2_sig[41]~105_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage2_sig[41]~104_combout\,
	datad => \SRL64|Stage2_sig[41]~105_combout\,
	combout => \SRL64|Stage2_sig[41]~106_combout\);

-- Location: LCCOMB_X76_Y41_N2
\SRL64|Stage2_sig[57]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[57]~103_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SRL64|Stage1_sig[57]~151_combout\) # ((\SRL64|Stage1_sig[61]~169_combout\ & \SRA64|Equal5~0_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- (((\SRL64|Stage1_sig[61]~169_combout\ & \SRA64|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRL64|Stage1_sig[57]~151_combout\,
	datac => \SRL64|Stage1_sig[61]~169_combout\,
	datad => \SRA64|Equal5~0_combout\,
	combout => \SRL64|Stage2_sig[57]~103_combout\);

-- Location: LCCOMB_X77_Y41_N18
\SRA_SRL_sig[41]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[41]~21_combout\ = (\SRA_SRL_sig[41]~3_combout\ & ((\SRA_SRL_sig[41]~4_combout\ & ((\SRL64|Stage2_sig[57]~103_combout\))) # (!\SRA_SRL_sig[41]~4_combout\ & (\SRL64|Stage2_sig[41]~106_combout\)))) # (!\SRA_SRL_sig[41]~3_combout\ & 
-- (((!\SRA_SRL_sig[41]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[41]~3_combout\,
	datab => \SRL64|Stage2_sig[41]~106_combout\,
	datac => \SRA_SRL_sig[41]~4_combout\,
	datad => \SRL64|Stage2_sig[57]~103_combout\,
	combout => \SRA_SRL_sig[41]~21_combout\);

-- Location: LCCOMB_X76_Y41_N18
\SRA64|Stage2_sig[57]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[57]~49_combout\ = (\B[3]~input_o\ & (((\X_sig[63]~2_combout\)))) # (!\B[3]~input_o\ & (\SRA64|Stage1_sig[61]~3_combout\ & ((\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64|Stage1_sig[61]~3_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64|Stage2_sig[57]~49_combout\);

-- Location: LCCOMB_X76_Y41_N20
\SRA64|Stage2_sig[57]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[57]~50_combout\ = (\SRA64|Stage2_sig[57]~49_combout\) # ((!\B[3]~input_o\ & (\SRL64|Stage1_sig[57]~151_combout\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64|Stage2_sig[57]~49_combout\,
	datac => \SRL64|Stage1_sig[57]~151_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64|Stage2_sig[57]~50_combout\);

-- Location: LCCOMB_X80_Y41_N30
\SRA_SRL_sig[41]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[41]~22_combout\ = (\SRA_SRL_sig[41]~21_combout\ & (((\SRA64|Stage2_sig[57]~50_combout\)) # (!\SRA_SRL_sig[41]~2_combout\))) # (!\SRA_SRL_sig[41]~21_combout\ & (\SRA_SRL_sig[41]~2_combout\ & (\X_sig[63]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[41]~21_combout\,
	datab => \SRA_SRL_sig[41]~2_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \SRA64|Stage2_sig[57]~50_combout\,
	combout => \SRA_SRL_sig[41]~22_combout\);

-- Location: LCCOMB_X74_Y41_N10
\SRL64|Stage2_sig[48]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~107_combout\ = (\B[3]~input_o\ & (\SRL64|Stage1_sig[21]~285_combout\)) # (!\B[3]~input_o\ & ((\SRL64|Stage1_sig[13]~280_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[21]~285_combout\,
	datab => \B[3]~input_o\,
	datac => \SRL64|Stage1_sig[13]~280_combout\,
	combout => \SRL64|Stage2_sig[48]~107_combout\);

-- Location: LCCOMB_X74_Y41_N28
\Y_sig~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~103_combout\ = (\Y_sig~72_combout\ & (((\Y_sig~71_combout\)))) # (!\Y_sig~72_combout\ & ((\Y_sig~71_combout\ & (\SRL64|Stage2_sig[48]~107_combout\)) # (!\Y_sig~71_combout\ & ((\SRL64|Stage2_sig[48]~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~107_combout\,
	datab => \Y_sig~72_combout\,
	datac => \Y_sig~71_combout\,
	datad => \SRL64|Stage2_sig[48]~76_combout\,
	combout => \Y_sig~103_combout\);

-- Location: LCCOMB_X72_Y41_N12
\SRL64|Stage2_sig[25]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[25]~108_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SRL64|Stage1_sig[25]~286_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SRL64|Stage1_sig[33]~158_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- (((\SRL64|Stage2_sig[48]~28_combout\ & \SRL64|Stage1_sig[33]~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRL64|Stage1_sig[25]~286_combout\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SRL64|Stage1_sig[33]~158_combout\,
	combout => \SRL64|Stage2_sig[25]~108_combout\);

-- Location: LCCOMB_X72_Y37_N4
\SRL64|Stage2_sig[25]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[25]~109_combout\ = (\SRA64|Equal5~0_combout\ & ((\B[0]~input_o\ & (\SRL64|Stage1_sig[30]~172_combout\)) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[29]~175_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[30]~172_combout\,
	datab => \SRA64|Equal5~0_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[29]~175_combout\,
	combout => \SRL64|Stage2_sig[25]~109_combout\);

-- Location: LCCOMB_X72_Y41_N14
\SRL64|Stage2_sig[25]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[25]~110_combout\ = (\SRL64|Stage2_sig[25]~108_combout\) # ((\SRL64|Stage2_sig[25]~109_combout\) # ((\SRL64|Stage1_sig[37]~282_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[25]~108_combout\,
	datab => \SRL64|Stage1_sig[37]~282_combout\,
	datac => \SRL64|Stage2_sig[25]~109_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SRL64|Stage2_sig[25]~110_combout\);

-- Location: LCCOMB_X77_Y41_N12
\Y_sig~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~104_combout\ = (\Y_sig~48_combout\ & (((\SRL64|Stage3_sig~42_combout\)))) # (!\Y_sig~48_combout\ & ((\SRL64|Stage3_sig~42_combout\ & (\SRL64|Stage2_sig[41]~106_combout\)) # (!\SRL64|Stage3_sig~42_combout\ & ((\SRL64|Stage2_sig[57]~103_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~48_combout\,
	datab => \SRL64|Stage2_sig[41]~106_combout\,
	datac => \SRL64|Stage3_sig~42_combout\,
	datad => \SRL64|Stage2_sig[57]~103_combout\,
	combout => \Y_sig~104_combout\);

-- Location: LCCOMB_X80_Y41_N0
\Y_sig~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~105_combout\ = (\Y_sig~48_combout\ & ((\Y_sig~104_combout\ & (\SRL64|Stage2_sig[25]~110_combout\)) # (!\Y_sig~104_combout\ & ((\SRA64|Stage2_sig[57]~50_combout\))))) # (!\Y_sig~48_combout\ & (((\Y_sig~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[25]~110_combout\,
	datab => \SRA64|Stage2_sig[57]~50_combout\,
	datac => \Y_sig~48_combout\,
	datad => \Y_sig~104_combout\,
	combout => \Y_sig~105_combout\);

-- Location: LCCOMB_X80_Y41_N18
\Y_sig~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~106_combout\ = (\Y_sig~72_combout\ & ((\Y_sig~103_combout\ & ((\Y_sig~105_combout\))) # (!\Y_sig~103_combout\ & (\SRA_SRL_sig[41]~22_combout\)))) # (!\Y_sig~72_combout\ & (((\Y_sig~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[41]~22_combout\,
	datab => \Y_sig~72_combout\,
	datac => \Y_sig~103_combout\,
	datad => \Y_sig~105_combout\,
	combout => \Y_sig~106_combout\);

-- Location: LCCOMB_X80_Y41_N14
\Y_sig~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~108_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_sig~106_combout\))) # (!\ShiftFN[1]~input_o\ & (\Y_sig~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \Y_sig~107_combout\,
	datad => \Y_sig~106_combout\,
	combout => \Y_sig~108_combout\);

-- Location: LCCOMB_X76_Y43_N20
\SRA64|Stage2_sig[58]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[58]~51_combout\ = (\B[3]~input_o\ & (((\X_sig[63]~2_combout\)))) # (!\B[3]~input_o\ & (\SRA64|Stage1_sig[62]~4_combout\ & ((\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Stage1_sig[62]~4_combout\,
	datab => \X_sig[63]~2_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRA64|Stage2_sig[58]~51_combout\);

-- Location: LCCOMB_X76_Y43_N6
\SRA64|Stage2_sig[58]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[58]~52_combout\ = (\SRA64|Stage2_sig[58]~51_combout\) # ((\SRL64|Stage1_sig[58]~220_combout\ & (!\B[3]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[58]~220_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SRA64|Stage2_sig[58]~51_combout\,
	combout => \SRA64|Stage2_sig[58]~52_combout\);

-- Location: LCCOMB_X73_Y43_N2
\SRL64|Stage2_sig[42]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[42]~113_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SRL64|Stage1_sig[42]~210_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SRL64|Stage1_sig[50]~223_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- (((\SRL64|Stage2_sig[48]~28_combout\ & \SRL64|Stage1_sig[50]~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRL64|Stage1_sig[42]~210_combout\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SRL64|Stage1_sig[50]~223_combout\,
	combout => \SRL64|Stage2_sig[42]~113_combout\);

-- Location: LCCOMB_X74_Y43_N6
\SRL64|Stage2_sig[42]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[42]~114_combout\ = (\SRL64|Stage1_sig[46]~216_combout\ & ((\SRA64|Equal5~0_combout\) # ((\SRL64|Stage1_sig[54]~226_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))) # (!\SRL64|Stage1_sig[46]~216_combout\ & 
-- (((\SRL64|Stage1_sig[54]~226_combout\ & \SRL64|Stage2_sig[44]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[46]~216_combout\,
	datab => \SRA64|Equal5~0_combout\,
	datac => \SRL64|Stage1_sig[54]~226_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SRL64|Stage2_sig[42]~114_combout\);

-- Location: LCCOMB_X74_Y43_N0
\SRL64|Stage2_sig[42]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[42]~115_combout\ = (\SRL64|Stage2_sig[42]~113_combout\) # (\SRL64|Stage2_sig[42]~114_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[42]~113_combout\,
	datad => \SRL64|Stage2_sig[42]~114_combout\,
	combout => \SRL64|Stage2_sig[42]~115_combout\);

-- Location: LCCOMB_X76_Y43_N16
\SRL64|Stage2_sig[58]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[58]~112_combout\ = (\SRA64|Equal5~0_combout\ & ((\SRL64|Stage1_sig[62]~227_combout\) # ((\SRL64|Stage1_sig[58]~220_combout\ & \SRL64|Stage2_sig[48]~29_combout\)))) # (!\SRA64|Equal5~0_combout\ & (((\SRL64|Stage1_sig[58]~220_combout\ & 
-- \SRL64|Stage2_sig[48]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \SRL64|Stage1_sig[62]~227_combout\,
	datac => \SRL64|Stage1_sig[58]~220_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \SRL64|Stage2_sig[58]~112_combout\);

-- Location: LCCOMB_X75_Y43_N26
\SRA_SRL_sig[42]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[42]~23_combout\ = (\SRA_SRL_sig[41]~4_combout\ & (((\SRL64|Stage2_sig[58]~112_combout\ & \SRA_SRL_sig[41]~3_combout\)))) # (!\SRA_SRL_sig[41]~4_combout\ & ((\SRL64|Stage2_sig[42]~115_combout\) # ((!\SRA_SRL_sig[41]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[42]~115_combout\,
	datab => \SRL64|Stage2_sig[58]~112_combout\,
	datac => \SRA_SRL_sig[41]~4_combout\,
	datad => \SRA_SRL_sig[41]~3_combout\,
	combout => \SRA_SRL_sig[42]~23_combout\);

-- Location: LCCOMB_X75_Y43_N28
\SRA_SRL_sig[42]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[42]~24_combout\ = (\SRA_SRL_sig[42]~23_combout\ & ((\SRA64|Stage2_sig[58]~52_combout\) # ((!\SRA_SRL_sig[41]~2_combout\)))) # (!\SRA_SRL_sig[42]~23_combout\ & (((\X_sig[63]~2_combout\ & \SRA_SRL_sig[41]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Stage2_sig[58]~52_combout\,
	datab => \X_sig[63]~2_combout\,
	datac => \SRA_SRL_sig[42]~23_combout\,
	datad => \SRA_SRL_sig[41]~2_combout\,
	combout => \SRA_SRL_sig[42]~24_combout\);

-- Location: LCCOMB_X75_Y43_N6
\Y_sig~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~109_combout\ = (\Y_sig~71_combout\ & (((\Y_sig~72_combout\)))) # (!\Y_sig~71_combout\ & ((\Y_sig~72_combout\ & ((\SRA_SRL_sig[42]~24_combout\))) # (!\Y_sig~72_combout\ & (\SRL64|Stage2_sig[48]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~80_combout\,
	datab => \Y_sig~71_combout\,
	datac => \SRA_SRL_sig[42]~24_combout\,
	datad => \Y_sig~72_combout\,
	combout => \Y_sig~109_combout\);

-- Location: LCCOMB_X75_Y43_N24
\SRL64|Stage2_sig[48]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~111_combout\ = (\B[3]~input_o\ & ((\SRL64|Stage1_sig[22]~287_combout\))) # (!\B[3]~input_o\ & (\SRL64|Stage1_sig[14]~202_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[14]~202_combout\,
	datab => \SRL64|Stage1_sig[22]~287_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL64|Stage2_sig[48]~111_combout\);

-- Location: LCCOMB_X73_Y43_N28
\SRL64|Stage2_sig[26]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[26]~116_combout\ = (\SRL64|Stage1_sig[34]~207_combout\ & ((\SRL64|Stage2_sig[48]~28_combout\) # ((\SRL64|Stage1_sig[26]~236_combout\ & \SRL64|Stage2_sig[48]~29_combout\)))) # (!\SRL64|Stage1_sig[34]~207_combout\ & 
-- (((\SRL64|Stage1_sig[26]~236_combout\ & \SRL64|Stage2_sig[48]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[34]~207_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SRL64|Stage1_sig[26]~236_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \SRL64|Stage2_sig[26]~116_combout\);

-- Location: LCCOMB_X73_Y43_N6
\SRL64|Stage2_sig[26]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[26]~117_combout\ = (\SRL64|Stage1_sig[38]~213_combout\ & ((\SRL64|Stage2_sig[44]~32_combout\) # ((\SRL64|Stage1_sig[30]~230_combout\ & \SRA64|Equal5~0_combout\)))) # (!\SRL64|Stage1_sig[38]~213_combout\ & 
-- (\SRL64|Stage1_sig[30]~230_combout\ & (\SRA64|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[38]~213_combout\,
	datab => \SRL64|Stage1_sig[30]~230_combout\,
	datac => \SRA64|Equal5~0_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SRL64|Stage2_sig[26]~117_combout\);

-- Location: LCCOMB_X75_Y43_N18
\SRL64|Stage2_sig[26]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[26]~118_combout\ = (\SRL64|Stage2_sig[26]~116_combout\) # (\SRL64|Stage2_sig[26]~117_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[26]~116_combout\,
	datac => \SRL64|Stage2_sig[26]~117_combout\,
	combout => \SRL64|Stage2_sig[26]~118_combout\);

-- Location: LCCOMB_X75_Y43_N0
\Y_sig~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~110_combout\ = (\Y_sig~48_combout\ & (((\SRL64|Stage3_sig~42_combout\) # (\SRA64|Stage2_sig[58]~52_combout\)))) # (!\Y_sig~48_combout\ & (\SRL64|Stage2_sig[58]~112_combout\ & (!\SRL64|Stage3_sig~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~48_combout\,
	datab => \SRL64|Stage2_sig[58]~112_combout\,
	datac => \SRL64|Stage3_sig~42_combout\,
	datad => \SRA64|Stage2_sig[58]~52_combout\,
	combout => \Y_sig~110_combout\);

-- Location: LCCOMB_X75_Y43_N4
\Y_sig~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~111_combout\ = (\SRL64|Stage3_sig~42_combout\ & ((\Y_sig~110_combout\ & ((\SRL64|Stage2_sig[26]~118_combout\))) # (!\Y_sig~110_combout\ & (\SRL64|Stage2_sig[42]~115_combout\)))) # (!\SRL64|Stage3_sig~42_combout\ & (((\Y_sig~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[42]~115_combout\,
	datab => \SRL64|Stage2_sig[26]~118_combout\,
	datac => \SRL64|Stage3_sig~42_combout\,
	datad => \Y_sig~110_combout\,
	combout => \Y_sig~111_combout\);

-- Location: LCCOMB_X75_Y43_N22
\Y_sig~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~112_combout\ = (\Y_sig~109_combout\ & (((\Y_sig~111_combout\) # (!\Y_sig~71_combout\)))) # (!\Y_sig~109_combout\ & (\SRL64|Stage2_sig[48]~111_combout\ & ((\Y_sig~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~109_combout\,
	datab => \SRL64|Stage2_sig[48]~111_combout\,
	datac => \Y_sig~111_combout\,
	datad => \Y_sig~71_combout\,
	combout => \Y_sig~112_combout\);

-- Location: LCCOMB_X73_Y37_N10
\SLL64|Stage1_sig[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[11]~44_combout\ = (\SRL64|Stage1_sig[48]~140_combout\) # (\SRL64|Stage1_sig[48]~135_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~140_combout\,
	datad => \SRL64|Stage1_sig[48]~135_combout\,
	combout => \SLL64|Stage1_sig[11]~44_combout\);

-- Location: LCCOMB_X73_Y37_N28
\SLL64|Stage1_sig[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[10]~45_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~69_combout\) # (\SRL64|Stage1_sig[48]~77_combout\)))) # (!\B[0]~input_o\ & (\SLL64|Stage1_sig[11]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[11]~44_combout\,
	datab => \SRL64|Stage1_sig[48]~69_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~77_combout\,
	combout => \SLL64|Stage1_sig[10]~45_combout\);

-- Location: LCCOMB_X75_Y36_N26
\SLL64|Stage2_sig[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[10]~22_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SLL64|Stage1_sig[10]~45_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SLL64|Stage1_sig[2]~37_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- (\SRL64|Stage2_sig[48]~28_combout\ & ((\SLL64|Stage1_sig[2]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SLL64|Stage1_sig[10]~45_combout\,
	datad => \SLL64|Stage1_sig[2]~37_combout\,
	combout => \SLL64|Stage2_sig[10]~22_combout\);

-- Location: LCCOMB_X75_Y36_N22
\SLL64|Stage2_sig[10]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[10]~108_combout\ = (\SLL64|Stage2_sig[10]~22_combout\) # ((!\B[3]~input_o\ & (\SLL64|Stage1_sig[6]~39_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[10]~22_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL64|Stage1_sig[6]~39_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64|Stage2_sig[10]~108_combout\);

-- Location: IOIBUF_X74_Y73_N22
\C[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(10),
	o => \C[10]~input_o\);

-- Location: LCCOMB_X75_Y44_N8
\Y_sig~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~113_combout\ = (\SgnExtLower_sig[31]~0_combout\ & ((\SLL64|Stage2_sig[10]~108_combout\) # ((!\ShiftFN[0]~input_o\ & \C[10]~input_o\)))) # (!\SgnExtLower_sig[31]~0_combout\ & (((!\ShiftFN[0]~input_o\ & \C[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtLower_sig[31]~0_combout\,
	datab => \SLL64|Stage2_sig[10]~108_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \C[10]~input_o\,
	combout => \Y_sig~113_combout\);

-- Location: LCCOMB_X75_Y44_N18
\Y_sig~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~114_combout\ = (\ShiftFN[1]~input_o\ & (\Y_sig~112_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Y_sig~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y_sig~112_combout\,
	datac => \Y_sig~113_combout\,
	combout => \Y_sig~114_combout\);

-- Location: LCCOMB_X74_Y39_N18
\SRL64|Stage2_sig[48]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~123_combout\ = (\B[3]~input_o\ & (\SRL64|Stage1_sig[23]~256_combout\)) # (!\B[3]~input_o\ & ((\SRL64|Stage1_sig[15]~244_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[23]~256_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL64|Stage1_sig[15]~244_combout\,
	combout => \SRL64|Stage2_sig[48]~123_combout\);

-- Location: LCCOMB_X75_Y42_N6
\Y_sig~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~115_combout\ = (\Y_sig~71_combout\ & (((\Y_sig~72_combout\) # (\SRL64|Stage2_sig[48]~123_combout\)))) # (!\Y_sig~71_combout\ & (\SRL64|Stage2_sig[48]~91_combout\ & (!\Y_sig~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~91_combout\,
	datab => \Y_sig~71_combout\,
	datac => \Y_sig~72_combout\,
	datad => \SRL64|Stage2_sig[48]~123_combout\,
	combout => \Y_sig~115_combout\);

-- Location: LCCOMB_X75_Y42_N24
\SRL64|Stage2_sig[59]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[59]~119_combout\ = (\SRL64|Stage1_sig[59]~246_combout\ & ((\SRL64|Stage2_sig[48]~29_combout\) # ((\SRL64|Stage2_sig[59]~159_combout\ & \SRA64|Equal5~0_combout\)))) # (!\SRL64|Stage1_sig[59]~246_combout\ & 
-- (\SRL64|Stage2_sig[59]~159_combout\ & (\SRA64|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[59]~246_combout\,
	datab => \SRL64|Stage2_sig[59]~159_combout\,
	datac => \SRA64|Equal5~0_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \SRL64|Stage2_sig[59]~119_combout\);

-- Location: LCCOMB_X73_Y42_N24
\SRL64|Stage2_sig[43]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[43]~121_combout\ = (\SRA64|Equal5~0_combout\ & ((\SRL64|Stage1_sig[47]~252_combout\) # ((\SRL64|Stage1_sig[55]~248_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))) # (!\SRA64|Equal5~0_combout\ & (\SRL64|Stage1_sig[55]~248_combout\ & 
-- ((\SRL64|Stage2_sig[44]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \SRL64|Stage1_sig[55]~248_combout\,
	datac => \SRL64|Stage1_sig[47]~252_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SRL64|Stage2_sig[43]~121_combout\);

-- Location: LCCOMB_X73_Y42_N6
\SRL64|Stage2_sig[43]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[43]~120_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SRL64|Stage1_sig[43]~250_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SRL64|Stage1_sig[51]~247_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- (((\SRL64|Stage2_sig[48]~28_combout\ & \SRL64|Stage1_sig[51]~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRL64|Stage1_sig[43]~250_combout\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SRL64|Stage1_sig[51]~247_combout\,
	combout => \SRL64|Stage2_sig[43]~120_combout\);

-- Location: LCCOMB_X73_Y42_N18
\SRL64|Stage2_sig[43]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[43]~122_combout\ = (\SRL64|Stage2_sig[43]~121_combout\) # (\SRL64|Stage2_sig[43]~120_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage2_sig[43]~121_combout\,
	datad => \SRL64|Stage2_sig[43]~120_combout\,
	combout => \SRL64|Stage2_sig[43]~122_combout\);

-- Location: LCCOMB_X75_Y42_N16
\Y_sig~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~116_combout\ = (\SRL64|Stage3_sig~42_combout\ & (((\SRL64|Stage2_sig[43]~122_combout\) # (\Y_sig~48_combout\)))) # (!\SRL64|Stage3_sig~42_combout\ & (\SRL64|Stage2_sig[59]~119_combout\ & ((!\Y_sig~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage3_sig~42_combout\,
	datab => \SRL64|Stage2_sig[59]~119_combout\,
	datac => \SRL64|Stage2_sig[43]~122_combout\,
	datad => \Y_sig~48_combout\,
	combout => \Y_sig~116_combout\);

-- Location: LCCOMB_X73_Y42_N4
\SRL64|Stage2_sig[27]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[27]~125_combout\ = (\SRA64|Equal5~0_combout\ & ((\SRL64|Stage1_sig[31]~253_combout\) # ((\SRL64|Stage2_sig[44]~32_combout\ & \SRL64|Stage1_sig[39]~251_combout\)))) # (!\SRA64|Equal5~0_combout\ & (\SRL64|Stage2_sig[44]~32_combout\ & 
-- ((\SRL64|Stage1_sig[39]~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \SRL64|Stage2_sig[44]~32_combout\,
	datac => \SRL64|Stage1_sig[31]~253_combout\,
	datad => \SRL64|Stage1_sig[39]~251_combout\,
	combout => \SRL64|Stage2_sig[27]~125_combout\);

-- Location: LCCOMB_X75_Y42_N18
\SRL64|Stage2_sig[27]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[27]~124_combout\ = (\SRL64|Stage1_sig[35]~249_combout\ & ((\SRL64|Stage2_sig[48]~28_combout\) # ((\SRL64|Stage2_sig[48]~29_combout\ & \SRL64|Stage1_sig[27]~260_combout\)))) # (!\SRL64|Stage1_sig[35]~249_combout\ & 
-- (\SRL64|Stage2_sig[48]~29_combout\ & ((\SRL64|Stage1_sig[27]~260_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[35]~249_combout\,
	datab => \SRL64|Stage2_sig[48]~29_combout\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SRL64|Stage1_sig[27]~260_combout\,
	combout => \SRL64|Stage2_sig[27]~124_combout\);

-- Location: LCCOMB_X75_Y42_N28
\SRL64|Stage2_sig[27]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[27]~126_combout\ = (\SRL64|Stage2_sig[27]~125_combout\) # (\SRL64|Stage2_sig[27]~124_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage2_sig[27]~125_combout\,
	datad => \SRL64|Stage2_sig[27]~124_combout\,
	combout => \SRL64|Stage2_sig[27]~126_combout\);

-- Location: LCCOMB_X75_Y42_N30
\SRA64|Stage2_sig[59]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[59]~55_combout\ = (\B[2]~input_o\ & (((\X_sig[63]~2_combout\)))) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\X_sig[63]~2_combout\))) # (!\B[3]~input_o\ & (\SRL64|Stage1_sig[59]~246_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[59]~246_combout\,
	datab => \B[2]~input_o\,
	datac => \X_sig[63]~2_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA64|Stage2_sig[59]~55_combout\);

-- Location: LCCOMB_X75_Y42_N22
\Y_sig~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~117_combout\ = (\Y_sig~116_combout\ & ((\SRL64|Stage2_sig[27]~126_combout\) # ((!\Y_sig~48_combout\)))) # (!\Y_sig~116_combout\ & (((\SRA64|Stage2_sig[59]~55_combout\ & \Y_sig~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~116_combout\,
	datab => \SRL64|Stage2_sig[27]~126_combout\,
	datac => \SRA64|Stage2_sig[59]~55_combout\,
	datad => \Y_sig~48_combout\,
	combout => \Y_sig~117_combout\);

-- Location: LCCOMB_X75_Y42_N10
\SRA_SRL_sig[43]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[43]~25_combout\ = (\SRA_SRL_sig[41]~4_combout\ & (\SRL64|Stage2_sig[59]~119_combout\ & ((\SRA_SRL_sig[41]~3_combout\)))) # (!\SRA_SRL_sig[41]~4_combout\ & (((\SRL64|Stage2_sig[43]~122_combout\) # (!\SRA_SRL_sig[41]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[41]~4_combout\,
	datab => \SRL64|Stage2_sig[59]~119_combout\,
	datac => \SRL64|Stage2_sig[43]~122_combout\,
	datad => \SRA_SRL_sig[41]~3_combout\,
	combout => \SRA_SRL_sig[43]~25_combout\);

-- Location: LCCOMB_X75_Y42_N12
\SRA_SRL_sig[43]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[43]~26_combout\ = (\SRA_SRL_sig[41]~2_combout\ & ((\SRA_SRL_sig[43]~25_combout\ & (\SRA64|Stage2_sig[59]~55_combout\)) # (!\SRA_SRL_sig[43]~25_combout\ & ((\X_sig[63]~2_combout\))))) # (!\SRA_SRL_sig[41]~2_combout\ & 
-- (((\SRA_SRL_sig[43]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Stage2_sig[59]~55_combout\,
	datab => \SRA_SRL_sig[41]~2_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \SRA_SRL_sig[43]~25_combout\,
	combout => \SRA_SRL_sig[43]~26_combout\);

-- Location: LCCOMB_X75_Y42_N8
\Y_sig~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~118_combout\ = (\Y_sig~115_combout\ & (((\Y_sig~117_combout\)) # (!\Y_sig~72_combout\))) # (!\Y_sig~115_combout\ & (\Y_sig~72_combout\ & ((\SRA_SRL_sig[43]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~115_combout\,
	datab => \Y_sig~72_combout\,
	datac => \Y_sig~117_combout\,
	datad => \SRA_SRL_sig[43]~26_combout\,
	combout => \Y_sig~118_combout\);

-- Location: IOIBUF_X115_Y18_N1
\C[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(11),
	o => \C[11]~input_o\);

-- Location: LCCOMB_X73_Y37_N14
\SLL64|Stage1_sig[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[11]~46_combout\ = (\B[0]~input_o\ & (((\SLL64|Stage1_sig[11]~44_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~203_combout\) # ((\SRL64|Stage1_sig[48]~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~203_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[48]~198_combout\,
	datad => \SLL64|Stage1_sig[11]~44_combout\,
	combout => \SLL64|Stage1_sig[11]~46_combout\);

-- Location: LCCOMB_X74_Y38_N12
\SLL64|Stage2_sig[11]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[11]~23_combout\ = (\SLL64|Stage1_sig[11]~46_combout\ & ((\SRL64|Stage2_sig[48]~29_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SLL64|Stage1_sig[3]~33_combout\)))) # (!\SLL64|Stage1_sig[11]~46_combout\ & 
-- (((\SRL64|Stage2_sig[48]~28_combout\ & \SLL64|Stage1_sig[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[11]~46_combout\,
	datab => \SRL64|Stage2_sig[48]~29_combout\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SLL64|Stage1_sig[3]~33_combout\,
	combout => \SLL64|Stage2_sig[11]~23_combout\);

-- Location: LCCOMB_X74_Y38_N14
\SLL64|Stage2_sig[11]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[11]~109_combout\ = (\SLL64|Stage2_sig[11]~23_combout\) # ((\B[2]~input_o\ & (!\B[3]~input_o\ & \SLL64|Stage1_sig[7]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SLL64|Stage1_sig[7]~40_combout\,
	datad => \SLL64|Stage2_sig[11]~23_combout\,
	combout => \SLL64|Stage2_sig[11]~109_combout\);

-- Location: LCCOMB_X80_Y42_N20
\Y_sig~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~119_combout\ = (\C[11]~input_o\ & (((\SLL64|Stage2_sig[11]~109_combout\ & \SgnExtLower_sig[31]~0_combout\)) # (!\ShiftFN[0]~input_o\))) # (!\C[11]~input_o\ & (\SLL64|Stage2_sig[11]~109_combout\ & ((\SgnExtLower_sig[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[11]~input_o\,
	datab => \SLL64|Stage2_sig[11]~109_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SgnExtLower_sig[31]~0_combout\,
	combout => \Y_sig~119_combout\);

-- Location: LCCOMB_X80_Y42_N22
\Y_sig~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~120_combout\ = (\ShiftFN[1]~input_o\ & (\Y_sig~118_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Y_sig~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~118_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_sig~119_combout\,
	combout => \Y_sig~120_combout\);

-- Location: IOIBUF_X72_Y73_N8
\C[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(12),
	o => \C[12]~input_o\);

-- Location: LCCOMB_X75_Y38_N20
\SLL64|Stage2_sig[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[12]~24_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\SLL64|Stage2_sig[4]~15_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage1_sig[8]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[4]~15_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL64|Stage1_sig[8]~42_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64|Stage2_sig[12]~24_combout\);

-- Location: LCCOMB_X67_Y39_N2
\SLL64|Stage1_sig[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[13]~47_combout\ = (\SRL64|Stage1_sig[48]~71_combout\) # (\SRL64|Stage1_sig[48]~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage1_sig[48]~71_combout\,
	datad => \SRL64|Stage1_sig[48]~86_combout\,
	combout => \SLL64|Stage1_sig[13]~47_combout\);

-- Location: LCCOMB_X73_Y37_N0
\SLL64|Stage1_sig[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[12]~48_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~203_combout\) # ((\SRL64|Stage1_sig[48]~198_combout\)))) # (!\B[0]~input_o\ & (((\SLL64|Stage1_sig[13]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~203_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[48]~198_combout\,
	datad => \SLL64|Stage1_sig[13]~47_combout\,
	combout => \SLL64|Stage1_sig[12]~48_combout\);

-- Location: LCCOMB_X75_Y39_N16
\SLL64|Stage2_sig[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[12]~25_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SLL64|Stage1_sig[4]~111_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage1_sig[12]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[4]~111_combout\,
	datab => \SLL64|Stage1_sig[12]~48_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SLL64|Stage2_sig[12]~25_combout\);

-- Location: LCCOMB_X75_Y39_N10
\SLL64|Stage2_sig[12]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[12]~26_combout\ = (\SLL64|Stage2_sig[12]~24_combout\) # (\SLL64|Stage2_sig[12]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SLL64|Stage2_sig[12]~24_combout\,
	datad => \SLL64|Stage2_sig[12]~25_combout\,
	combout => \SLL64|Stage2_sig[12]~26_combout\);

-- Location: LCCOMB_X75_Y44_N20
\Y_sig~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~125_combout\ = (\ShiftFN[0]~input_o\ & (((\SgnExtLower_sig[31]~0_combout\ & \SLL64|Stage2_sig[12]~26_combout\)))) # (!\ShiftFN[0]~input_o\ & ((\C[12]~input_o\) # ((\SgnExtLower_sig[31]~0_combout\ & \SLL64|Stage2_sig[12]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \C[12]~input_o\,
	datac => \SgnExtLower_sig[31]~0_combout\,
	datad => \SLL64|Stage2_sig[12]~26_combout\,
	combout => \Y_sig~125_combout\);

-- Location: LCCOMB_X73_Y38_N30
\SRL64|Stage2_sig[28]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[28]~131_combout\ = (\SRL64|Stage1_sig[40]~290_combout\ & ((\SRL64|Stage2_sig[44]~32_combout\) # ((\SRA64|Equal5~0_combout\ & \SRL64|Stage1_sig[32]~133_combout\)))) # (!\SRL64|Stage1_sig[40]~290_combout\ & (((\SRA64|Equal5~0_combout\ & 
-- \SRL64|Stage1_sig[32]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[40]~290_combout\,
	datab => \SRL64|Stage2_sig[44]~32_combout\,
	datac => \SRA64|Equal5~0_combout\,
	datad => \SRL64|Stage1_sig[32]~133_combout\,
	combout => \SRL64|Stage2_sig[28]~131_combout\);

-- Location: LCCOMB_X73_Y38_N8
\SRL64|Stage2_sig[28]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[28]~132_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SRL64|Stage1_sig[28]~267_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SRL64|Stage1_sig[36]~278_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- (((\SRL64|Stage2_sig[48]~28_combout\ & \SRL64|Stage1_sig[36]~278_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRL64|Stage1_sig[28]~267_combout\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SRL64|Stage1_sig[36]~278_combout\,
	combout => \SRL64|Stage2_sig[28]~132_combout\);

-- Location: LCCOMB_X74_Y40_N6
\SRL64|Stage2_sig[28]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[28]~133_combout\ = (\SRL64|Stage2_sig[28]~131_combout\) # (\SRL64|Stage2_sig[28]~132_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[28]~131_combout\,
	datad => \SRL64|Stage2_sig[28]~132_combout\,
	combout => \SRL64|Stage2_sig[28]~133_combout\);

-- Location: LCCOMB_X73_Y40_N30
\SRA64|Stage2_sig[59]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[59]~53_combout\ = (\X_sig[63]~2_combout\ & ((\B[3]~input_o\) # (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \X_sig[63]~2_combout\,
	datac => \B[2]~input_o\,
	combout => \SRA64|Stage2_sig[59]~53_combout\);

-- Location: LCCOMB_X74_Y40_N10
\SRL64|Stage2_sig[60]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[60]~161_combout\ = (!\B[3]~input_o\ & (\SRL64|Stage1_sig[60]~109_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRL64|Stage1_sig[60]~109_combout\,
	datac => \B[2]~input_o\,
	combout => \SRL64|Stage2_sig[60]~161_combout\);

-- Location: LCCOMB_X74_Y40_N20
\Y_sig~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~122_combout\ = (\SRL64|Stage3_sig~42_combout\ & (\Y_sig~48_combout\)) # (!\SRL64|Stage3_sig~42_combout\ & ((\SRL64|Stage2_sig[60]~161_combout\) # ((\Y_sig~48_combout\ & \SRA64|Stage2_sig[59]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~48_combout\,
	datab => \SRA64|Stage2_sig[59]~53_combout\,
	datac => \SRL64|Stage3_sig~42_combout\,
	datad => \SRL64|Stage2_sig[60]~161_combout\,
	combout => \Y_sig~122_combout\);

-- Location: LCCOMB_X70_Y40_N24
\SRL64|Stage2_sig[44]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[44]~128_combout\ = (\SRA64|Equal5~0_combout\ & ((\SRL64|Stage1_sig[48]~93_combout\) # ((\SRL64|Stage2_sig[44]~32_combout\ & \SRL64|Stage1_sig[56]~276_combout\)))) # (!\SRA64|Equal5~0_combout\ & (\SRL64|Stage2_sig[44]~32_combout\ & 
-- (\SRL64|Stage1_sig[56]~276_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \SRL64|Stage2_sig[44]~32_combout\,
	datac => \SRL64|Stage1_sig[56]~276_combout\,
	datad => \SRL64|Stage1_sig[48]~93_combout\,
	combout => \SRL64|Stage2_sig[44]~128_combout\);

-- Location: LCCOMB_X73_Y40_N8
\SRL64|Stage2_sig[44]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[44]~129_combout\ = (\SRL64|Stage1_sig[44]~277_combout\ & ((\SRL64|Stage2_sig[48]~29_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SRL64|Stage1_sig[52]~289_combout\)))) # (!\SRL64|Stage1_sig[44]~277_combout\ & 
-- (\SRL64|Stage2_sig[48]~28_combout\ & (\SRL64|Stage1_sig[52]~289_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[44]~277_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SRL64|Stage1_sig[52]~289_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \SRL64|Stage2_sig[44]~129_combout\);

-- Location: LCCOMB_X74_Y40_N28
\SRL64|Stage2_sig[44]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[44]~130_combout\ = (\SRL64|Stage2_sig[44]~128_combout\) # (\SRL64|Stage2_sig[44]~129_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage2_sig[44]~128_combout\,
	datad => \SRL64|Stage2_sig[44]~129_combout\,
	combout => \SRL64|Stage2_sig[44]~130_combout\);

-- Location: LCCOMB_X74_Y40_N0
\Y_sig~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~123_combout\ = (\Y_sig~122_combout\ & ((\SRL64|Stage2_sig[28]~133_combout\) # ((!\SRL64|Stage3_sig~42_combout\)))) # (!\Y_sig~122_combout\ & (((\SRL64|Stage3_sig~42_combout\ & \SRL64|Stage2_sig[44]~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[28]~133_combout\,
	datab => \Y_sig~122_combout\,
	datac => \SRL64|Stage3_sig~42_combout\,
	datad => \SRL64|Stage2_sig[44]~130_combout\,
	combout => \Y_sig~123_combout\);

-- Location: LCCOMB_X74_Y40_N30
\SRA_SRL_sig[44]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[44]~27_combout\ = (\SRA_SRL_sig[41]~3_combout\ & ((\SRA_SRL_sig[41]~4_combout\ & (\SRL64|Stage2_sig[60]~161_combout\)) # (!\SRA_SRL_sig[41]~4_combout\ & ((\SRL64|Stage2_sig[44]~130_combout\))))) # (!\SRA_SRL_sig[41]~3_combout\ & 
-- (((!\SRA_SRL_sig[41]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[60]~161_combout\,
	datab => \SRA_SRL_sig[41]~3_combout\,
	datac => \SRA_SRL_sig[41]~4_combout\,
	datad => \SRL64|Stage2_sig[44]~130_combout\,
	combout => \SRA_SRL_sig[44]~27_combout\);

-- Location: LCCOMB_X74_Y40_N14
\SRA64|Stage2_sig[60]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[60]~56_combout\ = (\B[2]~input_o\ & (\X_sig[63]~2_combout\)) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\X_sig[63]~2_combout\)) # (!\B[3]~input_o\ & ((\SRL64|Stage1_sig[60]~109_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_sig[63]~2_combout\,
	datab => \SRL64|Stage1_sig[60]~109_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRA64|Stage2_sig[60]~56_combout\);

-- Location: LCCOMB_X74_Y40_N24
\SRA_SRL_sig[44]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[44]~28_combout\ = (\SRA_SRL_sig[44]~27_combout\ & ((\SRA64|Stage2_sig[60]~56_combout\) # ((!\SRA_SRL_sig[41]~2_combout\)))) # (!\SRA_SRL_sig[44]~27_combout\ & (((\X_sig[63]~2_combout\ & \SRA_SRL_sig[41]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[44]~27_combout\,
	datab => \SRA64|Stage2_sig[60]~56_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \SRA_SRL_sig[41]~2_combout\,
	combout => \SRA_SRL_sig[44]~28_combout\);

-- Location: LCCOMB_X74_Y40_N26
\Y_sig~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~121_combout\ = (\Y_sig~71_combout\ & (((\Y_sig~72_combout\)))) # (!\Y_sig~71_combout\ & ((\Y_sig~72_combout\ & (\SRA_SRL_sig[44]~28_combout\)) # (!\Y_sig~72_combout\ & ((\SRL64|Stage2_sig[48]~95_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~71_combout\,
	datab => \SRA_SRL_sig[44]~28_combout\,
	datac => \Y_sig~72_combout\,
	datad => \SRL64|Stage2_sig[48]~95_combout\,
	combout => \Y_sig~121_combout\);

-- Location: LCCOMB_X73_Y38_N12
\SRL64|Stage2_sig[48]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[48]~127_combout\ = (\B[3]~input_o\ & (\SRL64|Stage1_sig[24]~268_combout\)) # (!\B[3]~input_o\ & ((\SRL64|Stage1_sig[16]~265_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[24]~268_combout\,
	datac => \SRL64|Stage1_sig[16]~265_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL64|Stage2_sig[48]~127_combout\);

-- Location: LCCOMB_X74_Y40_N2
\Y_sig~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~124_combout\ = (\Y_sig~71_combout\ & ((\Y_sig~121_combout\ & (\Y_sig~123_combout\)) # (!\Y_sig~121_combout\ & ((\SRL64|Stage2_sig[48]~127_combout\))))) # (!\Y_sig~71_combout\ & (((\Y_sig~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~71_combout\,
	datab => \Y_sig~123_combout\,
	datac => \Y_sig~121_combout\,
	datad => \SRL64|Stage2_sig[48]~127_combout\,
	combout => \Y_sig~124_combout\);

-- Location: LCCOMB_X75_Y44_N14
\Y_sig~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~126_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_sig~124_combout\))) # (!\ShiftFN[1]~input_o\ & (\Y_sig~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y_sig~125_combout\,
	datac => \Y_sig~124_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_sig~126_combout\);

-- Location: LCCOMB_X73_Y41_N30
\SRL64|Stage2_sig[61]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[61]~134_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SRL64|Stage1_sig[61]~168_combout\) # ((\SRL64|Stage1_sig[48]~107_combout\ & !\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~107_combout\,
	datab => \SRL64|Stage2_sig[48]~29_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[61]~168_combout\,
	combout => \SRL64|Stage2_sig[61]~134_combout\);

-- Location: LCCOMB_X76_Y41_N4
\SRL64|Stage2_sig[45]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[45]~135_combout\ = (\SRL64|Stage1_sig[49]~148_combout\ & ((\SRA64|Equal5~0_combout\) # ((\SRL64|Stage2_sig[44]~32_combout\ & \SRL64|Stage1_sig[57]~151_combout\)))) # (!\SRL64|Stage1_sig[49]~148_combout\ & 
-- (\SRL64|Stage2_sig[44]~32_combout\ & (\SRL64|Stage1_sig[57]~151_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[49]~148_combout\,
	datab => \SRL64|Stage2_sig[44]~32_combout\,
	datac => \SRL64|Stage1_sig[57]~151_combout\,
	datad => \SRA64|Equal5~0_combout\,
	combout => \SRL64|Stage2_sig[45]~135_combout\);

-- Location: LCCOMB_X70_Y41_N0
\SRL64|Stage2_sig[45]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[45]~136_combout\ = (\SRL64|Stage2_sig[48]~28_combout\ & ((\B[0]~input_o\ & (\SRL64|Stage1_sig[54]~154_combout\)) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[53]~102_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~28_combout\,
	datab => \SRL64|Stage1_sig[54]~154_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[53]~102_combout\,
	combout => \SRL64|Stage2_sig[45]~136_combout\);

-- Location: LCCOMB_X72_Y41_N8
\SRL64|Stage2_sig[45]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[45]~137_combout\ = (\SRL64|Stage2_sig[45]~135_combout\) # ((\SRL64|Stage2_sig[45]~136_combout\) # ((\SRL64|Stage2_sig[48]~29_combout\ & \SRL64|Stage1_sig[45]~283_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRL64|Stage1_sig[45]~283_combout\,
	datac => \SRL64|Stage2_sig[45]~135_combout\,
	datad => \SRL64|Stage2_sig[45]~136_combout\,
	combout => \SRL64|Stage2_sig[45]~137_combout\);

-- Location: LCCOMB_X75_Y41_N16
\SRA_SRL_sig[45]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[45]~29_combout\ = (\SRA_SRL_sig[41]~4_combout\ & (\SRL64|Stage2_sig[61]~134_combout\ & ((\SRA_SRL_sig[41]~3_combout\)))) # (!\SRA_SRL_sig[41]~4_combout\ & (((\SRL64|Stage2_sig[45]~137_combout\) # (!\SRA_SRL_sig[41]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[41]~4_combout\,
	datab => \SRL64|Stage2_sig[61]~134_combout\,
	datac => \SRL64|Stage2_sig[45]~137_combout\,
	datad => \SRA_SRL_sig[41]~3_combout\,
	combout => \SRA_SRL_sig[45]~29_combout\);

-- Location: LCCOMB_X76_Y41_N30
\SRA64|Stage2_sig[61]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[61]~54_combout\ = (\B[3]~input_o\ & (((\X_sig[63]~2_combout\)))) # (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\X_sig[63]~2_combout\))) # (!\B[2]~input_o\ & (\SRA64|Stage1_sig[61]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA64|Stage1_sig[61]~3_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA64|Stage2_sig[61]~54_combout\);

-- Location: LCCOMB_X75_Y41_N2
\SRA_SRL_sig[45]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[45]~30_combout\ = (\SRA_SRL_sig[41]~2_combout\ & ((\SRA_SRL_sig[45]~29_combout\ & ((\SRA64|Stage2_sig[61]~54_combout\))) # (!\SRA_SRL_sig[45]~29_combout\ & (\X_sig[63]~2_combout\)))) # (!\SRA_SRL_sig[41]~2_combout\ & 
-- (\SRA_SRL_sig[45]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[41]~2_combout\,
	datab => \SRA_SRL_sig[45]~29_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \SRA64|Stage2_sig[61]~54_combout\,
	combout => \SRA_SRL_sig[45]~30_combout\);

-- Location: LCCOMB_X74_Y41_N22
\Y_sig~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~127_combout\ = (\Y_sig~71_combout\ & ((\Y_sig~72_combout\) # ((\SRL64|Stage2_sig[48]~45_combout\)))) # (!\Y_sig~71_combout\ & (!\Y_sig~72_combout\ & ((\SRL64|Stage2_sig[48]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~71_combout\,
	datab => \Y_sig~72_combout\,
	datac => \SRL64|Stage2_sig[48]~45_combout\,
	datad => \SRL64|Stage2_sig[48]~107_combout\,
	combout => \Y_sig~127_combout\);

-- Location: LCCOMB_X72_Y41_N28
\SRL64|Stage2_sig[29]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[29]~139_combout\ = (\SRL64|Stage2_sig[48]~28_combout\ & ((\SRL64|Stage1_sig[37]~282_combout\) # ((\SRL64|Stage1_sig[29]~284_combout\ & \SRL64|Stage2_sig[48]~29_combout\)))) # (!\SRL64|Stage2_sig[48]~28_combout\ & 
-- (((\SRL64|Stage1_sig[29]~284_combout\ & \SRL64|Stage2_sig[48]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~28_combout\,
	datab => \SRL64|Stage1_sig[37]~282_combout\,
	datac => \SRL64|Stage1_sig[29]~284_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \SRL64|Stage2_sig[29]~139_combout\);

-- Location: LCCOMB_X72_Y41_N10
\SRL64|Stage2_sig[29]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[29]~138_combout\ = (\SRL64|Stage1_sig[41]~281_combout\ & ((\SRL64|Stage2_sig[44]~32_combout\) # ((\SRA64|Equal5~0_combout\ & \SRL64|Stage1_sig[33]~158_combout\)))) # (!\SRL64|Stage1_sig[41]~281_combout\ & (((\SRA64|Equal5~0_combout\ & 
-- \SRL64|Stage1_sig[33]~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[41]~281_combout\,
	datab => \SRL64|Stage2_sig[44]~32_combout\,
	datac => \SRA64|Equal5~0_combout\,
	datad => \SRL64|Stage1_sig[33]~158_combout\,
	combout => \SRL64|Stage2_sig[29]~138_combout\);

-- Location: LCCOMB_X72_Y41_N22
\SRL64|Stage2_sig[29]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[29]~140_combout\ = (\SRL64|Stage2_sig[29]~139_combout\) # (\SRL64|Stage2_sig[29]~138_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage2_sig[29]~139_combout\,
	datad => \SRL64|Stage2_sig[29]~138_combout\,
	combout => \SRL64|Stage2_sig[29]~140_combout\);

-- Location: LCCOMB_X75_Y41_N4
\Y_sig~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~128_combout\ = (\SRL64|Stage3_sig~42_combout\ & (((\SRL64|Stage2_sig[45]~137_combout\) # (\Y_sig~48_combout\)))) # (!\SRL64|Stage3_sig~42_combout\ & (\SRL64|Stage2_sig[61]~134_combout\ & ((!\Y_sig~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage3_sig~42_combout\,
	datab => \SRL64|Stage2_sig[61]~134_combout\,
	datac => \SRL64|Stage2_sig[45]~137_combout\,
	datad => \Y_sig~48_combout\,
	combout => \Y_sig~128_combout\);

-- Location: LCCOMB_X75_Y41_N14
\Y_sig~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~129_combout\ = (\Y_sig~48_combout\ & ((\Y_sig~128_combout\ & (\SRL64|Stage2_sig[29]~140_combout\)) # (!\Y_sig~128_combout\ & ((\SRA64|Stage2_sig[61]~54_combout\))))) # (!\Y_sig~48_combout\ & (((\Y_sig~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~48_combout\,
	datab => \SRL64|Stage2_sig[29]~140_combout\,
	datac => \Y_sig~128_combout\,
	datad => \SRA64|Stage2_sig[61]~54_combout\,
	combout => \Y_sig~129_combout\);

-- Location: LCCOMB_X75_Y41_N0
\Y_sig~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~130_combout\ = (\Y_sig~127_combout\ & (((\Y_sig~129_combout\) # (!\Y_sig~72_combout\)))) # (!\Y_sig~127_combout\ & (\SRA_SRL_sig[45]~30_combout\ & ((\Y_sig~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[45]~30_combout\,
	datab => \Y_sig~127_combout\,
	datac => \Y_sig~129_combout\,
	datad => \Y_sig~72_combout\,
	combout => \Y_sig~130_combout\);

-- Location: IOIBUF_X0_Y36_N15
\C[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(13),
	o => \C[13]~input_o\);

-- Location: LCCOMB_X68_Y39_N8
\SLL64|Stage1_sig[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[13]~49_combout\ = (\B[0]~input_o\ & (((\SLL64|Stage1_sig[13]~47_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~68_combout\) # ((\SRL64|Stage1_sig[48]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[48]~68_combout\,
	datac => \SRL64|Stage1_sig[48]~83_combout\,
	datad => \SLL64|Stage1_sig[13]~47_combout\,
	combout => \SLL64|Stage1_sig[13]~49_combout\);

-- Location: LCCOMB_X76_Y37_N6
\SLL64|Stage2_sig[13]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[13]~28_combout\ = (!\B[2]~input_o\ & (!\B[3]~input_o\ & \SLL64|Stage1_sig[13]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SLL64|Stage1_sig[13]~49_combout\,
	combout => \SLL64|Stage2_sig[13]~28_combout\);

-- Location: LCCOMB_X76_Y37_N4
\SLL64|Stage2_sig[13]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[13]~27_combout\ = (\SLL64|Stage1_sig[9]~43_combout\ & ((\SRA64|Equal5~0_combout\) # ((\SLL64|Stage1_sig[5]~36_combout\ & \SRL64|Stage2_sig[48]~28_combout\)))) # (!\SLL64|Stage1_sig[9]~43_combout\ & (\SLL64|Stage1_sig[5]~36_combout\ & 
-- (\SRL64|Stage2_sig[48]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[9]~43_combout\,
	datab => \SLL64|Stage1_sig[5]~36_combout\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SRA64|Equal5~0_combout\,
	combout => \SLL64|Stage2_sig[13]~27_combout\);

-- Location: LCCOMB_X76_Y37_N0
\SLL64|Stage2_sig[13]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[13]~29_combout\ = (\SLL64|Stage2_sig[13]~28_combout\) # ((\SLL64|Stage2_sig[13]~27_combout\) # ((\SLL64|Stage1_sig[1]~30_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[13]~28_combout\,
	datab => \SLL64|Stage1_sig[1]~30_combout\,
	datac => \SLL64|Stage2_sig[13]~27_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SLL64|Stage2_sig[13]~29_combout\);

-- Location: LCCOMB_X75_Y44_N16
\Y_sig~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~131_combout\ = (\ShiftFN[0]~input_o\ & (((\SgnExtLower_sig[31]~0_combout\ & \SLL64|Stage2_sig[13]~29_combout\)))) # (!\ShiftFN[0]~input_o\ & ((\C[13]~input_o\) # ((\SgnExtLower_sig[31]~0_combout\ & \SLL64|Stage2_sig[13]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \C[13]~input_o\,
	datac => \SgnExtLower_sig[31]~0_combout\,
	datad => \SLL64|Stage2_sig[13]~29_combout\,
	combout => \Y_sig~131_combout\);

-- Location: LCCOMB_X75_Y44_N2
\Y_sig~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~132_combout\ = (\ShiftFN[1]~input_o\ & (\Y_sig~130_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Y_sig~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~130_combout\,
	datab => \Y_sig~131_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_sig~132_combout\);

-- Location: LCCOMB_X75_Y36_N20
\SLL64|Stage2_sig[14]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[14]~30_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\SLL64|Stage1_sig[2]~37_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage1_sig[10]~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[2]~37_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL64|Stage1_sig[10]~45_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64|Stage2_sig[14]~30_combout\);

-- Location: LCCOMB_X68_Y39_N18
\SLL64|Stage1_sig[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[15]~50_combout\ = (\SRL64|Stage1_sig[48]~134_combout\) # (\SRL64|Stage1_sig[48]~143_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage1_sig[48]~134_combout\,
	datad => \SRL64|Stage1_sig[48]~143_combout\,
	combout => \SLL64|Stage1_sig[15]~50_combout\);

-- Location: LCCOMB_X68_Y39_N12
\SLL64|Stage1_sig[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[14]~51_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~83_combout\) # (\SRL64|Stage1_sig[48]~68_combout\)))) # (!\B[0]~input_o\ & (\SLL64|Stage1_sig[15]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SLL64|Stage1_sig[15]~50_combout\,
	datac => \SRL64|Stage1_sig[48]~83_combout\,
	datad => \SRL64|Stage1_sig[48]~68_combout\,
	combout => \SLL64|Stage1_sig[14]~51_combout\);

-- Location: LCCOMB_X75_Y36_N6
\SLL64|Stage2_sig[14]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[14]~31_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SLL64|Stage1_sig[6]~39_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage1_sig[14]~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[6]~39_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL64|Stage1_sig[14]~51_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64|Stage2_sig[14]~31_combout\);

-- Location: LCCOMB_X75_Y36_N8
\SLL64|Stage2_sig[14]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[14]~32_combout\ = (\SLL64|Stage2_sig[14]~30_combout\) # (\SLL64|Stage2_sig[14]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64|Stage2_sig[14]~30_combout\,
	datad => \SLL64|Stage2_sig[14]~31_combout\,
	combout => \SLL64|Stage2_sig[14]~32_combout\);

-- Location: IOIBUF_X0_Y36_N22
\C[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(14),
	o => \C[14]~input_o\);

-- Location: LCCOMB_X75_Y44_N28
\Y_sig~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~137_combout\ = (\SgnExtLower_sig[31]~0_combout\ & ((\SLL64|Stage2_sig[14]~32_combout\) # ((!\ShiftFN[0]~input_o\ & \C[14]~input_o\)))) # (!\SgnExtLower_sig[31]~0_combout\ & (((!\ShiftFN[0]~input_o\ & \C[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtLower_sig[31]~0_combout\,
	datab => \SLL64|Stage2_sig[14]~32_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \C[14]~input_o\,
	combout => \Y_sig~137_combout\);

-- Location: LCCOMB_X73_Y43_N8
\SRL64|Stage2_sig[46]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[46]~141_combout\ = (\SRL64|Stage1_sig[50]~223_combout\ & ((\SRA64|Equal5~0_combout\) # ((\SRL64|Stage1_sig[58]~220_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))) # (!\SRL64|Stage1_sig[50]~223_combout\ & 
-- (\SRL64|Stage1_sig[58]~220_combout\ & ((\SRL64|Stage2_sig[44]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[50]~223_combout\,
	datab => \SRL64|Stage1_sig[58]~220_combout\,
	datac => \SRA64|Equal5~0_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SRL64|Stage2_sig[46]~141_combout\);

-- Location: LCCOMB_X74_Y43_N10
\SRL64|Stage2_sig[46]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[46]~142_combout\ = (\SRL64|Stage2_sig[48]~28_combout\ & ((\SRL64|Stage1_sig[54]~226_combout\) # ((\SRL64|Stage1_sig[46]~216_combout\ & \SRL64|Stage2_sig[48]~29_combout\)))) # (!\SRL64|Stage2_sig[48]~28_combout\ & 
-- (((\SRL64|Stage1_sig[46]~216_combout\ & \SRL64|Stage2_sig[48]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~28_combout\,
	datab => \SRL64|Stage1_sig[54]~226_combout\,
	datac => \SRL64|Stage1_sig[46]~216_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \SRL64|Stage2_sig[46]~142_combout\);

-- Location: LCCOMB_X74_Y43_N12
\SRL64|Stage2_sig[46]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[46]~143_combout\ = (\SRL64|Stage2_sig[46]~141_combout\) # (\SRL64|Stage2_sig[46]~142_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[46]~141_combout\,
	datad => \SRL64|Stage2_sig[46]~142_combout\,
	combout => \SRL64|Stage2_sig[46]~143_combout\);

-- Location: LCCOMB_X73_Y41_N22
\SRL64|Stage2_sig[62]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[62]~162_combout\ = (\SRL64|Stage1_sig[62]~227_combout\ & (!\B[3]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[62]~227_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SRL64|Stage2_sig[62]~162_combout\);

-- Location: LCCOMB_X74_Y43_N14
\SRA_SRL_sig[46]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[46]~31_combout\ = (\SRA_SRL_sig[41]~3_combout\ & ((\SRA_SRL_sig[41]~4_combout\ & ((\SRL64|Stage2_sig[62]~162_combout\))) # (!\SRA_SRL_sig[41]~4_combout\ & (\SRL64|Stage2_sig[46]~143_combout\)))) # (!\SRA_SRL_sig[41]~3_combout\ & 
-- (((!\SRA_SRL_sig[41]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[46]~143_combout\,
	datab => \SRA_SRL_sig[41]~3_combout\,
	datac => \SRA_SRL_sig[41]~4_combout\,
	datad => \SRL64|Stage2_sig[62]~162_combout\,
	combout => \SRA_SRL_sig[46]~31_combout\);

-- Location: LCCOMB_X77_Y42_N2
\SRA64|Stage2_sig[62]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA64|Stage2_sig[62]~44_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SRA64|Equal2~0_combout\ & (\X_sig[63]~2_combout\)) # (!\SRA64|Equal2~0_combout\ & ((\X_sig[62]~3_combout\))))) # (!\SRL64|Stage2_sig[48]~29_combout\ & (((\X_sig[63]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRA64|Equal2~0_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \X_sig[62]~3_combout\,
	combout => \SRA64|Stage2_sig[62]~44_combout\);

-- Location: LCCOMB_X75_Y43_N8
\SRA_SRL_sig[46]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[46]~32_combout\ = (\SRA_SRL_sig[46]~31_combout\ & ((\SRA64|Stage2_sig[62]~44_combout\) # ((!\SRA_SRL_sig[41]~2_combout\)))) # (!\SRA_SRL_sig[46]~31_combout\ & (((\X_sig[63]~2_combout\ & \SRA_SRL_sig[41]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[46]~31_combout\,
	datab => \SRA64|Stage2_sig[62]~44_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \SRA_SRL_sig[41]~2_combout\,
	combout => \SRA_SRL_sig[46]~32_combout\);

-- Location: LCCOMB_X75_Y43_N10
\Y_sig~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~133_combout\ = (\Y_sig~71_combout\ & (((\Y_sig~72_combout\)))) # (!\Y_sig~71_combout\ & ((\Y_sig~72_combout\ & ((\SRA_SRL_sig[46]~32_combout\))) # (!\Y_sig~72_combout\ & (\SRL64|Stage2_sig[48]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~111_combout\,
	datab => \Y_sig~71_combout\,
	datac => \SRA_SRL_sig[46]~32_combout\,
	datad => \Y_sig~72_combout\,
	combout => \Y_sig~133_combout\);

-- Location: LCCOMB_X73_Y43_N4
\SRL64|Stage2_sig[30]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[30]~145_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SRL64|Stage1_sig[30]~230_combout\) # ((\SRL64|Stage1_sig[38]~213_combout\ & \SRL64|Stage2_sig[48]~28_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- (((\SRL64|Stage1_sig[38]~213_combout\ & \SRL64|Stage2_sig[48]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRL64|Stage1_sig[30]~230_combout\,
	datac => \SRL64|Stage1_sig[38]~213_combout\,
	datad => \SRL64|Stage2_sig[48]~28_combout\,
	combout => \SRL64|Stage2_sig[30]~145_combout\);

-- Location: LCCOMB_X73_Y43_N18
\SRL64|Stage2_sig[30]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[30]~144_combout\ = (\SRA64|Equal5~0_combout\ & ((\SRL64|Stage1_sig[34]~207_combout\) # ((\SRL64|Stage1_sig[42]~210_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))) # (!\SRA64|Equal5~0_combout\ & (\SRL64|Stage1_sig[42]~210_combout\ & 
-- ((\SRL64|Stage2_sig[44]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \SRL64|Stage1_sig[42]~210_combout\,
	datac => \SRL64|Stage1_sig[34]~207_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SRL64|Stage2_sig[30]~144_combout\);

-- Location: LCCOMB_X73_Y43_N14
\SRL64|Stage2_sig[30]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[30]~146_combout\ = (\SRL64|Stage2_sig[30]~145_combout\) # (\SRL64|Stage2_sig[30]~144_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage2_sig[30]~145_combout\,
	datad => \SRL64|Stage2_sig[30]~144_combout\,
	combout => \SRL64|Stage2_sig[30]~146_combout\);

-- Location: LCCOMB_X74_Y43_N8
\Y_sig~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~134_combout\ = (\SRL64|Stage3_sig~42_combout\ & (\Y_sig~48_combout\)) # (!\SRL64|Stage3_sig~42_combout\ & ((\Y_sig~48_combout\ & (\SRA64|Stage2_sig[62]~44_combout\)) # (!\Y_sig~48_combout\ & ((\SRL64|Stage2_sig[62]~162_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage3_sig~42_combout\,
	datab => \Y_sig~48_combout\,
	datac => \SRA64|Stage2_sig[62]~44_combout\,
	datad => \SRL64|Stage2_sig[62]~162_combout\,
	combout => \Y_sig~134_combout\);

-- Location: LCCOMB_X74_Y43_N18
\Y_sig~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~135_combout\ = (\Y_sig~134_combout\ & ((\SRL64|Stage2_sig[30]~146_combout\) # ((!\SRL64|Stage3_sig~42_combout\)))) # (!\Y_sig~134_combout\ & (((\SRL64|Stage3_sig~42_combout\ & \SRL64|Stage2_sig[46]~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[30]~146_combout\,
	datab => \Y_sig~134_combout\,
	datac => \SRL64|Stage3_sig~42_combout\,
	datad => \SRL64|Stage2_sig[46]~143_combout\,
	combout => \Y_sig~135_combout\);

-- Location: LCCOMB_X75_Y43_N12
\Y_sig~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~136_combout\ = (\Y_sig~133_combout\ & ((\Y_sig~135_combout\) # ((!\Y_sig~71_combout\)))) # (!\Y_sig~133_combout\ & (((\SRL64|Stage2_sig[48]~54_combout\ & \Y_sig~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~133_combout\,
	datab => \Y_sig~135_combout\,
	datac => \SRL64|Stage2_sig[48]~54_combout\,
	datad => \Y_sig~71_combout\,
	combout => \Y_sig~136_combout\);

-- Location: LCCOMB_X75_Y44_N22
\Y_sig~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~138_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_sig~136_combout\))) # (!\ShiftFN[1]~input_o\ & (\Y_sig~137_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y_sig~137_combout\,
	datac => \Y_sig~136_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_sig~138_combout\);

-- Location: LCCOMB_X73_Y42_N26
\SRL64|Stage2_sig[31]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[31]~150_combout\ = (\SRA64|Equal5~0_combout\ & ((\SRL64|Stage1_sig[35]~249_combout\) # ((\SRL64|Stage2_sig[44]~32_combout\ & \SRL64|Stage1_sig[43]~250_combout\)))) # (!\SRA64|Equal5~0_combout\ & (\SRL64|Stage2_sig[44]~32_combout\ & 
-- ((\SRL64|Stage1_sig[43]~250_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \SRL64|Stage2_sig[44]~32_combout\,
	datac => \SRL64|Stage1_sig[35]~249_combout\,
	datad => \SRL64|Stage1_sig[43]~250_combout\,
	combout => \SRL64|Stage2_sig[31]~150_combout\);

-- Location: LCCOMB_X73_Y42_N28
\SRL64|Stage2_sig[31]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[31]~151_combout\ = (\SRL64|Stage1_sig[39]~251_combout\ & ((\SRL64|Stage2_sig[48]~28_combout\) # ((\SRL64|Stage1_sig[31]~253_combout\ & \SRL64|Stage2_sig[48]~29_combout\)))) # (!\SRL64|Stage1_sig[39]~251_combout\ & 
-- (((\SRL64|Stage1_sig[31]~253_combout\ & \SRL64|Stage2_sig[48]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[39]~251_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SRL64|Stage1_sig[31]~253_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \SRL64|Stage2_sig[31]~151_combout\);

-- Location: LCCOMB_X77_Y42_N4
\SRL64|Stage2_sig[31]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[31]~152_combout\ = (\SRL64|Stage2_sig[31]~150_combout\) # (\SRL64|Stage2_sig[31]~151_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage2_sig[31]~150_combout\,
	datac => \SRL64|Stage2_sig[31]~151_combout\,
	combout => \SRL64|Stage2_sig[31]~152_combout\);

-- Location: LCCOMB_X73_Y42_N30
\SRL64|Stage2_sig[47]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[47]~147_combout\ = (\SRA64|Equal5~0_combout\ & ((\SRL64|Stage1_sig[51]~247_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SRL64|Stage1_sig[55]~248_combout\)))) # (!\SRA64|Equal5~0_combout\ & (\SRL64|Stage2_sig[48]~28_combout\ & 
-- (\SRL64|Stage1_sig[55]~248_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SRL64|Stage1_sig[55]~248_combout\,
	datad => \SRL64|Stage1_sig[51]~247_combout\,
	combout => \SRL64|Stage2_sig[47]~147_combout\);

-- Location: LCCOMB_X73_Y42_N22
\SRL64|Stage2_sig[47]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[47]~163_combout\ = (!\B[2]~input_o\ & (!\B[3]~input_o\ & \SRL64|Stage1_sig[47]~252_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRL64|Stage1_sig[47]~252_combout\,
	combout => \SRL64|Stage2_sig[47]~163_combout\);

-- Location: LCCOMB_X73_Y42_N16
\SRL64|Stage2_sig[47]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[47]~148_combout\ = (\SRL64|Stage2_sig[47]~147_combout\) # ((\SRL64|Stage2_sig[47]~163_combout\) # ((\SRL64|Stage1_sig[59]~246_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[47]~147_combout\,
	datab => \SRL64|Stage1_sig[59]~246_combout\,
	datac => \SRL64|Stage2_sig[47]~163_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SRL64|Stage2_sig[47]~148_combout\);

-- Location: LCCOMB_X77_Y42_N8
\SRL64|Stage2_sig[63]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage2_sig[63]~149_combout\ = (\X_sig[63]~2_combout\ & \SRL64|Stage2_sig[63]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \X_sig[63]~2_combout\,
	datad => \SRL64|Stage2_sig[63]~27_combout\,
	combout => \SRL64|Stage2_sig[63]~149_combout\);

-- Location: LCCOMB_X77_Y42_N10
\Y_sig~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~140_combout\ = (\Y_sig~48_combout\ & (((\SRL64|Stage3_sig~42_combout\)))) # (!\Y_sig~48_combout\ & ((\SRL64|Stage3_sig~42_combout\ & (\SRL64|Stage2_sig[47]~148_combout\)) # (!\SRL64|Stage3_sig~42_combout\ & ((\SRL64|Stage2_sig[63]~149_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~48_combout\,
	datab => \SRL64|Stage2_sig[47]~148_combout\,
	datac => \SRL64|Stage2_sig[63]~149_combout\,
	datad => \SRL64|Stage3_sig~42_combout\,
	combout => \Y_sig~140_combout\);

-- Location: LCCOMB_X77_Y42_N22
\Y_sig~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~141_combout\ = (\Y_sig~48_combout\ & ((\Y_sig~140_combout\ & (\SRL64|Stage2_sig[31]~152_combout\)) # (!\Y_sig~140_combout\ & ((\X_sig[63]~2_combout\))))) # (!\Y_sig~48_combout\ & (((\Y_sig~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~48_combout\,
	datab => \SRL64|Stage2_sig[31]~152_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \Y_sig~140_combout\,
	combout => \Y_sig~141_combout\);

-- Location: LCCOMB_X74_Y39_N28
\Y_sig~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~139_combout\ = (\Y_sig~71_combout\ & (((\Y_sig~72_combout\) # (\SRL64|Stage2_sig[48]~63_combout\)))) # (!\Y_sig~71_combout\ & (\SRL64|Stage2_sig[48]~123_combout\ & (!\Y_sig~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~71_combout\,
	datab => \SRL64|Stage2_sig[48]~123_combout\,
	datac => \Y_sig~72_combout\,
	datad => \SRL64|Stage2_sig[48]~63_combout\,
	combout => \Y_sig~139_combout\);

-- Location: LCCOMB_X77_Y42_N12
\SRA_SRL_sig[47]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[47]~33_combout\ = (\ShiftFN[0]~input_o\) # ((\SRL64|Stage2_sig[48]~29_combout\ & (!\SRA64|Equal2~0_combout\ & \SRA64|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRA64|Equal2~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA64|Equal8~0_combout\,
	combout => \SRA_SRL_sig[47]~33_combout\);

-- Location: LCCOMB_X77_Y42_N14
\SRA_SRL_sig[47]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[47]~34_combout\ = (\SRA64|Equal8~1_combout\ & (((\X_sig[63]~2_combout\ & \SRA_SRL_sig[47]~33_combout\)))) # (!\SRA64|Equal8~1_combout\ & (\SRL64|Stage2_sig[47]~148_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal8~1_combout\,
	datab => \SRL64|Stage2_sig[47]~148_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \SRA_SRL_sig[47]~33_combout\,
	combout => \SRA_SRL_sig[47]~34_combout\);

-- Location: LCCOMB_X79_Y42_N18
\Y_sig~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~142_combout\ = (\Y_sig~72_combout\ & ((\Y_sig~139_combout\ & (\Y_sig~141_combout\)) # (!\Y_sig~139_combout\ & ((\SRA_SRL_sig[47]~34_combout\))))) # (!\Y_sig~72_combout\ & (((\Y_sig~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~141_combout\,
	datab => \Y_sig~72_combout\,
	datac => \Y_sig~139_combout\,
	datad => \SRA_SRL_sig[47]~34_combout\,
	combout => \Y_sig~142_combout\);

-- Location: IOIBUF_X115_Y51_N1
\C[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(15),
	o => \C[15]~input_o\);

-- Location: LCCOMB_X68_Y39_N30
\SLL64|Stage1_sig[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[15]~52_combout\ = (\B[0]~input_o\ & (((\SLL64|Stage1_sig[15]~50_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~197_combout\) # ((\SRL64|Stage1_sig[48]~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[48]~197_combout\,
	datac => \SRL64|Stage1_sig[48]~201_combout\,
	datad => \SLL64|Stage1_sig[15]~50_combout\,
	combout => \SLL64|Stage1_sig[15]~52_combout\);

-- Location: LCCOMB_X74_Y38_N22
\SLL64|Stage2_sig[15]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[15]~33_combout\ = (\B[2]~input_o\ & (((\B[3]~input_o\)))) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SLL64|Stage1_sig[7]~40_combout\))) # (!\B[3]~input_o\ & (\SLL64|Stage1_sig[15]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64|Stage1_sig[15]~52_combout\,
	datac => \SLL64|Stage1_sig[7]~40_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64|Stage2_sig[15]~33_combout\);

-- Location: LCCOMB_X74_Y38_N16
\SLL64|Stage2_sig[15]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[15]~34_combout\ = (\SLL64|Stage2_sig[15]~33_combout\ & (((\SLL64|Stage1_sig[3]~33_combout\) # (!\B[2]~input_o\)))) # (!\SLL64|Stage2_sig[15]~33_combout\ & (\SLL64|Stage1_sig[11]~46_combout\ & ((\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[11]~46_combout\,
	datab => \SLL64|Stage1_sig[3]~33_combout\,
	datac => \SLL64|Stage2_sig[15]~33_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64|Stage2_sig[15]~34_combout\);

-- Location: LCCOMB_X79_Y42_N20
\Y_sig~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~143_combout\ = (\SgnExtLower_sig[31]~0_combout\ & ((\SLL64|Stage2_sig[15]~34_combout\) # ((!\ShiftFN[0]~input_o\ & \C[15]~input_o\)))) # (!\SgnExtLower_sig[31]~0_combout\ & (!\ShiftFN[0]~input_o\ & (\C[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtLower_sig[31]~0_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \C[15]~input_o\,
	datad => \SLL64|Stage2_sig[15]~34_combout\,
	combout => \Y_sig~143_combout\);

-- Location: LCCOMB_X79_Y42_N22
\Y_sig~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~144_combout\ = (\ShiftFN[1]~input_o\ & (\Y_sig~142_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Y_sig~143_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y_sig~142_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_sig~143_combout\,
	combout => \Y_sig~144_combout\);

-- Location: LCCOMB_X73_Y38_N10
\SRA_SRL_sig[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[16]~41_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SRL64|Stage1_sig[28]~267_combout\))) # (!\B[3]~input_o\ & (\SRL64|Stage1_sig[20]~266_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[20]~266_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SRL64|Stage1_sig[28]~267_combout\,
	combout => \SRA_SRL_sig[16]~41_combout\);

-- Location: LCCOMB_X73_Y38_N20
\SRA_SRL_sig[16]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[16]~42_combout\ = (!\SRA64|Equal8~1_combout\ & ((\SRA_SRL_sig[16]~41_combout\) # ((!\B[2]~input_o\ & \SRL64|Stage2_sig[48]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA64|Equal8~1_combout\,
	datac => \SRL64|Stage2_sig[48]~127_combout\,
	datad => \SRA_SRL_sig[16]~41_combout\,
	combout => \SRA_SRL_sig[16]~42_combout\);

-- Location: LCCOMB_X79_Y42_N16
\SRA_SRL_sig[48]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[48]~35_combout\ = (\X_sig[63]~2_combout\ & (\ShiftFN[0]~input_o\ & ((\ShiftCount[5]~0_combout\) # (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \X_sig[63]~2_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SRA_SRL_sig[48]~35_combout\);

-- Location: LCCOMB_X76_Y39_N26
\SRA_SRL_sig[48]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[48]~36_combout\ = (\SRA_SRL_sig[48]~35_combout\) # ((\SRL64|Stage2_sig[48]~33_combout\ & !\SRA64|Equal8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage2_sig[48]~33_combout\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \SRA_SRL_sig[48]~35_combout\,
	combout => \SRA_SRL_sig[48]~36_combout\);

-- Location: LCCOMB_X76_Y39_N12
\SRA_SRL_sig[16]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[16]~37_combout\ = (\B[5]~input_o\ & (!\ExtWord~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	combout => \SRA_SRL_sig[16]~37_combout\);

-- Location: LCCOMB_X76_Y39_N22
\SRA_SRL_sig[16]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[16]~38_combout\ = (\SRL64|Stage2_sig[32]~36_combout\ & ((\SRA64|Equal8~0_combout\) # ((\SRL64|Stage2_sig[48]~33_combout\ & \SRA_SRL_sig[16]~37_combout\)))) # (!\SRL64|Stage2_sig[32]~36_combout\ & (\SRL64|Stage2_sig[48]~33_combout\ & 
-- ((\SRA_SRL_sig[16]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[32]~36_combout\,
	datab => \SRL64|Stage2_sig[48]~33_combout\,
	datac => \SRA64|Equal8~0_combout\,
	datad => \SRA_SRL_sig[16]~37_combout\,
	combout => \SRA_SRL_sig[16]~38_combout\);

-- Location: LCCOMB_X77_Y42_N16
\SRA_SRL_sig[48]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[48]~39_combout\ = (\ShiftFN[0]~input_o\ & \X_sig[63]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \X_sig[63]~2_combout\,
	combout => \SRA_SRL_sig[48]~39_combout\);

-- Location: LCCOMB_X77_Y42_N18
\SRA_SRL_sig[16]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[16]~40_combout\ = (\SRA_SRL_sig[16]~38_combout\ & ((\ShiftCount[5]~0_combout\) # ((\B[4]~input_o\)))) # (!\SRA_SRL_sig[16]~38_combout\ & (\ShiftCount[5]~0_combout\ & (\B[4]~input_o\ & \SRA_SRL_sig[48]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[16]~38_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \SRA_SRL_sig[48]~39_combout\,
	combout => \SRA_SRL_sig[16]~40_combout\);

-- Location: LCCOMB_X76_Y39_N16
\Y_sig~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~147_combout\ = (\ExtWord~input_o\ & (((\SRA_SRL_sig[48]~36_combout\)))) # (!\ExtWord~input_o\ & ((\SRA_SRL_sig[16]~42_combout\) # ((\SRA_SRL_sig[16]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[16]~42_combout\,
	datab => \ExtWord~input_o\,
	datac => \SRA_SRL_sig[48]~36_combout\,
	datad => \SRA_SRL_sig[16]~40_combout\,
	combout => \Y_sig~147_combout\);

-- Location: IOIBUF_X115_Y24_N8
\C[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(16),
	o => \C[16]~input_o\);

-- Location: LCCOMB_X67_Y38_N24
\SLL64|Stage1_sig[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[17]~53_combout\ = (\SRL64|Stage1_sig[48]~243_combout\) # (\SRL64|Stage1_sig[48]~85_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~243_combout\,
	datac => \SRL64|Stage1_sig[48]~85_combout\,
	combout => \SLL64|Stage1_sig[17]~53_combout\);

-- Location: LCCOMB_X69_Y38_N18
\SLL64|Stage1_sig[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[16]~54_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~201_combout\) # (\SRL64|Stage1_sig[48]~197_combout\)))) # (!\B[0]~input_o\ & (\SLL64|Stage1_sig[17]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SLL64|Stage1_sig[17]~53_combout\,
	datac => \SRL64|Stage1_sig[48]~201_combout\,
	datad => \SRL64|Stage1_sig[48]~197_combout\,
	combout => \SLL64|Stage1_sig[16]~54_combout\);

-- Location: LCCOMB_X75_Y38_N6
\SLL64|Stage2_sig[16]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[16]~110_combout\ = (\SLL64|Stage1_sig[16]~54_combout\ & (!\B[3]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[16]~54_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLL64|Stage2_sig[16]~110_combout\);

-- Location: LCCOMB_X75_Y38_N22
\SLL64|Stage2_sig[16]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[16]~35_combout\ = (\SRA64|Equal5~0_combout\ & ((\SLL64|Stage1_sig[12]~48_combout\) # ((\SLL64|Stage1_sig[8]~42_combout\ & \SRL64|Stage2_sig[48]~28_combout\)))) # (!\SRA64|Equal5~0_combout\ & (\SLL64|Stage1_sig[8]~42_combout\ & 
-- (\SRL64|Stage2_sig[48]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \SLL64|Stage1_sig[8]~42_combout\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SLL64|Stage1_sig[12]~48_combout\,
	combout => \SLL64|Stage2_sig[16]~35_combout\);

-- Location: LCCOMB_X75_Y38_N0
\SLL64|Stage2_sig[16]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[16]~36_combout\ = (\SLL64|Stage2_sig[16]~110_combout\) # ((\SLL64|Stage2_sig[16]~35_combout\) # ((\SLL64|Stage1_sig[4]~111_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[16]~110_combout\,
	datab => \SLL64|Stage1_sig[4]~111_combout\,
	datac => \SLL64|Stage2_sig[16]~35_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SLL64|Stage2_sig[16]~36_combout\);

-- Location: LCCOMB_X76_Y39_N6
\Y_sig~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~145_combout\ = (\SRA64|Equal8~1_combout\ & (\SLL64|Y[32]~10_combout\ & (\SRA64|Equal8~0_combout\))) # (!\SRA64|Equal8~1_combout\ & (((\SLL64|Stage2_sig[16]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[32]~10_combout\,
	datab => \SRA64|Equal8~0_combout\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \SLL64|Stage2_sig[16]~36_combout\,
	combout => \Y_sig~145_combout\);

-- Location: LCCOMB_X76_Y39_N24
\Y_sig~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~146_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Y_sig~145_combout\))) # (!\ShiftFN[0]~input_o\ & (\C[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \C[16]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_sig~145_combout\,
	combout => \Y_sig~146_combout\);

-- Location: LCCOMB_X76_Y39_N2
\Y_sig~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~148_combout\ = (\Y_sig~146_combout\) # ((\Y_sig~147_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y_sig~147_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_sig~146_combout\,
	combout => \Y_sig~148_combout\);

-- Location: LCCOMB_X76_Y37_N26
\SLL64|Stage2_sig[17]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[17]~37_combout\ = (\SRL64|Stage2_sig[44]~32_combout\ & ((\SLL64|Stage1_sig[5]~36_combout\) # ((\SRA64|Equal5~0_combout\ & \SLL64|Stage1_sig[13]~49_combout\)))) # (!\SRL64|Stage2_sig[44]~32_combout\ & (((\SRA64|Equal5~0_combout\ & 
-- \SLL64|Stage1_sig[13]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[44]~32_combout\,
	datab => \SLL64|Stage1_sig[5]~36_combout\,
	datac => \SRA64|Equal5~0_combout\,
	datad => \SLL64|Stage1_sig[13]~49_combout\,
	combout => \SLL64|Stage2_sig[17]~37_combout\);

-- Location: LCCOMB_X69_Y38_N20
\SLL64|Stage1_sig[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[17]~55_combout\ = (\B[0]~input_o\ & (\SLL64|Stage1_sig[17]~53_combout\)) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~192_combout\) # (\SRL64|Stage1_sig[48]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SLL64|Stage1_sig[17]~53_combout\,
	datac => \SRL64|Stage1_sig[48]~192_combout\,
	datad => \SRL64|Stage1_sig[48]~82_combout\,
	combout => \SLL64|Stage1_sig[17]~55_combout\);

-- Location: LCCOMB_X76_Y37_N12
\SLL64|Stage2_sig[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[17]~38_combout\ = (\SLL64|Stage1_sig[9]~43_combout\ & ((\SRL64|Stage2_sig[48]~28_combout\) # ((\SRL64|Stage2_sig[48]~29_combout\ & \SLL64|Stage1_sig[17]~55_combout\)))) # (!\SLL64|Stage1_sig[9]~43_combout\ & 
-- (((\SRL64|Stage2_sig[48]~29_combout\ & \SLL64|Stage1_sig[17]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[9]~43_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SRL64|Stage2_sig[48]~29_combout\,
	datad => \SLL64|Stage1_sig[17]~55_combout\,
	combout => \SLL64|Stage2_sig[17]~38_combout\);

-- Location: LCCOMB_X76_Y37_N22
\SLL64|Stage2_sig[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[17]~39_combout\ = (\SLL64|Stage2_sig[17]~37_combout\) # (\SLL64|Stage2_sig[17]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SLL64|Stage2_sig[17]~37_combout\,
	datad => \SLL64|Stage2_sig[17]~38_combout\,
	combout => \SLL64|Stage2_sig[17]~39_combout\);

-- Location: LCCOMB_X76_Y41_N10
\SRA_SRL_sig[49]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[49]~45_combout\ = (\SRA_SRL_sig[48]~35_combout\) # ((\SRA64|Stage1_sig[61]~3_combout\ & (\SgnExtLower_sig[31]~0_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[48]~35_combout\,
	datab => \SRA64|Stage1_sig[61]~3_combout\,
	datac => \SgnExtLower_sig[31]~0_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SRA_SRL_sig[49]~45_combout\);

-- Location: LCCOMB_X76_Y41_N16
\SRA_SRL_sig[49]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[49]~44_combout\ = (!\SRA64|Equal8~1_combout\ & (\SRL64|Stage1_sig[61]~169_combout\ & (!\ShiftFN[0]~input_o\ & \SRL64|Stage2_sig[44]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal8~1_combout\,
	datab => \SRL64|Stage1_sig[61]~169_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SRA_SRL_sig[49]~44_combout\);

-- Location: LCCOMB_X76_Y41_N22
\SRA_SRL_sig[49]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[49]~43_combout\ = (!\SRA64|Equal8~1_combout\ & ((\SRA64|Stage2_sig[49]~28_combout\) # ((\SRL64|Stage1_sig[53]~269_combout\ & \SRA64|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[53]~269_combout\,
	datab => \SRA64|Equal5~0_combout\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \SRA64|Stage2_sig[49]~28_combout\,
	combout => \SRA_SRL_sig[49]~43_combout\);

-- Location: LCCOMB_X76_Y41_N28
\SRA_SRL_sig[49]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[49]~46_combout\ = (\SRA_SRL_sig[49]~45_combout\) # ((\SRA_SRL_sig[49]~44_combout\) # (\SRA_SRL_sig[49]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[49]~45_combout\,
	datab => \SRA_SRL_sig[49]~44_combout\,
	datac => \SRA_SRL_sig[49]~43_combout\,
	combout => \SRA_SRL_sig[49]~46_combout\);

-- Location: LCCOMB_X80_Y43_N24
\Y_sig~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~156_combout\ = (\ShiftFN[1]~input_o\) # ((\ShiftFN[0]~input_o\ & \SRA64|Equal8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datad => \SRA64|Equal8~1_combout\,
	combout => \Y_sig~156_combout\);

-- Location: LCCOMB_X79_Y40_N16
\Y_sig~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~155_combout\ = (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_sig~155_combout\);

-- Location: IOIBUF_X81_Y73_N1
\C[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(17),
	o => \C[17]~input_o\);

-- Location: LCCOMB_X80_Y43_N26
\Y_sig~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~157_combout\ = (\Y_sig~156_combout\ & (\SRA_SRL_sig[49]~46_combout\ & (!\Y_sig~155_combout\))) # (!\Y_sig~156_combout\ & (((\Y_sig~155_combout\) # (\C[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[49]~46_combout\,
	datab => \Y_sig~156_combout\,
	datac => \Y_sig~155_combout\,
	datad => \C[17]~input_o\,
	combout => \Y_sig~157_combout\);

-- Location: LCCOMB_X79_Y42_N2
\Y_sig~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~345_combout\ = (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & ((\SRA64|Equal8~0_combout\) # (!\SRA64|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal8~0_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_sig~345_combout\);

-- Location: LCCOMB_X79_Y41_N10
\Y_sig~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~158_combout\ = (\Y_sig~157_combout\ & (((\SLL64|Stage2_sig[17]~39_combout\) # (!\Y_sig~345_combout\)))) # (!\Y_sig~157_combout\ & (\SLL64|Stage2_sig[1]~104_combout\ & ((\Y_sig~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[1]~104_combout\,
	datab => \SLL64|Stage2_sig[17]~39_combout\,
	datac => \Y_sig~157_combout\,
	datad => \Y_sig~345_combout\,
	combout => \Y_sig~158_combout\);

-- Location: LCCOMB_X77_Y41_N22
\Y_sig~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~149_combout\ = (\ShiftFN[0]~input_o\ & (((!\ExtWord~input_o\ & \B[5]~input_o\)) # (!\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_sig~149_combout\);

-- Location: LCCOMB_X77_Y41_N8
\Y_sig~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~150_combout\ = (\ExtWord~input_o\ & (((\B[4]~input_o\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (!\B[4]~input_o\ & !\ShiftFN[0]~input_o\)) # (!\B[5]~input_o\ & (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_sig~150_combout\);

-- Location: LCCOMB_X77_Y41_N10
\Y_sig~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~151_combout\ = (\ExtWord~input_o\ & (((\B[4]~input_o\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (!\B[4]~input_o\ & \ShiftFN[0]~input_o\)) # (!\B[5]~input_o\ & (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_sig~151_combout\);

-- Location: LCCOMB_X75_Y41_N10
\Y_sig~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~152_combout\ = (\Y_sig~150_combout\ & ((\Y_sig~151_combout\ & (\SRL64|Stage2_sig[33]~42_combout\)) # (!\Y_sig~151_combout\ & ((\SRL64|Stage2_sig[49]~43_combout\))))) # (!\Y_sig~150_combout\ & (((\Y_sig~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[33]~42_combout\,
	datab => \SRL64|Stage2_sig[49]~43_combout\,
	datac => \Y_sig~150_combout\,
	datad => \Y_sig~151_combout\,
	combout => \Y_sig~152_combout\);

-- Location: LCCOMB_X75_Y41_N12
\Y_sig~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~153_combout\ = (\Y_sig~149_combout\ & ((\Y_sig~152_combout\ & ((\SRA64|Stage2_sig[49]~30_combout\))) # (!\Y_sig~152_combout\ & (\X_sig[63]~2_combout\)))) # (!\Y_sig~149_combout\ & (((\Y_sig~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_sig[63]~2_combout\,
	datab => \SRA64|Stage2_sig[49]~30_combout\,
	datac => \Y_sig~149_combout\,
	datad => \Y_sig~152_combout\,
	combout => \Y_sig~153_combout\);

-- Location: LCCOMB_X79_Y41_N16
\Y_sig~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~154_combout\ = (\Y_sig~51_combout\ & ((\SRA64|Equal8~1_combout\ & (\Y_sig~153_combout\)) # (!\SRA64|Equal8~1_combout\ & ((\SRL64|Stage2_sig[17]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~51_combout\,
	datab => \SRA64|Equal8~1_combout\,
	datac => \Y_sig~153_combout\,
	datad => \SRL64|Stage2_sig[17]~46_combout\,
	combout => \Y_sig~154_combout\);

-- Location: LCCOMB_X79_Y41_N20
\Y_sig~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~346_combout\ = (\Y_sig~154_combout\) # ((\Y_sig~158_combout\ & ((\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~158_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Y_sig~154_combout\,
	combout => \Y_sig~346_combout\);

-- Location: LCCOMB_X75_Y36_N2
\SLL64|Stage2_sig[18]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[18]~40_combout\ = (\SLL64|Stage1_sig[6]~39_combout\ & ((\SRL64|Stage2_sig[44]~32_combout\) # ((\SRA64|Equal5~0_combout\ & \SLL64|Stage1_sig[14]~51_combout\)))) # (!\SLL64|Stage1_sig[6]~39_combout\ & (\SRA64|Equal5~0_combout\ & 
-- (\SLL64|Stage1_sig[14]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[6]~39_combout\,
	datab => \SRA64|Equal5~0_combout\,
	datac => \SLL64|Stage1_sig[14]~51_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SLL64|Stage2_sig[18]~40_combout\);

-- Location: LCCOMB_X70_Y38_N20
\SLL64|Stage1_sig[19]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[19]~57_combout\ = (\SRL64|Stage1_sig[48]~142_combout\) # (\SRL64|Stage1_sig[48]~189_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage1_sig[48]~142_combout\,
	datad => \SRL64|Stage1_sig[48]~189_combout\,
	combout => \SLL64|Stage1_sig[19]~57_combout\);

-- Location: LCCOMB_X69_Y38_N30
\SLL64|Stage1_sig[18]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[18]~112_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~82_combout\) # (\SRL64|Stage1_sig[48]~192_combout\)))) # (!\B[0]~input_o\ & (\SLL64|Stage1_sig[19]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[19]~57_combout\,
	datab => \SRL64|Stage1_sig[48]~82_combout\,
	datac => \SRL64|Stage1_sig[48]~192_combout\,
	datad => \B[0]~input_o\,
	combout => \SLL64|Stage1_sig[18]~112_combout\);

-- Location: LCCOMB_X75_Y36_N28
\SLL64|Stage2_sig[18]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[18]~41_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SLL64|Stage1_sig[18]~112_combout\) # ((\SLL64|Stage1_sig[10]~45_combout\ & \SRL64|Stage2_sig[48]~28_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- (\SLL64|Stage1_sig[10]~45_combout\ & ((\SRL64|Stage2_sig[48]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SLL64|Stage1_sig[10]~45_combout\,
	datac => \SLL64|Stage1_sig[18]~112_combout\,
	datad => \SRL64|Stage2_sig[48]~28_combout\,
	combout => \SLL64|Stage2_sig[18]~41_combout\);

-- Location: LCCOMB_X75_Y36_N14
\SLL64|Stage2_sig[18]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[18]~42_combout\ = (\SLL64|Stage2_sig[18]~40_combout\) # (\SLL64|Stage2_sig[18]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64|Stage2_sig[18]~40_combout\,
	datad => \SLL64|Stage2_sig[18]~41_combout\,
	combout => \SLL64|Stage2_sig[18]~42_combout\);

-- Location: LCCOMB_X76_Y39_N4
\SRA_SRL_sig[50]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[50]~47_combout\ = (!\B[4]~input_o\ & (\B[2]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SRA_SRL_sig[50]~47_combout\);

-- Location: LCCOMB_X76_Y43_N26
\SRA_SRL_sig[50]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[50]~48_combout\ = (\B[3]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA64|Stage1_sig[62]~4_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRL64|Stage1_sig[62]~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRL64|Stage1_sig[62]~227_combout\,
	datac => \SRA64|Stage1_sig[62]~4_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA_SRL_sig[50]~48_combout\);

-- Location: LCCOMB_X76_Y43_N12
\SRA_SRL_sig[50]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[50]~49_combout\ = (\SRA_SRL_sig[50]~47_combout\ & ((\SRA_SRL_sig[50]~48_combout\) # ((\SRL64|Stage1_sig[54]~226_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[54]~226_combout\,
	datab => \SRA_SRL_sig[50]~47_combout\,
	datac => \SRA_SRL_sig[50]~48_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA_SRL_sig[50]~49_combout\);

-- Location: LCCOMB_X76_Y43_N22
\SRA_SRL_sig[50]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[50]~50_combout\ = (\SRA_SRL_sig[48]~35_combout\) # ((\SRA_SRL_sig[50]~49_combout\) # ((!\SRA64|Equal8~1_combout\ & \SRA64|Stage2_sig[50]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[48]~35_combout\,
	datab => \SRA64|Equal8~1_combout\,
	datac => \SRA64|Stage2_sig[50]~32_combout\,
	datad => \SRA_SRL_sig[50]~49_combout\,
	combout => \SRA_SRL_sig[50]~50_combout\);

-- Location: IOIBUF_X81_Y73_N22
\C[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(18),
	o => \C[18]~input_o\);

-- Location: LCCOMB_X80_Y43_N12
\Y_sig~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~162_combout\ = (\Y_sig~155_combout\ & (((!\Y_sig~156_combout\)))) # (!\Y_sig~155_combout\ & ((\Y_sig~156_combout\ & (\SRA_SRL_sig[50]~50_combout\)) # (!\Y_sig~156_combout\ & ((\C[18]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~155_combout\,
	datab => \SRA_SRL_sig[50]~50_combout\,
	datac => \C[18]~input_o\,
	datad => \Y_sig~156_combout\,
	combout => \Y_sig~162_combout\);

-- Location: LCCOMB_X77_Y43_N18
\Y_sig~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~163_combout\ = (\Y_sig~345_combout\ & ((\Y_sig~162_combout\ & ((\SLL64|Stage2_sig[18]~42_combout\))) # (!\Y_sig~162_combout\ & (\SLL64|Stage2_sig[2]~14_combout\)))) # (!\Y_sig~345_combout\ & (((\Y_sig~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~345_combout\,
	datab => \SLL64|Stage2_sig[2]~14_combout\,
	datac => \SLL64|Stage2_sig[18]~42_combout\,
	datad => \Y_sig~162_combout\,
	combout => \Y_sig~163_combout\);

-- Location: LCCOMB_X77_Y43_N28
\Y_sig~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~159_combout\ = (\Y_sig~151_combout\ & (((\SRL64|Stage2_sig[34]~51_combout\)) # (!\Y_sig~150_combout\))) # (!\Y_sig~151_combout\ & (\Y_sig~150_combout\ & (\SRL64|Stage2_sig[50]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~151_combout\,
	datab => \Y_sig~150_combout\,
	datac => \SRL64|Stage2_sig[50]~52_combout\,
	datad => \SRL64|Stage2_sig[34]~51_combout\,
	combout => \Y_sig~159_combout\);

-- Location: LCCOMB_X77_Y43_N6
\Y_sig~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~160_combout\ = (\Y_sig~149_combout\ & ((\Y_sig~159_combout\ & (\SRA64|Stage2_sig[50]~33_combout\)) # (!\Y_sig~159_combout\ & ((\X_sig[63]~2_combout\))))) # (!\Y_sig~149_combout\ & (((\Y_sig~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Stage2_sig[50]~33_combout\,
	datab => \Y_sig~149_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \Y_sig~159_combout\,
	combout => \Y_sig~160_combout\);

-- Location: LCCOMB_X77_Y43_N16
\Y_sig~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~161_combout\ = (\Y_sig~51_combout\ & ((\SRA64|Equal8~1_combout\ & ((\Y_sig~160_combout\))) # (!\SRA64|Equal8~1_combout\ & (\SRL64|Stage2_sig[18]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~51_combout\,
	datab => \SRL64|Stage2_sig[18]~55_combout\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \Y_sig~160_combout\,
	combout => \Y_sig~161_combout\);

-- Location: LCCOMB_X77_Y43_N22
\Y_sig~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~347_combout\ = (\Y_sig~161_combout\) # ((\Y_sig~163_combout\ & ((\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~163_combout\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_sig~161_combout\,
	combout => \Y_sig~347_combout\);

-- Location: IOIBUF_X115_Y36_N8
\C[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(19),
	o => \C[19]~input_o\);

-- Location: LCCOMB_X74_Y42_N6
\SRA_SRL_sig[51]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[51]~51_combout\ = (\X_sig[63]~2_combout\ & ((\ShiftFN[0]~input_o\) # ((!\B[1]~input_o\ & !\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \X_sig[63]~2_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SRA_SRL_sig[51]~51_combout\);

-- Location: LCCOMB_X74_Y42_N24
\SRA_SRL_sig[51]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[51]~52_combout\ = (\SRL64|Stage2_sig[48]~28_combout\ & ((\SRL64|Stage1_sig[59]~246_combout\) # ((\SRL64|Stage2_sig[44]~32_combout\ & \SRA_SRL_sig[51]~51_combout\)))) # (!\SRL64|Stage2_sig[48]~28_combout\ & (((\SRL64|Stage2_sig[44]~32_combout\ 
-- & \SRA_SRL_sig[51]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~28_combout\,
	datab => \SRL64|Stage1_sig[59]~246_combout\,
	datac => \SRL64|Stage2_sig[44]~32_combout\,
	datad => \SRA_SRL_sig[51]~51_combout\,
	combout => \SRA_SRL_sig[51]~52_combout\);

-- Location: LCCOMB_X74_Y42_N18
\SRA_SRL_sig[51]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[51]~53_combout\ = (\SRA_SRL_sig[48]~35_combout\) # ((!\SRA64|Equal8~1_combout\ & ((\SRA_SRL_sig[51]~52_combout\) # (!\SRA64|Stage2_sig[51]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[48]~35_combout\,
	datab => \SRA64|Stage2_sig[51]~35_combout\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \SRA_SRL_sig[51]~52_combout\,
	combout => \SRA_SRL_sig[51]~53_combout\);

-- Location: LCCOMB_X80_Y43_N22
\Y_sig~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~167_combout\ = (\Y_sig~155_combout\ & (!\Y_sig~156_combout\)) # (!\Y_sig~155_combout\ & ((\Y_sig~156_combout\ & ((\SRA_SRL_sig[51]~53_combout\))) # (!\Y_sig~156_combout\ & (\C[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~155_combout\,
	datab => \Y_sig~156_combout\,
	datac => \C[19]~input_o\,
	datad => \SRA_SRL_sig[51]~53_combout\,
	combout => \Y_sig~167_combout\);

-- Location: LCCOMB_X74_Y38_N10
\SLL64|Stage2_sig[19]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[19]~43_combout\ = (\SRA64|Equal5~0_combout\ & ((\SLL64|Stage1_sig[15]~52_combout\) # ((\SLL64|Stage1_sig[7]~40_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))) # (!\SRA64|Equal5~0_combout\ & (\SLL64|Stage1_sig[7]~40_combout\ & 
-- (\SRL64|Stage2_sig[44]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \SLL64|Stage1_sig[7]~40_combout\,
	datac => \SRL64|Stage2_sig[44]~32_combout\,
	datad => \SLL64|Stage1_sig[15]~52_combout\,
	combout => \SLL64|Stage2_sig[19]~43_combout\);

-- Location: LCCOMB_X70_Y38_N30
\SLL64|Stage1_sig[20]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[20]~58_combout\ = (\SRL64|Stage1_sig[48]~238_combout\) # (\SRL64|Stage1_sig[48]~200_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage1_sig[48]~238_combout\,
	datad => \SRL64|Stage1_sig[48]~200_combout\,
	combout => \SLL64|Stage1_sig[20]~58_combout\);

-- Location: LCCOMB_X70_Y38_N16
\SLL64|Stage1_sig[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[19]~59_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~189_combout\) # (\SRL64|Stage1_sig[48]~142_combout\)))) # (!\B[0]~input_o\ & (\SLL64|Stage1_sig[20]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[20]~58_combout\,
	datab => \SRL64|Stage1_sig[48]~189_combout\,
	datac => \SRL64|Stage1_sig[48]~142_combout\,
	datad => \B[0]~input_o\,
	combout => \SLL64|Stage1_sig[19]~59_combout\);

-- Location: LCCOMB_X74_Y38_N4
\SLL64|Stage2_sig[19]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[19]~44_combout\ = (\SLL64|Stage1_sig[19]~59_combout\ & ((\SRL64|Stage2_sig[48]~29_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SLL64|Stage1_sig[11]~46_combout\)))) # (!\SLL64|Stage1_sig[19]~59_combout\ & 
-- (((\SRL64|Stage2_sig[48]~28_combout\ & \SLL64|Stage1_sig[11]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[19]~59_combout\,
	datab => \SRL64|Stage2_sig[48]~29_combout\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SLL64|Stage1_sig[11]~46_combout\,
	combout => \SLL64|Stage2_sig[19]~44_combout\);

-- Location: LCCOMB_X74_Y38_N30
\SLL64|Stage2_sig[19]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[19]~45_combout\ = (\SLL64|Stage2_sig[19]~43_combout\) # (\SLL64|Stage2_sig[19]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[19]~43_combout\,
	datac => \SLL64|Stage2_sig[19]~44_combout\,
	combout => \SLL64|Stage2_sig[19]~45_combout\);

-- Location: LCCOMB_X76_Y38_N0
\Y_sig~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~168_combout\ = (\Y_sig~167_combout\ & (((\SLL64|Stage2_sig[19]~45_combout\) # (!\Y_sig~345_combout\)))) # (!\Y_sig~167_combout\ & (\SLL64|Stage2_sig[3]~105_combout\ & (\Y_sig~345_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~167_combout\,
	datab => \SLL64|Stage2_sig[3]~105_combout\,
	datac => \Y_sig~345_combout\,
	datad => \SLL64|Stage2_sig[19]~45_combout\,
	combout => \Y_sig~168_combout\);

-- Location: LCCOMB_X74_Y42_N16
\Y_sig~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~164_combout\ = (\Y_sig~150_combout\ & ((\Y_sig~151_combout\ & ((\SRL64|Stage2_sig[35]~60_combout\))) # (!\Y_sig~151_combout\ & (\SRL64|Stage2_sig[51]~61_combout\)))) # (!\Y_sig~150_combout\ & (((\Y_sig~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[51]~61_combout\,
	datab => \Y_sig~150_combout\,
	datac => \Y_sig~151_combout\,
	datad => \SRL64|Stage2_sig[35]~60_combout\,
	combout => \Y_sig~164_combout\);

-- Location: LCCOMB_X74_Y42_N26
\Y_sig~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~165_combout\ = (\Y_sig~149_combout\ & ((\Y_sig~164_combout\ & (\SRA64|Stage2_sig[51]~36_combout\)) # (!\Y_sig~164_combout\ & ((\X_sig[63]~2_combout\))))) # (!\Y_sig~149_combout\ & (((\Y_sig~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~149_combout\,
	datab => \SRA64|Stage2_sig[51]~36_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \Y_sig~164_combout\,
	combout => \Y_sig~165_combout\);

-- Location: LCCOMB_X74_Y42_N12
\Y_sig~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~166_combout\ = (\Y_sig~51_combout\ & ((\SRA64|Equal8~1_combout\ & ((\Y_sig~165_combout\))) # (!\SRA64|Equal8~1_combout\ & (\SRL64|Stage2_sig[19]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[19]~64_combout\,
	datab => \SRA64|Equal8~1_combout\,
	datac => \Y_sig~51_combout\,
	datad => \Y_sig~165_combout\,
	combout => \Y_sig~166_combout\);

-- Location: LCCOMB_X74_Y42_N22
\Y_sig~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~348_combout\ = (\Y_sig~166_combout\) # ((\Y_sig~168_combout\ & ((\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Y_sig~168_combout\,
	datad => \Y_sig~166_combout\,
	combout => \Y_sig~348_combout\);

-- Location: LCCOMB_X79_Y42_N26
\SRA_SRL_sig[52]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[52]~54_combout\ = (\X_sig[63]~2_combout\ & (\ShiftFN[0]~input_o\ & ((\SRL64|Stage2_sig[44]~32_combout\) # (\SRA64|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[44]~32_combout\,
	datab => \X_sig[63]~2_combout\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SRA_SRL_sig[52]~54_combout\);

-- Location: LCCOMB_X73_Y40_N18
\SRA_SRL_sig[52]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[52]~55_combout\ = (\SRA_SRL_sig[52]~54_combout\) # ((!\SRA64|Equal8~1_combout\ & ((\SRL64|Stage2_sig[52]~66_combout\) # (\SRA64|Stage2_sig[52]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[52]~66_combout\,
	datab => \SRA_SRL_sig[52]~54_combout\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \SRA64|Stage2_sig[52]~37_combout\,
	combout => \SRA_SRL_sig[52]~55_combout\);

-- Location: IOIBUF_X89_Y73_N22
\C[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(20),
	o => \C[20]~input_o\);

-- Location: LCCOMB_X80_Y43_N0
\Y_sig~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~171_combout\ = (\Y_sig~155_combout\ & (((!\Y_sig~156_combout\)))) # (!\Y_sig~155_combout\ & ((\Y_sig~156_combout\ & (\SRA_SRL_sig[52]~55_combout\)) # (!\Y_sig~156_combout\ & ((\C[20]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~155_combout\,
	datab => \SRA_SRL_sig[52]~55_combout\,
	datac => \C[20]~input_o\,
	datad => \Y_sig~156_combout\,
	combout => \Y_sig~171_combout\);

-- Location: LCCOMB_X70_Y38_N2
\SLL64|Stage1_sig[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[20]~60_combout\ = (\B[0]~input_o\ & (\SLL64|Stage1_sig[20]~58_combout\)) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~262_combout\) # (\SRL64|Stage1_sig[48]~242_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[20]~58_combout\,
	datab => \SRL64|Stage1_sig[48]~262_combout\,
	datac => \SRL64|Stage1_sig[48]~242_combout\,
	datad => \B[0]~input_o\,
	combout => \SLL64|Stage1_sig[20]~60_combout\);

-- Location: LCCOMB_X75_Y38_N12
\SLL64|Stage2_sig[20]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[20]~47_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SLL64|Stage1_sig[20]~60_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SLL64|Stage1_sig[12]~48_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- (((\SRL64|Stage2_sig[48]~28_combout\ & \SLL64|Stage1_sig[12]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SLL64|Stage1_sig[20]~60_combout\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SLL64|Stage1_sig[12]~48_combout\,
	combout => \SLL64|Stage2_sig[20]~47_combout\);

-- Location: LCCOMB_X75_Y38_N18
\SLL64|Stage2_sig[20]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[20]~46_combout\ = (\SLL64|Stage1_sig[16]~54_combout\ & ((\SRA64|Equal5~0_combout\) # ((\SLL64|Stage1_sig[8]~42_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))) # (!\SLL64|Stage1_sig[16]~54_combout\ & (\SLL64|Stage1_sig[8]~42_combout\ & 
-- ((\SRL64|Stage2_sig[44]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[16]~54_combout\,
	datab => \SLL64|Stage1_sig[8]~42_combout\,
	datac => \SRA64|Equal5~0_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SLL64|Stage2_sig[20]~46_combout\);

-- Location: LCCOMB_X75_Y38_N30
\SLL64|Stage2_sig[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[20]~48_combout\ = (\SLL64|Stage2_sig[20]~47_combout\) # (\SLL64|Stage2_sig[20]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[20]~47_combout\,
	datad => \SLL64|Stage2_sig[20]~46_combout\,
	combout => \SLL64|Stage2_sig[20]~48_combout\);

-- Location: LCCOMB_X75_Y40_N24
\Y_sig~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~172_combout\ = (\Y_sig~171_combout\ & ((\SLL64|Stage2_sig[20]~48_combout\) # ((!\Y_sig~345_combout\)))) # (!\Y_sig~171_combout\ & (((\Y_sig~345_combout\ & \SLL64|Stage2_sig[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~171_combout\,
	datab => \SLL64|Stage2_sig[20]~48_combout\,
	datac => \Y_sig~345_combout\,
	datad => \SLL64|Stage2_sig[4]~16_combout\,
	combout => \Y_sig~172_combout\);

-- Location: LCCOMB_X74_Y40_N4
\Y_sig~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~169_combout\ = (\Y_sig~150_combout\ & ((\Y_sig~151_combout\ & (\SRL64|Stage2_sig[36]~69_combout\)) # (!\Y_sig~151_combout\ & ((!\SRL64|Stage2_sig[52]~155_combout\))))) # (!\Y_sig~150_combout\ & (\Y_sig~151_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~150_combout\,
	datab => \Y_sig~151_combout\,
	datac => \SRL64|Stage2_sig[36]~69_combout\,
	datad => \SRL64|Stage2_sig[52]~155_combout\,
	combout => \Y_sig~169_combout\);

-- Location: LCCOMB_X75_Y40_N6
\Y_sig~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~170_combout\ = (\Y_sig~169_combout\ & ((\SRA64|Stage2_sig[52]~38_combout\) # ((!\Y_sig~149_combout\)))) # (!\Y_sig~169_combout\ & (((\X_sig[63]~2_combout\ & \Y_sig~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Stage2_sig[52]~38_combout\,
	datab => \X_sig[63]~2_combout\,
	datac => \Y_sig~169_combout\,
	datad => \Y_sig~149_combout\,
	combout => \Y_sig~170_combout\);

-- Location: LCCOMB_X75_Y40_N26
\Y_sig~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~173_combout\ = (\Y_sig~51_combout\ & (((\Y_sig~41_combout\ & \Y_sig~170_combout\)))) # (!\Y_sig~51_combout\ & ((\Y_sig~172_combout\) # ((\Y_sig~41_combout\ & \Y_sig~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~51_combout\,
	datab => \Y_sig~172_combout\,
	datac => \Y_sig~41_combout\,
	datad => \Y_sig~170_combout\,
	combout => \Y_sig~173_combout\);

-- Location: LCCOMB_X73_Y38_N6
\Y_sig~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~349_combout\ = (\Y_sig~173_combout\) # ((\Y_sig~36_combout\ & ((\SRL64|Stage2_sig[20]~71_combout\) # (\SRL64|Stage2_sig[20]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~173_combout\,
	datab => \Y_sig~36_combout\,
	datac => \SRL64|Stage2_sig[20]~71_combout\,
	datad => \SRL64|Stage2_sig[20]~70_combout\,
	combout => \Y_sig~349_combout\);

-- Location: LCCOMB_X68_Y38_N22
\SLL64|Stage1_sig[22]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[22]~61_combout\ = (\SRL64|Stage1_sig[48]~191_combout\) # (\SRL64|Stage1_sig[48]~180_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~191_combout\,
	datad => \SRL64|Stage1_sig[48]~180_combout\,
	combout => \SLL64|Stage1_sig[22]~61_combout\);

-- Location: LCCOMB_X70_Y38_N28
\SLL64|Stage1_sig[21]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[21]~62_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~262_combout\) # ((\SRL64|Stage1_sig[48]~242_combout\)))) # (!\B[0]~input_o\ & (((\SLL64|Stage1_sig[22]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[48]~262_combout\,
	datac => \SRL64|Stage1_sig[48]~242_combout\,
	datad => \SLL64|Stage1_sig[22]~61_combout\,
	combout => \SLL64|Stage1_sig[21]~62_combout\);

-- Location: LCCOMB_X76_Y37_N8
\SLL64|Stage2_sig[21]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[21]~50_combout\ = (\SLL64|Stage1_sig[21]~62_combout\ & ((\SRL64|Stage2_sig[48]~29_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SLL64|Stage1_sig[13]~49_combout\)))) # (!\SLL64|Stage1_sig[21]~62_combout\ & 
-- (\SRL64|Stage2_sig[48]~28_combout\ & ((\SLL64|Stage1_sig[13]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[21]~62_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SRL64|Stage2_sig[48]~29_combout\,
	datad => \SLL64|Stage1_sig[13]~49_combout\,
	combout => \SLL64|Stage2_sig[21]~50_combout\);

-- Location: LCCOMB_X69_Y38_N6
\SLL64|Stage1_sig[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[18]~56_combout\ = (\SRL64|Stage1_sig[48]~82_combout\) # (\SRL64|Stage1_sig[48]~192_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~82_combout\,
	datac => \SRL64|Stage1_sig[48]~192_combout\,
	combout => \SLL64|Stage1_sig[18]~56_combout\);

-- Location: LCCOMB_X69_Y38_N8
\SLL64|Stage2_sig[21]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[21]~49_combout\ = (\SRA64|Equal5~0_combout\ & ((\B[0]~input_o\ & (\SLL64|Stage1_sig[17]~53_combout\)) # (!\B[0]~input_o\ & ((\SLL64|Stage1_sig[18]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SLL64|Stage1_sig[17]~53_combout\,
	datac => \SRA64|Equal5~0_combout\,
	datad => \SLL64|Stage1_sig[18]~56_combout\,
	combout => \SLL64|Stage2_sig[21]~49_combout\);

-- Location: LCCOMB_X76_Y37_N10
\SLL64|Stage2_sig[21]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[21]~51_combout\ = (\SLL64|Stage2_sig[21]~50_combout\) # ((\SLL64|Stage2_sig[21]~49_combout\) # ((\SLL64|Stage1_sig[9]~43_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[9]~43_combout\,
	datab => \SRL64|Stage2_sig[44]~32_combout\,
	datac => \SLL64|Stage2_sig[21]~50_combout\,
	datad => \SLL64|Stage2_sig[21]~49_combout\,
	combout => \SLL64|Stage2_sig[21]~51_combout\);

-- Location: LCCOMB_X77_Y41_N24
\SRA_SRL_sig[53]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[53]~56_combout\ = (!\SRA64|Equal8~1_combout\ & ((\ShiftFN[0]~input_o\ & (\SRA64|Stage2_sig[53]~40_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRL64|Stage2_sig[53]~156_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Stage2_sig[53]~40_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \SRL64|Stage2_sig[53]~156_combout\,
	combout => \SRA_SRL_sig[53]~56_combout\);

-- Location: LCCOMB_X77_Y41_N2
\SRA_SRL_sig[53]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[53]~57_combout\ = (\SRA_SRL_sig[48]~35_combout\) # (\SRA_SRL_sig[53]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRA_SRL_sig[48]~35_combout\,
	datad => \SRA_SRL_sig[53]~56_combout\,
	combout => \SRA_SRL_sig[53]~57_combout\);

-- Location: IOIBUF_X115_Y61_N15
\C[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(21),
	o => \C[21]~input_o\);

-- Location: LCCOMB_X80_Y43_N18
\Y_sig~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~177_combout\ = (\Y_sig~156_combout\ & (\SRA_SRL_sig[53]~57_combout\ & (!\Y_sig~155_combout\))) # (!\Y_sig~156_combout\ & (((\Y_sig~155_combout\) # (\C[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[53]~57_combout\,
	datab => \Y_sig~156_combout\,
	datac => \Y_sig~155_combout\,
	datad => \C[21]~input_o\,
	combout => \Y_sig~177_combout\);

-- Location: LCCOMB_X79_Y41_N6
\Y_sig~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~178_combout\ = (\Y_sig~345_combout\ & ((\Y_sig~177_combout\ & (\SLL64|Stage2_sig[21]~51_combout\)) # (!\Y_sig~177_combout\ & ((\SLL64|Stage2_sig[5]~17_combout\))))) # (!\Y_sig~345_combout\ & (((\Y_sig~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[21]~51_combout\,
	datab => \Y_sig~345_combout\,
	datac => \SLL64|Stage2_sig[5]~17_combout\,
	datad => \Y_sig~177_combout\,
	combout => \Y_sig~178_combout\);

-- Location: LCCOMB_X77_Y41_N28
\Y_sig~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~174_combout\ = (\Y_sig~151_combout\ & ((\SRL64|Stage2_sig[37]~75_combout\) # ((!\Y_sig~150_combout\)))) # (!\Y_sig~151_combout\ & (((\Y_sig~150_combout\ & \SRL64|Stage2_sig[53]~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~151_combout\,
	datab => \SRL64|Stage2_sig[37]~75_combout\,
	datac => \Y_sig~150_combout\,
	datad => \SRL64|Stage2_sig[53]~156_combout\,
	combout => \Y_sig~174_combout\);

-- Location: LCCOMB_X77_Y41_N14
\Y_sig~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~175_combout\ = (\Y_sig~149_combout\ & ((\Y_sig~174_combout\ & (\SRA64|Stage2_sig[53]~40_combout\)) # (!\Y_sig~174_combout\ & ((\X_sig[63]~2_combout\))))) # (!\Y_sig~149_combout\ & (((\Y_sig~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Stage2_sig[53]~40_combout\,
	datab => \Y_sig~149_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \Y_sig~174_combout\,
	combout => \Y_sig~175_combout\);

-- Location: LCCOMB_X79_Y41_N28
\Y_sig~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~176_combout\ = (\Y_sig~51_combout\ & ((\SRA64|Equal8~1_combout\ & ((\Y_sig~175_combout\))) # (!\SRA64|Equal8~1_combout\ & (\SRL64|Stage2_sig[21]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~51_combout\,
	datab => \SRA64|Equal8~1_combout\,
	datac => \SRL64|Stage2_sig[21]~79_combout\,
	datad => \Y_sig~175_combout\,
	combout => \Y_sig~176_combout\);

-- Location: LCCOMB_X79_Y41_N22
\Y_sig~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~350_combout\ = (\Y_sig~176_combout\) # ((\Y_sig~178_combout\ & ((\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~178_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Y_sig~176_combout\,
	combout => \Y_sig~350_combout\);

-- Location: LCCOMB_X68_Y38_N24
\SLL64|Stage1_sig[23]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[23]~63_combout\ = (\SRL64|Stage1_sig[48]~177_combout\) # (\SRL64|Stage1_sig[48]~188_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~177_combout\,
	datac => \SRL64|Stage1_sig[48]~188_combout\,
	combout => \SLL64|Stage1_sig[23]~63_combout\);

-- Location: LCCOMB_X68_Y38_N18
\SLL64|Stage1_sig[22]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[22]~113_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~191_combout\) # (\SRL64|Stage1_sig[48]~180_combout\)))) # (!\B[0]~input_o\ & (\SLL64|Stage1_sig[23]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SLL64|Stage1_sig[23]~63_combout\,
	datac => \SRL64|Stage1_sig[48]~191_combout\,
	datad => \SRL64|Stage1_sig[48]~180_combout\,
	combout => \SLL64|Stage1_sig[22]~113_combout\);

-- Location: LCCOMB_X75_Y36_N18
\SLL64|Stage2_sig[22]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[22]~53_combout\ = (\SLL64|Stage1_sig[14]~51_combout\ & ((\SRL64|Stage2_sig[48]~28_combout\) # ((\SLL64|Stage1_sig[22]~113_combout\ & \SRL64|Stage2_sig[48]~29_combout\)))) # (!\SLL64|Stage1_sig[14]~51_combout\ & 
-- (((\SLL64|Stage1_sig[22]~113_combout\ & \SRL64|Stage2_sig[48]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[14]~51_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SLL64|Stage1_sig[22]~113_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \SLL64|Stage2_sig[22]~53_combout\);

-- Location: LCCOMB_X75_Y36_N0
\SLL64|Stage2_sig[22]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[22]~52_combout\ = (\SLL64|Stage1_sig[18]~112_combout\ & ((\SRA64|Equal5~0_combout\) # ((\SLL64|Stage1_sig[10]~45_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))) # (!\SLL64|Stage1_sig[18]~112_combout\ & (\SLL64|Stage1_sig[10]~45_combout\ 
-- & ((\SRL64|Stage2_sig[44]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[18]~112_combout\,
	datab => \SLL64|Stage1_sig[10]~45_combout\,
	datac => \SRA64|Equal5~0_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SLL64|Stage2_sig[22]~52_combout\);

-- Location: LCCOMB_X75_Y36_N4
\SLL64|Stage2_sig[22]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[22]~54_combout\ = (\SLL64|Stage2_sig[22]~53_combout\) # (\SLL64|Stage2_sig[22]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64|Stage2_sig[22]~53_combout\,
	datad => \SLL64|Stage2_sig[22]~52_combout\,
	combout => \SLL64|Stage2_sig[22]~54_combout\);

-- Location: IOIBUF_X115_Y46_N1
\C[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(22),
	o => \C[22]~input_o\);

-- Location: LCCOMB_X79_Y40_N20
\SRA_SRL_sig[54]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[54]~58_combout\ = (!\SRA64|Equal8~1_combout\ & ((\ShiftFN[0]~input_o\ & (\SRA64|Stage2_sig[54]~42_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRL64|Stage2_sig[54]~158_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Stage2_sig[54]~42_combout\,
	datab => \SRL64|Stage2_sig[54]~158_combout\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SRA_SRL_sig[54]~58_combout\);

-- Location: LCCOMB_X79_Y40_N6
\SRA_SRL_sig[54]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[54]~59_combout\ = (\SRA_SRL_sig[48]~35_combout\) # (\SRA_SRL_sig[54]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA_SRL_sig[48]~35_combout\,
	datad => \SRA_SRL_sig[54]~58_combout\,
	combout => \SRA_SRL_sig[54]~59_combout\);

-- Location: LCCOMB_X80_Y43_N20
\Y_sig~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~182_combout\ = (\Y_sig~155_combout\ & (((!\Y_sig~156_combout\)))) # (!\Y_sig~155_combout\ & ((\Y_sig~156_combout\ & ((\SRA_SRL_sig[54]~59_combout\))) # (!\Y_sig~156_combout\ & (\C[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[22]~input_o\,
	datab => \SRA_SRL_sig[54]~59_combout\,
	datac => \Y_sig~155_combout\,
	datad => \Y_sig~156_combout\,
	combout => \Y_sig~182_combout\);

-- Location: LCCOMB_X79_Y39_N26
\Y_sig~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~183_combout\ = (\Y_sig~345_combout\ & ((\Y_sig~182_combout\ & (\SLL64|Stage2_sig[22]~54_combout\)) # (!\Y_sig~182_combout\ & ((\SLL64|Stage2_sig[6]~18_combout\))))) # (!\Y_sig~345_combout\ & (((\Y_sig~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[22]~54_combout\,
	datab => \Y_sig~345_combout\,
	datac => \SLL64|Stage2_sig[6]~18_combout\,
	datad => \Y_sig~182_combout\,
	combout => \Y_sig~183_combout\);

-- Location: LCCOMB_X74_Y43_N28
\Y_sig~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~179_combout\ = (\Y_sig~151_combout\ & (((\SRL64|Stage2_sig[38]~83_combout\)) # (!\Y_sig~150_combout\))) # (!\Y_sig~151_combout\ & (\Y_sig~150_combout\ & (\SRL64|Stage2_sig[54]~158_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~151_combout\,
	datab => \Y_sig~150_combout\,
	datac => \SRL64|Stage2_sig[54]~158_combout\,
	datad => \SRL64|Stage2_sig[38]~83_combout\,
	combout => \Y_sig~179_combout\);

-- Location: LCCOMB_X79_Y40_N2
\Y_sig~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~180_combout\ = (\Y_sig~179_combout\ & (((\SRA64|Stage2_sig[54]~42_combout\) # (!\Y_sig~149_combout\)))) # (!\Y_sig~179_combout\ & (\X_sig[63]~2_combout\ & (\Y_sig~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~179_combout\,
	datab => \X_sig[63]~2_combout\,
	datac => \Y_sig~149_combout\,
	datad => \SRA64|Stage2_sig[54]~42_combout\,
	combout => \Y_sig~180_combout\);

-- Location: LCCOMB_X79_Y39_N16
\Y_sig~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~181_combout\ = (\Y_sig~51_combout\ & ((\SRA64|Equal8~1_combout\ & ((\Y_sig~180_combout\))) # (!\SRA64|Equal8~1_combout\ & (\SRL64|Stage2_sig[22]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[22]~86_combout\,
	datab => \Y_sig~51_combout\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \Y_sig~180_combout\,
	combout => \Y_sig~181_combout\);

-- Location: LCCOMB_X79_Y39_N18
\Y_sig~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~351_combout\ = (\Y_sig~181_combout\) # ((\Y_sig~183_combout\ & ((\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Y_sig~183_combout\,
	datad => \Y_sig~181_combout\,
	combout => \Y_sig~351_combout\);

-- Location: LCCOMB_X68_Y38_N10
\SLL64|Stage1_sig[24]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[24]~64_combout\ = (\SRL64|Stage1_sig[48]~237_combout\) # (\SRL64|Stage1_sig[48]~232_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~237_combout\,
	datac => \SRL64|Stage1_sig[48]~232_combout\,
	combout => \SLL64|Stage1_sig[24]~64_combout\);

-- Location: LCCOMB_X68_Y38_N28
\SLL64|Stage1_sig[23]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[23]~114_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~177_combout\) # ((\SRL64|Stage1_sig[48]~188_combout\)))) # (!\B[0]~input_o\ & (((\SLL64|Stage1_sig[24]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[48]~177_combout\,
	datac => \SRL64|Stage1_sig[48]~188_combout\,
	datad => \SLL64|Stage1_sig[24]~64_combout\,
	combout => \SLL64|Stage1_sig[23]~114_combout\);

-- Location: LCCOMB_X74_Y38_N18
\SLL64|Stage2_sig[23]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[23]~56_combout\ = (\SLL64|Stage1_sig[23]~114_combout\ & ((\SRL64|Stage2_sig[48]~29_combout\) # ((\SLL64|Stage1_sig[15]~52_combout\ & \SRL64|Stage2_sig[48]~28_combout\)))) # (!\SLL64|Stage1_sig[23]~114_combout\ & 
-- (\SLL64|Stage1_sig[15]~52_combout\ & (\SRL64|Stage2_sig[48]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[23]~114_combout\,
	datab => \SLL64|Stage1_sig[15]~52_combout\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \SLL64|Stage2_sig[23]~56_combout\);

-- Location: LCCOMB_X74_Y38_N24
\SLL64|Stage2_sig[23]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[23]~55_combout\ = (\SRL64|Stage2_sig[44]~32_combout\ & ((\SLL64|Stage1_sig[11]~46_combout\) # ((\SLL64|Stage1_sig[19]~59_combout\ & \SRA64|Equal5~0_combout\)))) # (!\SRL64|Stage2_sig[44]~32_combout\ & (\SLL64|Stage1_sig[19]~59_combout\ & 
-- (\SRA64|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[44]~32_combout\,
	datab => \SLL64|Stage1_sig[19]~59_combout\,
	datac => \SRA64|Equal5~0_combout\,
	datad => \SLL64|Stage1_sig[11]~46_combout\,
	combout => \SLL64|Stage2_sig[23]~55_combout\);

-- Location: LCCOMB_X74_Y38_N28
\SLL64|Stage2_sig[23]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[23]~57_combout\ = (\SLL64|Stage2_sig[23]~56_combout\) # (\SLL64|Stage2_sig[23]~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64|Stage2_sig[23]~56_combout\,
	datad => \SLL64|Stage2_sig[23]~55_combout\,
	combout => \SLL64|Stage2_sig[23]~57_combout\);

-- Location: LCCOMB_X76_Y40_N24
\SRA_SRL_sig[55]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[55]~60_combout\ = (!\SRA64|Equal8~1_combout\ & (!\ShiftFN[0]~input_o\ & \SRL64|Stage2_sig[55]~160_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA64|Equal8~1_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRL64|Stage2_sig[55]~160_combout\,
	combout => \SRA_SRL_sig[55]~60_combout\);

-- Location: LCCOMB_X76_Y40_N10
\SRA_SRL_sig[55]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[55]~61_combout\ = (\SRA_SRL_sig[48]~35_combout\) # ((\SRA_SRL_sig[55]~60_combout\) # ((\SgnExtLower_sig[31]~0_combout\ & \SRA64|Stage2_sig[55]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[48]~35_combout\,
	datab => \SRA_SRL_sig[55]~60_combout\,
	datac => \SgnExtLower_sig[31]~0_combout\,
	datad => \SRA64|Stage2_sig[55]~43_combout\,
	combout => \SRA_SRL_sig[55]~61_combout\);

-- Location: IOIBUF_X81_Y73_N8
\C[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(23),
	o => \C[23]~input_o\);

-- Location: LCCOMB_X80_Y43_N6
\Y_sig~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~187_combout\ = (\Y_sig~155_combout\ & (!\Y_sig~156_combout\)) # (!\Y_sig~155_combout\ & ((\Y_sig~156_combout\ & (\SRA_SRL_sig[55]~61_combout\)) # (!\Y_sig~156_combout\ & ((\C[23]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~155_combout\,
	datab => \Y_sig~156_combout\,
	datac => \SRA_SRL_sig[55]~61_combout\,
	datad => \C[23]~input_o\,
	combout => \Y_sig~187_combout\);

-- Location: LCCOMB_X76_Y38_N2
\Y_sig~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~188_combout\ = (\Y_sig~345_combout\ & ((\Y_sig~187_combout\ & (\SLL64|Stage2_sig[23]~57_combout\)) # (!\Y_sig~187_combout\ & ((\SLL64|Stage2_sig[7]~19_combout\))))) # (!\Y_sig~345_combout\ & (((\Y_sig~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[23]~57_combout\,
	datab => \SLL64|Stage2_sig[7]~19_combout\,
	datac => \Y_sig~345_combout\,
	datad => \Y_sig~187_combout\,
	combout => \Y_sig~188_combout\);

-- Location: LCCOMB_X76_Y42_N12
\Y_sig~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~184_combout\ = (\Y_sig~151_combout\ & (((\SRL64|Stage2_sig[39]~90_combout\)) # (!\Y_sig~150_combout\))) # (!\Y_sig~151_combout\ & (\Y_sig~150_combout\ & ((\SRL64|Stage2_sig[55]~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~151_combout\,
	datab => \Y_sig~150_combout\,
	datac => \SRL64|Stage2_sig[39]~90_combout\,
	datad => \SRL64|Stage2_sig[55]~160_combout\,
	combout => \Y_sig~184_combout\);

-- Location: LCCOMB_X76_Y42_N6
\Y_sig~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~185_combout\ = (\Y_sig~149_combout\ & ((\Y_sig~184_combout\ & (\SRA64|Stage2_sig[55]~43_combout\)) # (!\Y_sig~184_combout\ & ((\X_sig[63]~2_combout\))))) # (!\Y_sig~149_combout\ & (((\Y_sig~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~149_combout\,
	datab => \SRA64|Stage2_sig[55]~43_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \Y_sig~184_combout\,
	combout => \Y_sig~185_combout\);

-- Location: LCCOMB_X76_Y42_N16
\Y_sig~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~186_combout\ = (\Y_sig~51_combout\ & ((\SRA64|Equal8~1_combout\ & ((\Y_sig~185_combout\))) # (!\SRA64|Equal8~1_combout\ & (\SRL64|Stage2_sig[23]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal8~1_combout\,
	datab => \Y_sig~51_combout\,
	datac => \SRL64|Stage2_sig[23]~94_combout\,
	datad => \Y_sig~185_combout\,
	combout => \Y_sig~186_combout\);

-- Location: LCCOMB_X83_Y41_N14
\Y_sig~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~352_combout\ = (\Y_sig~186_combout\) # ((\Y_sig~188_combout\ & ((\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y_sig~188_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y_sig~186_combout\,
	combout => \Y_sig~352_combout\);

-- Location: LCCOMB_X75_Y38_N16
\SLL64|Stage2_sig[24]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[24]~58_combout\ = (\SRA64|Equal5~0_combout\ & ((\SLL64|Stage1_sig[20]~60_combout\) # ((\SLL64|Stage1_sig[12]~48_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))) # (!\SRA64|Equal5~0_combout\ & (\SLL64|Stage1_sig[12]~48_combout\ & 
-- ((\SRL64|Stage2_sig[44]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \SLL64|Stage1_sig[12]~48_combout\,
	datac => \SLL64|Stage1_sig[20]~60_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SLL64|Stage2_sig[24]~58_combout\);

-- Location: LCCOMB_X68_Y38_N4
\SLL64|Stage1_sig[24]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[24]~65_combout\ = (\B[0]~input_o\ & (((\SLL64|Stage1_sig[24]~64_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~255_combout\) # ((\SRL64|Stage1_sig[48]~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[48]~255_combout\,
	datac => \SRL64|Stage1_sig[48]~261_combout\,
	datad => \SLL64|Stage1_sig[24]~64_combout\,
	combout => \SLL64|Stage1_sig[24]~65_combout\);

-- Location: LCCOMB_X75_Y38_N2
\SLL64|Stage2_sig[24]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[24]~59_combout\ = (\SLL64|Stage1_sig[16]~54_combout\ & ((\SRL64|Stage2_sig[48]~28_combout\) # ((\SRL64|Stage2_sig[48]~29_combout\ & \SLL64|Stage1_sig[24]~65_combout\)))) # (!\SLL64|Stage1_sig[16]~54_combout\ & 
-- (((\SRL64|Stage2_sig[48]~29_combout\ & \SLL64|Stage1_sig[24]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[16]~54_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SRL64|Stage2_sig[48]~29_combout\,
	datad => \SLL64|Stage1_sig[24]~65_combout\,
	combout => \SLL64|Stage2_sig[24]~59_combout\);

-- Location: LCCOMB_X75_Y38_N4
\SLL64|Stage2_sig[24]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[24]~60_combout\ = (\SLL64|Stage2_sig[24]~58_combout\) # (\SLL64|Stage2_sig[24]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64|Stage2_sig[24]~58_combout\,
	datad => \SLL64|Stage2_sig[24]~59_combout\,
	combout => \SLL64|Stage2_sig[24]~60_combout\);

-- Location: IOIBUF_X115_Y51_N8
\C[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(24),
	o => \C[24]~input_o\);

-- Location: LCCOMB_X76_Y40_N28
\SRA_SRL_sig[56]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[56]~62_combout\ = (\SRA_SRL_sig[48]~35_combout\) # ((!\ShiftFN[0]~input_o\ & (!\SRA64|Equal8~1_combout\ & \SRL64|Stage2_sig[56]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRA64|Equal8~1_combout\,
	datac => \SRA_SRL_sig[48]~35_combout\,
	datad => \SRL64|Stage2_sig[56]~96_combout\,
	combout => \SRA_SRL_sig[56]~62_combout\);

-- Location: LCCOMB_X77_Y40_N0
\SRA_SRL_sig[56]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[56]~63_combout\ = (\SRA_SRL_sig[56]~62_combout\) # ((\SgnExtLower_sig[31]~0_combout\ & \SRA64|Stage2_sig[56]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtLower_sig[31]~0_combout\,
	datab => \SRA_SRL_sig[56]~62_combout\,
	datac => \SRA64|Stage2_sig[56]~48_combout\,
	combout => \SRA_SRL_sig[56]~63_combout\);

-- Location: LCCOMB_X80_Y43_N16
\Y_sig~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~192_combout\ = (\Y_sig~155_combout\ & (((!\Y_sig~156_combout\)))) # (!\Y_sig~155_combout\ & ((\Y_sig~156_combout\ & ((\SRA_SRL_sig[56]~63_combout\))) # (!\Y_sig~156_combout\ & (\C[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[24]~input_o\,
	datab => \SRA_SRL_sig[56]~63_combout\,
	datac => \Y_sig~155_combout\,
	datad => \Y_sig~156_combout\,
	combout => \Y_sig~192_combout\);

-- Location: LCCOMB_X80_Y41_N2
\Y_sig~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~193_combout\ = (\Y_sig~345_combout\ & ((\Y_sig~192_combout\ & (\SLL64|Stage2_sig[24]~60_combout\)) # (!\Y_sig~192_combout\ & ((\SLL64|Stage2_sig[8]~106_combout\))))) # (!\Y_sig~345_combout\ & (((\Y_sig~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~345_combout\,
	datab => \SLL64|Stage2_sig[24]~60_combout\,
	datac => \SLL64|Stage2_sig[8]~106_combout\,
	datad => \Y_sig~192_combout\,
	combout => \Y_sig~193_combout\);

-- Location: LCCOMB_X77_Y40_N20
\Y_sig~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~189_combout\ = (\Y_sig~150_combout\ & ((\Y_sig~151_combout\ & (\SRL64|Stage2_sig[40]~99_combout\)) # (!\Y_sig~151_combout\ & ((\SRL64|Stage2_sig[56]~96_combout\))))) # (!\Y_sig~150_combout\ & (((\Y_sig~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~150_combout\,
	datab => \SRL64|Stage2_sig[40]~99_combout\,
	datac => \Y_sig~151_combout\,
	datad => \SRL64|Stage2_sig[56]~96_combout\,
	combout => \Y_sig~189_combout\);

-- Location: LCCOMB_X77_Y40_N22
\Y_sig~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~190_combout\ = (\Y_sig~149_combout\ & ((\Y_sig~189_combout\ & ((\SRA64|Stage2_sig[56]~48_combout\))) # (!\Y_sig~189_combout\ & (\X_sig[63]~2_combout\)))) # (!\Y_sig~149_combout\ & (((\Y_sig~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~149_combout\,
	datab => \X_sig[63]~2_combout\,
	datac => \SRA64|Stage2_sig[56]~48_combout\,
	datad => \Y_sig~189_combout\,
	combout => \Y_sig~190_combout\);

-- Location: LCCOMB_X80_Y41_N24
\Y_sig~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~191_combout\ = (\Y_sig~51_combout\ & ((\SRA64|Equal8~1_combout\ & ((\Y_sig~190_combout\))) # (!\SRA64|Equal8~1_combout\ & (\SRL64|Stage2_sig[24]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[24]~102_combout\,
	datab => \Y_sig~51_combout\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \Y_sig~190_combout\,
	combout => \Y_sig~191_combout\);

-- Location: LCCOMB_X80_Y41_N20
\Y_sig~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~353_combout\ = (\Y_sig~191_combout\) # ((\Y_sig~193_combout\ & ((\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y_sig~193_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y_sig~191_combout\,
	combout => \Y_sig~353_combout\);

-- Location: LCCOMB_X68_Y41_N12
\SLL64|Stage1_sig[26]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[26]~66_combout\ = (\SRL64|Stage1_sig[48]~186_combout\) # (\SRL64|Stage1_sig[48]~179_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~186_combout\,
	datad => \SRL64|Stage1_sig[48]~179_combout\,
	combout => \SLL64|Stage1_sig[26]~66_combout\);

-- Location: LCCOMB_X68_Y38_N30
\SLL64|Stage1_sig[25]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[25]~67_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~261_combout\) # ((\SRL64|Stage1_sig[48]~255_combout\)))) # (!\B[0]~input_o\ & (((\SLL64|Stage1_sig[26]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[48]~261_combout\,
	datac => \SLL64|Stage1_sig[26]~66_combout\,
	datad => \SRL64|Stage1_sig[48]~255_combout\,
	combout => \SLL64|Stage1_sig[25]~67_combout\);

-- Location: LCCOMB_X76_Y37_N14
\SLL64|Stage2_sig[25]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[25]~62_combout\ = (\SLL64|Stage1_sig[25]~67_combout\ & ((\SRL64|Stage2_sig[48]~29_combout\) # ((\SRL64|Stage2_sig[48]~28_combout\ & \SLL64|Stage1_sig[17]~55_combout\)))) # (!\SLL64|Stage1_sig[25]~67_combout\ & 
-- (\SRL64|Stage2_sig[48]~28_combout\ & ((\SLL64|Stage1_sig[17]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[25]~67_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SRL64|Stage2_sig[48]~29_combout\,
	datad => \SLL64|Stage1_sig[17]~55_combout\,
	combout => \SLL64|Stage2_sig[25]~62_combout\);

-- Location: LCCOMB_X76_Y37_N28
\SLL64|Stage2_sig[25]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[25]~61_combout\ = (\SLL64|Stage1_sig[21]~62_combout\ & ((\SRA64|Equal5~0_combout\) # ((\SLL64|Stage1_sig[13]~49_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))) # (!\SLL64|Stage1_sig[21]~62_combout\ & (\SLL64|Stage1_sig[13]~49_combout\ & 
-- ((\SRL64|Stage2_sig[44]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[21]~62_combout\,
	datab => \SLL64|Stage1_sig[13]~49_combout\,
	datac => \SRA64|Equal5~0_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SLL64|Stage2_sig[25]~61_combout\);

-- Location: LCCOMB_X76_Y37_N24
\SLL64|Stage2_sig[25]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[25]~63_combout\ = (\SLL64|Stage2_sig[25]~62_combout\) # (\SLL64|Stage2_sig[25]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SLL64|Stage2_sig[25]~62_combout\,
	datad => \SLL64|Stage2_sig[25]~61_combout\,
	combout => \SLL64|Stage2_sig[25]~63_combout\);

-- Location: LCCOMB_X77_Y41_N6
\SRA_SRL_sig[57]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[57]~64_combout\ = (\SRA_SRL_sig[48]~35_combout\) # ((\SRL64|Stage2_sig[57]~103_combout\ & (!\SRA64|Equal8~1_combout\ & !\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[57]~103_combout\,
	datab => \SRA_SRL_sig[48]~35_combout\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SRA_SRL_sig[57]~64_combout\);

-- Location: LCCOMB_X80_Y41_N16
\SRA_SRL_sig[57]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[57]~65_combout\ = (\SRA_SRL_sig[57]~64_combout\) # ((\SgnExtLower_sig[31]~0_combout\ & \SRA64|Stage2_sig[57]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtLower_sig[31]~0_combout\,
	datab => \SRA64|Stage2_sig[57]~50_combout\,
	datad => \SRA_SRL_sig[57]~64_combout\,
	combout => \SRA_SRL_sig[57]~65_combout\);

-- Location: IOIBUF_X115_Y47_N15
\C[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(25),
	o => \C[25]~input_o\);

-- Location: LCCOMB_X80_Y43_N10
\Y_sig~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~197_combout\ = (\Y_sig~155_combout\ & (((!\Y_sig~156_combout\)))) # (!\Y_sig~155_combout\ & ((\Y_sig~156_combout\ & (\SRA_SRL_sig[57]~65_combout\)) # (!\Y_sig~156_combout\ & ((\C[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~155_combout\,
	datab => \SRA_SRL_sig[57]~65_combout\,
	datac => \C[25]~input_o\,
	datad => \Y_sig~156_combout\,
	combout => \Y_sig~197_combout\);

-- Location: LCCOMB_X80_Y41_N26
\Y_sig~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~198_combout\ = (\Y_sig~345_combout\ & ((\Y_sig~197_combout\ & (\SLL64|Stage2_sig[25]~63_combout\)) # (!\Y_sig~197_combout\ & ((\SLL64|Stage2_sig[9]~107_combout\))))) # (!\Y_sig~345_combout\ & (((\Y_sig~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[25]~63_combout\,
	datab => \SLL64|Stage2_sig[9]~107_combout\,
	datac => \Y_sig~345_combout\,
	datad => \Y_sig~197_combout\,
	combout => \Y_sig~198_combout\);

-- Location: LCCOMB_X77_Y41_N4
\Y_sig~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~194_combout\ = (\Y_sig~151_combout\ & ((\SRL64|Stage2_sig[41]~106_combout\) # ((!\Y_sig~150_combout\)))) # (!\Y_sig~151_combout\ & (((\Y_sig~150_combout\ & \SRL64|Stage2_sig[57]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~151_combout\,
	datab => \SRL64|Stage2_sig[41]~106_combout\,
	datac => \Y_sig~150_combout\,
	datad => \SRL64|Stage2_sig[57]~103_combout\,
	combout => \Y_sig~194_combout\);

-- Location: LCCOMB_X80_Y41_N28
\Y_sig~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~195_combout\ = (\Y_sig~194_combout\ & (((\SRA64|Stage2_sig[57]~50_combout\)) # (!\Y_sig~149_combout\))) # (!\Y_sig~194_combout\ & (\Y_sig~149_combout\ & (\X_sig[63]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~194_combout\,
	datab => \Y_sig~149_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \SRA64|Stage2_sig[57]~50_combout\,
	combout => \Y_sig~195_combout\);

-- Location: LCCOMB_X80_Y41_N22
\Y_sig~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~196_combout\ = (\Y_sig~51_combout\ & ((\SRA64|Equal8~1_combout\ & (\Y_sig~195_combout\)) # (!\SRA64|Equal8~1_combout\ & ((\SRL64|Stage2_sig[25]~110_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~51_combout\,
	datab => \Y_sig~195_combout\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \SRL64|Stage2_sig[25]~110_combout\,
	combout => \Y_sig~196_combout\);

-- Location: LCCOMB_X80_Y41_N6
\Y_sig~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~354_combout\ = (\Y_sig~196_combout\) # ((\Y_sig~198_combout\ & ((\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~198_combout\,
	datab => \ExtWord~input_o\,
	datac => \Y_sig~196_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_sig~354_combout\);

-- Location: LCCOMB_X76_Y43_N0
\SRA_SRL_sig[58]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[58]~66_combout\ = (\SRL64|Stage2_sig[58]~112_combout\ & (!\SRA64|Equal8~1_combout\ & !\ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage2_sig[58]~112_combout\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SRA_SRL_sig[58]~66_combout\);

-- Location: LCCOMB_X76_Y43_N10
\SRA_SRL_sig[58]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[58]~67_combout\ = (\SRA_SRL_sig[48]~35_combout\) # ((\SRA_SRL_sig[58]~66_combout\) # ((\SRA64|Stage2_sig[58]~52_combout\ & \SgnExtLower_sig[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[48]~35_combout\,
	datab => \SRA_SRL_sig[58]~66_combout\,
	datac => \SRA64|Stage2_sig[58]~52_combout\,
	datad => \SgnExtLower_sig[31]~0_combout\,
	combout => \SRA_SRL_sig[58]~67_combout\);

-- Location: IOIBUF_X83_Y73_N22
\C[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(26),
	o => \C[26]~input_o\);

-- Location: LCCOMB_X80_Y43_N28
\Y_sig~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~202_combout\ = (\Y_sig~156_combout\ & (\SRA_SRL_sig[58]~67_combout\ & (!\Y_sig~155_combout\))) # (!\Y_sig~156_combout\ & (((\Y_sig~155_combout\) # (\C[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[58]~67_combout\,
	datab => \Y_sig~156_combout\,
	datac => \Y_sig~155_combout\,
	datad => \C[26]~input_o\,
	combout => \Y_sig~202_combout\);

-- Location: LCCOMB_X68_Y41_N30
\SLL64|Stage1_sig[26]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[26]~68_combout\ = (\B[0]~input_o\ & (\SLL64|Stage1_sig[26]~66_combout\)) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~183_combout\) # (\SRL64|Stage1_sig[48]~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[26]~66_combout\,
	datab => \SRL64|Stage1_sig[48]~183_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~176_combout\,
	combout => \SLL64|Stage1_sig[26]~68_combout\);

-- Location: LCCOMB_X75_Y36_N16
\SLL64|Stage2_sig[26]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[26]~65_combout\ = (\SLL64|Stage1_sig[18]~112_combout\ & ((\SRL64|Stage2_sig[48]~28_combout\) # ((\SRL64|Stage2_sig[48]~29_combout\ & \SLL64|Stage1_sig[26]~68_combout\)))) # (!\SLL64|Stage1_sig[18]~112_combout\ & 
-- (((\SRL64|Stage2_sig[48]~29_combout\ & \SLL64|Stage1_sig[26]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[18]~112_combout\,
	datab => \SRL64|Stage2_sig[48]~28_combout\,
	datac => \SRL64|Stage2_sig[48]~29_combout\,
	datad => \SLL64|Stage1_sig[26]~68_combout\,
	combout => \SLL64|Stage2_sig[26]~65_combout\);

-- Location: LCCOMB_X75_Y36_N30
\SLL64|Stage2_sig[26]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[26]~64_combout\ = (\SLL64|Stage1_sig[14]~51_combout\ & ((\SRL64|Stage2_sig[44]~32_combout\) # ((\SRA64|Equal5~0_combout\ & \SLL64|Stage1_sig[22]~113_combout\)))) # (!\SLL64|Stage1_sig[14]~51_combout\ & (\SRA64|Equal5~0_combout\ & 
-- (\SLL64|Stage1_sig[22]~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[14]~51_combout\,
	datab => \SRA64|Equal5~0_combout\,
	datac => \SLL64|Stage1_sig[22]~113_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SLL64|Stage2_sig[26]~64_combout\);

-- Location: LCCOMB_X75_Y36_N10
\SLL64|Stage2_sig[26]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[26]~66_combout\ = (\SLL64|Stage2_sig[26]~65_combout\) # (\SLL64|Stage2_sig[26]~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64|Stage2_sig[26]~65_combout\,
	datac => \SLL64|Stage2_sig[26]~64_combout\,
	combout => \SLL64|Stage2_sig[26]~66_combout\);

-- Location: LCCOMB_X79_Y39_N4
\Y_sig~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~203_combout\ = (\Y_sig~202_combout\ & ((\SLL64|Stage2_sig[26]~66_combout\) # ((!\Y_sig~345_combout\)))) # (!\Y_sig~202_combout\ & (((\Y_sig~345_combout\ & \SLL64|Stage2_sig[10]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~202_combout\,
	datab => \SLL64|Stage2_sig[26]~66_combout\,
	datac => \Y_sig~345_combout\,
	datad => \SLL64|Stage2_sig[10]~108_combout\,
	combout => \Y_sig~203_combout\);

-- Location: LCCOMB_X75_Y43_N30
\Y_sig~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~199_combout\ = (\Y_sig~151_combout\ & ((\SRL64|Stage2_sig[42]~115_combout\) # ((!\Y_sig~150_combout\)))) # (!\Y_sig~151_combout\ & (((\SRL64|Stage2_sig[58]~112_combout\ & \Y_sig~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[42]~115_combout\,
	datab => \SRL64|Stage2_sig[58]~112_combout\,
	datac => \Y_sig~151_combout\,
	datad => \Y_sig~150_combout\,
	combout => \Y_sig~199_combout\);

-- Location: LCCOMB_X75_Y43_N16
\Y_sig~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~200_combout\ = (\Y_sig~149_combout\ & ((\Y_sig~199_combout\ & ((\SRA64|Stage2_sig[58]~52_combout\))) # (!\Y_sig~199_combout\ & (\X_sig[63]~2_combout\)))) # (!\Y_sig~149_combout\ & (((\Y_sig~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_sig[63]~2_combout\,
	datab => \Y_sig~149_combout\,
	datac => \Y_sig~199_combout\,
	datad => \SRA64|Stage2_sig[58]~52_combout\,
	combout => \Y_sig~200_combout\);

-- Location: LCCOMB_X75_Y43_N2
\Y_sig~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~201_combout\ = (\Y_sig~51_combout\ & ((\SRA64|Equal8~1_combout\ & ((\Y_sig~200_combout\))) # (!\SRA64|Equal8~1_combout\ & (\SRL64|Stage2_sig[26]~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~51_combout\,
	datab => \SRL64|Stage2_sig[26]~118_combout\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \Y_sig~200_combout\,
	combout => \Y_sig~201_combout\);

-- Location: LCCOMB_X75_Y43_N14
\Y_sig~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~355_combout\ = (\Y_sig~201_combout\) # ((\Y_sig~203_combout\ & ((\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y_sig~203_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_sig~201_combout\,
	combout => \Y_sig~355_combout\);

-- Location: LCCOMB_X74_Y38_N6
\SLL64|Stage2_sig[27]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[27]~67_combout\ = (\SRA64|Equal5~0_combout\ & ((\SLL64|Stage1_sig[23]~114_combout\) # ((\SLL64|Stage1_sig[15]~52_combout\ & \SRL64|Stage2_sig[44]~32_combout\)))) # (!\SRA64|Equal5~0_combout\ & (\SLL64|Stage1_sig[15]~52_combout\ & 
-- (\SRL64|Stage2_sig[44]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal5~0_combout\,
	datab => \SLL64|Stage1_sig[15]~52_combout\,
	datac => \SRL64|Stage2_sig[44]~32_combout\,
	datad => \SLL64|Stage1_sig[23]~114_combout\,
	combout => \SLL64|Stage2_sig[27]~67_combout\);

-- Location: LCCOMB_X68_Y41_N0
\SLL64|Stage1_sig[28]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[28]~69_combout\ = (\SRL64|Stage1_sig[48]~231_combout\) # (\SRL64|Stage1_sig[48]~235_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~231_combout\,
	datad => \SRL64|Stage1_sig[48]~235_combout\,
	combout => \SLL64|Stage1_sig[28]~69_combout\);

-- Location: LCCOMB_X68_Y41_N10
\SLL64|Stage1_sig[27]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[27]~70_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~176_combout\) # ((\SRL64|Stage1_sig[48]~183_combout\)))) # (!\B[0]~input_o\ & (((\SLL64|Stage1_sig[28]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~176_combout\,
	datab => \SLL64|Stage1_sig[28]~69_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~183_combout\,
	combout => \SLL64|Stage1_sig[27]~70_combout\);

-- Location: LCCOMB_X74_Y38_N8
\SLL64|Stage2_sig[27]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[27]~68_combout\ = (\SLL64|Stage1_sig[19]~59_combout\ & ((\SRL64|Stage2_sig[48]~28_combout\) # ((\SLL64|Stage1_sig[27]~70_combout\ & \SRL64|Stage2_sig[48]~29_combout\)))) # (!\SLL64|Stage1_sig[19]~59_combout\ & 
-- (\SLL64|Stage1_sig[27]~70_combout\ & ((\SRL64|Stage2_sig[48]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[19]~59_combout\,
	datab => \SLL64|Stage1_sig[27]~70_combout\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \SLL64|Stage2_sig[27]~68_combout\);

-- Location: LCCOMB_X74_Y38_N2
\SLL64|Stage2_sig[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[27]~69_combout\ = (\SLL64|Stage2_sig[27]~67_combout\) # (\SLL64|Stage2_sig[27]~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[27]~67_combout\,
	datac => \SLL64|Stage2_sig[27]~68_combout\,
	combout => \SLL64|Stage2_sig[27]~69_combout\);

-- Location: IOIBUF_X83_Y73_N15
\C[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(27),
	o => \C[27]~input_o\);

-- Location: LCCOMB_X75_Y42_N0
\SRA_SRL_sig[59]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[59]~68_combout\ = (\SRA_SRL_sig[48]~35_combout\) # ((!\SRA64|Equal8~1_combout\ & (\SRL64|Stage2_sig[59]~119_combout\ & !\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal8~1_combout\,
	datab => \SRL64|Stage2_sig[59]~119_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA_SRL_sig[48]~35_combout\,
	combout => \SRA_SRL_sig[59]~68_combout\);

-- Location: LCCOMB_X75_Y42_N26
\SRA_SRL_sig[59]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[59]~69_combout\ = (\SRA_SRL_sig[59]~68_combout\) # ((\SgnExtLower_sig[31]~0_combout\ & \SRA64|Stage2_sig[59]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtLower_sig[31]~0_combout\,
	datab => \SRA_SRL_sig[59]~68_combout\,
	datac => \SRA64|Stage2_sig[59]~55_combout\,
	combout => \SRA_SRL_sig[59]~69_combout\);

-- Location: LCCOMB_X80_Y43_N30
\Y_sig~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~207_combout\ = (\Y_sig~155_combout\ & (!\Y_sig~156_combout\)) # (!\Y_sig~155_combout\ & ((\Y_sig~156_combout\ & ((\SRA_SRL_sig[59]~69_combout\))) # (!\Y_sig~156_combout\ & (\C[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~155_combout\,
	datab => \Y_sig~156_combout\,
	datac => \C[27]~input_o\,
	datad => \SRA_SRL_sig[59]~69_combout\,
	combout => \Y_sig~207_combout\);

-- Location: LCCOMB_X80_Y42_N8
\Y_sig~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~208_combout\ = (\Y_sig~207_combout\ & ((\SLL64|Stage2_sig[27]~69_combout\) # ((!\Y_sig~345_combout\)))) # (!\Y_sig~207_combout\ & (((\SLL64|Stage2_sig[11]~109_combout\ & \Y_sig~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[27]~69_combout\,
	datab => \SLL64|Stage2_sig[11]~109_combout\,
	datac => \Y_sig~207_combout\,
	datad => \Y_sig~345_combout\,
	combout => \Y_sig~208_combout\);

-- Location: LCCOMB_X75_Y42_N2
\Y_sig~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~204_combout\ = (\Y_sig~151_combout\ & (((\SRL64|Stage2_sig[43]~122_combout\) # (!\Y_sig~150_combout\)))) # (!\Y_sig~151_combout\ & (\SRL64|Stage2_sig[59]~119_combout\ & ((\Y_sig~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~151_combout\,
	datab => \SRL64|Stage2_sig[59]~119_combout\,
	datac => \SRL64|Stage2_sig[43]~122_combout\,
	datad => \Y_sig~150_combout\,
	combout => \Y_sig~204_combout\);

-- Location: LCCOMB_X75_Y42_N4
\Y_sig~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~205_combout\ = (\Y_sig~149_combout\ & ((\Y_sig~204_combout\ & (\SRA64|Stage2_sig[59]~55_combout\)) # (!\Y_sig~204_combout\ & ((\X_sig[63]~2_combout\))))) # (!\Y_sig~149_combout\ & (((\Y_sig~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Stage2_sig[59]~55_combout\,
	datab => \X_sig[63]~2_combout\,
	datac => \Y_sig~149_combout\,
	datad => \Y_sig~204_combout\,
	combout => \Y_sig~205_combout\);

-- Location: LCCOMB_X75_Y42_N14
\Y_sig~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~206_combout\ = (\Y_sig~51_combout\ & ((\SRA64|Equal8~1_combout\ & ((\Y_sig~205_combout\))) # (!\SRA64|Equal8~1_combout\ & (\SRL64|Stage2_sig[27]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~51_combout\,
	datab => \SRL64|Stage2_sig[27]~126_combout\,
	datac => \Y_sig~205_combout\,
	datad => \SRA64|Equal8~1_combout\,
	combout => \Y_sig~206_combout\);

-- Location: LCCOMB_X80_Y42_N16
\Y_sig~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~356_combout\ = (\Y_sig~206_combout\) # ((\Y_sig~208_combout\ & ((\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Y_sig~208_combout\,
	datad => \Y_sig~206_combout\,
	combout => \Y_sig~356_combout\);

-- Location: LCCOMB_X75_Y38_N14
\SLL64|Stage2_sig[28]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[28]~70_combout\ = (\SLL64|Stage1_sig[16]~54_combout\ & ((\SRL64|Stage2_sig[44]~32_combout\) # ((\SLL64|Stage1_sig[24]~65_combout\ & \SRA64|Equal5~0_combout\)))) # (!\SLL64|Stage1_sig[16]~54_combout\ & (\SLL64|Stage1_sig[24]~65_combout\ & 
-- (\SRA64|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[16]~54_combout\,
	datab => \SLL64|Stage1_sig[24]~65_combout\,
	datac => \SRA64|Equal5~0_combout\,
	datad => \SRL64|Stage2_sig[44]~32_combout\,
	combout => \SLL64|Stage2_sig[28]~70_combout\);

-- Location: LCCOMB_X68_Y41_N4
\SLL64|Stage1_sig[28]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[28]~71_combout\ = (\B[0]~input_o\ & (((\SLL64|Stage1_sig[28]~69_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~259_combout\) # ((\SRL64|Stage1_sig[48]~254_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~259_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[48]~254_combout\,
	datad => \SLL64|Stage1_sig[28]~69_combout\,
	combout => \SLL64|Stage1_sig[28]~71_combout\);

-- Location: LCCOMB_X75_Y38_N24
\SLL64|Stage2_sig[28]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[28]~71_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\SLL64|Stage1_sig[28]~71_combout\) # ((\SLL64|Stage1_sig[20]~60_combout\ & \SRL64|Stage2_sig[48]~28_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- (\SLL64|Stage1_sig[20]~60_combout\ & (\SRL64|Stage2_sig[48]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SLL64|Stage1_sig[20]~60_combout\,
	datac => \SRL64|Stage2_sig[48]~28_combout\,
	datad => \SLL64|Stage1_sig[28]~71_combout\,
	combout => \SLL64|Stage2_sig[28]~71_combout\);

-- Location: LCCOMB_X75_Y38_N10
\SLL64|Stage2_sig[28]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[28]~72_combout\ = (\SLL64|Stage2_sig[28]~70_combout\) # (\SLL64|Stage2_sig[28]~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SLL64|Stage2_sig[28]~70_combout\,
	datad => \SLL64|Stage2_sig[28]~71_combout\,
	combout => \SLL64|Stage2_sig[28]~72_combout\);

-- Location: IOIBUF_X115_Y56_N22
\C[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(28),
	o => \C[28]~input_o\);

-- Location: LCCOMB_X77_Y42_N20
\SRA_SRL_sig[60]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[60]~70_combout\ = (\SRA64|Equal8~1_combout\ & (\SRA_SRL_sig[48]~39_combout\)) # (!\SRA64|Equal8~1_combout\ & ((\SRL64|Stage2_sig[48]~29_combout\ & ((\SRL64|Stage1_sig[60]~109_combout\))) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- (\SRA_SRL_sig[48]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal8~1_combout\,
	datab => \SRA_SRL_sig[48]~39_combout\,
	datac => \SRL64|Stage1_sig[60]~109_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \SRA_SRL_sig[60]~70_combout\);

-- Location: LCCOMB_X80_Y43_N8
\Y_sig~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~211_combout\ = (\Y_sig~155_combout\ & (((!\Y_sig~156_combout\)))) # (!\Y_sig~155_combout\ & ((\Y_sig~156_combout\ & ((\SRA_SRL_sig[60]~70_combout\))) # (!\Y_sig~156_combout\ & (\C[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[28]~input_o\,
	datab => \SRA_SRL_sig[60]~70_combout\,
	datac => \Y_sig~155_combout\,
	datad => \Y_sig~156_combout\,
	combout => \Y_sig~211_combout\);

-- Location: LCCOMB_X75_Y40_N30
\Y_sig~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~212_combout\ = (\Y_sig~345_combout\ & ((\Y_sig~211_combout\ & ((\SLL64|Stage2_sig[28]~72_combout\))) # (!\Y_sig~211_combout\ & (\SLL64|Stage2_sig[12]~26_combout\)))) # (!\Y_sig~345_combout\ & (((\Y_sig~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~345_combout\,
	datab => \SLL64|Stage2_sig[12]~26_combout\,
	datac => \SLL64|Stage2_sig[28]~72_combout\,
	datad => \Y_sig~211_combout\,
	combout => \Y_sig~212_combout\);

-- Location: LCCOMB_X74_Y40_N22
\Y_sig~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~209_combout\ = (\Y_sig~151_combout\ & (((\SRL64|Stage2_sig[44]~130_combout\) # (!\Y_sig~150_combout\)))) # (!\Y_sig~151_combout\ & (\SRL64|Stage2_sig[60]~161_combout\ & (\Y_sig~150_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[60]~161_combout\,
	datab => \Y_sig~151_combout\,
	datac => \Y_sig~150_combout\,
	datad => \SRL64|Stage2_sig[44]~130_combout\,
	combout => \Y_sig~209_combout\);

-- Location: LCCOMB_X75_Y40_N20
\Y_sig~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~210_combout\ = (\Y_sig~209_combout\ & ((\SRA64|Stage2_sig[60]~56_combout\) # ((!\Y_sig~149_combout\)))) # (!\Y_sig~209_combout\ & (((\Y_sig~149_combout\ & \X_sig[63]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Stage2_sig[60]~56_combout\,
	datab => \Y_sig~209_combout\,
	datac => \Y_sig~149_combout\,
	datad => \X_sig[63]~2_combout\,
	combout => \Y_sig~210_combout\);

-- Location: LCCOMB_X75_Y40_N0
\Y_sig~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~213_combout\ = (\Y_sig~212_combout\ & (((\Y_sig~210_combout\ & \Y_sig~41_combout\)) # (!\Y_sig~51_combout\))) # (!\Y_sig~212_combout\ & (\Y_sig~210_combout\ & (\Y_sig~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~212_combout\,
	datab => \Y_sig~210_combout\,
	datac => \Y_sig~41_combout\,
	datad => \Y_sig~51_combout\,
	combout => \Y_sig~213_combout\);

-- Location: LCCOMB_X74_Y40_N12
\Y_sig~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~357_combout\ = (\Y_sig~213_combout\) # ((\Y_sig~36_combout\ & ((\SRL64|Stage2_sig[28]~131_combout\) # (\SRL64|Stage2_sig[28]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[28]~131_combout\,
	datab => \Y_sig~36_combout\,
	datac => \Y_sig~213_combout\,
	datad => \SRL64|Stage2_sig[28]~132_combout\,
	combout => \Y_sig~357_combout\);

-- Location: LCCOMB_X75_Y41_N30
\Y_sig~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~214_combout\ = (\Y_sig~150_combout\ & ((\Y_sig~151_combout\ & (\SRL64|Stage2_sig[45]~137_combout\)) # (!\Y_sig~151_combout\ & ((\SRL64|Stage2_sig[61]~134_combout\))))) # (!\Y_sig~150_combout\ & (((\Y_sig~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[45]~137_combout\,
	datab => \SRL64|Stage2_sig[61]~134_combout\,
	datac => \Y_sig~150_combout\,
	datad => \Y_sig~151_combout\,
	combout => \Y_sig~214_combout\);

-- Location: LCCOMB_X75_Y41_N24
\Y_sig~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~215_combout\ = (\Y_sig~214_combout\ & ((\SRA64|Stage2_sig[61]~54_combout\) # ((!\Y_sig~149_combout\)))) # (!\Y_sig~214_combout\ & (((\Y_sig~149_combout\ & \X_sig[63]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~214_combout\,
	datab => \SRA64|Stage2_sig[61]~54_combout\,
	datac => \Y_sig~149_combout\,
	datad => \X_sig[63]~2_combout\,
	combout => \Y_sig~215_combout\);

-- Location: LCCOMB_X75_Y41_N26
\Y_sig~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~216_combout\ = (\Y_sig~51_combout\ & ((\SRA64|Equal8~1_combout\ & ((\Y_sig~215_combout\))) # (!\SRA64|Equal8~1_combout\ & (\SRL64|Stage2_sig[29]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal8~1_combout\,
	datab => \SRL64|Stage2_sig[29]~140_combout\,
	datac => \Y_sig~51_combout\,
	datad => \Y_sig~215_combout\,
	combout => \Y_sig~216_combout\);

-- Location: LCCOMB_X68_Y41_N6
\SLL64|Stage1_sig[30]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[30]~72_combout\ = (\SRL64|Stage1_sig[48]~185_combout\) # (\SRL64|Stage1_sig[48]~174_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~185_combout\,
	datad => \SRL64|Stage1_sig[48]~174_combout\,
	combout => \SLL64|Stage1_sig[30]~72_combout\);

-- Location: LCCOMB_X68_Y41_N8
\SLL64|Stage1_sig[29]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[29]~73_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~254_combout\) # (\SRL64|Stage1_sig[48]~259_combout\)))) # (!\B[0]~input_o\ & (\SLL64|Stage1_sig[30]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[30]~72_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[48]~254_combout\,
	datad => \SRL64|Stage1_sig[48]~259_combout\,
	combout => \SLL64|Stage1_sig[29]~73_combout\);

-- Location: LCCOMB_X75_Y37_N0
\SLL64|Stage2_sig[29]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[29]~74_combout\ = (\B[3]~input_o\ & ((\SLL64|Stage1_sig[21]~62_combout\))) # (!\B[3]~input_o\ & (\SLL64|Stage1_sig[29]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[29]~73_combout\,
	datab => \SLL64|Stage1_sig[21]~62_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64|Stage2_sig[29]~74_combout\);

-- Location: LCCOMB_X76_Y37_N2
\SLL64|Stage2_sig[29]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[29]~73_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SLL64|Stage1_sig[17]~55_combout\))) # (!\B[3]~input_o\ & (\SLL64|Stage1_sig[25]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL64|Stage1_sig[25]~67_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL64|Stage1_sig[17]~55_combout\,
	combout => \SLL64|Stage2_sig[29]~73_combout\);

-- Location: LCCOMB_X77_Y38_N24
\SLL64|Stage2_sig[29]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[29]~75_combout\ = (\SLL64|Stage2_sig[29]~73_combout\) # ((!\B[2]~input_o\ & \SLL64|Stage2_sig[29]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SLL64|Stage2_sig[29]~74_combout\,
	datad => \SLL64|Stage2_sig[29]~73_combout\,
	combout => \SLL64|Stage2_sig[29]~75_combout\);

-- Location: LCCOMB_X76_Y40_N6
\SRA_SRL_sig[61]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[61]~71_combout\ = (\SRA_SRL_sig[48]~35_combout\) # ((\SRA64|Stage2_sig[61]~54_combout\ & \SgnExtLower_sig[31]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[48]~35_combout\,
	datac => \SRA64|Stage2_sig[61]~54_combout\,
	datad => \SgnExtLower_sig[31]~0_combout\,
	combout => \SRA_SRL_sig[61]~71_combout\);

-- Location: LCCOMB_X76_Y40_N0
\SRA_SRL_sig[61]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[61]~72_combout\ = (\SRA_SRL_sig[61]~71_combout\) # ((\SRL64|Stage2_sig[61]~134_combout\ & (!\SRA64|Equal8~1_combout\ & !\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[61]~134_combout\,
	datab => \SRA64|Equal8~1_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA_SRL_sig[61]~71_combout\,
	combout => \SRA_SRL_sig[61]~72_combout\);

-- Location: IOIBUF_X115_Y52_N1
\C[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(29),
	o => \C[29]~input_o\);

-- Location: LCCOMB_X80_Y43_N2
\Y_sig~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~217_combout\ = (\Y_sig~155_combout\ & (!\Y_sig~156_combout\)) # (!\Y_sig~155_combout\ & ((\Y_sig~156_combout\ & (\SRA_SRL_sig[61]~72_combout\)) # (!\Y_sig~156_combout\ & ((\C[29]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~155_combout\,
	datab => \Y_sig~156_combout\,
	datac => \SRA_SRL_sig[61]~72_combout\,
	datad => \C[29]~input_o\,
	combout => \Y_sig~217_combout\);

-- Location: LCCOMB_X80_Y42_N2
\Y_sig~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~218_combout\ = (\Y_sig~217_combout\ & (((\SLL64|Stage2_sig[29]~75_combout\) # (!\Y_sig~345_combout\)))) # (!\Y_sig~217_combout\ & (\SLL64|Stage2_sig[13]~29_combout\ & ((\Y_sig~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[13]~29_combout\,
	datab => \SLL64|Stage2_sig[29]~75_combout\,
	datac => \Y_sig~217_combout\,
	datad => \Y_sig~345_combout\,
	combout => \Y_sig~218_combout\);

-- Location: LCCOMB_X80_Y42_N26
\Y_sig~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~358_combout\ = (\Y_sig~216_combout\) # ((\Y_sig~218_combout\ & ((\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Y_sig~216_combout\,
	datad => \Y_sig~218_combout\,
	combout => \Y_sig~358_combout\);

-- Location: LCCOMB_X72_Y37_N6
\SLL64|Stage1_sig[31]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[31]~74_combout\ = (\SRL64|Stage1_sig[48]~182_combout\) # (\SRL64|Stage1_sig[48]~171_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~182_combout\,
	datad => \SRL64|Stage1_sig[48]~171_combout\,
	combout => \SLL64|Stage1_sig[31]~74_combout\);

-- Location: LCCOMB_X72_Y37_N14
\SLL64|Stage1_sig[30]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[30]~115_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~185_combout\) # (\SRL64|Stage1_sig[48]~174_combout\)))) # (!\B[0]~input_o\ & (\SLL64|Stage1_sig[31]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[31]~74_combout\,
	datab => \SRL64|Stage1_sig[48]~185_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~174_combout\,
	combout => \SLL64|Stage1_sig[30]~115_combout\);

-- Location: LCCOMB_X76_Y36_N30
\SLL64|Stage2_sig[30]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[30]~77_combout\ = (\SLL64|Stage1_sig[30]~115_combout\ & ((\SRL64|Stage2_sig[48]~29_combout\) # ((\SLL64|Stage1_sig[22]~113_combout\ & \SRL64|Stage2_sig[48]~28_combout\)))) # (!\SLL64|Stage1_sig[30]~115_combout\ & 
-- (\SLL64|Stage1_sig[22]~113_combout\ & ((\SRL64|Stage2_sig[48]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[30]~115_combout\,
	datab => \SLL64|Stage1_sig[22]~113_combout\,
	datac => \SRL64|Stage2_sig[48]~29_combout\,
	datad => \SRL64|Stage2_sig[48]~28_combout\,
	combout => \SLL64|Stage2_sig[30]~77_combout\);

-- Location: LCCOMB_X69_Y38_N2
\SLL64|Stage2_sig[30]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[30]~76_combout\ = (\SRL64|Stage2_sig[44]~32_combout\ & ((\B[0]~input_o\ & ((\SLL64|Stage1_sig[18]~56_combout\))) # (!\B[0]~input_o\ & (\SLL64|Stage1_sig[19]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage2_sig[44]~32_combout\,
	datac => \SLL64|Stage1_sig[19]~57_combout\,
	datad => \SLL64|Stage1_sig[18]~56_combout\,
	combout => \SLL64|Stage2_sig[30]~76_combout\);

-- Location: LCCOMB_X76_Y36_N0
\SLL64|Stage2_sig[30]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[30]~78_combout\ = (\SLL64|Stage2_sig[30]~77_combout\) # ((\SLL64|Stage2_sig[30]~76_combout\) # ((\SLL64|Stage1_sig[26]~68_combout\ & \SRA64|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[26]~68_combout\,
	datab => \SRA64|Equal5~0_combout\,
	datac => \SLL64|Stage2_sig[30]~77_combout\,
	datad => \SLL64|Stage2_sig[30]~76_combout\,
	combout => \SLL64|Stage2_sig[30]~78_combout\);

-- Location: IOIBUF_X115_Y50_N8
\C[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(30),
	o => \C[30]~input_o\);

-- Location: LCCOMB_X76_Y43_N4
\SRA_SRL_sig[62]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[62]~73_combout\ = (!\ShiftFN[0]~input_o\ & (!\SRA64|Equal8~1_combout\ & (\SRL64|Stage1_sig[62]~227_combout\ & \SRL64|Stage2_sig[48]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRA64|Equal8~1_combout\,
	datac => \SRL64|Stage1_sig[62]~227_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \SRA_SRL_sig[62]~73_combout\);

-- Location: LCCOMB_X76_Y43_N30
\SRA_SRL_sig[62]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[62]~74_combout\ = (\SRA_SRL_sig[48]~35_combout\) # ((\SRA_SRL_sig[62]~73_combout\) # ((\SRA64|Stage2_sig[62]~44_combout\ & \SgnExtLower_sig[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[48]~35_combout\,
	datab => \SRA64|Stage2_sig[62]~44_combout\,
	datac => \SRA_SRL_sig[62]~73_combout\,
	datad => \SgnExtLower_sig[31]~0_combout\,
	combout => \SRA_SRL_sig[62]~74_combout\);

-- Location: LCCOMB_X80_Y43_N4
\Y_sig~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~221_combout\ = (\Y_sig~155_combout\ & (((!\Y_sig~156_combout\)))) # (!\Y_sig~155_combout\ & ((\Y_sig~156_combout\ & ((\SRA_SRL_sig[62]~74_combout\))) # (!\Y_sig~156_combout\ & (\C[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[30]~input_o\,
	datab => \SRA_SRL_sig[62]~74_combout\,
	datac => \Y_sig~155_combout\,
	datad => \Y_sig~156_combout\,
	combout => \Y_sig~221_combout\);

-- Location: LCCOMB_X75_Y40_N28
\Y_sig~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~222_combout\ = (\Y_sig~345_combout\ & ((\Y_sig~221_combout\ & (\SLL64|Stage2_sig[30]~78_combout\)) # (!\Y_sig~221_combout\ & ((\SLL64|Stage2_sig[14]~32_combout\))))) # (!\Y_sig~345_combout\ & (((\Y_sig~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~345_combout\,
	datab => \SLL64|Stage2_sig[30]~78_combout\,
	datac => \SLL64|Stage2_sig[14]~32_combout\,
	datad => \Y_sig~221_combout\,
	combout => \Y_sig~222_combout\);

-- Location: LCCOMB_X74_Y43_N22
\Y_sig~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~219_combout\ = (\Y_sig~150_combout\ & ((\Y_sig~151_combout\ & (\SRL64|Stage2_sig[46]~143_combout\)) # (!\Y_sig~151_combout\ & ((\SRL64|Stage2_sig[62]~162_combout\))))) # (!\Y_sig~150_combout\ & (((\Y_sig~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[46]~143_combout\,
	datab => \Y_sig~150_combout\,
	datac => \Y_sig~151_combout\,
	datad => \SRL64|Stage2_sig[62]~162_combout\,
	combout => \Y_sig~219_combout\);

-- Location: LCCOMB_X75_Y40_N2
\Y_sig~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~220_combout\ = (\Y_sig~149_combout\ & ((\Y_sig~219_combout\ & ((\SRA64|Stage2_sig[62]~44_combout\))) # (!\Y_sig~219_combout\ & (\X_sig[63]~2_combout\)))) # (!\Y_sig~149_combout\ & (((\Y_sig~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~149_combout\,
	datab => \X_sig[63]~2_combout\,
	datac => \Y_sig~219_combout\,
	datad => \SRA64|Stage2_sig[62]~44_combout\,
	combout => \Y_sig~220_combout\);

-- Location: LCCOMB_X75_Y40_N14
\Y_sig~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~223_combout\ = (\Y_sig~51_combout\ & (((\Y_sig~41_combout\ & \Y_sig~220_combout\)))) # (!\Y_sig~51_combout\ & ((\Y_sig~222_combout\) # ((\Y_sig~41_combout\ & \Y_sig~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~51_combout\,
	datab => \Y_sig~222_combout\,
	datac => \Y_sig~41_combout\,
	datad => \Y_sig~220_combout\,
	combout => \Y_sig~223_combout\);

-- Location: LCCOMB_X72_Y43_N18
\Y_sig~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~359_combout\ = (\Y_sig~223_combout\) # ((\Y_sig~36_combout\ & ((\SRL64|Stage2_sig[30]~144_combout\) # (\SRL64|Stage2_sig[30]~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~36_combout\,
	datab => \SRL64|Stage2_sig[30]~144_combout\,
	datac => \Y_sig~223_combout\,
	datad => \SRL64|Stage2_sig[30]~145_combout\,
	combout => \Y_sig~359_combout\);

-- Location: LCCOMB_X72_Y37_N8
\SLL64|Stage1_sig[31]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[31]~75_combout\ = (\B[0]~input_o\ & (\SLL64|Stage1_sig[31]~74_combout\)) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~229_combout\) # (\SRL64|Stage1_sig[48]~234_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[31]~74_combout\,
	datab => \SRL64|Stage1_sig[48]~229_combout\,
	datac => \SRL64|Stage1_sig[48]~234_combout\,
	datad => \B[0]~input_o\,
	combout => \SLL64|Stage1_sig[31]~75_combout\);

-- Location: LCCOMB_X76_Y38_N6
\SLL64|Stage2_sig[31]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[31]~80_combout\ = (\SRL64|Stage2_sig[48]~28_combout\ & ((\SLL64|Stage1_sig[23]~114_combout\) # ((\SLL64|Stage1_sig[31]~75_combout\ & \SRL64|Stage2_sig[48]~29_combout\)))) # (!\SRL64|Stage2_sig[48]~28_combout\ & 
-- (((\SLL64|Stage1_sig[31]~75_combout\ & \SRL64|Stage2_sig[48]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~28_combout\,
	datab => \SLL64|Stage1_sig[23]~114_combout\,
	datac => \SLL64|Stage1_sig[31]~75_combout\,
	datad => \SRL64|Stage2_sig[48]~29_combout\,
	combout => \SLL64|Stage2_sig[31]~80_combout\);

-- Location: LCCOMB_X76_Y38_N28
\SLL64|Stage2_sig[31]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[31]~79_combout\ = (\SRL64|Stage2_sig[44]~32_combout\ & ((\B[0]~input_o\ & ((\SLL64|Stage1_sig[19]~57_combout\))) # (!\B[0]~input_o\ & (\SLL64|Stage1_sig[20]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[20]~58_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage2_sig[44]~32_combout\,
	datad => \SLL64|Stage1_sig[19]~57_combout\,
	combout => \SLL64|Stage2_sig[31]~79_combout\);

-- Location: LCCOMB_X76_Y38_N24
\SLL64|Stage2_sig[31]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[31]~81_combout\ = (\SLL64|Stage2_sig[31]~80_combout\) # ((\SLL64|Stage2_sig[31]~79_combout\) # ((\SRA64|Equal5~0_combout\ & \SLL64|Stage1_sig[27]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[31]~80_combout\,
	datab => \SRA64|Equal5~0_combout\,
	datac => \SLL64|Stage1_sig[27]~70_combout\,
	datad => \SLL64|Stage2_sig[31]~79_combout\,
	combout => \SLL64|Stage2_sig[31]~81_combout\);

-- Location: IOIBUF_X115_Y35_N15
\C[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(31),
	o => \C[31]~input_o\);

-- Location: LCCOMB_X79_Y42_N12
\SgnExtLower_sig[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SgnExtLower_sig[31]~1_combout\ = (\ShiftFN[0]~input_o\ & (\SRA64|Equal8~0_combout\ & ((\SLL64|Stage2_sig[15]~34_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\C[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal8~0_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \C[31]~input_o\,
	datad => \SLL64|Stage2_sig[15]~34_combout\,
	combout => \SgnExtLower_sig[31]~1_combout\);

-- Location: LCCOMB_X79_Y42_N14
\SgnExtUpper_sig[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SgnExtUpper_sig[0]~5_combout\ = (!\ShiftFN[1]~input_o\ & ((\SgnExtLower_sig[31]~1_combout\) # ((\SgnExtLower_sig[31]~0_combout\ & \SLL64|Stage2_sig[31]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtLower_sig[31]~0_combout\,
	datab => \SLL64|Stage2_sig[31]~81_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \SgnExtLower_sig[31]~1_combout\,
	combout => \SgnExtUpper_sig[0]~5_combout\);

-- Location: LCCOMB_X77_Y42_N24
\SgnExtUpper_sig[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SgnExtUpper_sig[0]~2_combout\ = (!\ShiftFN[0]~input_o\ & (\SRL64|Stage2_sig[63]~149_combout\ & (!\B[4]~input_o\ & \ShiftCount[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRL64|Stage2_sig[63]~149_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \SgnExtUpper_sig[0]~2_combout\);

-- Location: LCCOMB_X77_Y42_N26
\SgnExtUpper_sig[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SgnExtUpper_sig[0]~3_combout\ = (\SgnExtUpper_sig[0]~2_combout\) # ((\SRA64|Equal8~0_combout\ & (\SRL64|Stage2_sig[47]~148_combout\)) # (!\SRA64|Equal8~0_combout\ & ((\SRA_SRL_sig[48]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[47]~148_combout\,
	datab => \SRA_SRL_sig[48]~39_combout\,
	datac => \SRA64|Equal8~0_combout\,
	datad => \SgnExtUpper_sig[0]~2_combout\,
	combout => \SgnExtUpper_sig[0]~3_combout\);

-- Location: LCCOMB_X77_Y42_N30
\SgnExtUpper_sig[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SgnExtUpper_sig[0]~11_combout\ = (\SRA64|Equal8~1_combout\ & (((\SgnExtUpper_sig[0]~3_combout\)))) # (!\SRA64|Equal8~1_combout\ & ((\SRL64|Stage2_sig[31]~150_combout\) # ((\SRL64|Stage2_sig[31]~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal8~1_combout\,
	datab => \SRL64|Stage2_sig[31]~150_combout\,
	datac => \SgnExtUpper_sig[0]~3_combout\,
	datad => \SRL64|Stage2_sig[31]~151_combout\,
	combout => \SgnExtUpper_sig[0]~11_combout\);

-- Location: LCCOMB_X77_Y42_N6
\SRA_SRL_sig[47]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA_SRL_sig[47]~75_combout\ = (\X_sig[63]~2_combout\ & ((\ShiftFN[0]~input_o\) # ((!\SRA64|Equal8~1_combout\ & \SRL64|Stage2_sig[63]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal8~1_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \X_sig[63]~2_combout\,
	datad => \SRL64|Stage2_sig[63]~27_combout\,
	combout => \SRA_SRL_sig[47]~75_combout\);

-- Location: LCCOMB_X80_Y42_N12
\SgnExtUpper_sig[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SgnExtUpper_sig[0]~4_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\SRA_SRL_sig[47]~75_combout\))) # (!\ExtWord~input_o\ & (\SgnExtUpper_sig[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \SgnExtUpper_sig[0]~11_combout\,
	datad => \SRA_SRL_sig[47]~75_combout\,
	combout => \SgnExtUpper_sig[0]~4_combout\);

-- Location: LCCOMB_X80_Y42_N14
\SgnExtUpper_sig[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SgnExtUpper_sig[0]~6_combout\ = (\SgnExtUpper_sig[0]~5_combout\) # (\SgnExtUpper_sig[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtUpper_sig[0]~5_combout\,
	datad => \SgnExtUpper_sig[0]~4_combout\,
	combout => \SgnExtUpper_sig[0]~6_combout\);

-- Location: LCCOMB_X75_Y37_N20
\SLL64|Y[32]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[32]~12_combout\ = (!\B[3]~input_o\ & (!\B[2]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[3]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLL64|Y[32]~12_combout\);

-- Location: LCCOMB_X72_Y36_N20
\SLL64|Stage1_sig[33]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[33]~76_combout\ = (\SRL64|Stage1_sig[48]~258_combout\) # (\SRL64|Stage1_sig[48]~129_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~258_combout\,
	datad => \SRL64|Stage1_sig[48]~129_combout\,
	combout => \SLL64|Stage1_sig[33]~76_combout\);

-- Location: LCCOMB_X72_Y37_N26
\SLL64|Stage1_sig[32]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[32]~77_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~234_combout\) # ((\SRL64|Stage1_sig[48]~229_combout\)))) # (!\B[0]~input_o\ & (((\SLL64|Stage1_sig[33]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[48]~234_combout\,
	datac => \SRL64|Stage1_sig[48]~229_combout\,
	datad => \SLL64|Stage1_sig[33]~76_combout\,
	combout => \SLL64|Stage1_sig[32]~77_combout\);

-- Location: LCCOMB_X75_Y39_N22
\SLL64|Y[32]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[32]~13_combout\ = (\SLL64|Y[32]~10_combout\ & ((\ShiftCount[5]~0_combout\) # ((\SLL64|Y[32]~12_combout\ & \SLL64|Stage1_sig[32]~77_combout\)))) # (!\SLL64|Y[32]~10_combout\ & (\SLL64|Y[32]~12_combout\ & ((\SLL64|Stage1_sig[32]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[32]~10_combout\,
	datab => \SLL64|Y[32]~12_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \SLL64|Stage1_sig[32]~77_combout\,
	combout => \SLL64|Y[32]~13_combout\);

-- Location: LCCOMB_X75_Y37_N6
\SLL64|Y[32]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[32]~14_combout\ = (\B[3]~input_o\ & (!\B[2]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[3]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLL64|Y[32]~14_combout\);

-- Location: LCCOMB_X75_Y37_N18
\Y_sig~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~224_combout\ = (\B[2]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[2]~input_o\,
	combout => \Y_sig~224_combout\);

-- Location: LCCOMB_X75_Y39_N4
\SLL64|Y[32]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[32]~11_combout\ = (\Y_sig~224_combout\ & ((\B[3]~input_o\ & (\SLL64|Stage1_sig[20]~60_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage1_sig[28]~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~224_combout\,
	datab => \SLL64|Stage1_sig[20]~60_combout\,
	datac => \SLL64|Stage1_sig[28]~71_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64|Y[32]~11_combout\);

-- Location: LCCOMB_X75_Y39_N24
\SLL64|Y[32]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[32]~15_combout\ = (\SLL64|Y[32]~13_combout\) # ((\SLL64|Y[32]~11_combout\) # ((\SLL64|Y[32]~14_combout\ & \SLL64|Stage1_sig[24]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[32]~13_combout\,
	datab => \SLL64|Y[32]~14_combout\,
	datac => \SLL64|Y[32]~11_combout\,
	datad => \SLL64|Stage1_sig[24]~65_combout\,
	combout => \SLL64|Y[32]~15_combout\);

-- Location: LCCOMB_X79_Y42_N30
\Y_sig~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~360_combout\ = (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & ((!\B[4]~input_o\) # (!\ShiftCount[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_sig~360_combout\);

-- Location: IOIBUF_X115_Y32_N8
\C[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(32),
	o => \C[32]~input_o\);

-- Location: LCCOMB_X79_Y40_N8
\Y_sig~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~225_combout\ = (\ShiftFN[1]~input_o\) # ((\B[4]~input_o\ & \ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_sig~225_combout\);

-- Location: LCCOMB_X79_Y40_N18
\Y_sig~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~226_combout\ = (\Y_sig~155_combout\ & (((!\Y_sig~225_combout\)))) # (!\Y_sig~155_combout\ & ((\Y_sig~225_combout\ & ((\SRA_SRL_sig[32]~1_combout\))) # (!\Y_sig~225_combout\ & (\C[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[32]~input_o\,
	datab => \Y_sig~155_combout\,
	datac => \Y_sig~225_combout\,
	datad => \SRA_SRL_sig[32]~1_combout\,
	combout => \Y_sig~226_combout\);

-- Location: LCCOMB_X80_Y39_N24
\Y_sig~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~227_combout\ = (\Y_sig~360_combout\ & ((\Y_sig~226_combout\ & (\SLL64|Y[32]~15_combout\)) # (!\Y_sig~226_combout\ & ((\SLL64|Stage2_sig[16]~36_combout\))))) # (!\Y_sig~360_combout\ & (((\Y_sig~226_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[32]~15_combout\,
	datab => \SLL64|Stage2_sig[16]~36_combout\,
	datac => \Y_sig~360_combout\,
	datad => \Y_sig~226_combout\,
	combout => \Y_sig~227_combout\);

-- Location: LCCOMB_X80_Y42_N0
\SgnExtUpper_sig[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SgnExtUpper_sig[0]~7_combout\ = (\SgnExtUpper_sig[0]~5_combout\) # ((\SRA_SRL_sig[47]~75_combout\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[47]~75_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \SgnExtUpper_sig[0]~5_combout\,
	combout => \SgnExtUpper_sig[0]~7_combout\);

-- Location: LCCOMB_X80_Y39_N2
\Y_sig~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~228_combout\ = (\ExtWord~input_o\ & ((\SgnExtUpper_sig[0]~7_combout\))) # (!\ExtWord~input_o\ & (\Y_sig~227_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y_sig~227_combout\,
	datad => \SgnExtUpper_sig[0]~7_combout\,
	combout => \Y_sig~228_combout\);

-- Location: IOIBUF_X115_Y22_N15
\C[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(33),
	o => \C[33]~input_o\);

-- Location: LCCOMB_X75_Y41_N20
\Y_sig~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~229_combout\ = (\Y_sig~155_combout\ & (((!\Y_sig~225_combout\)))) # (!\Y_sig~155_combout\ & ((\Y_sig~225_combout\ & (\SRA_SRL_sig[33]~6_combout\)) # (!\Y_sig~225_combout\ & ((\C[33]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[33]~6_combout\,
	datab => \Y_sig~155_combout\,
	datac => \Y_sig~225_combout\,
	datad => \C[33]~input_o\,
	combout => \Y_sig~229_combout\);

-- Location: LCCOMB_X72_Y37_N20
\SLL64|Stage1_sig[33]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[33]~78_combout\ = (\B[0]~input_o\ & (((\SLL64|Stage1_sig[33]~76_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~173_combout\) # ((\SRL64|Stage1_sig[48]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[48]~173_combout\,
	datac => \SLL64|Stage1_sig[33]~76_combout\,
	datad => \SRL64|Stage1_sig[48]~132_combout\,
	combout => \SLL64|Stage1_sig[33]~78_combout\);

-- Location: LCCOMB_X75_Y37_N24
\SLL64|Y[33]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[33]~16_combout\ = (\SLL64|Y[32]~14_combout\ & ((\SLL64|Stage1_sig[25]~67_combout\) # ((\Y_sig~224_combout\ & \SLL64|Stage2_sig[29]~74_combout\)))) # (!\SLL64|Y[32]~14_combout\ & (\Y_sig~224_combout\ & ((\SLL64|Stage2_sig[29]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[32]~14_combout\,
	datab => \Y_sig~224_combout\,
	datac => \SLL64|Stage1_sig[25]~67_combout\,
	datad => \SLL64|Stage2_sig[29]~74_combout\,
	combout => \SLL64|Y[33]~16_combout\);

-- Location: LCCOMB_X76_Y37_N20
\SLL64|Y[33]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[33]~17_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & (\SLL64|Stage1_sig[1]~30_combout\ & (!\ExtWord~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SLL64|Stage1_sig[1]~30_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \SLL64|Y[33]~17_combout\);

-- Location: LCCOMB_X75_Y37_N10
\SLL64|Y[33]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[33]~18_combout\ = (\SLL64|Y[33]~16_combout\) # ((\SLL64|Y[33]~17_combout\) # ((\SLL64|Stage1_sig[33]~78_combout\ & \SLL64|Y[32]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[33]~78_combout\,
	datab => \SLL64|Y[33]~16_combout\,
	datac => \SLL64|Y[33]~17_combout\,
	datad => \SLL64|Y[32]~12_combout\,
	combout => \SLL64|Y[33]~18_combout\);

-- Location: LCCOMB_X79_Y41_N24
\Y_sig~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~230_combout\ = (\Y_sig~229_combout\ & ((\SLL64|Y[33]~18_combout\) # ((!\Y_sig~360_combout\)))) # (!\Y_sig~229_combout\ & (((\Y_sig~360_combout\ & \SLL64|Stage2_sig[17]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~229_combout\,
	datab => \SLL64|Y[33]~18_combout\,
	datac => \Y_sig~360_combout\,
	datad => \SLL64|Stage2_sig[17]~39_combout\,
	combout => \Y_sig~230_combout\);

-- Location: LCCOMB_X77_Y37_N12
\Y_sig~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~231_combout\ = (\ExtWord~input_o\ & ((\SgnExtUpper_sig[0]~7_combout\))) # (!\ExtWord~input_o\ & (\Y_sig~230_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y_sig~230_combout\,
	datad => \SgnExtUpper_sig[0]~7_combout\,
	combout => \Y_sig~231_combout\);

-- Location: LCCOMB_X72_Y37_N30
\SLL64|Stage1_sig[35]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[35]~79_combout\ = (\SRL64|Stage1_sig[48]~156_combout\) # (\SRL64|Stage1_sig[48]~170_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~156_combout\,
	datad => \SRL64|Stage1_sig[48]~170_combout\,
	combout => \SLL64|Stage1_sig[35]~79_combout\);

-- Location: LCCOMB_X72_Y37_N16
\SLL64|Stage1_sig[34]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[34]~80_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~173_combout\) # ((\SRL64|Stage1_sig[48]~132_combout\)))) # (!\B[0]~input_o\ & (((\SLL64|Stage1_sig[35]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[48]~173_combout\,
	datac => \SLL64|Stage1_sig[35]~79_combout\,
	datad => \SRL64|Stage1_sig[48]~132_combout\,
	combout => \SLL64|Stage1_sig[34]~80_combout\);

-- Location: LCCOMB_X75_Y36_N12
\SLL64|Y[34]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[34]~20_combout\ = (\SLL64|Stage1_sig[26]~68_combout\ & ((\SLL64|Y[32]~14_combout\) # ((\SLL64|Stage1_sig[34]~80_combout\ & \SLL64|Y[32]~12_combout\)))) # (!\SLL64|Stage1_sig[26]~68_combout\ & (\SLL64|Stage1_sig[34]~80_combout\ & 
-- ((\SLL64|Y[32]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[26]~68_combout\,
	datab => \SLL64|Stage1_sig[34]~80_combout\,
	datac => \SLL64|Y[32]~14_combout\,
	datad => \SLL64|Y[32]~12_combout\,
	combout => \SLL64|Y[34]~20_combout\);

-- Location: LCCOMB_X76_Y36_N26
\SLL64|Y[34]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[34]~19_combout\ = (\Y_sig~224_combout\ & ((\B[3]~input_o\ & (\SLL64|Stage1_sig[22]~113_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage1_sig[30]~115_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~224_combout\,
	datab => \SLL64|Stage1_sig[22]~113_combout\,
	datac => \SLL64|Stage1_sig[30]~115_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64|Y[34]~19_combout\);

-- Location: LCCOMB_X76_Y36_N20
\SLL64|Y[34]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[34]~21_combout\ = (\SLL64|Y[34]~20_combout\) # ((\SLL64|Y[34]~19_combout\) # ((\ShiftCount[5]~0_combout\ & \SLL64|Stage2_sig[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[34]~20_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \SLL64|Y[34]~19_combout\,
	datad => \SLL64|Stage2_sig[2]~14_combout\,
	combout => \SLL64|Y[34]~21_combout\);

-- Location: IOIBUF_X115_Y47_N22
\C[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(34),
	o => \C[34]~input_o\);

-- Location: LCCOMB_X77_Y43_N12
\Y_sig~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~232_combout\ = (\Y_sig~225_combout\ & (!\Y_sig~155_combout\ & (\SRA_SRL_sig[34]~8_combout\))) # (!\Y_sig~225_combout\ & ((\Y_sig~155_combout\) # ((\C[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~225_combout\,
	datab => \Y_sig~155_combout\,
	datac => \SRA_SRL_sig[34]~8_combout\,
	datad => \C[34]~input_o\,
	combout => \Y_sig~232_combout\);

-- Location: LCCOMB_X79_Y39_N6
\Y_sig~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~233_combout\ = (\Y_sig~360_combout\ & ((\Y_sig~232_combout\ & (\SLL64|Y[34]~21_combout\)) # (!\Y_sig~232_combout\ & ((\SLL64|Stage2_sig[18]~42_combout\))))) # (!\Y_sig~360_combout\ & (((\Y_sig~232_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[34]~21_combout\,
	datab => \Y_sig~360_combout\,
	datac => \Y_sig~232_combout\,
	datad => \SLL64|Stage2_sig[18]~42_combout\,
	combout => \Y_sig~233_combout\);

-- Location: LCCOMB_X79_Y39_N8
\Y_sig~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~234_combout\ = (\ExtWord~input_o\ & ((\SgnExtUpper_sig[0]~7_combout\))) # (!\ExtWord~input_o\ & (\Y_sig~233_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~233_combout\,
	datac => \ExtWord~input_o\,
	datad => \SgnExtUpper_sig[0]~7_combout\,
	combout => \Y_sig~234_combout\);

-- Location: LCCOMB_X76_Y38_N10
\SLL64|Y[35]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[35]~22_combout\ = (\Y_sig~224_combout\ & ((\B[3]~input_o\ & (\SLL64|Stage1_sig[23]~114_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage1_sig[31]~75_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~224_combout\,
	datab => \SLL64|Stage1_sig[23]~114_combout\,
	datac => \SLL64|Stage1_sig[31]~75_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64|Y[35]~22_combout\);

-- Location: LCCOMB_X72_Y37_N18
\SLL64|Stage1_sig[35]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[35]~81_combout\ = (\B[0]~input_o\ & (\SLL64|Stage1_sig[35]~79_combout\)) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~206_combout\) # (\SRL64|Stage1_sig[48]~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[35]~79_combout\,
	datab => \SRL64|Stage1_sig[48]~206_combout\,
	datac => \SRL64|Stage1_sig[48]~228_combout\,
	datad => \B[0]~input_o\,
	combout => \SLL64|Stage1_sig[35]~81_combout\);

-- Location: LCCOMB_X76_Y38_N20
\SLL64|Y[35]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[35]~23_combout\ = (\ShiftCount[5]~0_combout\ & ((\SLL64|Stage2_sig[3]~105_combout\) # ((\SLL64|Stage1_sig[35]~81_combout\ & \SLL64|Y[32]~12_combout\)))) # (!\ShiftCount[5]~0_combout\ & (\SLL64|Stage1_sig[35]~81_combout\ & 
-- (\SLL64|Y[32]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \SLL64|Stage1_sig[35]~81_combout\,
	datac => \SLL64|Y[32]~12_combout\,
	datad => \SLL64|Stage2_sig[3]~105_combout\,
	combout => \SLL64|Y[35]~23_combout\);

-- Location: LCCOMB_X76_Y38_N14
\SLL64|Y[35]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[35]~24_combout\ = (\SLL64|Y[35]~22_combout\) # ((\SLL64|Y[35]~23_combout\) # ((\SLL64|Y[32]~14_combout\ & \SLL64|Stage1_sig[27]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[35]~22_combout\,
	datab => \SLL64|Y[32]~14_combout\,
	datac => \SLL64|Stage1_sig[27]~70_combout\,
	datad => \SLL64|Y[35]~23_combout\,
	combout => \SLL64|Y[35]~24_combout\);

-- Location: IOIBUF_X115_Y24_N1
\C[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(35),
	o => \C[35]~input_o\);

-- Location: LCCOMB_X79_Y40_N4
\Y_sig~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~235_combout\ = (\Y_sig~225_combout\ & (((\SRA_SRL_sig[35]~10_combout\ & !\Y_sig~155_combout\)))) # (!\Y_sig~225_combout\ & ((\C[35]~input_o\) # ((\Y_sig~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[35]~input_o\,
	datab => \SRA_SRL_sig[35]~10_combout\,
	datac => \Y_sig~225_combout\,
	datad => \Y_sig~155_combout\,
	combout => \Y_sig~235_combout\);

-- Location: LCCOMB_X77_Y38_N18
\Y_sig~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~236_combout\ = (\Y_sig~360_combout\ & ((\Y_sig~235_combout\ & (\SLL64|Y[35]~24_combout\)) # (!\Y_sig~235_combout\ & ((\SLL64|Stage2_sig[19]~45_combout\))))) # (!\Y_sig~360_combout\ & (((\Y_sig~235_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[35]~24_combout\,
	datab => \SLL64|Stage2_sig[19]~45_combout\,
	datac => \Y_sig~360_combout\,
	datad => \Y_sig~235_combout\,
	combout => \Y_sig~236_combout\);

-- Location: LCCOMB_X77_Y37_N14
\Y_sig~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~237_combout\ = (\ExtWord~input_o\ & ((\SgnExtUpper_sig[0]~7_combout\))) # (!\ExtWord~input_o\ & (\Y_sig~236_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \Y_sig~236_combout\,
	datad => \SgnExtUpper_sig[0]~7_combout\,
	combout => \Y_sig~237_combout\);

-- Location: LCCOMB_X68_Y36_N20
\SLL64|Stage1_sig[37]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[37]~82_combout\ = (\SRL64|Stage1_sig[48]~128_combout\) # (\SRL64|Stage1_sig[48]~126_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~128_combout\,
	datad => \SRL64|Stage1_sig[48]~126_combout\,
	combout => \SLL64|Stage1_sig[37]~82_combout\);

-- Location: LCCOMB_X70_Y35_N8
\SLL64|Stage1_sig[36]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[36]~83_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~206_combout\) # (\SRL64|Stage1_sig[48]~228_combout\)))) # (!\B[0]~input_o\ & (\SLL64|Stage1_sig[37]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[37]~82_combout\,
	datab => \SRL64|Stage1_sig[48]~206_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~228_combout\,
	combout => \SLL64|Stage1_sig[36]~83_combout\);

-- Location: LCCOMB_X75_Y39_N6
\SLL64|Y[36]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[36]~28_combout\ = (\SLL64|Stage1_sig[28]~71_combout\ & ((\SLL64|Y[32]~14_combout\) # ((\SLL64|Stage1_sig[36]~83_combout\ & \SLL64|Y[32]~12_combout\)))) # (!\SLL64|Stage1_sig[28]~71_combout\ & (\SLL64|Stage1_sig[36]~83_combout\ & 
-- (\SLL64|Y[32]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[28]~71_combout\,
	datab => \SLL64|Stage1_sig[36]~83_combout\,
	datac => \SLL64|Y[32]~12_combout\,
	datad => \SLL64|Y[32]~14_combout\,
	combout => \SLL64|Y[36]~28_combout\);

-- Location: LCCOMB_X75_Y37_N4
\SLL64|Y[36]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[36]~25_combout\ = (!\B[3]~input_o\ & (\B[2]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[3]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLL64|Y[36]~25_combout\);

-- Location: LCCOMB_X75_Y39_N18
\SLL64|Y[39]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[39]~26_combout\ = (\B[2]~input_o\ & (\B[3]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SLL64|Y[39]~26_combout\);

-- Location: LCCOMB_X75_Y39_N20
\SLL64|Y[36]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[36]~27_combout\ = (\SLL64|Stage1_sig[24]~65_combout\ & ((\SLL64|Y[39]~26_combout\) # ((\SLL64|Stage1_sig[32]~77_combout\ & \SLL64|Y[36]~25_combout\)))) # (!\SLL64|Stage1_sig[24]~65_combout\ & (\SLL64|Stage1_sig[32]~77_combout\ & 
-- (\SLL64|Y[36]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[24]~65_combout\,
	datab => \SLL64|Stage1_sig[32]~77_combout\,
	datac => \SLL64|Y[36]~25_combout\,
	datad => \SLL64|Y[39]~26_combout\,
	combout => \SLL64|Y[36]~27_combout\);

-- Location: LCCOMB_X75_Y39_N0
\SLL64|Y[36]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[36]~29_combout\ = (\SLL64|Y[36]~28_combout\) # ((\SLL64|Y[36]~27_combout\) # ((\ShiftCount[5]~0_combout\ & \SLL64|Stage2_sig[4]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[36]~28_combout\,
	datab => \SLL64|Y[36]~27_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \SLL64|Stage2_sig[4]~16_combout\,
	combout => \SLL64|Y[36]~29_combout\);

-- Location: IOIBUF_X83_Y0_N1
\C[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(36),
	o => \C[36]~input_o\);

-- Location: LCCOMB_X79_Y40_N30
\Y_sig~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~238_combout\ = (\Y_sig~155_combout\ & (((!\Y_sig~225_combout\)))) # (!\Y_sig~155_combout\ & ((\Y_sig~225_combout\ & ((\SRA_SRL_sig[36]~12_combout\))) # (!\Y_sig~225_combout\ & (\C[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[36]~input_o\,
	datab => \Y_sig~155_combout\,
	datac => \Y_sig~225_combout\,
	datad => \SRA_SRL_sig[36]~12_combout\,
	combout => \Y_sig~238_combout\);

-- Location: LCCOMB_X80_Y39_N12
\Y_sig~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~239_combout\ = (\Y_sig~360_combout\ & ((\Y_sig~238_combout\ & ((\SLL64|Y[36]~29_combout\))) # (!\Y_sig~238_combout\ & (\SLL64|Stage2_sig[20]~48_combout\)))) # (!\Y_sig~360_combout\ & (((\Y_sig~238_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[20]~48_combout\,
	datab => \SLL64|Y[36]~29_combout\,
	datac => \Y_sig~360_combout\,
	datad => \Y_sig~238_combout\,
	combout => \Y_sig~239_combout\);

-- Location: LCCOMB_X80_Y39_N22
\Y_sig~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~240_combout\ = (\ExtWord~input_o\ & (\SgnExtUpper_sig[0]~7_combout\)) # (!\ExtWord~input_o\ & ((\Y_sig~239_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SgnExtUpper_sig[0]~7_combout\,
	datad => \Y_sig~239_combout\,
	combout => \Y_sig~240_combout\);

-- Location: IOIBUF_X115_Y29_N1
\C[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(37),
	o => \C[37]~input_o\);

-- Location: LCCOMB_X75_Y41_N22
\Y_sig~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~241_combout\ = (\Y_sig~155_combout\ & (((!\Y_sig~225_combout\)))) # (!\Y_sig~155_combout\ & ((\Y_sig~225_combout\ & (\SRA_SRL_sig[37]~14_combout\)) # (!\Y_sig~225_combout\ & ((\C[37]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[37]~14_combout\,
	datab => \Y_sig~155_combout\,
	datac => \Y_sig~225_combout\,
	datad => \C[37]~input_o\,
	combout => \Y_sig~241_combout\);

-- Location: LCCOMB_X75_Y37_N30
\SLL64|Y[37]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[37]~30_combout\ = (\ShiftCount[5]~0_combout\ & (((\SLL64|Stage2_sig[5]~17_combout\)))) # (!\ShiftCount[5]~0_combout\ & (\SRL64|Stage2_sig[44]~32_combout\ & (\SLL64|Stage1_sig[25]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \SRL64|Stage2_sig[44]~32_combout\,
	datac => \SLL64|Stage1_sig[25]~67_combout\,
	datad => \SLL64|Stage2_sig[5]~17_combout\,
	combout => \SLL64|Y[37]~30_combout\);

-- Location: LCCOMB_X72_Y38_N30
\SLL64|Stage1_sig[37]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[37]~84_combout\ = (\B[0]~input_o\ & (((\SLL64|Stage1_sig[37]~82_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~131_combout\) # ((\SRL64|Stage1_sig[48]~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~131_combout\,
	datab => \B[0]~input_o\,
	datac => \SLL64|Stage1_sig[37]~82_combout\,
	datad => \SRL64|Stage1_sig[48]~123_combout\,
	combout => \SLL64|Stage1_sig[37]~84_combout\);

-- Location: LCCOMB_X75_Y37_N8
\SLL64|Y[37]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[37]~31_combout\ = (\SLL64|Stage1_sig[29]~73_combout\ & ((\SLL64|Y[32]~14_combout\) # ((\SLL64|Y[32]~12_combout\ & \SLL64|Stage1_sig[37]~84_combout\)))) # (!\SLL64|Stage1_sig[29]~73_combout\ & (\SLL64|Y[32]~12_combout\ & 
-- (\SLL64|Stage1_sig[37]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[29]~73_combout\,
	datab => \SLL64|Y[32]~12_combout\,
	datac => \SLL64|Stage1_sig[37]~84_combout\,
	datad => \SLL64|Y[32]~14_combout\,
	combout => \SLL64|Y[37]~31_combout\);

-- Location: LCCOMB_X75_Y37_N26
\SLL64|Y[37]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[37]~32_combout\ = (\SLL64|Y[37]~30_combout\) # ((\SLL64|Y[37]~31_combout\) # ((\SLL64|Y[36]~25_combout\ & \SLL64|Stage1_sig[33]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[37]~30_combout\,
	datab => \SLL64|Y[37]~31_combout\,
	datac => \SLL64|Y[36]~25_combout\,
	datad => \SLL64|Stage1_sig[33]~78_combout\,
	combout => \SLL64|Y[37]~32_combout\);

-- Location: LCCOMB_X79_Y41_N26
\Y_sig~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~242_combout\ = (\Y_sig~241_combout\ & ((\SLL64|Y[37]~32_combout\) # ((!\Y_sig~360_combout\)))) # (!\Y_sig~241_combout\ & (((\Y_sig~360_combout\ & \SLL64|Stage2_sig[21]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~241_combout\,
	datab => \SLL64|Y[37]~32_combout\,
	datac => \Y_sig~360_combout\,
	datad => \SLL64|Stage2_sig[21]~51_combout\,
	combout => \Y_sig~242_combout\);

-- Location: LCCOMB_X83_Y41_N24
\Y_sig~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~243_combout\ = (\ExtWord~input_o\ & ((\SgnExtUpper_sig[0]~7_combout\))) # (!\ExtWord~input_o\ & (\Y_sig~242_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y_sig~242_combout\,
	datac => \ExtWord~input_o\,
	datad => \SgnExtUpper_sig[0]~7_combout\,
	combout => \Y_sig~243_combout\);

-- Location: LCCOMB_X76_Y36_N22
\SLL64|Y[38]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[38]~33_combout\ = (\ShiftCount[5]~0_combout\ & (((\SLL64|Stage2_sig[6]~18_combout\)))) # (!\ShiftCount[5]~0_combout\ & (\SLL64|Stage1_sig[26]~68_combout\ & ((\SRL64|Stage2_sig[44]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[26]~68_combout\,
	datab => \SLL64|Stage2_sig[6]~18_combout\,
	datac => \SRL64|Stage2_sig[44]~32_combout\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \SLL64|Y[38]~33_combout\);

-- Location: LCCOMB_X72_Y38_N16
\SLL64|Stage1_sig[39]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[39]~85_combout\ = (\SRL64|Stage1_sig[48]~155_combout\) # (\SRL64|Stage1_sig[48]~163_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage1_sig[48]~155_combout\,
	datad => \SRL64|Stage1_sig[48]~163_combout\,
	combout => \SLL64|Stage1_sig[39]~85_combout\);

-- Location: LCCOMB_X72_Y38_N2
\SLL64|Stage1_sig[38]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[38]~86_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~131_combout\) # ((\SRL64|Stage1_sig[48]~123_combout\)))) # (!\B[0]~input_o\ & (((\SLL64|Stage1_sig[39]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~131_combout\,
	datab => \SLL64|Stage1_sig[39]~85_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~123_combout\,
	combout => \SLL64|Stage1_sig[38]~86_combout\);

-- Location: LCCOMB_X76_Y36_N24
\SLL64|Y[38]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[38]~34_combout\ = (\SLL64|Stage1_sig[38]~86_combout\ & ((\SLL64|Y[32]~12_combout\) # ((\SLL64|Stage1_sig[30]~115_combout\ & \SLL64|Y[32]~14_combout\)))) # (!\SLL64|Stage1_sig[38]~86_combout\ & (((\SLL64|Stage1_sig[30]~115_combout\ & 
-- \SLL64|Y[32]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[38]~86_combout\,
	datab => \SLL64|Y[32]~12_combout\,
	datac => \SLL64|Stage1_sig[30]~115_combout\,
	datad => \SLL64|Y[32]~14_combout\,
	combout => \SLL64|Y[38]~34_combout\);

-- Location: LCCOMB_X76_Y36_N18
\SLL64|Y[38]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[38]~35_combout\ = (\SLL64|Y[38]~33_combout\) # ((\SLL64|Y[38]~34_combout\) # ((\SLL64|Y[36]~25_combout\ & \SLL64|Stage1_sig[34]~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[36]~25_combout\,
	datab => \SLL64|Stage1_sig[34]~80_combout\,
	datac => \SLL64|Y[38]~33_combout\,
	datad => \SLL64|Y[38]~34_combout\,
	combout => \SLL64|Y[38]~35_combout\);

-- Location: IOIBUF_X89_Y0_N1
\C[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(38),
	o => \C[38]~input_o\);

-- Location: LCCOMB_X79_Y40_N0
\Y_sig~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~244_combout\ = (\Y_sig~225_combout\ & (\SRA_SRL_sig[38]~16_combout\ & ((!\Y_sig~155_combout\)))) # (!\Y_sig~225_combout\ & (((\C[38]~input_o\) # (\Y_sig~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[38]~16_combout\,
	datab => \Y_sig~225_combout\,
	datac => \C[38]~input_o\,
	datad => \Y_sig~155_combout\,
	combout => \Y_sig~244_combout\);

-- Location: LCCOMB_X79_Y39_N10
\Y_sig~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~245_combout\ = (\Y_sig~244_combout\ & ((\SLL64|Y[38]~35_combout\) # ((!\Y_sig~360_combout\)))) # (!\Y_sig~244_combout\ & (((\SLL64|Stage2_sig[22]~54_combout\ & \Y_sig~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[38]~35_combout\,
	datab => \SLL64|Stage2_sig[22]~54_combout\,
	datac => \Y_sig~244_combout\,
	datad => \Y_sig~360_combout\,
	combout => \Y_sig~245_combout\);

-- Location: LCCOMB_X79_Y39_N20
\Y_sig~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~246_combout\ = (\ExtWord~input_o\ & ((\SgnExtUpper_sig[0]~7_combout\))) # (!\ExtWord~input_o\ & (\Y_sig~245_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~245_combout\,
	datac => \ExtWord~input_o\,
	datad => \SgnExtUpper_sig[0]~7_combout\,
	combout => \Y_sig~246_combout\);

-- Location: LCCOMB_X72_Y38_N20
\SLL64|Stage1_sig[39]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[39]~87_combout\ = (\B[0]~input_o\ & (((\SLL64|Stage1_sig[39]~85_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~212_combout\) # ((\SRL64|Stage1_sig[48]~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~212_combout\,
	datab => \SLL64|Stage1_sig[39]~85_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~205_combout\,
	combout => \SLL64|Stage1_sig[39]~87_combout\);

-- Location: LCCOMB_X76_Y38_N18
\SLL64|Y[39]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[39]~37_combout\ = (\SLL64|Stage1_sig[39]~87_combout\ & ((\SLL64|Y[32]~12_combout\) # ((\SLL64|Stage1_sig[31]~75_combout\ & \SLL64|Y[32]~14_combout\)))) # (!\SLL64|Stage1_sig[39]~87_combout\ & (((\SLL64|Stage1_sig[31]~75_combout\ & 
-- \SLL64|Y[32]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[39]~87_combout\,
	datab => \SLL64|Y[32]~12_combout\,
	datac => \SLL64|Stage1_sig[31]~75_combout\,
	datad => \SLL64|Y[32]~14_combout\,
	combout => \SLL64|Y[39]~37_combout\);

-- Location: LCCOMB_X76_Y38_N16
\SLL64|Y[39]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[39]~36_combout\ = (\ShiftCount[5]~0_combout\ & (((\SLL64|Stage2_sig[7]~19_combout\)))) # (!\ShiftCount[5]~0_combout\ & (\SRL64|Stage2_sig[44]~32_combout\ & ((\SLL64|Stage1_sig[27]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[44]~32_combout\,
	datab => \SLL64|Stage2_sig[7]~19_combout\,
	datac => \SLL64|Stage1_sig[27]~70_combout\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \SLL64|Y[39]~36_combout\);

-- Location: LCCOMB_X76_Y38_N12
\SLL64|Y[39]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[39]~38_combout\ = (\SLL64|Y[39]~37_combout\) # ((\SLL64|Y[39]~36_combout\) # ((\SLL64|Y[36]~25_combout\ & \SLL64|Stage1_sig[35]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[36]~25_combout\,
	datab => \SLL64|Y[39]~37_combout\,
	datac => \SLL64|Stage1_sig[35]~81_combout\,
	datad => \SLL64|Y[39]~36_combout\,
	combout => \SLL64|Y[39]~38_combout\);

-- Location: IOIBUF_X115_Y42_N15
\C[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(39),
	o => \C[39]~input_o\);

-- Location: LCCOMB_X77_Y42_N28
\Y_sig~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~247_combout\ = (\Y_sig~155_combout\ & (((!\Y_sig~225_combout\)))) # (!\Y_sig~155_combout\ & ((\Y_sig~225_combout\ & ((\SRA_SRL_sig[39]~18_combout\))) # (!\Y_sig~225_combout\ & (\C[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~155_combout\,
	datab => \C[39]~input_o\,
	datac => \Y_sig~225_combout\,
	datad => \SRA_SRL_sig[39]~18_combout\,
	combout => \Y_sig~247_combout\);

-- Location: LCCOMB_X77_Y38_N28
\Y_sig~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~248_combout\ = (\Y_sig~360_combout\ & ((\Y_sig~247_combout\ & (\SLL64|Y[39]~38_combout\)) # (!\Y_sig~247_combout\ & ((\SLL64|Stage2_sig[23]~57_combout\))))) # (!\Y_sig~360_combout\ & (((\Y_sig~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[39]~38_combout\,
	datab => \SLL64|Stage2_sig[23]~57_combout\,
	datac => \Y_sig~360_combout\,
	datad => \Y_sig~247_combout\,
	combout => \Y_sig~248_combout\);

-- Location: LCCOMB_X84_Y38_N0
\Y_sig~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~249_combout\ = (\ExtWord~input_o\ & (\SgnExtUpper_sig[0]~7_combout\)) # (!\ExtWord~input_o\ & ((\Y_sig~248_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtUpper_sig[0]~7_combout\,
	datab => \ExtWord~input_o\,
	datad => \Y_sig~248_combout\,
	combout => \Y_sig~249_combout\);

-- Location: LCCOMB_X72_Y36_N22
\SLL64|Stage1_sig[41]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[41]~88_combout\ = (\SRL64|Stage1_sig[48]~114_combout\) # (\SRL64|Stage1_sig[48]~125_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~114_combout\,
	datad => \SRL64|Stage1_sig[48]~125_combout\,
	combout => \SLL64|Stage1_sig[41]~88_combout\);

-- Location: LCCOMB_X72_Y38_N6
\SLL64|Stage1_sig[40]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[40]~89_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~212_combout\) # ((\SRL64|Stage1_sig[48]~205_combout\)))) # (!\B[0]~input_o\ & (((\SLL64|Stage1_sig[41]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~212_combout\,
	datab => \SLL64|Stage1_sig[41]~88_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~205_combout\,
	combout => \SLL64|Stage1_sig[40]~89_combout\);

-- Location: LCCOMB_X75_Y39_N26
\SLL64|Y[40]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[40]~39_combout\ = (\B[3]~input_o\ & ((\SLL64|Stage1_sig[32]~77_combout\))) # (!\B[3]~input_o\ & (\SLL64|Stage1_sig[40]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[40]~89_combout\,
	datab => \SLL64|Stage1_sig[32]~77_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64|Y[40]~39_combout\);

-- Location: LCCOMB_X75_Y39_N30
\SLL64|Y[40]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[40]~58_combout\ = (\SLL64|Y[40]~39_combout\ & (!\B[2]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[40]~39_combout\,
	datab => \B[2]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \SLL64|Y[40]~58_combout\);

-- Location: LCCOMB_X75_Y39_N28
\SLL64|Y[40]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[40]~40_combout\ = (\Y_sig~224_combout\ & ((\B[3]~input_o\ & ((\SLL64|Stage1_sig[28]~71_combout\))) # (!\B[3]~input_o\ & (\SLL64|Stage1_sig[36]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~224_combout\,
	datab => \SLL64|Stage1_sig[36]~83_combout\,
	datac => \SLL64|Stage1_sig[28]~71_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64|Y[40]~40_combout\);

-- Location: LCCOMB_X75_Y39_N14
\SLL64|Y[40]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[40]~41_combout\ = (\SLL64|Y[40]~58_combout\) # ((\SLL64|Y[40]~40_combout\) # ((\ShiftCount[5]~0_combout\ & \SLL64|Stage2_sig[8]~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[40]~58_combout\,
	datab => \SLL64|Y[40]~40_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \SLL64|Stage2_sig[8]~106_combout\,
	combout => \SLL64|Y[40]~41_combout\);

-- Location: IOIBUF_X40_Y73_N1
\C[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(40),
	o => \C[40]~input_o\);

-- Location: LCCOMB_X79_Y40_N10
\Y_sig~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~250_combout\ = (\Y_sig~225_combout\ & (((\SRA_SRL_sig[40]~20_combout\ & !\Y_sig~155_combout\)))) # (!\Y_sig~225_combout\ & ((\C[40]~input_o\) # ((\Y_sig~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[40]~input_o\,
	datab => \SRA_SRL_sig[40]~20_combout\,
	datac => \Y_sig~225_combout\,
	datad => \Y_sig~155_combout\,
	combout => \Y_sig~250_combout\);

-- Location: LCCOMB_X80_Y39_N16
\Y_sig~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~251_combout\ = (\Y_sig~360_combout\ & ((\Y_sig~250_combout\ & (\SLL64|Y[40]~41_combout\)) # (!\Y_sig~250_combout\ & ((\SLL64|Stage2_sig[24]~60_combout\))))) # (!\Y_sig~360_combout\ & (((\Y_sig~250_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~360_combout\,
	datab => \SLL64|Y[40]~41_combout\,
	datac => \Y_sig~250_combout\,
	datad => \SLL64|Stage2_sig[24]~60_combout\,
	combout => \Y_sig~251_combout\);

-- Location: LCCOMB_X80_Y39_N18
\Y_sig~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~252_combout\ = (\ExtWord~input_o\ & ((\SgnExtUpper_sig[0]~7_combout\))) # (!\ExtWord~input_o\ & (\Y_sig~251_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y_sig~251_combout\,
	datad => \SgnExtUpper_sig[0]~7_combout\,
	combout => \Y_sig~252_combout\);

-- Location: LCCOMB_X75_Y37_N16
\SLL64|Y[41]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[41]~44_combout\ = (\Y_sig~224_combout\ & ((\B[3]~input_o\ & (\SLL64|Stage1_sig[29]~73_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage1_sig[37]~84_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[29]~73_combout\,
	datab => \Y_sig~224_combout\,
	datac => \SLL64|Stage1_sig[37]~84_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64|Y[41]~44_combout\);

-- Location: LCCOMB_X72_Y38_N8
\SLL64|Stage1_sig[41]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[41]~90_combout\ = (\B[0]~input_o\ & (((\SLL64|Stage1_sig[41]~88_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~122_combout\) # ((\SRL64|Stage1_sig[48]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~122_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[48]~111_combout\,
	datad => \SLL64|Stage1_sig[41]~88_combout\,
	combout => \SLL64|Stage1_sig[41]~90_combout\);

-- Location: LCCOMB_X75_Y37_N28
\SLL64|Y[41]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[41]~42_combout\ = (\B[3]~input_o\ & (\SLL64|Stage1_sig[33]~78_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage1_sig[41]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64|Stage1_sig[33]~78_combout\,
	datac => \SLL64|Stage1_sig[41]~90_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64|Y[41]~42_combout\);

-- Location: LCCOMB_X75_Y37_N14
\SLL64|Y[41]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[41]~43_combout\ = (\SLL64|Y[41]~42_combout\ & (!\B[2]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SLL64|Y[41]~42_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLL64|Y[41]~43_combout\);

-- Location: LCCOMB_X75_Y37_N2
\SLL64|Y[41]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[41]~45_combout\ = (\SLL64|Y[41]~44_combout\) # ((\SLL64|Y[41]~43_combout\) # ((\SLL64|Stage2_sig[9]~107_combout\ & \ShiftCount[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[9]~107_combout\,
	datab => \SLL64|Y[41]~44_combout\,
	datac => \SLL64|Y[41]~43_combout\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \SLL64|Y[41]~45_combout\);

-- Location: IOIBUF_X115_Y26_N22
\C[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(41),
	o => \C[41]~input_o\);

-- Location: LCCOMB_X79_Y41_N4
\Y_sig~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~253_combout\ = (\Y_sig~155_combout\ & (((!\Y_sig~225_combout\)))) # (!\Y_sig~155_combout\ & ((\Y_sig~225_combout\ & (\SRA_SRL_sig[41]~22_combout\)) # (!\Y_sig~225_combout\ & ((\C[41]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[41]~22_combout\,
	datab => \Y_sig~155_combout\,
	datac => \Y_sig~225_combout\,
	datad => \C[41]~input_o\,
	combout => \Y_sig~253_combout\);

-- Location: LCCOMB_X79_Y41_N30
\Y_sig~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~254_combout\ = (\Y_sig~360_combout\ & ((\Y_sig~253_combout\ & (\SLL64|Y[41]~45_combout\)) # (!\Y_sig~253_combout\ & ((\SLL64|Stage2_sig[25]~63_combout\))))) # (!\Y_sig~360_combout\ & (((\Y_sig~253_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~360_combout\,
	datab => \SLL64|Y[41]~45_combout\,
	datac => \Y_sig~253_combout\,
	datad => \SLL64|Stage2_sig[25]~63_combout\,
	combout => \Y_sig~254_combout\);

-- Location: LCCOMB_X83_Y41_N26
\Y_sig~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~255_combout\ = (\ExtWord~input_o\ & ((\SgnExtUpper_sig[0]~7_combout\))) # (!\ExtWord~input_o\ & (\Y_sig~254_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y_sig~254_combout\,
	datac => \ExtWord~input_o\,
	datad => \SgnExtUpper_sig[0]~7_combout\,
	combout => \Y_sig~255_combout\);

-- Location: LCCOMB_X76_Y36_N12
\SLL64|Y[42]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[42]~46_combout\ = (\B[3]~input_o\ & ((\SLL64|Stage1_sig[30]~115_combout\))) # (!\B[3]~input_o\ & (\SLL64|Stage1_sig[38]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[38]~86_combout\,
	datac => \SLL64|Stage1_sig[30]~115_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64|Y[42]~46_combout\);

-- Location: LCCOMB_X72_Y39_N20
\SLL64|Stage1_sig[43]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[43]~91_combout\ = (\SRL64|Stage1_sig[48]~162_combout\) # (\SRL64|Stage1_sig[48]~160_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~162_combout\,
	datac => \SRL64|Stage1_sig[48]~160_combout\,
	combout => \SLL64|Stage1_sig[43]~91_combout\);

-- Location: LCCOMB_X72_Y38_N26
\SLL64|Stage1_sig[42]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[42]~92_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~111_combout\) # ((\SRL64|Stage1_sig[48]~122_combout\)))) # (!\B[0]~input_o\ & (((\SLL64|Stage1_sig[43]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~111_combout\,
	datab => \B[0]~input_o\,
	datac => \SLL64|Stage1_sig[43]~91_combout\,
	datad => \SRL64|Stage1_sig[48]~122_combout\,
	combout => \SLL64|Stage1_sig[42]~92_combout\);

-- Location: LCCOMB_X76_Y36_N14
\SLL64|Y[42]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[42]~47_combout\ = (\B[3]~input_o\ & (\SLL64|Stage1_sig[34]~80_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage1_sig[42]~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL64|Stage1_sig[34]~80_combout\,
	datad => \SLL64|Stage1_sig[42]~92_combout\,
	combout => \SLL64|Y[42]~47_combout\);

-- Location: LCCOMB_X76_Y36_N16
\SLL64|Y[42]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[42]~48_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[2]~input_o\ & (\SLL64|Y[42]~46_combout\)) # (!\B[2]~input_o\ & ((\SLL64|Y[42]~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[42]~46_combout\,
	datab => \B[2]~input_o\,
	datac => \SLL64|Y[42]~47_combout\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \SLL64|Y[42]~48_combout\);

-- Location: LCCOMB_X79_Y39_N12
\SLL64|Y[42]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[42]~59_combout\ = (\SLL64|Y[42]~48_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SLL64|Stage2_sig[10]~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SLL64|Y[42]~48_combout\,
	datac => \ExtWord~input_o\,
	datad => \SLL64|Stage2_sig[10]~108_combout\,
	combout => \SLL64|Y[42]~59_combout\);

-- Location: IOIBUF_X115_Y54_N15
\C[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(42),
	o => \C[42]~input_o\);

-- Location: LCCOMB_X79_Y40_N12
\Y_sig~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~256_combout\ = (\Y_sig~225_combout\ & (((\SRA_SRL_sig[42]~24_combout\ & !\Y_sig~155_combout\)))) # (!\Y_sig~225_combout\ & ((\C[42]~input_o\) # ((\Y_sig~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[42]~input_o\,
	datab => \SRA_SRL_sig[42]~24_combout\,
	datac => \Y_sig~225_combout\,
	datad => \Y_sig~155_combout\,
	combout => \Y_sig~256_combout\);

-- Location: LCCOMB_X79_Y39_N14
\Y_sig~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~257_combout\ = (\Y_sig~256_combout\ & ((\SLL64|Y[42]~59_combout\) # ((!\Y_sig~360_combout\)))) # (!\Y_sig~256_combout\ & (((\SLL64|Stage2_sig[26]~66_combout\ & \Y_sig~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[42]~59_combout\,
	datab => \SLL64|Stage2_sig[26]~66_combout\,
	datac => \Y_sig~256_combout\,
	datad => \Y_sig~360_combout\,
	combout => \Y_sig~257_combout\);

-- Location: LCCOMB_X83_Y41_N12
\Y_sig~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~258_combout\ = (\ExtWord~input_o\ & ((\SgnExtUpper_sig[0]~7_combout\))) # (!\ExtWord~input_o\ & (\Y_sig~257_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \Y_sig~257_combout\,
	datad => \SgnExtUpper_sig[0]~7_combout\,
	combout => \Y_sig~258_combout\);

-- Location: LCCOMB_X76_Y38_N22
\SLL64|Y[43]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[43]~50_combout\ = (\Y_sig~224_combout\ & ((\B[3]~input_o\ & ((\SLL64|Stage1_sig[31]~75_combout\))) # (!\B[3]~input_o\ & (\SLL64|Stage1_sig[39]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[39]~87_combout\,
	datab => \SLL64|Stage1_sig[31]~75_combout\,
	datac => \Y_sig~224_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64|Y[43]~50_combout\);

-- Location: LCCOMB_X72_Y39_N22
\SLL64|Stage1_sig[43]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[43]~93_combout\ = (\B[0]~input_o\ & (((\SLL64|Stage1_sig[43]~91_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~211_combout\) # ((\SRL64|Stage1_sig[48]~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~211_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[48]~209_combout\,
	datad => \SLL64|Stage1_sig[43]~91_combout\,
	combout => \SLL64|Stage1_sig[43]~93_combout\);

-- Location: LCCOMB_X77_Y38_N22
\SLL64|Y[43]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[43]~49_combout\ = (\B[3]~input_o\ & (\SLL64|Stage1_sig[35]~81_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage1_sig[43]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[35]~81_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL64|Stage1_sig[43]~93_combout\,
	combout => \SLL64|Y[43]~49_combout\);

-- Location: LCCOMB_X77_Y39_N24
\SLL64|Y[43]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[43]~60_combout\ = (!\B[2]~input_o\ & (\SLL64|Y[43]~49_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \SLL64|Y[43]~49_combout\,
	combout => \SLL64|Y[43]~60_combout\);

-- Location: LCCOMB_X76_Y38_N8
\SLL64|Y[43]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[43]~51_combout\ = (\SLL64|Y[43]~50_combout\) # ((\SLL64|Y[43]~60_combout\) # ((\ShiftCount[5]~0_combout\ & \SLL64|Stage2_sig[11]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \SLL64|Stage2_sig[11]~109_combout\,
	datac => \SLL64|Y[43]~50_combout\,
	datad => \SLL64|Y[43]~60_combout\,
	combout => \SLL64|Y[43]~51_combout\);

-- Location: IOIBUF_X85_Y73_N15
\C[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(43),
	o => \C[43]~input_o\);

-- Location: LCCOMB_X75_Y42_N20
\Y_sig~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~259_combout\ = (\Y_sig~225_combout\ & (\SRA_SRL_sig[43]~26_combout\ & ((!\Y_sig~155_combout\)))) # (!\Y_sig~225_combout\ & (((\C[43]~input_o\) # (\Y_sig~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[43]~26_combout\,
	datab => \Y_sig~225_combout\,
	datac => \C[43]~input_o\,
	datad => \Y_sig~155_combout\,
	combout => \Y_sig~259_combout\);

-- Location: LCCOMB_X83_Y41_N6
\Y_sig~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~260_combout\ = (\Y_sig~360_combout\ & ((\Y_sig~259_combout\ & ((\SLL64|Y[43]~51_combout\))) # (!\Y_sig~259_combout\ & (\SLL64|Stage2_sig[27]~69_combout\)))) # (!\Y_sig~360_combout\ & (((\Y_sig~259_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[27]~69_combout\,
	datab => \SLL64|Y[43]~51_combout\,
	datac => \Y_sig~360_combout\,
	datad => \Y_sig~259_combout\,
	combout => \Y_sig~260_combout\);

-- Location: LCCOMB_X83_Y41_N0
\Y_sig~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~261_combout\ = (\ExtWord~input_o\ & (\SgnExtUpper_sig[0]~7_combout\)) # (!\ExtWord~input_o\ & ((\Y_sig~260_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SgnExtUpper_sig[0]~7_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y_sig~260_combout\,
	combout => \Y_sig~261_combout\);

-- Location: LCCOMB_X72_Y39_N8
\SLL64|Stage1_sig[45]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[45]~94_combout\ = (\SRL64|Stage1_sig[48]~120_combout\) # (\SRL64|Stage1_sig[48]~113_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage1_sig[48]~120_combout\,
	datad => \SRL64|Stage1_sig[48]~113_combout\,
	combout => \SLL64|Stage1_sig[45]~94_combout\);

-- Location: LCCOMB_X72_Y39_N26
\SLL64|Stage1_sig[44]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[44]~95_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~211_combout\) # ((\SRL64|Stage1_sig[48]~209_combout\)))) # (!\B[0]~input_o\ & (((\SLL64|Stage1_sig[45]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~211_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[48]~209_combout\,
	datad => \SLL64|Stage1_sig[45]~94_combout\,
	combout => \SLL64|Stage1_sig[44]~95_combout\);

-- Location: LCCOMB_X75_Y39_N8
\SLL64|Stage2_sig[8]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[8]~82_combout\ = (\B[3]~input_o\ & ((\SLL64|Stage1_sig[36]~83_combout\))) # (!\B[3]~input_o\ & (\SLL64|Stage1_sig[44]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[44]~95_combout\,
	datac => \SLL64|Stage1_sig[36]~83_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64|Stage2_sig[8]~82_combout\);

-- Location: LCCOMB_X75_Y39_N2
\SLL64|Y[44]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[44]~52_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[2]~input_o\ & (\SLL64|Y[40]~39_combout\)) # (!\B[2]~input_o\ & ((\SLL64|Stage2_sig[8]~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[40]~39_combout\,
	datab => \B[2]~input_o\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \SLL64|Stage2_sig[8]~82_combout\,
	combout => \SLL64|Y[44]~52_combout\);

-- Location: LCCOMB_X75_Y39_N12
\SLL64|Y[44]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[44]~53_combout\ = (\SLL64|Y[44]~52_combout\) # ((\ShiftCount[5]~0_combout\ & ((\SLL64|Stage2_sig[12]~24_combout\) # (\SLL64|Stage2_sig[12]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[12]~24_combout\,
	datab => \SLL64|Y[44]~52_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \SLL64|Stage2_sig[12]~25_combout\,
	combout => \SLL64|Y[44]~53_combout\);

-- Location: IOIBUF_X69_Y73_N22
\C[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(44),
	o => \C[44]~input_o\);

-- Location: LCCOMB_X74_Y40_N8
\Y_sig~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~262_combout\ = (\Y_sig~225_combout\ & (((!\Y_sig~155_combout\ & \SRA_SRL_sig[44]~28_combout\)))) # (!\Y_sig~225_combout\ & ((\C[44]~input_o\) # ((\Y_sig~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~225_combout\,
	datab => \C[44]~input_o\,
	datac => \Y_sig~155_combout\,
	datad => \SRA_SRL_sig[44]~28_combout\,
	combout => \Y_sig~262_combout\);

-- Location: LCCOMB_X79_Y37_N10
\Y_sig~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~263_combout\ = (\Y_sig~360_combout\ & ((\Y_sig~262_combout\ & ((\SLL64|Y[44]~53_combout\))) # (!\Y_sig~262_combout\ & (\SLL64|Stage2_sig[28]~72_combout\)))) # (!\Y_sig~360_combout\ & (((\Y_sig~262_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[28]~72_combout\,
	datab => \SLL64|Y[44]~53_combout\,
	datac => \Y_sig~360_combout\,
	datad => \Y_sig~262_combout\,
	combout => \Y_sig~263_combout\);

-- Location: LCCOMB_X79_Y37_N20
\Y_sig~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~264_combout\ = (\ExtWord~input_o\ & ((\SgnExtUpper_sig[0]~7_combout\))) # (!\ExtWord~input_o\ & (\Y_sig~263_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~263_combout\,
	datac => \ExtWord~input_o\,
	datad => \SgnExtUpper_sig[0]~7_combout\,
	combout => \Y_sig~264_combout\);

-- Location: LCCOMB_X70_Y39_N8
\SLL64|Stage1_sig[45]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[45]~96_combout\ = (\B[0]~input_o\ & (((\SLL64|Stage1_sig[45]~94_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~117_combout\) # ((\SRL64|Stage1_sig[48]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~117_combout\,
	datab => \SRL64|Stage1_sig[48]~110_combout\,
	datac => \B[0]~input_o\,
	datad => \SLL64|Stage1_sig[45]~94_combout\,
	combout => \SLL64|Stage1_sig[45]~96_combout\);

-- Location: LCCOMB_X75_Y37_N12
\SLL64|Stage2_sig[9]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[9]~83_combout\ = (\B[3]~input_o\ & ((\SLL64|Stage1_sig[37]~84_combout\))) # (!\B[3]~input_o\ & (\SLL64|Stage1_sig[45]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[45]~96_combout\,
	datac => \SLL64|Stage1_sig[37]~84_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64|Stage2_sig[9]~83_combout\);

-- Location: LCCOMB_X75_Y37_N22
\SLL64|Y[45]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[45]~54_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[2]~input_o\ & (\SLL64|Y[41]~42_combout\)) # (!\B[2]~input_o\ & ((\SLL64|Stage2_sig[9]~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \SLL64|Y[41]~42_combout\,
	datac => \SLL64|Stage2_sig[9]~83_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL64|Y[45]~54_combout\);

-- Location: LCCOMB_X79_Y37_N14
\SLL64|Y[45]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[45]~61_combout\ = (\SLL64|Y[45]~54_combout\) # ((\B[5]~input_o\ & (\SLL64|Stage2_sig[13]~29_combout\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[45]~54_combout\,
	datab => \B[5]~input_o\,
	datac => \SLL64|Stage2_sig[13]~29_combout\,
	datad => \ExtWord~input_o\,
	combout => \SLL64|Y[45]~61_combout\);

-- Location: IOIBUF_X83_Y0_N15
\C[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(45),
	o => \C[45]~input_o\);

-- Location: LCCOMB_X79_Y40_N14
\Y_sig~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~265_combout\ = (\Y_sig~225_combout\ & (((\SRA_SRL_sig[45]~30_combout\ & !\Y_sig~155_combout\)))) # (!\Y_sig~225_combout\ & ((\C[45]~input_o\) # ((\Y_sig~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[45]~input_o\,
	datab => \SRA_SRL_sig[45]~30_combout\,
	datac => \Y_sig~225_combout\,
	datad => \Y_sig~155_combout\,
	combout => \Y_sig~265_combout\);

-- Location: LCCOMB_X79_Y37_N22
\Y_sig~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~266_combout\ = (\Y_sig~360_combout\ & ((\Y_sig~265_combout\ & (\SLL64|Y[45]~61_combout\)) # (!\Y_sig~265_combout\ & ((\SLL64|Stage2_sig[29]~75_combout\))))) # (!\Y_sig~360_combout\ & (((\Y_sig~265_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~360_combout\,
	datab => \SLL64|Y[45]~61_combout\,
	datac => \SLL64|Stage2_sig[29]~75_combout\,
	datad => \Y_sig~265_combout\,
	combout => \Y_sig~266_combout\);

-- Location: LCCOMB_X79_Y37_N0
\Y_sig~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~267_combout\ = (\ExtWord~input_o\ & ((\SgnExtUpper_sig[0]~7_combout\))) # (!\ExtWord~input_o\ & (\Y_sig~266_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~266_combout\,
	datac => \ExtWord~input_o\,
	datad => \SgnExtUpper_sig[0]~7_combout\,
	combout => \Y_sig~267_combout\);

-- Location: LCCOMB_X67_Y39_N20
\SLL64|Stage1_sig[47]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[47]~97_combout\ = (\SRL64|Stage1_sig[48]~159_combout\) # (\SRL64|Stage1_sig[48]~166_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~159_combout\,
	datad => \SRL64|Stage1_sig[48]~166_combout\,
	combout => \SLL64|Stage1_sig[47]~97_combout\);

-- Location: LCCOMB_X70_Y39_N2
\SLL64|Stage1_sig[46]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[46]~98_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~117_combout\) # ((\SRL64|Stage1_sig[48]~110_combout\)))) # (!\B[0]~input_o\ & (((\SLL64|Stage1_sig[47]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~117_combout\,
	datab => \SLL64|Stage1_sig[47]~97_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~110_combout\,
	combout => \SLL64|Stage1_sig[46]~98_combout\);

-- Location: LCCOMB_X76_Y36_N10
\SLL64|Stage2_sig[10]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[10]~84_combout\ = (\B[3]~input_o\ & (\SLL64|Stage1_sig[38]~86_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage1_sig[46]~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[38]~86_combout\,
	datac => \SLL64|Stage1_sig[46]~98_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64|Stage2_sig[10]~84_combout\);

-- Location: LCCOMB_X77_Y36_N24
\SLL64|Y[46]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[46]~55_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[2]~input_o\ & ((\SLL64|Y[42]~47_combout\))) # (!\B[2]~input_o\ & (\SLL64|Stage2_sig[10]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL64|Stage2_sig[10]~84_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \SLL64|Y[42]~47_combout\,
	combout => \SLL64|Y[46]~55_combout\);

-- Location: LCCOMB_X76_Y36_N28
\SLL64|Y[46]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[46]~56_combout\ = (\SLL64|Y[46]~55_combout\) # ((\ShiftCount[5]~0_combout\ & ((\SLL64|Stage2_sig[14]~31_combout\) # (\SLL64|Stage2_sig[14]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[14]~31_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \SLL64|Stage2_sig[14]~30_combout\,
	datad => \SLL64|Y[46]~55_combout\,
	combout => \SLL64|Y[46]~56_combout\);

-- Location: IOIBUF_X83_Y73_N8
\C[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(46),
	o => \C[46]~input_o\);

-- Location: LCCOMB_X75_Y43_N20
\Y_sig~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~268_combout\ = (\Y_sig~225_combout\ & (!\Y_sig~155_combout\ & (\SRA_SRL_sig[46]~32_combout\))) # (!\Y_sig~225_combout\ & ((\Y_sig~155_combout\) # ((\C[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~225_combout\,
	datab => \Y_sig~155_combout\,
	datac => \SRA_SRL_sig[46]~32_combout\,
	datad => \C[46]~input_o\,
	combout => \Y_sig~268_combout\);

-- Location: LCCOMB_X79_Y37_N18
\Y_sig~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~269_combout\ = (\Y_sig~360_combout\ & ((\Y_sig~268_combout\ & ((\SLL64|Y[46]~56_combout\))) # (!\Y_sig~268_combout\ & (\SLL64|Stage2_sig[30]~78_combout\)))) # (!\Y_sig~360_combout\ & (((\Y_sig~268_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[30]~78_combout\,
	datab => \SLL64|Y[46]~56_combout\,
	datac => \Y_sig~360_combout\,
	datad => \Y_sig~268_combout\,
	combout => \Y_sig~269_combout\);

-- Location: LCCOMB_X79_Y37_N4
\Y_sig~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~270_combout\ = (\ExtWord~input_o\ & ((\SgnExtUpper_sig[0]~7_combout\))) # (!\ExtWord~input_o\ & (\Y_sig~269_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y_sig~269_combout\,
	datac => \ExtWord~input_o\,
	datad => \SgnExtUpper_sig[0]~7_combout\,
	combout => \Y_sig~270_combout\);

-- Location: LCCOMB_X70_Y39_N12
\SLL64|Stage1_sig[47]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[47]~99_combout\ = (\B[0]~input_o\ & (((\SLL64|Stage1_sig[47]~97_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~215_combout\) # ((\SRL64|Stage1_sig[48]~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~215_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[48]~208_combout\,
	datad => \SLL64|Stage1_sig[47]~97_combout\,
	combout => \SLL64|Stage1_sig[47]~99_combout\);

-- Location: LCCOMB_X77_Y38_N8
\SLL64|Stage2_sig[11]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[11]~85_combout\ = (\B[3]~input_o\ & (\SLL64|Stage1_sig[39]~87_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage1_sig[47]~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[39]~87_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL64|Stage1_sig[47]~99_combout\,
	combout => \SLL64|Stage2_sig[11]~85_combout\);

-- Location: LCCOMB_X77_Y38_N10
\SLL64|Y[47]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[47]~57_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[2]~input_o\ & ((\SLL64|Y[43]~49_combout\))) # (!\B[2]~input_o\ & (\SLL64|Stage2_sig[11]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \B[2]~input_o\,
	datac => \SLL64|Stage2_sig[11]~85_combout\,
	datad => \SLL64|Y[43]~49_combout\,
	combout => \SLL64|Y[47]~57_combout\);

-- Location: LCCOMB_X79_Y42_N28
\SLL64|Y[47]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Y[47]~62_combout\ = (\SLL64|Y[47]~57_combout\) # ((\SLL64|Stage2_sig[15]~34_combout\ & (\B[5]~input_o\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[47]~57_combout\,
	datab => \SLL64|Stage2_sig[15]~34_combout\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SLL64|Y[47]~62_combout\);

-- Location: IOIBUF_X107_Y73_N15
\C[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(47),
	o => \C[47]~input_o\);

-- Location: LCCOMB_X79_Y42_N24
\Y_sig~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~271_combout\ = (\Y_sig~155_combout\ & (((!\Y_sig~225_combout\)))) # (!\Y_sig~155_combout\ & ((\Y_sig~225_combout\ & (\SRA_SRL_sig[47]~34_combout\)) # (!\Y_sig~225_combout\ & ((\C[47]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[47]~34_combout\,
	datab => \Y_sig~155_combout\,
	datac => \Y_sig~225_combout\,
	datad => \C[47]~input_o\,
	combout => \Y_sig~271_combout\);

-- Location: LCCOMB_X79_Y42_N10
\Y_sig~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~272_combout\ = (\Y_sig~271_combout\ & ((\SLL64|Y[47]~62_combout\) # ((!\Y_sig~360_combout\)))) # (!\Y_sig~271_combout\ & (((\Y_sig~360_combout\ & \SLL64|Stage2_sig[31]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[47]~62_combout\,
	datab => \Y_sig~271_combout\,
	datac => \Y_sig~360_combout\,
	datad => \SLL64|Stage2_sig[31]~81_combout\,
	combout => \Y_sig~272_combout\);

-- Location: LCCOMB_X79_Y42_N4
\Y_sig~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~273_combout\ = (\ExtWord~input_o\ & ((\SgnExtUpper_sig[0]~7_combout\))) # (!\ExtWord~input_o\ & (\Y_sig~272_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~272_combout\,
	datab => \ExtWord~input_o\,
	datac => \SgnExtUpper_sig[0]~7_combout\,
	combout => \Y_sig~273_combout\);

-- Location: LCCOMB_X70_Y39_N6
\SLL64|Stage1_sig[49]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[49]~100_combout\ = (\SRL64|Stage1_sig[48]~119_combout\) # (\SRL64|Stage1_sig[48]~89_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~119_combout\,
	datac => \SRL64|Stage1_sig[48]~89_combout\,
	combout => \SLL64|Stage1_sig[49]~100_combout\);

-- Location: LCCOMB_X70_Y39_N24
\SLL64|Stage1_sig[48]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[48]~101_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~215_combout\) # ((\SRL64|Stage1_sig[48]~208_combout\)))) # (!\B[0]~input_o\ & (((\SLL64|Stage1_sig[49]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~215_combout\,
	datab => \SRL64|Stage1_sig[48]~208_combout\,
	datac => \B[0]~input_o\,
	datad => \SLL64|Stage1_sig[49]~100_combout\,
	combout => \SLL64|Stage1_sig[48]~101_combout\);

-- Location: LCCOMB_X73_Y39_N24
\SLL64|Stage2_sig[8]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[8]~86_combout\ = (\B[3]~input_o\ & (\SLL64|Stage1_sig[40]~89_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage1_sig[48]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SLL64|Stage1_sig[40]~89_combout\,
	datad => \SLL64|Stage1_sig[48]~101_combout\,
	combout => \SLL64|Stage2_sig[8]~86_combout\);

-- Location: LCCOMB_X76_Y39_N30
\Y_sig~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~276_combout\ = (\B[4]~input_o\) # ((\B[2]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Y_sig~276_combout\);

-- Location: LCCOMB_X73_Y39_N26
\Y_sig~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~277_combout\ = (\Y_sig~276_combout\ & ((\SLL64|Stage2_sig[8]~82_combout\) # ((\SRA64|Equal8~1_combout\)))) # (!\Y_sig~276_combout\ & (((\SLL64|Stage2_sig[8]~86_combout\ & !\SRA64|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[8]~82_combout\,
	datab => \SLL64|Stage2_sig[8]~86_combout\,
	datac => \Y_sig~276_combout\,
	datad => \SRA64|Equal8~1_combout\,
	combout => \Y_sig~277_combout\);

-- Location: LCCOMB_X80_Y39_N20
\Y_sig~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~278_combout\ = (\Y_sig~277_combout\ & (((\SLL64|Y[32]~15_combout\) # (!\SRA64|Equal8~1_combout\)))) # (!\Y_sig~277_combout\ & (\SLL64|Stage2_sig[16]~36_combout\ & ((\SRA64|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[16]~36_combout\,
	datab => \Y_sig~277_combout\,
	datac => \SLL64|Y[32]~15_combout\,
	datad => \SRA64|Equal8~1_combout\,
	combout => \Y_sig~278_combout\);

-- Location: LCCOMB_X83_Y41_N2
\Y_sig~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~274_combout\ = (!\ShiftFN[1]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \Y_sig~274_combout\);

-- Location: IOIBUF_X115_Y28_N1
\C[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(48),
	o => \C[48]~input_o\);

-- Location: LCCOMB_X83_Y41_N4
\Y_sig~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~275_combout\ = (\ExtWord~input_o\) # ((!\ShiftFN[1]~input_o\ & !\ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_sig~275_combout\);

-- Location: LCCOMB_X80_Y39_N6
\Y_sig~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~279_combout\ = (\Y_sig~274_combout\ & ((\Y_sig~275_combout\ & ((\C[48]~input_o\))) # (!\Y_sig~275_combout\ & (\Y_sig~278_combout\)))) # (!\Y_sig~274_combout\ & (((\Y_sig~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~278_combout\,
	datab => \Y_sig~274_combout\,
	datac => \C[48]~input_o\,
	datad => \Y_sig~275_combout\,
	combout => \Y_sig~279_combout\);

-- Location: LCCOMB_X80_Y39_N0
\Y_sig~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~280_combout\ = (\Y_sig~279_combout\ & ((\SgnExtUpper_sig[0]~7_combout\) # ((\Y_sig~274_combout\)))) # (!\Y_sig~279_combout\ & (((\SRA_SRL_sig[48]~36_combout\ & !\Y_sig~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~279_combout\,
	datab => \SgnExtUpper_sig[0]~7_combout\,
	datac => \SRA_SRL_sig[48]~36_combout\,
	datad => \Y_sig~274_combout\,
	combout => \Y_sig~280_combout\);

-- Location: LCCOMB_X70_Y39_N10
\SLL64|Stage1_sig[50]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[50]~102_combout\ = (\SRL64|Stage1_sig[48]~116_combout\) # (\SRL64|Stage1_sig[48]~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~116_combout\,
	datad => \SRL64|Stage1_sig[48]~92_combout\,
	combout => \SLL64|Stage1_sig[50]~102_combout\);

-- Location: LCCOMB_X70_Y39_N30
\SLL64|Stage1_sig[49]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[49]~116_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~89_combout\) # ((\SRL64|Stage1_sig[48]~119_combout\)))) # (!\B[0]~input_o\ & (((\SLL64|Stage1_sig[50]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~89_combout\,
	datab => \SRL64|Stage1_sig[48]~119_combout\,
	datac => \B[0]~input_o\,
	datad => \SLL64|Stage1_sig[50]~102_combout\,
	combout => \SLL64|Stage1_sig[49]~116_combout\);

-- Location: LCCOMB_X70_Y40_N2
\SLL64|Stage2_sig[9]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[9]~87_combout\ = (\B[3]~input_o\ & ((\SLL64|Stage1_sig[41]~90_combout\))) # (!\B[3]~input_o\ & (\SLL64|Stage1_sig[49]~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[49]~116_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL64|Stage1_sig[41]~90_combout\,
	combout => \SLL64|Stage2_sig[9]~87_combout\);

-- Location: LCCOMB_X79_Y41_N0
\Y_sig~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~281_combout\ = (\SRA64|Equal8~1_combout\ & (((\SLL64|Stage2_sig[17]~39_combout\) # (\Y_sig~276_combout\)))) # (!\SRA64|Equal8~1_combout\ & (\SLL64|Stage2_sig[9]~87_combout\ & ((!\Y_sig~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[9]~87_combout\,
	datab => \SLL64|Stage2_sig[17]~39_combout\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \Y_sig~276_combout\,
	combout => \Y_sig~281_combout\);

-- Location: LCCOMB_X79_Y41_N18
\Y_sig~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~282_combout\ = (\Y_sig~276_combout\ & ((\Y_sig~281_combout\ & (\SLL64|Y[33]~18_combout\)) # (!\Y_sig~281_combout\ & ((\SLL64|Stage2_sig[9]~83_combout\))))) # (!\Y_sig~276_combout\ & (((\Y_sig~281_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[33]~18_combout\,
	datab => \Y_sig~276_combout\,
	datac => \SLL64|Stage2_sig[9]~83_combout\,
	datad => \Y_sig~281_combout\,
	combout => \Y_sig~282_combout\);

-- Location: LCCOMB_X84_Y45_N8
\Y_sig~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~283_combout\ = (\Y_sig~274_combout\ & (\Y_sig~282_combout\ & ((!\Y_sig~275_combout\)))) # (!\Y_sig~274_combout\ & (((\SRA_SRL_sig[49]~46_combout\) # (\Y_sig~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~282_combout\,
	datab => \SRA_SRL_sig[49]~46_combout\,
	datac => \Y_sig~274_combout\,
	datad => \Y_sig~275_combout\,
	combout => \Y_sig~283_combout\);

-- Location: IOIBUF_X89_Y73_N15
\C[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(49),
	o => \C[49]~input_o\);

-- Location: LCCOMB_X84_Y45_N26
\Y_sig~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~284_combout\ = (\Y_sig~283_combout\ & ((\SgnExtUpper_sig[0]~7_combout\) # ((!\Y_sig~275_combout\)))) # (!\Y_sig~283_combout\ & (((\C[49]~input_o\ & \Y_sig~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtUpper_sig[0]~7_combout\,
	datab => \Y_sig~283_combout\,
	datac => \C[49]~input_o\,
	datad => \Y_sig~275_combout\,
	combout => \Y_sig~284_combout\);

-- Location: LCCOMB_X69_Y39_N10
\SLL64|Stage1_sig[51]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[51]~103_combout\ = (\SRL64|Stage1_sig[48]~165_combout\) # (\SRL64|Stage1_sig[48]~146_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~165_combout\,
	datac => \SRL64|Stage1_sig[48]~146_combout\,
	combout => \SLL64|Stage1_sig[51]~103_combout\);

-- Location: LCCOMB_X70_Y39_N0
\SLL64|Stage1_sig[50]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[50]~117_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~116_combout\) # (\SRL64|Stage1_sig[48]~92_combout\)))) # (!\B[0]~input_o\ & (\SLL64|Stage1_sig[51]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[51]~103_combout\,
	datab => \SRL64|Stage1_sig[48]~116_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~92_combout\,
	combout => \SLL64|Stage1_sig[50]~117_combout\);

-- Location: LCCOMB_X76_Y36_N6
\SLL64|Stage2_sig[10]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[10]~88_combout\ = (\B[3]~input_o\ & (\SLL64|Stage1_sig[42]~92_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage1_sig[50]~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64|Stage1_sig[42]~92_combout\,
	datac => \SLL64|Stage1_sig[50]~117_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64|Stage2_sig[10]~88_combout\);

-- Location: LCCOMB_X79_Y39_N0
\Y_sig~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~285_combout\ = (\SRA64|Equal8~1_combout\ & (((\Y_sig~276_combout\)))) # (!\SRA64|Equal8~1_combout\ & ((\Y_sig~276_combout\ & (\SLL64|Stage2_sig[10]~84_combout\)) # (!\Y_sig~276_combout\ & ((\SLL64|Stage2_sig[10]~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[10]~84_combout\,
	datab => \SRA64|Equal8~1_combout\,
	datac => \Y_sig~276_combout\,
	datad => \SLL64|Stage2_sig[10]~88_combout\,
	combout => \Y_sig~285_combout\);

-- Location: LCCOMB_X79_Y39_N2
\Y_sig~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~286_combout\ = (\Y_sig~285_combout\ & (((\SLL64|Y[34]~21_combout\) # (!\SRA64|Equal8~1_combout\)))) # (!\Y_sig~285_combout\ & (\SLL64|Stage2_sig[18]~42_combout\ & (\SRA64|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[18]~42_combout\,
	datab => \Y_sig~285_combout\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \SLL64|Y[34]~21_combout\,
	combout => \Y_sig~286_combout\);

-- Location: IOIBUF_X91_Y73_N15
\C[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(50),
	o => \C[50]~input_o\);

-- Location: LCCOMB_X84_Y45_N12
\Y_sig~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~287_combout\ = (\Y_sig~275_combout\ & (((\C[50]~input_o\)) # (!\Y_sig~274_combout\))) # (!\Y_sig~275_combout\ & (\Y_sig~274_combout\ & (\Y_sig~286_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~275_combout\,
	datab => \Y_sig~274_combout\,
	datac => \Y_sig~286_combout\,
	datad => \C[50]~input_o\,
	combout => \Y_sig~287_combout\);

-- Location: LCCOMB_X84_Y45_N14
\Y_sig~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~288_combout\ = (\Y_sig~274_combout\ & (((\Y_sig~287_combout\)))) # (!\Y_sig~274_combout\ & ((\Y_sig~287_combout\ & (\SgnExtUpper_sig[0]~7_combout\)) # (!\Y_sig~287_combout\ & ((\SRA_SRL_sig[50]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtUpper_sig[0]~7_combout\,
	datab => \SRA_SRL_sig[50]~50_combout\,
	datac => \Y_sig~274_combout\,
	datad => \Y_sig~287_combout\,
	combout => \Y_sig~288_combout\);

-- Location: LCCOMB_X69_Y39_N20
\SLL64|Stage1_sig[51]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[51]~104_combout\ = (\B[0]~input_o\ & (\SLL64|Stage1_sig[51]~103_combout\)) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~222_combout\) # (\SRL64|Stage1_sig[48]~214_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[51]~103_combout\,
	datab => \B[0]~input_o\,
	datac => \SRL64|Stage1_sig[48]~222_combout\,
	datad => \SRL64|Stage1_sig[48]~214_combout\,
	combout => \SLL64|Stage1_sig[51]~104_combout\);

-- Location: LCCOMB_X77_Y38_N12
\SLL64|Stage2_sig[11]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[11]~89_combout\ = (\B[3]~input_o\ & ((\SLL64|Stage1_sig[43]~93_combout\))) # (!\B[3]~input_o\ & (\SLL64|Stage1_sig[51]~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[51]~104_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL64|Stage1_sig[43]~93_combout\,
	combout => \SLL64|Stage2_sig[11]~89_combout\);

-- Location: LCCOMB_X77_Y38_N30
\Y_sig~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~289_combout\ = (\Y_sig~276_combout\ & (\SRA64|Equal8~1_combout\)) # (!\Y_sig~276_combout\ & ((\SRA64|Equal8~1_combout\ & ((\SLL64|Stage2_sig[19]~45_combout\))) # (!\SRA64|Equal8~1_combout\ & (\SLL64|Stage2_sig[11]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~276_combout\,
	datab => \SRA64|Equal8~1_combout\,
	datac => \SLL64|Stage2_sig[11]~89_combout\,
	datad => \SLL64|Stage2_sig[19]~45_combout\,
	combout => \Y_sig~289_combout\);

-- Location: LCCOMB_X77_Y38_N0
\Y_sig~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~290_combout\ = (\Y_sig~289_combout\ & ((\SLL64|Y[35]~24_combout\) # ((!\Y_sig~276_combout\)))) # (!\Y_sig~289_combout\ & (((\SLL64|Stage2_sig[11]~85_combout\ & \Y_sig~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[35]~24_combout\,
	datab => \SLL64|Stage2_sig[11]~85_combout\,
	datac => \Y_sig~289_combout\,
	datad => \Y_sig~276_combout\,
	combout => \Y_sig~290_combout\);

-- Location: LCCOMB_X83_Y41_N22
\Y_sig~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~291_combout\ = (\Y_sig~274_combout\ & (((\Y_sig~290_combout\ & !\Y_sig~275_combout\)))) # (!\Y_sig~274_combout\ & ((\SRA_SRL_sig[51]~53_combout\) # ((\Y_sig~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[51]~53_combout\,
	datab => \Y_sig~274_combout\,
	datac => \Y_sig~290_combout\,
	datad => \Y_sig~275_combout\,
	combout => \Y_sig~291_combout\);

-- Location: IOIBUF_X87_Y73_N22
\C[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(51),
	o => \C[51]~input_o\);

-- Location: LCCOMB_X83_Y41_N16
\Y_sig~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~292_combout\ = (\Y_sig~291_combout\ & ((\SgnExtUpper_sig[0]~7_combout\) # ((!\Y_sig~275_combout\)))) # (!\Y_sig~291_combout\ & (((\C[51]~input_o\ & \Y_sig~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~291_combout\,
	datab => \SgnExtUpper_sig[0]~7_combout\,
	datac => \C[51]~input_o\,
	datad => \Y_sig~275_combout\,
	combout => \Y_sig~292_combout\);

-- Location: LCCOMB_X69_Y39_N22
\SLL64|Stage1_sig[53]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[53]~105_combout\ = (\SRL64|Stage1_sig[48]~104_combout\) # (\SRL64|Stage1_sig[48]~88_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~104_combout\,
	datac => \SRL64|Stage1_sig[48]~88_combout\,
	combout => \SLL64|Stage1_sig[53]~105_combout\);

-- Location: LCCOMB_X69_Y39_N24
\SLL64|Stage1_sig[52]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[52]~106_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~222_combout\) # ((\SRL64|Stage1_sig[48]~214_combout\)))) # (!\B[0]~input_o\ & (((\SLL64|Stage1_sig[53]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~222_combout\,
	datab => \B[0]~input_o\,
	datac => \SLL64|Stage1_sig[53]~105_combout\,
	datad => \SRL64|Stage1_sig[48]~214_combout\,
	combout => \SLL64|Stage1_sig[52]~106_combout\);

-- Location: LCCOMB_X73_Y39_N12
\SLL64|Stage2_sig[8]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[8]~90_combout\ = (\B[3]~input_o\ & ((\SLL64|Stage1_sig[44]~95_combout\))) # (!\B[3]~input_o\ & (\SLL64|Stage1_sig[52]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[52]~106_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL64|Stage1_sig[44]~95_combout\,
	combout => \SLL64|Stage2_sig[8]~90_combout\);

-- Location: LCCOMB_X73_Y39_N22
\Y_sig~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~293_combout\ = (\SRA64|Equal8~1_combout\ & (((\Y_sig~276_combout\)))) # (!\SRA64|Equal8~1_combout\ & ((\Y_sig~276_combout\ & (\SLL64|Stage2_sig[8]~86_combout\)) # (!\Y_sig~276_combout\ & ((\SLL64|Stage2_sig[8]~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal8~1_combout\,
	datab => \SLL64|Stage2_sig[8]~86_combout\,
	datac => \Y_sig~276_combout\,
	datad => \SLL64|Stage2_sig[8]~90_combout\,
	combout => \Y_sig~293_combout\);

-- Location: LCCOMB_X80_Y39_N26
\Y_sig~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~294_combout\ = (\Y_sig~293_combout\ & (((\SLL64|Y[36]~29_combout\) # (!\SRA64|Equal8~1_combout\)))) # (!\Y_sig~293_combout\ & (\SLL64|Stage2_sig[20]~48_combout\ & ((\SRA64|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[20]~48_combout\,
	datab => \Y_sig~293_combout\,
	datac => \SLL64|Y[36]~29_combout\,
	datad => \SRA64|Equal8~1_combout\,
	combout => \Y_sig~294_combout\);

-- Location: IOIBUF_X89_Y0_N8
\C[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(52),
	o => \C[52]~input_o\);

-- Location: LCCOMB_X80_Y39_N4
\Y_sig~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~295_combout\ = (\Y_sig~274_combout\ & ((\Y_sig~275_combout\ & ((\C[52]~input_o\))) # (!\Y_sig~275_combout\ & (\Y_sig~294_combout\)))) # (!\Y_sig~274_combout\ & (((\Y_sig~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~294_combout\,
	datab => \Y_sig~274_combout\,
	datac => \C[52]~input_o\,
	datad => \Y_sig~275_combout\,
	combout => \Y_sig~295_combout\);

-- Location: LCCOMB_X80_Y39_N14
\Y_sig~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~296_combout\ = (\Y_sig~295_combout\ & (((\SgnExtUpper_sig[0]~7_combout\) # (\Y_sig~274_combout\)))) # (!\Y_sig~295_combout\ & (\SRA_SRL_sig[52]~55_combout\ & ((!\Y_sig~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[52]~55_combout\,
	datab => \Y_sig~295_combout\,
	datac => \SgnExtUpper_sig[0]~7_combout\,
	datad => \Y_sig~274_combout\,
	combout => \Y_sig~296_combout\);

-- Location: LCCOMB_X70_Y41_N2
\SLL64|Stage1_sig[54]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[54]~107_combout\ = (\SRL64|Stage1_sig[48]~91_combout\) # (\SRL64|Stage1_sig[48]~101_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~91_combout\,
	datad => \SRL64|Stage1_sig[48]~101_combout\,
	combout => \SLL64|Stage1_sig[54]~107_combout\);

-- Location: LCCOMB_X69_Y39_N28
\SLL64|Stage1_sig[53]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[53]~118_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~88_combout\) # ((\SRL64|Stage1_sig[48]~104_combout\)))) # (!\B[0]~input_o\ & (((\SLL64|Stage1_sig[54]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~88_combout\,
	datab => \SRL64|Stage1_sig[48]~104_combout\,
	datac => \B[0]~input_o\,
	datad => \SLL64|Stage1_sig[54]~107_combout\,
	combout => \SLL64|Stage1_sig[53]~118_combout\);

-- Location: LCCOMB_X73_Y39_N16
\SLL64|Stage2_sig[9]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[9]~91_combout\ = (\B[3]~input_o\ & (\SLL64|Stage1_sig[45]~96_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage1_sig[53]~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[45]~96_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64|Stage1_sig[53]~118_combout\,
	combout => \SLL64|Stage2_sig[9]~91_combout\);

-- Location: LCCOMB_X79_Y41_N12
\Y_sig~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~297_combout\ = (\Y_sig~276_combout\ & (((\SRA64|Equal8~1_combout\)))) # (!\Y_sig~276_combout\ & ((\SRA64|Equal8~1_combout\ & ((\SLL64|Stage2_sig[21]~51_combout\))) # (!\SRA64|Equal8~1_combout\ & (\SLL64|Stage2_sig[9]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[9]~91_combout\,
	datab => \Y_sig~276_combout\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \SLL64|Stage2_sig[21]~51_combout\,
	combout => \Y_sig~297_combout\);

-- Location: LCCOMB_X79_Y41_N14
\Y_sig~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~298_combout\ = (\Y_sig~297_combout\ & ((\SLL64|Y[37]~32_combout\) # ((!\Y_sig~276_combout\)))) # (!\Y_sig~297_combout\ & (((\SLL64|Stage2_sig[9]~87_combout\ & \Y_sig~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~297_combout\,
	datab => \SLL64|Y[37]~32_combout\,
	datac => \SLL64|Stage2_sig[9]~87_combout\,
	datad => \Y_sig~276_combout\,
	combout => \Y_sig~298_combout\);

-- Location: LCCOMB_X84_Y45_N16
\Y_sig~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~299_combout\ = (\Y_sig~274_combout\ & (\Y_sig~298_combout\ & ((!\Y_sig~275_combout\)))) # (!\Y_sig~274_combout\ & (((\SRA_SRL_sig[53]~57_combout\) # (\Y_sig~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~298_combout\,
	datab => \SRA_SRL_sig[53]~57_combout\,
	datac => \Y_sig~274_combout\,
	datad => \Y_sig~275_combout\,
	combout => \Y_sig~299_combout\);

-- Location: IOIBUF_X115_Y48_N8
\C[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(53),
	o => \C[53]~input_o\);

-- Location: LCCOMB_X84_Y45_N18
\Y_sig~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~300_combout\ = (\Y_sig~299_combout\ & ((\SgnExtUpper_sig[0]~7_combout\) # ((!\Y_sig~275_combout\)))) # (!\Y_sig~299_combout\ & (((\C[53]~input_o\ & \Y_sig~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtUpper_sig[0]~7_combout\,
	datab => \Y_sig~299_combout\,
	datac => \C[53]~input_o\,
	datad => \Y_sig~275_combout\,
	combout => \Y_sig~300_combout\);

-- Location: LCCOMB_X70_Y41_N28
\SLL64|Stage1_sig[54]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[54]~108_combout\ = (\B[0]~input_o\ & (((\SLL64|Stage1_sig[54]~107_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~145_combout\) # ((\SRL64|Stage1_sig[48]~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~145_combout\,
	datab => \SRL64|Stage1_sig[48]~153_combout\,
	datac => \B[0]~input_o\,
	datad => \SLL64|Stage1_sig[54]~107_combout\,
	combout => \SLL64|Stage1_sig[54]~108_combout\);

-- Location: LCCOMB_X73_Y39_N2
\SLL64|Stage2_sig[10]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[10]~92_combout\ = (\B[3]~input_o\ & (\SLL64|Stage1_sig[46]~98_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage1_sig[54]~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SLL64|Stage1_sig[46]~98_combout\,
	datad => \SLL64|Stage1_sig[54]~108_combout\,
	combout => \SLL64|Stage2_sig[10]~92_combout\);

-- Location: LCCOMB_X79_Y39_N28
\Y_sig~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~301_combout\ = (\Y_sig~276_combout\ & ((\SRA64|Equal8~1_combout\) # ((\SLL64|Stage2_sig[10]~88_combout\)))) # (!\Y_sig~276_combout\ & (!\SRA64|Equal8~1_combout\ & (\SLL64|Stage2_sig[10]~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~276_combout\,
	datab => \SRA64|Equal8~1_combout\,
	datac => \SLL64|Stage2_sig[10]~92_combout\,
	datad => \SLL64|Stage2_sig[10]~88_combout\,
	combout => \Y_sig~301_combout\);

-- Location: LCCOMB_X79_Y39_N30
\Y_sig~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~302_combout\ = (\SRA64|Equal8~1_combout\ & ((\Y_sig~301_combout\ & ((\SLL64|Y[38]~35_combout\))) # (!\Y_sig~301_combout\ & (\SLL64|Stage2_sig[22]~54_combout\)))) # (!\SRA64|Equal8~1_combout\ & (((\Y_sig~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[22]~54_combout\,
	datab => \SRA64|Equal8~1_combout\,
	datac => \SLL64|Y[38]~35_combout\,
	datad => \Y_sig~301_combout\,
	combout => \Y_sig~302_combout\);

-- Location: IOIBUF_X89_Y73_N8
\C[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(54),
	o => \C[54]~input_o\);

-- Location: LCCOMB_X84_Y45_N28
\Y_sig~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~303_combout\ = (\Y_sig~274_combout\ & ((\Y_sig~275_combout\ & ((\C[54]~input_o\))) # (!\Y_sig~275_combout\ & (\Y_sig~302_combout\)))) # (!\Y_sig~274_combout\ & (((\Y_sig~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~302_combout\,
	datab => \C[54]~input_o\,
	datac => \Y_sig~274_combout\,
	datad => \Y_sig~275_combout\,
	combout => \Y_sig~303_combout\);

-- Location: LCCOMB_X84_Y45_N6
\Y_sig~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~304_combout\ = (\Y_sig~274_combout\ & (((\Y_sig~303_combout\)))) # (!\Y_sig~274_combout\ & ((\Y_sig~303_combout\ & (\SgnExtUpper_sig[0]~7_combout\)) # (!\Y_sig~303_combout\ & ((\SRA_SRL_sig[54]~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtUpper_sig[0]~7_combout\,
	datab => \SRA_SRL_sig[54]~59_combout\,
	datac => \Y_sig~274_combout\,
	datad => \Y_sig~303_combout\,
	combout => \Y_sig~304_combout\);

-- Location: LCCOMB_X70_Y41_N6
\SLL64|Stage1_sig[55]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[55]~109_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~153_combout\) # (\SRL64|Stage1_sig[48]~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL64|Stage1_sig[48]~153_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~145_combout\,
	combout => \SLL64|Stage1_sig[55]~109_combout\);

-- Location: LCCOMB_X70_Y41_N8
\SLL64|Stage1_sig[55]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage1_sig[55]~110_combout\ = (\SLL64|Stage1_sig[55]~109_combout\) # ((!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~221_combout\) # (\SRL64|Stage1_sig[48]~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~221_combout\,
	datab => \SRL64|Stage1_sig[48]~225_combout\,
	datac => \B[0]~input_o\,
	datad => \SLL64|Stage1_sig[55]~109_combout\,
	combout => \SLL64|Stage1_sig[55]~110_combout\);

-- Location: LCCOMB_X77_Y38_N26
\SLL64|Stage2_sig[11]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[11]~93_combout\ = (\B[3]~input_o\ & (\SLL64|Stage1_sig[47]~99_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage1_sig[55]~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[47]~99_combout\,
	datab => \SLL64|Stage1_sig[55]~110_combout\,
	datac => \B[3]~input_o\,
	combout => \SLL64|Stage2_sig[11]~93_combout\);

-- Location: LCCOMB_X77_Y38_N4
\Y_sig~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~305_combout\ = (\Y_sig~276_combout\ & (((\SRA64|Equal8~1_combout\)))) # (!\Y_sig~276_combout\ & ((\SRA64|Equal8~1_combout\ & (\SLL64|Stage2_sig[23]~57_combout\)) # (!\SRA64|Equal8~1_combout\ & ((\SLL64|Stage2_sig[11]~93_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~276_combout\,
	datab => \SLL64|Stage2_sig[23]~57_combout\,
	datac => \SLL64|Stage2_sig[11]~93_combout\,
	datad => \SRA64|Equal8~1_combout\,
	combout => \Y_sig~305_combout\);

-- Location: LCCOMB_X77_Y38_N14
\Y_sig~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~306_combout\ = (\Y_sig~305_combout\ & ((\SLL64|Y[39]~38_combout\) # ((!\Y_sig~276_combout\)))) # (!\Y_sig~305_combout\ & (((\SLL64|Stage2_sig[11]~89_combout\ & \Y_sig~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[39]~38_combout\,
	datab => \SLL64|Stage2_sig[11]~89_combout\,
	datac => \Y_sig~305_combout\,
	datad => \Y_sig~276_combout\,
	combout => \Y_sig~306_combout\);

-- Location: LCCOMB_X84_Y45_N0
\Y_sig~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~307_combout\ = (\Y_sig~274_combout\ & (((\Y_sig~306_combout\ & !\Y_sig~275_combout\)))) # (!\Y_sig~274_combout\ & ((\SRA_SRL_sig[55]~61_combout\) # ((\Y_sig~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[55]~61_combout\,
	datab => \Y_sig~274_combout\,
	datac => \Y_sig~306_combout\,
	datad => \Y_sig~275_combout\,
	combout => \Y_sig~307_combout\);

-- Location: IOIBUF_X115_Y45_N22
\C[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(55),
	o => \C[55]~input_o\);

-- Location: LCCOMB_X84_Y45_N10
\Y_sig~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~308_combout\ = (\Y_sig~275_combout\ & ((\Y_sig~307_combout\ & (\SgnExtUpper_sig[0]~7_combout\)) # (!\Y_sig~307_combout\ & ((\C[55]~input_o\))))) # (!\Y_sig~275_combout\ & (\Y_sig~307_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~275_combout\,
	datab => \Y_sig~307_combout\,
	datac => \SgnExtUpper_sig[0]~7_combout\,
	datad => \C[55]~input_o\,
	combout => \Y_sig~308_combout\);

-- Location: IOIBUF_X115_Y22_N1
\C[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(56),
	o => \C[56]~input_o\);

-- Location: LCCOMB_X68_Y40_N4
\SLL64|Stage2_sig[9]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[9]~94_combout\ = (\SRL64|Stage1_sig[48]~98_combout\) # (\SRL64|Stage1_sig[48]~103_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~98_combout\,
	datad => \SRL64|Stage1_sig[48]~103_combout\,
	combout => \SLL64|Stage2_sig[9]~94_combout\);

-- Location: LCCOMB_X70_Y41_N26
\SLL64|Stage2_sig[8]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[8]~95_combout\ = (\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~225_combout\) # (\SRL64|Stage1_sig[48]~221_combout\)))) # (!\B[0]~input_o\ & (\SLL64|Stage2_sig[9]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[9]~94_combout\,
	datab => \SRL64|Stage1_sig[48]~225_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~221_combout\,
	combout => \SLL64|Stage2_sig[8]~95_combout\);

-- Location: LCCOMB_X73_Y39_N28
\SLL64|Stage2_sig[8]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[8]~96_combout\ = (\B[3]~input_o\ & (\SLL64|Stage1_sig[48]~101_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage2_sig[8]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL64|Stage1_sig[48]~101_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL64|Stage2_sig[8]~95_combout\,
	combout => \SLL64|Stage2_sig[8]~96_combout\);

-- Location: LCCOMB_X73_Y39_N14
\Y_sig~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~309_combout\ = (\SRA64|Equal8~1_combout\ & (((\Y_sig~276_combout\)))) # (!\SRA64|Equal8~1_combout\ & ((\Y_sig~276_combout\ & ((\SLL64|Stage2_sig[8]~90_combout\))) # (!\Y_sig~276_combout\ & (\SLL64|Stage2_sig[8]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal8~1_combout\,
	datab => \SLL64|Stage2_sig[8]~96_combout\,
	datac => \Y_sig~276_combout\,
	datad => \SLL64|Stage2_sig[8]~90_combout\,
	combout => \Y_sig~309_combout\);

-- Location: LCCOMB_X80_Y39_N8
\Y_sig~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~310_combout\ = (\Y_sig~309_combout\ & (((\SLL64|Y[40]~41_combout\) # (!\SRA64|Equal8~1_combout\)))) # (!\Y_sig~309_combout\ & (\SLL64|Stage2_sig[24]~60_combout\ & ((\SRA64|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[24]~60_combout\,
	datab => \SLL64|Y[40]~41_combout\,
	datac => \Y_sig~309_combout\,
	datad => \SRA64|Equal8~1_combout\,
	combout => \Y_sig~310_combout\);

-- Location: LCCOMB_X80_Y39_N10
\Y_sig~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~311_combout\ = (\Y_sig~274_combout\ & ((\Y_sig~275_combout\ & (\C[56]~input_o\)) # (!\Y_sig~275_combout\ & ((\Y_sig~310_combout\))))) # (!\Y_sig~274_combout\ & (((\Y_sig~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[56]~input_o\,
	datab => \Y_sig~274_combout\,
	datac => \Y_sig~310_combout\,
	datad => \Y_sig~275_combout\,
	combout => \Y_sig~311_combout\);

-- Location: LCCOMB_X80_Y39_N28
\Y_sig~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~312_combout\ = (\Y_sig~311_combout\ & ((\SgnExtUpper_sig[0]~7_combout\) # ((\Y_sig~274_combout\)))) # (!\Y_sig~311_combout\ & (((\SRA_SRL_sig[56]~63_combout\ & !\Y_sig~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~311_combout\,
	datab => \SgnExtUpper_sig[0]~7_combout\,
	datac => \SRA_SRL_sig[56]~63_combout\,
	datad => \Y_sig~274_combout\,
	combout => \Y_sig~312_combout\);

-- Location: IOIBUF_X96_Y73_N22
\C[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(57),
	o => \C[57]~input_o\);

-- Location: LCCOMB_X70_Y40_N12
\SLL64|Stage2_sig[10]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[10]~97_combout\ = (\SRL64|Stage1_sig[48]~100_combout\) # (\SRL64|Stage1_sig[48]~95_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~100_combout\,
	datac => \SRL64|Stage1_sig[48]~95_combout\,
	combout => \SLL64|Stage2_sig[10]~97_combout\);

-- Location: LCCOMB_X70_Y40_N14
\SLL64|Stage2_sig[9]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[9]~98_combout\ = (!\B[3]~input_o\ & ((\B[0]~input_o\ & ((\SLL64|Stage2_sig[9]~94_combout\))) # (!\B[0]~input_o\ & (\SLL64|Stage2_sig[10]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[10]~97_combout\,
	datab => \B[0]~input_o\,
	datac => \SLL64|Stage2_sig[9]~94_combout\,
	datad => \B[3]~input_o\,
	combout => \SLL64|Stage2_sig[9]~98_combout\);

-- Location: LCCOMB_X70_Y40_N0
\SLL64|Stage2_sig[9]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[9]~99_combout\ = (\SLL64|Stage2_sig[9]~98_combout\) # ((\SLL64|Stage1_sig[49]~116_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[49]~116_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL64|Stage2_sig[9]~98_combout\,
	combout => \SLL64|Stage2_sig[9]~99_combout\);

-- Location: LCCOMB_X79_Y41_N8
\Y_sig~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~313_combout\ = (\Y_sig~276_combout\ & (((\SRA64|Equal8~1_combout\)))) # (!\Y_sig~276_combout\ & ((\SRA64|Equal8~1_combout\ & ((\SLL64|Stage2_sig[25]~63_combout\))) # (!\SRA64|Equal8~1_combout\ & (\SLL64|Stage2_sig[9]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[9]~99_combout\,
	datab => \Y_sig~276_combout\,
	datac => \SRA64|Equal8~1_combout\,
	datad => \SLL64|Stage2_sig[25]~63_combout\,
	combout => \Y_sig~313_combout\);

-- Location: LCCOMB_X79_Y41_N2
\Y_sig~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~314_combout\ = (\Y_sig~313_combout\ & (((\SLL64|Y[41]~45_combout\) # (!\Y_sig~276_combout\)))) # (!\Y_sig~313_combout\ & (\SLL64|Stage2_sig[9]~91_combout\ & ((\Y_sig~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[9]~91_combout\,
	datab => \SLL64|Y[41]~45_combout\,
	datac => \Y_sig~313_combout\,
	datad => \Y_sig~276_combout\,
	combout => \Y_sig~314_combout\);

-- Location: LCCOMB_X84_Y45_N4
\Y_sig~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~315_combout\ = (\Y_sig~274_combout\ & (\Y_sig~314_combout\ & ((!\Y_sig~275_combout\)))) # (!\Y_sig~274_combout\ & (((\SRA_SRL_sig[57]~65_combout\) # (\Y_sig~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~314_combout\,
	datab => \SRA_SRL_sig[57]~65_combout\,
	datac => \Y_sig~274_combout\,
	datad => \Y_sig~275_combout\,
	combout => \Y_sig~315_combout\);

-- Location: LCCOMB_X84_Y45_N22
\Y_sig~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~316_combout\ = (\Y_sig~315_combout\ & ((\SgnExtUpper_sig[0]~7_combout\) # ((!\Y_sig~275_combout\)))) # (!\Y_sig~315_combout\ & (((\C[57]~input_o\ & \Y_sig~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtUpper_sig[0]~7_combout\,
	datab => \C[57]~input_o\,
	datac => \Y_sig~315_combout\,
	datad => \Y_sig~275_combout\,
	combout => \Y_sig~316_combout\);

-- Location: LCCOMB_X70_Y40_N10
\SLL64|Stage2_sig[10]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[10]~100_combout\ = (\B[0]~input_o\ & (((\SLL64|Stage2_sig[10]~97_combout\)))) # (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~150_combout\) # ((\SRL64|Stage1_sig[48]~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~150_combout\,
	datab => \SRL64|Stage1_sig[48]~152_combout\,
	datac => \B[0]~input_o\,
	datad => \SLL64|Stage2_sig[10]~97_combout\,
	combout => \SLL64|Stage2_sig[10]~100_combout\);

-- Location: LCCOMB_X70_Y40_N28
\SLL64|Stage2_sig[10]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[10]~101_combout\ = (\B[3]~input_o\ & ((\SLL64|Stage1_sig[50]~117_combout\))) # (!\B[3]~input_o\ & (\SLL64|Stage2_sig[10]~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[10]~100_combout\,
	datab => \B[3]~input_o\,
	datad => \SLL64|Stage1_sig[50]~117_combout\,
	combout => \SLL64|Stage2_sig[10]~101_combout\);

-- Location: LCCOMB_X73_Y39_N8
\Y_sig~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~317_combout\ = (\SRA64|Equal8~1_combout\ & (((\Y_sig~276_combout\)))) # (!\SRA64|Equal8~1_combout\ & ((\Y_sig~276_combout\ & (\SLL64|Stage2_sig[10]~92_combout\)) # (!\Y_sig~276_combout\ & ((\SLL64|Stage2_sig[10]~101_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA64|Equal8~1_combout\,
	datab => \SLL64|Stage2_sig[10]~92_combout\,
	datac => \Y_sig~276_combout\,
	datad => \SLL64|Stage2_sig[10]~101_combout\,
	combout => \Y_sig~317_combout\);

-- Location: LCCOMB_X79_Y39_N24
\Y_sig~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~318_combout\ = (\SRA64|Equal8~1_combout\ & ((\Y_sig~317_combout\ & (\SLL64|Y[42]~59_combout\)) # (!\Y_sig~317_combout\ & ((\SLL64|Stage2_sig[26]~66_combout\))))) # (!\SRA64|Equal8~1_combout\ & (((\Y_sig~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Y[42]~59_combout\,
	datab => \SRA64|Equal8~1_combout\,
	datac => \Y_sig~317_combout\,
	datad => \SLL64|Stage2_sig[26]~66_combout\,
	combout => \Y_sig~318_combout\);

-- Location: IOIBUF_X115_Y45_N15
\C[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(58),
	o => \C[58]~input_o\);

-- Location: LCCOMB_X84_Y45_N24
\Y_sig~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~319_combout\ = (\Y_sig~275_combout\ & (((\C[58]~input_o\) # (!\Y_sig~274_combout\)))) # (!\Y_sig~275_combout\ & (\Y_sig~318_combout\ & (\Y_sig~274_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~275_combout\,
	datab => \Y_sig~318_combout\,
	datac => \Y_sig~274_combout\,
	datad => \C[58]~input_o\,
	combout => \Y_sig~319_combout\);

-- Location: LCCOMB_X84_Y45_N2
\Y_sig~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~320_combout\ = (\Y_sig~274_combout\ & (((\Y_sig~319_combout\)))) # (!\Y_sig~274_combout\ & ((\Y_sig~319_combout\ & ((\SgnExtUpper_sig[0]~7_combout\))) # (!\Y_sig~319_combout\ & (\SRA_SRL_sig[58]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA_SRL_sig[58]~67_combout\,
	datab => \Y_sig~274_combout\,
	datac => \SgnExtUpper_sig[0]~7_combout\,
	datad => \Y_sig~319_combout\,
	combout => \Y_sig~320_combout\);

-- Location: IOIBUF_X94_Y73_N1
\C[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(59),
	o => \C[59]~input_o\);

-- Location: LCCOMB_X70_Y40_N30
\SRL64|Stage1_sig[48]~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~270_combout\ = (\SRL64|Stage1_sig[48]~224_combout\) # (\SRL64|Stage1_sig[48]~219_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~224_combout\,
	datad => \SRL64|Stage1_sig[48]~219_combout\,
	combout => \SRL64|Stage1_sig[48]~270_combout\);

-- Location: LCCOMB_X70_Y40_N16
\SLL64|Stage2_sig[11]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[11]~102_combout\ = (\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~150_combout\) # ((\SRL64|Stage1_sig[48]~152_combout\)))) # (!\B[0]~input_o\ & (((\SRL64|Stage1_sig[48]~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~150_combout\,
	datab => \SRL64|Stage1_sig[48]~152_combout\,
	datac => \B[0]~input_o\,
	datad => \SRL64|Stage1_sig[48]~270_combout\,
	combout => \SLL64|Stage2_sig[11]~102_combout\);

-- Location: LCCOMB_X70_Y40_N26
\SLL64|Stage2_sig[11]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL64|Stage2_sig[11]~103_combout\ = (\B[3]~input_o\ & (\SLL64|Stage1_sig[51]~104_combout\)) # (!\B[3]~input_o\ & ((\SLL64|Stage2_sig[11]~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage1_sig[51]~104_combout\,
	datab => \B[3]~input_o\,
	datad => \SLL64|Stage2_sig[11]~102_combout\,
	combout => \SLL64|Stage2_sig[11]~103_combout\);

-- Location: LCCOMB_X77_Y38_N16
\Y_sig~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~321_combout\ = (\SRA64|Equal8~1_combout\ & ((\SLL64|Stage2_sig[27]~69_combout\) # ((\Y_sig~276_combout\)))) # (!\SRA64|Equal8~1_combout\ & (((\SLL64|Stage2_sig[11]~103_combout\ & !\Y_sig~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[27]~69_combout\,
	datab => \SRA64|Equal8~1_combout\,
	datac => \SLL64|Stage2_sig[11]~103_combout\,
	datad => \Y_sig~276_combout\,
	combout => \Y_sig~321_combout\);

-- Location: LCCOMB_X77_Y38_N2
\Y_sig~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~322_combout\ = (\Y_sig~276_combout\ & ((\Y_sig~321_combout\ & (\SLL64|Y[43]~51_combout\)) # (!\Y_sig~321_combout\ & ((\SLL64|Stage2_sig[11]~93_combout\))))) # (!\Y_sig~276_combout\ & (((\Y_sig~321_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~276_combout\,
	datab => \SLL64|Y[43]~51_combout\,
	datac => \SLL64|Stage2_sig[11]~93_combout\,
	datad => \Y_sig~321_combout\,
	combout => \Y_sig~322_combout\);

-- Location: LCCOMB_X84_Y45_N20
\Y_sig~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~323_combout\ = (\Y_sig~274_combout\ & (\Y_sig~322_combout\ & ((!\Y_sig~275_combout\)))) # (!\Y_sig~274_combout\ & (((\SRA_SRL_sig[59]~69_combout\) # (\Y_sig~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~322_combout\,
	datab => \SRA_SRL_sig[59]~69_combout\,
	datac => \Y_sig~274_combout\,
	datad => \Y_sig~275_combout\,
	combout => \Y_sig~323_combout\);

-- Location: LCCOMB_X84_Y45_N30
\Y_sig~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~324_combout\ = (\Y_sig~323_combout\ & (((\SgnExtUpper_sig[0]~7_combout\) # (!\Y_sig~275_combout\)))) # (!\Y_sig~323_combout\ & (\C[59]~input_o\ & ((\Y_sig~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[59]~input_o\,
	datab => \Y_sig~323_combout\,
	datac => \SgnExtUpper_sig[0]~7_combout\,
	datad => \Y_sig~275_combout\,
	combout => \Y_sig~324_combout\);

-- Location: LCCOMB_X79_Y37_N6
\Y_sig~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~325_combout\ = (\B[4]~input_o\) # (!\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_sig~325_combout\);

-- Location: LCCOMB_X79_Y37_N16
\Y_sig~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~326_combout\ = ((!\B[4]~input_o\ & (!\ExtWord~input_o\ & \B[5]~input_o\))) # (!\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_sig~326_combout\);

-- Location: LCCOMB_X68_Y40_N30
\SRL64|Stage1_sig[48]~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~271_combout\ = (\SRL64|Stage1_sig[48]~108_combout\) # (\SRL64|Stage1_sig[48]~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~108_combout\,
	datad => \SRL64|Stage1_sig[48]~97_combout\,
	combout => \SRL64|Stage1_sig[48]~271_combout\);

-- Location: LCCOMB_X73_Y39_N10
\Y_sig~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~327_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & (\SRL64|Stage1_sig[48]~271_combout\ & ((!\Y_sig~45_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & (((\SLL64|Stage1_sig[52]~106_combout\) # (\Y_sig~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SRL64|Stage1_sig[48]~271_combout\,
	datac => \SLL64|Stage1_sig[52]~106_combout\,
	datad => \Y_sig~45_combout\,
	combout => \Y_sig~327_combout\);

-- Location: LCCOMB_X73_Y39_N20
\Y_sig~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~328_combout\ = (\Y_sig~327_combout\ & (((\SLL64|Stage2_sig[8]~96_combout\)) # (!\Y_sig~45_combout\))) # (!\Y_sig~327_combout\ & (\Y_sig~45_combout\ & (\SRL64|Stage1_sig[48]~270_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~327_combout\,
	datab => \Y_sig~45_combout\,
	datac => \SRL64|Stage1_sig[48]~270_combout\,
	datad => \SLL64|Stage2_sig[8]~96_combout\,
	combout => \Y_sig~328_combout\);

-- Location: LCCOMB_X79_Y37_N2
\Y_sig~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~329_combout\ = (\Y_sig~326_combout\ & ((\SLL64|Stage2_sig[28]~72_combout\) # ((\Y_sig~325_combout\)))) # (!\Y_sig~326_combout\ & (((\Y_sig~328_combout\ & !\Y_sig~325_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[28]~72_combout\,
	datab => \Y_sig~326_combout\,
	datac => \Y_sig~328_combout\,
	datad => \Y_sig~325_combout\,
	combout => \Y_sig~329_combout\);

-- Location: IOIBUF_X115_Y27_N8
\C[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(60),
	o => \C[60]~input_o\);

-- Location: LCCOMB_X79_Y37_N12
\Y_sig~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~330_combout\ = (\Y_sig~325_combout\ & ((\Y_sig~329_combout\ & (\C[60]~input_o\)) # (!\Y_sig~329_combout\ & ((\SLL64|Y[44]~53_combout\))))) # (!\Y_sig~325_combout\ & (\Y_sig~329_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~325_combout\,
	datab => \Y_sig~329_combout\,
	datac => \C[60]~input_o\,
	datad => \SLL64|Y[44]~53_combout\,
	combout => \Y_sig~330_combout\);

-- Location: LCCOMB_X83_Y41_N18
\Y_sig~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~331_combout\ = (\Y_sig~51_combout\ & ((\SRA_SRL_sig[60]~70_combout\) # ((\Y_sig~330_combout\ & \Y_sig~274_combout\)))) # (!\Y_sig~51_combout\ & (\Y_sig~330_combout\ & ((\Y_sig~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~51_combout\,
	datab => \Y_sig~330_combout\,
	datac => \SRA_SRL_sig[60]~70_combout\,
	datad => \Y_sig~274_combout\,
	combout => \Y_sig~331_combout\);

-- Location: LCCOMB_X83_Y41_N28
\Y_sig~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~332_combout\ = (\Y_sig~331_combout\) # ((\SgnExtUpper_sig[0]~7_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SgnExtUpper_sig[0]~7_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y_sig~331_combout\,
	combout => \Y_sig~332_combout\);

-- Location: LCCOMB_X73_Y39_N6
\SRL64|Stage1_sig[48]~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~272_combout\ = (\SRL64|Stage1_sig[48]~107_combout\) # (\SRL64|Stage1_sig[48]~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL64|Stage1_sig[48]~107_combout\,
	datad => \SRL64|Stage1_sig[48]~94_combout\,
	combout => \SRL64|Stage1_sig[48]~272_combout\);

-- Location: LCCOMB_X73_Y39_N0
\Y_sig~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~333_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & ((\Y_sig~45_combout\ & (\SRL64|Stage1_sig[48]~271_combout\)) # (!\Y_sig~45_combout\ & ((\SRL64|Stage1_sig[48]~272_combout\))))) # (!\SRL64|Stage2_sig[48]~29_combout\ & (\Y_sig~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \Y_sig~45_combout\,
	datac => \SRL64|Stage1_sig[48]~271_combout\,
	datad => \SRL64|Stage1_sig[48]~272_combout\,
	combout => \Y_sig~333_combout\);

-- Location: LCCOMB_X73_Y39_N18
\Y_sig~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~334_combout\ = (\SRL64|Stage2_sig[48]~29_combout\ & (((\Y_sig~333_combout\)))) # (!\SRL64|Stage2_sig[48]~29_combout\ & ((\Y_sig~333_combout\ & ((\SLL64|Stage2_sig[9]~99_combout\))) # (!\Y_sig~333_combout\ & (\SLL64|Stage1_sig[53]~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage2_sig[48]~29_combout\,
	datab => \SLL64|Stage1_sig[53]~118_combout\,
	datac => \SLL64|Stage2_sig[9]~99_combout\,
	datad => \Y_sig~333_combout\,
	combout => \Y_sig~334_combout\);

-- Location: LCCOMB_X79_Y37_N30
\Y_sig~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~335_combout\ = (\Y_sig~325_combout\ & (((\SLL64|Y[45]~61_combout\) # (\Y_sig~326_combout\)))) # (!\Y_sig~325_combout\ & (\Y_sig~334_combout\ & ((!\Y_sig~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~325_combout\,
	datab => \Y_sig~334_combout\,
	datac => \SLL64|Y[45]~61_combout\,
	datad => \Y_sig~326_combout\,
	combout => \Y_sig~335_combout\);

-- Location: IOIBUF_X83_Y0_N8
\C[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(61),
	o => \C[61]~input_o\);

-- Location: LCCOMB_X79_Y37_N24
\Y_sig~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~336_combout\ = (\Y_sig~335_combout\ & (((\C[61]~input_o\)) # (!\Y_sig~326_combout\))) # (!\Y_sig~335_combout\ & (\Y_sig~326_combout\ & (\SLL64|Stage2_sig[29]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~335_combout\,
	datab => \Y_sig~326_combout\,
	datac => \SLL64|Stage2_sig[29]~75_combout\,
	datad => \C[61]~input_o\,
	combout => \Y_sig~336_combout\);

-- Location: LCCOMB_X83_Y41_N30
\Y_sig~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~337_combout\ = (\Y_sig~51_combout\ & ((\SRA_SRL_sig[61]~72_combout\) # ((\Y_sig~336_combout\ & \Y_sig~274_combout\)))) # (!\Y_sig~51_combout\ & (\Y_sig~336_combout\ & ((\Y_sig~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~51_combout\,
	datab => \Y_sig~336_combout\,
	datac => \SRA_SRL_sig[61]~72_combout\,
	datad => \Y_sig~274_combout\,
	combout => \Y_sig~337_combout\);

-- Location: LCCOMB_X83_Y41_N8
\Y_sig~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~338_combout\ = (\Y_sig~337_combout\) # ((\SgnExtUpper_sig[0]~7_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~337_combout\,
	datab => \SgnExtUpper_sig[0]~7_combout\,
	datac => \ExtWord~input_o\,
	combout => \Y_sig~338_combout\);

-- Location: IOIBUF_X85_Y0_N8
\C[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(62),
	o => \C[62]~input_o\);

-- Location: LCCOMB_X73_Y41_N16
\SRL64|Stage1_sig[48]~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL64|Stage1_sig[48]~273_combout\ = (\SRL64|Stage1_sig[48]~149_combout\) # ((\X_sig[62]~3_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_sig[62]~3_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL64|Stage1_sig[48]~149_combout\,
	combout => \SRL64|Stage1_sig[48]~273_combout\);

-- Location: LCCOMB_X73_Y39_N4
\Y_sig~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~339_combout\ = (\Y_sig~45_combout\ & (((!\SRL64|Stage2_sig[48]~29_combout\)))) # (!\Y_sig~45_combout\ & ((\SRL64|Stage2_sig[48]~29_combout\ & (\SRL64|Stage1_sig[48]~273_combout\)) # (!\SRL64|Stage2_sig[48]~29_combout\ & 
-- ((\SLL64|Stage1_sig[54]~108_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL64|Stage1_sig[48]~273_combout\,
	datab => \Y_sig~45_combout\,
	datac => \SRL64|Stage2_sig[48]~29_combout\,
	datad => \SLL64|Stage1_sig[54]~108_combout\,
	combout => \Y_sig~339_combout\);

-- Location: LCCOMB_X73_Y39_N30
\Y_sig~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~340_combout\ = (\Y_sig~45_combout\ & ((\Y_sig~339_combout\ & (\SLL64|Stage2_sig[10]~101_combout\)) # (!\Y_sig~339_combout\ & ((\SRL64|Stage1_sig[48]~272_combout\))))) # (!\Y_sig~45_combout\ & (((\Y_sig~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[10]~101_combout\,
	datab => \Y_sig~45_combout\,
	datac => \Y_sig~339_combout\,
	datad => \SRL64|Stage1_sig[48]~272_combout\,
	combout => \Y_sig~340_combout\);

-- Location: LCCOMB_X79_Y37_N26
\Y_sig~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~341_combout\ = (\Y_sig~326_combout\ & ((\SLL64|Stage2_sig[30]~78_combout\) # ((\Y_sig~325_combout\)))) # (!\Y_sig~326_combout\ & (((\Y_sig~340_combout\ & !\Y_sig~325_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL64|Stage2_sig[30]~78_combout\,
	datab => \Y_sig~326_combout\,
	datac => \Y_sig~340_combout\,
	datad => \Y_sig~325_combout\,
	combout => \Y_sig~341_combout\);

-- Location: LCCOMB_X79_Y37_N28
\Y_sig~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~342_combout\ = (\Y_sig~341_combout\ & ((\C[62]~input_o\) # ((!\Y_sig~325_combout\)))) # (!\Y_sig~341_combout\ & (((\SLL64|Y[46]~56_combout\ & \Y_sig~325_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[62]~input_o\,
	datab => \SLL64|Y[46]~56_combout\,
	datac => \Y_sig~341_combout\,
	datad => \Y_sig~325_combout\,
	combout => \Y_sig~342_combout\);

-- Location: LCCOMB_X83_Y41_N10
\Y_sig~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~343_combout\ = (\Y_sig~51_combout\ & ((\SRA_SRL_sig[62]~74_combout\) # ((\Y_sig~342_combout\ & \Y_sig~274_combout\)))) # (!\Y_sig~51_combout\ & (\Y_sig~342_combout\ & ((\Y_sig~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_sig~51_combout\,
	datab => \Y_sig~342_combout\,
	datac => \SRA_SRL_sig[62]~74_combout\,
	datad => \Y_sig~274_combout\,
	combout => \Y_sig~343_combout\);

-- Location: LCCOMB_X83_Y41_N20
\Y_sig~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_sig~344_combout\ = (\Y_sig~343_combout\) # ((\SgnExtUpper_sig[0]~7_combout\ & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SgnExtUpper_sig[0]~7_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y_sig~343_combout\,
	combout => \Y_sig~344_combout\);

-- Location: LCCOMB_X73_Y41_N10
\SLL_PASS_sig[63]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL_PASS_sig[63]~0_combout\ = (!\B[0]~input_o\ & ((\SRL64|Stage1_sig[48]~218_combout\) # ((\X_sig[63]~2_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[48]~218_combout\,
	datac => \X_sig[63]~2_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL_PASS_sig[63]~0_combout\);

-- Location: LCCOMB_X73_Y41_N20
\SLL_PASS_sig[63]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL_PASS_sig[63]~1_combout\ = (!\B[3]~input_o\ & ((\SLL_PASS_sig[63]~0_combout\) # ((\B[0]~input_o\ & \SRL64|Stage1_sig[48]~273_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRL64|Stage1_sig[48]~273_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL_PASS_sig[63]~0_combout\,
	combout => \SLL_PASS_sig[63]~1_combout\);

-- Location: LCCOMB_X77_Y38_N20
\SLL_PASS_sig[63]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL_PASS_sig[63]~2_combout\ = (!\B[2]~input_o\ & ((\SLL_PASS_sig[63]~1_combout\) # ((\B[3]~input_o\ & \SLL64|Stage1_sig[55]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL_PASS_sig[63]~1_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SLL64|Stage1_sig[55]~110_combout\,
	combout => \SLL_PASS_sig[63]~2_combout\);

-- Location: LCCOMB_X77_Y38_N6
\SLL_PASS_sig[63]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL_PASS_sig[63]~3_combout\ = (!\ShiftCount[5]~0_combout\ & ((\SLL_PASS_sig[63]~2_combout\) # ((\B[2]~input_o\ & \SLL64|Stage2_sig[11]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \B[2]~input_o\,
	datac => \SLL64|Stage2_sig[11]~103_combout\,
	datad => \SLL_PASS_sig[63]~2_combout\,
	combout => \SLL_PASS_sig[63]~3_combout\);

-- Location: LCCOMB_X79_Y42_N6
\SLL_PASS_sig[63]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL_PASS_sig[63]~4_combout\ = (!\B[4]~input_o\ & ((\SLL_PASS_sig[63]~3_combout\) # ((\ShiftCount[5]~0_combout\ & \SLL64|Stage2_sig[31]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \SLL64|Stage2_sig[31]~81_combout\,
	datac => \B[4]~input_o\,
	datad => \SLL_PASS_sig[63]~3_combout\,
	combout => \SLL_PASS_sig[63]~4_combout\);

-- Location: LCCOMB_X79_Y42_N8
\SLL_PASS_sig[63]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL_PASS_sig[63]~5_combout\ = (\ShiftFN[0]~input_o\ & ((\SLL_PASS_sig[63]~4_combout\) # ((\B[4]~input_o\ & \SLL64|Y[47]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL_PASS_sig[63]~4_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \SLL64|Y[47]~62_combout\,
	combout => \SLL_PASS_sig[63]~5_combout\);

-- Location: IOIBUF_X85_Y73_N1
\C[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(63),
	o => \C[63]~input_o\);

-- Location: LCCOMB_X80_Y42_N28
\SgnExtUpper_sig[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SgnExtUpper_sig[0]~9_combout\ = (\Y_sig~274_combout\ & ((\SLL_PASS_sig[63]~5_combout\) # ((!\ShiftFN[0]~input_o\ & \C[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL_PASS_sig[63]~5_combout\,
	datab => \Y_sig~274_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \C[63]~input_o\,
	combout => \SgnExtUpper_sig[0]~9_combout\);

-- Location: LCCOMB_X80_Y42_N10
\SgnExtUpper_sig[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SgnExtUpper_sig[0]~8_combout\ = (\ShiftFN[1]~input_o\ & \SRA_SRL_sig[47]~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[1]~input_o\,
	datad => \SRA_SRL_sig[47]~75_combout\,
	combout => \SgnExtUpper_sig[0]~8_combout\);

-- Location: LCCOMB_X80_Y42_N6
\SgnExtUpper_sig[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SgnExtUpper_sig[0]~10_combout\ = (\SgnExtUpper_sig[0]~9_combout\) # ((\SgnExtUpper_sig[0]~8_combout\) # ((\SgnExtUpper_sig[0]~5_combout\ & \ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtUpper_sig[0]~5_combout\,
	datab => \SgnExtUpper_sig[0]~9_combout\,
	datac => \ExtWord~input_o\,
	datad => \SgnExtUpper_sig[0]~8_combout\,
	combout => \SgnExtUpper_sig[0]~10_combout\);

-- Location: IOIBUF_X31_Y73_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X9_Y73_N1
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X100_Y0_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X13_Y73_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X100_Y0_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X109_Y0_N1
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X115_Y68_N22
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X102_Y0_N22
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X3_Y73_N1
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X115_Y59_N22
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X5_Y73_N1
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X11_Y73_N8
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X89_Y0_N22
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X107_Y73_N1
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X98_Y73_N22
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X18_Y73_N15
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X16_Y73_N22
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X0_Y53_N8
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X0_Y48_N1
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X3_Y73_N22
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X98_Y0_N22
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X1_Y73_N22
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X96_Y0_N1
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

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
END structure;


