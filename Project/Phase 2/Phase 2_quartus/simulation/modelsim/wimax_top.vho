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

-- DATE "12/02/2019 02:20:06"

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

ENTITY 	interleaver_rtl_2 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	data_in_ready : IN std_logic;
	data_out_valid : OUT std_logic;
	data_in : IN std_logic;
	data_out : OUT std_logic
	);
END interleaver_rtl_2;

-- Design Ports Information
-- data_out_valid	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in_ready	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF interleaver_rtl_2 IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_data_in_ready : std_logic;
SIGNAL ww_data_out_valid : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_data_out : std_logic;
SIGNAL \RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \data_in_ready~input_o\ : std_logic;
SIGNAL \state_reg.idle~0_combout\ : std_logic;
SIGNAL \state_reg.idle~q\ : std_logic;
SIGNAL \counter_a[7]~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state_reg.input_a~q\ : std_logic;
SIGNAL \counter_a[7]~1_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \state_reg.input_output~0_combout\ : std_logic;
SIGNAL \state_reg.input_output~q\ : std_logic;
SIGNAL \data_in~input_o\ : std_logic;
SIGNAL \data_a[0]~0_combout\ : std_logic;
SIGNAL \address_a[0]~0_combout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \counter_b[0]~feeder_combout\ : std_logic;
SIGNAL \counter_b[7]~0_combout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \address_a[8]~1_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \address_b[0]~0_combout\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \data_out~1_combout\ : std_logic;
SIGNAL counter_a : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM_interleaver|altsyncram_component|auto_generated|q_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL counter_b : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM_interleaver|altsyncram_component|auto_generated|q_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL address_a : std_logic_vector(8 DOWNTO 0);
SIGNAL address_b : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_data_in~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in_ready~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL ALT_INV_counter_b : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \ALT_INV_state_reg.idle~q\ : std_logic;
SIGNAL ALT_INV_address_b : std_logic_vector(8 DOWNTO 0);
SIGNAL ALT_INV_address_a : std_logic_vector(8 DOWNTO 8);
SIGNAL \ALT_INV_state_reg.input_a~q\ : std_logic;
SIGNAL \ALT_INV_state_reg.input_output~q\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL ALT_INV_counter_a : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \RAM_interleaver|altsyncram_component|auto_generated|ALT_INV_q_b\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_data_in_ready <= data_in_ready;
data_out_valid <= ww_data_out_valid;
ww_data_in <= data_in;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \data_a[0]~0_combout\);

\RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\);

\RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (address_a(8) & address_a(7) & address_a(6) & address_a(5) & address_a(4) & address_a(3) & address_a(2) & address_a(1) & address_a(0));

\RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (address_b(8) & address_b(7) & address_b(6) & address_b(5) & address_b(4) & address_b(3) & address_b(2) & address_b(1) & address_b(0));

