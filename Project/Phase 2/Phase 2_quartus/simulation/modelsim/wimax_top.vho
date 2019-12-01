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

-- DATE "11/30/2019 22:44:03"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fec_rtl IS
    PORT (
	clk1 : IN std_logic;
	clk2 : IN std_logic;
	rst : IN std_logic;
	data_in_ready : IN std_logic;
	data_out_valid : BUFFER std_logic;
	data_in : IN std_logic_vector(0 DOWNTO 0);
	data_out : BUFFER std_logic
	);
END fec_rtl;

-- Design Ports Information
-- data_out_valid	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk2	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk1	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in_ready	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fec_rtl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk1 : std_logic;
SIGNAL ww_clk2 : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_data_in_ready : std_logic;
SIGNAL ww_data_out_valid : std_logic;
SIGNAL ww_data_in : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_data_out : std_logic;
SIGNAL \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk2~input_o\ : std_logic;
SIGNAL \clk2~inputCLKENA0_outclk\ : std_logic;
SIGNAL \clk1~input_o\ : std_logic;
SIGNAL \clk1~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \data_in_ready~input_o\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \state_reg.idle~0_combout\ : std_logic;
SIGNAL \state_reg.idle~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state_reg.addressb~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state_reg.shifty~DUPLICATE_q\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state_reg.hold~q\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \holdCount~0_combout\ : std_logic;
SIGNAL \state_reg.init~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \holdCount[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \holdCount[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \holdCount[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \holdCount[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \holdCount[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \holdCount[18]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \holdCount[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \holdCount[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \holdCount[24]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \holdCount[25]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \holdCount[30]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \holdCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \address_b[2]~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \holdC~q\ : std_logic;
SIGNAL \state_reg~16_combout\ : std_logic;
SIGNAL \state_reg.init~DUPLICATE_q\ : std_logic;
SIGNAL \state_reg.shifty~q\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Selector50~1_combout\ : std_logic;
SIGNAL \address_b[3]~5_combout\ : std_logic;
SIGNAL \address_b[2]~1_combout\ : std_logic;
SIGNAL \address_b[0]~13_combout\ : std_logic;
SIGNAL \address_b[0]~14_combout\ : std_logic;
SIGNAL \address_b[1]~11_combout\ : std_logic;
SIGNAL \address_b[1]~12_combout\ : std_logic;
SIGNAL \address_b[2]~8_combout\ : std_logic;
SIGNAL \Selector51~1_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \address_b[2]~9_combout\ : std_logic;
SIGNAL \address_b[2]~10_combout\ : std_logic;
SIGNAL \address_b[4]~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \address_b[4]~3_combout\ : std_logic;
SIGNAL \address_b[4]~4_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \Selector50~2_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \address_b[3]~6_combout\ : std_logic;
SIGNAL \address_b[3]~7_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state_reg.shiftx~q\ : std_logic;
SIGNAL \data_out_valid_int~0_combout\ : std_logic;
SIGNAL \data_out_valid_int~q\ : std_logic;
SIGNAL \wren_a~q\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \shift_reg[4]~0_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \data_out_int~0_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \data_out_int~q\ : std_logic;
SIGNAL holdCount : std_logic_vector(31 DOWNTO 0);
SIGNAL address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL shift_reg : std_logic_vector(5 DOWNTO 0);
SIGNAL \RAM_2port|altsyncram_component|auto_generated|q_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL state_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL \RAM_2port|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL address_b : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_state_reg.init~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_holdCount[24]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_holdCount[25]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_holdCount[30]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_holdCount[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_holdCount[18]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_holdCount[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_holdCount[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_holdCount[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_holdCount[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_holdCount[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_holdCount[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state_reg.shifty~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_holdCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_address_b[0]~13_combout\ : std_logic;
SIGNAL \ALT_INV_address_b[1]~11_combout\ : std_logic;
SIGNAL \ALT_INV_address_b[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Add2~2_combout\ : std_logic;
SIGNAL \ALT_INV_address_b[2]~8_combout\ : std_logic;
SIGNAL \ALT_INV_address_b[3]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_combout\ : std_logic;
SIGNAL \ALT_INV_address_b[3]~5_combout\ : std_logic;
SIGNAL \ALT_INV_address_b[4]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector51~1_combout\ : std_logic;
SIGNAL \ALT_INV_address_b[4]~2_combout\ : std_logic;
SIGNAL \ALT_INV_address_b[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector50~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~4_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_state_reg.addressb~q\ : std_logic;
SIGNAL \ALT_INV_address_b[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_state_reg.idle~q\ : std_logic;
SIGNAL \ALT_INV_state_reg.init~q\ : std_logic;
SIGNAL ALT_INV_shift_reg : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_Selector50~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL ALT_INV_address_b : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL ALT_INV_state_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL ALT_INV_holdCount : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_state_reg.hold~q\ : std_logic;
SIGNAL \ALT_INV_holdC~q\ : std_logic;
SIGNAL \ALT_INV_data_out_int~0_combout\ : std_logic;
SIGNAL \ALT_INV_state_reg.shifty~q\ : std_logic;
SIGNAL \ALT_INV_state_reg.shiftx~q\ : std_logic;
SIGNAL \ALT_INV_Add1~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_address_a : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_clk1 <= clk1;
ww_clk2 <= clk2;
ww_rst <= rst;
ww_data_in_ready <= data_in_ready;
data_out_valid <= ww_data_out_valid;
ww_data_in <= data_in;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & \data_in[0]~input_o\);

\RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (gnd & \~GND~combout\ & gnd & \~GND~combout\ & gnd & \~GND~combout\ & gnd & \~GND~combout\ & gnd & \~GND~combout\ & gnd & \~GND~combout\ & gnd & \~GND~combout\ & gnd & 
\~GND~combout\);

\RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (address_a(7) & address_a(6) & address_a(5) & address_a(4) & address_a(3) & address_a(2) & address_a(1) & address_a(0));

\RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (address_b(4) & address_b(3) & address_b(2) & address_b(1) & address_b(0));

\RAM_2port|altsyncram_component|auto_generated|q_a\(0) <= \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\RAM_2port|altsyncram_component|auto_generated|q_b\(0) <= \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\RAM_2port|altsyncram_component|auto_generated|q_b\(1) <= \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\RAM_2port|altsyncram_component|auto_generated|q_b\(2) <= \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\RAM_2port|altsyncram_component|auto_generated|q_b\(3) <= \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\RAM_2port|altsyncram_component|auto_generated|q_b\(4) <= \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\RAM_2port|altsyncram_component|auto_generated|q_b\(5) <= \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\RAM_2port|altsyncram_component|auto_generated|q_b\(6) <= \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\RAM_2port|altsyncram_component|auto_generated|q_b\(7) <= \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\ALT_INV_state_reg.init~DUPLICATE_q\ <= NOT \state_reg.init~DUPLICATE_q\;
\ALT_INV_holdCount[24]~DUPLICATE_q\ <= NOT \holdCount[24]~DUPLICATE_q\;
\ALT_INV_holdCount[25]~DUPLICATE_q\ <= NOT \holdCount[25]~DUPLICATE_q\;
\ALT_INV_holdCount[30]~DUPLICATE_q\ <= NOT \holdCount[30]~DUPLICATE_q\;
\ALT_INV_holdCount[17]~DUPLICATE_q\ <= NOT \holdCount[17]~DUPLICATE_q\;
\ALT_INV_holdCount[18]~DUPLICATE_q\ <= NOT \holdCount[18]~DUPLICATE_q\;
\ALT_INV_holdCount[19]~DUPLICATE_q\ <= NOT \holdCount[19]~DUPLICATE_q\;
\ALT_INV_holdCount[10]~DUPLICATE_q\ <= NOT \holdCount[10]~DUPLICATE_q\;
\ALT_INV_holdCount[11]~DUPLICATE_q\ <= NOT \holdCount[11]~DUPLICATE_q\;
\ALT_INV_holdCount[12]~DUPLICATE_q\ <= NOT \holdCount[12]~DUPLICATE_q\;
\ALT_INV_holdCount[13]~DUPLICATE_q\ <= NOT \holdCount[13]~DUPLICATE_q\;
\ALT_INV_holdCount[20]~DUPLICATE_q\ <= NOT \holdCount[20]~DUPLICATE_q\;
\ALT_INV_state_reg.shifty~DUPLICATE_q\ <= NOT \state_reg.shifty~DUPLICATE_q\;
\ALT_INV_holdCount[1]~DUPLICATE_q\ <= NOT \holdCount[1]~DUPLICATE_q\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_address_b[0]~13_combout\ <= NOT \address_b[0]~13_combout\;
\ALT_INV_address_b[1]~11_combout\ <= NOT \address_b[1]~11_combout\;
\ALT_INV_address_b[2]~9_combout\ <= NOT \address_b[2]~9_combout\;
\ALT_INV_Add2~2_combout\ <= NOT \Add2~2_combout\;
\ALT_INV_address_b[2]~8_combout\ <= NOT \address_b[2]~8_combout\;
\ALT_INV_address_b[3]~6_combout\ <= NOT \address_b[3]~6_combout\;
\ALT_INV_Add2~1_combout\ <= NOT \Add2~1_combout\;
\ALT_INV_address_b[3]~5_combout\ <= NOT \address_b[3]~5_combout\;
\ALT_INV_address_b[4]~3_combout\ <= NOT \address_b[4]~3_combout\;
\ALT_INV_Add2~0_combout\ <= NOT \Add2~0_combout\;
\ALT_INV_Selector51~1_combout\ <= NOT \Selector51~1_combout\;
\ALT_INV_address_b[4]~2_combout\ <= NOT \address_b[4]~2_combout\;
\ALT_INV_address_b[2]~1_combout\ <= NOT \address_b[2]~1_combout\;
\ALT_INV_Selector50~2_combout\ <= NOT \Selector50~2_combout\;
\ALT_INV_process_1~4_combout\ <= NOT \process_1~4_combout\;
\ALT_INV_process_1~3_combout\ <= NOT \process_1~3_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_process_1~2_combout\ <= NOT \process_1~2_combout\;
\ALT_INV_process_1~1_combout\ <= NOT \process_1~1_combout\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_state_reg.addressb~q\ <= NOT \state_reg.addressb~q\;
\ALT_INV_address_b[2]~0_combout\ <= NOT \address_b[2]~0_combout\;
\ALT_INV_state_reg.idle~q\ <= NOT \state_reg.idle~q\;
\ALT_INV_state_reg.init~q\ <= NOT \state_reg.init~q\;
ALT_INV_shift_reg(2) <= NOT shift_reg(2);
\ALT_INV_Selector50~0_combout\ <= NOT \Selector50~0_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
ALT_INV_address_b(0) <= NOT address_b(0);
ALT_INV_address_b(1) <= NOT address_b(1);
ALT_INV_address_b(2) <= NOT address_b(2);
ALT_INV_address_b(3) <= NOT address_b(3);
ALT_INV_address_b(4) <= NOT address_b(4);
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_process_1~0_combout\ <= NOT \process_1~0_combout\;
ALT_INV_state_counter(0) <= NOT state_counter(0);
ALT_INV_state_counter(1) <= NOT state_counter(1);
ALT_INV_state_counter(2) <= NOT state_counter(2);
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
ALT_INV_holdCount(21) <= NOT holdCount(21);
ALT_INV_holdCount(22) <= NOT holdCount(22);
ALT_INV_holdCount(23) <= NOT holdCount(23);
ALT_INV_holdCount(24) <= NOT holdCount(24);
ALT_INV_holdCount(25) <= NOT holdCount(25);
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
ALT_INV_holdCount(26) <= NOT holdCount(26);
ALT_INV_holdCount(27) <= NOT holdCount(27);
ALT_INV_holdCount(28) <= NOT holdCount(28);
ALT_INV_holdCount(29) <= NOT holdCount(29);
ALT_INV_holdCount(30) <= NOT holdCount(30);
ALT_INV_holdCount(31) <= NOT holdCount(31);
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
ALT_INV_holdCount(14) <= NOT holdCount(14);
ALT_INV_holdCount(15) <= NOT holdCount(15);
ALT_INV_holdCount(16) <= NOT holdCount(16);
ALT_INV_holdCount(17) <= NOT holdCount(17);
ALT_INV_holdCount(18) <= NOT holdCount(18);
ALT_INV_holdCount(19) <= NOT holdCount(19);
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
ALT_INV_holdCount(8) <= NOT holdCount(8);
ALT_INV_holdCount(9) <= NOT holdCount(9);
ALT_INV_holdCount(10) <= NOT holdCount(10);
ALT_INV_holdCount(11) <= NOT holdCount(11);
ALT_INV_holdCount(12) <= NOT holdCount(12);
ALT_INV_holdCount(13) <= NOT holdCount(13);
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
ALT_INV_holdCount(2) <= NOT holdCount(2);
ALT_INV_holdCount(3) <= NOT holdCount(3);
ALT_INV_holdCount(4) <= NOT holdCount(4);
ALT_INV_holdCount(5) <= NOT holdCount(5);
ALT_INV_holdCount(6) <= NOT holdCount(6);
ALT_INV_holdCount(7) <= NOT holdCount(7);
ALT_INV_holdCount(20) <= NOT holdCount(20);
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_holdCount(0) <= NOT holdCount(0);
\ALT_INV_state_reg.hold~q\ <= NOT \state_reg.hold~q\;
\ALT_INV_holdC~q\ <= NOT \holdC~q\;
ALT_INV_shift_reg(5) <= NOT shift_reg(5);
\ALT_INV_data_out_int~0_combout\ <= NOT \data_out_int~0_combout\;
ALT_INV_shift_reg(0) <= NOT shift_reg(0);
ALT_INV_shift_reg(3) <= NOT shift_reg(3);
ALT_INV_shift_reg(4) <= NOT shift_reg(4);
ALT_INV_shift_reg(1) <= NOT shift_reg(1);
\ALT_INV_state_reg.shifty~q\ <= NOT \state_reg.shifty~q\;
\ALT_INV_state_reg.shiftx~q\ <= NOT \state_reg.shiftx~q\;
\ALT_INV_Add1~125_sumout\ <= NOT \Add1~125_sumout\;
\ALT_INV_Add1~121_sumout\ <= NOT \Add1~121_sumout\;
\ALT_INV_Add1~117_sumout\ <= NOT \Add1~117_sumout\;
\ALT_INV_Add1~113_sumout\ <= NOT \Add1~113_sumout\;
\ALT_INV_Add1~109_sumout\ <= NOT \Add1~109_sumout\;
\ALT_INV_Add1~105_sumout\ <= NOT \Add1~105_sumout\;
\ALT_INV_Add1~101_sumout\ <= NOT \Add1~101_sumout\;
\ALT_INV_Add1~97_sumout\ <= NOT \Add1~97_sumout\;
\ALT_INV_Add1~93_sumout\ <= NOT \Add1~93_sumout\;
\ALT_INV_Add1~89_sumout\ <= NOT \Add1~89_sumout\;
\ALT_INV_Add1~85_sumout\ <= NOT \Add1~85_sumout\;
\ALT_INV_Add1~81_sumout\ <= NOT \Add1~81_sumout\;
\ALT_INV_Add1~77_sumout\ <= NOT \Add1~77_sumout\;
\ALT_INV_Add1~73_sumout\ <= NOT \Add1~73_sumout\;
\ALT_INV_Add1~69_sumout\ <= NOT \Add1~69_sumout\;
\ALT_INV_Add1~65_sumout\ <= NOT \Add1~65_sumout\;
\ALT_INV_Add1~61_sumout\ <= NOT \Add1~61_sumout\;
\ALT_INV_Add1~57_sumout\ <= NOT \Add1~57_sumout\;
\ALT_INV_Add1~53_sumout\ <= NOT \Add1~53_sumout\;
\ALT_INV_Add1~49_sumout\ <= NOT \Add1~49_sumout\;
\ALT_INV_Add1~45_sumout\ <= NOT \Add1~45_sumout\;
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Mux0~4_combout\ <= NOT \Mux0~4_combout\;
\RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(7) <= NOT \RAM_2port|altsyncram_component|auto_generated|q_b\(7);
\RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(6) <= NOT \RAM_2port|altsyncram_component|auto_generated|q_b\(6);
\RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(5) <= NOT \RAM_2port|altsyncram_component|auto_generated|q_b\(5);
\RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(4) <= NOT \RAM_2port|altsyncram_component|auto_generated|q_b\(4);
\RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(3) <= NOT \RAM_2port|altsyncram_component|auto_generated|q_b\(3);
\RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(2) <= NOT \RAM_2port|altsyncram_component|auto_generated|q_b\(2);
\RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(1) <= NOT \RAM_2port|altsyncram_component|auto_generated|q_b\(1);
\RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(0) <= NOT \RAM_2port|altsyncram_component|auto_generated|q_b\(0);
ALT_INV_address_a(0) <= NOT address_a(0);
ALT_INV_address_a(1) <= NOT address_a(1);
ALT_INV_address_a(2) <= NOT address_a(2);
ALT_INV_address_a(3) <= NOT address_a(3);
ALT_INV_address_a(4) <= NOT address_a(4);
ALT_INV_address_a(5) <= NOT address_a(5);
ALT_INV_address_a(6) <= NOT address_a(6);
ALT_INV_address_a(7) <= NOT address_a(7);
ALT_INV_holdCount(1) <= NOT holdCount(1);
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X0_Y19_N5
\data_out_valid~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_valid_int~q\,
	devoe => ww_devoe,
	o => ww_data_out_valid);

-- Location: IOOBUF_X0_Y19_N22
\data_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_int~q\,
	devoe => ww_devoe,
	o => ww_data_out);

-- Location: IOIBUF_X54_Y18_N61
\clk2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk2,
	o => \clk2~input_o\);

-- Location: CLKCTRL_G10
\clk2~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk2~input_o\,
	outclk => \clk2~inputCLKENA0_outclk\);

-- Location: IOIBUF_X54_Y18_N44
\clk1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk1,
	o => \clk1~input_o\);

-- Location: CLKCTRL_G8
\clk1~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk1~input_o\,
	outclk => \clk1~inputCLKENA0_outclk\);

-- Location: LABCELL_X5_Y19_N0
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( address_a(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~30\ = CARRY(( address_a(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_address_a(0),
	cin => GND,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: IOIBUF_X0_Y18_N61
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LABCELL_X5_Y19_N48
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( address_a(4) & ( (address_a(5) & (address_a(2) & address_a(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_address_a(5),
	datac => ALT_INV_address_a(2),
	datad => ALT_INV_address_a(3),
	dataf => ALT_INV_address_a(4),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X5_Y19_N30
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \LessThan0~0_combout\ & ( (address_a(7) & (((address_a(1) & address_a(0))) # (address_a(6)))) ) ) # ( !\LessThan0~0_combout\ & ( (address_a(6) & address_a(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000111110000000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_address_a(1),
	datab => ALT_INV_address_a(0),
	datac => ALT_INV_address_a(6),
	datad => ALT_INV_address_a(7),
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: IOIBUF_X0_Y19_N38
\data_in_ready~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in_ready,
	o => \data_in_ready~input_o\);

-- Location: FF_X5_Y19_N2
\address_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(0));

-- Location: LABCELL_X5_Y19_N3
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( address_a(1) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( address_a(1) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_address_a(1),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X5_Y19_N5
\address_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(1));

-- Location: LABCELL_X5_Y19_N6
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( address_a(2) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( address_a(2) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_address_a(2),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X5_Y19_N8
\address_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(2));

-- Location: LABCELL_X5_Y19_N9
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( address_a(3) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( address_a(3) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_address_a(3),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X5_Y19_N11
\address_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(3));

-- Location: LABCELL_X5_Y19_N12
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( address_a(4) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( address_a(4) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_address_a(4),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X5_Y19_N14
\address_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(4));

-- Location: LABCELL_X5_Y19_N15
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( address_a(5) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( address_a(5) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_address_a(5),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X5_Y19_N17
\address_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(5));

-- Location: LABCELL_X5_Y19_N18
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( address_a(6) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( address_a(6) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_address_a(6),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X5_Y19_N20
\address_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(6));

-- Location: LABCELL_X5_Y19_N21
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( address_a(7) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_address_a(7),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\);

-- Location: FF_X5_Y19_N23
\address_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(7));

-- Location: LABCELL_X5_Y19_N51
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( address_a(6) & ( address_a(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_address_a(5),
	dataf => ALT_INV_address_a(6),
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X5_Y19_N33
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( !address_a(2) & ( (!address_a(1) & (!address_a(0) & (!address_a(4) & !address_a(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_address_a(1),
	datab => ALT_INV_address_a(0),
	datac => ALT_INV_address_a(4),
	datad => ALT_INV_address_a(3),
	dataf => ALT_INV_address_a(2),
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X2_Y19_N21
\state_reg.idle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_reg.idle~0_combout\ = ( \LessThan2~1_combout\ & ( (\state_reg.idle~q\) # (address_a(7)) ) ) # ( !\LessThan2~1_combout\ & ( ((\state_reg.idle~q\) # (\LessThan2~0_combout\)) # (address_a(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111011101111111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_address_a(7),
	datab => \ALT_INV_LessThan2~0_combout\,
	datad => \ALT_INV_state_reg.idle~q\,
	dataf => \ALT_INV_LessThan2~1_combout\,
	combout => \state_reg.idle~0_combout\);

-- Location: FF_X2_Y19_N23
\state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \state_reg.idle~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.idle~q\);

-- Location: LABCELL_X2_Y19_N33
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( !\state_reg.idle~q\ & ( \LessThan2~1_combout\ & ( address_a(7) ) ) ) # ( !\state_reg.idle~q\ & ( !\LessThan2~1_combout\ & ( (\LessThan2~0_combout\) # (address_a(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_address_a(7),
	datab => \ALT_INV_LessThan2~0_combout\,
	datae => \ALT_INV_state_reg.idle~q\,
	dataf => \ALT_INV_LessThan2~1_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X2_Y19_N34
\state_reg.addressb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.addressb~q\);

-- Location: LABCELL_X7_Y19_N3
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( !\state_reg.addressb~q\ & ( !\state_reg.init~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state_reg.addressb~q\,
	dataf => \ALT_INV_state_reg.init~DUPLICATE_q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X6_Y19_N58
\state_reg.shifty~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	asdata => \state_reg.shiftx~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.shifty~DUPLICATE_q\);

-- Location: MLABCELL_X9_Y18_N36
\Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = ( \state_reg.hold~q\ & ( \Selector50~0_combout\ & ( (!\Equal0~6_combout\) # ((!\Selector1~0_combout\) # ((!\Equal0~0_combout\) # (\state_reg.shifty~DUPLICATE_q\))) ) ) ) # ( !\state_reg.hold~q\ & ( \Selector50~0_combout\ & ( 
-- (!\Selector1~0_combout\) # (\state_reg.shifty~DUPLICATE_q\) ) ) ) # ( \state_reg.hold~q\ & ( !\Selector50~0_combout\ & ( (!\Equal0~6_combout\) # ((!\Selector1~0_combout\) # (!\Equal0~0_combout\)) ) ) ) # ( !\state_reg.hold~q\ & ( !\Selector50~0_combout\ & 
-- ( !\Selector1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100111111111110111011001111110011111111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~6_combout\,
	datab => \ALT_INV_Selector1~0_combout\,
	datac => \ALT_INV_state_reg.shifty~DUPLICATE_q\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Selector50~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X9_Y18_N38
\state_reg.hold\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector1~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.hold~q\);

-- Location: LABCELL_X10_Y19_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( holdCount(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( holdCount(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_holdCount(0),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X10_Y19_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( holdCount(1) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( holdCount(1) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_holdCount(1),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: MLABCELL_X9_Y19_N21
\holdCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \holdCount~0_combout\ = (\Add1~5_sumout\ & ((!\Equal0~6_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000000000111111000000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~6_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Add1~5_sumout\,
	combout => \holdCount~0_combout\);

-- Location: FF_X9_Y18_N20
\state_reg.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \state_reg~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.init~q\);

-- Location: MLABCELL_X9_Y18_N54
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( \state_reg.init~q\ ) # ( !\state_reg.init~q\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_state_reg.init~q\,
	combout => \Selector11~0_combout\);

-- Location: FF_X9_Y19_N22
\holdCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \holdCount~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_state_reg.hold~q\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(1));

-- Location: LABCELL_X10_Y19_N6
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( holdCount(2) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~34\ = CARRY(( holdCount(2) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_holdCount(2),
	cin => \Add1~6\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: LABCELL_X12_Y19_N39
\Selector40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = ( \state_reg.hold~q\ & ( \Add1~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~33_sumout\,
	combout => \Selector40~0_combout\);

-- Location: FF_X10_Y19_N26
\holdCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	asdata => \Selector40~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(2));

-- Location: LABCELL_X10_Y19_N9
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( holdCount(3) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~30\ = CARRY(( holdCount(3) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_holdCount(3),
	cin => \Add1~34\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: LABCELL_X12_Y19_N6
\Selector39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = ( \state_reg.hold~q\ & ( \Add1~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~29_sumout\,
	combout => \Selector39~0_combout\);

-- Location: FF_X10_Y19_N38
\holdCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	asdata => \Selector39~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(3));

-- Location: LABCELL_X10_Y19_N12
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( holdCount(4) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( holdCount(4) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_holdCount(4),
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: LABCELL_X12_Y19_N3
\Selector38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = ( \state_reg.hold~q\ & ( \Add1~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~25_sumout\,
	combout => \Selector38~0_combout\);

-- Location: FF_X10_Y19_N23
\holdCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	asdata => \Selector38~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(4));

-- Location: LABCELL_X10_Y19_N15
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( holdCount(5) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( holdCount(5) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_holdCount(5),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: MLABCELL_X9_Y19_N54
\Selector37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = ( \Add1~21_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~21_sumout\,
	combout => \Selector37~0_combout\);

-- Location: FF_X10_Y19_N29
\holdCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	asdata => \Selector37~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(5));

-- Location: LABCELL_X10_Y19_N18
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( holdCount(6) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~18\ = CARRY(( holdCount(6) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_holdCount(6),
	cin => \Add1~22\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: MLABCELL_X9_Y19_N36
\Selector36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = ( \Add1~17_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~17_sumout\,
	combout => \Selector36~0_combout\);

-- Location: FF_X10_Y19_N35
\holdCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	asdata => \Selector36~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(6));

-- Location: LABCELL_X10_Y19_N21
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( holdCount(7) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~14\ = CARRY(( holdCount(7) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_holdCount(7),
	cin => \Add1~18\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: MLABCELL_X9_Y19_N15
\Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = ( \Add1~13_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~13_sumout\,
	combout => \Selector35~0_combout\);

-- Location: FF_X10_Y19_N2
\holdCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	asdata => \Selector35~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(7));

-- Location: LABCELL_X10_Y19_N24
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( holdCount(8) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~58\ = CARRY(( holdCount(8) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_holdCount(8),
	cin => \Add1~14\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: MLABCELL_X9_Y19_N18
\Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = ( \Add1~57_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~57_sumout\,
	combout => \Selector34~0_combout\);

-- Location: FF_X10_Y19_N11
\holdCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	asdata => \Selector34~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(8));

-- Location: LABCELL_X10_Y19_N27
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( holdCount(9) ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~54\ = CARRY(( holdCount(9) ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_holdCount(9),
	cin => \Add1~58\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: MLABCELL_X9_Y19_N24
\Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = ( \Add1~53_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~53_sumout\,
	combout => \Selector33~0_combout\);

-- Location: FF_X10_Y19_N17
\holdCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	asdata => \Selector33~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(9));

-- Location: LABCELL_X10_Y19_N30
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \holdCount[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( \holdCount[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_holdCount[10]~DUPLICATE_q\,
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: MLABCELL_X9_Y19_N30
\Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = ( \Add1~49_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~49_sumout\,
	combout => \Selector32~0_combout\);

-- Location: FF_X9_Y19_N31
\holdCount[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector32~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \holdCount[10]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y19_N33
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \holdCount[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~46\ = CARRY(( \holdCount[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_holdCount[11]~DUPLICATE_q\,
	cin => \Add1~50\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: MLABCELL_X9_Y19_N57
\Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = ( \Add1~45_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~45_sumout\,
	combout => \Selector31~0_combout\);

-- Location: FF_X9_Y19_N58
\holdCount[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector31~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \holdCount[11]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y19_N36
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \holdCount[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~42\ = CARRY(( \holdCount[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_holdCount[12]~DUPLICATE_q\,
	cin => \Add1~46\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: MLABCELL_X9_Y19_N27
\Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\state_reg.hold~q\ & \Add1~41_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	datad => \ALT_INV_Add1~41_sumout\,
	combout => \Selector30~0_combout\);

-- Location: FF_X9_Y19_N28
\holdCount[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector30~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \holdCount[12]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y19_N39
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \holdCount[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~38\ = CARRY(( \holdCount[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_holdCount[13]~DUPLICATE_q\,
	cin => \Add1~42\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: MLABCELL_X9_Y19_N33
\Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = ( \Add1~37_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~37_sumout\,
	combout => \Selector29~0_combout\);

-- Location: FF_X9_Y19_N34
\holdCount[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector29~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \holdCount[13]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y19_N42
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( holdCount(14) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~82\ = CARRY(( holdCount(14) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_holdCount(14),
	cin => \Add1~38\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: MLABCELL_X9_Y19_N12
\Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = ( \Add1~81_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~81_sumout\,
	combout => \Selector28~0_combout\);

-- Location: FF_X9_Y19_N13
\holdCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector28~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(14));

-- Location: LABCELL_X10_Y19_N45
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( holdCount(15) ) + ( GND ) + ( \Add1~82\ ))
-- \Add1~78\ = CARRY(( holdCount(15) ) + ( GND ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_holdCount(15),
	cin => \Add1~82\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: MLABCELL_X9_Y19_N45
\Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = ( \Add1~77_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~77_sumout\,
	combout => \Selector27~0_combout\);

-- Location: FF_X9_Y19_N46
\holdCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector27~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(15));

-- Location: LABCELL_X10_Y19_N48
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( holdCount(16) ) + ( GND ) + ( \Add1~78\ ))
-- \Add1~74\ = CARRY(( holdCount(16) ) + ( GND ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_holdCount(16),
	cin => \Add1~78\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: MLABCELL_X9_Y19_N39
\Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = ( \Add1~73_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~73_sumout\,
	combout => \Selector26~0_combout\);

-- Location: FF_X9_Y19_N40
\holdCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector26~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(16));

-- Location: LABCELL_X10_Y19_N51
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( \holdCount[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~74\ ))
-- \Add1~70\ = CARRY(( \holdCount[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_holdCount[17]~DUPLICATE_q\,
	cin => \Add1~74\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: MLABCELL_X9_Y19_N42
\Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = ( \Add1~69_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~69_sumout\,
	combout => \Selector25~0_combout\);

-- Location: FF_X9_Y19_N43
\holdCount[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector25~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \holdCount[17]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y19_N54
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( \holdCount[18]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~70\ ))
-- \Add1~66\ = CARRY(( \holdCount[18]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_holdCount[18]~DUPLICATE_q\,
	cin => \Add1~70\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: MLABCELL_X9_Y19_N3
\Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\state_reg.hold~q\ & \Add1~65_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	datad => \ALT_INV_Add1~65_sumout\,
	combout => \Selector24~0_combout\);

-- Location: FF_X9_Y19_N4
\holdCount[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector24~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \holdCount[18]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y19_N57
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \holdCount[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~62\ = CARRY(( \holdCount[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_holdCount[19]~DUPLICATE_q\,
	cin => \Add1~66\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: MLABCELL_X9_Y19_N0
\Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = ( \Add1~61_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~61_sumout\,
	combout => \Selector23~0_combout\);

-- Location: FF_X9_Y19_N1
\holdCount[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector23~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \holdCount[19]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y18_N0
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \holdCount[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~62\ ))
-- \Add1~10\ = CARRY(( \holdCount[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_holdCount[20]~DUPLICATE_q\,
	cin => \Add1~62\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: MLABCELL_X9_Y18_N51
\Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = ( \Add1~9_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~9_sumout\,
	combout => \Selector22~0_combout\);

-- Location: FF_X9_Y18_N52
\holdCount[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector22~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \holdCount[20]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y18_N3
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( holdCount(21) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~126\ = CARRY(( holdCount(21) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_holdCount(21),
	cin => \Add1~10\,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

-- Location: MLABCELL_X9_Y18_N12
\Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = ( \Add1~125_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add1~125_sumout\,
	dataf => \ALT_INV_state_reg.hold~q\,
	combout => \Selector21~0_combout\);

-- Location: FF_X9_Y18_N13
\holdCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector21~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(21));

-- Location: LABCELL_X10_Y18_N6
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( holdCount(22) ) + ( GND ) + ( \Add1~126\ ))
-- \Add1~122\ = CARRY(( holdCount(22) ) + ( GND ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_holdCount(22),
	cin => \Add1~126\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: MLABCELL_X9_Y18_N6
\Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = ( \Add1~121_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add1~121_sumout\,
	dataf => \ALT_INV_state_reg.hold~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X9_Y18_N7
\holdCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector20~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(22));

-- Location: LABCELL_X10_Y18_N9
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( holdCount(23) ) + ( GND ) + ( \Add1~122\ ))
-- \Add1~118\ = CARRY(( holdCount(23) ) + ( GND ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_holdCount(23),
	cin => \Add1~122\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: MLABCELL_X9_Y18_N48
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( \Add1~117_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~117_sumout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X9_Y18_N49
\holdCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector19~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(23));

-- Location: LABCELL_X10_Y18_N12
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( \holdCount[24]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~118\ ))
-- \Add1~114\ = CARRY(( \holdCount[24]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_holdCount[24]~DUPLICATE_q\,
	cin => \Add1~118\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: LABCELL_X10_Y18_N57
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( \Add1~113_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~113_sumout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X10_Y18_N59
\holdCount[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector18~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \holdCount[24]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y18_N15
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( \holdCount[25]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~114\ ))
-- \Add1~110\ = CARRY(( \holdCount[25]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_holdCount[25]~DUPLICATE_q\,
	cin => \Add1~114\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: LABCELL_X10_Y18_N54
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \Add1~109_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~109_sumout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X10_Y18_N56
\holdCount[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector17~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \holdCount[25]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y18_N18
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( holdCount(26) ) + ( GND ) + ( \Add1~110\ ))
-- \Add1~106\ = CARRY(( holdCount(26) ) + ( GND ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_holdCount(26),
	cin => \Add1~110\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: LABCELL_X10_Y18_N51
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( \Add1~105_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~105_sumout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X10_Y18_N53
\holdCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector16~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(26));

-- Location: LABCELL_X10_Y18_N21
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( holdCount(27) ) + ( GND ) + ( \Add1~106\ ))
-- \Add1~102\ = CARRY(( holdCount(27) ) + ( GND ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_holdCount(27),
	cin => \Add1~106\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: LABCELL_X10_Y18_N48
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( \Add1~101_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~101_sumout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X10_Y18_N49
\holdCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector15~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(27));

-- Location: LABCELL_X10_Y18_N24
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( holdCount(28) ) + ( GND ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( holdCount(28) ) + ( GND ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_holdCount(28),
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: LABCELL_X10_Y18_N45
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( \Add1~97_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~97_sumout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X10_Y18_N47
\holdCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector14~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(28));

-- Location: LABCELL_X10_Y18_N27
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( holdCount(29) ) + ( GND ) + ( \Add1~98\ ))
-- \Add1~94\ = CARRY(( holdCount(29) ) + ( GND ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_holdCount(29),
	cin => \Add1~98\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: LABCELL_X10_Y18_N42
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( \Add1~93_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~93_sumout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X10_Y18_N44
\holdCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector13~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(29));

-- Location: LABCELL_X10_Y18_N30
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( \holdCount[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~94\ ))
-- \Add1~90\ = CARRY(( \holdCount[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_holdCount[30]~DUPLICATE_q\,
	cin => \Add1~94\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: LABCELL_X10_Y18_N39
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( \Add1~89_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~89_sumout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X10_Y18_N41
\holdCount[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector12~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \holdCount[30]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y18_N33
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( holdCount(31) ) + ( GND ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_holdCount(31),
	cin => \Add1~90\,
	sumout => \Add1~85_sumout\);

-- Location: LABCELL_X10_Y18_N36
\Selector11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = ( \Add1~85_sumout\ & ( \state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~85_sumout\,
	combout => \Selector11~1_combout\);

-- Location: FF_X10_Y18_N38
\holdCount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector11~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(31));

-- Location: FF_X10_Y18_N40
\holdCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector12~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(30));

-- Location: MLABCELL_X9_Y18_N0
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !holdCount(27) & ( !holdCount(26) & ( (!holdCount(28) & (!holdCount(31) & (!holdCount(29) & !holdCount(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_holdCount(28),
	datab => ALT_INV_holdCount(31),
	datac => ALT_INV_holdCount(29),
	datad => ALT_INV_holdCount(30),
	datae => ALT_INV_holdCount(27),
	dataf => ALT_INV_holdCount(26),
	combout => \Equal0~4_combout\);

-- Location: FF_X10_Y18_N58
\holdCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector18~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(24));

-- Location: FF_X10_Y18_N55
\holdCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector17~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(25));

-- Location: MLABCELL_X9_Y18_N57
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !holdCount(25) & ( (!holdCount(24) & (!holdCount(21) & (!holdCount(23) & !holdCount(22)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_holdCount(24),
	datab => ALT_INV_holdCount(21),
	datac => ALT_INV_holdCount(23),
	datad => ALT_INV_holdCount(22),
	dataf => ALT_INV_holdCount(25),
	combout => \Equal0~5_combout\);

-- Location: FF_X9_Y19_N5
\holdCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector24~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(18));

-- Location: FF_X9_Y19_N2
\holdCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector23~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(19));

-- Location: FF_X9_Y19_N44
\holdCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector25~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(17));

-- Location: MLABCELL_X9_Y19_N6
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !holdCount(16) & ( !holdCount(17) & ( (!holdCount(18) & (!holdCount(15) & (!holdCount(19) & !holdCount(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_holdCount(18),
	datab => ALT_INV_holdCount(15),
	datac => ALT_INV_holdCount(19),
	datad => ALT_INV_holdCount(14),
	datae => ALT_INV_holdCount(16),
	dataf => ALT_INV_holdCount(17),
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X9_Y18_N45
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !holdCount(4) & ( !holdCount(5) & ( (!holdCount(2) & (!holdCount(3) & (!holdCount(6) & !holdCount(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_holdCount(2),
	datab => ALT_INV_holdCount(3),
	datac => ALT_INV_holdCount(6),
	datad => ALT_INV_holdCount(7),
	datae => ALT_INV_holdCount(4),
	dataf => ALT_INV_holdCount(5),
	combout => \Equal0~1_combout\);

-- Location: FF_X9_Y19_N32
\holdCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector32~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(10));

-- Location: FF_X9_Y19_N59
\holdCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector31~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(11));

-- Location: FF_X9_Y19_N29
\holdCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector30~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(12));

-- Location: FF_X9_Y19_N35
\holdCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector29~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(13));

-- Location: MLABCELL_X9_Y19_N48
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !holdCount(12) & ( !holdCount(13) & ( (!holdCount(8) & (!holdCount(10) & (!holdCount(9) & !holdCount(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_holdCount(8),
	datab => ALT_INV_holdCount(10),
	datac => ALT_INV_holdCount(9),
	datad => ALT_INV_holdCount(11),
	datae => ALT_INV_holdCount(12),
	dataf => ALT_INV_holdCount(13),
	combout => \Equal0~2_combout\);

-- Location: FF_X9_Y18_N53
\holdCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector22~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(20));

-- Location: MLABCELL_X9_Y18_N24
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~2_combout\ & ( !holdCount(20) & ( (\Equal0~4_combout\ & (\Equal0~5_combout\ & (\Equal0~3_combout\ & \Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => ALT_INV_holdCount(20),
	combout => \Equal0~6_combout\);

-- Location: MLABCELL_X9_Y18_N21
\Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = ( \Add1~1_sumout\ & ( \state_reg.hold~q\ ) ) # ( !\Add1~1_sumout\ & ( (\Equal0~6_combout\ & (\Equal0~0_combout\ & \state_reg.hold~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~6_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Add1~1_sumout\,
	combout => \Selector42~0_combout\);

-- Location: FF_X10_Y19_N8
\holdCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	asdata => \Selector42~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => holdCount(0));

-- Location: FF_X9_Y19_N23
\holdCount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \holdCount~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_state_reg.hold~q\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \holdCount[1]~DUPLICATE_q\);

-- Location: MLABCELL_X9_Y18_N30
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( holdCount(0) & ( !\holdCount[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_holdCount(0),
	dataf => \ALT_INV_holdCount[1]~DUPLICATE_q\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X2_Y19_N18
\address_b[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_b[2]~0_combout\ = ( !\state_reg.hold~q\ & ( \state_reg.idle~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state_reg.idle~q\,
	dataf => \ALT_INV_state_reg.hold~q\,
	combout => \address_b[2]~0_combout\);

-- Location: LABCELL_X6_Y19_N42
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \holdC~q\ & ( \state_reg.shifty~DUPLICATE_q\ & ( (!\Selector50~0_combout\) # (((!\address_b[2]~0_combout\) # (\state_reg.shiftx~q\)) # (\state_reg.init~DUPLICATE_q\)) ) ) ) # ( !\holdC~q\ & ( \state_reg.shifty~DUPLICATE_q\ & ( 
-- \state_reg.init~DUPLICATE_q\ ) ) ) # ( \holdC~q\ & ( !\state_reg.shifty~DUPLICATE_q\ & ( ((!\address_b[2]~0_combout\) # (\state_reg.shiftx~q\)) # (\state_reg.init~DUPLICATE_q\) ) ) ) # ( !\holdC~q\ & ( !\state_reg.shifty~DUPLICATE_q\ & ( 
-- \state_reg.init~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111110011111100110011001100111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector50~0_combout\,
	datab => \ALT_INV_state_reg.init~DUPLICATE_q\,
	datac => \ALT_INV_state_reg.shiftx~q\,
	datad => \ALT_INV_address_b[2]~0_combout\,
	datae => \ALT_INV_holdC~q\,
	dataf => \ALT_INV_state_reg.shifty~DUPLICATE_q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X6_Y19_N44
holdC : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \holdC~q\);

-- Location: MLABCELL_X9_Y18_N18
\state_reg~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_reg~16_combout\ = ( \Equal0~6_combout\ & ( (\Equal0~0_combout\ & (!\holdC~q\ & \state_reg.hold~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_holdC~q\,
	datad => \ALT_INV_state_reg.hold~q\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \state_reg~16_combout\);

-- Location: FF_X9_Y18_N19
\state_reg.init~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \state_reg~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.init~DUPLICATE_q\);

-- Location: FF_X6_Y19_N59
\state_reg.shifty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	asdata => \state_reg.shiftx~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.shifty~q\);

-- Location: LABCELL_X6_Y19_N9
\Selector51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = ( \Selector50~0_combout\ & ( ((!\state_reg.init~DUPLICATE_q\ & state_counter(0))) # (\state_reg.shifty~q\) ) ) # ( !\Selector50~0_combout\ & ( (!\state_reg.shifty~q\ & (!\state_reg.init~DUPLICATE_q\ & state_counter(0))) # 
-- (\state_reg.shifty~q\ & ((!state_counter(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000000000011111100000000001111110011110000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state_reg.init~DUPLICATE_q\,
	datac => \ALT_INV_state_reg.shifty~q\,
	datad => ALT_INV_state_counter(0),
	dataf => \ALT_INV_Selector50~0_combout\,
	combout => \Selector51~0_combout\);

-- Location: FF_X6_Y19_N11
\state_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector51~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_counter(0));

-- Location: LABCELL_X6_Y19_N51
\Selector50~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector50~1_combout\ = ( \state_reg.shifty~DUPLICATE_q\ & ( !state_counter(1) $ (((!state_counter(0)) # (\Selector50~0_combout\))) ) ) # ( !\state_reg.shifty~DUPLICATE_q\ & ( (!\state_reg.init~DUPLICATE_q\ & state_counter(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000110000110011110011000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.init~DUPLICATE_q\,
	datab => ALT_INV_state_counter(0),
	datac => \ALT_INV_Selector50~0_combout\,
	datad => ALT_INV_state_counter(1),
	dataf => \ALT_INV_state_reg.shifty~DUPLICATE_q\,
	combout => \Selector50~1_combout\);

-- Location: FF_X6_Y19_N53
\state_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector50~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_counter(1));

-- Location: LABCELL_X5_Y19_N54
\address_b[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_b[3]~5_combout\ = ( \LessThan2~0_combout\ & ( address_a(7) & ( (!\state_reg.shifty~DUPLICATE_q\ & ((!\state_reg.init~DUPLICATE_q\) # (\Equal1~0_combout\))) ) ) ) # ( !\LessThan2~0_combout\ & ( address_a(7) & ( (!\state_reg.shifty~DUPLICATE_q\ & 
-- ((!\state_reg.init~DUPLICATE_q\) # (\Equal1~0_combout\))) ) ) ) # ( \LessThan2~0_combout\ & ( !address_a(7) & ( (!\state_reg.shifty~DUPLICATE_q\ & ((!\state_reg.init~DUPLICATE_q\) # (\Equal1~0_combout\))) ) ) ) # ( !\LessThan2~0_combout\ & ( !address_a(7) 
-- & ( (!\Equal1~0_combout\ & (((!\state_reg.shifty~DUPLICATE_q\ & !\state_reg.init~DUPLICATE_q\)))) # (\Equal1~0_combout\ & (((!\state_reg.shifty~DUPLICATE_q\)) # (\process_1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000100110001111100000011000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_state_reg.shifty~DUPLICATE_q\,
	datad => \ALT_INV_state_reg.init~DUPLICATE_q\,
	datae => \ALT_INV_LessThan2~0_combout\,
	dataf => ALT_INV_address_a(7),
	combout => \address_b[3]~5_combout\);

-- Location: MLABCELL_X4_Y19_N15
\address_b[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_b[2]~1_combout\ = ( \state_reg.init~DUPLICATE_q\ & ( (!\state_reg.shiftx~q\ & ((\Equal2~0_combout\) # (\Equal1~0_combout\))) ) ) # ( !\state_reg.init~DUPLICATE_q\ & ( (!\state_reg.shiftx~q\) # ((!\Equal1~0_combout\ & (\process_1~0_combout\ & 
-- !\Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100100000111111110010000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_process_1~0_combout\,
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_state_reg.shiftx~q\,
	dataf => \ALT_INV_state_reg.init~DUPLICATE_q\,
	combout => \address_b[2]~1_combout\);

-- Location: LABCELL_X2_Y19_N27
\address_b[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_b[0]~13_combout\ = ( !address_b(0) & ( \state_reg.init~DUPLICATE_q\ & ( \state_reg.shiftx~q\ ) ) ) # ( address_b(0) & ( !\state_reg.init~DUPLICATE_q\ & ( !\state_reg.shiftx~q\ ) ) ) # ( !address_b(0) & ( !\state_reg.init~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100001111000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state_reg.shiftx~q\,
	datae => ALT_INV_address_b(0),
	dataf => \ALT_INV_state_reg.init~DUPLICATE_q\,
	combout => \address_b[0]~13_combout\);

-- Location: MLABCELL_X4_Y19_N45
\address_b[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_b[0]~14_combout\ = ( address_b(0) & ( \address_b[0]~13_combout\ ) ) # ( !address_b(0) & ( \address_b[0]~13_combout\ & ( (\address_b[2]~1_combout\ & (\address_b[2]~0_combout\ & ((!\state_reg.shifty~DUPLICATE_q\) # (\Selector50~0_combout\)))) ) ) ) 
-- # ( address_b(0) & ( !\address_b[0]~13_combout\ & ( (!\address_b[2]~1_combout\) # ((!\address_b[2]~0_combout\) # ((\state_reg.shifty~DUPLICATE_q\ & !\Selector50~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111101110000000000001000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.shifty~DUPLICATE_q\,
	datab => \ALT_INV_address_b[2]~1_combout\,
	datac => \ALT_INV_Selector50~0_combout\,
	datad => \ALT_INV_address_b[2]~0_combout\,
	datae => ALT_INV_address_b(0),
	dataf => \ALT_INV_address_b[0]~13_combout\,
	combout => \address_b[0]~14_combout\);

-- Location: FF_X4_Y19_N47
\address_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \address_b[0]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_b(0));

-- Location: LABCELL_X2_Y19_N48
\address_b[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_b[1]~11_combout\ = ( address_b(0) & ( \state_reg.init~DUPLICATE_q\ & ( (!address_b(1) & \state_reg.shiftx~q\) ) ) ) # ( !address_b(0) & ( \state_reg.init~DUPLICATE_q\ & ( (address_b(1) & \state_reg.shiftx~q\) ) ) ) # ( address_b(0) & ( 
-- !\state_reg.init~DUPLICATE_q\ & ( (!address_b(1)) # (!\state_reg.shiftx~q\) ) ) ) # ( !address_b(0) & ( !\state_reg.init~DUPLICATE_q\ & ( (!\state_reg.shiftx~q\) # (address_b(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111111111000000000000000011110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_address_b(1),
	datad => \ALT_INV_state_reg.shiftx~q\,
	datae => ALT_INV_address_b(0),
	dataf => \ALT_INV_state_reg.init~DUPLICATE_q\,
	combout => \address_b[1]~11_combout\);

-- Location: MLABCELL_X4_Y19_N42
\address_b[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_b[1]~12_combout\ = ( address_b(1) & ( \address_b[1]~11_combout\ ) ) # ( !address_b(1) & ( \address_b[1]~11_combout\ & ( (\address_b[2]~1_combout\ & (\address_b[2]~0_combout\ & ((!\state_reg.shifty~DUPLICATE_q\) # (\Selector50~0_combout\)))) ) ) ) 
-- # ( address_b(1) & ( !\address_b[1]~11_combout\ & ( (!\address_b[2]~1_combout\) # ((!\address_b[2]~0_combout\) # ((\state_reg.shifty~DUPLICATE_q\ & !\Selector50~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111011111110000000010000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.shifty~DUPLICATE_q\,
	datab => \ALT_INV_address_b[2]~1_combout\,
	datac => \ALT_INV_address_b[2]~0_combout\,
	datad => \ALT_INV_Selector50~0_combout\,
	datae => ALT_INV_address_b(1),
	dataf => \ALT_INV_address_b[1]~11_combout\,
	combout => \address_b[1]~12_combout\);

-- Location: FF_X4_Y19_N44
\address_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \address_b[1]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_b(1));

-- Location: LABCELL_X5_Y19_N42
\address_b[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_b[2]~8_combout\ = ( \LessThan2~0_combout\ & ( address_a(7) & ( (!\Equal1~0_combout\ & (!\state_reg.shifty~DUPLICATE_q\ & \state_reg.init~DUPLICATE_q\)) ) ) ) # ( !\LessThan2~0_combout\ & ( address_a(7) & ( (!\Equal1~0_combout\ & 
-- (!\state_reg.shifty~DUPLICATE_q\ & \state_reg.init~DUPLICATE_q\)) ) ) ) # ( \LessThan2~0_combout\ & ( !address_a(7) & ( (!\Equal1~0_combout\ & (!\state_reg.shifty~DUPLICATE_q\ & \state_reg.init~DUPLICATE_q\)) ) ) ) # ( !\LessThan2~0_combout\ & ( 
-- !address_a(7) & ( (!\Equal1~0_combout\ & (((!\state_reg.shifty~DUPLICATE_q\ & \state_reg.init~DUPLICATE_q\)))) # (\Equal1~0_combout\ & (\process_1~0_combout\ & (\state_reg.shifty~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001000000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_state_reg.shifty~DUPLICATE_q\,
	datad => \ALT_INV_state_reg.init~DUPLICATE_q\,
	datae => \ALT_INV_LessThan2~0_combout\,
	dataf => ALT_INV_address_a(7),
	combout => \address_b[2]~8_combout\);

-- Location: LABCELL_X7_Y19_N30
\Selector51~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector51~1_combout\ = ( !\state_reg.shifty~DUPLICATE_q\ & ( !\state_reg.init~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state_reg.shifty~DUPLICATE_q\,
	dataf => \ALT_INV_state_reg.init~DUPLICATE_q\,
	combout => \Selector51~1_combout\);

-- Location: LABCELL_X2_Y19_N42
\Add2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = ( address_b(2) & ( address_b(1) & ( !address_b(0) ) ) ) # ( !address_b(2) & ( address_b(1) & ( address_b(0) ) ) ) # ( address_b(2) & ( !address_b(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_address_b(0),
	datae => ALT_INV_address_b(2),
	dataf => ALT_INV_address_b(1),
	combout => \Add2~2_combout\);

-- Location: MLABCELL_X4_Y19_N33
\address_b[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_b[2]~9_combout\ = ( \Selector51~1_combout\ & ( \Add2~2_combout\ & ( ((!address_a(7) & ((!\LessThan2~0_combout\) # (\LessThan2~1_combout\)))) # (\state_reg.shiftx~q\) ) ) ) # ( \Selector51~1_combout\ & ( !\Add2~2_combout\ & ( (!address_a(7) & 
-- (!\state_reg.shiftx~q\ & ((!\LessThan2~0_combout\) # (\LessThan2~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000100000000000000000001011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_address_a(7),
	datab => \ALT_INV_state_reg.shiftx~q\,
	datac => \ALT_INV_LessThan2~0_combout\,
	datad => \ALT_INV_LessThan2~1_combout\,
	datae => \ALT_INV_Selector51~1_combout\,
	dataf => \ALT_INV_Add2~2_combout\,
	combout => \address_b[2]~9_combout\);

-- Location: MLABCELL_X4_Y19_N54
\address_b[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_b[2]~10_combout\ = ( address_b(2) & ( \address_b[2]~9_combout\ ) ) # ( !address_b(2) & ( \address_b[2]~9_combout\ & ( (\address_b[2]~0_combout\ & (!\Selector50~2_combout\ & \address_b[2]~1_combout\)) ) ) ) # ( address_b(2) & ( 
-- !\address_b[2]~9_combout\ & ( (!\address_b[2]~0_combout\) # (((!\address_b[2]~1_combout\) # (\Selector50~2_combout\)) # (\address_b[2]~8_combout\)) ) ) ) # ( !address_b(2) & ( !\address_b[2]~9_combout\ & ( (\address_b[2]~0_combout\ & 
-- (\address_b[2]~8_combout\ & (!\Selector50~2_combout\ & \address_b[2]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000111111111011111100000000010100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address_b[2]~0_combout\,
	datab => \ALT_INV_address_b[2]~8_combout\,
	datac => \ALT_INV_Selector50~2_combout\,
	datad => \ALT_INV_address_b[2]~1_combout\,
	datae => ALT_INV_address_b(2),
	dataf => \ALT_INV_address_b[2]~9_combout\,
	combout => \address_b[2]~10_combout\);

-- Location: FF_X4_Y19_N56
\address_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \address_b[2]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_b(2));

-- Location: LABCELL_X5_Y19_N24
\address_b[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_b[4]~2_combout\ = ( !address_a(5) & ( address_a(6) & ( (\state_reg.shifty~DUPLICATE_q\ & (\Equal1~0_combout\ & (\process_1~0_combout\ & !address_a(7)))) ) ) ) # ( address_a(5) & ( !address_a(6) & ( (\state_reg.shifty~DUPLICATE_q\ & 
-- (\Equal1~0_combout\ & (\process_1~0_combout\ & !address_a(7)))) ) ) ) # ( !address_a(5) & ( !address_a(6) & ( (\state_reg.shifty~DUPLICATE_q\ & (\Equal1~0_combout\ & (\process_1~0_combout\ & !address_a(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state_reg.shifty~DUPLICATE_q\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_process_1~0_combout\,
	datad => ALT_INV_address_a(7),
	datae => ALT_INV_address_a(5),
	dataf => ALT_INV_address_a(6),
	combout => \address_b[4]~2_combout\);

-- Location: LABCELL_X2_Y19_N15
\Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = ( address_b(0) & ( address_b(3) & ( !address_b(4) $ (((!address_b(2)) # (!address_b(1)))) ) ) ) # ( !address_b(0) & ( address_b(3) & ( address_b(4) ) ) ) # ( address_b(0) & ( !address_b(3) & ( address_b(4) ) ) ) # ( !address_b(0) & ( 
-- !address_b(3) & ( address_b(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_address_b(4),
	datac => ALT_INV_address_b(2),
	datad => ALT_INV_address_b(1),
	datae => ALT_INV_address_b(0),
	dataf => ALT_INV_address_b(3),
	combout => \Add2~0_combout\);

-- Location: MLABCELL_X4_Y19_N30
\address_b[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_b[4]~3_combout\ = ( \Selector51~1_combout\ & ( \Add2~0_combout\ & ( ((!address_a(7) & ((!\LessThan2~0_combout\) # (\LessThan2~1_combout\)))) # (\state_reg.shiftx~q\) ) ) ) # ( \Selector51~1_combout\ & ( !\Add2~0_combout\ & ( (!address_a(7) & 
-- (!\state_reg.shiftx~q\ & ((!\LessThan2~0_combout\) # (\LessThan2~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000000100000000000000000001011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_address_a(7),
	datab => \ALT_INV_state_reg.shiftx~q\,
	datac => \ALT_INV_LessThan2~1_combout\,
	datad => \ALT_INV_LessThan2~0_combout\,
	datae => \ALT_INV_Selector51~1_combout\,
	dataf => \ALT_INV_Add2~0_combout\,
	combout => \address_b[4]~3_combout\);

-- Location: MLABCELL_X4_Y19_N24
\address_b[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_b[4]~4_combout\ = ( address_b(4) & ( \address_b[4]~3_combout\ ) ) # ( !address_b(4) & ( \address_b[4]~3_combout\ & ( (!\Selector50~2_combout\ & (\address_b[2]~0_combout\ & \address_b[2]~1_combout\)) ) ) ) # ( address_b(4) & ( 
-- !\address_b[4]~3_combout\ & ( ((!\address_b[2]~0_combout\) # ((!\address_b[2]~1_combout\) # (\address_b[4]~2_combout\))) # (\Selector50~2_combout\) ) ) ) # ( !address_b(4) & ( !\address_b[4]~3_combout\ & ( (!\Selector50~2_combout\ & 
-- (\address_b[2]~0_combout\ & (\address_b[4]~2_combout\ & \address_b[2]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111111101111100000000001000101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector50~2_combout\,
	datab => \ALT_INV_address_b[2]~0_combout\,
	datac => \ALT_INV_address_b[4]~2_combout\,
	datad => \ALT_INV_address_b[2]~1_combout\,
	datae => ALT_INV_address_b(4),
	dataf => \ALT_INV_address_b[4]~3_combout\,
	combout => \address_b[4]~4_combout\);

-- Location: FF_X4_Y19_N26
\address_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \address_b[4]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_b(4));

-- Location: MLABCELL_X4_Y19_N48
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( address_b(4) & ( (address_b(0) & (address_b(1) & (!address_b(3) & address_b(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_address_b(0),
	datab => ALT_INV_address_b(1),
	datac => ALT_INV_address_b(3),
	datad => ALT_INV_address_b(2),
	dataf => ALT_INV_address_b(4),
	combout => \Equal2~0_combout\);

-- Location: MLABCELL_X4_Y19_N3
\process_1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = (\process_1~0_combout\ & \Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1~0_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	combout => \process_1~4_combout\);

-- Location: MLABCELL_X4_Y19_N12
\process_1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = ( address_a(6) & ( (\Equal1~0_combout\ & (\process_1~0_combout\ & (!address_a(5) & !address_a(7)))) ) ) # ( !address_a(6) & ( (\Equal1~0_combout\ & (\process_1~0_combout\ & !address_a(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_process_1~0_combout\,
	datac => ALT_INV_address_a(5),
	datad => ALT_INV_address_a(7),
	dataf => ALT_INV_address_a(6),
	combout => \process_1~3_combout\);

-- Location: MLABCELL_X4_Y19_N36
\Selector50~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector50~2_combout\ = ( \LessThan2~0_combout\ & ( \LessThan2~1_combout\ & ( (\state_reg.shifty~DUPLICATE_q\ & (!\process_1~3_combout\ & ((!\process_1~4_combout\) # (!address_a(7))))) ) ) ) # ( !\LessThan2~0_combout\ & ( \LessThan2~1_combout\ & ( 
-- (\state_reg.shifty~DUPLICATE_q\ & (!\process_1~3_combout\ & ((!\process_1~4_combout\) # (!address_a(7))))) ) ) ) # ( \LessThan2~0_combout\ & ( !\LessThan2~1_combout\ & ( (!\process_1~4_combout\ & (\state_reg.shifty~DUPLICATE_q\ & !\process_1~3_combout\)) 
-- ) ) ) # ( !\LessThan2~0_combout\ & ( !\LessThan2~1_combout\ & ( (\state_reg.shifty~DUPLICATE_q\ & (!\process_1~3_combout\ & ((!\process_1~4_combout\) # (!address_a(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000000000001000100000000000110010000000000011001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~4_combout\,
	datab => \ALT_INV_state_reg.shifty~DUPLICATE_q\,
	datac => ALT_INV_address_a(7),
	datad => \ALT_INV_process_1~3_combout\,
	datae => \ALT_INV_LessThan2~0_combout\,
	dataf => \ALT_INV_LessThan2~1_combout\,
	combout => \Selector50~2_combout\);

-- Location: MLABCELL_X4_Y19_N51
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = ( address_b(3) & ( (!address_b(1)) # ((!address_b(0)) # (!address_b(2))) ) ) # ( !address_b(3) & ( (address_b(1) & (address_b(0) & address_b(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111111111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_address_b(1),
	datac => ALT_INV_address_b(0),
	datad => ALT_INV_address_b(2),
	dataf => ALT_INV_address_b(3),
	combout => \Add2~1_combout\);

-- Location: MLABCELL_X4_Y19_N6
\address_b[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_b[3]~6_combout\ = ( \LessThan2~0_combout\ & ( \LessThan2~1_combout\ & ( (\Selector51~1_combout\ & ((!\state_reg.shiftx~q\ & (address_a(7))) # (\state_reg.shiftx~q\ & ((\Add2~1_combout\))))) ) ) ) # ( !\LessThan2~0_combout\ & ( 
-- \LessThan2~1_combout\ & ( (\Selector51~1_combout\ & ((!\state_reg.shiftx~q\ & (address_a(7))) # (\state_reg.shiftx~q\ & ((\Add2~1_combout\))))) ) ) ) # ( \LessThan2~0_combout\ & ( !\LessThan2~1_combout\ & ( (\Selector51~1_combout\ & 
-- ((!\state_reg.shiftx~q\) # (\Add2~1_combout\))) ) ) ) # ( !\LessThan2~0_combout\ & ( !\LessThan2~1_combout\ & ( (\Selector51~1_combout\ & ((!\state_reg.shiftx~q\ & (address_a(7))) # (\state_reg.shiftx~q\ & ((\Add2~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111000000001100111100000000010001110000000001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_address_a(7),
	datab => \ALT_INV_state_reg.shiftx~q\,
	datac => \ALT_INV_Add2~1_combout\,
	datad => \ALT_INV_Selector51~1_combout\,
	datae => \ALT_INV_LessThan2~0_combout\,
	dataf => \ALT_INV_LessThan2~1_combout\,
	combout => \address_b[3]~6_combout\);

-- Location: MLABCELL_X4_Y19_N18
\address_b[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_b[3]~7_combout\ = ( address_b(3) & ( \address_b[2]~1_combout\ & ( (!\address_b[2]~0_combout\) # ((!\address_b[3]~5_combout\) # ((\address_b[3]~6_combout\) # (\Selector50~2_combout\))) ) ) ) # ( !address_b(3) & ( \address_b[2]~1_combout\ & ( 
-- (\address_b[2]~0_combout\ & (!\Selector50~2_combout\ & ((!\address_b[3]~5_combout\) # (\address_b[3]~6_combout\)))) ) ) ) # ( address_b(3) & ( !\address_b[2]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101000000010100001110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address_b[2]~0_combout\,
	datab => \ALT_INV_address_b[3]~5_combout\,
	datac => \ALT_INV_Selector50~2_combout\,
	datad => \ALT_INV_address_b[3]~6_combout\,
	datae => ALT_INV_address_b(3),
	dataf => \ALT_INV_address_b[2]~1_combout\,
	combout => \address_b[3]~7_combout\);

-- Location: FF_X4_Y19_N20
\address_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \address_b[3]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_b(3));

-- Location: MLABCELL_X4_Y19_N0
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !address_b(4) & ( (address_b(3) & (address_b(1) & (!address_b(2) & address_b(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_address_b(3),
	datab => ALT_INV_address_b(1),
	datac => ALT_INV_address_b(2),
	datad => ALT_INV_address_b(0),
	dataf => ALT_INV_address_b(4),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X6_Y19_N6
\process_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = ( address_a(5) & ( (\Equal1~0_combout\ & (!address_a(6) & !address_a(7))) ) ) # ( !address_a(5) & ( (\Equal1~0_combout\ & !address_a(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datac => ALT_INV_address_a(6),
	datad => ALT_INV_address_a(7),
	dataf => ALT_INV_address_a(5),
	combout => \process_1~1_combout\);

-- Location: LABCELL_X6_Y19_N33
\process_1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = ( \LessThan2~0_combout\ & ( (\process_1~0_combout\ & (\Equal2~0_combout\ & ((!\LessThan2~1_combout\) # (address_a(7))))) ) ) # ( !\LessThan2~0_combout\ & ( (\process_1~0_combout\ & (\Equal2~0_combout\ & address_a(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010000000100010001000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~0_combout\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_LessThan2~1_combout\,
	datad => ALT_INV_address_a(7),
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \process_1~2_combout\);

-- Location: LABCELL_X6_Y19_N12
\Selector49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = ( !\state_reg.shifty~q\ & ( (((!\state_reg.init~DUPLICATE_q\ & (state_counter(2))))) ) ) # ( \state_reg.shifty~q\ & ( ((!state_counter(1) & (((state_counter(2))))) # (state_counter(1) & ((!state_counter(0) & ((state_counter(2)))) 
-- # (state_counter(0) & ((!state_counter(2)) # (\process_1~1_combout\)))))) # (\process_1~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011110000000001011111101100000000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state_counter(1),
	datab => \ALT_INV_process_1~1_combout\,
	datac => ALT_INV_state_counter(0),
	datad => ALT_INV_state_counter(2),
	datae => \ALT_INV_state_reg.shifty~q\,
	dataf => \ALT_INV_process_1~2_combout\,
	datag => \ALT_INV_state_reg.init~DUPLICATE_q\,
	combout => \Selector49~0_combout\);

-- Location: FF_X6_Y19_N14
\state_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector49~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state_counter(2));

-- Location: LABCELL_X6_Y19_N48
\process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = ( state_counter(2) & ( (state_counter(0) & state_counter(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_state_counter(0),
	datac => ALT_INV_state_counter(1),
	dataf => ALT_INV_state_counter(2),
	combout => \process_1~0_combout\);

-- Location: LABCELL_X5_Y19_N36
\Selector50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = ( \LessThan2~0_combout\ & ( \LessThan2~1_combout\ & ( (\process_1~0_combout\ & (\Equal2~0_combout\ & address_a(7))) ) ) ) # ( !\LessThan2~0_combout\ & ( \LessThan2~1_combout\ & ( (\process_1~0_combout\ & ((!address_a(7) & 
-- ((\Equal1~0_combout\))) # (address_a(7) & (\Equal2~0_combout\)))) ) ) ) # ( \LessThan2~0_combout\ & ( !\LessThan2~1_combout\ & ( (\process_1~0_combout\ & \Equal2~0_combout\) ) ) ) # ( !\LessThan2~0_combout\ & ( !\LessThan2~1_combout\ & ( 
-- (\process_1~0_combout\ & ((!address_a(7) & ((\Equal1~0_combout\))) # (address_a(7) & (\Equal2~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000100010001000100000001010100010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~0_combout\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => ALT_INV_address_a(7),
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_LessThan2~0_combout\,
	dataf => \ALT_INV_LessThan2~1_combout\,
	combout => \Selector50~0_combout\);

-- Location: LABCELL_X6_Y19_N54
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \Equal0~0_combout\ & ( \state_reg.shifty~DUPLICATE_q\ & ( (!\Selector50~0_combout\) # ((\state_reg.hold~q\ & (\Equal0~6_combout\ & \holdC~q\))) ) ) ) # ( !\Equal0~0_combout\ & ( \state_reg.shifty~DUPLICATE_q\ & ( 
-- !\Selector50~0_combout\ ) ) ) # ( \Equal0~0_combout\ & ( !\state_reg.shifty~DUPLICATE_q\ & ( (\state_reg.hold~q\ & (\Equal0~6_combout\ & \holdC~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001110101010101010101010101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector50~0_combout\,
	datab => \ALT_INV_state_reg.hold~q\,
	datac => \ALT_INV_Equal0~6_combout\,
	datad => \ALT_INV_holdC~q\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_state_reg.shifty~DUPLICATE_q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X6_Y19_N56
\state_reg.shiftx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.shiftx~q\);

-- Location: LABCELL_X6_Y19_N30
\data_out_valid_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_out_valid_int~0_combout\ = ( \state_reg.shifty~DUPLICATE_q\ ) # ( !\state_reg.shifty~DUPLICATE_q\ & ( \state_reg.shiftx~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_state_reg.shiftx~q\,
	dataf => \ALT_INV_state_reg.shifty~DUPLICATE_q\,
	combout => \data_out_valid_int~0_combout\);

-- Location: FF_X6_Y19_N31
data_out_valid_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \data_out_valid_int~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_valid_int~q\);

-- Location: FF_X2_Y19_N55
wren_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputCLKENA0_outclk\,
	asdata => \data_in_ready~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wren_a~q\);

-- Location: IOIBUF_X0_Y19_N55
\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LABCELL_X2_Y19_N36
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: M10K_X3_Y19_N0
\RAM_2port|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "dpr:RAM_2port|altsyncram:altsyncram_component|altsyncram_4404:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock1",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 192,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 16,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 24,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren_a~q\,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \clk1~inputCLKENA0_outclk\,
	clk1 => \clk2~inputCLKENA0_outclk\,
	portadatain => \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X6_Y19_N21
\Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = ( !state_counter(1) & ( ((!state_counter(2) & ((!state_counter(0) & (\RAM_2port|altsyncram_component|auto_generated|q_b\(0))) # (state_counter(0) & ((\RAM_2port|altsyncram_component|auto_generated|q_b\(1)))))) # (state_counter(2) & 
-- (((state_counter(0)))))) ) ) # ( state_counter(1) & ( (!state_counter(2) & ((!state_counter(0) & (((\RAM_2port|altsyncram_component|auto_generated|q_b\(2))))) # (state_counter(0) & (\RAM_2port|altsyncram_component|auto_generated|q_b\(3))))) # 
-- (state_counter(2) & ((((state_counter(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000110011000011000111011100001100111111110000110001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	datab => ALT_INV_state_counter(2),
	datac => \RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	datad => ALT_INV_state_counter(0),
	datae => ALT_INV_state_counter(1),
	dataf => \RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	datag => \RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \Mux0~4_combout\);

-- Location: LABCELL_X6_Y19_N24
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !state_counter(1) & ( (!\Mux0~4_combout\ & (state_counter(2) & (\RAM_2port|altsyncram_component|auto_generated|q_b\(4)))) # (\Mux0~4_combout\ & ((!state_counter(2)) # (((\RAM_2port|altsyncram_component|auto_generated|q_b\(5)))))) ) ) 
-- # ( state_counter(1) & ( (!\Mux0~4_combout\ & (state_counter(2) & (\RAM_2port|altsyncram_component|auto_generated|q_b\(6)))) # (\Mux0~4_combout\ & ((!state_counter(2)) # (((\RAM_2port|altsyncram_component|auto_generated|q_b\(7)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011001000110010001100101011101010111010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~4_combout\,
	datab => ALT_INV_state_counter(2),
	datac => \RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	datad => \RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	datae => ALT_INV_state_counter(1),
	dataf => \RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(5),
	datag => \RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(4),
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X6_Y19_N39
\Selector43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = ( \Mux0~0_combout\ & ( (\RAM_2port|altsyncram_component|auto_generated|q_b\(7)) # (\state_reg.shifty~q\) ) ) # ( !\Mux0~0_combout\ & ( (!\state_reg.shifty~q\ & \RAM_2port|altsyncram_component|auto_generated|q_b\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state_reg.shifty~q\,
	datad => \RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Selector43~0_combout\);

-- Location: LABCELL_X7_Y19_N42
\shift_reg[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift_reg[4]~0_combout\ = ( \state_reg.shifty~DUPLICATE_q\ & ( \state_reg.init~DUPLICATE_q\ & ( !\rst~input_o\ ) ) ) # ( !\state_reg.shifty~DUPLICATE_q\ & ( \state_reg.init~DUPLICATE_q\ & ( !\rst~input_o\ ) ) ) # ( \state_reg.shifty~DUPLICATE_q\ & ( 
-- !\state_reg.init~DUPLICATE_q\ & ( !\rst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	datae => \ALT_INV_state_reg.shifty~DUPLICATE_q\,
	dataf => \ALT_INV_state_reg.init~DUPLICATE_q\,
	combout => \shift_reg[4]~0_combout\);

-- Location: FF_X6_Y19_N41
\shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector43~0_combout\,
	ena => \shift_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(5));

-- Location: LABCELL_X6_Y19_N36
\Selector44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = ( shift_reg(5) & ( (\state_reg.shifty~q\) # (\RAM_2port|altsyncram_component|auto_generated|q_b\(6)) ) ) # ( !shift_reg(5) & ( (\RAM_2port|altsyncram_component|auto_generated|q_b\(6) & !\state_reg.shifty~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	datad => \ALT_INV_state_reg.shifty~q\,
	dataf => ALT_INV_shift_reg(5),
	combout => \Selector44~0_combout\);

-- Location: FF_X6_Y19_N38
\shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector44~0_combout\,
	ena => \shift_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(4));

-- Location: LABCELL_X7_Y19_N54
\Selector45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = ( \RAM_2port|altsyncram_component|auto_generated|q_b\(5) & ( (!\state_reg.shifty~DUPLICATE_q\) # (shift_reg(4)) ) ) # ( !\RAM_2port|altsyncram_component|auto_generated|q_b\(5) & ( (shift_reg(4) & \state_reg.shifty~DUPLICATE_q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_shift_reg(4),
	datad => \ALT_INV_state_reg.shifty~DUPLICATE_q\,
	dataf => \RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(5),
	combout => \Selector45~0_combout\);

-- Location: FF_X7_Y19_N56
\shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector45~0_combout\,
	ena => \shift_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(3));

-- Location: LABCELL_X7_Y19_N57
\Selector46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = ( shift_reg(3) & ( (\state_reg.shifty~DUPLICATE_q\) # (\RAM_2port|altsyncram_component|auto_generated|q_b\(4)) ) ) # ( !shift_reg(3) & ( (\RAM_2port|altsyncram_component|auto_generated|q_b\(4) & !\state_reg.shifty~DUPLICATE_q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(4),
	datad => \ALT_INV_state_reg.shifty~DUPLICATE_q\,
	dataf => ALT_INV_shift_reg(3),
	combout => \Selector46~0_combout\);

-- Location: FF_X7_Y19_N58
\shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector46~0_combout\,
	ena => \shift_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(2));

-- Location: LABCELL_X7_Y19_N36
\Selector47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = ( \state_reg.shifty~DUPLICATE_q\ & ( shift_reg(2) ) ) # ( !\state_reg.shifty~DUPLICATE_q\ & ( shift_reg(2) & ( \RAM_2port|altsyncram_component|auto_generated|q_b\(3) ) ) ) # ( !\state_reg.shifty~DUPLICATE_q\ & ( !shift_reg(2) & ( 
-- \RAM_2port|altsyncram_component|auto_generated|q_b\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	datae => \ALT_INV_state_reg.shifty~DUPLICATE_q\,
	dataf => ALT_INV_shift_reg(2),
	combout => \Selector47~0_combout\);

-- Location: FF_X7_Y19_N38
\shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector47~0_combout\,
	ena => \shift_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(1));

-- Location: LABCELL_X7_Y19_N51
\Selector48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = ( shift_reg(1) & ( (\state_reg.shifty~DUPLICATE_q\) # (\RAM_2port|altsyncram_component|auto_generated|q_b\(2)) ) ) # ( !shift_reg(1) & ( (\RAM_2port|altsyncram_component|auto_generated|q_b\(2) & !\state_reg.shifty~DUPLICATE_q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	datad => \ALT_INV_state_reg.shifty~DUPLICATE_q\,
	dataf => ALT_INV_shift_reg(1),
	combout => \Selector48~0_combout\);

-- Location: FF_X7_Y19_N53
\shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector48~0_combout\,
	ena => \shift_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_reg(0));

-- Location: LABCELL_X7_Y19_N48
\data_out_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_out_int~0_combout\ = ( shift_reg(3) & ( !shift_reg(0) $ (shift_reg(4)) ) ) # ( !shift_reg(3) & ( !shift_reg(0) $ (!shift_reg(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_reg(0),
	datac => ALT_INV_shift_reg(4),
	dataf => ALT_INV_shift_reg(3),
	combout => \data_out_int~0_combout\);

-- Location: LABCELL_X6_Y19_N0
\Selector52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = ( shift_reg(1) & ( \Mux0~0_combout\ & ( (!\data_out_int~0_combout\ & (!shift_reg(5) & (\state_reg.shiftx~q\))) # (\data_out_int~0_combout\ & (((shift_reg(5) & \state_reg.shiftx~q\)) # (\state_reg.shifty~q\))) ) ) ) # ( 
-- !shift_reg(1) & ( \Mux0~0_combout\ & ( (!\data_out_int~0_combout\ & (((!shift_reg(5) & \state_reg.shiftx~q\)) # (\state_reg.shifty~q\))) # (\data_out_int~0_combout\ & (shift_reg(5) & (\state_reg.shiftx~q\))) ) ) ) # ( shift_reg(1) & ( !\Mux0~0_combout\ & 
-- ( (!\data_out_int~0_combout\ & (((shift_reg(5) & \state_reg.shiftx~q\)) # (\state_reg.shifty~q\))) # (\data_out_int~0_combout\ & (!shift_reg(5) & (\state_reg.shiftx~q\))) ) ) ) # ( !shift_reg(1) & ( !\Mux0~0_combout\ & ( (!\data_out_int~0_combout\ & 
-- (shift_reg(5) & (\state_reg.shiftx~q\))) # (\data_out_int~0_combout\ & (((!shift_reg(5) & \state_reg.shiftx~q\)) # (\state_reg.shifty~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000110111000001101100111000001001110011010000100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_shift_reg(5),
	datab => \ALT_INV_data_out_int~0_combout\,
	datac => \ALT_INV_state_reg.shiftx~q\,
	datad => \ALT_INV_state_reg.shifty~q\,
	datae => ALT_INV_shift_reg(1),
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Selector52~0_combout\);

-- Location: FF_X6_Y19_N1
data_out_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2~inputCLKENA0_outclk\,
	d => \Selector52~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_int~q\);
END structure;


