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

-- DATE "02/05/2025 02:18:28"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	datapath IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	current_state : IN std_logic_vector(3 DOWNTO 0);
	b : OUT std_logic_vector(3 DOWNTO 0);
	disp1 : OUT IEEE.NUMERIC_STD.unsigned(6 DOWNTO 0);
	disp2 : OUT IEEE.NUMERIC_STD.unsigned(6 DOWNTO 0);
	disp3 : OUT IEEE.NUMERIC_STD.unsigned(6 DOWNTO 0)
	);
END datapath;

-- Design Ports Information
-- b[0]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[5]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[6]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[2]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[3]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[4]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[5]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[4]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[5]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[6]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_state[0]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_state[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_state[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_state[3]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_current_state : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \U1|b[0]~0_combout\ : std_logic;
SIGNAL \U1|b[1]~1_combout\ : std_logic;
SIGNAL \U1|b[2]~2_combout\ : std_logic;
SIGNAL \U1|b[3]~3_combout\ : std_logic;
SIGNAL \current_state[2]~input_o\ : std_logic;
SIGNAL \current_state[1]~input_o\ : std_logic;
SIGNAL \current_state[0]~input_o\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \current_state[3]~input_o\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux20~7_combout\ : std_logic;
SIGNAL \Mux20~8_combout\ : std_logic;
SIGNAL \Mux20~10_combout\ : std_logic;
SIGNAL \Mux20~9_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_current_state[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_current_state[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_current_state[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux20~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_current_state <= current_state;
b <= ww_b;
disp1 <= IEEE.NUMERIC_STD.UNSIGNED(ww_disp1);
disp2 <= IEEE.NUMERIC_STD.UNSIGNED(ww_disp2);
disp3 <= IEEE.NUMERIC_STD.UNSIGNED(ww_disp3);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_current_state[3]~input_o\ <= NOT \current_state[3]~input_o\;
\ALT_INV_current_state[2]~input_o\ <= NOT \current_state[2]~input_o\;
\ALT_INV_current_state[1]~input_o\ <= NOT \current_state[1]~input_o\;
\ALT_INV_current_state[0]~input_o\ <= NOT \current_state[0]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_Mux20~10_combout\ <= NOT \Mux20~10_combout\;
\ALT_INV_Mux20~9_combout\ <= NOT \Mux20~9_combout\;
\ALT_INV_Mux20~8_combout\ <= NOT \Mux20~8_combout\;
\ALT_INV_Mux20~7_combout\ <= NOT \Mux20~7_combout\;
\ALT_INV_Mux20~6_combout\ <= NOT \Mux20~6_combout\;
\ALT_INV_Mux20~5_combout\ <= NOT \Mux20~5_combout\;
\ALT_INV_Mux20~3_combout\ <= NOT \Mux20~3_combout\;
\ALT_INV_Mux20~2_combout\ <= NOT \Mux20~2_combout\;
\ALT_INV_Mux20~1_combout\ <= NOT \Mux20~1_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;

-- Location: IOOBUF_X89_Y9_N39
\b[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|b[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_b(0));

-- Location: IOOBUF_X89_Y6_N5
\b[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|b[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_b(1));

-- Location: IOOBUF_X89_Y9_N5
\b[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|b[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_b(2));

-- Location: IOOBUF_X89_Y6_N56
\b[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|b[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_b(3));

-- Location: IOOBUF_X89_Y35_N62
\disp1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~4_combout\,
	devoe => ww_devoe,
	o => ww_disp1(0));

-- Location: IOOBUF_X40_Y0_N2
\disp1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_disp1(1));

-- Location: IOOBUF_X89_Y35_N45
\disp1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~4_combout\,
	devoe => ww_devoe,
	o => ww_disp1(2));

-- Location: IOOBUF_X28_Y81_N2
\disp1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp1(3));

-- Location: IOOBUF_X89_Y35_N79
\disp1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~4_combout\,
	devoe => ww_devoe,
	o => ww_disp1(4));

-- Location: IOOBUF_X89_Y9_N56
\disp1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~4_combout\,
	devoe => ww_devoe,
	o => ww_disp1(5));

-- Location: IOOBUF_X36_Y81_N2
\disp1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_disp1(6));

-- Location: IOOBUF_X70_Y0_N2
\disp2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => ww_disp2(0));

-- Location: IOOBUF_X50_Y0_N42
\disp2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_disp2(1));