\RAM_interleaver|altsyncram_component|auto_generated|q_a\(0) <= \RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\RAM_interleaver|altsyncram_component|auto_generated|q_b\(0) <= \RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\ALT_INV_data_in~input_o\ <= NOT \data_in~input_o\;
\ALT_INV_data_in_ready~input_o\ <= NOT \data_in_ready~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
ALT_INV_counter_b(0) <= NOT counter_b(0);
ALT_INV_counter_b(1) <= NOT counter_b(1);
ALT_INV_counter_b(2) <= NOT counter_b(2);
ALT_INV_counter_b(3) <= NOT counter_b(3);
ALT_INV_counter_b(4) <= NOT counter_b(4);
ALT_INV_counter_b(5) <= NOT counter_b(5);
\ALT_INV_Selector18~0_combout\ <= NOT \Selector18~0_combout\;
ALT_INV_counter_b(6) <= NOT counter_b(6);
ALT_INV_counter_b(7) <= NOT counter_b(7);
\ALT_INV_state_reg.idle~q\ <= NOT \state_reg.idle~q\;
ALT_INV_address_b(8) <= NOT address_b(8);
ALT_INV_address_b(7) <= NOT address_b(7);
ALT_INV_address_b(6) <= NOT address_b(6);
ALT_INV_address_b(5) <= NOT address_b(5);
ALT_INV_address_b(4) <= NOT address_b(4);
ALT_INV_address_b(3) <= NOT address_b(3);
ALT_INV_address_b(2) <= NOT address_b(2);
ALT_INV_address_b(1) <= NOT address_b(1);
ALT_INV_address_b(0) <= NOT address_b(0);
ALT_INV_address_a(8) <= NOT address_a(8);
\ALT_INV_state_reg.input_a~q\ <= NOT \state_reg.input_a~q\;
\ALT_INV_state_reg.input_output~q\ <= NOT \state_reg.input_output~q\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
ALT_INV_counter_a(3) <= NOT counter_a(3);
ALT_INV_counter_a(2) <= NOT counter_a(2);
ALT_INV_counter_a(1) <= NOT counter_a(1);
ALT_INV_counter_a(0) <= NOT counter_a(0);
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
ALT_INV_counter_a(5) <= NOT counter_a(5);
ALT_INV_counter_a(4) <= NOT counter_a(4);
ALT_INV_counter_a(6) <= NOT counter_a(6);
ALT_INV_counter_a(7) <= NOT counter_a(7);
\RAM_interleaver|altsyncram_component|auto_generated|ALT_INV_q_b\(0) <= NOT \RAM_interleaver|altsyncram_component|auto_generated|q_b\(0);

-- Location: IOOBUF_X54_Y20_N5
\data_out_valid~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state_reg.input_output~q\,
	devoe => ww_devoe,
	o => ww_data_out_valid);

-- Location: IOOBUF_X54_Y20_N56
\data_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out~1_combout\,
	devoe => ww_devoe,
	o => ww_data_out);

