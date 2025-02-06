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

-- DATE "02/06/2025 10:30:48"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	CLOCK : IN std_logic;
	RESET : IN std_logic;
	ent_top : IN std_logic_vector(3 DOWNTO 0);
	saida_val : BUFFER std_logic_vector(3 DOWNTO 0);
	disp1 : BUFFER std_logic_vector(6 DOWNTO 0);
	disp2 : BUFFER std_logic_vector(6 DOWNTO 0);
	disp3 : BUFFER std_logic_vector(6 DOWNTO 0);
	current_state : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- saida_val[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_val[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_val[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_val[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_state[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_state[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_state[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_state[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_top[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_top[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_top[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_top[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
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
SIGNAL ww_ent_top : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_saida_val : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_current_state : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \saida_val[0]~output_o\ : std_logic;
SIGNAL \saida_val[1]~output_o\ : std_logic;
SIGNAL \saida_val[2]~output_o\ : std_logic;
SIGNAL \saida_val[3]~output_o\ : std_logic;
SIGNAL \disp1[0]~output_o\ : std_logic;
SIGNAL \disp1[1]~output_o\ : std_logic;
SIGNAL \disp1[2]~output_o\ : std_logic;
SIGNAL \disp1[3]~output_o\ : std_logic;
SIGNAL \disp1[4]~output_o\ : std_logic;
SIGNAL \disp1[5]~output_o\ : std_logic;
SIGNAL \disp1[6]~output_o\ : std_logic;
SIGNAL \disp2[0]~output_o\ : std_logic;
SIGNAL \disp2[1]~output_o\ : std_logic;
SIGNAL \disp2[2]~output_o\ : std_logic;
SIGNAL \disp2[3]~output_o\ : std_logic;
SIGNAL \disp2[4]~output_o\ : std_logic;
SIGNAL \disp2[5]~output_o\ : std_logic;
SIGNAL \disp2[6]~output_o\ : std_logic;
SIGNAL \disp3[0]~output_o\ : std_logic;
SIGNAL \disp3[1]~output_o\ : std_logic;
SIGNAL \disp3[2]~output_o\ : std_logic;
SIGNAL \disp3[3]~output_o\ : std_logic;
SIGNAL \disp3[4]~output_o\ : std_logic;
SIGNAL \disp3[5]~output_o\ : std_logic;
SIGNAL \disp3[6]~output_o\ : std_logic;
SIGNAL \current_state[0]~output_o\ : std_logic;
SIGNAL \current_state[1]~output_o\ : std_logic;
SIGNAL \current_state[2]~output_o\ : std_logic;
SIGNAL \current_state[3]~output_o\ : std_logic;
SIGNAL \ent_top[2]~input_o\ : std_logic;
SIGNAL \ent_top[3]~input_o\ : std_logic;
SIGNAL \ent_top[1]~input_o\ : std_logic;
SIGNAL \ent_top[0]~input_o\ : std_logic;
SIGNAL \datapath_inst|U1|saida_val[0]~0_combout\ : std_logic;
SIGNAL \datapath_inst|U1|saida_val[1]~1_combout\ : std_logic;
SIGNAL \datapath_inst|U1|saida_val[2]~2_combout\ : std_logic;
SIGNAL \datapath_inst|U1|saida_val[3]~3_combout\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \datapath_inst|Mux6~0_combout\ : std_logic;
SIGNAL \controladora_inst|Mux5~0_combout\ : std_logic;
SIGNAL \datapath_inst|Mux0~0_combout\ : std_logic;
SIGNAL \datapath_inst|Mux4~0_combout\ : std_logic;
SIGNAL \controladora_inst|Mux11~0_combout\ : std_logic;
SIGNAL \controladora_inst|Mux8~0_combout\ : std_logic;
SIGNAL \datapath_inst|Mux7~0_combout\ : std_logic;
SIGNAL \controladora_inst|Selector6~0_combout\ : std_logic;
SIGNAL \datapath_inst|Mux11~0_combout\ : std_logic;
SIGNAL \datapath_inst|Mux9~0_combout\ : std_logic;
SIGNAL \controladora_inst|Mux10~0_combout\ : std_logic;
SIGNAL \datapath_inst|Mux3~0_combout\ : std_logic;
SIGNAL \controladora_inst|Selector0~1_combout\ : std_logic;
SIGNAL \controladora_inst|Selector0~0_combout\ : std_logic;
SIGNAL \controladora_inst|Selector0~2_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \controladora_inst|state.l0~q\ : std_logic;
SIGNAL \controladora_inst|Selector3~0_combout\ : std_logic;
SIGNAL \controladora_inst|Selector3~1_combout\ : std_logic;
SIGNAL \controladora_inst|state.l3~q\ : std_logic;
SIGNAL \controladora_inst|WideOr10~combout\ : std_logic;
SIGNAL \controladora_inst|Selector6~1_combout\ : std_logic;
SIGNAL \controladora_inst|state.l6~q\ : std_logic;
SIGNAL \controladora_inst|Selector2~0_combout\ : std_logic;
SIGNAL \controladora_inst|Selector2~1_combout\ : std_logic;
SIGNAL \controladora_inst|state.l2~q\ : std_logic;
SIGNAL \controladora_inst|Selector4~0_combout\ : std_logic;
SIGNAL \controladora_inst|Selector4~1_combout\ : std_logic;
SIGNAL \controladora_inst|state.l4~q\ : std_logic;
SIGNAL \controladora_inst|Selector1~0_combout\ : std_logic;
SIGNAL \controladora_inst|Selector1~1_combout\ : std_logic;
SIGNAL \controladora_inst|state.l1~q\ : std_logic;
SIGNAL \controladora_inst|WideOr11~combout\ : std_logic;
SIGNAL \controladora_inst|Selector5~0_combout\ : std_logic;
SIGNAL \controladora_inst|state.l5~q\ : std_logic;
SIGNAL \controladora_inst|Selector7~1_combout\ : std_logic;
SIGNAL \controladora_inst|Selector7~0_combout\ : std_logic;
SIGNAL \controladora_inst|Selector7~2_combout\ : std_logic;
SIGNAL \controladora_inst|state.l7~q\ : std_logic;
SIGNAL \controladora_inst|WideOr8~combout\ : std_logic;
SIGNAL \controladora_inst|WideOr9~combout\ : std_logic;
SIGNAL \datapath_inst|Mux17~18_combout\ : std_logic;
SIGNAL \datapath_inst|Mux17~4_combout\ : std_logic;
SIGNAL \datapath_inst|Mux17~5_combout\ : std_logic;
SIGNAL \datapath_inst|Mux17~9_combout\ : std_logic;
SIGNAL \datapath_inst|Mux17~6_combout\ : std_logic;
SIGNAL \datapath_inst|Mux17~7_combout\ : std_logic;
SIGNAL \datapath_inst|Mux17~8_combout\ : std_logic;
SIGNAL \datapath_inst|Mux17~10_combout\ : std_logic;
SIGNAL \datapath_inst|Mux17~11_combout\ : std_logic;
SIGNAL \datapath_inst|Mux17~12_combout\ : std_logic;
SIGNAL \datapath_inst|Mux17~13_combout\ : std_logic;
SIGNAL \datapath_inst|Mux17~19_combout\ : std_logic;
SIGNAL \datapath_inst|Mux21~0_combout\ : std_logic;
SIGNAL \datapath_inst|Mux21~1_combout\ : std_logic;
SIGNAL \datapath_inst|Mux21~2_combout\ : std_logic;
SIGNAL \datapath_inst|Mux21~3_combout\ : std_logic;
SIGNAL \datapath_inst|Mux21~4_combout\ : std_logic;
SIGNAL \datapath_inst|Mux17~16_combout\ : std_logic;
SIGNAL \datapath_inst|Mux17~17_combout\ : std_logic;
SIGNAL \datapath_inst|Mux17~14_combout\ : std_logic;
SIGNAL \datapath_inst|Mux17~15_combout\ : std_logic;
SIGNAL \datapath_inst|Mux25~0_combout\ : std_logic;
SIGNAL \datapath_inst|Mux25~1_combout\ : std_logic;
SIGNAL \ALT_INV_CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \datapath_inst|U1|ALT_INV_saida_val[3]~3_combout\ : std_logic;
SIGNAL \datapath_inst|U1|ALT_INV_saida_val[2]~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK <= CLOCK;
ww_RESET <= RESET;
ww_ent_top <= ent_top;
saida_val <= ww_saida_val;
disp1 <= ww_disp1;
disp2 <= ww_disp2;
disp3 <= ww_disp3;
current_state <= ww_current_state;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);
\ALT_INV_CLOCK~inputclkctrl_outclk\ <= NOT \CLOCK~inputclkctrl_outclk\;
\ALT_INV_RESET~inputclkctrl_outclk\ <= NOT \RESET~inputclkctrl_outclk\;
\datapath_inst|U1|ALT_INV_saida_val[3]~3_combout\ <= NOT \datapath_inst|U1|saida_val[3]~3_combout\;
\datapath_inst|U1|ALT_INV_saida_val[2]~2_combout\ <= NOT \datapath_inst|U1|saida_val[2]~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X54_Y54_N9
\saida_val[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|U1|saida_val[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida_val[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\saida_val[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|U1|saida_val[1]~1_combout\,
	devoe => ww_devoe,
	o => \saida_val[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\saida_val[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|U1|ALT_INV_saida_val[2]~2_combout\,
	devoe => ww_devoe,
	o => \saida_val[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\saida_val[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|U1|ALT_INV_saida_val[3]~3_combout\,
	devoe => ww_devoe,
	o => \saida_val[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\disp1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|Mux17~13_combout\,
	devoe => ww_devoe,
	o => \disp1[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\disp1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp1[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\disp1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|Mux17~13_combout\,
	devoe => ww_devoe,
	o => \disp1[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\disp1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \disp1[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\disp1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|Mux17~13_combout\,
	devoe => ww_devoe,
	o => \disp1[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\disp1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|Mux17~13_combout\,
	devoe => ww_devoe,
	o => \disp1[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\disp1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp1[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\disp2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|Mux21~4_combout\,
	devoe => ww_devoe,
	o => \disp2[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\disp2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp2[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\disp2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|Mux21~4_combout\,
	devoe => ww_devoe,
	o => \disp2[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\disp2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \disp2[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\disp2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|Mux21~4_combout\,
	devoe => ww_devoe,
	o => \disp2[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\disp2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|Mux21~4_combout\,
	devoe => ww_devoe,
	o => \disp2[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\disp2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp2[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\disp3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|Mux25~1_combout\,
	devoe => ww_devoe,
	o => \disp3[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\disp3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp3[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\disp3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|Mux25~1_combout\,
	devoe => ww_devoe,
	o => \disp3[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\disp3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \disp3[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\disp3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|Mux25~1_combout\,
	devoe => ww_devoe,
	o => \disp3[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\disp3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|Mux25~1_combout\,
	devoe => ww_devoe,
	o => \disp3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\disp3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp3[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\current_state[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controladora_inst|WideOr11~combout\,
	devoe => ww_devoe,
	o => \current_state[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\current_state[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controladora_inst|WideOr10~combout\,
	devoe => ww_devoe,
	o => \current_state[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\current_state[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controladora_inst|WideOr9~combout\,
	devoe => ww_devoe,
	o => \current_state[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\current_state[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controladora_inst|WideOr8~combout\,
	devoe => ww_devoe,
	o => \current_state[3]~output_o\);

-- Location: IOIBUF_X51_Y54_N22
\ent_top[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent_top(2),
	o => \ent_top[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\ent_top[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent_top(3),
	o => \ent_top[3]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\ent_top[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent_top(1),
	o => \ent_top[1]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\ent_top[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent_top(0),
	o => \ent_top[0]~input_o\);

-- Location: LCCOMB_X55_Y51_N4
\datapath_inst|U1|saida_val[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|U1|saida_val[0]~0_combout\ = (\ent_top[0]~input_o\ & ((\ent_top[2]~input_o\ & (\ent_top[3]~input_o\ & \ent_top[1]~input_o\)) # (!\ent_top[2]~input_o\ & (!\ent_top[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_top[2]~input_o\,
	datab => \ent_top[3]~input_o\,
	datac => \ent_top[1]~input_o\,
	datad => \ent_top[0]~input_o\,
	combout => \datapath_inst|U1|saida_val[0]~0_combout\);

-- Location: LCCOMB_X55_Y51_N10
\datapath_inst|U1|saida_val[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|U1|saida_val[1]~1_combout\ = (\ent_top[1]~input_o\) # ((\ent_top[0]~input_o\ & ((\ent_top[2]~input_o\) # (\ent_top[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_top[2]~input_o\,
	datab => \ent_top[3]~input_o\,
	datac => \ent_top[1]~input_o\,
	datad => \ent_top[0]~input_o\,
	combout => \datapath_inst|U1|saida_val[1]~1_combout\);

-- Location: LCCOMB_X57_Y51_N12
\datapath_inst|U1|saida_val[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|U1|saida_val[2]~2_combout\ = (!\ent_top[2]~input_o\ & (((!\ent_top[0]~input_o\ & !\ent_top[1]~input_o\)) # (!\ent_top[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_top[2]~input_o\,
	datab => \ent_top[0]~input_o\,
	datac => \ent_top[1]~input_o\,
	datad => \ent_top[3]~input_o\,
	combout => \datapath_inst|U1|saida_val[2]~2_combout\);

-- Location: LCCOMB_X55_Y51_N12
\datapath_inst|U1|saida_val[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|U1|saida_val[3]~3_combout\ = (!\ent_top[3]~input_o\ & (((!\ent_top[1]~input_o\ & !\ent_top[0]~input_o\)) # (!\ent_top[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_top[2]~input_o\,
	datab => \ent_top[3]~input_o\,
	datac => \ent_top[1]~input_o\,
	datad => \ent_top[0]~input_o\,
	combout => \datapath_inst|U1|saida_val[3]~3_combout\);

-- Location: IOIBUF_X78_Y29_N15
\CLOCK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G7
\CLOCK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~inputclkctrl_outclk\);

-- Location: LCCOMB_X57_Y51_N20
\datapath_inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux6~0_combout\ = (\ent_top[2]~input_o\) # ((\ent_top[0]~input_o\) # ((\ent_top[1]~input_o\) # (!\ent_top[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_top[2]~input_o\,
	datab => \ent_top[0]~input_o\,
	datac => \ent_top[1]~input_o\,
	datad => \ent_top[3]~input_o\,
	combout => \datapath_inst|Mux6~0_combout\);

-- Location: LCCOMB_X55_Y51_N26
\controladora_inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Mux5~0_combout\ = (\ent_top[1]~input_o\) # ((\ent_top[0]~input_o\) # ((\ent_top[2]~input_o\ & !\ent_top[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_top[2]~input_o\,
	datab => \ent_top[3]~input_o\,
	datac => \ent_top[1]~input_o\,
	datad => \ent_top[0]~input_o\,
	combout => \controladora_inst|Mux5~0_combout\);

-- Location: LCCOMB_X57_Y51_N18
\datapath_inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux0~0_combout\ = (\ent_top[2]~input_o\) # (((\ent_top[1]~input_o\) # (\ent_top[3]~input_o\)) # (!\ent_top[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_top[2]~input_o\,
	datab => \ent_top[0]~input_o\,
	datac => \ent_top[1]~input_o\,
	datad => \ent_top[3]~input_o\,
	combout => \datapath_inst|Mux0~0_combout\);

-- Location: LCCOMB_X55_Y51_N24
\datapath_inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux4~0_combout\ = (\ent_top[2]~input_o\ & (\ent_top[3]~input_o\ & (!\ent_top[1]~input_o\ & !\ent_top[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_top[2]~input_o\,
	datab => \ent_top[3]~input_o\,
	datac => \ent_top[1]~input_o\,
	datad => \ent_top[0]~input_o\,
	combout => \datapath_inst|Mux4~0_combout\);

-- Location: LCCOMB_X55_Y51_N20
\controladora_inst|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Mux11~0_combout\ = (\ent_top[2]~input_o\ & (((!\ent_top[0]~input_o\) # (!\ent_top[1]~input_o\)) # (!\ent_top[3]~input_o\))) # (!\ent_top[2]~input_o\ & ((\ent_top[3]~input_o\) # (\ent_top[1]~input_o\ $ (!\ent_top[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_top[2]~input_o\,
	datab => \ent_top[3]~input_o\,
	datac => \ent_top[1]~input_o\,
	datad => \ent_top[0]~input_o\,
	combout => \controladora_inst|Mux11~0_combout\);

-- Location: LCCOMB_X55_Y51_N8
\controladora_inst|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Mux8~0_combout\ = (\ent_top[1]~input_o\) # ((\ent_top[0]~input_o\) # ((!\ent_top[2]~input_o\ & \ent_top[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_top[2]~input_o\,
	datab => \ent_top[3]~input_o\,
	datac => \ent_top[1]~input_o\,
	datad => \ent_top[0]~input_o\,
	combout => \controladora_inst|Mux8~0_combout\);

-- Location: LCCOMB_X57_Y51_N24
\datapath_inst|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux7~0_combout\ = (!\ent_top[2]~input_o\ & (!\ent_top[0]~input_o\ & (\ent_top[1]~input_o\ & !\ent_top[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_top[2]~input_o\,
	datab => \ent_top[0]~input_o\,
	datac => \ent_top[1]~input_o\,
	datad => \ent_top[3]~input_o\,
	combout => \datapath_inst|Mux7~0_combout\);

-- Location: LCCOMB_X55_Y51_N14
\controladora_inst|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector6~0_combout\ = ((\ent_top[2]~input_o\ & ((!\ent_top[0]~input_o\) # (!\ent_top[3]~input_o\))) # (!\ent_top[2]~input_o\ & (\ent_top[3]~input_o\))) # (!\ent_top[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_top[2]~input_o\,
	datab => \ent_top[3]~input_o\,
	datac => \ent_top[1]~input_o\,
	datad => \ent_top[0]~input_o\,
	combout => \controladora_inst|Selector6~0_combout\);

-- Location: LCCOMB_X55_Y51_N6
\datapath_inst|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux11~0_combout\ = ((\ent_top[3]~input_o\) # ((\ent_top[1]~input_o\) # (\ent_top[0]~input_o\))) # (!\ent_top[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_top[2]~input_o\,
	datab => \ent_top[3]~input_o\,
	datac => \ent_top[1]~input_o\,
	datad => \ent_top[0]~input_o\,
	combout => \datapath_inst|Mux11~0_combout\);

-- Location: LCCOMB_X57_Y51_N22
\datapath_inst|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux9~0_combout\ = (!\ent_top[2]~input_o\ & (\ent_top[0]~input_o\ & (\ent_top[1]~input_o\ & !\ent_top[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_top[2]~input_o\,
	datab => \ent_top[0]~input_o\,
	datac => \ent_top[1]~input_o\,
	datad => \ent_top[3]~input_o\,
	combout => \datapath_inst|Mux9~0_combout\);

-- Location: LCCOMB_X57_Y51_N16
\controladora_inst|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Mux10~0_combout\ = (\ent_top[0]~input_o\) # ((\ent_top[1]~input_o\) # ((\ent_top[2]~input_o\ & \ent_top[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_top[2]~input_o\,
	datab => \ent_top[0]~input_o\,
	datac => \ent_top[1]~input_o\,
	datad => \ent_top[3]~input_o\,
	combout => \controladora_inst|Mux10~0_combout\);

-- Location: LCCOMB_X57_Y51_N8
\datapath_inst|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux3~0_combout\ = (!\ent_top[2]~input_o\ & (!\ent_top[0]~input_o\ & (!\ent_top[1]~input_o\ & !\ent_top[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_top[2]~input_o\,
	datab => \ent_top[0]~input_o\,
	datac => \ent_top[1]~input_o\,
	datad => \ent_top[3]~input_o\,
	combout => \datapath_inst|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y51_N28
\controladora_inst|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector0~1_combout\ = (\ent_top[2]~input_o\) # ((\ent_top[3]~input_o\) # ((!\ent_top[0]~input_o\ & !\ent_top[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_top[2]~input_o\,
	datab => \ent_top[0]~input_o\,
	datac => \ent_top[1]~input_o\,
	datad => \ent_top[3]~input_o\,
	combout => \controladora_inst|Selector0~1_combout\);

-- Location: LCCOMB_X57_Y51_N10
\controladora_inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector0~0_combout\ = (\controladora_inst|state.l3~q\) # ((\controladora_inst|state.l1~q\) # (\controladora_inst|state.l2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora_inst|state.l3~q\,
	datac => \controladora_inst|state.l1~q\,
	datad => \controladora_inst|state.l2~q\,
	combout => \controladora_inst|Selector0~0_combout\);

-- Location: LCCOMB_X57_Y51_N4
\controladora_inst|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector0~2_combout\ = (\datapath_inst|Mux3~0_combout\ & (!\controladora_inst|Selector0~0_combout\ & ((\controladora_inst|state.l0~q\) # (!\controladora_inst|Selector0~1_combout\)))) # (!\datapath_inst|Mux3~0_combout\ & 
-- (((\controladora_inst|state.l0~q\)) # (!\controladora_inst|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|Mux3~0_combout\,
	datab => \controladora_inst|Selector0~1_combout\,
	datac => \controladora_inst|state.l0~q\,
	datad => \controladora_inst|Selector0~0_combout\,
	combout => \controladora_inst|Selector0~2_combout\);

-- Location: IOIBUF_X78_Y29_N22
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G9
\RESET~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X57_Y51_N5
\controladora_inst|state.l0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~inputclkctrl_outclk\,
	d => \controladora_inst|Selector0~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controladora_inst|state.l0~q\);

-- Location: LCCOMB_X57_Y51_N2
\controladora_inst|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector3~0_combout\ = ((\controladora_inst|state.l5~q\) # (\controladora_inst|state.l6~q\)) # (!\controladora_inst|state.l0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora_inst|state.l0~q\,
	datac => \controladora_inst|state.l5~q\,
	datad => \controladora_inst|state.l6~q\,
	combout => \controladora_inst|Selector3~0_combout\);

-- Location: LCCOMB_X57_Y51_N26
\controladora_inst|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector3~1_combout\ = (\datapath_inst|Mux9~0_combout\ & ((\controladora_inst|Selector3~0_combout\) # ((\controladora_inst|Mux10~0_combout\ & \controladora_inst|state.l3~q\)))) # (!\datapath_inst|Mux9~0_combout\ & 
-- (\controladora_inst|Mux10~0_combout\ & (\controladora_inst|state.l3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|Mux9~0_combout\,
	datab => \controladora_inst|Mux10~0_combout\,
	datac => \controladora_inst|state.l3~q\,
	datad => \controladora_inst|Selector3~0_combout\,
	combout => \controladora_inst|Selector3~1_combout\);

-- Location: FF_X57_Y51_N27
\controladora_inst|state.l3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~inputclkctrl_outclk\,
	d => \controladora_inst|Selector3~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controladora_inst|state.l3~q\);

-- Location: LCCOMB_X56_Y51_N18
\controladora_inst|WideOr10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|WideOr10~combout\ = (\controladora_inst|state.l2~q\) # ((\controladora_inst|state.l7~q\) # (\controladora_inst|state.l3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora_inst|state.l2~q\,
	datac => \controladora_inst|state.l7~q\,
	datad => \controladora_inst|state.l3~q\,
	combout => \controladora_inst|WideOr10~combout\);

-- Location: LCCOMB_X56_Y51_N30
\controladora_inst|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector6~1_combout\ = (\controladora_inst|Selector6~0_combout\ & ((\controladora_inst|state.l6~q\) # ((!\datapath_inst|Mux11~0_combout\ & \controladora_inst|WideOr10~combout\)))) # (!\controladora_inst|Selector6~0_combout\ & 
-- (!\datapath_inst|Mux11~0_combout\ & ((\controladora_inst|WideOr10~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora_inst|Selector6~0_combout\,
	datab => \datapath_inst|Mux11~0_combout\,
	datac => \controladora_inst|state.l6~q\,
	datad => \controladora_inst|WideOr10~combout\,
	combout => \controladora_inst|Selector6~1_combout\);

-- Location: FF_X56_Y51_N31
\controladora_inst|state.l6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~inputclkctrl_outclk\,
	d => \controladora_inst|Selector6~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controladora_inst|state.l6~q\);

-- Location: LCCOMB_X56_Y51_N28
\controladora_inst|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector2~0_combout\ = (\controladora_inst|state.l4~q\) # ((\controladora_inst|state.l6~q\) # (!\controladora_inst|state.l0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora_inst|state.l4~q\,
	datac => \controladora_inst|state.l6~q\,
	datad => \controladora_inst|state.l0~q\,
	combout => \controladora_inst|Selector2~0_combout\);

-- Location: LCCOMB_X56_Y51_N12
\controladora_inst|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector2~1_combout\ = (\controladora_inst|Mux8~0_combout\ & ((\controladora_inst|state.l2~q\) # ((\datapath_inst|Mux7~0_combout\ & \controladora_inst|Selector2~0_combout\)))) # (!\controladora_inst|Mux8~0_combout\ & 
-- (\datapath_inst|Mux7~0_combout\ & ((\controladora_inst|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora_inst|Mux8~0_combout\,
	datab => \datapath_inst|Mux7~0_combout\,
	datac => \controladora_inst|state.l2~q\,
	datad => \controladora_inst|Selector2~0_combout\,
	combout => \controladora_inst|Selector2~1_combout\);

-- Location: FF_X56_Y51_N13
\controladora_inst|state.l2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~inputclkctrl_outclk\,
	d => \controladora_inst|Selector2~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controladora_inst|state.l2~q\);

-- Location: LCCOMB_X56_Y51_N10
\controladora_inst|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector4~0_combout\ = (\controladora_inst|state.l2~q\) # ((\controladora_inst|state.l7~q\) # (\controladora_inst|state.l1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora_inst|state.l2~q\,
	datac => \controladora_inst|state.l7~q\,
	datad => \controladora_inst|state.l1~q\,
	combout => \controladora_inst|Selector4~0_combout\);

-- Location: LCCOMB_X56_Y51_N2
\controladora_inst|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector4~1_combout\ = (\datapath_inst|Mux4~0_combout\ & ((\controladora_inst|Selector4~0_combout\) # ((\controladora_inst|Mux11~0_combout\ & \controladora_inst|state.l4~q\)))) # (!\datapath_inst|Mux4~0_combout\ & 
-- (\controladora_inst|Mux11~0_combout\ & (\controladora_inst|state.l4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|Mux4~0_combout\,
	datab => \controladora_inst|Mux11~0_combout\,
	datac => \controladora_inst|state.l4~q\,
	datad => \controladora_inst|Selector4~0_combout\,
	combout => \controladora_inst|Selector4~1_combout\);

-- Location: FF_X56_Y51_N3
\controladora_inst|state.l4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~inputclkctrl_outclk\,
	d => \controladora_inst|Selector4~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controladora_inst|state.l4~q\);

-- Location: LCCOMB_X56_Y51_N20
\controladora_inst|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector1~0_combout\ = (\controladora_inst|state.l5~q\) # ((\controladora_inst|state.l4~q\) # (!\controladora_inst|state.l0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora_inst|state.l5~q\,
	datac => \controladora_inst|state.l4~q\,
	datad => \controladora_inst|state.l0~q\,
	combout => \controladora_inst|Selector1~0_combout\);

-- Location: LCCOMB_X56_Y51_N6
\controladora_inst|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector1~1_combout\ = (\controladora_inst|Mux5~0_combout\ & ((\controladora_inst|state.l1~q\) # ((!\datapath_inst|Mux0~0_combout\ & \controladora_inst|Selector1~0_combout\)))) # (!\controladora_inst|Mux5~0_combout\ & 
-- (!\datapath_inst|Mux0~0_combout\ & ((\controladora_inst|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora_inst|Mux5~0_combout\,
	datab => \datapath_inst|Mux0~0_combout\,
	datac => \controladora_inst|state.l1~q\,
	datad => \controladora_inst|Selector1~0_combout\,
	combout => \controladora_inst|Selector1~1_combout\);

-- Location: FF_X56_Y51_N7
\controladora_inst|state.l1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~inputclkctrl_outclk\,
	d => \controladora_inst|Selector1~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controladora_inst|state.l1~q\);

-- Location: LCCOMB_X56_Y51_N0
\controladora_inst|WideOr11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|WideOr11~combout\ = (\controladora_inst|state.l1~q\) # ((\controladora_inst|state.l7~q\) # (\controladora_inst|state.l3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora_inst|state.l1~q\,
	datab => \controladora_inst|state.l7~q\,
	datad => \controladora_inst|state.l3~q\,
	combout => \controladora_inst|WideOr11~combout\);

-- Location: LCCOMB_X56_Y51_N16
\controladora_inst|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector5~0_combout\ = (\datapath_inst|Mux6~0_combout\ & (!\datapath_inst|U1|saida_val[0]~0_combout\ & (\controladora_inst|state.l5~q\))) # (!\datapath_inst|Mux6~0_combout\ & ((\controladora_inst|WideOr11~combout\) # 
-- ((!\datapath_inst|U1|saida_val[0]~0_combout\ & \controladora_inst|state.l5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|Mux6~0_combout\,
	datab => \datapath_inst|U1|saida_val[0]~0_combout\,
	datac => \controladora_inst|state.l5~q\,
	datad => \controladora_inst|WideOr11~combout\,
	combout => \controladora_inst|Selector5~0_combout\);

-- Location: FF_X56_Y51_N17
\controladora_inst|state.l5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~inputclkctrl_outclk\,
	d => \controladora_inst|Selector5~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controladora_inst|state.l5~q\);

-- Location: LCCOMB_X56_Y51_N22
\controladora_inst|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector7~1_combout\ = (\controladora_inst|state.l5~q\) # ((\controladora_inst|state.l6~q\) # (\controladora_inst|state.l4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora_inst|state.l5~q\,
	datac => \controladora_inst|state.l6~q\,
	datad => \controladora_inst|state.l4~q\,
	combout => \controladora_inst|Selector7~1_combout\);

-- Location: LCCOMB_X56_Y51_N24
\controladora_inst|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector7~0_combout\ = (\controladora_inst|state.l7~q\ & ((\datapath_inst|U1|saida_val[1]~1_combout\) # ((!\ent_top[3]~input_o\ & !\ent_top[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_top[3]~input_o\,
	datab => \ent_top[2]~input_o\,
	datac => \controladora_inst|state.l7~q\,
	datad => \datapath_inst|U1|saida_val[1]~1_combout\,
	combout => \controladora_inst|Selector7~0_combout\);

-- Location: LCCOMB_X56_Y51_N8
\controladora_inst|Selector7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector7~2_combout\ = (\controladora_inst|Selector7~0_combout\) # ((!\datapath_inst|U1|saida_val[3]~3_combout\ & (\datapath_inst|U1|saida_val[0]~0_combout\ & \controladora_inst|Selector7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|U1|saida_val[3]~3_combout\,
	datab => \datapath_inst|U1|saida_val[0]~0_combout\,
	datac => \controladora_inst|Selector7~1_combout\,
	datad => \controladora_inst|Selector7~0_combout\,
	combout => \controladora_inst|Selector7~2_combout\);

-- Location: FF_X56_Y51_N9
\controladora_inst|state.l7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~inputclkctrl_outclk\,
	d => \controladora_inst|Selector7~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controladora_inst|state.l7~q\);

-- Location: LCCOMB_X56_Y51_N4
\controladora_inst|WideOr8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|WideOr8~combout\ = (\controladora_inst|state.l7~q\) # ((\controladora_inst|state.l4~q\) # (\controladora_inst|state.l5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora_inst|state.l7~q\,
	datac => \controladora_inst|state.l4~q\,
	datad => \controladora_inst|state.l5~q\,
	combout => \controladora_inst|WideOr8~combout\);

-- Location: LCCOMB_X57_Y51_N6
\controladora_inst|WideOr9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controladora_inst|WideOr9~combout\ = (\controladora_inst|state.l6~q\) # ((\controladora_inst|state.l7~q\) # (\controladora_inst|state.l4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora_inst|state.l6~q\,
	datac => \controladora_inst|state.l7~q\,
	datad => \controladora_inst|state.l4~q\,
	combout => \controladora_inst|WideOr9~combout\);

-- Location: LCCOMB_X57_Y51_N30
\datapath_inst|Mux17~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux17~18_combout\ = (\controladora_inst|state.l3~q\) # ((\controladora_inst|state.l1~q\) # ((\controladora_inst|state.l7~q\) # (\datapath_inst|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora_inst|state.l3~q\,
	datab => \controladora_inst|state.l1~q\,
	datac => \controladora_inst|state.l7~q\,
	datad => \datapath_inst|Mux7~0_combout\,
	combout => \datapath_inst|Mux17~18_combout\);

-- Location: LCCOMB_X57_Y51_N14
\datapath_inst|Mux17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux17~4_combout\ = (\controladora_inst|state.l4~q\) # ((\controladora_inst|state.l7~q\) # ((\controladora_inst|state.l6~q\ & \controladora_inst|state.l5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora_inst|state.l4~q\,
	datab => \controladora_inst|state.l6~q\,
	datac => \controladora_inst|state.l7~q\,
	datad => \controladora_inst|state.l5~q\,
	combout => \datapath_inst|Mux17~4_combout\);

-- Location: LCCOMB_X57_Y51_N0
\datapath_inst|Mux17~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux17~5_combout\ = (\datapath_inst|Mux17~4_combout\ & ((\controladora_inst|WideOr11~combout\) # (!\controladora_inst|WideOr10~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora_inst|WideOr10~combout\,
	datac => \datapath_inst|Mux17~4_combout\,
	datad => \controladora_inst|WideOr11~combout\,
	combout => \datapath_inst|Mux17~5_combout\);

-- Location: LCCOMB_X58_Y51_N2
\datapath_inst|Mux17~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux17~9_combout\ = (\datapath_inst|Mux17~4_combout\ & (\controladora_inst|WideOr10~combout\)) # (!\datapath_inst|Mux17~4_combout\ & ((\controladora_inst|WideOr8~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|Mux17~4_combout\,
	datac => \controladora_inst|WideOr10~combout\,
	datad => \controladora_inst|WideOr8~combout\,
	combout => \datapath_inst|Mux17~9_combout\);

-- Location: LCCOMB_X58_Y51_N4
\datapath_inst|Mux17~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux17~6_combout\ = (\controladora_inst|WideOr11~combout\) # ((\controladora_inst|WideOr10~combout\) # (\datapath_inst|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora_inst|WideOr11~combout\,
	datac => \controladora_inst|WideOr10~combout\,
	datad => \datapath_inst|Mux9~0_combout\,
	combout => \datapath_inst|Mux17~6_combout\);

-- Location: LCCOMB_X58_Y51_N14
\datapath_inst|Mux17~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux17~7_combout\ = (\controladora_inst|WideOr11~combout\ & ((\datapath_inst|Mux3~0_combout\) # ((\controladora_inst|WideOr10~combout\)))) # (!\controladora_inst|WideOr11~combout\ & (((\datapath_inst|Mux0~0_combout\ & 
-- !\controladora_inst|WideOr10~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|Mux3~0_combout\,
	datab => \datapath_inst|Mux0~0_combout\,
	datac => \controladora_inst|WideOr11~combout\,
	datad => \controladora_inst|WideOr10~combout\,
	combout => \datapath_inst|Mux17~7_combout\);

-- Location: LCCOMB_X58_Y51_N12
\datapath_inst|Mux17~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux17~8_combout\ = (\controladora_inst|WideOr10~combout\ & ((\datapath_inst|Mux17~7_combout\ & ((\datapath_inst|Mux6~0_combout\))) # (!\datapath_inst|Mux17~7_combout\ & (!\datapath_inst|Mux4~0_combout\)))) # 
-- (!\controladora_inst|WideOr10~combout\ & (\datapath_inst|Mux17~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora_inst|WideOr10~combout\,
	datab => \datapath_inst|Mux17~7_combout\,
	datac => \datapath_inst|Mux4~0_combout\,
	datad => \datapath_inst|Mux6~0_combout\,
	combout => \datapath_inst|Mux17~8_combout\);

-- Location: LCCOMB_X58_Y51_N28
\datapath_inst|Mux17~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux17~10_combout\ = (\datapath_inst|Mux17~4_combout\ & (\datapath_inst|Mux17~9_combout\)) # (!\datapath_inst|Mux17~4_combout\ & ((\datapath_inst|Mux17~9_combout\ & (\datapath_inst|Mux17~6_combout\)) # (!\datapath_inst|Mux17~9_combout\ & 
-- ((\datapath_inst|Mux17~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|Mux17~4_combout\,
	datab => \datapath_inst|Mux17~9_combout\,
	datac => \datapath_inst|Mux17~6_combout\,
	datad => \datapath_inst|Mux17~8_combout\,
	combout => \datapath_inst|Mux17~10_combout\);

-- Location: LCCOMB_X58_Y51_N22
\datapath_inst|Mux17~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux17~11_combout\ = (\datapath_inst|Mux17~5_combout\ & ((\datapath_inst|Mux17~10_combout\ & (!\datapath_inst|Mux11~0_combout\)) # (!\datapath_inst|Mux17~10_combout\ & ((\datapath_inst|Mux17~18_combout\))))) # 
-- (!\datapath_inst|Mux17~5_combout\ & (((\datapath_inst|Mux17~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|Mux11~0_combout\,
	datab => \datapath_inst|Mux17~18_combout\,
	datac => \datapath_inst|Mux17~5_combout\,
	datad => \datapath_inst|Mux17~10_combout\,
	combout => \datapath_inst|Mux17~11_combout\);

-- Location: LCCOMB_X56_Y51_N14
\datapath_inst|Mux17~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux17~12_combout\ = (\controladora_inst|WideOr11~combout\) # (((\controladora_inst|WideOr10~combout\) # (\datapath_inst|U1|saida_val[3]~3_combout\)) # (!\datapath_inst|U1|saida_val[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora_inst|WideOr11~combout\,
	datab => \datapath_inst|U1|saida_val[0]~0_combout\,
	datac => \controladora_inst|WideOr10~combout\,
	datad => \datapath_inst|U1|saida_val[3]~3_combout\,
	combout => \datapath_inst|Mux17~12_combout\);

-- Location: LCCOMB_X58_Y51_N0
\datapath_inst|Mux17~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux17~13_combout\ = (\controladora_inst|WideOr8~combout\ & (((\datapath_inst|Mux17~11_combout\)))) # (!\controladora_inst|WideOr8~combout\ & ((\controladora_inst|WideOr9~combout\ & ((\datapath_inst|Mux17~12_combout\))) # 
-- (!\controladora_inst|WideOr9~combout\ & (\datapath_inst|Mux17~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora_inst|WideOr8~combout\,
	datab => \controladora_inst|WideOr9~combout\,
	datac => \datapath_inst|Mux17~11_combout\,
	datad => \datapath_inst|Mux17~12_combout\,
	combout => \datapath_inst|Mux17~13_combout\);

-- Location: LCCOMB_X56_Y51_N26
\datapath_inst|Mux17~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux17~19_combout\ = (\controladora_inst|state.l1~q\) # (((\controladora_inst|state.l7~q\) # (\controladora_inst|state.l3~q\)) # (!\datapath_inst|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora_inst|state.l1~q\,
	datab => \datapath_inst|Mux0~0_combout\,
	datac => \controladora_inst|state.l7~q\,
	datad => \controladora_inst|state.l3~q\,
	combout => \datapath_inst|Mux17~19_combout\);

-- Location: LCCOMB_X58_Y51_N10
\datapath_inst|Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux21~0_combout\ = (\controladora_inst|WideOr11~combout\ & (((\controladora_inst|WideOr10~combout\)) # (!\datapath_inst|Mux4~0_combout\))) # (!\controladora_inst|WideOr11~combout\ & (((!\datapath_inst|Mux7~0_combout\ & 
-- !\controladora_inst|WideOr10~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|Mux4~0_combout\,
	datab => \datapath_inst|Mux7~0_combout\,
	datac => \controladora_inst|WideOr11~combout\,
	datad => \controladora_inst|WideOr10~combout\,
	combout => \datapath_inst|Mux21~0_combout\);

-- Location: LCCOMB_X58_Y51_N8
\datapath_inst|Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux21~1_combout\ = (\controladora_inst|WideOr10~combout\ & ((\datapath_inst|Mux21~0_combout\ & ((\datapath_inst|Mux11~0_combout\))) # (!\datapath_inst|Mux21~0_combout\ & (\datapath_inst|Mux3~0_combout\)))) # 
-- (!\controladora_inst|WideOr10~combout\ & (((\datapath_inst|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|Mux3~0_combout\,
	datab => \datapath_inst|Mux11~0_combout\,
	datac => \controladora_inst|WideOr10~combout\,
	datad => \datapath_inst|Mux21~0_combout\,
	combout => \datapath_inst|Mux21~1_combout\);

-- Location: LCCOMB_X58_Y51_N26
\datapath_inst|Mux21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux21~2_combout\ = (\datapath_inst|Mux17~4_combout\ & (((\datapath_inst|Mux17~9_combout\)))) # (!\datapath_inst|Mux17~4_combout\ & ((\datapath_inst|Mux17~9_combout\ & (\datapath_inst|Mux17~12_combout\)) # (!\datapath_inst|Mux17~9_combout\ & 
-- ((\datapath_inst|Mux21~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|Mux17~4_combout\,
	datab => \datapath_inst|Mux17~12_combout\,
	datac => \datapath_inst|Mux21~1_combout\,
	datad => \datapath_inst|Mux17~9_combout\,
	combout => \datapath_inst|Mux21~2_combout\);

-- Location: LCCOMB_X58_Y51_N20
\datapath_inst|Mux21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux21~3_combout\ = (\datapath_inst|Mux17~5_combout\ & ((\datapath_inst|Mux21~2_combout\ & (!\datapath_inst|Mux6~0_combout\)) # (!\datapath_inst|Mux21~2_combout\ & ((\datapath_inst|Mux17~19_combout\))))) # (!\datapath_inst|Mux17~5_combout\ & 
-- (((\datapath_inst|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|Mux17~5_combout\,
	datab => \datapath_inst|Mux6~0_combout\,
	datac => \datapath_inst|Mux17~19_combout\,
	datad => \datapath_inst|Mux21~2_combout\,
	combout => \datapath_inst|Mux21~3_combout\);

-- Location: LCCOMB_X58_Y51_N6
\datapath_inst|Mux21~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux21~4_combout\ = (\controladora_inst|WideOr8~combout\ & (((\datapath_inst|Mux21~3_combout\)))) # (!\controladora_inst|WideOr8~combout\ & ((\controladora_inst|WideOr9~combout\ & (\datapath_inst|Mux17~6_combout\)) # 
-- (!\controladora_inst|WideOr9~combout\ & ((\datapath_inst|Mux21~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora_inst|WideOr8~combout\,
	datab => \controladora_inst|WideOr9~combout\,
	datac => \datapath_inst|Mux17~6_combout\,
	datad => \datapath_inst|Mux21~3_combout\,
	combout => \datapath_inst|Mux21~4_combout\);

-- Location: LCCOMB_X55_Y51_N18
\datapath_inst|Mux17~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux17~16_combout\ = (!\controladora_inst|WideOr10~combout\ & ((\datapath_inst|U1|saida_val[3]~3_combout\) # (!\datapath_inst|U1|saida_val[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controladora_inst|WideOr10~combout\,
	datac => \datapath_inst|U1|saida_val[0]~0_combout\,
	datad => \datapath_inst|U1|saida_val[3]~3_combout\,
	combout => \datapath_inst|Mux17~16_combout\);

-- Location: LCCOMB_X55_Y51_N28
\datapath_inst|Mux17~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux17~17_combout\ = (\datapath_inst|Mux17~16_combout\) # ((\controladora_inst|WideOr10~combout\ & ((\datapath_inst|Mux4~0_combout\) # (!\controladora_inst|WideOr11~combout\))) # (!\controladora_inst|WideOr10~combout\ & 
-- (\controladora_inst|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|Mux17~16_combout\,
	datab => \controladora_inst|WideOr10~combout\,
	datac => \controladora_inst|WideOr11~combout\,
	datad => \datapath_inst|Mux4~0_combout\,
	combout => \datapath_inst|Mux17~17_combout\);

-- Location: LCCOMB_X58_Y51_N24
\datapath_inst|Mux17~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux17~14_combout\ = (\controladora_inst|WideOr11~combout\ & (((\controladora_inst|WideOr10~combout\)))) # (!\controladora_inst|WideOr11~combout\ & ((\controladora_inst|WideOr10~combout\ & (\datapath_inst|Mux11~0_combout\)) # 
-- (!\controladora_inst|WideOr10~combout\ & ((!\datapath_inst|Mux9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|Mux11~0_combout\,
	datab => \datapath_inst|Mux9~0_combout\,
	datac => \controladora_inst|WideOr11~combout\,
	datad => \controladora_inst|WideOr10~combout\,
	combout => \datapath_inst|Mux17~14_combout\);

-- Location: LCCOMB_X58_Y51_N18
\datapath_inst|Mux17~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux17~15_combout\ = (\datapath_inst|Mux17~14_combout\ & ((\datapath_inst|Mux3~0_combout\) # ((!\controladora_inst|WideOr11~combout\)))) # (!\datapath_inst|Mux17~14_combout\ & (((\controladora_inst|WideOr11~combout\ & 
-- \datapath_inst|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|Mux3~0_combout\,
	datab => \datapath_inst|Mux17~14_combout\,
	datac => \controladora_inst|WideOr11~combout\,
	datad => \datapath_inst|Mux6~0_combout\,
	combout => \datapath_inst|Mux17~15_combout\);

-- Location: LCCOMB_X58_Y51_N16
\datapath_inst|Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux25~0_combout\ = (\controladora_inst|WideOr8~combout\ & ((\controladora_inst|WideOr9~combout\) # ((\datapath_inst|Mux17~19_combout\)))) # (!\controladora_inst|WideOr8~combout\ & (!\controladora_inst|WideOr9~combout\ & 
-- ((\datapath_inst|Mux17~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora_inst|WideOr8~combout\,
	datab => \controladora_inst|WideOr9~combout\,
	datac => \datapath_inst|Mux17~19_combout\,
	datad => \datapath_inst|Mux17~15_combout\,
	combout => \datapath_inst|Mux25~0_combout\);

-- Location: LCCOMB_X58_Y51_N30
\datapath_inst|Mux25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath_inst|Mux25~1_combout\ = (\controladora_inst|WideOr9~combout\ & ((\datapath_inst|Mux25~0_combout\ & (\datapath_inst|Mux17~17_combout\)) # (!\datapath_inst|Mux25~0_combout\ & ((\datapath_inst|Mux17~18_combout\))))) # 
-- (!\controladora_inst|WideOr9~combout\ & (((\datapath_inst|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|Mux17~17_combout\,
	datab => \datapath_inst|Mux17~18_combout\,
	datac => \controladora_inst|WideOr9~combout\,
	datad => \datapath_inst|Mux25~0_combout\,
	combout => \datapath_inst|Mux25~1_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_saida_val(0) <= \saida_val[0]~output_o\;

ww_saida_val(1) <= \saida_val[1]~output_o\;

ww_saida_val(2) <= \saida_val[2]~output_o\;

ww_saida_val(3) <= \saida_val[3]~output_o\;

ww_disp1(0) <= \disp1[0]~output_o\;

ww_disp1(1) <= \disp1[1]~output_o\;

ww_disp1(2) <= \disp1[2]~output_o\;

ww_disp1(3) <= \disp1[3]~output_o\;

ww_disp1(4) <= \disp1[4]~output_o\;

ww_disp1(5) <= \disp1[5]~output_o\;

ww_disp1(6) <= \disp1[6]~output_o\;

ww_disp2(0) <= \disp2[0]~output_o\;

ww_disp2(1) <= \disp2[1]~output_o\;

ww_disp2(2) <= \disp2[2]~output_o\;

ww_disp2(3) <= \disp2[3]~output_o\;

ww_disp2(4) <= \disp2[4]~output_o\;

ww_disp2(5) <= \disp2[5]~output_o\;

ww_disp2(6) <= \disp2[6]~output_o\;

ww_disp3(0) <= \disp3[0]~output_o\;

ww_disp3(1) <= \disp3[1]~output_o\;

ww_disp3(2) <= \disp3[2]~output_o\;

ww_disp3(3) <= \disp3[3]~output_o\;

ww_disp3(4) <= \disp3[4]~output_o\;

ww_disp3(5) <= \disp3[5]~output_o\;

ww_disp3(6) <= \disp3[6]~output_o\;

ww_current_state(0) <= \current_state[0]~output_o\;

ww_current_state(1) <= \current_state[1]~output_o\;

ww_current_state(2) <= \current_state[2]~output_o\;

ww_current_state(3) <= \current_state[3]~output_o\;
END structure;


