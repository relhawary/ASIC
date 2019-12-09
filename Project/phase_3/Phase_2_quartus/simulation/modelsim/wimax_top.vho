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

-- DATE "12/06/2019 23:46:56"

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

ENTITY 	wimax_top IS
    PORT (
	clk : IN std_logic;
	rset : IN std_logic;
	data_in_ready : IN std_logic;
	data_in : IN std_logic;
	data_out_I : BUFFER std_logic_vector(15 DOWNTO 0);
	data_out_Q : BUFFER std_logic_vector(15 DOWNTO 0);
	data_out_valid : BUFFER std_logic
	);
END wimax_top;

-- Design Ports Information
-- data_out_I[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_I[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_I[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_I[3]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_I[4]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_I[5]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_I[6]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_I[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_I[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_I[9]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_I[10]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_I[11]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_I[12]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_I[13]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_I[14]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_I[15]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_Q[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_Q[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_Q[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_Q[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_Q[4]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_Q[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_Q[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_Q[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_Q[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_Q[9]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_Q[10]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_Q[11]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_Q[12]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_Q[13]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_Q[14]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_Q[15]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_valid	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rset	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in_ready	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF wimax_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rset : std_logic;
SIGNAL ww_data_in_ready : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_data_out_I : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_out_Q : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_out_valid : std_logic;
SIGNAL \interleaver|RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \interleaver|RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \interleaver|RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \interleaver|RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \interleaver|RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \interleaver|RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \rset~input_o\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN8\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \modulator|data_out_I_int[0]~feeder_combout\ : std_logic;
SIGNAL \interleaver|Add0~17_sumout\ : std_logic;
SIGNAL \interleaver|Add3~33_sumout\ : std_logic;
SIGNAL \interleaver|counter_a[2]~0_combout\ : std_logic;
SIGNAL \interleaver|counter_b[8]~DUPLICATE_q\ : std_logic;
SIGNAL \interleaver|counter_b[7]~DUPLICATE_q\ : std_logic;
SIGNAL \interleaver|counter_a[2]~2_combout\ : std_logic;
SIGNAL \interleaver|Add3~34\ : std_logic;
SIGNAL \interleaver|Add3~29_sumout\ : std_logic;
SIGNAL \interleaver|Add3~30\ : std_logic;
SIGNAL \interleaver|Add3~25_sumout\ : std_logic;
SIGNAL \interleaver|Add3~26\ : std_logic;
SIGNAL \interleaver|Add3~21_sumout\ : std_logic;
SIGNAL \interleaver|Add3~22\ : std_logic;
SIGNAL \interleaver|Add3~17_sumout\ : std_logic;
SIGNAL \interleaver|Add3~18\ : std_logic;
SIGNAL \interleaver|Add3~13_sumout\ : std_logic;
SIGNAL \interleaver|Add3~14\ : std_logic;
SIGNAL \interleaver|Add3~9_sumout\ : std_logic;
SIGNAL \interleaver|Add3~10\ : std_logic;
SIGNAL \interleaver|Add3~1_sumout\ : std_logic;
SIGNAL \interleaver|Add3~2\ : std_logic;
SIGNAL \interleaver|Add3~5_sumout\ : std_logic;
SIGNAL \fec|Add1~1_sumout\ : std_logic;
SIGNAL \fec|Selector42~0_combout\ : std_logic;
SIGNAL \fec|state_reg.init~DUPLICATE_q\ : std_logic;
SIGNAL \fec|Selector11~0_combout\ : std_logic;
SIGNAL \fec|Add1~2\ : std_logic;
SIGNAL \fec|Add1~6\ : std_logic;
SIGNAL \fec|Add1~33_sumout\ : std_logic;
SIGNAL \fec|Selector40~0_combout\ : std_logic;
SIGNAL \fec|Add1~34\ : std_logic;
SIGNAL \fec|Add1~29_sumout\ : std_logic;
SIGNAL \fec|Selector39~0_combout\ : std_logic;
SIGNAL \fec|holdCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|Add1~30\ : std_logic;
SIGNAL \fec|Add1~25_sumout\ : std_logic;
SIGNAL \fec|Selector38~0_combout\ : std_logic;
SIGNAL \fec|holdCount[4]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|Add1~26\ : std_logic;
SIGNAL \fec|Add1~21_sumout\ : std_logic;
SIGNAL \fec|Selector37~0_combout\ : std_logic;
SIGNAL \fec|holdCount[5]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|Add1~22\ : std_logic;
SIGNAL \fec|Add1~17_sumout\ : std_logic;
SIGNAL \fec|Selector36~0_combout\ : std_logic;
SIGNAL \fec|holdCount[6]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|Add1~18\ : std_logic;
SIGNAL \fec|Add1~13_sumout\ : std_logic;
SIGNAL \fec|Selector35~0_combout\ : std_logic;
SIGNAL \fec|Add1~14\ : std_logic;
SIGNAL \fec|Add1~57_sumout\ : std_logic;
SIGNAL \fec|Selector34~0_combout\ : std_logic;
SIGNAL \fec|holdCount[8]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|Add1~58\ : std_logic;
SIGNAL \fec|Add1~53_sumout\ : std_logic;
SIGNAL \fec|Selector33~0_combout\ : std_logic;
SIGNAL \fec|Add1~54\ : std_logic;
SIGNAL \fec|Add1~49_sumout\ : std_logic;
SIGNAL \fec|Selector32~0_combout\ : std_logic;
SIGNAL \fec|holdCount[10]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|Add1~50\ : std_logic;
SIGNAL \fec|Add1~45_sumout\ : std_logic;
SIGNAL \fec|Selector31~0_combout\ : std_logic;
SIGNAL \fec|Add1~46\ : std_logic;
SIGNAL \fec|Add1~41_sumout\ : std_logic;
SIGNAL \fec|Selector30~0_combout\ : std_logic;
SIGNAL \fec|holdCount[12]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|Add1~42\ : std_logic;
SIGNAL \fec|Add1~37_sumout\ : std_logic;
SIGNAL \fec|Selector29~0_combout\ : std_logic;
SIGNAL \fec|holdCount[13]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|Add1~38\ : std_logic;
SIGNAL \fec|Add1~81_sumout\ : std_logic;
SIGNAL \fec|Selector28~0_combout\ : std_logic;
SIGNAL \fec|Add1~82\ : std_logic;
SIGNAL \fec|Add1~77_sumout\ : std_logic;
SIGNAL \fec|Selector27~0_combout\ : std_logic;
SIGNAL \fec|Add1~78\ : std_logic;
SIGNAL \fec|Add1~73_sumout\ : std_logic;
SIGNAL \fec|Selector26~0_combout\ : std_logic;
SIGNAL \fec|Add1~74\ : std_logic;
SIGNAL \fec|Add1~69_sumout\ : std_logic;
SIGNAL \fec|Selector25~0_combout\ : std_logic;
SIGNAL \fec|Add1~70\ : std_logic;
SIGNAL \fec|Add1~65_sumout\ : std_logic;
SIGNAL \fec|Selector24~0_combout\ : std_logic;
SIGNAL \fec|Add1~66\ : std_logic;
SIGNAL \fec|Add1~61_sumout\ : std_logic;
SIGNAL \fec|Selector23~0_combout\ : std_logic;
SIGNAL \fec|Equal0~3_combout\ : std_logic;
SIGNAL \fec|Equal0~2_combout\ : std_logic;
SIGNAL \fec|Add1~62\ : std_logic;
SIGNAL \fec|Add1~9_sumout\ : std_logic;
SIGNAL \fec|Selector22~0_combout\ : std_logic;
SIGNAL \fec|Add1~10\ : std_logic;
SIGNAL \fec|Add1~125_sumout\ : std_logic;
SIGNAL \fec|Selector21~0_combout\ : std_logic;
SIGNAL \fec|Add1~126\ : std_logic;
SIGNAL \fec|Add1~121_sumout\ : std_logic;
SIGNAL \fec|Selector20~0_combout\ : std_logic;
SIGNAL \fec|Add1~122\ : std_logic;
SIGNAL \fec|Add1~117_sumout\ : std_logic;
SIGNAL \fec|Selector19~0_combout\ : std_logic;
SIGNAL \fec|Add1~118\ : std_logic;
SIGNAL \fec|Add1~113_sumout\ : std_logic;
SIGNAL \fec|Selector18~0_combout\ : std_logic;
SIGNAL \fec|Add1~114\ : std_logic;
SIGNAL \fec|Add1~109_sumout\ : std_logic;
SIGNAL \fec|Selector17~0_combout\ : std_logic;
SIGNAL \fec|Equal0~5_combout\ : std_logic;
SIGNAL \fec|Equal0~1_combout\ : std_logic;
SIGNAL \fec|Add1~110\ : std_logic;
SIGNAL \fec|Add1~105_sumout\ : std_logic;
SIGNAL \fec|Selector16~0_combout\ : std_logic;
SIGNAL \fec|Add1~106\ : std_logic;
SIGNAL \fec|Add1~101_sumout\ : std_logic;
SIGNAL \fec|Selector15~0_combout\ : std_logic;
SIGNAL \fec|holdCount[27]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|Add1~102\ : std_logic;
SIGNAL \fec|Add1~97_sumout\ : std_logic;
SIGNAL \fec|Selector14~0_combout\ : std_logic;
SIGNAL \fec|holdCount[28]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|Add1~98\ : std_logic;
SIGNAL \fec|Add1~93_sumout\ : std_logic;
SIGNAL \fec|Selector13~0_combout\ : std_logic;
SIGNAL \fec|Add1~94\ : std_logic;
SIGNAL \fec|Add1~89_sumout\ : std_logic;
SIGNAL \fec|Selector12~0_combout\ : std_logic;
SIGNAL \fec|Add1~90\ : std_logic;
SIGNAL \fec|Add1~85_sumout\ : std_logic;
SIGNAL \fec|Selector11~1_combout\ : std_logic;
SIGNAL \fec|Equal0~4_combout\ : std_logic;
SIGNAL \fec|Equal0~6_combout\ : std_logic;
SIGNAL \fec|state_reg.shiftx~DUPLICATE_q\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN7\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\ : std_logic;
SIGNAL \prbs|data_out_valid_int~feeder_combout\ : std_logic;
SIGNAL \data_in_ready~input_o\ : std_logic;
SIGNAL \prbs|data_out_valid_int~q\ : std_logic;
SIGNAL \fec|Add0~13_sumout\ : std_logic;
SIGNAL \fec|Add0~14\ : std_logic;
SIGNAL \fec|Add0~29_sumout\ : std_logic;
SIGNAL \fec|address_a[1]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|Add0~30\ : std_logic;
SIGNAL \fec|Add0~25_sumout\ : std_logic;
SIGNAL \fec|Add0~26\ : std_logic;
SIGNAL \fec|Add0~21_sumout\ : std_logic;
SIGNAL \fec|Add0~22\ : std_logic;
SIGNAL \fec|Add0~17_sumout\ : std_logic;
SIGNAL \fec|Add0~18\ : std_logic;
SIGNAL \fec|Add0~9_sumout\ : std_logic;
SIGNAL \fec|LessThan0~0_combout\ : std_logic;
SIGNAL \fec|Add0~10\ : std_logic;
SIGNAL \fec|Add0~5_sumout\ : std_logic;
SIGNAL \fec|LessThan0~1_combout\ : std_logic;
SIGNAL \fec|Add0~6\ : std_logic;
SIGNAL \fec|Add0~1_sumout\ : std_logic;
SIGNAL \fec|address_a[7]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|LessThan2~1_combout\ : std_logic;
SIGNAL \fec|address_a[6]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|LessThan2~0_combout\ : std_logic;
SIGNAL \fec|state_reg.idle~0_combout\ : std_logic;
SIGNAL \fec|state_reg.idle~q\ : std_logic;
SIGNAL \fec|address_b[2]~0_combout\ : std_logic;
SIGNAL \fec|state_reg.shifty~q\ : std_logic;
SIGNAL \fec|Selector51~0_combout\ : std_logic;
SIGNAL \fec|Selector50~1_combout\ : std_logic;
SIGNAL \fec|process_1~1_combout\ : std_logic;
SIGNAL \fec|LessThan2~2_combout\ : std_logic;
SIGNAL \fec|address_b[2]~3_combout\ : std_logic;
SIGNAL \fec|Add2~1_combout\ : std_logic;
SIGNAL \fec|Selector7~0_combout\ : std_logic;
SIGNAL \fec|address_b[2]~1_combout\ : std_logic;
SIGNAL \fec|address_b[2]~2_combout\ : std_logic;
SIGNAL \fec|Add2~0_combout\ : std_logic;
SIGNAL \fec|address_b[4]~4_combout\ : std_logic;
SIGNAL \fec|address_b[4]~5_combout\ : std_logic;
SIGNAL \fec|address_b[4]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|process_1~4_combout\ : std_logic;
SIGNAL \fec|process_1~5_combout\ : std_logic;
SIGNAL \fec|address_b[0]~8_combout\ : std_logic;
SIGNAL \fec|Add2~2_combout\ : std_logic;
SIGNAL \fec|Selector8~0_combout\ : std_logic;
SIGNAL \fec|Equal2~0_combout\ : std_logic;
SIGNAL \fec|process_1~2_combout\ : std_logic;
SIGNAL \fec|Selector49~0_combout\ : std_logic;
SIGNAL \fec|state_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|process_1~0_combout\ : std_logic;
SIGNAL \fec|process_1~3_combout\ : std_logic;
SIGNAL \fec|process_1~6_combout\ : std_logic;
SIGNAL \fec|address_b[2]~6_combout\ : std_logic;
SIGNAL \fec|address_b[1]~7_combout\ : std_logic;
SIGNAL \fec|Equal1~0_combout\ : std_logic;
SIGNAL \fec|Selector50~0_combout\ : std_logic;
SIGNAL \fec|holdC~q\ : std_logic;
SIGNAL \fec|Selector5~0_combout\ : std_logic;
SIGNAL \fec|holdC~DUPLICATE_q\ : std_logic;
SIGNAL \fec|state_reg~16_combout\ : std_logic;
SIGNAL \fec|state_reg.init~q\ : std_logic;
SIGNAL \fec|Selector2~0_combout\ : std_logic;
SIGNAL \fec|state_reg.addressb~q\ : std_logic;
SIGNAL \fec|Selector1~0_combout\ : std_logic;
SIGNAL \fec|Selector1~1_combout\ : std_logic;
SIGNAL \fec|state_reg.hold~q\ : std_logic;
SIGNAL \fec|holdCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|Add1~5_sumout\ : std_logic;
SIGNAL \fec|holdCount~0_combout\ : std_logic;
SIGNAL \fec|Equal0~0_combout\ : std_logic;
SIGNAL \fec|Selector3~0_combout\ : std_logic;
SIGNAL \fec|state_reg.shiftx~q\ : std_logic;
SIGNAL \fec|data_out_valid_int~0_combout\ : std_logic;
SIGNAL \fec|data_out_valid_int~q\ : std_logic;
SIGNAL \interleaver|state_reg.idle~0_combout\ : std_logic;
SIGNAL \interleaver|state_reg.idle~q\ : std_logic;
SIGNAL \interleaver|address_a[4]~0_combout\ : std_logic;
SIGNAL \interleaver|Add0~10\ : std_logic;
SIGNAL \interleaver|Add0~5_sumout\ : std_logic;
SIGNAL \interleaver|counter_a[6]~DUPLICATE_q\ : std_logic;
SIGNAL \interleaver|counter_a[4]~DUPLICATE_q\ : std_logic;
SIGNAL \interleaver|LessThan0~0_combout\ : std_logic;
SIGNAL \interleaver|Add0~6\ : std_logic;
SIGNAL \interleaver|Add0~1_sumout\ : std_logic;
SIGNAL \interleaver|counter_a[2]~3_combout\ : std_logic;
SIGNAL \interleaver|counter_a[2]~1_combout\ : std_logic;
SIGNAL \interleaver|Add0~18\ : std_logic;
SIGNAL \interleaver|Add0~21_sumout\ : std_logic;
SIGNAL \interleaver|Add0~22\ : std_logic;
SIGNAL \interleaver|Add0~13_sumout\ : std_logic;
SIGNAL \interleaver|Add0~14\ : std_logic;
SIGNAL \interleaver|Add0~25_sumout\ : std_logic;
SIGNAL \interleaver|Add0~26\ : std_logic;
SIGNAL \interleaver|Add0~29_sumout\ : std_logic;
SIGNAL \interleaver|Add0~30\ : std_logic;
SIGNAL \interleaver|Add0~9_sumout\ : std_logic;
SIGNAL \interleaver|state_reg.input_output~0_combout\ : std_logic;
SIGNAL \interleaver|Selector0~0_combout\ : std_logic;
SIGNAL \interleaver|state_reg.input_a~q\ : std_logic;
SIGNAL \interleaver|state_reg.input_output~1_combout\ : std_logic;
SIGNAL \interleaver|state_reg.input_output~q\ : std_logic;
SIGNAL \interleaver|data_out_valid_int~q\ : std_logic;
SIGNAL \modulator|state_reg.out_Q~q\ : std_logic;
SIGNAL \modulator|state_reg.idle~0_combout\ : std_logic;
SIGNAL \modulator|state_reg.idle~q\ : std_logic;
SIGNAL \modulator|Selector1~0_combout\ : std_logic;
SIGNAL \modulator|state_reg.out_I~q\ : std_logic;
SIGNAL \fec|wren_a~q\ : std_logic;
SIGNAL \data_in~input_o\ : std_logic;
SIGNAL \prbs|r_reg[13]~8_combout\ : std_logic;
SIGNAL \prbs|r_reg[11]~7_combout\ : std_logic;
SIGNAL \prbs|r_reg[10]~6_combout\ : std_logic;
SIGNAL \prbs|r_reg[7]~5_combout\ : std_logic;
SIGNAL \prbs|r_reg[4]~4_combout\ : std_logic;
SIGNAL \prbs|r_reg[3]~3_combout\ : std_logic;
SIGNAL \prbs|r_reg[2]~2_combout\ : std_logic;
SIGNAL \prbs|r_reg[1]~0_combout\ : std_logic;
SIGNAL \prbs|r_reg[0]~1_combout\ : std_logic;
SIGNAL \prbs|data_out_prbs~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \fec|Mux0~4_combout\ : std_logic;
SIGNAL \fec|Mux0~0_combout\ : std_logic;
SIGNAL \fec|Selector43~0_combout\ : std_logic;
SIGNAL \fec|shift_reg[4]~0_combout\ : std_logic;
SIGNAL \fec|Selector44~0_combout\ : std_logic;
SIGNAL \fec|Selector45~0_combout\ : std_logic;
SIGNAL \fec|Selector46~0_combout\ : std_logic;
SIGNAL \fec|Selector47~0_combout\ : std_logic;
SIGNAL \fec|shift_reg[1]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|Selector48~0_combout\ : std_logic;
SIGNAL \fec|data_out_int~0_combout\ : std_logic;
SIGNAL \fec|Selector52~0_combout\ : std_logic;
SIGNAL \fec|data_out_int~q\ : std_logic;
SIGNAL \interleaver|data_a[0]~0_combout\ : std_logic;
SIGNAL \interleaver|Add1~1_sumout\ : std_logic;
SIGNAL \interleaver|Add1~2\ : std_logic;
SIGNAL \interleaver|Add1~5_sumout\ : std_logic;
SIGNAL \interleaver|counter_a[7]~DUPLICATE_q\ : std_logic;
SIGNAL \interleaver|Add1~6\ : std_logic;
SIGNAL \interleaver|Add1~9_sumout\ : std_logic;
SIGNAL \interleaver|Add1~10\ : std_logic;
SIGNAL \interleaver|Add1~13_sumout\ : std_logic;
SIGNAL \interleaver|Add1~14\ : std_logic;
SIGNAL \interleaver|Add1~17_sumout\ : std_logic;
SIGNAL \interleaver|Selector5~0_combout\ : std_logic;
SIGNAL \interleaver|Add1~18\ : std_logic;
SIGNAL \interleaver|Add1~21_sumout\ : std_logic;
SIGNAL \interleaver|Selector4~0_combout\ : std_logic;
SIGNAL \interleaver|Selector3~0_combout\ : std_logic;
SIGNAL \interleaver|Selector3~1_combout\ : std_logic;
SIGNAL \interleaver|Add4~1_sumout\ : std_logic;
SIGNAL \interleaver|Add4~2\ : std_logic;
SIGNAL \interleaver|Add4~5_sumout\ : std_logic;
SIGNAL \interleaver|address_b[2]~1_combout\ : std_logic;
SIGNAL \interleaver|Add4~6\ : std_logic;
SIGNAL \interleaver|Add4~9_sumout\ : std_logic;
SIGNAL \interleaver|Add4~10\ : std_logic;
SIGNAL \interleaver|Add4~13_sumout\ : std_logic;
SIGNAL \interleaver|Add4~14\ : std_logic;
SIGNAL \interleaver|Add4~17_sumout\ : std_logic;
SIGNAL \interleaver|Add4~18\ : std_logic;
SIGNAL \interleaver|Add4~21_sumout\ : std_logic;
SIGNAL \interleaver|Add4~22\ : std_logic;
SIGNAL \interleaver|Add4~25_sumout\ : std_logic;
SIGNAL \interleaver|Add4~26\ : std_logic;
SIGNAL \interleaver|Add4~29_sumout\ : std_logic;
SIGNAL \interleaver|Add4~30\ : std_logic;
SIGNAL \interleaver|Add4~33_sumout\ : std_logic;
SIGNAL \interleaver|address_b[8]~DUPLICATE_q\ : std_logic;
SIGNAL \interleaver|address_b[2]~0_combout\ : std_logic;
SIGNAL \interleaver|data_out_int~0_combout\ : std_logic;
SIGNAL \interleaver|data_out_int~q\ : std_logic;
SIGNAL \modulator|data_out_I_int[1]~0_combout\ : std_logic;
SIGNAL \modulator|data_out_I_int[2]~1_combout\ : std_logic;
SIGNAL \modulator|data_out_I_int[3]~2_combout\ : std_logic;
SIGNAL \modulator|data_out_I_int[4]~3_combout\ : std_logic;
SIGNAL \modulator|data_out_I_int[5]~4_combout\ : std_logic;
SIGNAL \modulator|data_out_I_int[6]~5_combout\ : std_logic;
SIGNAL \modulator|data_out_I_int[8]~feeder_combout\ : std_logic;
SIGNAL \modulator|data_out_I_int[9]~6_combout\ : std_logic;
SIGNAL \modulator|data_out_I_int[10]~feeder_combout\ : std_logic;
SIGNAL \modulator|data_out_I_int[11]~7_combout\ : std_logic;
SIGNAL \modulator|data_out_I_int[12]~8_combout\ : std_logic;
SIGNAL \modulator|data_out_I_int[14]~9_combout\ : std_logic;
SIGNAL \modulator|data_out_I_int[15]~feeder_combout\ : std_logic;
SIGNAL \modulator|data_out_Q_int[0]~feeder_combout\ : std_logic;
SIGNAL \modulator|data_out_Q_int[1]~0_combout\ : std_logic;
SIGNAL \modulator|data_out_Q_int[2]~1_combout\ : std_logic;
SIGNAL \modulator|data_out_Q_int[3]~2_combout\ : std_logic;
SIGNAL \modulator|data_out_Q_int[4]~3_combout\ : std_logic;
SIGNAL \modulator|data_out_Q_int[5]~4_combout\ : std_logic;
SIGNAL \modulator|data_out_Q_int[6]~5_combout\ : std_logic;
SIGNAL \modulator|data_out_Q_int[9]~6_combout\ : std_logic;
SIGNAL \modulator|data_out_Q_int[10]~feeder_combout\ : std_logic;
SIGNAL \modulator|data_out_Q_int[11]~7_combout\ : std_logic;
SIGNAL \modulator|data_out_Q_int[12]~8_combout\ : std_logic;
SIGNAL \modulator|data_out_Q_int[13]~feeder_combout\ : std_logic;
SIGNAL \modulator|data_out_Q_int[14]~9_combout\ : std_logic;
SIGNAL \modulator|data_out_valid_int~q\ : std_logic;
SIGNAL \interleaver|counter_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \interleaver|RAM_interleaver|altsyncram_component|auto_generated|q_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \interleaver|counter_b\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \interleaver|RAM_interleaver|altsyncram_component|auto_generated|q_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fec|RAM_2port|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \interleaver|address_b\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fec|RAM_2port|altsyncram_component|auto_generated|q_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pll_clk|pll_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \fec|holdCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \prbs|r_reg\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \fec|address_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \modulator|data_out_I_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \modulator|data_out_Q_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \prbs|r_next\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \interleaver|data_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \interleaver|address_a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pll_clk|pll_inst|altera_pll_i|locked_wire\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \fec|shift_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \pll_clk|pll_inst|altera_pll_i|outclk_wire\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \fec|state_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \fec|address_b\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \interleaver|ALT_INV_data_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \interleaver|ALT_INV_state_reg.input_output~q\ : std_logic;
SIGNAL \interleaver|ALT_INV_data_out_valid_int~q\ : std_logic;
SIGNAL \modulator|ALT_INV_state_reg.idle~q\ : std_logic;
SIGNAL \modulator|ALT_INV_state_reg.out_Q~q\ : std_logic;
SIGNAL \interleaver|ALT_INV_data_out_int~q\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~125_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~117_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~105_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~97_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~77_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \fec|ALT_INV_address_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fec|ALT_INV_holdCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fec|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fec|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \interleaver|ALT_INV_counter_b\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \interleaver|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \interleaver|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \interleaver|ALT_INV_counter_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \interleaver|ALT_INV_address_b\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \interleaver|RAM_interleaver|altsyncram_component|auto_generated|ALT_INV_q_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fec|ALT_INV_address_b[4]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|ALT_INV_holdCount[27]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|ALT_INV_holdCount[28]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|ALT_INV_holdCount[8]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|ALT_INV_holdCount[10]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|ALT_INV_holdCount[12]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|ALT_INV_holdCount[13]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|ALT_INV_holdCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|ALT_INV_holdCount[4]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|ALT_INV_holdCount[5]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|ALT_INV_holdCount[6]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|ALT_INV_holdC~DUPLICATE_q\ : std_logic;
SIGNAL \fec|ALT_INV_state_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|ALT_INV_state_reg.init~DUPLICATE_q\ : std_logic;
SIGNAL \fec|ALT_INV_state_reg.shiftx~DUPLICATE_q\ : std_logic;
SIGNAL \fec|ALT_INV_shift_reg[1]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|ALT_INV_address_a[1]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|ALT_INV_address_a[6]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|ALT_INV_address_a[7]~DUPLICATE_q\ : std_logic;
SIGNAL \fec|ALT_INV_holdCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \interleaver|ALT_INV_counter_b[8]~DUPLICATE_q\ : std_logic;
SIGNAL \interleaver|ALT_INV_counter_b[7]~DUPLICATE_q\ : std_logic;
SIGNAL \interleaver|ALT_INV_counter_a[4]~DUPLICATE_q\ : std_logic;
SIGNAL \interleaver|ALT_INV_counter_a[6]~DUPLICATE_q\ : std_logic;
SIGNAL \interleaver|ALT_INV_counter_a[7]~DUPLICATE_q\ : std_logic;
SIGNAL \interleaver|ALT_INV_address_b[8]~DUPLICATE_q\ : std_logic;
SIGNAL \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_data_in~input_o\ : std_logic;
SIGNAL \interleaver|ALT_INV_counter_a[2]~3_combout\ : std_logic;
SIGNAL \prbs|ALT_INV_r_reg\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \fec|ALT_INV_address_b[2]~6_combout\ : std_logic;
SIGNAL \fec|ALT_INV_process_1~6_combout\ : std_logic;
SIGNAL \fec|ALT_INV_Add2~2_combout\ : std_logic;
SIGNAL \fec|ALT_INV_Add2~1_combout\ : std_logic;
SIGNAL \fec|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \fec|ALT_INV_address_b[4]~4_combout\ : std_logic;
SIGNAL \fec|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \fec|ALT_INV_address_b[2]~3_combout\ : std_logic;
SIGNAL \fec|ALT_INV_address_b[2]~2_combout\ : std_logic;
SIGNAL \fec|ALT_INV_address_b[2]~1_combout\ : std_logic;
SIGNAL \fec|ALT_INV_process_1~5_combout\ : std_logic;
SIGNAL \fec|ALT_INV_process_1~4_combout\ : std_logic;
SIGNAL \fec|ALT_INV_process_1~3_combout\ : std_logic;
SIGNAL \fec|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \fec|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \fec|ALT_INV_state_reg.addressb~q\ : std_logic;
SIGNAL \fec|ALT_INV_address_b[2]~0_combout\ : std_logic;
SIGNAL \fec|ALT_INV_state_reg.idle~q\ : std_logic;
SIGNAL \fec|ALT_INV_process_1~2_combout\ : std_logic;
SIGNAL \fec|ALT_INV_process_1~1_combout\ : std_logic;
SIGNAL \fec|ALT_INV_Selector50~0_combout\ : std_logic;
SIGNAL \fec|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \fec|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \fec|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \fec|ALT_INV_address_b\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \fec|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \fec|ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL \fec|ALT_INV_state_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \fec|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \fec|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \fec|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \fec|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \fec|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \fec|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \fec|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \fec|ALT_INV_state_reg.hold~q\ : std_logic;
SIGNAL \fec|ALT_INV_holdC~q\ : std_logic;
SIGNAL \fec|ALT_INV_state_reg.init~q\ : std_logic;
SIGNAL \fec|ALT_INV_shift_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \fec|ALT_INV_state_reg.shiftx~q\ : std_logic;
SIGNAL \fec|ALT_INV_state_reg.shifty~q\ : std_logic;
SIGNAL \fec|ALT_INV_data_out_int~0_combout\ : std_logic;
SIGNAL \interleaver|ALT_INV_counter_a[2]~0_combout\ : std_logic;
SIGNAL \interleaver|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \interleaver|ALT_INV_address_a[4]~0_combout\ : std_logic;
SIGNAL \interleaver|ALT_INV_state_reg.idle~q\ : std_logic;
SIGNAL \fec|ALT_INV_data_out_valid_int~q\ : std_logic;
SIGNAL \fec|ALT_INV_data_out_int~q\ : std_logic;
SIGNAL \interleaver|ALT_INV_state_reg.input_output~0_combout\ : std_logic;
SIGNAL \interleaver|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \interleaver|ALT_INV_state_reg.input_a~q\ : std_logic;
SIGNAL \interleaver|ALT_INV_address_a\ : std_logic_vector(8 DOWNTO 8);

BEGIN

ww_clk <= clk;
ww_rset <= rset;
ww_data_in_ready <= data_in_ready;
ww_data_in <= data_in;
data_out_I <= ww_data_out_I;
data_out_Q <= ww_data_out_Q;
data_out_valid <= ww_data_out_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\interleaver|RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \interleaver|data_a\(0));

\interleaver|RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\);

\interleaver|RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\interleaver|address_a\(8) & \interleaver|address_a\(7) & \interleaver|address_a\(6) & \interleaver|address_a\(5) & \interleaver|address_a\(4) & 
\interleaver|address_a\(3) & \interleaver|address_a\(2) & \interleaver|address_a\(1) & \interleaver|address_a\(0));

\interleaver|RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\interleaver|address_b\(8) & \interleaver|address_b\(7) & \interleaver|address_b\(6) & \interleaver|address_b\(5) & \interleaver|address_b\(4) & 
\interleaver|address_b\(3) & \interleaver|address_b\(2) & \interleaver|address_b\(1) & \interleaver|address_b\(0));

\interleaver|RAM_interleaver|altsyncram_component|auto_generated|q_a\(0) <= \interleaver|RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\interleaver|RAM_interleaver|altsyncram_component|auto_generated|q_b\(0) <= \interleaver|RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & \prbs|data_out_prbs~combout\);

\fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (gnd & \~GND~combout\ & gnd & \~GND~combout\ & gnd & \~GND~combout\ & gnd & \~GND~combout\ & gnd & \~GND~combout\ & gnd & \~GND~combout\ & gnd & \~GND~combout\ & gnd & 
\~GND~combout\);

\fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\fec|address_a[7]~DUPLICATE_q\ & \fec|address_a[6]~DUPLICATE_q\ & \fec|address_a\(5) & \fec|address_a\(4) & \fec|address_a\(3) & \fec|address_a\(2) & 
\fec|address_a\(1) & \fec|address_a\(0));

\fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\fec|address_b\(4) & \fec|address_b\(3) & \fec|address_b\(2) & \fec|address_b\(1) & \fec|address_b\(0));

\fec|RAM_2port|altsyncram_component|auto_generated|q_a\(0) <= \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(0) <= \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(1) <= \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(2) <= \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(3) <= \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(4) <= \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(5) <= \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(6) <= \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(7) <= \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);

\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \clk~input_o\);

\pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & 
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN7\ <= \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(7);
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN8\ <= \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(8);

\pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);

\pll_clk|pll_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\interleaver|ALT_INV_data_a\(0) <= NOT \interleaver|data_a\(0);
\interleaver|ALT_INV_state_reg.input_output~q\ <= NOT \interleaver|state_reg.input_output~q\;
\interleaver|ALT_INV_data_out_valid_int~q\ <= NOT \interleaver|data_out_valid_int~q\;
\modulator|ALT_INV_state_reg.idle~q\ <= NOT \modulator|state_reg.idle~q\;
\modulator|ALT_INV_state_reg.out_Q~q\ <= NOT \modulator|state_reg.out_Q~q\;
\interleaver|ALT_INV_data_out_int~q\ <= NOT \interleaver|data_out_int~q\;
\fec|ALT_INV_Add1~125_sumout\ <= NOT \fec|Add1~125_sumout\;
\fec|ALT_INV_Add1~121_sumout\ <= NOT \fec|Add1~121_sumout\;
\fec|ALT_INV_Add1~117_sumout\ <= NOT \fec|Add1~117_sumout\;
\fec|ALT_INV_Add1~113_sumout\ <= NOT \fec|Add1~113_sumout\;
\fec|ALT_INV_Add1~109_sumout\ <= NOT \fec|Add1~109_sumout\;
\fec|ALT_INV_Add1~105_sumout\ <= NOT \fec|Add1~105_sumout\;
\fec|ALT_INV_Add1~101_sumout\ <= NOT \fec|Add1~101_sumout\;
\fec|ALT_INV_Add1~97_sumout\ <= NOT \fec|Add1~97_sumout\;
\fec|ALT_INV_Add1~93_sumout\ <= NOT \fec|Add1~93_sumout\;
\fec|ALT_INV_Add1~89_sumout\ <= NOT \fec|Add1~89_sumout\;
\fec|ALT_INV_Add1~85_sumout\ <= NOT \fec|Add1~85_sumout\;
\fec|ALT_INV_Add1~81_sumout\ <= NOT \fec|Add1~81_sumout\;
\fec|ALT_INV_Add1~77_sumout\ <= NOT \fec|Add1~77_sumout\;
\fec|ALT_INV_Add1~73_sumout\ <= NOT \fec|Add1~73_sumout\;
\fec|ALT_INV_Add1~69_sumout\ <= NOT \fec|Add1~69_sumout\;
\fec|ALT_INV_Add1~65_sumout\ <= NOT \fec|Add1~65_sumout\;
\fec|ALT_INV_Add1~61_sumout\ <= NOT \fec|Add1~61_sumout\;
\fec|ALT_INV_Add1~57_sumout\ <= NOT \fec|Add1~57_sumout\;
\fec|ALT_INV_Add1~53_sumout\ <= NOT \fec|Add1~53_sumout\;
\fec|ALT_INV_Add1~49_sumout\ <= NOT \fec|Add1~49_sumout\;
\fec|ALT_INV_Add1~45_sumout\ <= NOT \fec|Add1~45_sumout\;
\fec|ALT_INV_Add1~41_sumout\ <= NOT \fec|Add1~41_sumout\;
\fec|ALT_INV_Add1~37_sumout\ <= NOT \fec|Add1~37_sumout\;
\fec|ALT_INV_Add1~33_sumout\ <= NOT \fec|Add1~33_sumout\;
\fec|ALT_INV_Add1~29_sumout\ <= NOT \fec|Add1~29_sumout\;
\fec|ALT_INV_Add1~25_sumout\ <= NOT \fec|Add1~25_sumout\;
\fec|ALT_INV_Add1~21_sumout\ <= NOT \fec|Add1~21_sumout\;
\fec|ALT_INV_Add1~17_sumout\ <= NOT \fec|Add1~17_sumout\;
\fec|ALT_INV_Add1~13_sumout\ <= NOT \fec|Add1~13_sumout\;
\fec|ALT_INV_Add1~9_sumout\ <= NOT \fec|Add1~9_sumout\;
\fec|ALT_INV_Add1~5_sumout\ <= NOT \fec|Add1~5_sumout\;
\fec|ALT_INV_Add1~1_sumout\ <= NOT \fec|Add1~1_sumout\;
\fec|ALT_INV_address_a\(1) <= NOT \fec|address_a\(1);
\fec|ALT_INV_address_a\(2) <= NOT \fec|address_a\(2);
\fec|ALT_INV_address_a\(3) <= NOT \fec|address_a\(3);
\fec|ALT_INV_address_a\(4) <= NOT \fec|address_a\(4);
\fec|ALT_INV_address_a\(0) <= NOT \fec|address_a\(0);
\fec|ALT_INV_address_a\(5) <= NOT \fec|address_a\(5);
\fec|ALT_INV_address_a\(6) <= NOT \fec|address_a\(6);
\fec|ALT_INV_address_a\(7) <= NOT \fec|address_a\(7);
\fec|ALT_INV_holdCount\(1) <= NOT \fec|holdCount\(1);
\fec|ALT_INV_Mux0~4_combout\ <= NOT \fec|Mux0~4_combout\;
\fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(7) <= NOT \fec|RAM_2port|altsyncram_component|auto_generated|q_b\(7);
\fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(6) <= NOT \fec|RAM_2port|altsyncram_component|auto_generated|q_b\(6);
\fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(5) <= NOT \fec|RAM_2port|altsyncram_component|auto_generated|q_b\(5);
\fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(4) <= NOT \fec|RAM_2port|altsyncram_component|auto_generated|q_b\(4);
\fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(3) <= NOT \fec|RAM_2port|altsyncram_component|auto_generated|q_b\(3);
\fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(2) <= NOT \fec|RAM_2port|altsyncram_component|auto_generated|q_b\(2);
\fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(1) <= NOT \fec|RAM_2port|altsyncram_component|auto_generated|q_b\(1);
\fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(0) <= NOT \fec|RAM_2port|altsyncram_component|auto_generated|q_b\(0);
\fec|ALT_INV_Mux0~0_combout\ <= NOT \fec|Mux0~0_combout\;
\interleaver|ALT_INV_counter_b\(0) <= NOT \interleaver|counter_b\(0);
\interleaver|ALT_INV_counter_b\(1) <= NOT \interleaver|counter_b\(1);
\interleaver|ALT_INV_counter_b\(2) <= NOT \interleaver|counter_b\(2);
\interleaver|ALT_INV_counter_b\(3) <= NOT \interleaver|counter_b\(3);
\interleaver|ALT_INV_counter_b\(4) <= NOT \interleaver|counter_b\(4);
\interleaver|ALT_INV_counter_b\(5) <= NOT \interleaver|counter_b\(5);
\interleaver|ALT_INV_Add1~21_sumout\ <= NOT \interleaver|Add1~21_sumout\;
\interleaver|ALT_INV_counter_b\(6) <= NOT \interleaver|counter_b\(6);
\interleaver|ALT_INV_Add1~17_sumout\ <= NOT \interleaver|Add1~17_sumout\;
\interleaver|ALT_INV_counter_b\(8) <= NOT \interleaver|counter_b\(8);
\interleaver|ALT_INV_counter_b\(7) <= NOT \interleaver|counter_b\(7);
\interleaver|ALT_INV_counter_a\(4) <= NOT \interleaver|counter_a\(4);
\interleaver|ALT_INV_counter_a\(3) <= NOT \interleaver|counter_a\(3);
\interleaver|ALT_INV_counter_a\(1) <= NOT \interleaver|counter_a\(1);
\interleaver|ALT_INV_counter_a\(0) <= NOT \interleaver|counter_a\(0);
\interleaver|ALT_INV_counter_a\(2) <= NOT \interleaver|counter_a\(2);
\interleaver|ALT_INV_counter_a\(5) <= NOT \interleaver|counter_a\(5);
\interleaver|ALT_INV_counter_a\(6) <= NOT \interleaver|counter_a\(6);
\interleaver|ALT_INV_counter_a\(7) <= NOT \interleaver|counter_a\(7);
\interleaver|ALT_INV_address_b\(8) <= NOT \interleaver|address_b\(8);
\interleaver|ALT_INV_address_b\(7) <= NOT \interleaver|address_b\(7);
\interleaver|ALT_INV_address_b\(6) <= NOT \interleaver|address_b\(6);
\interleaver|ALT_INV_address_b\(5) <= NOT \interleaver|address_b\(5);
\interleaver|ALT_INV_address_b\(4) <= NOT \interleaver|address_b\(4);
\interleaver|ALT_INV_address_b\(3) <= NOT \interleaver|address_b\(3);
\interleaver|ALT_INV_address_b\(2) <= NOT \interleaver|address_b\(2);
\interleaver|ALT_INV_address_b\(1) <= NOT \interleaver|address_b\(1);
\interleaver|ALT_INV_address_b\(0) <= NOT \interleaver|address_b\(0);
\interleaver|RAM_interleaver|altsyncram_component|auto_generated|ALT_INV_q_b\(0) <= NOT \interleaver|RAM_interleaver|altsyncram_component|auto_generated|q_b\(0);
\fec|ALT_INV_address_b[4]~DUPLICATE_q\ <= NOT \fec|address_b[4]~DUPLICATE_q\;
\fec|ALT_INV_holdCount[27]~DUPLICATE_q\ <= NOT \fec|holdCount[27]~DUPLICATE_q\;
\fec|ALT_INV_holdCount[28]~DUPLICATE_q\ <= NOT \fec|holdCount[28]~DUPLICATE_q\;
\fec|ALT_INV_holdCount[8]~DUPLICATE_q\ <= NOT \fec|holdCount[8]~DUPLICATE_q\;
\fec|ALT_INV_holdCount[10]~DUPLICATE_q\ <= NOT \fec|holdCount[10]~DUPLICATE_q\;
\fec|ALT_INV_holdCount[12]~DUPLICATE_q\ <= NOT \fec|holdCount[12]~DUPLICATE_q\;
\fec|ALT_INV_holdCount[13]~DUPLICATE_q\ <= NOT \fec|holdCount[13]~DUPLICATE_q\;
\fec|ALT_INV_holdCount[3]~DUPLICATE_q\ <= NOT \fec|holdCount[3]~DUPLICATE_q\;
\fec|ALT_INV_holdCount[4]~DUPLICATE_q\ <= NOT \fec|holdCount[4]~DUPLICATE_q\;
\fec|ALT_INV_holdCount[5]~DUPLICATE_q\ <= NOT \fec|holdCount[5]~DUPLICATE_q\;
\fec|ALT_INV_holdCount[6]~DUPLICATE_q\ <= NOT \fec|holdCount[6]~DUPLICATE_q\;
\fec|ALT_INV_holdC~DUPLICATE_q\ <= NOT \fec|holdC~DUPLICATE_q\;
\fec|ALT_INV_state_counter[2]~DUPLICATE_q\ <= NOT \fec|state_counter[2]~DUPLICATE_q\;
\fec|ALT_INV_state_reg.init~DUPLICATE_q\ <= NOT \fec|state_reg.init~DUPLICATE_q\;
\fec|ALT_INV_state_reg.shiftx~DUPLICATE_q\ <= NOT \fec|state_reg.shiftx~DUPLICATE_q\;
\fec|ALT_INV_shift_reg[1]~DUPLICATE_q\ <= NOT \fec|shift_reg[1]~DUPLICATE_q\;
\fec|ALT_INV_address_a[1]~DUPLICATE_q\ <= NOT \fec|address_a[1]~DUPLICATE_q\;
\fec|ALT_INV_address_a[6]~DUPLICATE_q\ <= NOT \fec|address_a[6]~DUPLICATE_q\;
\fec|ALT_INV_address_a[7]~DUPLICATE_q\ <= NOT \fec|address_a[7]~DUPLICATE_q\;
\fec|ALT_INV_holdCount[1]~DUPLICATE_q\ <= NOT \fec|holdCount[1]~DUPLICATE_q\;
\interleaver|ALT_INV_counter_b[8]~DUPLICATE_q\ <= NOT \interleaver|counter_b[8]~DUPLICATE_q\;
\interleaver|ALT_INV_counter_b[7]~DUPLICATE_q\ <= NOT \interleaver|counter_b[7]~DUPLICATE_q\;
\interleaver|ALT_INV_counter_a[4]~DUPLICATE_q\ <= NOT \interleaver|counter_a[4]~DUPLICATE_q\;
\interleaver|ALT_INV_counter_a[6]~DUPLICATE_q\ <= NOT \interleaver|counter_a[6]~DUPLICATE_q\;
\interleaver|ALT_INV_counter_a[7]~DUPLICATE_q\ <= NOT \interleaver|counter_a[7]~DUPLICATE_q\;
\interleaver|ALT_INV_address_b[8]~DUPLICATE_q\ <= NOT \interleaver|address_b[8]~DUPLICATE_q\;
\pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0) <= NOT \pll_clk|pll_inst|altera_pll_i|locked_wire\(0);
\ALT_INV_data_in~input_o\ <= NOT \data_in~input_o\;
\interleaver|ALT_INV_counter_a[2]~3_combout\ <= NOT \interleaver|counter_a[2]~3_combout\;
\prbs|ALT_INV_r_reg\(14) <= NOT \prbs|r_reg\(14);
\prbs|ALT_INV_r_reg\(12) <= NOT \prbs|r_reg\(12);
\prbs|ALT_INV_r_reg\(11) <= NOT \prbs|r_reg\(11);
\prbs|ALT_INV_r_reg\(8) <= NOT \prbs|r_reg\(8);
\prbs|ALT_INV_r_reg\(5) <= NOT \prbs|r_reg\(5);
\prbs|ALT_INV_r_reg\(4) <= NOT \prbs|r_reg\(4);
\prbs|ALT_INV_r_reg\(3) <= NOT \prbs|r_reg\(3);
\prbs|ALT_INV_r_reg\(2) <= NOT \prbs|r_reg\(2);
\fec|ALT_INV_address_b[2]~6_combout\ <= NOT \fec|address_b[2]~6_combout\;
\fec|ALT_INV_process_1~6_combout\ <= NOT \fec|process_1~6_combout\;
\fec|ALT_INV_Add2~2_combout\ <= NOT \fec|Add2~2_combout\;
\fec|ALT_INV_Add2~1_combout\ <= NOT \fec|Add2~1_combout\;
\fec|ALT_INV_LessThan2~2_combout\ <= NOT \fec|LessThan2~2_combout\;
\fec|ALT_INV_address_b[4]~4_combout\ <= NOT \fec|address_b[4]~4_combout\;
\fec|ALT_INV_Add2~0_combout\ <= NOT \fec|Add2~0_combout\;
\fec|ALT_INV_address_b[2]~3_combout\ <= NOT \fec|address_b[2]~3_combout\;
\fec|ALT_INV_address_b[2]~2_combout\ <= NOT \fec|address_b[2]~2_combout\;
\fec|ALT_INV_address_b[2]~1_combout\ <= NOT \fec|address_b[2]~1_combout\;
\fec|ALT_INV_process_1~5_combout\ <= NOT \fec|process_1~5_combout\;
\fec|ALT_INV_process_1~4_combout\ <= NOT \fec|process_1~4_combout\;
\fec|ALT_INV_process_1~3_combout\ <= NOT \fec|process_1~3_combout\;
\fec|ALT_INV_LessThan0~0_combout\ <= NOT \fec|LessThan0~0_combout\;
\fec|ALT_INV_Selector1~0_combout\ <= NOT \fec|Selector1~0_combout\;
\fec|ALT_INV_state_reg.addressb~q\ <= NOT \fec|state_reg.addressb~q\;
\fec|ALT_INV_address_b[2]~0_combout\ <= NOT \fec|address_b[2]~0_combout\;
\fec|ALT_INV_state_reg.idle~q\ <= NOT \fec|state_reg.idle~q\;
\fec|ALT_INV_process_1~2_combout\ <= NOT \fec|process_1~2_combout\;
\fec|ALT_INV_process_1~1_combout\ <= NOT \fec|process_1~1_combout\;
\prbs|ALT_INV_r_reg\(0) <= NOT \prbs|r_reg\(0);
\prbs|ALT_INV_r_reg\(1) <= NOT \prbs|r_reg\(1);
\fec|ALT_INV_Selector50~0_combout\ <= NOT \fec|Selector50~0_combout\;
\fec|ALT_INV_Equal2~0_combout\ <= NOT \fec|Equal2~0_combout\;
\fec|ALT_INV_LessThan2~1_combout\ <= NOT \fec|LessThan2~1_combout\;
\fec|ALT_INV_Equal1~0_combout\ <= NOT \fec|Equal1~0_combout\;
\fec|ALT_INV_address_b\(0) <= NOT \fec|address_b\(0);
\fec|ALT_INV_address_b\(1) <= NOT \fec|address_b\(1);
\fec|ALT_INV_address_b\(2) <= NOT \fec|address_b\(2);
\fec|ALT_INV_address_b\(3) <= NOT \fec|address_b\(3);
\fec|ALT_INV_address_b\(4) <= NOT \fec|address_b\(4);
\fec|ALT_INV_LessThan2~0_combout\ <= NOT \fec|LessThan2~0_combout\;
\fec|ALT_INV_process_1~0_combout\ <= NOT \fec|process_1~0_combout\;
\fec|ALT_INV_state_counter\(0) <= NOT \fec|state_counter\(0);
\fec|ALT_INV_Equal0~6_combout\ <= NOT \fec|Equal0~6_combout\;
\fec|ALT_INV_Equal0~5_combout\ <= NOT \fec|Equal0~5_combout\;
\fec|ALT_INV_holdCount\(21) <= NOT \fec|holdCount\(21);
\fec|ALT_INV_holdCount\(22) <= NOT \fec|holdCount\(22);
\fec|ALT_INV_holdCount\(23) <= NOT \fec|holdCount\(23);
\fec|ALT_INV_holdCount\(24) <= NOT \fec|holdCount\(24);
\fec|ALT_INV_holdCount\(25) <= NOT \fec|holdCount\(25);
\fec|ALT_INV_Equal0~4_combout\ <= NOT \fec|Equal0~4_combout\;
\fec|ALT_INV_holdCount\(26) <= NOT \fec|holdCount\(26);
\fec|ALT_INV_holdCount\(27) <= NOT \fec|holdCount\(27);
\fec|ALT_INV_holdCount\(28) <= NOT \fec|holdCount\(28);
\fec|ALT_INV_holdCount\(29) <= NOT \fec|holdCount\(29);
\fec|ALT_INV_holdCount\(30) <= NOT \fec|holdCount\(30);
\fec|ALT_INV_holdCount\(31) <= NOT \fec|holdCount\(31);
\fec|ALT_INV_Equal0~3_combout\ <= NOT \fec|Equal0~3_combout\;
\fec|ALT_INV_holdCount\(14) <= NOT \fec|holdCount\(14);
\fec|ALT_INV_holdCount\(15) <= NOT \fec|holdCount\(15);
\fec|ALT_INV_holdCount\(16) <= NOT \fec|holdCount\(16);
\fec|ALT_INV_holdCount\(17) <= NOT \fec|holdCount\(17);
\fec|ALT_INV_holdCount\(18) <= NOT \fec|holdCount\(18);
\fec|ALT_INV_holdCount\(19) <= NOT \fec|holdCount\(19);
\fec|ALT_INV_Equal0~2_combout\ <= NOT \fec|Equal0~2_combout\;
\fec|ALT_INV_holdCount\(8) <= NOT \fec|holdCount\(8);
\fec|ALT_INV_holdCount\(9) <= NOT \fec|holdCount\(9);
\fec|ALT_INV_holdCount\(10) <= NOT \fec|holdCount\(10);
\fec|ALT_INV_holdCount\(11) <= NOT \fec|holdCount\(11);
\fec|ALT_INV_holdCount\(12) <= NOT \fec|holdCount\(12);
\fec|ALT_INV_holdCount\(13) <= NOT \fec|holdCount\(13);
\fec|ALT_INV_Equal0~1_combout\ <= NOT \fec|Equal0~1_combout\;
\fec|ALT_INV_holdCount\(2) <= NOT \fec|holdCount\(2);
\fec|ALT_INV_holdCount\(3) <= NOT \fec|holdCount\(3);
\fec|ALT_INV_holdCount\(4) <= NOT \fec|holdCount\(4);
\fec|ALT_INV_holdCount\(5) <= NOT \fec|holdCount\(5);
\fec|ALT_INV_holdCount\(6) <= NOT \fec|holdCount\(6);
\fec|ALT_INV_holdCount\(7) <= NOT \fec|holdCount\(7);
\fec|ALT_INV_holdCount\(20) <= NOT \fec|holdCount\(20);
\fec|ALT_INV_Equal0~0_combout\ <= NOT \fec|Equal0~0_combout\;
\fec|ALT_INV_holdCount\(0) <= NOT \fec|holdCount\(0);
\fec|ALT_INV_state_reg.hold~q\ <= NOT \fec|state_reg.hold~q\;
\fec|ALT_INV_holdC~q\ <= NOT \fec|holdC~q\;
\fec|ALT_INV_state_counter\(1) <= NOT \fec|state_counter\(1);
\fec|ALT_INV_state_counter\(2) <= NOT \fec|state_counter\(2);
\fec|ALT_INV_state_reg.init~q\ <= NOT \fec|state_reg.init~q\;
\fec|ALT_INV_shift_reg\(2) <= NOT \fec|shift_reg\(2);
\fec|ALT_INV_state_reg.shiftx~q\ <= NOT \fec|state_reg.shiftx~q\;
\fec|ALT_INV_shift_reg\(5) <= NOT \fec|shift_reg\(5);
\fec|ALT_INV_state_reg.shifty~q\ <= NOT \fec|state_reg.shifty~q\;
\fec|ALT_INV_data_out_int~0_combout\ <= NOT \fec|data_out_int~0_combout\;
\fec|ALT_INV_shift_reg\(0) <= NOT \fec|shift_reg\(0);
\fec|ALT_INV_shift_reg\(3) <= NOT \fec|shift_reg\(3);
\fec|ALT_INV_shift_reg\(4) <= NOT \fec|shift_reg\(4);
\fec|ALT_INV_shift_reg\(1) <= NOT \fec|shift_reg\(1);
\interleaver|ALT_INV_counter_a[2]~0_combout\ <= NOT \interleaver|counter_a[2]~0_combout\;
\interleaver|ALT_INV_Selector3~0_combout\ <= NOT \interleaver|Selector3~0_combout\;
\interleaver|ALT_INV_address_a[4]~0_combout\ <= NOT \interleaver|address_a[4]~0_combout\;
\interleaver|ALT_INV_state_reg.idle~q\ <= NOT \interleaver|state_reg.idle~q\;
\fec|ALT_INV_data_out_valid_int~q\ <= NOT \fec|data_out_valid_int~q\;
\fec|ALT_INV_data_out_int~q\ <= NOT \fec|data_out_int~q\;
\interleaver|ALT_INV_state_reg.input_output~0_combout\ <= NOT \interleaver|state_reg.input_output~0_combout\;
\interleaver|ALT_INV_LessThan0~0_combout\ <= NOT \interleaver|LessThan0~0_combout\;
\interleaver|ALT_INV_state_reg.input_a~q\ <= NOT \interleaver|state_reg.input_a~q\;
\interleaver|ALT_INV_address_a\(8) <= NOT \interleaver|address_a\(8);

-- Location: IOOBUF_X10_Y45_N19
\data_out_I[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_I_int\(0),
	devoe => ww_devoe,
	o => ww_data_out_I(0));

-- Location: IOOBUF_X12_Y45_N36
\data_out_I[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_I_int\(1),
	devoe => ww_devoe,
	o => ww_data_out_I(1));

-- Location: IOOBUF_X12_Y45_N2
\data_out_I[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_I_int\(2),
	devoe => ww_devoe,
	o => ww_data_out_I(2));

-- Location: IOOBUF_X0_Y21_N5
\data_out_I[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_I_int\(3),
	devoe => ww_devoe,
	o => ww_data_out_I(3));

-- Location: IOOBUF_X14_Y45_N36
\data_out_I[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_I_int\(4),
	devoe => ww_devoe,
	o => ww_data_out_I(4));

-- Location: IOOBUF_X14_Y45_N19
\data_out_I[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_I_int\(5),
	devoe => ww_devoe,
	o => ww_data_out_I(5));

-- Location: IOOBUF_X12_Y45_N53
\data_out_I[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_I_int\(6),
	devoe => ww_devoe,
	o => ww_data_out_I(6));

-- Location: IOOBUF_X12_Y45_N19
\data_out_I[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_I_int\(7),
	devoe => ww_devoe,
	o => ww_data_out_I(7));

-- Location: IOOBUF_X36_Y45_N19
\data_out_I[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_I_int\(8),
	devoe => ww_devoe,
	o => ww_data_out_I(8));

-- Location: IOOBUF_X14_Y45_N53
\data_out_I[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_I_int\(9),
	devoe => ww_devoe,
	o => ww_data_out_I(9));

-- Location: IOOBUF_X8_Y45_N59
\data_out_I[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_I_int\(10),
	devoe => ww_devoe,
	o => ww_data_out_I(10));

-- Location: IOOBUF_X10_Y45_N2
\data_out_I[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_I_int\(11),
	devoe => ww_devoe,
	o => ww_data_out_I(11));

-- Location: IOOBUF_X18_Y45_N2
\data_out_I[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_I_int\(12),
	devoe => ww_devoe,
	o => ww_data_out_I(12));

-- Location: IOOBUF_X22_Y45_N36
\data_out_I[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_I_int\(13),
	devoe => ww_devoe,
	o => ww_data_out_I(13));

-- Location: IOOBUF_X16_Y45_N59
\data_out_I[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_I_int\(14),
	devoe => ww_devoe,
	o => ww_data_out_I(14));

-- Location: IOOBUF_X16_Y45_N93
\data_out_I[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_I_int\(15),
	devoe => ww_devoe,
	o => ww_data_out_I(15));

-- Location: IOOBUF_X0_Y20_N56
\data_out_Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_Q_int\(0),
	devoe => ww_devoe,
	o => ww_data_out_Q(0));

-- Location: IOOBUF_X20_Y45_N2
\data_out_Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_Q_int\(1),
	devoe => ww_devoe,
	o => ww_data_out_Q(1));

