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

-- DATE "02/05/2025 00:49:54"

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
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	validador IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END validador;

-- Design Ports Information
-- b[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF validador IS
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
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b~0_combout\ : std_logic;
SIGNAL \b~1_combout\ : std_logic;
SIGNAL \b~2_combout\ : std_logic;
SIGNAL \b~3_combout\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;

BEGIN

ww_a <= a;
b <= ww_b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;

-- Location: IOOBUF_X89_Y38_N39
\b[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b~0_combout\,
	devoe => ww_devoe,
	o => ww_b(0));

-- Location: IOOBUF_X89_Y35_N45
\b[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b~1_combout\,
	devoe => ww_devoe,
	o => ww_b(1));

-- Location: IOOBUF_X89_Y38_N22
\b[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b~2_combout\,
	devoe => ww_devoe,
	o => ww_b(2));

-- Location: IOOBUF_X89_Y37_N5
\b[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b~3_combout\,
	devoe => ww_devoe,
	o => ww_b(3));

-- Location: IOIBUF_X89_Y37_N55
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LABCELL_X88_Y37_N0
\b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b~0_combout\ = ( \a[0]~input_o\ & ( (!\a[3]~input_o\ & ((!\a[2]~input_o\))) # (\a[3]~input_o\ & (\a[1]~input_o\ & \a[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000011100000100000000000000001100000111000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_a[3]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	combout => \b~0_combout\);

-- Location: LABCELL_X88_Y37_N9
\b~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b~1_combout\ = ( \a[0]~input_o\ & ( (\a[1]~input_o\ & (!\a[2]~input_o\ $ (\a[3]~input_o\))) ) ) # ( !\a[0]~input_o\ & ( (!\a[2]~input_o\ & (!\a[3]~input_o\ & \a[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010010100000000101000000000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_a[3]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	combout => \b~1_combout\);

-- Location: LABCELL_X88_Y37_N12
\b~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b~2_combout\ = ( \a[0]~input_o\ & ( (\a[1]~input_o\ & (\a[3]~input_o\ & \a[2]~input_o\)) ) ) # ( !\a[0]~input_o\ & ( (!\a[1]~input_o\ & \a[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000010000000100001010000010100000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_a[3]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	combout => \b~2_combout\);

-- Location: LABCELL_X88_Y37_N51
\b~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b~3_combout\ = ( \a[0]~input_o\ & ( (\a[2]~input_o\ & (\a[3]~input_o\ & \a[1]~input_o\)) ) ) # ( !\a[0]~input_o\ & ( (\a[3]~input_o\ & !\a[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000010100001111000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_a[3]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	combout => \b~3_combout\);

-- Location: LABCELL_X88_Y21_N3
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


