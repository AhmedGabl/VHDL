-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "01/06/2021 21:07:21"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pwm IS
    PORT (
	clk : IN std_logic;
	w : IN std_logic_vector(3 DOWNTO 0);
	out_pulse : OUT std_logic
	);
END pwm;

-- Design Ports Information
-- out_pulse	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pwm IS
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
SIGNAL ww_w : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_pulse : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out_pulse~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \w[0]~input_o\ : std_logic;
SIGNAL \w[3]~input_o\ : std_logic;
SIGNAL \w[2]~input_o\ : std_logic;
SIGNAL \w[1]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \stage0|tmp[0]~3_combout\ : std_logic;
SIGNAL \stage0|Add0~2_combout\ : std_logic;
SIGNAL \stage0|Add0~1_combout\ : std_logic;
SIGNAL \stage0|Add0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \out_tmp[0]~6_combout\ : std_logic;
SIGNAL \out_tmp[0]~9_combout\ : std_logic;
SIGNAL \out_tmp[1]~7_combout\ : std_logic;
SIGNAL \out_tmp[1]~8_combout\ : std_logic;
SIGNAL \out_tmp~5_combout\ : std_logic;
SIGNAL \out_tmp[2]~10_combout\ : std_logic;
SIGNAL \out_tmp[2]~11_combout\ : std_logic;
SIGNAL \out_tmp[3]~2_combout\ : std_logic;
SIGNAL \out_tmp[3]~3_combout\ : std_logic;
SIGNAL \out_tmp[3]~4_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL out_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL \stage0|tmp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_w <= w;
out_pulse <= ww_out_pulse;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;

-- Location: IOOBUF_X8_Y0_N9
\out_pulse~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_process_0~0_combout\,
	devoe => ww_devoe,
	o => \out_pulse~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X10_Y0_N8