-- Location: IOOBUF_X16_Y45_N42
\data_out_Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_Q_int\(2),
	devoe => ww_devoe,
	o => ww_data_out_Q(2));

-- Location: IOOBUF_X32_Y45_N93
\data_out_Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_Q_int\(3),
	devoe => ww_devoe,
	o => ww_data_out_Q(3));

-- Location: IOOBUF_X18_Y45_N19
\data_out_Q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_Q_int\(4),
	devoe => ww_devoe,
	o => ww_data_out_Q(4));

-- Location: IOOBUF_X16_Y45_N76
\data_out_Q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_Q_int\(5),
	devoe => ww_devoe,
	o => ww_data_out_Q(5));

-- Location: IOOBUF_X32_Y45_N76
\data_out_Q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_Q_int\(6),
	devoe => ww_devoe,
	o => ww_data_out_Q(6));

-- Location: IOOBUF_X18_Y45_N36
\data_out_Q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_Q_int\(7),
	devoe => ww_devoe,
	o => ww_data_out_Q(7));

-- Location: IOOBUF_X10_Y45_N53
\data_out_Q[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_Q_int\(8),
	devoe => ww_devoe,
	o => ww_data_out_Q(8));

-- Location: IOOBUF_X20_Y45_N36
\data_out_Q[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_Q_int\(9),
	devoe => ww_devoe,
	o => ww_data_out_Q(9));