-- Location: IOOBUF_X89_Y4_N79
\disp2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => ww_disp2(2));

-- Location: IOOBUF_X82_Y81_N59
\disp2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp2(3));

-- Location: IOOBUF_X70_Y0_N19
\disp2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => ww_disp2(4));

-- Location: IOOBUF_X72_Y0_N2
\disp2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => ww_disp2(5));

-- Location: IOOBUF_X40_Y0_N36
\disp2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_disp2(6));

-- Location: IOOBUF_X89_Y4_N45
\disp3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~0_combout\,
	devoe => ww_devoe,
	o => ww_disp3(0));

-- Location: IOOBUF_X26_Y0_N59
\disp3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_disp3(1));

-- Location: IOOBUF_X70_Y0_N36
\disp3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~0_combout\,
	devoe => ww_devoe,
	o => ww_disp3(2));

-- Location: IOOBUF_X60_Y0_N36
\disp3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp3(3));

-- Location: IOOBUF_X70_Y0_N53
\disp3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~0_combout\,
	devoe => ww_devoe,
	o => ww_disp3(4));

-- Location: IOOBUF_X89_Y4_N62
\disp3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~0_combout\,
	devoe => ww_devoe,
	o => ww_disp3(5));

-- Location: IOOBUF_X64_Y81_N36
\disp3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_disp3(6));