-- Location: IOIBUF_X54_Y18_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X48_Y20_N30
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( counter_a(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~22\ = CARRY(( counter_a(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_a(0),
	cin => GND,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: IOIBUF_X54_Y20_N21
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X54_Y20_N38
\data_in_ready~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in_ready,
	o => \data_in_ready~input_o\);

-- Location: LABCELL_X48_Y20_N9
\state_reg.idle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_reg.idle~0_combout\ = ( \rst~input_o\ & ( \state_reg.idle~q\ ) ) # ( !\rst~input_o\ & ( (\state_reg.idle~q\) # (\data_in_ready~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in_ready~input_o\,
	datad => \ALT_INV_state_reg.idle~q\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \state_reg.idle~0_combout\);

-- Location: FF_X48_Y20_N11
\state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state_reg.idle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.idle~q\);

-- Location: LABCELL_X48_Y20_N12
\counter_a[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_a[7]~0_combout\ = ( \state_reg.idle~q\ & ( (counter_a(6) & counter_a(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_a(6),
	datac => ALT_INV_counter_a(7),
	dataf => \ALT_INV_state_reg.idle~q\,
	combout => \counter_a[7]~0_combout\);

-- Location: LABCELL_X48_Y20_N54
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \state_reg.input_a~q\ & ( \data_in_ready~input_o\ & ( (!counter_a(7)) # ((!\state_reg.idle~q\) # (!counter_a(6))) ) ) ) # ( !\state_reg.input_a~q\ & ( \data_in_ready~input_o\ & ( !\state_reg.idle~q\ ) ) ) # ( 
-- \state_reg.input_a~q\ & ( !\data_in_ready~input_o\ & ( (!counter_a(7)) # (!counter_a(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101011001100110011001111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_a(7),
	datab => \ALT_INV_state_reg.idle~q\,
	datac => ALT_INV_counter_a(6),
	datae => \ALT_INV_state_reg.input_a~q\,
	dataf => \ALT_INV_data_in_ready~input_o\,
	combout => \Selector0~0_combout\);

-- Location: FF_X48_Y20_N56
\state_reg.input_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.input_a~q\);

-- Location: LABCELL_X48_Y20_N21
\counter_a[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_a[7]~1_combout\ = ( \state_reg.input_a~q\ & ( \data_in_ready~input_o\ ) ) # ( !\state_reg.input_a~q\ & ( \data_in_ready~input_o\ ) ) # ( \state_reg.input_a~q\ & ( !\data_in_ready~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state_reg.input_a~q\,
	dataf => \ALT_INV_data_in_ready~input_o\,
	combout => \counter_a[7]~1_combout\);

-- Location: FF_X48_Y20_N32
\counter_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \counter_a[7]~0_combout\,
	ena => \counter_a[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_a(0));

-- Location: LABCELL_X48_Y20_N33
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( counter_a(1) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( counter_a(1) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_a(1),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X48_Y20_N35
\counter_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \counter_a[7]~0_combout\,
	ena => \counter_a[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_a(1));

-- Location: LABCELL_X48_Y20_N36
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( counter_a(2) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( counter_a(2) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_a(2),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X48_Y20_N38
\counter_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \counter_a[7]~0_combout\,
	ena => \counter_a[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_a(2));

-- Location: LABCELL_X48_Y20_N39
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( counter_a(3) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~18\ = CARRY(( counter_a(3) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_a(3),
	cin => \Add0~30\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X48_Y20_N41
\counter_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \counter_a[7]~0_combout\,
	ena => \counter_a[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_a(3));

-- Location: LABCELL_X48_Y20_N42
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( counter_a(4) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( counter_a(4) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_a(4),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X48_Y20_N43
\counter_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \counter_a[7]~0_combout\,
	ena => \counter_a[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_a(4));

-- Location: LABCELL_X48_Y20_N45
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( counter_a(5) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( counter_a(5) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_a(5),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X48_Y20_N46
\counter_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \counter_a[7]~0_combout\,
	ena => \counter_a[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_a(5));

-- Location: LABCELL_X48_Y20_N48
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( counter_a(6) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( counter_a(6) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_a(6),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X48_Y20_N50
\counter_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \counter_a[7]~0_combout\,
	ena => \counter_a[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_a(6));

-- Location: LABCELL_X48_Y20_N51
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( counter_a(7) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_a(7),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\);

-- Location: FF_X48_Y20_N53
\counter_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \counter_a[7]~0_combout\,
	ena => \counter_a[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_a(7));

-- Location: LABCELL_X48_Y20_N24
\state_reg.input_output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_reg.input_output~0_combout\ = ( \rst~input_o\ & ( \state_reg.input_output~q\ ) ) # ( !\rst~input_o\ & ( ((counter_a(7) & (counter_a(6) & \state_reg.input_a~q\))) # (\state_reg.input_output~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000000011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_a(7),
	datab => ALT_INV_counter_a(6),
	datac => \ALT_INV_state_reg.input_a~q\,
	datad => \ALT_INV_state_reg.input_output~q\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \state_reg.input_output~0_combout\);

-- Location: FF_X48_Y20_N26
\state_reg.input_output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state_reg.input_output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.input_output~q\);

-- Location: IOIBUF_X54_Y18_N44
\data_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in,
	o => \data_in~input_o\);

-- Location: LABCELL_X48_Y20_N0
\data_a[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_a[0]~0_combout\ = (\data_in_ready~input_o\ & \data_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data_in_ready~input_o\,
	datac => \ALT_INV_data_in~input_o\,
	combout => \data_a[0]~0_combout\);

-- Location: LABCELL_X48_Y20_N3
\address_a[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_a[0]~0_combout\ = ( counter_a(6) & ( (!counter_a(7) & (((\data_in_ready~input_o\ & \state_reg.input_output~q\)) # (\state_reg.input_a~q\))) ) ) # ( !counter_a(6) & ( ((\data_in_ready~input_o\ & \state_reg.input_output~q\)) # 
-- (\state_reg.input_a~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111100000010101010100000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_a(7),
	datab => \ALT_INV_data_in_ready~input_o\,
	datac => \ALT_INV_state_reg.input_output~q\,
	datad => \ALT_INV_state_reg.input_a~q\,
	dataf => ALT_INV_counter_a(6),
	combout => \address_a[0]~0_combout\);

-- Location: FF_X47_Y20_N47
\address_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => counter_a(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \address_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(0));

-- Location: FF_X47_Y20_N43
\address_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => counter_a(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \address_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(1));

-- Location: LABCELL_X47_Y20_N30
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( counter_a(6) ) + ( counter_a(0) ) + ( !VCC ))
-- \Add2~2\ = CARRY(( counter_a(6) ) + ( counter_a(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_a(0),
	datad => ALT_INV_counter_a(6),
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: FF_X47_Y20_N32
\address_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \address_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(2));

-- Location: LABCELL_X47_Y20_N33
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( counter_a(0) ) + ( !counter_a(1) $ (!counter_a(7)) ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( counter_a(0) ) + ( !counter_a(1) $ (!counter_a(7)) ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_a(1),
	datac => ALT_INV_counter_a(7),
	datad => ALT_INV_counter_a(0),
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X47_Y20_N34
\address_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \address_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(3));

-- Location: LABCELL_X47_Y20_N36
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( counter_a(2) ) + ( (counter_a(1) & !counter_a(7)) ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( counter_a(2) ) + ( (counter_a(1) & !counter_a(7)) ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_a(1),
	datac => ALT_INV_counter_a(7),
	datad => ALT_INV_counter_a(2),
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X47_Y20_N37
\address_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \address_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(4));

-- Location: LABCELL_X47_Y20_N39
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( counter_a(2) ) + ( !counter_a(3) $ (((!counter_a(1)) # (!counter_a(7)))) ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( counter_a(2) ) + ( !counter_a(3) $ (((!counter_a(1)) # (!counter_a(7)))) ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_a(1),
	datab => ALT_INV_counter_a(7),
	datac => ALT_INV_counter_a(3),
	datad => ALT_INV_counter_a(2),
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X47_Y20_N41
\address_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \address_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(5));

-- Location: MLABCELL_X49_Y20_N30
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( counter_b(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~30\ = CARRY(( counter_b(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_b(0),
	cin => GND,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: MLABCELL_X49_Y20_N0
\counter_b[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_b[0]~feeder_combout\ = ( \Add1~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~29_sumout\,
	combout => \counter_b[0]~feeder_combout\);

-- Location: LABCELL_X48_Y20_N6
\counter_b[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_b[7]~0_combout\ = ( counter_a(7) & ( (\state_reg.idle~q\ & ((!\state_reg.input_output~q\ & ((!counter_a(6)))) # (\state_reg.input_output~q\ & (\data_in_ready~input_o\)))) ) ) # ( !counter_a(7) & ( (\state_reg.idle~q\ & 
-- ((!\state_reg.input_output~q\) # (\data_in_ready~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010001001100110001000100110000000100010011000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in_ready~input_o\,
	datab => \ALT_INV_state_reg.idle~q\,
	datac => ALT_INV_counter_a(6),
	datad => \ALT_INV_state_reg.input_output~q\,
	dataf => ALT_INV_counter_a(7),
	combout => \counter_b[7]~0_combout\);

-- Location: FF_X49_Y20_N2
\counter_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_b[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \counter_b[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_b(0));

-- Location: MLABCELL_X49_Y20_N33
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( counter_b(1) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( counter_b(1) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_b(1),
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X49_Y20_N35
\counter_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \counter_b[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_b(1));

-- Location: MLABCELL_X49_Y20_N36
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( counter_b(2) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( counter_b(2) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_b(2),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X49_Y20_N38
\counter_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \counter_b[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_b(2));

-- Location: MLABCELL_X49_Y20_N39
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( counter_b(3) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~18\ = CARRY(( counter_b(3) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_b(3),
	cin => \Add1~22\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X49_Y20_N41
\counter_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \counter_b[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_b(3));

-- Location: MLABCELL_X49_Y20_N42
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( counter_b(4) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~14\ = CARRY(( counter_b(4) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_b(4),
	cin => \Add1~18\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X49_Y20_N44
\counter_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \counter_b[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_b(4));

-- Location: MLABCELL_X49_Y20_N45
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( counter_b(5) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~10\ = CARRY(( counter_b(5) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_b(5),
	cin => \Add1~14\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X49_Y20_N47
\counter_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \counter_b[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_b(5));

-- Location: MLABCELL_X49_Y20_N48
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( counter_b(6) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~6\ = CARRY(( counter_b(6) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_b(6),
	cin => \Add1~10\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X49_Y20_N50
\counter_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \counter_b[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_b(6));

-- Location: LABCELL_X47_Y20_N42
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( (counter_a(3) & ((!counter_a(7)) # (!counter_a(1)))) ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( (counter_a(3) & ((!counter_a(7)) # (!counter_a(1)))) ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_a(7),
	datab => ALT_INV_counter_a(3),
	datac => ALT_INV_counter_a(1),
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: MLABCELL_X49_Y20_N51
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( counter_b(7) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_b(7),
	cin => \Add1~6\,
	sumout => \Add1~1_sumout\);

-- Location: FF_X49_Y20_N53
\counter_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \counter_b[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_b(7));

-- Location: LABCELL_X47_Y20_N57
\Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = ( \state_reg.input_output~q\ & ( !\Add2~17_sumout\ $ (((!counter_b(6)) # (!counter_b(7)))) ) ) # ( !\state_reg.input_output~q\ & ( \Add2~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_b(6),
	datac => \ALT_INV_Add2~17_sumout\,
	datad => ALT_INV_counter_b(7),
	dataf => \ALT_INV_state_reg.input_output~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X47_Y20_N59
\address_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector20~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \address_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(6));

-- Location: LABCELL_X47_Y20_N45
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( GND ) + ( (counter_a(7) & (counter_a(3) & counter_a(1))) ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_a(7),
	datac => ALT_INV_counter_a(3),
	dataf => ALT_INV_counter_a(1),
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\);

-- Location: LABCELL_X47_Y20_N54
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( \Add2~17_sumout\ & ( \Add2~21_sumout\ ) ) # ( !\Add2~17_sumout\ & ( !\Add2~21_sumout\ $ (((!counter_b(6)) # ((!counter_b(7)) # (!\state_reg.input_output~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110110001100110011011000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_b(6),
	datab => \ALT_INV_Add2~21_sumout\,
	datac => ALT_INV_counter_b(7),
	datad => \ALT_INV_state_reg.input_output~q\,
	dataf => \ALT_INV_Add2~17_sumout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X47_Y20_N55
\address_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector19~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \address_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(7));

-- Location: LABCELL_X48_Y20_N27
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( \state_reg.input_output~q\ & ( (\state_reg.idle~q\ & (\data_in_ready~input_o\ & ((!counter_a(7)) # (!counter_a(6))))) ) ) # ( !\state_reg.input_output~q\ & ( (\state_reg.idle~q\ & ((!counter_a(7)) # (!counter_a(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000000000000011100000000000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_a(7),
	datab => ALT_INV_counter_a(6),
	datac => \ALT_INV_state_reg.idle~q\,
	datad => \ALT_INV_data_in_ready~input_o\,
	dataf => \ALT_INV_state_reg.input_output~q\,
	combout => \Selector18~0_combout\);

-- Location: LABCELL_X47_Y20_N48
\address_a[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_a[8]~1_combout\ = ( !\Selector18~0_combout\ & ( (((address_a(8)))) ) ) # ( \Selector18~0_combout\ & ( (counter_b(6) & (counter_b(7) & (\state_reg.input_output~q\ & ((\Add2~17_sumout\) # (\Add2~21_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000000000000000000001111000011110000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_b(6),
	datab => ALT_INV_counter_b(7),
	datac => \ALT_INV_Add2~21_sumout\,
	datad => \ALT_INV_Add2~17_sumout\,
	datae => \ALT_INV_Selector18~0_combout\,
	dataf => \ALT_INV_state_reg.input_output~q\,
	datag => ALT_INV_address_a(8),
	combout => \address_a[8]~1_combout\);

-- Location: FF_X47_Y20_N50
\address_a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \address_a[8]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_a(8));

-- Location: MLABCELL_X45_Y20_N36
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

-- Location: LABCELL_X47_Y20_N24
\address_b[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \address_b[0]~0_combout\ = !address_b(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_address_b(0),
	combout => \address_b[0]~0_combout\);

-- Location: FF_X47_Y20_N26
\address_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \address_b[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \state_reg.input_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_b(0));

-- Location: LABCELL_X47_Y20_N0
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( address_b(1) ) + ( address_b(0) ) + ( !VCC ))
-- \Add4~2\ = CARRY(( address_b(1) ) + ( address_b(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_address_b(0),
	datad => ALT_INV_address_b(1),
	cin => GND,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: FF_X47_Y20_N1
\address_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~1_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \state_reg.input_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_b(1));

-- Location: LABCELL_X47_Y20_N3
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( address_b(2) ) + ( GND ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( address_b(2) ) + ( GND ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_address_b(2),
	cin => \Add4~2\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: FF_X47_Y20_N4
\address_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~5_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \state_reg.input_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_b(2));

-- Location: LABCELL_X47_Y20_N6
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( address_b(3) ) + ( GND ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( address_b(3) ) + ( GND ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_address_b(3),
	cin => \Add4~6\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: FF_X47_Y20_N7
\address_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~9_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \state_reg.input_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_b(3));

-- Location: LABCELL_X47_Y20_N9
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( address_b(4) ) + ( GND ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( address_b(4) ) + ( GND ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_address_b(4),
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: FF_X47_Y20_N10
\address_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~13_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \state_reg.input_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_b(4));

-- Location: LABCELL_X47_Y20_N12
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( address_b(5) ) + ( GND ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( address_b(5) ) + ( GND ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_address_b(5),
	cin => \Add4~14\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: FF_X47_Y20_N13
\address_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~17_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \state_reg.input_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_b(5));

-- Location: LABCELL_X47_Y20_N15
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( address_b(6) ) + ( GND ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( address_b(6) ) + ( GND ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_address_b(6),
	cin => \Add4~18\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: FF_X47_Y20_N16
\address_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~21_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \state_reg.input_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_b(6));

-- Location: LABCELL_X47_Y20_N18
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( address_b(7) ) + ( GND ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( address_b(7) ) + ( GND ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_address_b(7),
	cin => \Add4~22\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: FF_X47_Y20_N19
\address_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~25_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \state_reg.input_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_b(7));

-- Location: LABCELL_X47_Y20_N21
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( address_b(8) ) + ( GND ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_address_b(8),
	cin => \Add4~26\,
	sumout => \Add4~29_sumout\);

-- Location: FF_X47_Y20_N23
\address_b[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~29_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \state_reg.input_output~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_b(8));

-- Location: M10K_X46_Y20_N0
\RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "dpr_interleaver:RAM_interleaver|altsyncram:altsyncram_component|altsyncram_viv3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 384,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 9,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 20,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 384,
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
	clk0 => \clk~inputCLKENA0_outclk\,
	portadatain => \RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \RAM_interleaver|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X47_Y20_N27
\data_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_out~1_combout\ = ( \state_reg.input_output~q\ & ( \RAM_interleaver|altsyncram_component|auto_generated|q_b\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM_interleaver|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	dataf => \ALT_INV_state_reg.input_output~q\,
	combout => \data_out~1_combout\);
END structure;