-- Location: IOOBUF_X20_Y45_N19
\data_out_Q[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_Q_int\(10),
	devoe => ww_devoe,
	o => ww_data_out_Q(10));

-- Location: IOOBUF_X22_Y45_N19
\data_out_Q[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_Q_int\(11),
	devoe => ww_devoe,
	o => ww_data_out_Q(11));

-- Location: IOOBUF_X18_Y45_N53
\data_out_Q[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_Q_int\(12),
	devoe => ww_devoe,
	o => ww_data_out_Q(12));

-- Location: IOOBUF_X10_Y45_N36
\data_out_Q[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_Q_int\(13),
	devoe => ww_devoe,
	o => ww_data_out_Q(13));

-- Location: IOOBUF_X32_Y45_N42
\data_out_Q[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_Q_int\(14),
	devoe => ww_devoe,
	o => ww_data_out_Q(14));

-- Location: IOOBUF_X22_Y45_N2
\data_out_Q[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_Q_int\(15),
	devoe => ww_devoe,
	o => ww_data_out_Q(15));

-- Location: IOOBUF_X20_Y45_N53
\data_out_valid~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \modulator|data_out_valid_int~q\,
	devoe => ww_devoe,
	o => ww_data_out_valid);

-- Location: IOIBUF_X14_Y45_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLLREFCLKSELECT_X0_Y44_N0
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: IOIBUF_X8_Y45_N41
\rset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rset,
	o => \rset~input_o\);

-- Location: FRACTIONALPLL_X0_Y38_N0
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "none",
	nreset_invert => "true",
	output_clock_frequency => "300.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 4000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 10,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "m_cnt",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 6,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 6,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 1,
	pll_n_cnt_lo_div => 1,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "50.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \pll_clk|pll_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => \rset~input_o\,
	refclkin => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \pll_clk|pll_inst|altera_pll_i|fboutclk_wire\(0),
	lock => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	tclk => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y42_N0
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y37_N1
\pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 2,
	dprio0_cnt_lo_div => 1,
	dprio0_cnt_odd_div_even_duty_en => "true",
	duty_cycle => 50,
	output_clock_frequency => "100.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 8)
-- pragma translate_on
PORT MAP (
	nen0 => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN8\,
	tclk0 => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \pll_clk|pll_inst|altera_pll_i|outclk_wire\(0));

-- Location: CLKCTRL_G14
\pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \pll_clk|pll_inst|altera_pll_i|outclk_wire\(0),
	outclk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\);