-- Location: IOIBUF_X89_Y8_N21
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LABCELL_X88_Y8_N0
\U1|b[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|b[0]~0_combout\ = ( \a[3]~input_o\ & ( (\a[1]~input_o\ & (\a[2]~input_o\ & \a[0]~input_o\)) ) ) # ( !\a[3]~input_o\ & ( (!\a[2]~input_o\ & \a[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \U1|b[0]~0_combout\);

-- Location: LABCELL_X88_Y8_N3
\U1|b[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|b[1]~1_combout\ = ( \a[3]~input_o\ & ( (\a[1]~input_o\ & (\a[2]~input_o\ & \a[0]~input_o\)) ) ) # ( !\a[3]~input_o\ & ( (\a[1]~input_o\ & !\a[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \U1|b[1]~1_combout\);

-- Location: LABCELL_X88_Y8_N6
\U1|b[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|b[2]~2_combout\ = ( \a[3]~input_o\ & ( (\a[2]~input_o\ & (!\a[1]~input_o\ $ (\a[0]~input_o\))) ) ) # ( !\a[3]~input_o\ & ( (!\a[1]~input_o\ & (\a[2]~input_o\ & !\a[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000100010000100010010001000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \U1|b[2]~2_combout\);

-- Location: LABCELL_X88_Y8_N9
\U1|b[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|b[3]~3_combout\ = ( \a[3]~input_o\ & ( (!\a[1]~input_o\ & ((!\a[0]~input_o\))) # (\a[1]~input_o\ & (\a[2]~input_o\ & \a[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100001101000011010000110100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \U1|b[3]~3_combout\);

-- Location: IOIBUF_X89_Y4_N95
\current_state[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_state(2),
	o => \current_state[2]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\current_state[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_state(1),
	o => \current_state[1]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\current_state[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_state(0),
	o => \current_state[0]~input_o\);

-- Location: MLABCELL_X87_Y8_N6
\Mux20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = ( \a[1]~input_o\ & ( \a[3]~input_o\ & ( (!\current_state[1]~input_o\ & !\current_state[0]~input_o\) ) ) ) # ( !\a[1]~input_o\ & ( \a[3]~input_o\ & ( (!\current_state[1]~input_o\ & !\current_state[0]~input_o\) ) ) ) # ( \a[1]~input_o\ & 
-- ( !\a[3]~input_o\ & ( (!\current_state[1]~input_o\ & (!\current_state[0]~input_o\ & ((!\a[0]~input_o\) # (\a[2]~input_o\)))) ) ) ) # ( !\a[1]~input_o\ & ( !\a[3]~input_o\ & ( (!\current_state[1]~input_o\ & !\current_state[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100000001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state[1]~input_o\,
	datab => \ALT_INV_current_state[0]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \Mux20~2_combout\);

-- Location: LABCELL_X88_Y8_N45
\Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = ( \a[0]~input_o\ & ( \a[3]~input_o\ & ( (!\current_state[1]~input_o\ & (\a[2]~input_o\ & (!\current_state[0]~input_o\ & \a[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state[1]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_current_state[0]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \Mux20~1_combout\);

-- Location: LABCELL_X88_Y8_N18
\Mux20~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = ( \a[0]~input_o\ & ( \a[3]~input_o\ & ( !\current_state[0]~input_o\ $ (\current_state[1]~input_o\) ) ) ) # ( !\a[0]~input_o\ & ( \a[3]~input_o\ & ( !\current_state[0]~input_o\ $ (\current_state[1]~input_o\) ) ) ) # ( \a[0]~input_o\ & ( 
-- !\a[3]~input_o\ & ( !\current_state[0]~input_o\ $ (\current_state[1]~input_o\) ) ) ) # ( !\a[0]~input_o\ & ( !\a[3]~input_o\ & ( (!\current_state[0]~input_o\ & (!\current_state[1]~input_o\ & ((!\a[1]~input_o\) # (\a[2]~input_o\)))) # 
-- (\current_state[0]~input_o\ & (\current_state[1]~input_o\ & ((!\a[2]~input_o\) # (\a[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001111000001110000111100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_current_state[0]~input_o\,
	datac => \ALT_INV_current_state[1]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \Mux20~3_combout\);

-- Location: MLABCELL_X87_Y8_N0
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \a[1]~input_o\ & ( \a[3]~input_o\ & ( (\a[0]~input_o\ & (\a[2]~input_o\ & ((\current_state[0]~input_o\) # (\current_state[1]~input_o\)))) ) ) ) # ( !\a[1]~input_o\ & ( \a[3]~input_o\ & ( (!\a[0]~input_o\ & 
-- ((\current_state[0]~input_o\) # (\current_state[1]~input_o\))) ) ) ) # ( \a[1]~input_o\ & ( !\a[3]~input_o\ & ( (!\a[2]~input_o\ & ((\current_state[0]~input_o\) # (\current_state[1]~input_o\))) ) ) ) # ( !\a[1]~input_o\ & ( !\a[3]~input_o\ & ( 
-- (!\a[0]~input_o\ & (!\current_state[1]~input_o\ & (\current_state[0]~input_o\ & \a[2]~input_o\))) # (\a[0]~input_o\ & (((!\a[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100100000011101110000000001110000011100000000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state[1]~input_o\,
	datab => \ALT_INV_current_state[0]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: IOIBUF_X89_Y6_N21
\current_state[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_state(3),
	o => \current_state[3]~input_o\);

-- Location: MLABCELL_X87_Y8_N12
\Mux20~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = ( \Mux20~0_combout\ & ( \current_state[3]~input_o\ & ( (!\current_state[2]~input_o\ & (!\Mux20~2_combout\)) # (\current_state[2]~input_o\ & ((!\Mux20~3_combout\))) ) ) ) # ( !\Mux20~0_combout\ & ( \current_state[3]~input_o\ & ( 
-- (!\current_state[2]~input_o\ & (!\Mux20~2_combout\)) # (\current_state[2]~input_o\ & ((!\Mux20~3_combout\))) ) ) ) # ( \Mux20~0_combout\ & ( !\current_state[3]~input_o\ & ( (\current_state[2]~input_o\ & !\Mux20~1_combout\) ) ) ) # ( !\Mux20~0_combout\ & ( 
-- !\current_state[3]~input_o\ & ( (!\current_state[2]~input_o\) # (!\Mux20~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010010100000101000011011101100010001101110110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state[2]~input_o\,
	datab => \ALT_INV_Mux20~2_combout\,
	datac => \ALT_INV_Mux20~1_combout\,
	datad => \ALT_INV_Mux20~3_combout\,
	datae => \ALT_INV_Mux20~0_combout\,
	dataf => \ALT_INV_current_state[3]~input_o\,
	combout => \Mux20~4_combout\);

-- Location: MLABCELL_X87_Y8_N18
\Mux20~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = ( !\a[1]~input_o\ & ( \a[3]~input_o\ & ( (!\a[0]~input_o\ & (\a[2]~input_o\ & (!\current_state[1]~input_o\ $ (!\current_state[0]~input_o\)))) ) ) ) # ( \a[1]~input_o\ & ( !\a[3]~input_o\ & ( (!\current_state[1]~input_o\ & 
-- (!\current_state[0]~input_o\ & (!\a[0]~input_o\ & !\a[2]~input_o\))) ) ) ) # ( !\a[1]~input_o\ & ( !\a[3]~input_o\ & ( (\current_state[1]~input_o\ & (!\a[0]~input_o\ & \a[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000100000000000000000000000011000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state[1]~input_o\,
	datab => \ALT_INV_current_state[0]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \Mux20~5_combout\);

-- Location: MLABCELL_X87_Y8_N27
\Mux20~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = ( \a[1]~input_o\ & ( \a[3]~input_o\ & ( !\current_state[0]~input_o\ $ (\current_state[1]~input_o\) ) ) ) # ( !\a[1]~input_o\ & ( \a[3]~input_o\ & ( (!\current_state[0]~input_o\ & (((!\current_state[1]~input_o\)))) # 
-- (\current_state[0]~input_o\ & (\current_state[1]~input_o\ & ((\a[2]~input_o\) # (\a[0]~input_o\)))) ) ) ) # ( \a[1]~input_o\ & ( !\a[3]~input_o\ & ( !\current_state[0]~input_o\ $ (\current_state[1]~input_o\) ) ) ) # ( !\a[1]~input_o\ & ( !\a[3]~input_o\ & 
-- ( (!\current_state[0]~input_o\ & (!\current_state[1]~input_o\ & ((!\a[0]~input_o\) # (\a[2]~input_o\)))) # (\current_state[0]~input_o\ & (((\current_state[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000001111111100000000111111110000000001111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_current_state[0]~input_o\,
	datad => \ALT_INV_current_state[1]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \Mux20~6_combout\);

-- Location: MLABCELL_X87_Y8_N30
\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( \current_state[2]~input_o\ & ( \current_state[3]~input_o\ & ( !\Mux20~6_combout\ ) ) ) # ( !\current_state[2]~input_o\ & ( \current_state[3]~input_o\ & ( !\Mux20~1_combout\ ) ) ) # ( \current_state[2]~input_o\ & ( 
-- !\current_state[3]~input_o\ & ( !\Mux20~2_combout\ ) ) ) # ( !\current_state[2]~input_o\ & ( !\current_state[3]~input_o\ & ( !\Mux20~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000110011001100110010101010101010101111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~1_combout\,
	datab => \ALT_INV_Mux20~2_combout\,
	datac => \ALT_INV_Mux20~5_combout\,
	datad => \ALT_INV_Mux20~6_combout\,
	datae => \ALT_INV_current_state[2]~input_o\,
	dataf => \ALT_INV_current_state[3]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LABCELL_X88_Y8_N24
\Mux20~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~7_combout\ = ( !\a[0]~input_o\ & ( \a[3]~input_o\ & ( (!\a[1]~input_o\ & (\current_state[0]~input_o\ & !\a[2]~input_o\)) ) ) ) # ( \a[0]~input_o\ & ( !\a[3]~input_o\ & ( (\a[1]~input_o\ & (!\current_state[0]~input_o\ & (!\current_state[1]~input_o\ 
-- & !\a[2]~input_o\))) ) ) ) # ( !\a[0]~input_o\ & ( !\a[3]~input_o\ & ( (!\a[1]~input_o\ & (\current_state[1]~input_o\ & \a[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010010000000000000000100010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_current_state[0]~input_o\,
	datac => \ALT_INV_current_state[1]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \Mux20~7_combout\);

-- Location: LABCELL_X88_Y8_N30
\Mux20~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~8_combout\ = ( \a[0]~input_o\ & ( \a[3]~input_o\ & ( (!\current_state[0]~input_o\ & !\current_state[1]~input_o\) ) ) ) # ( !\a[0]~input_o\ & ( \a[3]~input_o\ & ( (!\current_state[0]~input_o\ & !\current_state[1]~input_o\) ) ) ) # ( \a[0]~input_o\ & 
-- ( !\a[3]~input_o\ & ( (!\current_state[0]~input_o\ & !\current_state[1]~input_o\) ) ) ) # ( !\a[0]~input_o\ & ( !\a[3]~input_o\ & ( (!\current_state[0]~input_o\ & (!\current_state[1]~input_o\ & ((!\a[1]~input_o\) # (\a[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_current_state[0]~input_o\,
	datac => \ALT_INV_current_state[1]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \Mux20~8_combout\);

-- Location: MLABCELL_X87_Y8_N42
\Mux20~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~10_combout\ = ( \a[1]~input_o\ & ( \a[3]~input_o\ & ( (!\current_state[1]~input_o\ & (!\current_state[0]~input_o\ & (\a[0]~input_o\ & \a[2]~input_o\))) # (\current_state[1]~input_o\ & (\current_state[0]~input_o\)) ) ) ) # ( !\a[1]~input_o\ & ( 
-- \a[3]~input_o\ & ( (\current_state[1]~input_o\ & (\current_state[0]~input_o\ & ((!\a[2]~input_o\) # (\a[0]~input_o\)))) ) ) ) # ( \a[1]~input_o\ & ( !\a[3]~input_o\ & ( (\current_state[1]~input_o\ & \current_state[0]~input_o\) ) ) ) # ( !\a[1]~input_o\ & 
-- ( !\a[3]~input_o\ & ( (\current_state[1]~input_o\ & \current_state[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000000010001000100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state[1]~input_o\,
	datab => \ALT_INV_current_state[0]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \Mux20~10_combout\);

-- Location: MLABCELL_X87_Y8_N39
\Mux20~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~9_combout\ = ( \a[1]~input_o\ & ( \a[3]~input_o\ & ( (!\current_state[0]~input_o\ & !\current_state[1]~input_o\) ) ) ) # ( !\a[1]~input_o\ & ( \a[3]~input_o\ & ( (!\current_state[0]~input_o\ & !\current_state[1]~input_o\) ) ) ) # ( \a[1]~input_o\ & 
-- ( !\a[3]~input_o\ & ( (!\current_state[0]~input_o\ & !\current_state[1]~input_o\) ) ) ) # ( !\a[1]~input_o\ & ( !\a[3]~input_o\ & ( (!\current_state[0]~input_o\ & (!\current_state[1]~input_o\ & ((!\a[0]~input_o\) # (\a[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_current_state[0]~input_o\,
	datad => \ALT_INV_current_state[1]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \Mux20~9_combout\);

-- Location: MLABCELL_X87_Y8_N48
\Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( \current_state[2]~input_o\ & ( \Mux20~9_combout\ & ( (!\current_state[3]~input_o\ & (!\Mux20~8_combout\)) # (\current_state[3]~input_o\ & ((!\Mux20~10_combout\))) ) ) ) # ( !\current_state[2]~input_o\ & ( \Mux20~9_combout\ & ( 
-- (!\current_state[3]~input_o\ & !\Mux20~7_combout\) ) ) ) # ( \current_state[2]~input_o\ & ( !\Mux20~9_combout\ & ( (!\current_state[3]~input_o\ & (!\Mux20~8_combout\)) # (\current_state[3]~input_o\ & ((!\Mux20~10_combout\))) ) ) ) # ( 
-- !\current_state[2]~input_o\ & ( !\Mux20~9_combout\ & ( (!\Mux20~7_combout\) # (\current_state[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101111101011010000010001000100010001111010110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state[3]~input_o\,
	datab => \ALT_INV_Mux20~7_combout\,
	datac => \ALT_INV_Mux20~8_combout\,
	datad => \ALT_INV_Mux20~10_combout\,
	datae => \ALT_INV_current_state[2]~input_o\,
	dataf => \ALT_INV_Mux20~9_combout\,
	combout => \Mux28~0_combout\);

-- Location: LABCELL_X43_Y77_N0
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


