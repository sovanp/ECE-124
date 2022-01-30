-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "07/31/2021 16:46:47"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	Clk : IN std_logic;
	rst_n : IN std_logic;
	pb : IN std_logic_vector(2 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(21 DOWNTO 0)
	);
END LogicalStep_Lab4_top;

ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(21 DOWNTO 0);
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \leds[8]~output_o\ : std_logic;
SIGNAL \leds[9]~output_o\ : std_logic;
SIGNAL \leds[10]~output_o\ : std_logic;
SIGNAL \leds[11]~output_o\ : std_logic;
SIGNAL \leds[12]~output_o\ : std_logic;
SIGNAL \leds[13]~output_o\ : std_logic;
SIGNAL \leds[14]~output_o\ : std_logic;
SIGNAL \leds[15]~output_o\ : std_logic;
SIGNAL \leds[16]~output_o\ : std_logic;
SIGNAL \leds[17]~output_o\ : std_logic;
SIGNAL \leds[18]~output_o\ : std_logic;
SIGNAL \leds[19]~output_o\ : std_logic;
SIGNAL \leds[20]~output_o\ : std_logic;
SIGNAL \leds[21]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \inst_XY|current_state.still_after_reset~q\ : std_logic;
SIGNAL \inst_extender|Transition_Section~0_combout\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \inst_XY|Selector0~0_combout\ : std_logic;
SIGNAL \inst_XY|Selector1~0_combout\ : std_logic;
SIGNAL \inst_XY|current_state.motion_button_pressed~q\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \inst_XY|Selector7~0_combout\ : std_logic;
SIGNAL \inst_XY|WideOr1~0_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \inst_XY|Selector6~0_combout\ : std_logic;
SIGNAL \inst_counter_y|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \inst_counter_y|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \inst_counter_y|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \inst_counter_y|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \inst_counter_y|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \inst_counter_y|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \inst_comp_y|A_gt_B~2_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \inst_XY|Selector5~0_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \inst_XY|Selector4~0_combout\ : std_logic;
SIGNAL \inst_comp_y|A_gt_B~3_combout\ : std_logic;
SIGNAL \inst_comp_y|A_gt_B~4_combout\ : std_logic;
SIGNAL \inst_XY|Selector2~0_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \inst_XY|Selector11~0_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \inst_XY|Selector10~0_combout\ : std_logic;
SIGNAL \inst_counter_x|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \inst_counter_x|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \inst_counter_x|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \inst_counter_x|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \inst_counter_x|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \inst_counter_x|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \inst_comp_x|A_gt_B~2_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \inst_XY|Selector9~0_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \inst_XY|Selector8~0_combout\ : std_logic;
SIGNAL \inst_comp_x|A_gt_B~3_combout\ : std_logic;
SIGNAL \inst_comp_x|A_gt_B~4_combout\ : std_logic;
SIGNAL \inst_comp_x|A_lt_B~0_combout\ : std_logic;
SIGNAL \inst_comp_x|A_lt_B~1_combout\ : std_logic;
SIGNAL \inst_comp_x|A_lt_B~2_combout\ : std_logic;
SIGNAL \inst_XY|comb~9_combout\ : std_logic;
SIGNAL \inst_comp_x|A_gt_B~5_combout\ : std_logic;
SIGNAL \inst_XY|comb~6_combout\ : std_logic;
SIGNAL \inst_XY|clk_en_x~combout\ : std_logic;
SIGNAL \inst_XY|up_down_x~0_combout\ : std_logic;
SIGNAL \inst_XY|comb~7_combout\ : std_logic;
SIGNAL \inst_XY|up_down_x~combout\ : std_logic;
SIGNAL \inst_counter_x|process_0~0_combout\ : std_logic;
SIGNAL \inst_counter_x|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \inst_comp_x|A_gt_B~0_combout\ : std_logic;
SIGNAL \inst_comp_x|inst4|A_eq_B~0_combout\ : std_logic;
SIGNAL \inst_comp_x|A_gt_B~1_combout\ : std_logic;
SIGNAL \inst_XY|Selector2~1_combout\ : std_logic;
SIGNAL \inst_XY|current_state.motion_button_released_moving~q\ : std_logic;
SIGNAL \inst_comp_y|A_lt_B~0_combout\ : std_logic;
SIGNAL \inst_comp_y|A_lt_B~1_combout\ : std_logic;
SIGNAL \inst_comp_y|A_lt_B~2_combout\ : std_logic;
SIGNAL \inst_XY|comb~8_combout\ : std_logic;
SIGNAL \inst_comp_y|A_gt_B~5_combout\ : std_logic;
SIGNAL \inst_XY|comb~4_combout\ : std_logic;
SIGNAL \inst_XY|clk_en_y~combout\ : std_logic;
SIGNAL \inst_XY|up_down_y~0_combout\ : std_logic;
SIGNAL \inst_XY|comb~5_combout\ : std_logic;
SIGNAL \inst_XY|up_down_y~combout\ : std_logic;
SIGNAL \inst_counter_y|process_0~0_combout\ : std_logic;
SIGNAL \inst_counter_y|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \inst_comp_y|A_gt_B~0_combout\ : std_logic;
SIGNAL \inst_comp_y|inst4|A_eq_B~0_combout\ : std_logic;
SIGNAL \inst_comp_y|A_gt_B~1_combout\ : std_logic;
SIGNAL \inst_XY|Selector0~1_combout\ : std_logic;
SIGNAL \inst_XY|current_state.still~q\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \inst_extender|Selector0~0_combout\ : std_logic;
SIGNAL \inst_extender|Selector1~0_combout\ : std_logic;
SIGNAL \inst_extender|current_state.button_press_1~q\ : std_logic;
SIGNAL \inst_shift|sreg~3_combout\ : std_logic;
SIGNAL \inst_extender|clk_en~combout\ : std_logic;
SIGNAL \inst_shift|sreg~2_combout\ : std_logic;
SIGNAL \inst_shift|sreg~1_combout\ : std_logic;
SIGNAL \inst_shift|sreg~0_combout\ : std_logic;
SIGNAL \inst_extender|Selector3~0_combout\ : std_logic;
SIGNAL \inst_extender|Selector2~0_combout\ : std_logic;
SIGNAL \inst_extender|current_state.extending~q\ : std_logic;
SIGNAL \inst_extender|Selector3~1_combout\ : std_logic;
SIGNAL \inst_extender|current_state.extended~q\ : std_logic;
SIGNAL \inst_extender|next_state.button_press_2~0_combout\ : std_logic;
SIGNAL \inst_extender|current_state.button_press_2~q\ : std_logic;
SIGNAL \inst_extender|Selector0~1_combout\ : std_logic;
SIGNAL \inst_extender|Selector4~0_combout\ : std_logic;
SIGNAL \inst_extender|current_state.retracting~q\ : std_logic;
SIGNAL \inst_extender|Selector0~2_combout\ : std_logic;
SIGNAL \inst_extender|current_state.retracted~q\ : std_logic;
SIGNAL \inst_XY|Selector3~0_combout\ : std_logic;
SIGNAL \inst_XY|Selector3~1_combout\ : std_logic;
SIGNAL \inst_XY|current_state.motion_attempted_error_state~q\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \inst_grappler|Selector2~0_combout\ : std_logic;
SIGNAL \inst_grappler|current_state.grappler_on_state~q\ : std_logic;
SIGNAL \inst_grappler|Selector3~0_combout\ : std_logic;
SIGNAL \inst_grappler|current_state.button_press_2~q\ : std_logic;
SIGNAL \inst_grappler|Selector0~0_combout\ : std_logic;
SIGNAL \inst_grappler|current_state.grappler_off~q\ : std_logic;
SIGNAL \inst_grappler|Selector1~0_combout\ : std_logic;
SIGNAL \inst_grappler|current_state.button_press_1~q\ : std_logic;
SIGNAL \inst_grappler|grappler_on~0_combout\ : std_logic;
SIGNAL \inst_counter_y|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_counter_x|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_shift|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_XY|Y_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_XY|X_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_grappler|ALT_INV_grappler_on~0_combout\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_rst_n <= rst_n;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst_grappler|ALT_INV_grappler_on~0_combout\ <= NOT \inst_grappler|grappler_on~0_combout\;