\w[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(0),
	o => \w[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\w[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(3),
	o => \w[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\w[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(2),
	o => \w[2]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\w[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(1),
	o => \w[1]~input_o\);

-- Location: LCCOMB_X10_Y1_N4
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\w[0]~input_o\ & (!\w[3]~input_o\ & (!\w[2]~input_o\ & !\w[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[0]~input_o\,
	datab => \w[3]~input_o\,
	datac => \w[2]~input_o\,
	datad => \w[1]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X9_Y1_N6
\stage0|tmp[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \stage0|tmp[0]~3_combout\ = !\stage0|tmp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage0|tmp\(0),
	combout => \stage0|tmp[0]~3_combout\);

-- Location: FF_X9_Y1_N7
\stage0|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0|tmp[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|tmp\(0));

-- Location: LCCOMB_X9_Y1_N4
\stage0|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \stage0|Add0~2_combout\ = \stage0|tmp\(0) $ (!\stage0|tmp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage0|tmp\(0),
	datac => \stage0|tmp\(1),
	combout => \stage0|Add0~2_combout\);

-- Location: FF_X9_Y1_N5
\stage0|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|tmp\(1));

-- Location: LCCOMB_X9_Y1_N22
\stage0|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \stage0|Add0~1_combout\ = \stage0|tmp\(2) $ (((!\stage0|tmp\(0) & !\stage0|tmp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage0|tmp\(0),
	datac => \stage0|tmp\(2),
	datad => \stage0|tmp\(1),
	combout => \stage0|Add0~1_combout\);

-- Location: FF_X9_Y1_N23
\stage0|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0|Add0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|tmp\(2));

-- Location: LCCOMB_X9_Y1_N28
\stage0|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \stage0|Add0~0_combout\ = \stage0|tmp\(3) $ (((!\stage0|tmp\(0) & (!\stage0|tmp\(1) & !\stage0|tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|tmp\(0),
	datab => \stage0|tmp\(1),
	datac => \stage0|tmp\(3),
	datad => \stage0|tmp\(2),
	combout => \stage0|Add0~0_combout\);

-- Location: FF_X9_Y1_N29
\stage0|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|tmp\(3));

-- Location: LCCOMB_X9_Y1_N24
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\stage0|tmp\(2) & (!\stage0|tmp\(3) & (!\stage0|tmp\(1) & !\stage0|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|tmp\(2),
	datab => \stage0|tmp\(3),
	datac => \stage0|tmp\(1),
	datad => \stage0|tmp\(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X9_Y1_N2
\out_tmp[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_tmp[0]~6_combout\ = (\process_0~0_combout\ & (\w[0]~input_o\)) # (!\process_0~0_combout\ & ((!out_tmp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w[0]~input_o\,
	datac => out_tmp(0),
	datad => \process_0~0_combout\,
	combout => \out_tmp[0]~6_combout\);

-- Location: LCCOMB_X9_Y1_N20
\out_tmp[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_tmp[0]~9_combout\ = (\Equal1~0_combout\) # ((\out_tmp[0]~6_combout\ & ((\Equal0~0_combout\) # (!\process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \process_0~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \out_tmp[0]~6_combout\,
	combout => \out_tmp[0]~9_combout\);

-- Location: FF_X9_Y1_N21
\out_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \out_tmp[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out_tmp(0));

-- Location: LCCOMB_X9_Y1_N12
\out_tmp[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_tmp[1]~7_combout\ = (\Equal1~0_combout\) # ((\w[1]~input_o\ & (\Equal0~0_combout\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \w[1]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \process_0~0_combout\,
	combout => \out_tmp[1]~7_combout\);

-- Location: LCCOMB_X9_Y1_N30
\out_tmp[1]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_tmp[1]~8_combout\ = (\out_tmp[1]~7_combout\) # ((!\process_0~0_combout\ & (out_tmp(0) $ (!out_tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => out_tmp(0),
	datab => \process_0~0_combout\,
	datac => out_tmp(1),
	datad => \out_tmp[1]~7_combout\,
	combout => \out_tmp[1]~8_combout\);

-- Location: FF_X9_Y1_N31
\out_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \out_tmp[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out_tmp(1));

-- Location: LCCOMB_X9_Y1_N16
\out_tmp~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_tmp~5_combout\ = (out_tmp(1) & (((out_tmp(2))))) # (!out_tmp(1) & ((out_tmp(2) & ((out_tmp(0)))) # (!out_tmp(2) & (out_tmp(3) & !out_tmp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => out_tmp(1),
	datab => out_tmp(3),
	datac => out_tmp(2),
	datad => out_tmp(0),
	combout => \out_tmp~5_combout\);

-- Location: LCCOMB_X9_Y1_N18
\out_tmp[2]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_tmp[2]~10_combout\ = (\Equal0~0_combout\ & ((\w[2]~input_o\) # ((\out_tmp~5_combout\)))) # (!\Equal0~0_combout\ & (((out_tmp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[2]~input_o\,
	datab => \Equal0~0_combout\,
	datac => out_tmp(2),
	datad => \out_tmp~5_combout\,
	combout => \out_tmp[2]~10_combout\);

-- Location: LCCOMB_X9_Y1_N14
\out_tmp[2]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_tmp[2]~11_combout\ = (\Equal1~0_combout\) # ((\process_0~0_combout\ & ((\out_tmp[2]~10_combout\))) # (!\process_0~0_combout\ & (\out_tmp~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \out_tmp~5_combout\,
	datac => \process_0~0_combout\,
	datad => \out_tmp[2]~10_combout\,
	combout => \out_tmp[2]~11_combout\);

-- Location: FF_X9_Y1_N15
\out_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \out_tmp[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out_tmp(2));

-- Location: LCCOMB_X9_Y1_N26
\out_tmp[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_tmp[3]~2_combout\ = (out_tmp(3) & ((out_tmp(1)) # ((out_tmp(2)) # (out_tmp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => out_tmp(1),
	datab => out_tmp(3),
	datac => out_tmp(2),
	datad => out_tmp(0),
	combout => \out_tmp[3]~2_combout\);

-- Location: LCCOMB_X9_Y1_N10
\out_tmp[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_tmp[3]~3_combout\ = (\Equal1~0_combout\) # ((\process_0~0_combout\ & (\w[3]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \process_0~0_combout\,
	datac => \w[3]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \out_tmp[3]~3_combout\);

-- Location: LCCOMB_X9_Y1_N8
\out_tmp[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_tmp[3]~4_combout\ = (\out_tmp[3]~2_combout\) # (\out_tmp[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_tmp[3]~2_combout\,
	datad => \out_tmp[3]~3_combout\,
	combout => \out_tmp[3]~4_combout\);

-- Location: FF_X9_Y1_N9
\out_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \out_tmp[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out_tmp(3));

-- Location: LCCOMB_X9_Y1_N0
\process_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!out_tmp(1) & (!out_tmp(3) & (!out_tmp(2) & !out_tmp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => out_tmp(1),
	datab => out_tmp(3),
	datac => out_tmp(2),
	datad => out_tmp(0),
	combout => \process_0~0_combout\);

ww_out_pulse <= \out_pulse~output_o\;
END structure;