-- Location: LABCELL_X14_Y44_N30
\modulator|data_out_I_int[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_I_int[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \modulator|data_out_I_int[0]~feeder_combout\);

-- Location: LABCELL_X6_Y43_N0
\interleaver|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add0~17_sumout\ = SUM(( \interleaver|counter_a\(0) ) + ( VCC ) + ( !VCC ))
-- \interleaver|Add0~18\ = CARRY(( \interleaver|counter_a\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_counter_a\(0),
	cin => GND,
	sumout => \interleaver|Add0~17_sumout\,
	cout => \interleaver|Add0~18\);

-- Location: LABCELL_X7_Y43_N0
\interleaver|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add3~33_sumout\ = SUM(( \interleaver|counter_b\(0) ) + ( VCC ) + ( !VCC ))
-- \interleaver|Add3~34\ = CARRY(( \interleaver|counter_b\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_counter_b\(0),
	cin => GND,
	sumout => \interleaver|Add3~33_sumout\,
	cout => \interleaver|Add3~34\);

-- Location: LABCELL_X7_Y43_N48
\interleaver|counter_a[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|counter_a[2]~0_combout\ = ( \interleaver|counter_b\(4) & ( (\interleaver|counter_b\(1) & (\interleaver|counter_b\(2) & (\interleaver|counter_b\(0) & \interleaver|counter_b\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_counter_b\(1),
	datab => \interleaver|ALT_INV_counter_b\(2),
	datac => \interleaver|ALT_INV_counter_b\(0),
	datad => \interleaver|ALT_INV_counter_b\(3),
	dataf => \interleaver|ALT_INV_counter_b\(4),
	combout => \interleaver|counter_a[2]~0_combout\);

-- Location: FF_X7_Y43_N25
\interleaver|counter_b[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add3~5_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~2_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_b[8]~DUPLICATE_q\);

-- Location: FF_X7_Y43_N22
\interleaver|counter_b[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add3~1_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~2_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_b[7]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y43_N30
\interleaver|counter_a[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|counter_a[2]~2_combout\ = ( \interleaver|state_reg.input_output~q\ & ( \interleaver|counter_b\(6) & ( (\interleaver|counter_b[8]~DUPLICATE_q\ & (((\interleaver|counter_a[2]~0_combout\ & \interleaver|counter_b\(5))) # 
-- (\interleaver|counter_b[7]~DUPLICATE_q\))) ) ) ) # ( \interleaver|state_reg.input_output~q\ & ( !\interleaver|counter_b\(6) & ( (\interleaver|counter_b[8]~DUPLICATE_q\ & \interleaver|counter_b[7]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_counter_a[2]~0_combout\,
	datab => \interleaver|ALT_INV_counter_b[8]~DUPLICATE_q\,
	datac => \interleaver|ALT_INV_counter_b[7]~DUPLICATE_q\,
	datad => \interleaver|ALT_INV_counter_b\(5),
	datae => \interleaver|ALT_INV_state_reg.input_output~q\,
	dataf => \interleaver|ALT_INV_counter_b\(6),
	combout => \interleaver|counter_a[2]~2_combout\);

-- Location: FF_X7_Y43_N2
\interleaver|counter_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add3~33_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~2_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_b\(0));

-- Location: LABCELL_X7_Y43_N3
\interleaver|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add3~29_sumout\ = SUM(( \interleaver|counter_b\(1) ) + ( GND ) + ( \interleaver|Add3~34\ ))
-- \interleaver|Add3~30\ = CARRY(( \interleaver|counter_b\(1) ) + ( GND ) + ( \interleaver|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_counter_b\(1),
	cin => \interleaver|Add3~34\,
	sumout => \interleaver|Add3~29_sumout\,
	cout => \interleaver|Add3~30\);

-- Location: FF_X7_Y43_N5
\interleaver|counter_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add3~29_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~2_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_b\(1));

-- Location: LABCELL_X7_Y43_N6
\interleaver|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add3~25_sumout\ = SUM(( \interleaver|counter_b\(2) ) + ( GND ) + ( \interleaver|Add3~30\ ))
-- \interleaver|Add3~26\ = CARRY(( \interleaver|counter_b\(2) ) + ( GND ) + ( \interleaver|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_counter_b\(2),
	cin => \interleaver|Add3~30\,
	sumout => \interleaver|Add3~25_sumout\,
	cout => \interleaver|Add3~26\);

-- Location: FF_X7_Y43_N8
\interleaver|counter_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add3~25_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~2_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_b\(2));

-- Location: LABCELL_X7_Y43_N9
\interleaver|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add3~21_sumout\ = SUM(( \interleaver|counter_b\(3) ) + ( GND ) + ( \interleaver|Add3~26\ ))
-- \interleaver|Add3~22\ = CARRY(( \interleaver|counter_b\(3) ) + ( GND ) + ( \interleaver|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_counter_b\(3),
	cin => \interleaver|Add3~26\,
	sumout => \interleaver|Add3~21_sumout\,
	cout => \interleaver|Add3~22\);

-- Location: FF_X7_Y43_N10
\interleaver|counter_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add3~21_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~2_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_b\(3));

-- Location: LABCELL_X7_Y43_N12
\interleaver|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add3~17_sumout\ = SUM(( \interleaver|counter_b\(4) ) + ( GND ) + ( \interleaver|Add3~22\ ))
-- \interleaver|Add3~18\ = CARRY(( \interleaver|counter_b\(4) ) + ( GND ) + ( \interleaver|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_counter_b\(4),
	cin => \interleaver|Add3~22\,
	sumout => \interleaver|Add3~17_sumout\,
	cout => \interleaver|Add3~18\);

-- Location: FF_X7_Y43_N14
\interleaver|counter_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add3~17_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~2_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_b\(4));

-- Location: LABCELL_X7_Y43_N15
\interleaver|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add3~13_sumout\ = SUM(( \interleaver|counter_b\(5) ) + ( GND ) + ( \interleaver|Add3~18\ ))
-- \interleaver|Add3~14\ = CARRY(( \interleaver|counter_b\(5) ) + ( GND ) + ( \interleaver|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_counter_b\(5),
	cin => \interleaver|Add3~18\,
	sumout => \interleaver|Add3~13_sumout\,
	cout => \interleaver|Add3~14\);

-- Location: FF_X7_Y43_N17
\interleaver|counter_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add3~13_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~2_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_b\(5));

-- Location: LABCELL_X7_Y43_N18
\interleaver|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add3~9_sumout\ = SUM(( \interleaver|counter_b\(6) ) + ( GND ) + ( \interleaver|Add3~14\ ))
-- \interleaver|Add3~10\ = CARRY(( \interleaver|counter_b\(6) ) + ( GND ) + ( \interleaver|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_counter_b\(6),
	cin => \interleaver|Add3~14\,
	sumout => \interleaver|Add3~9_sumout\,
	cout => \interleaver|Add3~10\);

-- Location: FF_X7_Y43_N20
\interleaver|counter_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add3~9_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~2_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_b\(6));

-- Location: LABCELL_X7_Y43_N21
\interleaver|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add3~1_sumout\ = SUM(( \interleaver|counter_b\(7) ) + ( GND ) + ( \interleaver|Add3~10\ ))
-- \interleaver|Add3~2\ = CARRY(( \interleaver|counter_b\(7) ) + ( GND ) + ( \interleaver|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_counter_b\(7),
	cin => \interleaver|Add3~10\,
	sumout => \interleaver|Add3~1_sumout\,
	cout => \interleaver|Add3~2\);

-- Location: FF_X7_Y43_N23
\interleaver|counter_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add3~1_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~2_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_b\(7));

-- Location: LABCELL_X7_Y43_N24
\interleaver|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add3~5_sumout\ = SUM(( \interleaver|counter_b\(8) ) + ( GND ) + ( \interleaver|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_counter_b\(8),
	cin => \interleaver|Add3~2\,
	sumout => \interleaver|Add3~5_sumout\);

-- Location: FF_X7_Y43_N26
\interleaver|counter_b[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add3~5_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~2_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_b\(8));

-- Location: LABCELL_X5_Y44_N0
\fec|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~1_sumout\ = SUM(( \fec|holdCount\(0) ) + ( VCC ) + ( !VCC ))
-- \fec|Add1~2\ = CARRY(( \fec|holdCount\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec|ALT_INV_holdCount\(0),
	cin => GND,
	sumout => \fec|Add1~1_sumout\,
	cout => \fec|Add1~2\);

-- Location: LABCELL_X6_Y42_N42
\fec|Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector42~0_combout\ = ( \fec|Equal0~6_combout\ & ( (\fec|state_reg.hold~q\ & ((\fec|Equal0~0_combout\) # (\fec|Add1~1_sumout\))) ) ) # ( !\fec|Equal0~6_combout\ & ( (\fec|Add1~1_sumout\ & \fec|state_reg.hold~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_Add1~1_sumout\,
	datac => \fec|ALT_INV_state_reg.hold~q\,
	datad => \fec|ALT_INV_Equal0~0_combout\,
	dataf => \fec|ALT_INV_Equal0~6_combout\,
	combout => \fec|Selector42~0_combout\);

-- Location: FF_X6_Y42_N19
\fec|state_reg.init~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|state_reg~16_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|state_reg.init~DUPLICATE_q\);

-- Location: LABCELL_X6_Y44_N27
\fec|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector11~0_combout\ = ( \fec|state_reg.init~DUPLICATE_q\ & ( \fec|state_reg.hold~q\ ) ) # ( !\fec|state_reg.init~DUPLICATE_q\ & ( \fec|state_reg.hold~q\ ) ) # ( \fec|state_reg.init~DUPLICATE_q\ & ( !\fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \fec|ALT_INV_state_reg.init~DUPLICATE_q\,
	dataf => \fec|ALT_INV_state_reg.hold~q\,
	combout => \fec|Selector11~0_combout\);

-- Location: FF_X6_Y42_N43
\fec|holdCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector42~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(0));

-- Location: LABCELL_X5_Y44_N3
\fec|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~5_sumout\ = SUM(( \fec|holdCount[1]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~2\ ))
-- \fec|Add1~6\ = CARRY(( \fec|holdCount[1]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_holdCount[1]~DUPLICATE_q\,
	cin => \fec|Add1~2\,
	sumout => \fec|Add1~5_sumout\,
	cout => \fec|Add1~6\);

-- Location: LABCELL_X5_Y44_N6
\fec|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~33_sumout\ = SUM(( \fec|holdCount\(2) ) + ( GND ) + ( \fec|Add1~6\ ))
-- \fec|Add1~34\ = CARRY(( \fec|holdCount\(2) ) + ( GND ) + ( \fec|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_holdCount\(2),
	cin => \fec|Add1~6\,
	sumout => \fec|Add1~33_sumout\,
	cout => \fec|Add1~34\);

-- Location: MLABCELL_X4_Y44_N45
\fec|Selector40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector40~0_combout\ = (\fec|state_reg.hold~q\ & \fec|Add1~33_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	datac => \fec|ALT_INV_Add1~33_sumout\,
	combout => \fec|Selector40~0_combout\);

-- Location: FF_X4_Y44_N46
\fec|holdCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector40~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(2));

-- Location: LABCELL_X5_Y44_N9
\fec|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~29_sumout\ = SUM(( \fec|holdCount[3]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~34\ ))
-- \fec|Add1~30\ = CARRY(( \fec|holdCount[3]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_holdCount[3]~DUPLICATE_q\,
	cin => \fec|Add1~34\,
	sumout => \fec|Add1~29_sumout\,
	cout => \fec|Add1~30\);

-- Location: MLABCELL_X4_Y44_N42
\fec|Selector39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector39~0_combout\ = (\fec|state_reg.hold~q\ & \fec|Add1~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	datac => \fec|ALT_INV_Add1~29_sumout\,
	combout => \fec|Selector39~0_combout\);

-- Location: FF_X4_Y44_N43
\fec|holdCount[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector39~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount[3]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y44_N12
\fec|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~25_sumout\ = SUM(( \fec|holdCount[4]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~30\ ))
-- \fec|Add1~26\ = CARRY(( \fec|holdCount[4]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_holdCount[4]~DUPLICATE_q\,
	cin => \fec|Add1~30\,
	sumout => \fec|Add1~25_sumout\,
	cout => \fec|Add1~26\);

-- Location: MLABCELL_X4_Y44_N39
\fec|Selector38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector38~0_combout\ = (\fec|state_reg.hold~q\ & \fec|Add1~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	datac => \fec|ALT_INV_Add1~25_sumout\,
	combout => \fec|Selector38~0_combout\);

-- Location: FF_X4_Y44_N40
\fec|holdCount[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector38~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount[4]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y44_N15
\fec|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~21_sumout\ = SUM(( \fec|holdCount[5]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~26\ ))
-- \fec|Add1~22\ = CARRY(( \fec|holdCount[5]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_holdCount[5]~DUPLICATE_q\,
	cin => \fec|Add1~26\,
	sumout => \fec|Add1~21_sumout\,
	cout => \fec|Add1~22\);

-- Location: MLABCELL_X4_Y44_N36
\fec|Selector37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector37~0_combout\ = (\fec|state_reg.hold~q\ & \fec|Add1~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	datac => \fec|ALT_INV_Add1~21_sumout\,
	combout => \fec|Selector37~0_combout\);

-- Location: FF_X4_Y44_N37
\fec|holdCount[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector37~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount[5]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y44_N18
\fec|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~17_sumout\ = SUM(( \fec|holdCount[6]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~22\ ))
-- \fec|Add1~18\ = CARRY(( \fec|holdCount[6]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec|ALT_INV_holdCount[6]~DUPLICATE_q\,
	cin => \fec|Add1~22\,
	sumout => \fec|Add1~17_sumout\,
	cout => \fec|Add1~18\);

-- Location: MLABCELL_X4_Y44_N3
\fec|Selector36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector36~0_combout\ = ( \fec|Add1~17_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Add1~17_sumout\,
	combout => \fec|Selector36~0_combout\);

-- Location: FF_X4_Y44_N4
\fec|holdCount[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector36~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount[6]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y44_N21
\fec|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~13_sumout\ = SUM(( \fec|holdCount\(7) ) + ( GND ) + ( \fec|Add1~18\ ))
-- \fec|Add1~14\ = CARRY(( \fec|holdCount\(7) ) + ( GND ) + ( \fec|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_holdCount\(7),
	cin => \fec|Add1~18\,
	sumout => \fec|Add1~13_sumout\,
	cout => \fec|Add1~14\);

-- Location: MLABCELL_X4_Y44_N0
\fec|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector35~0_combout\ = (\fec|state_reg.hold~q\ & \fec|Add1~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	datac => \fec|ALT_INV_Add1~13_sumout\,
	combout => \fec|Selector35~0_combout\);

-- Location: FF_X4_Y44_N1
\fec|holdCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector35~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(7));

-- Location: LABCELL_X5_Y44_N24
\fec|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~57_sumout\ = SUM(( \fec|holdCount[8]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~14\ ))
-- \fec|Add1~58\ = CARRY(( \fec|holdCount[8]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_holdCount[8]~DUPLICATE_q\,
	cin => \fec|Add1~14\,
	sumout => \fec|Add1~57_sumout\,
	cout => \fec|Add1~58\);

-- Location: MLABCELL_X4_Y44_N6
\fec|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector34~0_combout\ = ( \fec|Add1~57_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Add1~57_sumout\,
	combout => \fec|Selector34~0_combout\);

-- Location: FF_X4_Y44_N7
\fec|holdCount[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector34~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount[8]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y44_N27
\fec|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~53_sumout\ = SUM(( \fec|holdCount\(9) ) + ( GND ) + ( \fec|Add1~58\ ))
-- \fec|Add1~54\ = CARRY(( \fec|holdCount\(9) ) + ( GND ) + ( \fec|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec|ALT_INV_holdCount\(9),
	cin => \fec|Add1~58\,
	sumout => \fec|Add1~53_sumout\,
	cout => \fec|Add1~54\);

-- Location: MLABCELL_X4_Y44_N9
\fec|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector33~0_combout\ = ( \fec|Add1~53_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Add1~53_sumout\,
	combout => \fec|Selector33~0_combout\);

-- Location: FF_X4_Y44_N10
\fec|holdCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector33~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(9));

-- Location: LABCELL_X5_Y44_N30
\fec|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~49_sumout\ = SUM(( \fec|holdCount[10]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~54\ ))
-- \fec|Add1~50\ = CARRY(( \fec|holdCount[10]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec|ALT_INV_holdCount[10]~DUPLICATE_q\,
	cin => \fec|Add1~54\,
	sumout => \fec|Add1~49_sumout\,
	cout => \fec|Add1~50\);

-- Location: MLABCELL_X4_Y44_N33
\fec|Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector32~0_combout\ = ( \fec|Add1~49_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Add1~49_sumout\,
	combout => \fec|Selector32~0_combout\);

-- Location: FF_X4_Y44_N34
\fec|holdCount[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector32~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount[10]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y44_N33
\fec|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~45_sumout\ = SUM(( \fec|holdCount\(11) ) + ( GND ) + ( \fec|Add1~50\ ))
-- \fec|Add1~46\ = CARRY(( \fec|holdCount\(11) ) + ( GND ) + ( \fec|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_holdCount\(11),
	cin => \fec|Add1~50\,
	sumout => \fec|Add1~45_sumout\,
	cout => \fec|Add1~46\);

-- Location: MLABCELL_X4_Y44_N30
\fec|Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector31~0_combout\ = ( \fec|Add1~45_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Add1~45_sumout\,
	combout => \fec|Selector31~0_combout\);

-- Location: FF_X4_Y44_N31
\fec|holdCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector31~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(11));

-- Location: LABCELL_X5_Y44_N36
\fec|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~41_sumout\ = SUM(( \fec|holdCount[12]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~46\ ))
-- \fec|Add1~42\ = CARRY(( \fec|holdCount[12]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_holdCount[12]~DUPLICATE_q\,
	cin => \fec|Add1~46\,
	sumout => \fec|Add1~41_sumout\,
	cout => \fec|Add1~42\);

-- Location: MLABCELL_X4_Y44_N27
\fec|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector30~0_combout\ = (\fec|state_reg.hold~q\ & \fec|Add1~41_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	datac => \fec|ALT_INV_Add1~41_sumout\,
	combout => \fec|Selector30~0_combout\);

-- Location: FF_X4_Y44_N28
\fec|holdCount[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector30~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount[12]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y44_N39
\fec|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~37_sumout\ = SUM(( \fec|holdCount[13]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~42\ ))
-- \fec|Add1~38\ = CARRY(( \fec|holdCount[13]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_holdCount[13]~DUPLICATE_q\,
	cin => \fec|Add1~42\,
	sumout => \fec|Add1~37_sumout\,
	cout => \fec|Add1~38\);

-- Location: MLABCELL_X4_Y44_N24
\fec|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector29~0_combout\ = ( \fec|Add1~37_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Add1~37_sumout\,
	combout => \fec|Selector29~0_combout\);

-- Location: FF_X4_Y44_N25
\fec|holdCount[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector29~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount[13]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y44_N42
\fec|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~81_sumout\ = SUM(( \fec|holdCount\(14) ) + ( GND ) + ( \fec|Add1~38\ ))
-- \fec|Add1~82\ = CARRY(( \fec|holdCount\(14) ) + ( GND ) + ( \fec|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec|ALT_INV_holdCount\(14),
	cin => \fec|Add1~38\,
	sumout => \fec|Add1~81_sumout\,
	cout => \fec|Add1~82\);

-- Location: LABCELL_X6_Y44_N48
\fec|Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector28~0_combout\ = (\fec|state_reg.hold~q\ & \fec|Add1~81_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	datad => \fec|ALT_INV_Add1~81_sumout\,
	combout => \fec|Selector28~0_combout\);

-- Location: FF_X6_Y44_N50
\fec|holdCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector28~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(14));

-- Location: LABCELL_X5_Y44_N45
\fec|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~77_sumout\ = SUM(( \fec|holdCount\(15) ) + ( GND ) + ( \fec|Add1~82\ ))
-- \fec|Add1~78\ = CARRY(( \fec|holdCount\(15) ) + ( GND ) + ( \fec|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_holdCount\(15),
	cin => \fec|Add1~82\,
	sumout => \fec|Add1~77_sumout\,
	cout => \fec|Add1~78\);

-- Location: LABCELL_X6_Y44_N30
\fec|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector27~0_combout\ = ( \fec|Add1~77_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Add1~77_sumout\,
	combout => \fec|Selector27~0_combout\);

-- Location: FF_X6_Y44_N32
\fec|holdCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector27~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(15));

-- Location: LABCELL_X5_Y44_N48
\fec|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~73_sumout\ = SUM(( \fec|holdCount\(16) ) + ( GND ) + ( \fec|Add1~78\ ))
-- \fec|Add1~74\ = CARRY(( \fec|holdCount\(16) ) + ( GND ) + ( \fec|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_holdCount\(16),
	cin => \fec|Add1~78\,
	sumout => \fec|Add1~73_sumout\,
	cout => \fec|Add1~74\);

-- Location: LABCELL_X6_Y44_N51
\fec|Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector26~0_combout\ = (\fec|state_reg.hold~q\ & \fec|Add1~73_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	datac => \fec|ALT_INV_Add1~73_sumout\,
	combout => \fec|Selector26~0_combout\);

-- Location: FF_X6_Y44_N53
\fec|holdCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector26~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(16));

-- Location: LABCELL_X5_Y44_N51
\fec|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~69_sumout\ = SUM(( \fec|holdCount\(17) ) + ( GND ) + ( \fec|Add1~74\ ))
-- \fec|Add1~70\ = CARRY(( \fec|holdCount\(17) ) + ( GND ) + ( \fec|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec|ALT_INV_holdCount\(17),
	cin => \fec|Add1~74\,
	sumout => \fec|Add1~69_sumout\,
	cout => \fec|Add1~70\);

-- Location: LABCELL_X6_Y44_N15
\fec|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector25~0_combout\ = ( \fec|Add1~69_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Add1~69_sumout\,
	combout => \fec|Selector25~0_combout\);

-- Location: FF_X6_Y44_N17
\fec|holdCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector25~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(17));

-- Location: LABCELL_X5_Y44_N54
\fec|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~65_sumout\ = SUM(( \fec|holdCount\(18) ) + ( GND ) + ( \fec|Add1~70\ ))
-- \fec|Add1~66\ = CARRY(( \fec|holdCount\(18) ) + ( GND ) + ( \fec|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec|ALT_INV_holdCount\(18),
	cin => \fec|Add1~70\,
	sumout => \fec|Add1~65_sumout\,
	cout => \fec|Add1~66\);

-- Location: LABCELL_X6_Y44_N12
\fec|Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector24~0_combout\ = ( \fec|Add1~65_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Add1~65_sumout\,
	combout => \fec|Selector24~0_combout\);

-- Location: FF_X6_Y44_N14
\fec|holdCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector24~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(18));

-- Location: LABCELL_X5_Y44_N57
\fec|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~61_sumout\ = SUM(( \fec|holdCount\(19) ) + ( GND ) + ( \fec|Add1~66\ ))
-- \fec|Add1~62\ = CARRY(( \fec|holdCount\(19) ) + ( GND ) + ( \fec|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec|ALT_INV_holdCount\(19),
	cin => \fec|Add1~66\,
	sumout => \fec|Add1~61_sumout\,
	cout => \fec|Add1~62\);

-- Location: LABCELL_X6_Y44_N9
\fec|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector23~0_combout\ = ( \fec|Add1~61_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Add1~61_sumout\,
	combout => \fec|Selector23~0_combout\);

-- Location: FF_X6_Y44_N11
\fec|holdCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector23~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(19));

-- Location: LABCELL_X6_Y44_N54
\fec|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Equal0~3_combout\ = ( !\fec|holdCount\(19) & ( !\fec|holdCount\(15) & ( (!\fec|holdCount\(14) & (!\fec|holdCount\(18) & (!\fec|holdCount\(16) & !\fec|holdCount\(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_holdCount\(14),
	datab => \fec|ALT_INV_holdCount\(18),
	datac => \fec|ALT_INV_holdCount\(16),
	datad => \fec|ALT_INV_holdCount\(17),
	datae => \fec|ALT_INV_holdCount\(19),
	dataf => \fec|ALT_INV_holdCount\(15),
	combout => \fec|Equal0~3_combout\);

-- Location: FF_X4_Y44_N26
\fec|holdCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector29~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(13));

-- Location: FF_X4_Y44_N29
\fec|holdCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector30~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(12));

-- Location: FF_X4_Y44_N8
\fec|holdCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector34~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(8));

-- Location: FF_X4_Y44_N35
\fec|holdCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector32~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(10));

-- Location: MLABCELL_X4_Y44_N12
\fec|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Equal0~2_combout\ = ( !\fec|holdCount\(9) & ( !\fec|holdCount\(10) & ( (!\fec|holdCount\(13) & (!\fec|holdCount\(11) & (!\fec|holdCount\(12) & !\fec|holdCount\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_holdCount\(13),
	datab => \fec|ALT_INV_holdCount\(11),
	datac => \fec|ALT_INV_holdCount\(12),
	datad => \fec|ALT_INV_holdCount\(8),
	datae => \fec|ALT_INV_holdCount\(9),
	dataf => \fec|ALT_INV_holdCount\(10),
	combout => \fec|Equal0~2_combout\);

-- Location: LABCELL_X5_Y43_N0
\fec|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~9_sumout\ = SUM(( \fec|holdCount\(20) ) + ( GND ) + ( \fec|Add1~62\ ))
-- \fec|Add1~10\ = CARRY(( \fec|holdCount\(20) ) + ( GND ) + ( \fec|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_holdCount\(20),
	cin => \fec|Add1~62\,
	sumout => \fec|Add1~9_sumout\,
	cout => \fec|Add1~10\);

-- Location: LABCELL_X6_Y44_N33
\fec|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector22~0_combout\ = (\fec|state_reg.hold~q\ & \fec|Add1~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	datac => \fec|ALT_INV_Add1~9_sumout\,
	combout => \fec|Selector22~0_combout\);

-- Location: FF_X6_Y44_N35
\fec|holdCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector22~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(20));

-- Location: LABCELL_X5_Y43_N3
\fec|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~125_sumout\ = SUM(( \fec|holdCount\(21) ) + ( GND ) + ( \fec|Add1~10\ ))
-- \fec|Add1~126\ = CARRY(( \fec|holdCount\(21) ) + ( GND ) + ( \fec|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_holdCount\(21),
	cin => \fec|Add1~10\,
	sumout => \fec|Add1~125_sumout\,
	cout => \fec|Add1~126\);

-- Location: LABCELL_X6_Y44_N42
\fec|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector21~0_combout\ = ( \fec|Add1~125_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_state_reg.hold~q\,
	datae => \fec|ALT_INV_Add1~125_sumout\,
	combout => \fec|Selector21~0_combout\);

-- Location: FF_X6_Y44_N43
\fec|holdCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector21~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(21));

-- Location: LABCELL_X5_Y43_N6
\fec|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~121_sumout\ = SUM(( \fec|holdCount\(22) ) + ( GND ) + ( \fec|Add1~126\ ))
-- \fec|Add1~122\ = CARRY(( \fec|holdCount\(22) ) + ( GND ) + ( \fec|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec|ALT_INV_holdCount\(22),
	cin => \fec|Add1~126\,
	sumout => \fec|Add1~121_sumout\,
	cout => \fec|Add1~122\);

-- Location: LABCELL_X5_Y43_N57
\fec|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector20~0_combout\ = ( \fec|Add1~121_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Add1~121_sumout\,
	combout => \fec|Selector20~0_combout\);

-- Location: FF_X5_Y43_N59
\fec|holdCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector20~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(22));

-- Location: LABCELL_X5_Y43_N9
\fec|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~117_sumout\ = SUM(( \fec|holdCount\(23) ) + ( GND ) + ( \fec|Add1~122\ ))
-- \fec|Add1~118\ = CARRY(( \fec|holdCount\(23) ) + ( GND ) + ( \fec|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec|ALT_INV_holdCount\(23),
	cin => \fec|Add1~122\,
	sumout => \fec|Add1~117_sumout\,
	cout => \fec|Add1~118\);

-- Location: LABCELL_X5_Y43_N54
\fec|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector19~0_combout\ = ( \fec|Add1~117_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Add1~117_sumout\,
	combout => \fec|Selector19~0_combout\);

-- Location: FF_X5_Y43_N56
\fec|holdCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector19~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(23));

-- Location: LABCELL_X5_Y43_N12
\fec|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~113_sumout\ = SUM(( \fec|holdCount\(24) ) + ( GND ) + ( \fec|Add1~118\ ))
-- \fec|Add1~114\ = CARRY(( \fec|holdCount\(24) ) + ( GND ) + ( \fec|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_holdCount\(24),
	cin => \fec|Add1~118\,
	sumout => \fec|Add1~113_sumout\,
	cout => \fec|Add1~114\);

-- Location: LABCELL_X5_Y43_N51
\fec|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector18~0_combout\ = ( \fec|Add1~113_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Add1~113_sumout\,
	combout => \fec|Selector18~0_combout\);

-- Location: FF_X5_Y43_N53
\fec|holdCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector18~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(24));

-- Location: LABCELL_X5_Y43_N15
\fec|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~109_sumout\ = SUM(( \fec|holdCount\(25) ) + ( GND ) + ( \fec|Add1~114\ ))
-- \fec|Add1~110\ = CARRY(( \fec|holdCount\(25) ) + ( GND ) + ( \fec|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec|ALT_INV_holdCount\(25),
	cin => \fec|Add1~114\,
	sumout => \fec|Add1~109_sumout\,
	cout => \fec|Add1~110\);

-- Location: LABCELL_X5_Y43_N36
\fec|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector17~0_combout\ = ( \fec|Add1~109_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Add1~109_sumout\,
	combout => \fec|Selector17~0_combout\);

-- Location: FF_X5_Y43_N38
\fec|holdCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector17~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(25));

-- Location: LABCELL_X5_Y43_N48
\fec|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Equal0~5_combout\ = ( !\fec|holdCount\(24) & ( (!\fec|holdCount\(25) & (!\fec|holdCount\(22) & (!\fec|holdCount\(23) & !\fec|holdCount\(21)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_holdCount\(25),
	datab => \fec|ALT_INV_holdCount\(22),
	datac => \fec|ALT_INV_holdCount\(23),
	datad => \fec|ALT_INV_holdCount\(21),
	dataf => \fec|ALT_INV_holdCount\(24),
	combout => \fec|Equal0~5_combout\);

-- Location: FF_X4_Y44_N5
\fec|holdCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector36~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(6));

-- Location: FF_X4_Y44_N38
\fec|holdCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector37~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(5));

-- Location: FF_X4_Y44_N44
\fec|holdCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector39~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(3));

-- Location: FF_X4_Y44_N41
\fec|holdCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector38~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(4));

-- Location: MLABCELL_X4_Y44_N48
\fec|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Equal0~1_combout\ = ( !\fec|holdCount\(7) & ( !\fec|holdCount\(4) & ( (!\fec|holdCount\(6) & (!\fec|holdCount\(2) & (!\fec|holdCount\(5) & !\fec|holdCount\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_holdCount\(6),
	datab => \fec|ALT_INV_holdCount\(2),
	datac => \fec|ALT_INV_holdCount\(5),
	datad => \fec|ALT_INV_holdCount\(3),
	datae => \fec|ALT_INV_holdCount\(7),
	dataf => \fec|ALT_INV_holdCount\(4),
	combout => \fec|Equal0~1_combout\);

-- Location: LABCELL_X5_Y43_N18
\fec|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~105_sumout\ = SUM(( \fec|holdCount\(26) ) + ( GND ) + ( \fec|Add1~110\ ))
-- \fec|Add1~106\ = CARRY(( \fec|holdCount\(26) ) + ( GND ) + ( \fec|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec|ALT_INV_holdCount\(26),
	cin => \fec|Add1~110\,
	sumout => \fec|Add1~105_sumout\,
	cout => \fec|Add1~106\);

-- Location: LABCELL_X6_Y44_N6
\fec|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector16~0_combout\ = ( \fec|Add1~105_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Add1~105_sumout\,
	combout => \fec|Selector16~0_combout\);

-- Location: FF_X6_Y44_N7
\fec|holdCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector16~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(26));

-- Location: LABCELL_X5_Y43_N21
\fec|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~101_sumout\ = SUM(( \fec|holdCount[27]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~106\ ))
-- \fec|Add1~102\ = CARRY(( \fec|holdCount[27]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_holdCount[27]~DUPLICATE_q\,
	cin => \fec|Add1~106\,
	sumout => \fec|Add1~101_sumout\,
	cout => \fec|Add1~102\);

-- Location: LABCELL_X6_Y44_N3
\fec|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector15~0_combout\ = ( \fec|Add1~101_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Add1~101_sumout\,
	combout => \fec|Selector15~0_combout\);

-- Location: FF_X6_Y44_N4
\fec|holdCount[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector15~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount[27]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y43_N24
\fec|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~97_sumout\ = SUM(( \fec|holdCount[28]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~102\ ))
-- \fec|Add1~98\ = CARRY(( \fec|holdCount[28]~DUPLICATE_q\ ) + ( GND ) + ( \fec|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_holdCount[28]~DUPLICATE_q\,
	cin => \fec|Add1~102\,
	sumout => \fec|Add1~97_sumout\,
	cout => \fec|Add1~98\);

-- Location: LABCELL_X6_Y44_N0
\fec|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector14~0_combout\ = ( \fec|Add1~97_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Add1~97_sumout\,
	combout => \fec|Selector14~0_combout\);

-- Location: FF_X6_Y44_N1
\fec|holdCount[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector14~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount[28]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y43_N27
\fec|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~93_sumout\ = SUM(( \fec|holdCount\(29) ) + ( GND ) + ( \fec|Add1~98\ ))
-- \fec|Add1~94\ = CARRY(( \fec|holdCount\(29) ) + ( GND ) + ( \fec|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_holdCount\(29),
	cin => \fec|Add1~98\,
	sumout => \fec|Add1~93_sumout\,
	cout => \fec|Add1~94\);

-- Location: LABCELL_X5_Y43_N45
\fec|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector13~0_combout\ = (\fec|state_reg.hold~q\ & \fec|Add1~93_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	datad => \fec|ALT_INV_Add1~93_sumout\,
	combout => \fec|Selector13~0_combout\);

-- Location: FF_X5_Y43_N47
\fec|holdCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector13~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(29));

-- Location: FF_X6_Y44_N2
\fec|holdCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector14~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(28));

-- Location: LABCELL_X5_Y43_N30
\fec|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~89_sumout\ = SUM(( \fec|holdCount\(30) ) + ( GND ) + ( \fec|Add1~94\ ))
-- \fec|Add1~90\ = CARRY(( \fec|holdCount\(30) ) + ( GND ) + ( \fec|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec|ALT_INV_holdCount\(30),
	cin => \fec|Add1~94\,
	sumout => \fec|Add1~89_sumout\,
	cout => \fec|Add1~90\);

-- Location: LABCELL_X5_Y43_N42
\fec|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector12~0_combout\ = ( \fec|Add1~89_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Add1~89_sumout\,
	combout => \fec|Selector12~0_combout\);

-- Location: FF_X5_Y43_N44
\fec|holdCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector12~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(30));

-- Location: FF_X6_Y44_N5
\fec|holdCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector15~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(27));

-- Location: LABCELL_X5_Y43_N33
\fec|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add1~85_sumout\ = SUM(( \fec|holdCount\(31) ) + ( GND ) + ( \fec|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_holdCount\(31),
	cin => \fec|Add1~90\,
	sumout => \fec|Add1~85_sumout\);

-- Location: LABCELL_X5_Y43_N39
\fec|Selector11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector11~1_combout\ = ( \fec|Add1~85_sumout\ & ( \fec|state_reg.hold~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Add1~85_sumout\,
	combout => \fec|Selector11~1_combout\);

-- Location: FF_X5_Y43_N40
\fec|holdCount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector11~1_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(31));

-- Location: LABCELL_X6_Y44_N36
\fec|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Equal0~4_combout\ = ( !\fec|holdCount\(27) & ( !\fec|holdCount\(31) & ( (!\fec|holdCount\(26) & (!\fec|holdCount\(29) & (!\fec|holdCount\(28) & !\fec|holdCount\(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_holdCount\(26),
	datab => \fec|ALT_INV_holdCount\(29),
	datac => \fec|ALT_INV_holdCount\(28),
	datad => \fec|ALT_INV_holdCount\(30),
	datae => \fec|ALT_INV_holdCount\(27),
	dataf => \fec|ALT_INV_holdCount\(31),
	combout => \fec|Equal0~4_combout\);

-- Location: LABCELL_X6_Y44_N18
\fec|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Equal0~6_combout\ = ( \fec|Equal0~4_combout\ & ( !\fec|holdCount\(20) & ( (\fec|Equal0~3_combout\ & (\fec|Equal0~2_combout\ & (\fec|Equal0~5_combout\ & \fec|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_Equal0~3_combout\,
	datab => \fec|ALT_INV_Equal0~2_combout\,
	datac => \fec|ALT_INV_Equal0~5_combout\,
	datad => \fec|ALT_INV_Equal0~1_combout\,
	datae => \fec|ALT_INV_Equal0~4_combout\,
	dataf => \fec|ALT_INV_holdCount\(20),
	combout => \fec|Equal0~6_combout\);

-- Location: FF_X6_Y42_N14
\fec|state_reg.shiftx~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector3~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|state_reg.shiftx~DUPLICATE_q\);

-- Location: PLLOUTPUTCOUNTER_X0_Y38_N1
\pll_clk|pll_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 3,
	dprio0_cnt_lo_div => 3,
	dprio0_cnt_odd_div_even_duty_en => "false",
	duty_cycle => 50,
	output_clock_frequency => "50.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 7)
-- pragma translate_on
PORT MAP (
	nen0 => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN7\,
	tclk0 => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \pll_clk|pll_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \pll_clk|pll_inst|altera_pll_i|outclk_wire\(1));

-- Location: CLKCTRL_G15
\pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \pll_clk|pll_inst|altera_pll_i|outclk_wire\(1),
	outclk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\);

-- Location: LABCELL_X5_Y42_N42
\prbs|data_out_valid_int~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \prbs|data_out_valid_int~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \prbs|data_out_valid_int~feeder_combout\);

-- Location: IOIBUF_X8_Y45_N75
\data_in_ready~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in_ready,
	o => \data_in_ready~input_o\);

-- Location: FF_X5_Y42_N44
\prbs|data_out_valid_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \prbs|data_out_valid_int~feeder_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prbs|data_out_valid_int~q\);

-- Location: FF_X10_Y42_N4
\fec|address_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \fec|Add0~29_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec|LessThan0~1_combout\,
	ena => \prbs|data_out_valid_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|address_a\(1));

-- Location: LABCELL_X10_Y42_N0
\fec|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add0~13_sumout\ = SUM(( \fec|address_a\(0) ) + ( VCC ) + ( !VCC ))
-- \fec|Add0~14\ = CARRY(( \fec|address_a\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec|ALT_INV_address_a\(0),
	cin => GND,
	sumout => \fec|Add0~13_sumout\,
	cout => \fec|Add0~14\);

-- Location: FF_X10_Y42_N2
\fec|address_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \fec|Add0~13_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec|LessThan0~1_combout\,
	ena => \prbs|data_out_valid_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|address_a\(0));

-- Location: LABCELL_X10_Y42_N3
\fec|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add0~29_sumout\ = SUM(( \fec|address_a\(1) ) + ( GND ) + ( \fec|Add0~14\ ))
-- \fec|Add0~30\ = CARRY(( \fec|address_a\(1) ) + ( GND ) + ( \fec|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec|ALT_INV_address_a\(1),
	cin => \fec|Add0~14\,
	sumout => \fec|Add0~29_sumout\,
	cout => \fec|Add0~30\);

-- Location: FF_X10_Y42_N5
\fec|address_a[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \fec|Add0~29_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec|LessThan0~1_combout\,
	ena => \prbs|data_out_valid_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|address_a[1]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y42_N6
\fec|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add0~25_sumout\ = SUM(( \fec|address_a\(2) ) + ( GND ) + ( \fec|Add0~30\ ))
-- \fec|Add0~26\ = CARRY(( \fec|address_a\(2) ) + ( GND ) + ( \fec|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec|ALT_INV_address_a\(2),
	cin => \fec|Add0~30\,
	sumout => \fec|Add0~25_sumout\,
	cout => \fec|Add0~26\);

-- Location: FF_X10_Y42_N8
\fec|address_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \fec|Add0~25_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec|LessThan0~1_combout\,
	ena => \prbs|data_out_valid_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|address_a\(2));

-- Location: LABCELL_X10_Y42_N9
\fec|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add0~21_sumout\ = SUM(( \fec|address_a\(3) ) + ( GND ) + ( \fec|Add0~26\ ))
-- \fec|Add0~22\ = CARRY(( \fec|address_a\(3) ) + ( GND ) + ( \fec|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec|ALT_INV_address_a\(3),
	cin => \fec|Add0~26\,
	sumout => \fec|Add0~21_sumout\,
	cout => \fec|Add0~22\);

-- Location: FF_X10_Y42_N10
\fec|address_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \fec|Add0~21_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec|LessThan0~1_combout\,
	ena => \prbs|data_out_valid_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|address_a\(3));

-- Location: LABCELL_X10_Y42_N12
\fec|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add0~17_sumout\ = SUM(( \fec|address_a\(4) ) + ( GND ) + ( \fec|Add0~22\ ))
-- \fec|Add0~18\ = CARRY(( \fec|address_a\(4) ) + ( GND ) + ( \fec|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec|ALT_INV_address_a\(4),
	cin => \fec|Add0~22\,
	sumout => \fec|Add0~17_sumout\,
	cout => \fec|Add0~18\);

-- Location: FF_X10_Y42_N13
\fec|address_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \fec|Add0~17_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec|LessThan0~1_combout\,
	ena => \prbs|data_out_valid_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|address_a\(4));

-- Location: LABCELL_X10_Y42_N15
\fec|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add0~9_sumout\ = SUM(( \fec|address_a\(5) ) + ( GND ) + ( \fec|Add0~18\ ))
-- \fec|Add0~10\ = CARRY(( \fec|address_a\(5) ) + ( GND ) + ( \fec|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec|ALT_INV_address_a\(5),
	cin => \fec|Add0~18\,
	sumout => \fec|Add0~9_sumout\,
	cout => \fec|Add0~10\);

-- Location: FF_X10_Y42_N17
\fec|address_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \fec|Add0~9_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec|LessThan0~1_combout\,
	ena => \prbs|data_out_valid_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|address_a\(5));

-- Location: LABCELL_X10_Y42_N42
\fec|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|LessThan0~0_combout\ = ( \fec|address_a\(0) & ( \fec|address_a\(5) & ( (\fec|address_a\(3) & \fec|address_a\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec|ALT_INV_address_a\(3),
	datad => \fec|ALT_INV_address_a\(4),
	datae => \fec|ALT_INV_address_a\(0),
	dataf => \fec|ALT_INV_address_a\(5),
	combout => \fec|LessThan0~0_combout\);

-- Location: LABCELL_X10_Y42_N18
\fec|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add0~5_sumout\ = SUM(( \fec|address_a\(6) ) + ( GND ) + ( \fec|Add0~10\ ))
-- \fec|Add0~6\ = CARRY(( \fec|address_a\(6) ) + ( GND ) + ( \fec|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec|ALT_INV_address_a\(6),
	cin => \fec|Add0~10\,
	sumout => \fec|Add0~5_sumout\,
	cout => \fec|Add0~6\);

-- Location: FF_X10_Y42_N20
\fec|address_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \fec|Add0~5_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec|LessThan0~1_combout\,
	ena => \prbs|data_out_valid_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|address_a\(6));

-- Location: LABCELL_X10_Y42_N33
\fec|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|LessThan0~1_combout\ = ( \fec|address_a\(6) & ( \fec|address_a[7]~DUPLICATE_q\ ) ) # ( !\fec|address_a\(6) & ( (\fec|address_a[1]~DUPLICATE_q\ & (\fec|address_a\(2) & (\fec|LessThan0~0_combout\ & \fec|address_a[7]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_address_a[1]~DUPLICATE_q\,
	datab => \fec|ALT_INV_address_a\(2),
	datac => \fec|ALT_INV_LessThan0~0_combout\,
	datad => \fec|ALT_INV_address_a[7]~DUPLICATE_q\,
	dataf => \fec|ALT_INV_address_a\(6),
	combout => \fec|LessThan0~1_combout\);

-- Location: FF_X10_Y42_N22
\fec|address_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \fec|Add0~1_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec|LessThan0~1_combout\,
	ena => \prbs|data_out_valid_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|address_a\(7));

-- Location: LABCELL_X10_Y42_N21
\fec|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add0~1_sumout\ = SUM(( \fec|address_a\(7) ) + ( GND ) + ( \fec|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec|ALT_INV_address_a\(7),
	cin => \fec|Add0~6\,
	sumout => \fec|Add0~1_sumout\);

-- Location: FF_X10_Y42_N23
\fec|address_a[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \fec|Add0~1_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec|LessThan0~1_combout\,
	ena => \prbs|data_out_valid_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|address_a[7]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y42_N30
\fec|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|LessThan2~1_combout\ = ( !\fec|address_a\(4) & ( (!\fec|address_a[1]~DUPLICATE_q\ & (!\fec|address_a\(2) & (!\fec|address_a\(0) & !\fec|address_a\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_address_a[1]~DUPLICATE_q\,
	datab => \fec|ALT_INV_address_a\(2),
	datac => \fec|ALT_INV_address_a\(0),
	datad => \fec|ALT_INV_address_a\(3),
	dataf => \fec|ALT_INV_address_a\(4),
	combout => \fec|LessThan2~1_combout\);

-- Location: FF_X10_Y42_N19
\fec|address_a[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \fec|Add0~5_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \fec|LessThan0~1_combout\,
	ena => \prbs|data_out_valid_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|address_a[6]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y42_N54
\fec|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|LessThan2~0_combout\ = ( \fec|address_a[6]~DUPLICATE_q\ & ( \fec|address_a\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec|ALT_INV_address_a\(5),
	dataf => \fec|ALT_INV_address_a[6]~DUPLICATE_q\,
	combout => \fec|LessThan2~0_combout\);

-- Location: LABCELL_X7_Y42_N21
\fec|state_reg.idle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|state_reg.idle~0_combout\ = ( \fec|state_reg.idle~q\ ) # ( !\fec|state_reg.idle~q\ & ( ((!\fec|LessThan2~1_combout\ & \fec|LessThan2~0_combout\)) # (\fec|address_a[7]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110101111111111111111101010101111101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_address_a[7]~DUPLICATE_q\,
	datac => \fec|ALT_INV_LessThan2~1_combout\,
	datad => \fec|ALT_INV_LessThan2~0_combout\,
	datae => \fec|ALT_INV_state_reg.idle~q\,
	combout => \fec|state_reg.idle~0_combout\);

-- Location: FF_X7_Y42_N22
\fec|state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|state_reg.idle~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|state_reg.idle~q\);

-- Location: LABCELL_X6_Y42_N33
\fec|address_b[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|address_b[2]~0_combout\ = ( \fec|state_reg.idle~q\ & ( (!\fec|state_reg.shiftx~DUPLICATE_q\ & !\fec|state_reg.hold~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_state_reg.shiftx~DUPLICATE_q\,
	datad => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_state_reg.idle~q\,
	combout => \fec|address_b[2]~0_combout\);

-- Location: FF_X7_Y42_N14
\fec|state_reg.shifty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \fec|state_reg.shiftx~q\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|state_reg.shifty~q\);

-- Location: LABCELL_X6_Y42_N51
\fec|Selector51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector51~0_combout\ = ( \fec|state_reg.shifty~q\ & ( (!\fec|state_counter\(0)) # (\fec|Selector50~0_combout\) ) ) # ( !\fec|state_reg.shifty~q\ & ( (!\fec|state_reg.init~DUPLICATE_q\ & \fec|state_counter\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_Selector50~0_combout\,
	datac => \fec|ALT_INV_state_reg.init~DUPLICATE_q\,
	datad => \fec|ALT_INV_state_counter\(0),
	dataf => \fec|ALT_INV_state_reg.shifty~q\,
	combout => \fec|Selector51~0_combout\);

-- Location: FF_X6_Y42_N53
\fec|state_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector51~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|state_counter\(0));

-- Location: LABCELL_X6_Y42_N24
\fec|Selector50~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector50~1_combout\ = ( \fec|state_reg.init~DUPLICATE_q\ & ( (\fec|state_reg.shifty~q\ & (!\fec|state_counter\(1) $ (((!\fec|state_counter\(0)) # (\fec|Selector50~0_combout\))))) ) ) # ( !\fec|state_reg.init~DUPLICATE_q\ & ( !\fec|state_counter\(1) 
-- $ ((((!\fec|state_reg.shifty~q\) # (!\fec|state_counter\(0))) # (\fec|Selector50~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111101000000101111110100000010001100010000001000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_Selector50~0_combout\,
	datab => \fec|ALT_INV_state_reg.shifty~q\,
	datac => \fec|ALT_INV_state_counter\(0),
	datad => \fec|ALT_INV_state_counter\(1),
	dataf => \fec|ALT_INV_state_reg.init~DUPLICATE_q\,
	combout => \fec|Selector50~1_combout\);

-- Location: FF_X6_Y42_N25
\fec|state_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector50~1_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|state_counter\(1));

-- Location: LABCELL_X10_Y42_N48
\fec|process_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|process_1~1_combout\ = ( \fec|address_a\(5) & ( (!\fec|address_a[7]~DUPLICATE_q\ & (\fec|Equal1~0_combout\ & !\fec|address_a\(6))) ) ) # ( !\fec|address_a\(5) & ( (!\fec|address_a[7]~DUPLICATE_q\ & \fec|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_address_a[7]~DUPLICATE_q\,
	datab => \fec|ALT_INV_Equal1~0_combout\,
	datac => \fec|ALT_INV_address_a\(6),
	dataf => \fec|ALT_INV_address_a\(5),
	combout => \fec|process_1~1_combout\);

-- Location: LABCELL_X10_Y42_N51
\fec|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|LessThan2~2_combout\ = ( \fec|LessThan2~1_combout\ & ( !\fec|address_a[7]~DUPLICATE_q\ ) ) # ( !\fec|LessThan2~1_combout\ & ( (!\fec|address_a[7]~DUPLICATE_q\ & !\fec|LessThan2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_address_a[7]~DUPLICATE_q\,
	datad => \fec|ALT_INV_LessThan2~0_combout\,
	dataf => \fec|ALT_INV_LessThan2~1_combout\,
	combout => \fec|LessThan2~2_combout\);

-- Location: MLABCELL_X9_Y42_N12
\fec|address_b[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|address_b[2]~3_combout\ = ( \fec|process_1~2_combout\ & ( (!\fec|state_reg.shifty~q\ & !\fec|state_reg.init~q\) ) ) # ( !\fec|process_1~2_combout\ & ( (!\fec|state_reg.shifty~q\ & (!\fec|state_reg.init~q\)) # (\fec|state_reg.shifty~q\ & 
-- ((!\fec|process_1~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111000000111100111100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec|ALT_INV_state_reg.shifty~q\,
	datac => \fec|ALT_INV_state_reg.init~q\,
	datad => \fec|ALT_INV_process_1~3_combout\,
	dataf => \fec|ALT_INV_process_1~2_combout\,
	combout => \fec|address_b[2]~3_combout\);

-- Location: MLABCELL_X9_Y42_N15
\fec|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add2~1_combout\ = ( \fec|address_b\(2) & ( !\fec|address_b\(3) $ (((!\fec|address_b\(1)) # (!\fec|address_b\(0)))) ) ) # ( !\fec|address_b\(2) & ( \fec|address_b\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_address_b\(1),
	datac => \fec|ALT_INV_address_b\(0),
	datad => \fec|ALT_INV_address_b\(3),
	dataf => \fec|ALT_INV_address_b\(2),
	combout => \fec|Add2~1_combout\);

-- Location: MLABCELL_X9_Y42_N36
\fec|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector7~0_combout\ = ( \fec|Equal1~0_combout\ & ( \fec|Add2~1_combout\ & ( (!\fec|state_reg.shifty~q\ & (((!\fec|LessThan2~2_combout\ & \fec|address_b[2]~3_combout\)))) # (\fec|state_reg.shifty~q\ & ((!\fec|process_1~3_combout\) # 
-- ((\fec|address_b[2]~3_combout\)))) ) ) ) # ( !\fec|Equal1~0_combout\ & ( \fec|Add2~1_combout\ & ( (!\fec|state_reg.shifty~q\ & (((!\fec|LessThan2~2_combout\) # (!\fec|address_b[2]~3_combout\)))) # (\fec|state_reg.shifty~q\ & ((!\fec|process_1~3_combout\) 
-- # ((\fec|address_b[2]~3_combout\)))) ) ) ) # ( \fec|Equal1~0_combout\ & ( !\fec|Add2~1_combout\ & ( (!\fec|state_reg.shifty~q\ & (((!\fec|LessThan2~2_combout\ & \fec|address_b[2]~3_combout\)))) # (\fec|state_reg.shifty~q\ & (!\fec|process_1~3_combout\ & 
-- ((!\fec|address_b[2]~3_combout\)))) ) ) ) # ( !\fec|Equal1~0_combout\ & ( !\fec|Add2~1_combout\ & ( (!\fec|state_reg.shifty~q\ & (((!\fec|LessThan2~2_combout\) # (!\fec|address_b[2]~3_combout\)))) # (\fec|state_reg.shifty~q\ & (!\fec|process_1~3_combout\ 
-- & ((!\fec|address_b[2]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010100000010001001010000011101110111101010100010011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.shifty~q\,
	datab => \fec|ALT_INV_process_1~3_combout\,
	datac => \fec|ALT_INV_LessThan2~2_combout\,
	datad => \fec|ALT_INV_address_b[2]~3_combout\,
	datae => \fec|ALT_INV_Equal1~0_combout\,
	dataf => \fec|ALT_INV_Add2~1_combout\,
	combout => \fec|Selector7~0_combout\);

-- Location: LABCELL_X6_Y42_N54
\fec|address_b[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|address_b[2]~1_combout\ = ( \fec|state_reg.init~DUPLICATE_q\ & ( (\fec|process_1~4_combout\ & \fec|address_b[2]~0_combout\) ) ) # ( !\fec|state_reg.init~DUPLICATE_q\ & ( \fec|address_b[2]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec|ALT_INV_process_1~4_combout\,
	datac => \fec|ALT_INV_address_b[2]~0_combout\,
	dataf => \fec|ALT_INV_state_reg.init~DUPLICATE_q\,
	combout => \fec|address_b[2]~1_combout\);

-- Location: LABCELL_X6_Y42_N27
\fec|address_b[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|address_b[2]~2_combout\ = (\fec|address_b[2]~1_combout\ & (((!\fec|state_reg.shifty~q\) # (\fec|process_1~5_combout\)) # (\fec|Selector50~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011111000000001101111100000000110111110000000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_Selector50~0_combout\,
	datab => \fec|ALT_INV_state_reg.shifty~q\,
	datac => \fec|ALT_INV_process_1~5_combout\,
	datad => \fec|ALT_INV_address_b[2]~1_combout\,
	combout => \fec|address_b[2]~2_combout\);

-- Location: FF_X9_Y42_N38
\fec|address_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector7~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|address_b[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|address_b\(3));

-- Location: MLABCELL_X9_Y42_N18
\fec|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add2~0_combout\ = ( \fec|address_b[4]~DUPLICATE_q\ & ( (!\fec|address_b\(1)) # ((!\fec|address_b\(2)) # ((!\fec|address_b\(3)) # (!\fec|address_b\(0)))) ) ) # ( !\fec|address_b[4]~DUPLICATE_q\ & ( (\fec|address_b\(1) & (\fec|address_b\(2) & 
-- (\fec|address_b\(3) & \fec|address_b\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_address_b\(1),
	datab => \fec|ALT_INV_address_b\(2),
	datac => \fec|ALT_INV_address_b\(3),
	datad => \fec|ALT_INV_address_b\(0),
	dataf => \fec|ALT_INV_address_b[4]~DUPLICATE_q\,
	combout => \fec|Add2~0_combout\);

-- Location: LABCELL_X10_Y42_N27
\fec|address_b[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|address_b[4]~4_combout\ = ( \fec|state_reg.shifty~q\ & ( \fec|Add2~0_combout\ ) ) # ( !\fec|state_reg.shifty~q\ & ( (!\fec|address_a[7]~DUPLICATE_q\ & ((!\fec|LessThan2~0_combout\) # (\fec|LessThan2~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100000000101110110000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_LessThan2~0_combout\,
	datab => \fec|ALT_INV_LessThan2~1_combout\,
	datac => \fec|ALT_INV_Add2~0_combout\,
	datad => \fec|ALT_INV_address_a[7]~DUPLICATE_q\,
	dataf => \fec|ALT_INV_state_reg.shifty~q\,
	combout => \fec|address_b[4]~4_combout\);

-- Location: FF_X9_Y42_N31
\fec|address_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|address_b[4]~5_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|address_b\(4));

-- Location: MLABCELL_X9_Y42_N30
\fec|address_b[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|address_b[4]~5_combout\ = ( \fec|address_b\(4) & ( \fec|address_b[2]~3_combout\ & ( (!\fec|address_b[2]~2_combout\) # (\fec|address_b[4]~4_combout\) ) ) ) # ( !\fec|address_b\(4) & ( \fec|address_b[2]~3_combout\ & ( (\fec|address_b[4]~4_combout\ & 
-- \fec|address_b[2]~2_combout\) ) ) ) # ( \fec|address_b\(4) & ( !\fec|address_b[2]~3_combout\ & ( (!\fec|address_b[2]~2_combout\) # ((\fec|process_1~3_combout\ & \fec|state_reg.shifty~q\)) ) ) ) # ( !\fec|address_b\(4) & ( !\fec|address_b[2]~3_combout\ & ( 
-- (\fec|process_1~3_combout\ & (\fec|state_reg.shifty~q\ & \fec|address_b[2]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111111110000001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_address_b[4]~4_combout\,
	datab => \fec|ALT_INV_process_1~3_combout\,
	datac => \fec|ALT_INV_state_reg.shifty~q\,
	datad => \fec|ALT_INV_address_b[2]~2_combout\,
	datae => \fec|ALT_INV_address_b\(4),
	dataf => \fec|ALT_INV_address_b[2]~3_combout\,
	combout => \fec|address_b[4]~5_combout\);

-- Location: FF_X9_Y42_N32
\fec|address_b[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|address_b[4]~5_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|address_b[4]~DUPLICATE_q\);

-- Location: MLABCELL_X9_Y42_N9
\fec|process_1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|process_1~4_combout\ = ( \fec|address_b\(0) & ( (\fec|address_b\(1) & ((!\fec|address_b\(2) & (!\fec|address_b[4]~DUPLICATE_q\ & \fec|address_b\(3))) # (\fec|address_b\(2) & (\fec|address_b[4]~DUPLICATE_q\ & !\fec|address_b\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001010000000000000101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_address_b\(1),
	datab => \fec|ALT_INV_address_b\(2),
	datac => \fec|ALT_INV_address_b[4]~DUPLICATE_q\,
	datad => \fec|ALT_INV_address_b\(3),
	dataf => \fec|ALT_INV_address_b\(0),
	combout => \fec|process_1~4_combout\);

-- Location: LABCELL_X6_Y42_N57
\fec|process_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|process_1~5_combout\ = ( \fec|state_counter[2]~DUPLICATE_q\ & ( (!\fec|process_1~4_combout\ & (!\fec|state_counter\(0) & \fec|state_counter\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec|ALT_INV_process_1~4_combout\,
	datac => \fec|ALT_INV_state_counter\(0),
	datad => \fec|ALT_INV_state_counter\(1),
	dataf => \fec|ALT_INV_state_counter[2]~DUPLICATE_q\,
	combout => \fec|process_1~5_combout\);

-- Location: MLABCELL_X9_Y42_N24
\fec|address_b[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|address_b[0]~8_combout\ = ( \fec|address_b\(0) & ( \fec|address_b[2]~1_combout\ & ( (!\fec|Selector50~0_combout\ & ((!\fec|state_reg.shifty~q\ & (!\fec|state_reg.init~q\)) # (\fec|state_reg.shifty~q\ & ((!\fec|process_1~5_combout\))))) # 
-- (\fec|Selector50~0_combout\ & (!\fec|state_reg.init~q\)) ) ) ) # ( !\fec|address_b\(0) & ( \fec|address_b[2]~1_combout\ & ( (!\fec|state_reg.shifty~q\ & (!\fec|state_reg.init~q\)) # (\fec|state_reg.shifty~q\ & (((\fec|Selector50~0_combout\) # 
-- (\fec|process_1~5_combout\)))) ) ) ) # ( \fec|address_b\(0) & ( !\fec|address_b[2]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110101010001111111010101011001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.init~q\,
	datab => \fec|ALT_INV_process_1~5_combout\,
	datac => \fec|ALT_INV_Selector50~0_combout\,
	datad => \fec|ALT_INV_state_reg.shifty~q\,
	datae => \fec|ALT_INV_address_b\(0),
	dataf => \fec|ALT_INV_address_b[2]~1_combout\,
	combout => \fec|address_b[0]~8_combout\);

-- Location: FF_X9_Y42_N25
\fec|address_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|address_b[0]~8_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|address_b\(0));

-- Location: MLABCELL_X9_Y42_N3
\fec|Add2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Add2~2_combout\ = ( \fec|address_b\(2) & ( (!\fec|address_b\(1)) # (!\fec|address_b\(0)) ) ) # ( !\fec|address_b\(2) & ( (\fec|address_b\(1) & \fec|address_b\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_address_b\(1),
	datac => \fec|ALT_INV_address_b\(0),
	dataf => \fec|ALT_INV_address_b\(2),
	combout => \fec|Add2~2_combout\);

-- Location: MLABCELL_X9_Y42_N42
\fec|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector8~0_combout\ = ( \fec|Equal1~0_combout\ & ( \fec|Add2~2_combout\ & ( (!\fec|state_reg.shifty~q\ & (((\fec|LessThan2~2_combout\ & \fec|address_b[2]~3_combout\)))) # (\fec|state_reg.shifty~q\ & (((\fec|address_b[2]~3_combout\)) # 
-- (\fec|process_1~3_combout\))) ) ) ) # ( !\fec|Equal1~0_combout\ & ( \fec|Add2~2_combout\ & ( (!\fec|state_reg.shifty~q\ & (((!\fec|address_b[2]~3_combout\) # (\fec|LessThan2~2_combout\)))) # (\fec|state_reg.shifty~q\ & (((\fec|address_b[2]~3_combout\)) # 
-- (\fec|process_1~3_combout\))) ) ) ) # ( \fec|Equal1~0_combout\ & ( !\fec|Add2~2_combout\ & ( (!\fec|state_reg.shifty~q\ & (((\fec|LessThan2~2_combout\ & \fec|address_b[2]~3_combout\)))) # (\fec|state_reg.shifty~q\ & (\fec|process_1~3_combout\ & 
-- ((!\fec|address_b[2]~3_combout\)))) ) ) ) # ( !\fec|Equal1~0_combout\ & ( !\fec|Add2~2_combout\ & ( (!\fec|state_reg.shifty~q\ & (((!\fec|address_b[2]~3_combout\) # (\fec|LessThan2~2_combout\)))) # (\fec|state_reg.shifty~q\ & (\fec|process_1~3_combout\ & 
-- ((!\fec|address_b[2]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100001010000100010000101010111011010111110001000101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.shifty~q\,
	datab => \fec|ALT_INV_process_1~3_combout\,
	datac => \fec|ALT_INV_LessThan2~2_combout\,
	datad => \fec|ALT_INV_address_b[2]~3_combout\,
	datae => \fec|ALT_INV_Equal1~0_combout\,
	dataf => \fec|ALT_INV_Add2~2_combout\,
	combout => \fec|Selector8~0_combout\);

-- Location: FF_X9_Y42_N44
\fec|address_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector8~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	ena => \fec|address_b[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|address_b\(2));

-- Location: MLABCELL_X9_Y42_N6
\fec|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Equal2~0_combout\ = ( \fec|address_b[4]~DUPLICATE_q\ & ( (\fec|address_b\(1) & (\fec|address_b\(2) & (!\fec|address_b\(3) & \fec|address_b\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_address_b\(1),
	datab => \fec|ALT_INV_address_b\(2),
	datac => \fec|ALT_INV_address_b\(3),
	datad => \fec|ALT_INV_address_b\(0),
	dataf => \fec|ALT_INV_address_b[4]~DUPLICATE_q\,
	combout => \fec|Equal2~0_combout\);

-- Location: LABCELL_X10_Y42_N24
\fec|process_1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|process_1~2_combout\ = ( \fec|process_1~0_combout\ & ( (\fec|Equal2~0_combout\ & (((\fec|LessThan2~0_combout\ & !\fec|LessThan2~1_combout\)) # (\fec|address_a[7]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010011110000000001001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_LessThan2~0_combout\,
	datab => \fec|ALT_INV_LessThan2~1_combout\,
	datac => \fec|ALT_INV_address_a[7]~DUPLICATE_q\,
	datad => \fec|ALT_INV_Equal2~0_combout\,
	dataf => \fec|ALT_INV_process_1~0_combout\,
	combout => \fec|process_1~2_combout\);

-- Location: LABCELL_X6_Y42_N6
\fec|Selector49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector49~0_combout\ = ( !\fec|state_reg.shifty~q\ & ( ((\fec|state_counter[2]~DUPLICATE_q\ & (!\fec|state_reg.init~DUPLICATE_q\))) ) ) # ( \fec|state_reg.shifty~q\ & ( ((!\fec|state_counter\(0) & (\fec|state_counter[2]~DUPLICATE_q\)) # 
-- (\fec|state_counter\(0) & ((!\fec|state_counter[2]~DUPLICATE_q\ & ((\fec|state_counter\(1)))) # (\fec|state_counter[2]~DUPLICATE_q\ & ((!\fec|state_counter\(1)) # (\fec|process_1~1_combout\)))))) # (\fec|process_1~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011000000110000001100111111111100110000001100000110011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_counter\(0),
	datab => \fec|ALT_INV_state_counter[2]~DUPLICATE_q\,
	datac => \fec|ALT_INV_process_1~1_combout\,
	datad => \fec|ALT_INV_process_1~2_combout\,
	datae => \fec|ALT_INV_state_reg.shifty~q\,
	dataf => \fec|ALT_INV_state_counter\(1),
	datag => \fec|ALT_INV_state_reg.init~DUPLICATE_q\,
	combout => \fec|Selector49~0_combout\);

-- Location: FF_X6_Y42_N8
\fec|state_counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector49~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|state_counter[2]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y42_N48
\fec|process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|process_1~0_combout\ = ( \fec|state_counter[2]~DUPLICATE_q\ & ( (\fec|state_counter\(1) & \fec|state_counter\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec|ALT_INV_state_counter\(1),
	datac => \fec|ALT_INV_state_counter\(0),
	dataf => \fec|ALT_INV_state_counter[2]~DUPLICATE_q\,
	combout => \fec|process_1~0_combout\);

-- Location: LABCELL_X10_Y42_N57
\fec|process_1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|process_1~3_combout\ = ( \fec|address_a\(6) & ( (\fec|process_1~0_combout\ & (!\fec|address_a\(5) & (\fec|Equal1~0_combout\ & !\fec|address_a[7]~DUPLICATE_q\))) ) ) # ( !\fec|address_a\(6) & ( (\fec|process_1~0_combout\ & (\fec|Equal1~0_combout\ & 
-- !\fec|address_a[7]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_process_1~0_combout\,
	datab => \fec|ALT_INV_address_a\(5),
	datac => \fec|ALT_INV_Equal1~0_combout\,
	datad => \fec|ALT_INV_address_a[7]~DUPLICATE_q\,
	dataf => \fec|ALT_INV_address_a\(6),
	combout => \fec|process_1~3_combout\);

-- Location: MLABCELL_X9_Y42_N21
\fec|process_1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|process_1~6_combout\ = ( \fec|process_1~0_combout\ & ( \fec|Equal2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec|ALT_INV_Equal2~0_combout\,
	dataf => \fec|ALT_INV_process_1~0_combout\,
	combout => \fec|process_1~6_combout\);

-- Location: MLABCELL_X9_Y42_N57
\fec|address_b[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|address_b[2]~6_combout\ = ( \fec|LessThan2~0_combout\ & ( \fec|process_1~6_combout\ & ( (\fec|LessThan2~1_combout\ & (!\fec|process_1~3_combout\ & (\fec|state_reg.shifty~q\ & !\fec|address_a[7]~DUPLICATE_q\))) ) ) ) # ( !\fec|LessThan2~0_combout\ & ( 
-- \fec|process_1~6_combout\ & ( (!\fec|process_1~3_combout\ & (\fec|state_reg.shifty~q\ & !\fec|address_a[7]~DUPLICATE_q\)) ) ) ) # ( \fec|LessThan2~0_combout\ & ( !\fec|process_1~6_combout\ & ( (!\fec|process_1~3_combout\ & \fec|state_reg.shifty~q\) ) ) ) 
-- # ( !\fec|LessThan2~0_combout\ & ( !\fec|process_1~6_combout\ & ( (!\fec|process_1~3_combout\ & \fec|state_reg.shifty~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_LessThan2~1_combout\,
	datab => \fec|ALT_INV_process_1~3_combout\,
	datac => \fec|ALT_INV_state_reg.shifty~q\,
	datad => \fec|ALT_INV_address_a[7]~DUPLICATE_q\,
	datae => \fec|ALT_INV_LessThan2~0_combout\,
	dataf => \fec|ALT_INV_process_1~6_combout\,
	combout => \fec|address_b[2]~6_combout\);

-- Location: MLABCELL_X9_Y42_N48
\fec|address_b[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|address_b[1]~7_combout\ = ( \fec|address_b\(1) & ( \fec|address_b\(0) & ( (!\fec|address_b[2]~1_combout\) # ((!\fec|address_b[2]~6_combout\ & (!\fec|state_reg.init~q\)) # (\fec|address_b[2]~6_combout\ & ((!\fec|process_1~5_combout\)))) ) ) ) # ( 
-- !\fec|address_b\(1) & ( \fec|address_b\(0) & ( (\fec|address_b[2]~1_combout\ & ((!\fec|address_b[2]~6_combout\ & (!\fec|state_reg.init~q\)) # (\fec|address_b[2]~6_combout\ & ((\fec|process_1~5_combout\))))) ) ) ) # ( \fec|address_b\(1) & ( 
-- !\fec|address_b\(0) & ( (!\fec|state_reg.init~q\) # ((!\fec|address_b[2]~1_combout\) # (\fec|address_b[2]~6_combout\)) ) ) ) # ( !\fec|address_b\(1) & ( !\fec|address_b\(0) & ( (!\fec|state_reg.init~q\ & (!\fec|address_b[2]~6_combout\ & 
-- \fec|address_b[2]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000111110111111101100001000000010111111101111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_reg.init~q\,
	datab => \fec|ALT_INV_address_b[2]~6_combout\,
	datac => \fec|ALT_INV_address_b[2]~1_combout\,
	datad => \fec|ALT_INV_process_1~5_combout\,
	datae => \fec|ALT_INV_address_b\(1),
	dataf => \fec|ALT_INV_address_b\(0),
	combout => \fec|address_b[1]~7_combout\);

-- Location: FF_X9_Y42_N50
\fec|address_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|address_b[1]~7_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|address_b\(1));

-- Location: MLABCELL_X9_Y42_N0
\fec|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Equal1~0_combout\ = ( !\fec|address_b[4]~DUPLICATE_q\ & ( (\fec|address_b\(1) & (!\fec|address_b\(2) & (\fec|address_b\(3) & \fec|address_b\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_address_b\(1),
	datab => \fec|ALT_INV_address_b\(2),
	datac => \fec|ALT_INV_address_b\(3),
	datad => \fec|ALT_INV_address_b\(0),
	dataf => \fec|ALT_INV_address_b[4]~DUPLICATE_q\,
	combout => \fec|Equal1~0_combout\);

-- Location: LABCELL_X10_Y42_N36
\fec|Selector50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector50~0_combout\ = ( \fec|process_1~0_combout\ & ( \fec|address_a\(7) & ( \fec|Equal2~0_combout\ ) ) ) # ( \fec|process_1~0_combout\ & ( !\fec|address_a\(7) & ( (!\fec|LessThan2~0_combout\ & (\fec|Equal1~0_combout\)) # (\fec|LessThan2~0_combout\ 
-- & (((\fec|Equal2~0_combout\ & !\fec|LessThan2~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110010001000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_LessThan2~0_combout\,
	datab => \fec|ALT_INV_Equal1~0_combout\,
	datac => \fec|ALT_INV_Equal2~0_combout\,
	datad => \fec|ALT_INV_LessThan2~1_combout\,
	datae => \fec|ALT_INV_process_1~0_combout\,
	dataf => \fec|ALT_INV_address_a\(7),
	combout => \fec|Selector50~0_combout\);

-- Location: FF_X6_Y42_N32
\fec|holdC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector5~0_combout\,
	ena => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdC~q\);

-- Location: LABCELL_X6_Y42_N30
\fec|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector5~0_combout\ = ( \fec|state_reg.shifty~q\ & ( ((\fec|holdC~q\ & ((!\fec|address_b[2]~0_combout\) # (!\fec|Selector50~0_combout\)))) # (\fec|state_reg.init~q\) ) ) # ( !\fec|state_reg.shifty~q\ & ( ((!\fec|address_b[2]~0_combout\ & 
-- \fec|holdC~q\)) # (\fec|state_reg.init~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111000011111010111100001111111011110000111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_address_b[2]~0_combout\,
	datab => \fec|ALT_INV_Selector50~0_combout\,
	datac => \fec|ALT_INV_state_reg.init~q\,
	datad => \fec|ALT_INV_holdC~q\,
	dataf => \fec|ALT_INV_state_reg.shifty~q\,
	combout => \fec|Selector5~0_combout\);

-- Location: FF_X6_Y42_N31
\fec|holdC~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector5~0_combout\,
	ena => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdC~DUPLICATE_q\);

-- Location: LABCELL_X6_Y42_N18
\fec|state_reg~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|state_reg~16_combout\ = ( !\fec|holdC~DUPLICATE_q\ & ( (\fec|Equal0~0_combout\ & (\fec|Equal0~6_combout\ & \fec|state_reg.hold~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_Equal0~0_combout\,
	datab => \fec|ALT_INV_Equal0~6_combout\,
	datac => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_holdC~DUPLICATE_q\,
	combout => \fec|state_reg~16_combout\);

-- Location: FF_X6_Y42_N20
\fec|state_reg.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|state_reg~16_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|state_reg.init~q\);

-- Location: LABCELL_X7_Y42_N54
\fec|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector2~0_combout\ = ( \fec|LessThan2~1_combout\ & ( !\fec|state_reg.idle~q\ & ( \fec|address_a[7]~DUPLICATE_q\ ) ) ) # ( !\fec|LessThan2~1_combout\ & ( !\fec|state_reg.idle~q\ & ( (\fec|LessThan2~0_combout\) # (\fec|address_a[7]~DUPLICATE_q\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_address_a[7]~DUPLICATE_q\,
	datac => \fec|ALT_INV_LessThan2~0_combout\,
	datae => \fec|ALT_INV_LessThan2~1_combout\,
	dataf => \fec|ALT_INV_state_reg.idle~q\,
	combout => \fec|Selector2~0_combout\);

-- Location: FF_X7_Y42_N55
\fec|state_reg.addressb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector2~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|state_reg.addressb~q\);

-- Location: LABCELL_X6_Y42_N45
\fec|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector1~0_combout\ = ( !\fec|state_reg.addressb~q\ & ( !\fec|state_reg.init~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_state_reg.init~q\,
	dataf => \fec|ALT_INV_state_reg.addressb~q\,
	combout => \fec|Selector1~0_combout\);

-- Location: LABCELL_X6_Y42_N36
\fec|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector1~1_combout\ = ( \fec|state_reg.hold~q\ & ( \fec|Selector50~0_combout\ & ( (!\fec|Equal0~0_combout\) # ((!\fec|Selector1~0_combout\) # ((!\fec|Equal0~6_combout\) # (\fec|state_reg.shifty~q\))) ) ) ) # ( !\fec|state_reg.hold~q\ & ( 
-- \fec|Selector50~0_combout\ & ( (!\fec|Selector1~0_combout\) # (\fec|state_reg.shifty~q\) ) ) ) # ( \fec|state_reg.hold~q\ & ( !\fec|Selector50~0_combout\ & ( (!\fec|Equal0~0_combout\) # ((!\fec|Selector1~0_combout\) # (!\fec|Equal0~6_combout\)) ) ) ) # ( 
-- !\fec|state_reg.hold~q\ & ( !\fec|Selector50~0_combout\ & ( !\fec|Selector1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100111111111110111011001111110011111111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_Equal0~0_combout\,
	datab => \fec|ALT_INV_Selector1~0_combout\,
	datac => \fec|ALT_INV_state_reg.shifty~q\,
	datad => \fec|ALT_INV_Equal0~6_combout\,
	datae => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_Selector50~0_combout\,
	combout => \fec|Selector1~1_combout\);

-- Location: FF_X6_Y42_N38
\fec|state_reg.hold\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector1~1_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|state_reg.hold~q\);

-- Location: FF_X6_Y42_N4
\fec|holdCount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|holdCount~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	sclr => \fec|ALT_INV_state_reg.hold~q\,
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount[1]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y42_N3
\fec|holdCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|holdCount~0_combout\ = ( \fec|Equal0~6_combout\ & ( (\fec|Add1~5_sumout\ & !\fec|Equal0~0_combout\) ) ) # ( !\fec|Equal0~6_combout\ & ( \fec|Add1~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_Add1~5_sumout\,
	datad => \fec|ALT_INV_Equal0~0_combout\,
	dataf => \fec|ALT_INV_Equal0~6_combout\,
	combout => \fec|holdCount~0_combout\);

-- Location: FF_X6_Y42_N5
\fec|holdCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|holdCount~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	sclr => \fec|ALT_INV_state_reg.hold~q\,
	ena => \fec|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|holdCount\(1));

-- Location: LABCELL_X6_Y42_N21
\fec|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Equal0~0_combout\ = ( \fec|holdCount\(0) & ( !\fec|holdCount\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fec|ALT_INV_holdCount\(1),
	dataf => \fec|ALT_INV_holdCount\(0),
	combout => \fec|Equal0~0_combout\);

-- Location: LABCELL_X6_Y42_N12
\fec|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector3~0_combout\ = ( \fec|state_reg.hold~q\ & ( \fec|state_reg.shifty~q\ & ( (!\fec|Selector50~0_combout\) # ((\fec|Equal0~0_combout\ & (\fec|Equal0~6_combout\ & \fec|holdC~q\))) ) ) ) # ( !\fec|state_reg.hold~q\ & ( \fec|state_reg.shifty~q\ & ( 
-- !\fec|Selector50~0_combout\ ) ) ) # ( \fec|state_reg.hold~q\ & ( !\fec|state_reg.shifty~q\ & ( (\fec|Equal0~0_combout\ & (\fec|Equal0~6_combout\ & \fec|holdC~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000111110000111100001111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_Equal0~0_combout\,
	datab => \fec|ALT_INV_Equal0~6_combout\,
	datac => \fec|ALT_INV_Selector50~0_combout\,
	datad => \fec|ALT_INV_holdC~q\,
	datae => \fec|ALT_INV_state_reg.hold~q\,
	dataf => \fec|ALT_INV_state_reg.shifty~q\,
	combout => \fec|Selector3~0_combout\);

-- Location: FF_X6_Y42_N13
\fec|state_reg.shiftx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector3~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|state_reg.shiftx~q\);

-- Location: LABCELL_X7_Y42_N48
\fec|data_out_valid_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|data_out_valid_int~0_combout\ = ( \fec|state_reg.shiftx~q\ & ( \fec|state_reg.shifty~q\ ) ) # ( !\fec|state_reg.shiftx~q\ & ( \fec|state_reg.shifty~q\ ) ) # ( \fec|state_reg.shiftx~q\ & ( !\fec|state_reg.shifty~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \fec|ALT_INV_state_reg.shiftx~q\,
	dataf => \fec|ALT_INV_state_reg.shifty~q\,
	combout => \fec|data_out_valid_int~0_combout\);

-- Location: FF_X7_Y42_N49
\fec|data_out_valid_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|data_out_valid_int~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|data_out_valid_int~q\);

-- Location: LABCELL_X7_Y43_N51
\interleaver|state_reg.idle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|state_reg.idle~0_combout\ = ( \fec|data_out_valid_int~q\ & ( (\interleaver|state_reg.idle~q\) # (\pll_clk|pll_inst|altera_pll_i|locked_wire\(0)) ) ) # ( !\fec|data_out_valid_int~q\ & ( \interleaver|state_reg.idle~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	datad => \interleaver|ALT_INV_state_reg.idle~q\,
	dataf => \fec|ALT_INV_data_out_valid_int~q\,
	combout => \interleaver|state_reg.idle~0_combout\);

-- Location: FF_X7_Y43_N52
\interleaver|state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|state_reg.idle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|state_reg.idle~q\);

-- Location: LABCELL_X7_Y43_N39
\interleaver|address_a[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|address_a[4]~0_combout\ = ( \fec|data_out_valid_int~q\ & ( (\interleaver|state_reg.idle~q\ & ((!\interleaver|counter_b\(8)) # ((!\interleaver|counter_b[7]~DUPLICATE_q\) # (!\interleaver|state_reg.input_output~q\)))) ) ) # ( 
-- !\fec|data_out_valid_int~q\ & ( (\interleaver|state_reg.idle~q\ & !\interleaver|state_reg.input_output~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000011100000111100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_counter_b\(8),
	datab => \interleaver|ALT_INV_counter_b[7]~DUPLICATE_q\,
	datac => \interleaver|ALT_INV_state_reg.idle~q\,
	datad => \interleaver|ALT_INV_state_reg.input_output~q\,
	dataf => \fec|ALT_INV_data_out_valid_int~q\,
	combout => \interleaver|address_a[4]~0_combout\);

-- Location: FF_X6_Y43_N19
\interleaver|counter_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add0~5_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~1_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_a\(6));

-- Location: LABCELL_X6_Y43_N15
\interleaver|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add0~9_sumout\ = SUM(( \interleaver|counter_a\(5) ) + ( GND ) + ( \interleaver|Add0~30\ ))
-- \interleaver|Add0~10\ = CARRY(( \interleaver|counter_a\(5) ) + ( GND ) + ( \interleaver|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_counter_a\(5),
	cin => \interleaver|Add0~30\,
	sumout => \interleaver|Add0~9_sumout\,
	cout => \interleaver|Add0~10\);

-- Location: LABCELL_X6_Y43_N18
\interleaver|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add0~5_sumout\ = SUM(( \interleaver|counter_a\(6) ) + ( GND ) + ( \interleaver|Add0~10\ ))
-- \interleaver|Add0~6\ = CARRY(( \interleaver|counter_a\(6) ) + ( GND ) + ( \interleaver|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_counter_a\(6),
	cin => \interleaver|Add0~10\,
	sumout => \interleaver|Add0~5_sumout\,
	cout => \interleaver|Add0~6\);

-- Location: FF_X6_Y43_N20
\interleaver|counter_a[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add0~5_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~1_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_a[6]~DUPLICATE_q\);

-- Location: FF_X6_Y43_N14
\interleaver|counter_a[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add0~29_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~1_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_a[4]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y43_N54
\interleaver|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|LessThan0~0_combout\ = ( \interleaver|counter_a\(0) & ( (\interleaver|counter_a\(2) & (\interleaver|counter_a\(3) & (\interleaver|counter_a\(1) & \interleaver|counter_a[4]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_counter_a\(2),
	datab => \interleaver|ALT_INV_counter_a\(3),
	datac => \interleaver|ALT_INV_counter_a\(1),
	datad => \interleaver|ALT_INV_counter_a[4]~DUPLICATE_q\,
	datae => \interleaver|ALT_INV_counter_a\(0),
	combout => \interleaver|LessThan0~0_combout\);

-- Location: LABCELL_X6_Y43_N21
\interleaver|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add0~1_sumout\ = SUM(( \interleaver|counter_a\(7) ) + ( GND ) + ( \interleaver|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_counter_a\(7),
	cin => \interleaver|Add0~6\,
	sumout => \interleaver|Add0~1_sumout\);

-- Location: FF_X6_Y43_N22
\interleaver|counter_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add0~1_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~1_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_a\(7));

-- Location: LABCELL_X7_Y43_N54
\interleaver|counter_a[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|counter_a[2]~3_combout\ = ( \interleaver|counter_b\(5) & ( (\interleaver|counter_b[8]~DUPLICATE_q\ & (((\interleaver|counter_b\(6) & \interleaver|counter_a[2]~0_combout\)) # (\interleaver|counter_b\(7)))) ) ) # ( !\interleaver|counter_b\(5) & 
-- ( (\interleaver|counter_b[8]~DUPLICATE_q\ & \interleaver|counter_b\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000001001100110000000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_counter_b\(6),
	datab => \interleaver|ALT_INV_counter_b[8]~DUPLICATE_q\,
	datac => \interleaver|ALT_INV_counter_a[2]~0_combout\,
	datad => \interleaver|ALT_INV_counter_b\(7),
	dataf => \interleaver|ALT_INV_counter_b\(5),
	combout => \interleaver|counter_a[2]~3_combout\);

-- Location: LABCELL_X6_Y43_N24
\interleaver|counter_a[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|counter_a[2]~1_combout\ = ( \interleaver|counter_a[2]~3_combout\ & ( \interleaver|state_reg.input_output~q\ ) ) # ( !\interleaver|counter_a[2]~3_combout\ & ( \interleaver|state_reg.input_output~q\ & ( (\interleaver|counter_a[6]~DUPLICATE_q\ & 
-- \interleaver|counter_a\(7)) ) ) ) # ( \interleaver|counter_a[2]~3_combout\ & ( !\interleaver|state_reg.input_output~q\ & ( (\interleaver|counter_a\(7) & (((\interleaver|counter_a\(5) & \interleaver|LessThan0~0_combout\)) # 
-- (\interleaver|counter_a[6]~DUPLICATE_q\))) ) ) ) # ( !\interleaver|counter_a[2]~3_combout\ & ( !\interleaver|state_reg.input_output~q\ & ( (\interleaver|counter_a\(7) & (((\interleaver|counter_a\(5) & \interleaver|LessThan0~0_combout\)) # 
-- (\interleaver|counter_a[6]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010111000000000101011100000000010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_counter_a[6]~DUPLICATE_q\,
	datab => \interleaver|ALT_INV_counter_a\(5),
	datac => \interleaver|ALT_INV_LessThan0~0_combout\,
	datad => \interleaver|ALT_INV_counter_a\(7),
	datae => \interleaver|ALT_INV_counter_a[2]~3_combout\,
	dataf => \interleaver|ALT_INV_state_reg.input_output~q\,
	combout => \interleaver|counter_a[2]~1_combout\);

-- Location: FF_X6_Y43_N2
\interleaver|counter_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add0~17_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~1_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_a\(0));

-- Location: LABCELL_X6_Y43_N3
\interleaver|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add0~21_sumout\ = SUM(( \interleaver|counter_a\(1) ) + ( GND ) + ( \interleaver|Add0~18\ ))
-- \interleaver|Add0~22\ = CARRY(( \interleaver|counter_a\(1) ) + ( GND ) + ( \interleaver|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_counter_a\(1),
	cin => \interleaver|Add0~18\,
	sumout => \interleaver|Add0~21_sumout\,
	cout => \interleaver|Add0~22\);

-- Location: FF_X6_Y43_N5
\interleaver|counter_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add0~21_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~1_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_a\(1));

-- Location: LABCELL_X6_Y43_N6
\interleaver|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add0~13_sumout\ = SUM(( \interleaver|counter_a\(2) ) + ( GND ) + ( \interleaver|Add0~22\ ))
-- \interleaver|Add0~14\ = CARRY(( \interleaver|counter_a\(2) ) + ( GND ) + ( \interleaver|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_counter_a\(2),
	cin => \interleaver|Add0~22\,
	sumout => \interleaver|Add0~13_sumout\,
	cout => \interleaver|Add0~14\);

-- Location: FF_X6_Y43_N7
\interleaver|counter_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add0~13_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~1_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_a\(2));

-- Location: LABCELL_X6_Y43_N9
\interleaver|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add0~25_sumout\ = SUM(( \interleaver|counter_a\(3) ) + ( GND ) + ( \interleaver|Add0~14\ ))
-- \interleaver|Add0~26\ = CARRY(( \interleaver|counter_a\(3) ) + ( GND ) + ( \interleaver|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_counter_a\(3),
	cin => \interleaver|Add0~14\,
	sumout => \interleaver|Add0~25_sumout\,
	cout => \interleaver|Add0~26\);

-- Location: FF_X6_Y43_N11
\interleaver|counter_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add0~25_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~1_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_a\(3));

-- Location: LABCELL_X6_Y43_N12
\interleaver|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add0~29_sumout\ = SUM(( \interleaver|counter_a\(4) ) + ( GND ) + ( \interleaver|Add0~26\ ))
-- \interleaver|Add0~30\ = CARRY(( \interleaver|counter_a\(4) ) + ( GND ) + ( \interleaver|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_counter_a\(4),
	cin => \interleaver|Add0~26\,
	sumout => \interleaver|Add0~29_sumout\,
	cout => \interleaver|Add0~30\);

-- Location: FF_X6_Y43_N13
\interleaver|counter_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add0~29_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~1_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_a\(4));

-- Location: FF_X6_Y43_N16
\interleaver|counter_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add0~9_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~1_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_a\(5));

-- Location: MLABCELL_X4_Y43_N42
\interleaver|state_reg.input_output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|state_reg.input_output~0_combout\ = ( \interleaver|LessThan0~0_combout\ & ( (\interleaver|counter_a\(7) & ((\interleaver|counter_a\(6)) # (\interleaver|counter_a\(5)))) ) ) # ( !\interleaver|LessThan0~0_combout\ & ( 
-- (\interleaver|counter_a\(6) & \interleaver|counter_a\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interleaver|ALT_INV_counter_a\(5),
	datac => \interleaver|ALT_INV_counter_a\(6),
	datad => \interleaver|ALT_INV_counter_a\(7),
	dataf => \interleaver|ALT_INV_LessThan0~0_combout\,
	combout => \interleaver|state_reg.input_output~0_combout\);

-- Location: MLABCELL_X4_Y43_N45
\interleaver|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Selector0~0_combout\ = ( \interleaver|state_reg.idle~q\ & ( (!\interleaver|state_reg.input_output~0_combout\ & \interleaver|state_reg.input_a~q\) ) ) # ( !\interleaver|state_reg.idle~q\ & ( ((!\interleaver|state_reg.input_output~0_combout\ & 
-- \interleaver|state_reg.input_a~q\)) # (\fec|data_out_valid_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110101010101011111010100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_data_out_valid_int~q\,
	datac => \interleaver|ALT_INV_state_reg.input_output~0_combout\,
	datad => \interleaver|ALT_INV_state_reg.input_a~q\,
	dataf => \interleaver|ALT_INV_state_reg.idle~q\,
	combout => \interleaver|Selector0~0_combout\);

-- Location: FF_X4_Y43_N46
\interleaver|state_reg.input_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Selector0~0_combout\,
	ena => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|state_reg.input_a~q\);

-- Location: MLABCELL_X4_Y43_N36
\interleaver|state_reg.input_output~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|state_reg.input_output~1_combout\ = ( \interleaver|state_reg.input_a~q\ & ( ((\pll_clk|pll_inst|altera_pll_i|locked_wire\(0) & \interleaver|state_reg.input_output~0_combout\)) # (\interleaver|state_reg.input_output~q\) ) ) # ( 
-- !\interleaver|state_reg.input_a~q\ & ( \interleaver|state_reg.input_output~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	datac => \interleaver|ALT_INV_state_reg.input_output~0_combout\,
	datad => \interleaver|ALT_INV_state_reg.input_output~q\,
	dataf => \interleaver|ALT_INV_state_reg.input_a~q\,
	combout => \interleaver|state_reg.input_output~1_combout\);

-- Location: FF_X4_Y43_N38
\interleaver|state_reg.input_output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|state_reg.input_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|state_reg.input_output~q\);

-- Location: FF_X7_Y43_N34
\interleaver|data_out_valid_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \interleaver|state_reg.input_output~q\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|data_out_valid_int~q\);

-- Location: FF_X17_Y44_N56
\modulator|state_reg.out_Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \modulator|state_reg.out_I~q\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|state_reg.out_Q~q\);

-- Location: LABCELL_X17_Y44_N18
\modulator|state_reg.idle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|state_reg.idle~0_combout\ = ( \modulator|state_reg.idle~q\ ) # ( !\modulator|state_reg.idle~q\ & ( \interleaver|data_out_valid_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interleaver|ALT_INV_data_out_valid_int~q\,
	datae => \modulator|ALT_INV_state_reg.idle~q\,
	combout => \modulator|state_reg.idle~0_combout\);

-- Location: FF_X17_Y44_N20
\modulator|state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|state_reg.idle~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|state_reg.idle~q\);

-- Location: LABCELL_X17_Y44_N57
\modulator|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|Selector1~0_combout\ = ( \modulator|state_reg.idle~q\ & ( \modulator|state_reg.out_Q~q\ ) ) # ( !\modulator|state_reg.idle~q\ & ( (\modulator|state_reg.out_Q~q\) # (\interleaver|data_out_valid_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_data_out_valid_int~q\,
	datad => \modulator|ALT_INV_state_reg.out_Q~q\,
	dataf => \modulator|ALT_INV_state_reg.idle~q\,
	combout => \modulator|Selector1~0_combout\);

-- Location: FF_X17_Y44_N59
\modulator|state_reg.out_I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|Selector1~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|state_reg.out_I~q\);

-- Location: FF_X14_Y44_N31
\modulator|data_out_I_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_I_int[0]~feeder_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_I~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_I_int\(0));

-- Location: FF_X10_Y42_N46
\fec|wren_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \prbs|data_out_valid_int~q\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|wren_a~q\);

-- Location: IOIBUF_X8_Y45_N92
\data_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in,
	o => \data_in~input_o\);

-- Location: LABCELL_X5_Y42_N33
\prbs|r_next[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \prbs|r_next\(14) = !\prbs|r_reg\(1) $ (\prbs|r_reg\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prbs|ALT_INV_r_reg\(1),
	datac => \prbs|ALT_INV_r_reg\(0),
	combout => \prbs|r_next\(14));

-- Location: FF_X5_Y42_N34
\prbs|r_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \prbs|r_next\(14),
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prbs|r_reg\(14));

-- Location: LABCELL_X5_Y42_N0
\prbs|r_reg[13]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \prbs|r_reg[13]~8_combout\ = ( !\prbs|r_reg\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \prbs|ALT_INV_r_reg\(14),
	combout => \prbs|r_reg[13]~8_combout\);

-- Location: FF_X5_Y42_N2
\prbs|r_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \prbs|r_reg[13]~8_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prbs|r_reg\(13));

-- Location: FF_X5_Y42_N53
\prbs|r_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \prbs|r_reg\(13),
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prbs|r_reg\(12));

-- Location: LABCELL_X5_Y42_N48
\prbs|r_reg[11]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \prbs|r_reg[11]~7_combout\ = ( !\prbs|r_reg\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \prbs|ALT_INV_r_reg\(12),
	combout => \prbs|r_reg[11]~7_combout\);

-- Location: FF_X5_Y42_N49
\prbs|r_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \prbs|r_reg[11]~7_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prbs|r_reg\(11));

-- Location: LABCELL_X5_Y42_N15
\prbs|r_reg[10]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \prbs|r_reg[10]~6_combout\ = ( !\prbs|r_reg\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \prbs|ALT_INV_r_reg\(11),
	combout => \prbs|r_reg[10]~6_combout\);

-- Location: FF_X5_Y42_N16
\prbs|r_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \prbs|r_reg[10]~6_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prbs|r_reg\(10));

-- Location: FF_X5_Y42_N13
\prbs|r_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \prbs|r_reg\(10),
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prbs|r_reg\(9));

-- Location: FF_X5_Y42_N41
\prbs|r_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \prbs|r_reg\(9),
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prbs|r_reg\(8));

-- Location: LABCELL_X5_Y42_N36
\prbs|r_reg[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \prbs|r_reg[7]~5_combout\ = ( !\prbs|r_reg\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \prbs|ALT_INV_r_reg\(8),
	combout => \prbs|r_reg[7]~5_combout\);

-- Location: FF_X5_Y42_N38
\prbs|r_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \prbs|r_reg[7]~5_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prbs|r_reg\(7));

-- Location: FF_X5_Y42_N5
\prbs|r_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \prbs|r_reg\(7),
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prbs|r_reg\(6));

-- Location: FF_X5_Y42_N19
\prbs|r_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \prbs|r_reg\(6),
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prbs|r_reg\(5));

-- Location: LABCELL_X5_Y42_N24
\prbs|r_reg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \prbs|r_reg[4]~4_combout\ = ( !\prbs|r_reg\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \prbs|ALT_INV_r_reg\(5),
	combout => \prbs|r_reg[4]~4_combout\);

-- Location: FF_X5_Y42_N26
\prbs|r_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \prbs|r_reg[4]~4_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prbs|r_reg\(4));

-- Location: LABCELL_X5_Y42_N27
\prbs|r_reg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \prbs|r_reg[3]~3_combout\ = ( !\prbs|r_reg\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \prbs|ALT_INV_r_reg\(4),
	combout => \prbs|r_reg[3]~3_combout\);

-- Location: FF_X5_Y42_N28
\prbs|r_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \prbs|r_reg[3]~3_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prbs|r_reg\(3));

-- Location: LABCELL_X5_Y42_N21
\prbs|r_reg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \prbs|r_reg[2]~2_combout\ = ( !\prbs|r_reg\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \prbs|ALT_INV_r_reg\(3),
	combout => \prbs|r_reg[2]~2_combout\);

-- Location: FF_X5_Y42_N22
\prbs|r_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \prbs|r_reg[2]~2_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prbs|r_reg\(2));

-- Location: LABCELL_X5_Y42_N18
\prbs|r_reg[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \prbs|r_reg[1]~0_combout\ = ( !\prbs|r_reg\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \prbs|ALT_INV_r_reg\(2),
	combout => \prbs|r_reg[1]~0_combout\);

-- Location: FF_X10_Y42_N41
\prbs|r_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \prbs|r_reg[1]~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prbs|r_reg\(1));

-- Location: LABCELL_X5_Y42_N30
\prbs|r_reg[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \prbs|r_reg[0]~1_combout\ = !\prbs|r_reg\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \prbs|ALT_INV_r_reg\(1),
	combout => \prbs|r_reg[0]~1_combout\);

-- Location: FF_X5_Y42_N32
\prbs|r_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \prbs|r_reg[0]~1_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \data_in_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prbs|r_reg\(0));

-- Location: LABCELL_X5_Y42_N9
\prbs|data_out_prbs\ : cyclonev_lcell_comb
-- Equation(s):
-- \prbs|data_out_prbs~combout\ = ( \prbs|r_reg\(1) & ( !\data_in~input_o\ $ (!\prbs|r_reg\(0)) ) ) # ( !\prbs|r_reg\(1) & ( !\data_in~input_o\ $ (\prbs|r_reg\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in~input_o\,
	datac => \prbs|ALT_INV_r_reg\(0),
	dataf => \prbs|ALT_INV_r_reg\(1),
	combout => \prbs|data_out_prbs~combout\);

-- Location: MLABCELL_X4_Y43_N54
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

-- Location: M10K_X11_Y42_N0
\fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fec_rtl:fec|dpr:RAM_2port|altsyncram:altsyncram_component|altsyncram_6404:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 192,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 16,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 24,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \fec|wren_a~q\,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \pll_clk|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	clk1 => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	portadatain => \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \fec|RAM_2port|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X6_Y42_N7
\fec|state_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector49~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|state_counter\(2));

-- Location: LABCELL_X7_Y42_N6
\fec|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Mux0~4_combout\ = ( !\fec|state_counter\(1) & ( (!\fec|state_counter\(2) & ((!\fec|state_counter\(0) & (((\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(0))))) # (\fec|state_counter\(0) & 
-- (\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(1))))) # (\fec|state_counter\(2) & ((((\fec|state_counter\(0)))))) ) ) # ( \fec|state_counter\(1) & ( (!\fec|state_counter\(2) & (((!\fec|state_counter\(0) & 
-- (\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(2))) # (\fec|state_counter\(0) & ((\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(3))))))) # (\fec|state_counter\(2) & ((((\fec|state_counter\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001110111000010100101010100001010011101110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_counter\(2),
	datab => \fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	datac => \fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	datad => \fec|ALT_INV_state_counter\(0),
	datae => \fec|ALT_INV_state_counter\(1),
	dataf => \fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	datag => \fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \fec|Mux0~4_combout\);

-- Location: LABCELL_X7_Y42_N30
\fec|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Mux0~0_combout\ = ( !\fec|state_counter\(1) & ( (!\fec|state_counter\(2) & ((((\fec|Mux0~4_combout\))))) # (\fec|state_counter\(2) & (((!\fec|Mux0~4_combout\ & (\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(4))) # (\fec|Mux0~4_combout\ & 
-- ((\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(5))))))) ) ) # ( \fec|state_counter\(1) & ( (!\fec|state_counter\(2) & ((((\fec|Mux0~4_combout\))))) # (\fec|state_counter\(2) & ((!\fec|Mux0~4_combout\ & 
-- (((\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(6))))) # (\fec|Mux0~4_combout\ & (\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010110101010000001011011101100000101111111110000010110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_state_counter\(2),
	datab => \fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	datac => \fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	datad => \fec|ALT_INV_Mux0~4_combout\,
	datae => \fec|ALT_INV_state_counter\(1),
	dataf => \fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(5),
	datag => \fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(4),
	combout => \fec|Mux0~0_combout\);

-- Location: LABCELL_X7_Y42_N3
\fec|Selector43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector43~0_combout\ = ( \fec|Mux0~0_combout\ & ( (\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(7)) # (\fec|state_reg.shifty~q\) ) ) # ( !\fec|Mux0~0_combout\ & ( (!\fec|state_reg.shifty~q\ & 
-- \fec|RAM_2port|altsyncram_component|auto_generated|q_b\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_state_reg.shifty~q\,
	datad => \fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	dataf => \fec|ALT_INV_Mux0~0_combout\,
	combout => \fec|Selector43~0_combout\);

-- Location: LABCELL_X6_Y42_N0
\fec|shift_reg[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|shift_reg[4]~0_combout\ = ( \fec|state_reg.shifty~q\ & ( !\pll_clk|pll_inst|altera_pll_i|locked_wire\(0) ) ) # ( !\fec|state_reg.shifty~q\ & ( (\fec|state_reg.init~q\ & !\pll_clk|pll_inst|altera_pll_i|locked_wire\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec|ALT_INV_state_reg.init~q\,
	datac => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	dataf => \fec|ALT_INV_state_reg.shifty~q\,
	combout => \fec|shift_reg[4]~0_combout\);

-- Location: FF_X7_Y42_N5
\fec|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector43~0_combout\,
	ena => \fec|shift_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|shift_reg\(5));

-- Location: LABCELL_X7_Y42_N0
\fec|Selector44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector44~0_combout\ = ( \fec|state_reg.shifty~q\ & ( \fec|shift_reg\(5) ) ) # ( !\fec|state_reg.shifty~q\ & ( \fec|RAM_2port|altsyncram_component|auto_generated|q_b\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	datad => \fec|ALT_INV_shift_reg\(5),
	dataf => \fec|ALT_INV_state_reg.shifty~q\,
	combout => \fec|Selector44~0_combout\);

-- Location: FF_X7_Y42_N1
\fec|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector44~0_combout\,
	ena => \fec|shift_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|shift_reg\(4));

-- Location: LABCELL_X7_Y42_N36
\fec|Selector45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector45~0_combout\ = ( \fec|shift_reg\(4) & ( (\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(5)) # (\fec|state_reg.shifty~q\) ) ) # ( !\fec|shift_reg\(4) & ( (!\fec|state_reg.shifty~q\ & 
-- \fec|RAM_2port|altsyncram_component|auto_generated|q_b\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec|ALT_INV_state_reg.shifty~q\,
	datac => \fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(5),
	dataf => \fec|ALT_INV_shift_reg\(4),
	combout => \fec|Selector45~0_combout\);

-- Location: FF_X7_Y42_N38
\fec|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector45~0_combout\,
	ena => \fec|shift_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|shift_reg\(3));

-- Location: LABCELL_X7_Y42_N39
\fec|Selector46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector46~0_combout\ = ( \fec|shift_reg\(3) & ( (\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(4)) # (\fec|state_reg.shifty~q\) ) ) # ( !\fec|shift_reg\(3) & ( (!\fec|state_reg.shifty~q\ & 
-- \fec|RAM_2port|altsyncram_component|auto_generated|q_b\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fec|ALT_INV_state_reg.shifty~q\,
	datad => \fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(4),
	dataf => \fec|ALT_INV_shift_reg\(3),
	combout => \fec|Selector46~0_combout\);

-- Location: FF_X7_Y42_N41
\fec|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector46~0_combout\,
	ena => \fec|shift_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|shift_reg\(2));

-- Location: LABCELL_X7_Y42_N24
\fec|Selector47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector47~0_combout\ = ( \fec|shift_reg\(2) & ( (\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(3)) # (\fec|state_reg.shifty~q\) ) ) # ( !\fec|shift_reg\(2) & ( (!\fec|state_reg.shifty~q\ & 
-- \fec|RAM_2port|altsyncram_component|auto_generated|q_b\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fec|ALT_INV_state_reg.shifty~q\,
	datac => \fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	dataf => \fec|ALT_INV_shift_reg\(2),
	combout => \fec|Selector47~0_combout\);

-- Location: FF_X7_Y42_N26
\fec|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector47~0_combout\,
	ena => \fec|shift_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|shift_reg\(1));

-- Location: FF_X7_Y42_N25
\fec|shift_reg[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector47~0_combout\,
	ena => \fec|shift_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|shift_reg[1]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y42_N27
\fec|Selector48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector48~0_combout\ = ( \fec|shift_reg[1]~DUPLICATE_q\ & ( (\fec|state_reg.shifty~q\) # (\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(2)) ) ) # ( !\fec|shift_reg[1]~DUPLICATE_q\ & ( 
-- (\fec|RAM_2port|altsyncram_component|auto_generated|q_b\(2) & !\fec|state_reg.shifty~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|RAM_2port|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	datac => \fec|ALT_INV_state_reg.shifty~q\,
	dataf => \fec|ALT_INV_shift_reg[1]~DUPLICATE_q\,
	combout => \fec|Selector48~0_combout\);

-- Location: FF_X7_Y42_N29
\fec|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector48~0_combout\,
	ena => \fec|shift_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|shift_reg\(0));

-- Location: LABCELL_X7_Y42_N12
\fec|data_out_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|data_out_int~0_combout\ = ( \fec|shift_reg\(4) & ( !\fec|shift_reg\(3) $ (\fec|shift_reg\(0)) ) ) # ( !\fec|shift_reg\(4) & ( !\fec|shift_reg\(3) $ (!\fec|shift_reg\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_shift_reg\(3),
	datac => \fec|ALT_INV_shift_reg\(0),
	dataf => \fec|ALT_INV_shift_reg\(4),
	combout => \fec|data_out_int~0_combout\);

-- Location: LABCELL_X7_Y42_N42
\fec|Selector52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fec|Selector52~0_combout\ = ( \fec|data_out_int~0_combout\ & ( \fec|Mux0~0_combout\ & ( (!\fec|shift_reg\(5) & (((\fec|shift_reg\(1) & \fec|state_reg.shifty~q\)))) # (\fec|shift_reg\(5) & (((\fec|shift_reg\(1) & \fec|state_reg.shifty~q\)) # 
-- (\fec|state_reg.shiftx~q\))) ) ) ) # ( !\fec|data_out_int~0_combout\ & ( \fec|Mux0~0_combout\ & ( (!\fec|shift_reg\(5) & (((!\fec|shift_reg\(1) & \fec|state_reg.shifty~q\)) # (\fec|state_reg.shiftx~q\))) # (\fec|shift_reg\(5) & (((!\fec|shift_reg\(1) & 
-- \fec|state_reg.shifty~q\)))) ) ) ) # ( \fec|data_out_int~0_combout\ & ( !\fec|Mux0~0_combout\ & ( (!\fec|shift_reg\(5) & (((!\fec|shift_reg\(1) & \fec|state_reg.shifty~q\)) # (\fec|state_reg.shiftx~q\))) # (\fec|shift_reg\(5) & (((!\fec|shift_reg\(1) & 
-- \fec|state_reg.shifty~q\)))) ) ) ) # ( !\fec|data_out_int~0_combout\ & ( !\fec|Mux0~0_combout\ & ( (!\fec|shift_reg\(5) & (((\fec|shift_reg\(1) & \fec|state_reg.shifty~q\)))) # (\fec|shift_reg\(5) & (((\fec|shift_reg\(1) & \fec|state_reg.shifty~q\)) # 
-- (\fec|state_reg.shiftx~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111001000101111001000100010111100100001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_shift_reg\(5),
	datab => \fec|ALT_INV_state_reg.shiftx~q\,
	datac => \fec|ALT_INV_shift_reg\(1),
	datad => \fec|ALT_INV_state_reg.shifty~q\,
	datae => \fec|ALT_INV_data_out_int~0_combout\,
	dataf => \fec|ALT_INV_Mux0~0_combout\,
	combout => \fec|Selector52~0_combout\);

-- Location: FF_X7_Y42_N43
\fec|data_out_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \fec|Selector52~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fec|data_out_int~q\);

-- Location: MLABCELL_X4_Y43_N39
\interleaver|data_a[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|data_a[0]~0_combout\ = ( \interleaver|state_reg.input_a~q\ & ( (!\pll_clk|pll_inst|altera_pll_i|locked_wire\(0) & ((\interleaver|data_a\(0)))) # (\pll_clk|pll_inst|altera_pll_i|locked_wire\(0) & (\fec|data_out_int~q\)) ) ) # ( 
-- !\interleaver|state_reg.input_a~q\ & ( (!\fec|data_out_valid_int~q\ & (((\interleaver|data_a\(0))))) # (\fec|data_out_valid_int~q\ & ((!\pll_clk|pll_inst|altera_pll_i|locked_wire\(0) & ((\interleaver|data_a\(0)))) # 
-- (\pll_clk|pll_inst|altera_pll_i|locked_wire\(0) & (\fec|data_out_int~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fec|ALT_INV_data_out_valid_int~q\,
	datab => \pll_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	datac => \fec|ALT_INV_data_out_int~q\,
	datad => \interleaver|ALT_INV_data_a\(0),
	dataf => \interleaver|ALT_INV_state_reg.input_a~q\,
	combout => \interleaver|data_a[0]~0_combout\);

-- Location: FF_X4_Y43_N40
\interleaver|data_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|data_a\(0));

-- Location: FF_X7_Y43_N28
\interleaver|address_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \interleaver|counter_a\(4),
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|address_a\(0));

-- Location: FF_X6_Y43_N59
\interleaver|address_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \interleaver|counter_a\(5),
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|address_a\(1));

-- Location: LABCELL_X6_Y43_N30
\interleaver|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add1~1_sumout\ = SUM(( \interleaver|counter_a\(0) ) + ( \interleaver|counter_a[6]~DUPLICATE_q\ ) + ( !VCC ))
-- \interleaver|Add1~2\ = CARRY(( \interleaver|counter_a\(0) ) + ( \interleaver|counter_a[6]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interleaver|ALT_INV_counter_a[6]~DUPLICATE_q\,
	datad => \interleaver|ALT_INV_counter_a\(0),
	cin => GND,
	sumout => \interleaver|Add1~1_sumout\,
	cout => \interleaver|Add1~2\);

-- Location: FF_X6_Y43_N32
\interleaver|address_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add1~1_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|address_a\(2));

-- Location: LABCELL_X6_Y43_N33
\interleaver|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add1~5_sumout\ = SUM(( \interleaver|counter_a\(0) ) + ( !\interleaver|counter_a\(1) $ (!\interleaver|counter_a\(7)) ) + ( \interleaver|Add1~2\ ))
-- \interleaver|Add1~6\ = CARRY(( \interleaver|counter_a\(0) ) + ( !\interleaver|counter_a\(1) $ (!\interleaver|counter_a\(7)) ) + ( \interleaver|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_counter_a\(1),
	datac => \interleaver|ALT_INV_counter_a\(7),
	datad => \interleaver|ALT_INV_counter_a\(0),
	cin => \interleaver|Add1~2\,
	sumout => \interleaver|Add1~5_sumout\,
	cout => \interleaver|Add1~6\);

-- Location: FF_X6_Y43_N34
\interleaver|address_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add1~5_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|address_a\(3));

-- Location: FF_X6_Y43_N23
\interleaver|counter_a[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add0~1_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sclr => \interleaver|counter_a[2]~1_combout\,
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|counter_a[7]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y43_N36
\interleaver|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add1~9_sumout\ = SUM(( (\interleaver|counter_a\(1) & !\interleaver|counter_a[7]~DUPLICATE_q\) ) + ( \interleaver|counter_a\(2) ) + ( \interleaver|Add1~6\ ))
-- \interleaver|Add1~10\ = CARRY(( (\interleaver|counter_a\(1) & !\interleaver|counter_a[7]~DUPLICATE_q\) ) + ( \interleaver|counter_a\(2) ) + ( \interleaver|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_counter_a\(1),
	datac => \interleaver|ALT_INV_counter_a\(2),
	datad => \interleaver|ALT_INV_counter_a[7]~DUPLICATE_q\,
	cin => \interleaver|Add1~6\,
	sumout => \interleaver|Add1~9_sumout\,
	cout => \interleaver|Add1~10\);

-- Location: FF_X6_Y43_N37
\interleaver|address_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add1~9_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|address_a\(4));

-- Location: LABCELL_X6_Y43_N39
\interleaver|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add1~13_sumout\ = SUM(( \interleaver|counter_a\(2) ) + ( !\interleaver|counter_a\(3) $ (((!\interleaver|counter_a\(1)) # (!\interleaver|counter_a\(7)))) ) + ( \interleaver|Add1~10\ ))
-- \interleaver|Add1~14\ = CARRY(( \interleaver|counter_a\(2) ) + ( !\interleaver|counter_a\(3) $ (((!\interleaver|counter_a\(1)) # (!\interleaver|counter_a\(7)))) ) + ( \interleaver|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_counter_a\(1),
	datac => \interleaver|ALT_INV_counter_a\(7),
	datad => \interleaver|ALT_INV_counter_a\(2),
	dataf => \interleaver|ALT_INV_counter_a\(3),
	cin => \interleaver|Add1~10\,
	sumout => \interleaver|Add1~13_sumout\,
	cout => \interleaver|Add1~14\);

-- Location: FF_X6_Y43_N40
\interleaver|address_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add1~13_sumout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|address_a\(5));

-- Location: LABCELL_X6_Y43_N42
\interleaver|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add1~17_sumout\ = SUM(( (\interleaver|counter_a\(3) & ((!\interleaver|counter_a[7]~DUPLICATE_q\) # (!\interleaver|counter_a\(1)))) ) + ( GND ) + ( \interleaver|Add1~14\ ))
-- \interleaver|Add1~18\ = CARRY(( (\interleaver|counter_a\(3) & ((!\interleaver|counter_a[7]~DUPLICATE_q\) # (!\interleaver|counter_a\(1)))) ) + ( GND ) + ( \interleaver|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_counter_a[7]~DUPLICATE_q\,
	datab => \interleaver|ALT_INV_counter_a\(3),
	datad => \interleaver|ALT_INV_counter_a\(1),
	cin => \interleaver|Add1~14\,
	sumout => \interleaver|Add1~17_sumout\,
	cout => \interleaver|Add1~18\);

-- Location: LABCELL_X7_Y43_N36
\interleaver|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Selector5~0_combout\ = ( \interleaver|Add1~17_sumout\ & ( (!\interleaver|state_reg.input_output~q\) # ((!\interleaver|counter_b\(8) & ((!\interleaver|counter_b[7]~DUPLICATE_q\) # (!\interleaver|counter_b\(6))))) ) ) # ( 
-- !\interleaver|Add1~17_sumout\ & ( (\interleaver|state_reg.input_output~q\ & (((\interleaver|counter_b[7]~DUPLICATE_q\ & \interleaver|counter_b\(6))) # (\interleaver|counter_b\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010111000000000101011111111111101010001111111110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_counter_b\(8),
	datab => \interleaver|ALT_INV_counter_b[7]~DUPLICATE_q\,
	datac => \interleaver|ALT_INV_counter_b\(6),
	datad => \interleaver|ALT_INV_state_reg.input_output~q\,
	dataf => \interleaver|ALT_INV_Add1~17_sumout\,
	combout => \interleaver|Selector5~0_combout\);

-- Location: FF_X7_Y43_N37
\interleaver|address_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Selector5~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|address_a\(6));

-- Location: LABCELL_X6_Y43_N45
\interleaver|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add1~21_sumout\ = SUM(( (\interleaver|counter_a[7]~DUPLICATE_q\ & (\interleaver|counter_a\(3) & \interleaver|counter_a\(1))) ) + ( GND ) + ( \interleaver|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_counter_a[7]~DUPLICATE_q\,
	datab => \interleaver|ALT_INV_counter_a\(3),
	datad => \interleaver|ALT_INV_counter_a\(1),
	cin => \interleaver|Add1~18\,
	sumout => \interleaver|Add1~21_sumout\);

-- Location: LABCELL_X7_Y43_N42
\interleaver|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Selector4~0_combout\ = ( \interleaver|Add1~17_sumout\ & ( \interleaver|counter_b[8]~DUPLICATE_q\ & ( \interleaver|Add1~21_sumout\ ) ) ) # ( !\interleaver|Add1~17_sumout\ & ( \interleaver|counter_b[8]~DUPLICATE_q\ & ( 
-- !\interleaver|state_reg.input_output~q\ $ (!\interleaver|Add1~21_sumout\) ) ) ) # ( \interleaver|Add1~17_sumout\ & ( !\interleaver|counter_b[8]~DUPLICATE_q\ & ( \interleaver|Add1~21_sumout\ ) ) ) # ( !\interleaver|Add1~17_sumout\ & ( 
-- !\interleaver|counter_b[8]~DUPLICATE_q\ & ( !\interleaver|Add1~21_sumout\ $ (((!\interleaver|counter_b\(6)) # ((!\interleaver|state_reg.input_output~q\) # (!\interleaver|counter_b[7]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011110000011110000111100111100001111000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_counter_b\(6),
	datab => \interleaver|ALT_INV_state_reg.input_output~q\,
	datac => \interleaver|ALT_INV_Add1~21_sumout\,
	datad => \interleaver|ALT_INV_counter_b[7]~DUPLICATE_q\,
	datae => \interleaver|ALT_INV_Add1~17_sumout\,
	dataf => \interleaver|ALT_INV_counter_b[8]~DUPLICATE_q\,
	combout => \interleaver|Selector4~0_combout\);

-- Location: FF_X7_Y43_N43
\interleaver|address_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Selector4~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \interleaver|address_a[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|address_a\(7));

-- Location: LABCELL_X7_Y43_N57
\interleaver|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Selector3~0_combout\ = ( \interleaver|counter_b[7]~DUPLICATE_q\ & ( (\interleaver|counter_b\(6) & (!\interleaver|counter_b[8]~DUPLICATE_q\ & (\fec|data_out_valid_int~q\ & \interleaver|state_reg.input_output~q\))) ) ) # ( 
-- !\interleaver|counter_b[7]~DUPLICATE_q\ & ( (\interleaver|counter_b[8]~DUPLICATE_q\ & (\fec|data_out_valid_int~q\ & \interleaver|state_reg.input_output~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_counter_b\(6),
	datab => \interleaver|ALT_INV_counter_b[8]~DUPLICATE_q\,
	datac => \fec|ALT_INV_data_out_valid_int~q\,
	datad => \interleaver|ALT_INV_state_reg.input_output~q\,
	dataf => \interleaver|ALT_INV_counter_b[7]~DUPLICATE_q\,
	combout => \interleaver|Selector3~0_combout\);

-- Location: LABCELL_X6_Y43_N48
\interleaver|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Selector3~1_combout\ = ( \interleaver|address_a\(8) & ( \interleaver|Add1~17_sumout\ & ( (!\interleaver|address_a[4]~0_combout\) # (\interleaver|Selector3~0_combout\) ) ) ) # ( !\interleaver|address_a\(8) & ( \interleaver|Add1~17_sumout\ & ( 
-- \interleaver|Selector3~0_combout\ ) ) ) # ( \interleaver|address_a\(8) & ( !\interleaver|Add1~17_sumout\ & ( (!\interleaver|address_a[4]~0_combout\) # ((\interleaver|Selector3~0_combout\ & \interleaver|Add1~21_sumout\)) ) ) ) # ( 
-- !\interleaver|address_a\(8) & ( !\interleaver|Add1~17_sumout\ & ( (\interleaver|Selector3~0_combout\ & \interleaver|Add1~21_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111100001111001100110011001100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interleaver|ALT_INV_Selector3~0_combout\,
	datac => \interleaver|ALT_INV_address_a[4]~0_combout\,
	datad => \interleaver|ALT_INV_Add1~21_sumout\,
	datae => \interleaver|ALT_INV_address_a\(8),
	dataf => \interleaver|ALT_INV_Add1~17_sumout\,
	combout => \interleaver|Selector3~1_combout\);

-- Location: FF_X6_Y43_N50
\interleaver|address_a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Selector3~1_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|address_a\(8));

-- Location: MLABCELL_X4_Y43_N0
\interleaver|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add4~1_sumout\ = SUM(( \interleaver|address_b\(0) ) + ( VCC ) + ( !VCC ))
-- \interleaver|Add4~2\ = CARRY(( \interleaver|address_b\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_address_b\(0),
	cin => GND,
	sumout => \interleaver|Add4~1_sumout\,
	cout => \interleaver|Add4~2\);

-- Location: MLABCELL_X4_Y43_N3
\interleaver|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add4~5_sumout\ = SUM(( \interleaver|address_b\(1) ) + ( GND ) + ( \interleaver|Add4~2\ ))
-- \interleaver|Add4~6\ = CARRY(( \interleaver|address_b\(1) ) + ( GND ) + ( \interleaver|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_address_b\(1),
	cin => \interleaver|Add4~2\,
	sumout => \interleaver|Add4~5_sumout\,
	cout => \interleaver|Add4~6\);

-- Location: MLABCELL_X4_Y43_N48
\interleaver|address_b[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|address_b[2]~1_combout\ = ( \interleaver|LessThan0~0_combout\ & ( \interleaver|state_reg.idle~q\ & ( (!\interleaver|state_reg.input_a~q\) # ((\interleaver|counter_a\(7) & ((\interleaver|counter_a\(5)) # (\interleaver|counter_a\(6))))) ) ) ) # 
-- ( !\interleaver|LessThan0~0_combout\ & ( \interleaver|state_reg.idle~q\ & ( (!\interleaver|state_reg.input_a~q\) # ((\interleaver|counter_a\(6) & \interleaver|counter_a\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111101011111000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_counter_a\(6),
	datab => \interleaver|ALT_INV_counter_a\(5),
	datac => \interleaver|ALT_INV_state_reg.input_a~q\,
	datad => \interleaver|ALT_INV_counter_a\(7),
	datae => \interleaver|ALT_INV_LessThan0~0_combout\,
	dataf => \interleaver|ALT_INV_state_reg.idle~q\,
	combout => \interleaver|address_b[2]~1_combout\);

-- Location: FF_X4_Y43_N4
\interleaver|address_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add4~5_sumout\,
	asdata => \~GND~combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => \interleaver|address_b[2]~0_combout\,
	ena => \interleaver|address_b[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|address_b\(1));

-- Location: MLABCELL_X4_Y43_N6
\interleaver|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add4~9_sumout\ = SUM(( \interleaver|address_b\(2) ) + ( GND ) + ( \interleaver|Add4~6\ ))
-- \interleaver|Add4~10\ = CARRY(( \interleaver|address_b\(2) ) + ( GND ) + ( \interleaver|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_address_b\(2),
	cin => \interleaver|Add4~6\,
	sumout => \interleaver|Add4~9_sumout\,
	cout => \interleaver|Add4~10\);

-- Location: FF_X4_Y43_N7
\interleaver|address_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add4~9_sumout\,
	asdata => \~GND~combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => \interleaver|address_b[2]~0_combout\,
	ena => \interleaver|address_b[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|address_b\(2));

-- Location: MLABCELL_X4_Y43_N9
\interleaver|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add4~13_sumout\ = SUM(( \interleaver|address_b\(3) ) + ( GND ) + ( \interleaver|Add4~10\ ))
-- \interleaver|Add4~14\ = CARRY(( \interleaver|address_b\(3) ) + ( GND ) + ( \interleaver|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_address_b\(3),
	cin => \interleaver|Add4~10\,
	sumout => \interleaver|Add4~13_sumout\,
	cout => \interleaver|Add4~14\);

-- Location: FF_X4_Y43_N10
\interleaver|address_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add4~13_sumout\,
	asdata => \~GND~combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => \interleaver|address_b[2]~0_combout\,
	ena => \interleaver|address_b[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|address_b\(3));

-- Location: MLABCELL_X4_Y43_N12
\interleaver|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add4~17_sumout\ = SUM(( \interleaver|address_b\(4) ) + ( GND ) + ( \interleaver|Add4~14\ ))
-- \interleaver|Add4~18\ = CARRY(( \interleaver|address_b\(4) ) + ( GND ) + ( \interleaver|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_address_b\(4),
	cin => \interleaver|Add4~14\,
	sumout => \interleaver|Add4~17_sumout\,
	cout => \interleaver|Add4~18\);

-- Location: FF_X4_Y43_N13
\interleaver|address_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add4~17_sumout\,
	asdata => \~GND~combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => \interleaver|address_b[2]~0_combout\,
	ena => \interleaver|address_b[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|address_b\(4));

-- Location: MLABCELL_X4_Y43_N15
\interleaver|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add4~21_sumout\ = SUM(( \interleaver|address_b\(5) ) + ( GND ) + ( \interleaver|Add4~18\ ))
-- \interleaver|Add4~22\ = CARRY(( \interleaver|address_b\(5) ) + ( GND ) + ( \interleaver|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_address_b\(5),
	cin => \interleaver|Add4~18\,
	sumout => \interleaver|Add4~21_sumout\,
	cout => \interleaver|Add4~22\);

-- Location: FF_X4_Y43_N16
\interleaver|address_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add4~21_sumout\,
	asdata => \~GND~combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => \interleaver|address_b[2]~0_combout\,
	ena => \interleaver|address_b[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|address_b\(5));

-- Location: MLABCELL_X4_Y43_N18
\interleaver|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add4~25_sumout\ = SUM(( \interleaver|address_b\(6) ) + ( GND ) + ( \interleaver|Add4~22\ ))
-- \interleaver|Add4~26\ = CARRY(( \interleaver|address_b\(6) ) + ( GND ) + ( \interleaver|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_address_b\(6),
	cin => \interleaver|Add4~22\,
	sumout => \interleaver|Add4~25_sumout\,
	cout => \interleaver|Add4~26\);

-- Location: FF_X4_Y43_N19
\interleaver|address_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add4~25_sumout\,
	asdata => \~GND~combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => \interleaver|address_b[2]~0_combout\,
	ena => \interleaver|address_b[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|address_b\(6));

-- Location: MLABCELL_X4_Y43_N21
\interleaver|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add4~29_sumout\ = SUM(( \interleaver|address_b\(7) ) + ( GND ) + ( \interleaver|Add4~26\ ))
-- \interleaver|Add4~30\ = CARRY(( \interleaver|address_b\(7) ) + ( GND ) + ( \interleaver|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_address_b\(7),
	cin => \interleaver|Add4~26\,
	sumout => \interleaver|Add4~29_sumout\,
	cout => \interleaver|Add4~30\);

-- Location: FF_X4_Y43_N22
\interleaver|address_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add4~29_sumout\,
	asdata => \~GND~combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => \interleaver|address_b[2]~0_combout\,
	ena => \interleaver|address_b[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|address_b\(7));

-- Location: FF_X4_Y43_N25
\interleaver|address_b[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add4~33_sumout\,
	asdata => \~GND~combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => \interleaver|address_b[2]~0_combout\,
	ena => \interleaver|address_b[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|address_b\(8));

-- Location: MLABCELL_X4_Y43_N24
\interleaver|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|Add4~33_sumout\ = SUM(( \interleaver|address_b\(8) ) + ( GND ) + ( \interleaver|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interleaver|ALT_INV_address_b\(8),
	cin => \interleaver|Add4~30\,
	sumout => \interleaver|Add4~33_sumout\);

-- Location: FF_X4_Y43_N26
\interleaver|address_b[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add4~33_sumout\,
	asdata => \~GND~combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => \interleaver|address_b[2]~0_combout\,
	ena => \interleaver|address_b[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|address_b[8]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y43_N33
\interleaver|address_b[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|address_b[2]~0_combout\ = ( \interleaver|address_b[8]~DUPLICATE_q\ & ( (!\interleaver|state_reg.input_output~q\) # (\interleaver|address_b\(7)) ) ) # ( !\interleaver|address_b[8]~DUPLICATE_q\ & ( !\interleaver|state_reg.input_output~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_state_reg.input_output~q\,
	datac => \interleaver|ALT_INV_address_b\(7),
	dataf => \interleaver|ALT_INV_address_b[8]~DUPLICATE_q\,
	combout => \interleaver|address_b[2]~0_combout\);

-- Location: FF_X4_Y43_N1
\interleaver|address_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|Add4~1_sumout\,
	asdata => VCC,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => \interleaver|address_b[2]~0_combout\,
	ena => \interleaver|address_b[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|address_b\(0));

-- Location: M10K_X3_Y43_N0
\interleaver|RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "interleaver_rtl_2:interleaver|dpr_interleaver:RAM_interleaver|altsyncram:altsyncram_component|altsyncram_4s04:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 9,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 20,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	portadatain => \interleaver|RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \interleaver|RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \interleaver|RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \interleaver|RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \interleaver|RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \interleaver|RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X4_Y43_N30
\interleaver|data_out_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interleaver|data_out_int~0_combout\ = ( \interleaver|state_reg.input_output~q\ & ( \interleaver|RAM_interleaver|altsyncram_component|auto_generated|q_b\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interleaver|RAM_interleaver|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	dataf => \interleaver|ALT_INV_state_reg.input_output~q\,
	combout => \interleaver|data_out_int~0_combout\);

-- Location: FF_X4_Y43_N31
\interleaver|data_out_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \interleaver|data_out_int~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interleaver|data_out_int~q\);

-- Location: LABCELL_X14_Y44_N6
\modulator|data_out_I_int[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_I_int[1]~0_combout\ = ( !\interleaver|data_out_int~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_I_int[1]~0_combout\);

-- Location: FF_X14_Y44_N7
\modulator|data_out_I_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_I_int[1]~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_I~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_I_int\(1));

-- Location: LABCELL_X14_Y44_N12
\modulator|data_out_I_int[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_I_int[2]~1_combout\ = !\interleaver|data_out_int~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_I_int[2]~1_combout\);

-- Location: FF_X14_Y44_N14
\modulator|data_out_I_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_I_int[2]~1_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_I~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_I_int\(2));

-- Location: LABCELL_X14_Y44_N15
\modulator|data_out_I_int[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_I_int[3]~2_combout\ = !\interleaver|data_out_int~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_I_int[3]~2_combout\);

-- Location: FF_X14_Y44_N17
\modulator|data_out_I_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_I_int[3]~2_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_I~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_I_int\(3));

-- Location: LABCELL_X14_Y44_N48
\modulator|data_out_I_int[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_I_int[4]~3_combout\ = !\interleaver|data_out_int~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_I_int[4]~3_combout\);

-- Location: FF_X14_Y44_N49
\modulator|data_out_I_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_I_int[4]~3_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_I~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_I_int\(4));

-- Location: LABCELL_X14_Y44_N27
\modulator|data_out_I_int[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_I_int[5]~4_combout\ = ( !\interleaver|data_out_int~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_I_int[5]~4_combout\);

-- Location: FF_X14_Y44_N28
\modulator|data_out_I_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_I_int[5]~4_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_I~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_I_int\(5));

-- Location: LABCELL_X14_Y44_N0
\modulator|data_out_I_int[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_I_int[6]~5_combout\ = !\interleaver|data_out_int~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_I_int[6]~5_combout\);

-- Location: FF_X14_Y44_N2
\modulator|data_out_I_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_I_int[6]~5_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_I~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_I_int\(6));

-- Location: FF_X14_Y44_N37
\modulator|data_out_I_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \interleaver|data_out_int~q\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	ena => \modulator|state_reg.out_I~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_I_int\(7));

-- Location: LABCELL_X14_Y44_N39
\modulator|data_out_I_int[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_I_int[8]~feeder_combout\ = ( \interleaver|data_out_int~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_I_int[8]~feeder_combout\);

-- Location: FF_X14_Y44_N40
\modulator|data_out_I_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_I_int[8]~feeder_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_I~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_I_int\(8));

-- Location: LABCELL_X14_Y44_N3
\modulator|data_out_I_int[9]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_I_int[9]~6_combout\ = !\interleaver|data_out_int~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_I_int[9]~6_combout\);

-- Location: FF_X14_Y44_N5
\modulator|data_out_I_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_I_int[9]~6_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_I~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_I_int\(9));

-- Location: LABCELL_X14_Y44_N45
\modulator|data_out_I_int[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_I_int[10]~feeder_combout\ = ( \interleaver|data_out_int~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_I_int[10]~feeder_combout\);

-- Location: FF_X14_Y44_N46
\modulator|data_out_I_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_I_int[10]~feeder_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_I~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_I_int\(10));

-- Location: LABCELL_X14_Y44_N18
\modulator|data_out_I_int[11]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_I_int[11]~7_combout\ = !\interleaver|data_out_int~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_I_int[11]~7_combout\);

-- Location: FF_X14_Y44_N19
\modulator|data_out_I_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_I_int[11]~7_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_I~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_I_int\(11));

-- Location: LABCELL_X14_Y44_N21
\modulator|data_out_I_int[12]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_I_int[12]~8_combout\ = !\interleaver|data_out_int~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_I_int[12]~8_combout\);

-- Location: FF_X14_Y44_N22
\modulator|data_out_I_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_I_int[12]~8_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_I~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_I_int\(12));

-- Location: FF_X14_Y44_N55
\modulator|data_out_I_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \interleaver|data_out_int~q\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	ena => \modulator|state_reg.out_I~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_I_int\(13));

-- Location: LABCELL_X14_Y44_N51
\modulator|data_out_I_int[14]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_I_int[14]~9_combout\ = !\interleaver|data_out_int~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_I_int[14]~9_combout\);

-- Location: FF_X14_Y44_N52
\modulator|data_out_I_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_I_int[14]~9_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_I~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_I_int\(14));

-- Location: LABCELL_X14_Y44_N57
\modulator|data_out_I_int[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_I_int[15]~feeder_combout\ = ( \interleaver|data_out_int~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_I_int[15]~feeder_combout\);

-- Location: FF_X14_Y44_N58
\modulator|data_out_I_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_I_int[15]~feeder_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_I~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_I_int\(15));

-- Location: LABCELL_X17_Y44_N0
\modulator|data_out_Q_int[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_Q_int[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \modulator|data_out_Q_int[0]~feeder_combout\);

-- Location: FF_X17_Y44_N1
\modulator|data_out_Q_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_Q_int[0]~feeder_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_Q_int\(0));

-- Location: LABCELL_X17_Y44_N3
\modulator|data_out_Q_int[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_Q_int[1]~0_combout\ = ( !\interleaver|data_out_int~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_Q_int[1]~0_combout\);

-- Location: FF_X17_Y44_N4
\modulator|data_out_Q_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_Q_int[1]~0_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_Q_int\(1));

-- Location: LABCELL_X17_Y44_N6
\modulator|data_out_Q_int[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_Q_int[2]~1_combout\ = ( !\interleaver|data_out_int~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_Q_int[2]~1_combout\);

-- Location: FF_X17_Y44_N8
\modulator|data_out_Q_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_Q_int[2]~1_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_Q_int\(2));

-- Location: LABCELL_X17_Y44_N42
\modulator|data_out_Q_int[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_Q_int[3]~2_combout\ = !\interleaver|data_out_int~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_Q_int[3]~2_combout\);

-- Location: FF_X17_Y44_N43
\modulator|data_out_Q_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_Q_int[3]~2_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_Q_int\(3));

-- Location: LABCELL_X17_Y44_N48
\modulator|data_out_Q_int[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_Q_int[4]~3_combout\ = !\interleaver|data_out_int~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_Q_int[4]~3_combout\);

-- Location: FF_X17_Y44_N49
\modulator|data_out_Q_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_Q_int[4]~3_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_Q_int\(4));

-- Location: LABCELL_X17_Y44_N51
\modulator|data_out_Q_int[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_Q_int[5]~4_combout\ = !\interleaver|data_out_int~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_Q_int[5]~4_combout\);

-- Location: FF_X17_Y44_N53
\modulator|data_out_Q_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_Q_int[5]~4_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_Q_int\(5));

-- Location: LABCELL_X17_Y44_N24
\modulator|data_out_Q_int[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_Q_int[6]~5_combout\ = !\interleaver|data_out_int~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_Q_int[6]~5_combout\);

-- Location: FF_X17_Y44_N25
\modulator|data_out_Q_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_Q_int[6]~5_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_Q_int\(6));

-- Location: FF_X17_Y44_N10
\modulator|data_out_Q_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \interleaver|data_out_int~q\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	ena => \modulator|state_reg.out_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_Q_int\(7));

-- Location: FF_X17_Y44_N31
\modulator|data_out_Q_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \interleaver|data_out_int~q\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	ena => \modulator|state_reg.out_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_Q_int\(8));

-- Location: LABCELL_X17_Y44_N27
\modulator|data_out_Q_int[9]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_Q_int[9]~6_combout\ = !\interleaver|data_out_int~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_Q_int[9]~6_combout\);

-- Location: FF_X17_Y44_N28
\modulator|data_out_Q_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_Q_int[9]~6_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_Q_int\(9));

-- Location: LABCELL_X17_Y44_N33
\modulator|data_out_Q_int[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_Q_int[10]~feeder_combout\ = ( \interleaver|data_out_int~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_Q_int[10]~feeder_combout\);

-- Location: FF_X17_Y44_N35
\modulator|data_out_Q_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_Q_int[10]~feeder_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_Q_int\(10));

-- Location: LABCELL_X17_Y44_N45
\modulator|data_out_Q_int[11]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_Q_int[11]~7_combout\ = !\interleaver|data_out_int~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_Q_int[11]~7_combout\);

-- Location: FF_X17_Y44_N46
\modulator|data_out_Q_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_Q_int[11]~7_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_Q_int\(11));

-- Location: LABCELL_X17_Y44_N36
\modulator|data_out_Q_int[12]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_Q_int[12]~8_combout\ = !\interleaver|data_out_int~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_Q_int[12]~8_combout\);

-- Location: FF_X17_Y44_N37
\modulator|data_out_Q_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_Q_int[12]~8_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_Q_int\(12));

-- Location: LABCELL_X17_Y44_N15
\modulator|data_out_Q_int[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_Q_int[13]~feeder_combout\ = ( \interleaver|data_out_int~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_Q_int[13]~feeder_combout\);

-- Location: FF_X17_Y44_N16
\modulator|data_out_Q_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_Q_int[13]~feeder_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_Q_int\(13));

-- Location: LABCELL_X17_Y44_N39
\modulator|data_out_Q_int[14]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \modulator|data_out_Q_int[14]~9_combout\ = !\interleaver|data_out_int~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interleaver|ALT_INV_data_out_int~q\,
	combout => \modulator|data_out_Q_int[14]~9_combout\);

-- Location: FF_X17_Y44_N40
\modulator|data_out_Q_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \modulator|data_out_Q_int[14]~9_combout\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \modulator|state_reg.out_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_Q_int\(14));

-- Location: FF_X17_Y44_N14
\modulator|data_out_Q_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \interleaver|data_out_int~q\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	ena => \modulator|state_reg.out_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_Q_int\(15));

-- Location: FF_X17_Y44_N22
\modulator|data_out_valid_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \modulator|state_reg.idle~q\,
	clrn => \pll_clk|pll_inst|altera_pll_i|locked_wire\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modulator|data_out_valid_int~q\);


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;