\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_XY|current_state.motion_attempted_error_state~q\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_grappler|ALT_INV_grappler_on~0_combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_shift|sreg\(0),
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_shift|sreg\(1),
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_shift|sreg\(2),
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_shift|sreg\(3),
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_counter_y|ud_bin_counter\(0),
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_counter_y|ud_bin_counter\(1),
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

\leds[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_counter_y|ud_bin_counter\(2),
	devoe => ww_devoe,
	o => \leds[8]~output_o\);

\leds[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_counter_y|ud_bin_counter\(3),
	devoe => ww_devoe,
	o => \leds[9]~output_o\);

\leds[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_counter_x|ud_bin_counter\(0),
	devoe => ww_devoe,
	o => \leds[10]~output_o\);

\leds[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_counter_x|ud_bin_counter\(1),
	devoe => ww_devoe,
	o => \leds[11]~output_o\);

\leds[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_counter_x|ud_bin_counter\(2),
	devoe => ww_devoe,
	o => \leds[12]~output_o\);

\leds[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_counter_x|ud_bin_counter\(3),
	devoe => ww_devoe,
	o => \leds[13]~output_o\);

\leds[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_XY|Y_reg\(0),
	devoe => ww_devoe,
	o => \leds[14]~output_o\);

\leds[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_XY|Y_reg\(1),
	devoe => ww_devoe,
	o => \leds[15]~output_o\);

\leds[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_XY|Y_reg\(2),
	devoe => ww_devoe,
	o => \leds[16]~output_o\);

\leds[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_XY|Y_reg\(3),
	devoe => ww_devoe,
	o => \leds[17]~output_o\);

\leds[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_XY|X_reg\(0),
	devoe => ww_devoe,
	o => \leds[18]~output_o\);

\leds[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_XY|X_reg\(1),
	devoe => ww_devoe,
	o => \leds[19]~output_o\);

\leds[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_XY|X_reg\(2),
	devoe => ww_devoe,
	o => \leds[20]~output_o\);

\leds[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_XY|X_reg\(3),
	devoe => ww_devoe,
	o => \leds[21]~output_o\);

\Clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

\inst_XY|current_state.still_after_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => VCC,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_XY|current_state.still_after_reset~q\);

\inst_extender|Transition_Section~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Transition_Section~0_combout\ = (\inst_XY|current_state.still~q\) # (!\inst_XY|current_state.still_after_reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|current_state.still~q\,
	datad => \inst_XY|current_state.still_after_reset~q\,
	combout => \inst_extender|Transition_Section~0_combout\);

\pb[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => \pb[2]~input_o\);

