-- Copyright (C) 2024  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "01/30/2025 18:38:10"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	controladora IS
    PORT (
	CLOCK : IN std_logic;
	RESET : IN std_logic;
	SEL : IN std_logic_vector(3 DOWNTO 0);
	current_state : OUT std_logic_vector(3 DOWNTO 0)
	);
END controladora;

-- Design Ports Information
-- current_state[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_state[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_state[2]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_state[3]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[2]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF controladora IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_SEL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_current_state : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SEL[0]~input_o\ : std_logic;
SIGNAL \SEL[2]~input_o\ : std_logic;
SIGNAL \SEL[1]~input_o\ : std_logic;
SIGNAL \SEL[3]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \state.l5~q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.l2~q\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.l4~q\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \state.l7~q\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \state.l6~q\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.l3~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \state.l0~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state.l1~q\ : std_logic;
SIGNAL \WideOr11~combout\ : std_logic;
SIGNAL \WideOr10~combout\ : std_logic;
SIGNAL \WideOr9~combout\ : std_logic;
SIGNAL \WideOr8~combout\ : std_logic;
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;
SIGNAL \ALT_INV_SEL[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SEL[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SEL[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SEL[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.l0~q\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.l5~q\ : std_logic;
SIGNAL \ALT_INV_state.l6~q\ : std_logic;
SIGNAL \ALT_INV_state.l4~q\ : std_logic;
SIGNAL \ALT_INV_state.l2~q\ : std_logic;
SIGNAL \ALT_INV_state.l3~q\ : std_logic;
SIGNAL \ALT_INV_state.l1~q\ : std_logic;
SIGNAL \ALT_INV_state.l7~q\ : std_logic;

BEGIN

ww_CLOCK <= CLOCK;
ww_RESET <= RESET;
ww_SEL <= SEL;
current_state <= ww_current_state;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
\ALT_INV_SEL[3]~input_o\ <= NOT \SEL[3]~input_o\;
\ALT_INV_SEL[2]~input_o\ <= NOT \SEL[2]~input_o\;
\ALT_INV_SEL[1]~input_o\ <= NOT \SEL[1]~input_o\;
\ALT_INV_SEL[0]~input_o\ <= NOT \SEL[0]~input_o\;
\ALT_INV_Selector5~1_combout\ <= NOT \Selector5~1_combout\;
\ALT_INV_Selector6~1_combout\ <= NOT \Selector6~1_combout\;
\ALT_INV_Selector4~1_combout\ <= NOT \Selector4~1_combout\;
\ALT_INV_Selector2~1_combout\ <= NOT \Selector2~1_combout\;
\ALT_INV_Selector3~1_combout\ <= NOT \Selector3~1_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_Selector1~2_combout\ <= NOT \Selector1~2_combout\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_state.l0~q\ <= NOT \state.l0~q\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Selector7~0_combout\ <= NOT \Selector7~0_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_state.l5~q\ <= NOT \state.l5~q\;
\ALT_INV_state.l6~q\ <= NOT \state.l6~q\;
\ALT_INV_state.l4~q\ <= NOT \state.l4~q\;
\ALT_INV_state.l2~q\ <= NOT \state.l2~q\;
\ALT_INV_state.l3~q\ <= NOT \state.l3~q\;
\ALT_INV_state.l1~q\ <= NOT \state.l1~q\;
\ALT_INV_state.l7~q\ <= NOT \state.l7~q\;

-- Location: IOOBUF_X89_Y38_N39
\current_state[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr11~combout\,
	devoe => ww_devoe,
	o => ww_current_state(0));

-- Location: IOOBUF_X89_Y35_N79
\current_state[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr10~combout\,
	devoe => ww_devoe,
	o => ww_current_state(1));

-- Location: IOOBUF_X89_Y38_N56
\current_state[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr9~combout\,
	devoe => ww_devoe,
	o => ww_current_state(2));

-- Location: IOOBUF_X89_Y37_N22
\current_state[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr8~combout\,
	devoe => ww_devoe,
	o => ww_current_state(3));

-- Location: IOIBUF_X89_Y35_N61
\CLOCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G9
\CLOCK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~input_o\,
	outclk => \CLOCK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y36_N4
\SEL[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(0),
	o => \SEL[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\SEL[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(2),
	o => \SEL[2]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\SEL[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(1),
	o => \SEL[1]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\SEL[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(3),
	o => \SEL[3]~input_o\);

-- Location: LABCELL_X88_Y36_N15
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \SEL[3]~input_o\ & ( (!\SEL[0]~input_o\ & !\SEL[1]~input_o\) ) ) # ( !\SEL[3]~input_o\ & ( (!\SEL[0]~input_o\ & (!\SEL[2]~input_o\ & !\SEL[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000101000001010000010000000100000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datab => \ALT_INV_SEL[2]~input_o\,
	datac => \ALT_INV_SEL[1]~input_o\,
	datae => \ALT_INV_SEL[3]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X87_Y36_N9
\Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (!\SEL[2]~input_o\ & !\SEL[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SEL[2]~input_o\,
	datad => \ALT_INV_SEL[3]~input_o\,
	combout => \Selector1~2_combout\);

-- Location: LABCELL_X88_Y36_N45
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \SEL[3]~input_o\ & ( (\SEL[0]~input_o\ & (\SEL[2]~input_o\ & \SEL[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[0]~input_o\,
	datab => \ALT_INV_SEL[2]~input_o\,
	datac => \ALT_INV_SEL[1]~input_o\,
	datae => \ALT_INV_SEL[3]~input_o\,
	combout => \Selector7~0_combout\);

-- Location: MLABCELL_X87_Y36_N0
\Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = ( \state.l5~q\ & ( (!\SEL[0]~input_o\) # ((!\SEL[3]~input_o\ & ((\SEL[2]~input_o\))) # (\SEL[3]~input_o\ & ((!\SEL[1]~input_o\) # (!\SEL[2]~input_o\)))) ) ) # ( !\state.l5~q\ & ( (\SEL[3]~input_o\ & (!\SEL[0]~input_o\ & 
-- (!\SEL[1]~input_o\ & !\SEL[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000011011101111111101101110111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[3]~input_o\,
	datab => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_SEL[1]~input_o\,
	datad => \ALT_INV_SEL[2]~input_o\,
	dataf => \ALT_INV_state.l5~q\,
	combout => \Selector5~1_combout\);

-- Location: MLABCELL_X87_Y36_N42
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \state.l1~q\ & ( \Selector5~1_combout\ ) ) # ( !\state.l1~q\ & ( (\Selector5~1_combout\ & (((\state.l5~q\) # (\state.l3~q\)) # (\state.l7~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000001110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.l7~q\,
	datab => \ALT_INV_state.l3~q\,
	datac => \ALT_INV_Selector5~1_combout\,
	datad => \ALT_INV_state.l5~q\,
	dataf => \ALT_INV_state.l1~q\,
	combout => \Selector5~0_combout\);

-- Location: IOIBUF_X89_Y35_N44
\RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X87_Y36_N44
\state.l5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.l5~q\);

-- Location: LABCELL_X88_Y36_N24
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \SEL[2]~input_o\ & ( (!\SEL[1]~input_o\ & !\SEL[0]~input_o\) ) ) # ( !\SEL[2]~input_o\ & ( (\SEL[3]~input_o\ & (!\SEL[1]~input_o\ & !\SEL[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000110000001100000001000000010000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[3]~input_o\,
	datab => \ALT_INV_SEL[1]~input_o\,
	datac => \ALT_INV_SEL[0]~input_o\,
	datae => \ALT_INV_SEL[2]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: MLABCELL_X87_Y36_N33
\Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = ( \state.l2~q\ & ( (!\SEL[0]~input_o\ & (!\SEL[1]~input_o\ & ((!\SEL[3]~input_o\) # (\SEL[2]~input_o\)))) ) ) # ( !\state.l2~q\ & ( (!\SEL[1]~input_o\) # (\SEL[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001110001100000000001000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[3]~input_o\,
	datab => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_SEL[2]~input_o\,
	datad => \ALT_INV_SEL[1]~input_o\,
	dataf => \ALT_INV_state.l2~q\,
	combout => \Selector2~1_combout\);

-- Location: MLABCELL_X87_Y36_N39
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \state.l2~q\ & ( !\Selector2~1_combout\ ) ) # ( !\state.l2~q\ & ( !\Selector2~1_combout\ & ( (\Selector1~2_combout\ & (((!\state.l0~q\) # (\state.l4~q\)) # (\state.l6~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010101111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector1~2_combout\,
	datab => \ALT_INV_state.l6~q\,
	datac => \ALT_INV_state.l4~q\,
	datad => \ALT_INV_state.l0~q\,
	datae => \ALT_INV_state.l2~q\,
	dataf => \ALT_INV_Selector2~1_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X87_Y36_N41
\state.l2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.l2~q\);

-- Location: MLABCELL_X87_Y36_N24
\Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = ( \state.l4~q\ & ( (!\SEL[3]~input_o\ & ((!\SEL[1]~input_o\ $ (\SEL[0]~input_o\)) # (\SEL[2]~input_o\))) # (\SEL[3]~input_o\ & ((!\SEL[1]~input_o\) # ((!\SEL[0]~input_o\) # (!\SEL[2]~input_o\)))) ) ) # ( !\state.l4~q\ & ( 
-- (!\SEL[1]~input_o\ & (!\SEL[0]~input_o\ & (\SEL[3]~input_o\ & \SEL[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100010011111111111101001111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[1]~input_o\,
	datab => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_SEL[3]~input_o\,
	datad => \ALT_INV_SEL[2]~input_o\,
	dataf => \ALT_INV_state.l4~q\,
	combout => \Selector4~1_combout\);

-- Location: MLABCELL_X87_Y36_N6
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \Selector4~1_combout\ & ( (((\state.l4~q\) # (\state.l7~q\)) # (\state.l2~q\)) # (\state.l1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.l1~q\,
	datab => \ALT_INV_state.l2~q\,
	datac => \ALT_INV_state.l7~q\,
	datad => \ALT_INV_state.l4~q\,
	dataf => \ALT_INV_Selector4~1_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X87_Y36_N8
\state.l4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.l4~q\);

-- Location: MLABCELL_X87_Y36_N21
\Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = ( \state.l7~q\ & ( \state.l4~q\ & ( (!\Mux15~0_combout\) # (\Selector7~0_combout\) ) ) ) # ( !\state.l7~q\ & ( \state.l4~q\ & ( \Selector7~0_combout\ ) ) ) # ( \state.l7~q\ & ( !\state.l4~q\ & ( (!\Mux15~0_combout\) # 
-- ((\Selector7~0_combout\ & ((\state.l5~q\) # (\state.l6~q\)))) ) ) ) # ( !\state.l7~q\ & ( !\state.l4~q\ & ( (\Selector7~0_combout\ & ((\state.l5~q\) # (\state.l6~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101111111110001010101010101010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector7~0_combout\,
	datab => \ALT_INV_state.l6~q\,
	datac => \ALT_INV_state.l5~q\,
	datad => \ALT_INV_Mux15~0_combout\,
	datae => \ALT_INV_state.l7~q\,
	dataf => \ALT_INV_state.l4~q\,
	combout => \Selector7~1_combout\);

-- Location: FF_X87_Y36_N23
\state.l7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Selector7~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.l7~q\);

-- Location: MLABCELL_X87_Y36_N3
\Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = ( \state.l6~q\ & ( (!\SEL[1]~input_o\) # ((!\SEL[3]~input_o\ & ((\SEL[2]~input_o\))) # (\SEL[3]~input_o\ & ((!\SEL[0]~input_o\) # (!\SEL[2]~input_o\)))) ) ) # ( !\state.l6~q\ & ( (!\SEL[3]~input_o\ & (!\SEL[0]~input_o\ & 
-- (\SEL[2]~input_o\ & !\SEL[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000011111111010111101111111101011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[3]~input_o\,
	datab => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_SEL[2]~input_o\,
	datad => \ALT_INV_SEL[1]~input_o\,
	dataf => \ALT_INV_state.l6~q\,
	combout => \Selector6~1_combout\);

-- Location: MLABCELL_X87_Y36_N45
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \Selector6~1_combout\ & ( (((\state.l6~q\) # (\state.l2~q\)) # (\state.l3~q\)) # (\state.l7~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.l7~q\,
	datab => \ALT_INV_state.l3~q\,
	datac => \ALT_INV_state.l2~q\,
	datad => \ALT_INV_state.l6~q\,
	dataf => \ALT_INV_Selector6~1_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X87_Y36_N47
\state.l6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.l6~q\);

-- Location: MLABCELL_X87_Y36_N30
\Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = ( \state.l3~q\ & ( (!\SEL[0]~input_o\ & (!\SEL[1]~input_o\ & ((!\SEL[3]~input_o\) # (!\SEL[2]~input_o\)))) ) ) # ( !\state.l3~q\ & ( (!\SEL[0]~input_o\) # (!\SEL[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[3]~input_o\,
	datab => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_SEL[1]~input_o\,
	datad => \ALT_INV_SEL[2]~input_o\,
	dataf => \ALT_INV_state.l3~q\,
	combout => \Selector3~1_combout\);

-- Location: MLABCELL_X87_Y36_N15
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \state.l3~q\ & ( \state.l5~q\ & ( !\Selector3~1_combout\ ) ) ) # ( !\state.l3~q\ & ( \state.l5~q\ & ( (\Selector1~2_combout\ & !\Selector3~1_combout\) ) ) ) # ( \state.l3~q\ & ( !\state.l5~q\ & ( !\Selector3~1_combout\ ) ) ) # ( 
-- !\state.l3~q\ & ( !\state.l5~q\ & ( (\Selector1~2_combout\ & (!\Selector3~1_combout\ & ((!\state.l0~q\) # (\state.l6~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000000111111110000000001010101000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector1~2_combout\,
	datab => \ALT_INV_state.l0~q\,
	datac => \ALT_INV_state.l6~q\,
	datad => \ALT_INV_Selector3~1_combout\,
	datae => \ALT_INV_state.l3~q\,
	dataf => \ALT_INV_state.l5~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X87_Y36_N17
\state.l3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.l3~q\);

-- Location: MLABCELL_X87_Y36_N27
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \state.l1~q\ & ( (!\SEL[1]~input_o\ & !\SEL[0]~input_o\) ) ) # ( !\state.l1~q\ & ( (!\SEL[1]~input_o\ & (!\SEL[0]~input_o\ & ((\state.l2~q\) # (\state.l3~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001000000010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[1]~input_o\,
	datab => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_state.l3~q\,
	datad => \ALT_INV_state.l2~q\,
	dataf => \ALT_INV_state.l1~q\,
	combout => \Selector0~0_combout\);

-- Location: MLABCELL_X87_Y36_N57
\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ( \state.l0~q\ & ( \Selector0~0_combout\ & ( (\SEL[3]~input_o\) # (\SEL[2]~input_o\) ) ) ) # ( \state.l0~q\ & ( !\Selector0~0_combout\ ) ) # ( !\state.l0~q\ & ( !\Selector0~0_combout\ & ( (!\SEL[2]~input_o\ & (!\SEL[3]~input_o\ & 
-- ((\SEL[0]~input_o\) # (\SEL[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000111111111111111100000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[1]~input_o\,
	datab => \ALT_INV_SEL[0]~input_o\,
	datac => \ALT_INV_SEL[2]~input_o\,
	datad => \ALT_INV_SEL[3]~input_o\,
	datae => \ALT_INV_state.l0~q\,
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X87_Y36_N59
\state.l0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.l0~q\);

-- Location: LABCELL_X88_Y36_N54
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( !\SEL[2]~input_o\ & ( (!\SEL[3]~input_o\ & (!\SEL[1]~input_o\ & \SEL[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000000000000000000001000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL[3]~input_o\,
	datab => \ALT_INV_SEL[1]~input_o\,
	datac => \ALT_INV_SEL[0]~input_o\,
	datae => \ALT_INV_SEL[2]~input_o\,
	combout => \Selector1~0_combout\);

-- Location: MLABCELL_X87_Y36_N51
\Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = ( \state.l1~q\ & ( \state.l5~q\ & ( (!\Mux5~0_combout\) # (\Selector1~0_combout\) ) ) ) # ( !\state.l1~q\ & ( \state.l5~q\ & ( \Selector1~0_combout\ ) ) ) # ( \state.l1~q\ & ( !\state.l5~q\ & ( (!\Mux5~0_combout\) # 
-- ((\Selector1~0_combout\ & ((!\state.l0~q\) # (\state.l4~q\)))) ) ) ) # ( !\state.l1~q\ & ( !\state.l5~q\ & ( (\Selector1~0_combout\ & ((!\state.l0~q\) # (\state.l4~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001111101010101110111100000000111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux5~0_combout\,
	datab => \ALT_INV_state.l0~q\,
	datac => \ALT_INV_state.l4~q\,
	datad => \ALT_INV_Selector1~0_combout\,
	datae => \ALT_INV_state.l1~q\,
	dataf => \ALT_INV_state.l5~q\,
	combout => \Selector1~1_combout\);

-- Location: FF_X87_Y36_N53
\state.l1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \Selector1~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.l1~q\);

-- Location: LABCELL_X88_Y36_N36
WideOr11 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr11~combout\ = ( \state.l7~q\ & ( \state.l3~q\ ) ) # ( !\state.l7~q\ & ( \state.l3~q\ ) ) # ( \state.l7~q\ & ( !\state.l3~q\ ) ) # ( !\state.l7~q\ & ( !\state.l3~q\ & ( \state.l1~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.l1~q\,
	datae => \ALT_INV_state.l7~q\,
	dataf => \ALT_INV_state.l3~q\,
	combout => \WideOr11~combout\);

-- Location: LABCELL_X88_Y36_N33
WideOr10 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr10~combout\ = ( \state.l2~q\ & ( \state.l3~q\ ) ) # ( !\state.l2~q\ & ( \state.l3~q\ ) ) # ( \state.l2~q\ & ( !\state.l3~q\ ) ) # ( !\state.l2~q\ & ( !\state.l3~q\ & ( \state.l7~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.l7~q\,
	datae => \ALT_INV_state.l2~q\,
	dataf => \ALT_INV_state.l3~q\,
	combout => \WideOr10~combout\);

-- Location: LABCELL_X88_Y36_N48
WideOr9 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr9~combout\ = ( \state.l6~q\ ) # ( !\state.l6~q\ & ( (\state.l7~q\) # (\state.l4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.l4~q\,
	datac => \ALT_INV_state.l7~q\,
	dataf => \ALT_INV_state.l6~q\,
	combout => \WideOr9~combout\);

-- Location: LABCELL_X88_Y36_N6
WideOr8 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr8~combout\ = ( \state.l5~q\ ) # ( !\state.l5~q\ & ( (\state.l7~q\) # (\state.l4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.l4~q\,
	datac => \ALT_INV_state.l7~q\,
	dataf => \ALT_INV_state.l5~q\,
	combout => \WideOr8~combout\);

-- Location: LABCELL_X68_Y37_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