\inst_XY|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Selector0~0_combout\ = (\inst_XY|current_state.motion_attempted_error_state~q\ & (((\inst_extender|Transition_Section~0_combout\ & !\pb[2]~input_o\)) # (!\inst_XY|Selector3~0_combout\))) # (!\inst_XY|current_state.motion_attempted_error_state~q\ 
-- & (\inst_extender|Transition_Section~0_combout\ & ((!\pb[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|current_state.motion_attempted_error_state~q\,
	datab => \inst_extender|Transition_Section~0_combout\,
	datac => \inst_XY|Selector3~0_combout\,
	datad => \pb[2]~input_o\,
	combout => \inst_XY|Selector0~0_combout\);

\inst_XY|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Selector1~0_combout\ = (\pb[2]~input_o\ & ((\inst_XY|current_state.motion_button_pressed~q\) # ((\inst_extender|Transition_Section~0_combout\ & !\inst_XY|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[2]~input_o\,
	datab => \inst_XY|current_state.motion_button_pressed~q\,
	datac => \inst_extender|Transition_Section~0_combout\,
	datad => \inst_XY|Selector3~0_combout\,
	combout => \inst_XY|Selector1~0_combout\);

\inst_XY|current_state.motion_button_pressed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_XY|Selector1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_XY|current_state.motion_button_pressed~q\);

\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

\inst_XY|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Selector7~0_combout\ = (\inst_XY|current_state.motion_button_pressed~q\ & \sw[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|current_state.motion_button_pressed~q\,
	datab => \sw[3]~input_o\,
	combout => \inst_XY|Selector7~0_combout\);

\inst_XY|WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|WideOr1~0_combout\ = (\inst_XY|current_state.motion_button_pressed~q\) # (!\inst_XY|current_state.still_after_reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|current_state.motion_button_pressed~q\,
	datad => \inst_XY|current_state.still_after_reset~q\,
	combout => \inst_XY|WideOr1~0_combout\);

\inst_XY|Y_reg[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Y_reg\(3) = (\inst_XY|WideOr1~0_combout\ & (\inst_XY|Selector7~0_combout\)) # (!\inst_XY|WideOr1~0_combout\ & ((\inst_XY|Y_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|Selector7~0_combout\,
	datac => \inst_XY|Y_reg\(3),
	datad => \inst_XY|WideOr1~0_combout\,
	combout => \inst_XY|Y_reg\(3));

\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

\inst_XY|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Selector6~0_combout\ = (\inst_XY|current_state.motion_button_pressed~q\ & \sw[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|current_state.motion_button_pressed~q\,
	datab => \sw[2]~input_o\,
	combout => \inst_XY|Selector6~0_combout\);

\inst_XY|Y_reg[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Y_reg\(2) = (\inst_XY|WideOr1~0_combout\ & (\inst_XY|Selector6~0_combout\)) # (!\inst_XY|WideOr1~0_combout\ & ((\inst_XY|Y_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|Selector6~0_combout\,
	datac => \inst_XY|Y_reg\(2),
	datad => \inst_XY|WideOr1~0_combout\,
	combout => \inst_XY|Y_reg\(2));

\inst_counter_y|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counter_y|ud_bin_counter[0]~3_combout\ = \inst_counter_y|ud_bin_counter\(0) $ (\inst_XY|clk_en_y~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_counter_y|ud_bin_counter\(0),
	datad => \inst_XY|clk_en_y~combout\,
	combout => \inst_counter_y|ud_bin_counter[0]~3_combout\);

\inst_counter_y|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_counter_y|ud_bin_counter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_counter_y|ud_bin_counter\(0));

\inst_counter_y|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counter_y|ud_bin_counter[1]~5_cout\ = CARRY(\inst_counter_y|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counter_y|ud_bin_counter\(0),
	datad => VCC,
	cout => \inst_counter_y|ud_bin_counter[1]~5_cout\);

\inst_counter_y|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counter_y|ud_bin_counter[1]~6_combout\ = (\inst_counter_y|ud_bin_counter\(1) & ((\inst_counter_y|process_0~0_combout\ & (!\inst_counter_y|ud_bin_counter[1]~5_cout\)) # (!\inst_counter_y|process_0~0_combout\ & 
-- (\inst_counter_y|ud_bin_counter[1]~5_cout\ & VCC)))) # (!\inst_counter_y|ud_bin_counter\(1) & ((\inst_counter_y|process_0~0_combout\ & ((\inst_counter_y|ud_bin_counter[1]~5_cout\) # (GND))) # (!\inst_counter_y|process_0~0_combout\ & 
-- (!\inst_counter_y|ud_bin_counter[1]~5_cout\))))
-- \inst_counter_y|ud_bin_counter[1]~7\ = CARRY((\inst_counter_y|ud_bin_counter\(1) & (\inst_counter_y|process_0~0_combout\ & !\inst_counter_y|ud_bin_counter[1]~5_cout\)) # (!\inst_counter_y|ud_bin_counter\(1) & ((\inst_counter_y|process_0~0_combout\) # 
-- (!\inst_counter_y|ud_bin_counter[1]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counter_y|ud_bin_counter\(1),
	datab => \inst_counter_y|process_0~0_combout\,
	datad => VCC,
	cin => \inst_counter_y|ud_bin_counter[1]~5_cout\,
	combout => \inst_counter_y|ud_bin_counter[1]~6_combout\,
	cout => \inst_counter_y|ud_bin_counter[1]~7\);

\inst_counter_y|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_counter_y|ud_bin_counter[1]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst_XY|clk_en_y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_counter_y|ud_bin_counter\(1));

\inst_counter_y|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counter_y|ud_bin_counter[2]~8_combout\ = ((\inst_counter_y|ud_bin_counter\(2) $ (\inst_counter_y|process_0~0_combout\ $ (\inst_counter_y|ud_bin_counter[1]~7\)))) # (GND)
-- \inst_counter_y|ud_bin_counter[2]~9\ = CARRY((\inst_counter_y|ud_bin_counter\(2) & ((!\inst_counter_y|ud_bin_counter[1]~7\) # (!\inst_counter_y|process_0~0_combout\))) # (!\inst_counter_y|ud_bin_counter\(2) & (!\inst_counter_y|process_0~0_combout\ & 
-- !\inst_counter_y|ud_bin_counter[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counter_y|ud_bin_counter\(2),
	datab => \inst_counter_y|process_0~0_combout\,
	datad => VCC,
	cin => \inst_counter_y|ud_bin_counter[1]~7\,
	combout => \inst_counter_y|ud_bin_counter[2]~8_combout\,
	cout => \inst_counter_y|ud_bin_counter[2]~9\);

\inst_counter_y|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counter_y|ud_bin_counter[3]~10_combout\ = \inst_counter_y|ud_bin_counter\(3) $ (\inst_counter_y|process_0~0_combout\ $ (!\inst_counter_y|ud_bin_counter[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counter_y|ud_bin_counter\(3),
	datab => \inst_counter_y|process_0~0_combout\,
	cin => \inst_counter_y|ud_bin_counter[2]~9\,
	combout => \inst_counter_y|ud_bin_counter[3]~10_combout\);

\inst_counter_y|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_counter_y|ud_bin_counter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst_XY|clk_en_y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_counter_y|ud_bin_counter\(3));

\inst_comp_y|A_gt_B~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_y|A_gt_B~2_combout\ = (\inst_XY|Y_reg\(3) & ((\inst_XY|Y_reg\(2)) # ((!\inst_counter_y|ud_bin_counter\(3)) # (!\inst_counter_y|ud_bin_counter\(2))))) # (!\inst_XY|Y_reg\(3) & (!\inst_counter_y|ud_bin_counter\(3) & ((\inst_XY|Y_reg\(2)) # 
-- (!\inst_counter_y|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|Y_reg\(3),
	datab => \inst_XY|Y_reg\(2),
	datac => \inst_counter_y|ud_bin_counter\(2),
	datad => \inst_counter_y|ud_bin_counter\(3),
	combout => \inst_comp_y|A_gt_B~2_combout\);

\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

\inst_XY|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Selector5~0_combout\ = (\inst_XY|current_state.motion_button_pressed~q\ & \sw[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|current_state.motion_button_pressed~q\,
	datab => \sw[1]~input_o\,
	combout => \inst_XY|Selector5~0_combout\);

\inst_XY|Y_reg[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Y_reg\(1) = (\inst_XY|WideOr1~0_combout\ & (\inst_XY|Selector5~0_combout\)) # (!\inst_XY|WideOr1~0_combout\ & ((\inst_XY|Y_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|Selector5~0_combout\,
	datac => \inst_XY|Y_reg\(1),
	datad => \inst_XY|WideOr1~0_combout\,
	combout => \inst_XY|Y_reg\(1));

\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

\inst_XY|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Selector4~0_combout\ = (\sw[0]~input_o\ & \inst_XY|current_state.motion_button_pressed~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \inst_XY|current_state.motion_button_pressed~q\,
	combout => \inst_XY|Selector4~0_combout\);

\inst_XY|Y_reg[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Y_reg\(0) = (\inst_XY|WideOr1~0_combout\ & (\inst_XY|Selector4~0_combout\)) # (!\inst_XY|WideOr1~0_combout\ & ((\inst_XY|Y_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|Selector4~0_combout\,
	datac => \inst_XY|Y_reg\(0),
	datad => \inst_XY|WideOr1~0_combout\,
	combout => \inst_XY|Y_reg\(0));

\inst_comp_y|A_gt_B~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_y|A_gt_B~3_combout\ = (\inst_counter_y|ud_bin_counter\(0) & !\inst_XY|Y_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counter_y|ud_bin_counter\(0),
	datad => \inst_XY|Y_reg\(0),
	combout => \inst_comp_y|A_gt_B~3_combout\);

\inst_comp_y|A_gt_B~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_y|A_gt_B~4_combout\ = ((\inst_XY|Y_reg\(1) & ((!\inst_comp_y|A_gt_B~3_combout\) # (!\inst_counter_y|ud_bin_counter\(1)))) # (!\inst_XY|Y_reg\(1) & (!\inst_counter_y|ud_bin_counter\(1) & !\inst_comp_y|A_gt_B~3_combout\))) # 
-- (!\inst_comp_y|A_gt_B~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|Y_reg\(1),
	datab => \inst_counter_y|ud_bin_counter\(1),
	datac => \inst_comp_y|A_gt_B~3_combout\,
	datad => \inst_comp_y|A_gt_B~0_combout\,
	combout => \inst_comp_y|A_gt_B~4_combout\);

\inst_XY|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Selector2~0_combout\ = (\inst_XY|current_state.motion_button_pressed~q\ & !\pb[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|current_state.motion_button_pressed~q\,
	datad => \pb[2]~input_o\,
	combout => \inst_XY|Selector2~0_combout\);

\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

\inst_XY|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Selector11~0_combout\ = (\inst_XY|current_state.motion_button_pressed~q\ & \sw[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|current_state.motion_button_pressed~q\,
	datab => \sw[7]~input_o\,
	combout => \inst_XY|Selector11~0_combout\);

\inst_XY|X_reg[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|X_reg\(3) = (\inst_XY|WideOr1~0_combout\ & (\inst_XY|Selector11~0_combout\)) # (!\inst_XY|WideOr1~0_combout\ & ((\inst_XY|X_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|Selector11~0_combout\,
	datac => \inst_XY|X_reg\(3),
	datad => \inst_XY|WideOr1~0_combout\,
	combout => \inst_XY|X_reg\(3));

\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

\inst_XY|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Selector10~0_combout\ = (\inst_XY|current_state.motion_button_pressed~q\ & \sw[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|current_state.motion_button_pressed~q\,
	datab => \sw[6]~input_o\,
	combout => \inst_XY|Selector10~0_combout\);

\inst_XY|X_reg[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|X_reg\(2) = (\inst_XY|WideOr1~0_combout\ & (\inst_XY|Selector10~0_combout\)) # (!\inst_XY|WideOr1~0_combout\ & ((\inst_XY|X_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|Selector10~0_combout\,
	datac => \inst_XY|X_reg\(2),
	datad => \inst_XY|WideOr1~0_combout\,
	combout => \inst_XY|X_reg\(2));

\inst_counter_x|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counter_x|ud_bin_counter[0]~3_combout\ = \inst_counter_x|ud_bin_counter\(0) $ (\inst_XY|clk_en_x~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_counter_x|ud_bin_counter\(0),
	datad => \inst_XY|clk_en_x~combout\,
	combout => \inst_counter_x|ud_bin_counter[0]~3_combout\);

\inst_counter_x|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_counter_x|ud_bin_counter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_counter_x|ud_bin_counter\(0));

\inst_counter_x|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counter_x|ud_bin_counter[1]~5_cout\ = CARRY(\inst_counter_x|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counter_x|ud_bin_counter\(0),
	datad => VCC,
	cout => \inst_counter_x|ud_bin_counter[1]~5_cout\);

\inst_counter_x|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counter_x|ud_bin_counter[1]~6_combout\ = (\inst_counter_x|ud_bin_counter\(1) & ((\inst_counter_x|process_0~0_combout\ & (!\inst_counter_x|ud_bin_counter[1]~5_cout\)) # (!\inst_counter_x|process_0~0_combout\ & 
-- (\inst_counter_x|ud_bin_counter[1]~5_cout\ & VCC)))) # (!\inst_counter_x|ud_bin_counter\(1) & ((\inst_counter_x|process_0~0_combout\ & ((\inst_counter_x|ud_bin_counter[1]~5_cout\) # (GND))) # (!\inst_counter_x|process_0~0_combout\ & 
-- (!\inst_counter_x|ud_bin_counter[1]~5_cout\))))
-- \inst_counter_x|ud_bin_counter[1]~7\ = CARRY((\inst_counter_x|ud_bin_counter\(1) & (\inst_counter_x|process_0~0_combout\ & !\inst_counter_x|ud_bin_counter[1]~5_cout\)) # (!\inst_counter_x|ud_bin_counter\(1) & ((\inst_counter_x|process_0~0_combout\) # 
-- (!\inst_counter_x|ud_bin_counter[1]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counter_x|ud_bin_counter\(1),
	datab => \inst_counter_x|process_0~0_combout\,
	datad => VCC,
	cin => \inst_counter_x|ud_bin_counter[1]~5_cout\,
	combout => \inst_counter_x|ud_bin_counter[1]~6_combout\,
	cout => \inst_counter_x|ud_bin_counter[1]~7\);

\inst_counter_x|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_counter_x|ud_bin_counter[1]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst_XY|clk_en_x~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_counter_x|ud_bin_counter\(1));

\inst_counter_x|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counter_x|ud_bin_counter[2]~8_combout\ = ((\inst_counter_x|ud_bin_counter\(2) $ (\inst_counter_x|process_0~0_combout\ $ (\inst_counter_x|ud_bin_counter[1]~7\)))) # (GND)
-- \inst_counter_x|ud_bin_counter[2]~9\ = CARRY((\inst_counter_x|ud_bin_counter\(2) & ((!\inst_counter_x|ud_bin_counter[1]~7\) # (!\inst_counter_x|process_0~0_combout\))) # (!\inst_counter_x|ud_bin_counter\(2) & (!\inst_counter_x|process_0~0_combout\ & 
-- !\inst_counter_x|ud_bin_counter[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counter_x|ud_bin_counter\(2),
	datab => \inst_counter_x|process_0~0_combout\,
	datad => VCC,
	cin => \inst_counter_x|ud_bin_counter[1]~7\,
	combout => \inst_counter_x|ud_bin_counter[2]~8_combout\,
	cout => \inst_counter_x|ud_bin_counter[2]~9\);

\inst_counter_x|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counter_x|ud_bin_counter[3]~10_combout\ = \inst_counter_x|ud_bin_counter\(3) $ (\inst_counter_x|process_0~0_combout\ $ (!\inst_counter_x|ud_bin_counter[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counter_x|ud_bin_counter\(3),
	datab => \inst_counter_x|process_0~0_combout\,
	cin => \inst_counter_x|ud_bin_counter[2]~9\,
	combout => \inst_counter_x|ud_bin_counter[3]~10_combout\);

\inst_counter_x|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_counter_x|ud_bin_counter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst_XY|clk_en_x~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_counter_x|ud_bin_counter\(3));

\inst_comp_x|A_gt_B~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_x|A_gt_B~2_combout\ = (\inst_XY|X_reg\(3) & ((\inst_XY|X_reg\(2)) # ((!\inst_counter_x|ud_bin_counter\(3)) # (!\inst_counter_x|ud_bin_counter\(2))))) # (!\inst_XY|X_reg\(3) & (!\inst_counter_x|ud_bin_counter\(3) & ((\inst_XY|X_reg\(2)) # 
-- (!\inst_counter_x|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|X_reg\(3),
	datab => \inst_XY|X_reg\(2),
	datac => \inst_counter_x|ud_bin_counter\(2),
	datad => \inst_counter_x|ud_bin_counter\(3),
	combout => \inst_comp_x|A_gt_B~2_combout\);

\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

\inst_XY|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Selector9~0_combout\ = (\inst_XY|current_state.motion_button_pressed~q\ & \sw[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|current_state.motion_button_pressed~q\,
	datab => \sw[5]~input_o\,
	combout => \inst_XY|Selector9~0_combout\);

\inst_XY|X_reg[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|X_reg\(1) = (\inst_XY|WideOr1~0_combout\ & (\inst_XY|Selector9~0_combout\)) # (!\inst_XY|WideOr1~0_combout\ & ((\inst_XY|X_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|Selector9~0_combout\,
	datac => \inst_XY|X_reg\(1),
	datad => \inst_XY|WideOr1~0_combout\,
	combout => \inst_XY|X_reg\(1));

\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

\inst_XY|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Selector8~0_combout\ = (\inst_XY|current_state.motion_button_pressed~q\ & \sw[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|current_state.motion_button_pressed~q\,
	datab => \sw[4]~input_o\,
	combout => \inst_XY|Selector8~0_combout\);

\inst_XY|X_reg[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|X_reg\(0) = (\inst_XY|WideOr1~0_combout\ & (\inst_XY|Selector8~0_combout\)) # (!\inst_XY|WideOr1~0_combout\ & ((\inst_XY|X_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|Selector8~0_combout\,
	datac => \inst_XY|X_reg\(0),
	datad => \inst_XY|WideOr1~0_combout\,
	combout => \inst_XY|X_reg\(0));

\inst_comp_x|A_gt_B~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_x|A_gt_B~3_combout\ = (\inst_counter_x|ud_bin_counter\(0) & !\inst_XY|X_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counter_x|ud_bin_counter\(0),
	datad => \inst_XY|X_reg\(0),
	combout => \inst_comp_x|A_gt_B~3_combout\);

\inst_comp_x|A_gt_B~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_x|A_gt_B~4_combout\ = ((\inst_XY|X_reg\(1) & ((!\inst_comp_x|A_gt_B~3_combout\) # (!\inst_counter_x|ud_bin_counter\(1)))) # (!\inst_XY|X_reg\(1) & (!\inst_counter_x|ud_bin_counter\(1) & !\inst_comp_x|A_gt_B~3_combout\))) # 
-- (!\inst_comp_x|A_gt_B~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|X_reg\(1),
	datab => \inst_counter_x|ud_bin_counter\(1),
	datac => \inst_comp_x|A_gt_B~3_combout\,
	datad => \inst_comp_x|A_gt_B~0_combout\,
	combout => \inst_comp_x|A_gt_B~4_combout\);

\inst_comp_x|A_lt_B~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_x|A_lt_B~0_combout\ = (\inst_XY|X_reg\(3) & (((\inst_XY|X_reg\(2) & !\inst_counter_x|ud_bin_counter\(2))) # (!\inst_counter_x|ud_bin_counter\(3)))) # (!\inst_XY|X_reg\(3) & (\inst_XY|X_reg\(2) & (!\inst_counter_x|ud_bin_counter\(2) & 
-- !\inst_counter_x|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|X_reg\(3),
	datab => \inst_XY|X_reg\(2),
	datac => \inst_counter_x|ud_bin_counter\(2),
	datad => \inst_counter_x|ud_bin_counter\(3),
	combout => \inst_comp_x|A_lt_B~0_combout\);

\inst_comp_x|A_lt_B~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_x|A_lt_B~1_combout\ = (\inst_XY|X_reg\(1) & (((\inst_XY|X_reg\(0) & !\inst_counter_x|ud_bin_counter\(0))) # (!\inst_counter_x|ud_bin_counter\(1)))) # (!\inst_XY|X_reg\(1) & (\inst_XY|X_reg\(0) & (!\inst_counter_x|ud_bin_counter\(0) & 
-- !\inst_counter_x|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|X_reg\(1),
	datab => \inst_XY|X_reg\(0),
	datac => \inst_counter_x|ud_bin_counter\(0),
	datad => \inst_counter_x|ud_bin_counter\(1),
	combout => \inst_comp_x|A_lt_B~1_combout\);

\inst_comp_x|A_lt_B~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_x|A_lt_B~2_combout\ = (\inst_comp_x|A_lt_B~0_combout\) # ((\inst_comp_x|A_gt_B~0_combout\ & \inst_comp_x|A_lt_B~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_comp_x|A_lt_B~0_combout\,
	datab => \inst_comp_x|A_gt_B~0_combout\,
	datac => \inst_comp_x|A_lt_B~1_combout\,
	combout => \inst_comp_x|A_lt_B~2_combout\);

\inst_XY|comb~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|comb~9_combout\ = (\inst_XY|current_state.motion_button_released_moving~q\ & (((\inst_comp_x|A_lt_B~2_combout\) # (!\inst_comp_x|A_gt_B~4_combout\)) # (!\inst_comp_x|A_gt_B~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_comp_x|A_gt_B~2_combout\,
	datab => \inst_comp_x|A_gt_B~4_combout\,
	datac => \inst_XY|current_state.motion_button_released_moving~q\,
	datad => \inst_comp_x|A_lt_B~2_combout\,
	combout => \inst_XY|comb~9_combout\);

\inst_comp_x|A_gt_B~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_x|A_gt_B~5_combout\ = (\inst_comp_x|A_gt_B~2_combout\ & \inst_comp_x|A_gt_B~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_comp_x|A_gt_B~2_combout\,
	datab => \inst_comp_x|A_gt_B~4_combout\,
	combout => \inst_comp_x|A_gt_B~5_combout\);

\inst_XY|comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|comb~6_combout\ = ((\inst_comp_x|A_gt_B~1_combout\ & (\inst_comp_x|A_gt_B~5_combout\ & !\inst_comp_x|A_lt_B~2_combout\))) # (!\inst_XY|current_state.motion_button_released_moving~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_comp_x|A_gt_B~1_combout\,
	datab => \inst_comp_x|A_gt_B~5_combout\,
	datac => \inst_comp_x|A_lt_B~2_combout\,
	datad => \inst_XY|current_state.motion_button_released_moving~q\,
	combout => \inst_XY|comb~6_combout\);

\inst_XY|clk_en_x\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|clk_en_x~combout\ = (!\inst_XY|comb~6_combout\ & ((\inst_XY|clk_en_x~combout\) # (\inst_XY|comb~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|clk_en_x~combout\,
	datac => \inst_XY|comb~9_combout\,
	datad => \inst_XY|comb~6_combout\,
	combout => \inst_XY|clk_en_x~combout\);

\inst_XY|up_down_x~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|up_down_x~0_combout\ = (\inst_XY|current_state.motion_button_released_moving~q\ & (\inst_comp_x|A_gt_B~2_combout\ & (\inst_comp_x|A_gt_B~4_combout\ & \inst_comp_x|A_lt_B~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|current_state.motion_button_released_moving~q\,
	datab => \inst_comp_x|A_gt_B~2_combout\,
	datac => \inst_comp_x|A_gt_B~4_combout\,
	datad => \inst_comp_x|A_lt_B~2_combout\,
	combout => \inst_XY|up_down_x~0_combout\);

\inst_XY|comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|comb~7_combout\ = (((\inst_comp_x|A_gt_B~1_combout\ & !\inst_comp_x|A_lt_B~2_combout\)) # (!\inst_comp_x|A_gt_B~5_combout\)) # (!\inst_XY|current_state.motion_button_released_moving~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_comp_x|A_gt_B~1_combout\,
	datab => \inst_comp_x|A_lt_B~2_combout\,
	datac => \inst_XY|current_state.motion_button_released_moving~q\,
	datad => \inst_comp_x|A_gt_B~5_combout\,
	combout => \inst_XY|comb~7_combout\);

\inst_XY|up_down_x\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|up_down_x~combout\ = (!\inst_XY|comb~7_combout\ & ((\inst_XY|up_down_x~combout\) # (\inst_XY|up_down_x~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|up_down_x~combout\,
	datac => \inst_XY|up_down_x~0_combout\,
	datad => \inst_XY|comb~7_combout\,
	combout => \inst_XY|up_down_x~combout\);

\inst_counter_x|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counter_x|process_0~0_combout\ = (\inst_XY|clk_en_x~combout\ & \inst_XY|up_down_x~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|clk_en_x~combout\,
	datab => \inst_XY|up_down_x~combout\,
	combout => \inst_counter_x|process_0~0_combout\);

\inst_counter_x|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_counter_x|ud_bin_counter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst_XY|clk_en_x~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_counter_x|ud_bin_counter\(2));

\inst_comp_x|A_gt_B~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_x|A_gt_B~0_combout\ = (\inst_counter_x|ud_bin_counter\(2) & (\inst_XY|X_reg\(2) & (\inst_counter_x|ud_bin_counter\(3) $ (!\inst_XY|X_reg\(3))))) # (!\inst_counter_x|ud_bin_counter\(2) & (!\inst_XY|X_reg\(2) & (\inst_counter_x|ud_bin_counter\(3) 
-- $ (!\inst_XY|X_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counter_x|ud_bin_counter\(2),
	datab => \inst_counter_x|ud_bin_counter\(3),
	datac => \inst_XY|X_reg\(3),
	datad => \inst_XY|X_reg\(2),
	combout => \inst_comp_x|A_gt_B~0_combout\);

\inst_comp_x|inst4|A_eq_B~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_x|inst4|A_eq_B~0_combout\ = \inst_counter_x|ud_bin_counter\(0) $ (\inst_XY|X_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_counter_x|ud_bin_counter\(0),
	datad => \inst_XY|X_reg\(0),
	combout => \inst_comp_x|inst4|A_eq_B~0_combout\);

\inst_comp_x|A_gt_B~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_x|A_gt_B~1_combout\ = (\inst_comp_x|A_gt_B~0_combout\ & (!\inst_comp_x|inst4|A_eq_B~0_combout\ & (\inst_counter_x|ud_bin_counter\(1) $ (!\inst_XY|X_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_comp_x|A_gt_B~0_combout\,
	datab => \inst_counter_x|ud_bin_counter\(1),
	datac => \inst_XY|X_reg\(1),
	datad => \inst_comp_x|inst4|A_eq_B~0_combout\,
	combout => \inst_comp_x|A_gt_B~1_combout\);

\inst_XY|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Selector2~1_combout\ = (\inst_XY|Selector2~0_combout\) # ((\inst_XY|current_state.motion_button_released_moving~q\ & ((!\inst_comp_x|A_gt_B~1_combout\) # (!\inst_comp_y|A_gt_B~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|Selector2~0_combout\,
	datab => \inst_XY|current_state.motion_button_released_moving~q\,
	datac => \inst_comp_y|A_gt_B~1_combout\,
	datad => \inst_comp_x|A_gt_B~1_combout\,
	combout => \inst_XY|Selector2~1_combout\);

\inst_XY|current_state.motion_button_released_moving\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_XY|Selector2~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_XY|current_state.motion_button_released_moving~q\);

\inst_comp_y|A_lt_B~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_y|A_lt_B~0_combout\ = (\inst_XY|Y_reg\(3) & (((\inst_XY|Y_reg\(2) & !\inst_counter_y|ud_bin_counter\(2))) # (!\inst_counter_y|ud_bin_counter\(3)))) # (!\inst_XY|Y_reg\(3) & (\inst_XY|Y_reg\(2) & (!\inst_counter_y|ud_bin_counter\(2) & 
-- !\inst_counter_y|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|Y_reg\(3),
	datab => \inst_XY|Y_reg\(2),
	datac => \inst_counter_y|ud_bin_counter\(2),
	datad => \inst_counter_y|ud_bin_counter\(3),
	combout => \inst_comp_y|A_lt_B~0_combout\);

\inst_comp_y|A_lt_B~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_y|A_lt_B~1_combout\ = (\inst_XY|Y_reg\(1) & (((\inst_XY|Y_reg\(0) & !\inst_counter_y|ud_bin_counter\(0))) # (!\inst_counter_y|ud_bin_counter\(1)))) # (!\inst_XY|Y_reg\(1) & (\inst_XY|Y_reg\(0) & (!\inst_counter_y|ud_bin_counter\(0) & 
-- !\inst_counter_y|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|Y_reg\(1),
	datab => \inst_XY|Y_reg\(0),
	datac => \inst_counter_y|ud_bin_counter\(0),
	datad => \inst_counter_y|ud_bin_counter\(1),
	combout => \inst_comp_y|A_lt_B~1_combout\);

\inst_comp_y|A_lt_B~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_y|A_lt_B~2_combout\ = (\inst_comp_y|A_lt_B~0_combout\) # ((\inst_comp_y|A_gt_B~0_combout\ & \inst_comp_y|A_lt_B~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_comp_y|A_lt_B~0_combout\,
	datab => \inst_comp_y|A_gt_B~0_combout\,
	datac => \inst_comp_y|A_lt_B~1_combout\,
	combout => \inst_comp_y|A_lt_B~2_combout\);

\inst_XY|comb~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|comb~8_combout\ = (\inst_XY|current_state.motion_button_released_moving~q\ & (((\inst_comp_y|A_lt_B~2_combout\) # (!\inst_comp_y|A_gt_B~4_combout\)) # (!\inst_comp_y|A_gt_B~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_comp_y|A_gt_B~2_combout\,
	datab => \inst_comp_y|A_gt_B~4_combout\,
	datac => \inst_XY|current_state.motion_button_released_moving~q\,
	datad => \inst_comp_y|A_lt_B~2_combout\,
	combout => \inst_XY|comb~8_combout\);

\inst_comp_y|A_gt_B~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_y|A_gt_B~5_combout\ = (\inst_comp_y|A_gt_B~2_combout\ & \inst_comp_y|A_gt_B~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_comp_y|A_gt_B~2_combout\,
	datab => \inst_comp_y|A_gt_B~4_combout\,
	combout => \inst_comp_y|A_gt_B~5_combout\);

\inst_XY|comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|comb~4_combout\ = ((\inst_comp_y|A_gt_B~1_combout\ & (\inst_comp_y|A_gt_B~5_combout\ & !\inst_comp_y|A_lt_B~2_combout\))) # (!\inst_XY|current_state.motion_button_released_moving~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_comp_y|A_gt_B~1_combout\,
	datab => \inst_comp_y|A_gt_B~5_combout\,
	datac => \inst_comp_y|A_lt_B~2_combout\,
	datad => \inst_XY|current_state.motion_button_released_moving~q\,
	combout => \inst_XY|comb~4_combout\);

\inst_XY|clk_en_y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|clk_en_y~combout\ = (!\inst_XY|comb~4_combout\ & ((\inst_XY|clk_en_y~combout\) # (\inst_XY|comb~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|clk_en_y~combout\,
	datac => \inst_XY|comb~8_combout\,
	datad => \inst_XY|comb~4_combout\,
	combout => \inst_XY|clk_en_y~combout\);

\inst_XY|up_down_y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|up_down_y~0_combout\ = (\inst_XY|current_state.motion_button_released_moving~q\ & (\inst_comp_y|A_gt_B~2_combout\ & (\inst_comp_y|A_gt_B~4_combout\ & \inst_comp_y|A_lt_B~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|current_state.motion_button_released_moving~q\,
	datab => \inst_comp_y|A_gt_B~2_combout\,
	datac => \inst_comp_y|A_gt_B~4_combout\,
	datad => \inst_comp_y|A_lt_B~2_combout\,
	combout => \inst_XY|up_down_y~0_combout\);

\inst_XY|comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|comb~5_combout\ = (((\inst_comp_y|A_gt_B~1_combout\ & !\inst_comp_y|A_lt_B~2_combout\)) # (!\inst_comp_y|A_gt_B~5_combout\)) # (!\inst_XY|current_state.motion_button_released_moving~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_comp_y|A_gt_B~1_combout\,
	datab => \inst_comp_y|A_lt_B~2_combout\,
	datac => \inst_XY|current_state.motion_button_released_moving~q\,
	datad => \inst_comp_y|A_gt_B~5_combout\,
	combout => \inst_XY|comb~5_combout\);

\inst_XY|up_down_y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|up_down_y~combout\ = (!\inst_XY|comb~5_combout\ & ((\inst_XY|up_down_y~combout\) # (\inst_XY|up_down_y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|up_down_y~combout\,
	datac => \inst_XY|up_down_y~0_combout\,
	datad => \inst_XY|comb~5_combout\,
	combout => \inst_XY|up_down_y~combout\);

\inst_counter_y|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counter_y|process_0~0_combout\ = (\inst_XY|clk_en_y~combout\ & \inst_XY|up_down_y~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|clk_en_y~combout\,
	datab => \inst_XY|up_down_y~combout\,
	combout => \inst_counter_y|process_0~0_combout\);

\inst_counter_y|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_counter_y|ud_bin_counter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst_XY|clk_en_y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_counter_y|ud_bin_counter\(2));

\inst_comp_y|A_gt_B~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_y|A_gt_B~0_combout\ = (\inst_counter_y|ud_bin_counter\(2) & (\inst_XY|Y_reg\(2) & (\inst_counter_y|ud_bin_counter\(3) $ (!\inst_XY|Y_reg\(3))))) # (!\inst_counter_y|ud_bin_counter\(2) & (!\inst_XY|Y_reg\(2) & (\inst_counter_y|ud_bin_counter\(3) 
-- $ (!\inst_XY|Y_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counter_y|ud_bin_counter\(2),
	datab => \inst_counter_y|ud_bin_counter\(3),
	datac => \inst_XY|Y_reg\(3),
	datad => \inst_XY|Y_reg\(2),
	combout => \inst_comp_y|A_gt_B~0_combout\);

\inst_comp_y|inst4|A_eq_B~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_y|inst4|A_eq_B~0_combout\ = \inst_counter_y|ud_bin_counter\(0) $ (\inst_XY|Y_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_counter_y|ud_bin_counter\(0),
	datad => \inst_XY|Y_reg\(0),
	combout => \inst_comp_y|inst4|A_eq_B~0_combout\);

\inst_comp_y|A_gt_B~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_comp_y|A_gt_B~1_combout\ = (\inst_comp_y|A_gt_B~0_combout\ & (!\inst_comp_y|inst4|A_eq_B~0_combout\ & (\inst_counter_y|ud_bin_counter\(1) $ (!\inst_XY|Y_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_comp_y|A_gt_B~0_combout\,
	datab => \inst_counter_y|ud_bin_counter\(1),
	datac => \inst_XY|Y_reg\(1),
	datad => \inst_comp_y|inst4|A_eq_B~0_combout\,
	combout => \inst_comp_y|A_gt_B~1_combout\);

\inst_XY|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Selector0~1_combout\ = (\inst_XY|Selector0~0_combout\) # ((\inst_comp_y|A_gt_B~1_combout\ & (\inst_comp_x|A_gt_B~1_combout\ & \inst_XY|current_state.motion_button_released_moving~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|Selector0~0_combout\,
	datab => \inst_comp_y|A_gt_B~1_combout\,
	datac => \inst_comp_x|A_gt_B~1_combout\,
	datad => \inst_XY|current_state.motion_button_released_moving~q\,
	combout => \inst_XY|Selector0~1_combout\);

\inst_XY|current_state.still\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_XY|Selector0~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_XY|current_state.still~q\);

\pb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

\inst_extender|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector0~0_combout\ = (!\inst_extender|current_state.retracted~q\ & (((\inst_XY|current_state.still_after_reset~q\ & !\inst_XY|current_state.still~q\)) # (!\pb[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|current_state.still_after_reset~q\,
	datab => \inst_XY|current_state.still~q\,
	datac => \pb[1]~input_o\,
	datad => \inst_extender|current_state.retracted~q\,
	combout => \inst_extender|Selector0~0_combout\);

\inst_extender|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector1~0_combout\ = (\pb[1]~input_o\ & ((\inst_extender|current_state.button_press_1~q\) # ((\inst_extender|Transition_Section~0_combout\ & !\inst_extender|current_state.retracted~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \inst_extender|current_state.button_press_1~q\,
	datac => \inst_extender|Transition_Section~0_combout\,
	datad => \inst_extender|current_state.retracted~q\,
	combout => \inst_extender|Selector1~0_combout\);

\inst_extender|current_state.button_press_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_extender|Selector1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_extender|current_state.button_press_1~q\);

\inst_shift|sreg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_shift|sreg~3_combout\ = (\inst_shift|sreg\(2)) # (\inst_extender|current_state.extending~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_shift|sreg\(2),
	datab => \inst_extender|current_state.extending~q\,
	combout => \inst_shift|sreg~3_combout\);

\inst_extender|clk_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|clk_en~combout\ = (\inst_extender|current_state.extending~q\) # (\inst_extender|current_state.retracting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_extender|current_state.extending~q\,
	datab => \inst_extender|current_state.retracting~q\,
	combout => \inst_extender|clk_en~combout\);

\inst_shift|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_shift|sreg~3_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst_extender|clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_shift|sreg\(3));

\inst_shift|sreg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_shift|sreg~2_combout\ = (\inst_extender|current_state.extending~q\ & (\inst_shift|sreg\(3))) # (!\inst_extender|current_state.extending~q\ & ((\inst_shift|sreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_shift|sreg\(3),
	datab => \inst_shift|sreg\(1),
	datad => \inst_extender|current_state.extending~q\,
	combout => \inst_shift|sreg~2_combout\);

\inst_shift|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_shift|sreg~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst_extender|clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_shift|sreg\(2));

\inst_shift|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_shift|sreg~1_combout\ = (\inst_extender|current_state.extending~q\ & (\inst_shift|sreg\(2))) # (!\inst_extender|current_state.extending~q\ & ((\inst_shift|sreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_shift|sreg\(2),
	datab => \inst_shift|sreg\(0),
	datad => \inst_extender|current_state.extending~q\,
	combout => \inst_shift|sreg~1_combout\);

\inst_shift|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_shift|sreg~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst_extender|clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_shift|sreg\(1));

\inst_shift|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_shift|sreg~0_combout\ = (\inst_shift|sreg\(1) & \inst_extender|current_state.extending~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_shift|sreg\(1),
	datab => \inst_extender|current_state.extending~q\,
	combout => \inst_shift|sreg~0_combout\);

\inst_shift|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_shift|sreg~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst_extender|clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_shift|sreg\(0));

\inst_extender|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector3~0_combout\ = (\inst_shift|sreg\(0) & (\inst_shift|sreg\(1) & (\inst_shift|sreg\(2) & \inst_shift|sreg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_shift|sreg\(0),
	datab => \inst_shift|sreg\(1),
	datac => \inst_shift|sreg\(2),
	datad => \inst_shift|sreg\(3),
	combout => \inst_extender|Selector3~0_combout\);

\inst_extender|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector2~0_combout\ = (\inst_extender|current_state.button_press_1~q\ & (((\inst_extender|current_state.extending~q\ & !\inst_extender|Selector3~0_combout\)) # (!\pb[1]~input_o\))) # (!\inst_extender|current_state.button_press_1~q\ & 
-- (\inst_extender|current_state.extending~q\ & ((!\inst_extender|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_extender|current_state.button_press_1~q\,
	datab => \inst_extender|current_state.extending~q\,
	datac => \pb[1]~input_o\,
	datad => \inst_extender|Selector3~0_combout\,
	combout => \inst_extender|Selector2~0_combout\);

\inst_extender|current_state.extending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_extender|Selector2~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_extender|current_state.extending~q\);

\inst_extender|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector3~1_combout\ = (\inst_extender|current_state.extending~q\ & ((\inst_extender|Selector3~0_combout\) # ((\inst_extender|current_state.extended~q\ & !\pb[1]~input_o\)))) # (!\inst_extender|current_state.extending~q\ & 
-- (((\inst_extender|current_state.extended~q\ & !\pb[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_extender|current_state.extending~q\,
	datab => \inst_extender|Selector3~0_combout\,
	datac => \inst_extender|current_state.extended~q\,
	datad => \pb[1]~input_o\,
	combout => \inst_extender|Selector3~1_combout\);

\inst_extender|current_state.extended\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_extender|Selector3~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_extender|current_state.extended~q\);

\inst_extender|next_state.button_press_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|next_state.button_press_2~0_combout\ = (\pb[1]~input_o\ & ((\inst_extender|current_state.extended~q\) # (\inst_extender|current_state.button_press_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \inst_extender|current_state.extended~q\,
	datac => \inst_extender|current_state.button_press_2~q\,
	combout => \inst_extender|next_state.button_press_2~0_combout\);

\inst_extender|current_state.button_press_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_extender|next_state.button_press_2~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_extender|current_state.button_press_2~q\);

\inst_extender|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector0~1_combout\ = (!\inst_shift|sreg\(0) & (!\inst_shift|sreg\(1) & (!\inst_shift|sreg\(2) & !\inst_shift|sreg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_shift|sreg\(0),
	datab => \inst_shift|sreg\(1),
	datac => \inst_shift|sreg\(2),
	datad => \inst_shift|sreg\(3),
	combout => \inst_extender|Selector0~1_combout\);

\inst_extender|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector4~0_combout\ = (\inst_extender|current_state.retracting~q\ & (((\inst_extender|current_state.button_press_2~q\ & !\pb[1]~input_o\)) # (!\inst_extender|Selector0~1_combout\))) # (!\inst_extender|current_state.retracting~q\ & 
-- (\inst_extender|current_state.button_press_2~q\ & ((!\pb[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_extender|current_state.retracting~q\,
	datab => \inst_extender|current_state.button_press_2~q\,
	datac => \inst_extender|Selector0~1_combout\,
	datad => \pb[1]~input_o\,
	combout => \inst_extender|Selector4~0_combout\);

\inst_extender|current_state.retracting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_extender|Selector4~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_extender|current_state.retracting~q\);

\inst_extender|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector0~2_combout\ = (!\inst_extender|Selector0~0_combout\ & ((!\inst_extender|Selector0~1_combout\) # (!\inst_extender|current_state.retracting~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_extender|Selector0~0_combout\,
	datab => \inst_extender|current_state.retracting~q\,
	datac => \inst_extender|Selector0~1_combout\,
	combout => \inst_extender|Selector0~2_combout\);

\inst_extender|current_state.retracted\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_extender|Selector0~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_extender|current_state.retracted~q\);

\inst_XY|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Selector3~0_combout\ = (\inst_extender|current_state.retracted~q\ & !\inst_extender|current_state.button_press_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_extender|current_state.retracted~q\,
	datad => \inst_extender|current_state.button_press_1~q\,
	combout => \inst_XY|Selector3~0_combout\);

\inst_XY|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Selector3~1_combout\ = (\inst_XY|Selector3~0_combout\ & ((\inst_XY|current_state.motion_attempted_error_state~q\) # ((\pb[2]~input_o\ & \inst_extender|Transition_Section~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|Selector3~0_combout\,
	datab => \inst_XY|current_state.motion_attempted_error_state~q\,
	datac => \pb[2]~input_o\,
	datad => \inst_extender|Transition_Section~0_combout\,
	combout => \inst_XY|Selector3~1_combout\);

\inst_XY|current_state.motion_attempted_error_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_XY|Selector3~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_XY|current_state.motion_attempted_error_state~q\);

\pb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

\inst_grappler|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_grappler|Selector2~0_combout\ = (\inst_grappler|current_state.grappler_on_state~q\ & (((!\pb[0]~input_o\) # (!\inst_extender|current_state.extended~q\)))) # (!\inst_grappler|current_state.grappler_on_state~q\ & 
-- (\inst_grappler|current_state.button_press_1~q\ & ((!\pb[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_grappler|current_state.grappler_on_state~q\,
	datab => \inst_grappler|current_state.button_press_1~q\,
	datac => \inst_extender|current_state.extended~q\,
	datad => \pb[0]~input_o\,
	combout => \inst_grappler|Selector2~0_combout\);

\inst_grappler|current_state.grappler_on_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_grappler|Selector2~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_grappler|current_state.grappler_on_state~q\);

\inst_grappler|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_grappler|Selector3~0_combout\ = (\pb[0]~input_o\ & ((\inst_grappler|current_state.button_press_2~q\) # ((\inst_extender|current_state.extended~q\ & \inst_grappler|current_state.grappler_on_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \inst_grappler|current_state.button_press_2~q\,
	datac => \inst_extender|current_state.extended~q\,
	datad => \inst_grappler|current_state.grappler_on_state~q\,
	combout => \inst_grappler|Selector3~0_combout\);

\inst_grappler|current_state.button_press_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_grappler|Selector3~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_grappler|current_state.button_press_2~q\);

\inst_grappler|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_grappler|Selector0~0_combout\ = (\inst_grappler|current_state.grappler_off~q\ & (((\pb[0]~input_o\)) # (!\inst_grappler|current_state.button_press_2~q\))) # (!\inst_grappler|current_state.grappler_off~q\ & (((\inst_extender|current_state.extended~q\ 
-- & \pb[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_grappler|current_state.button_press_2~q\,
	datab => \inst_extender|current_state.extended~q\,
	datac => \inst_grappler|current_state.grappler_off~q\,
	datad => \pb[0]~input_o\,
	combout => \inst_grappler|Selector0~0_combout\);

\inst_grappler|current_state.grappler_off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_grappler|Selector0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_grappler|current_state.grappler_off~q\);

\inst_grappler|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_grappler|Selector1~0_combout\ = (\pb[0]~input_o\ & ((\inst_grappler|current_state.button_press_1~q\) # ((\inst_extender|current_state.extended~q\ & !\inst_grappler|current_state.grappler_off~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \inst_grappler|current_state.button_press_1~q\,
	datac => \inst_extender|current_state.extended~q\,
	datad => \inst_grappler|current_state.grappler_off~q\,
	combout => \inst_grappler|Selector1~0_combout\);

\inst_grappler|current_state.button_press_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_grappler|Selector1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_grappler|current_state.button_press_1~q\);

\inst_grappler|grappler_on~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_grappler|grappler_on~0_combout\ = (\inst_grappler|current_state.button_press_1~q\) # (!\inst_grappler|current_state.grappler_off~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_grappler|current_state.button_press_1~q\,
	datad => \inst_grappler|current_state.grappler_off~q\,
	combout => \inst_grappler|grappler_on~0_combout\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_leds(8) <= \leds[8]~output_o\;

ww_leds(9) <= \leds[9]~output_o\;

ww_leds(10) <= \leds[10]~output_o\;

ww_leds(11) <= \leds[11]~output_o\;

ww_leds(12) <= \leds[12]~output_o\;

ww_leds(13) <= \leds[13]~output_o\;

ww_leds(14) <= \leds[14]~output_o\;

ww_leds(15) <= \leds[15]~output_o\;

ww_leds(16) <= \leds[16]~output_o\;

ww_leds(17) <= \leds[17]~output_o\;

ww_leds(18) <= \leds[18]~output_o\;

ww_leds(19) <= \leds[19]~output_o\;

ww_leds(20) <= \leds[20]~output_o\;

ww_leds(21) <= \leds[21]~output_o\;
END structure;


