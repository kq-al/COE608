-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.2 Build 209 09/17/2014 SJ Full Version"

-- DATE "02/09/2024 00:20:24"

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

ENTITY 	adder8 IS
    PORT (
	Cin : IN std_logic;
	X : IN std_logic_vector(7 DOWNTO 0);
	Y : IN std_logic_vector(7 DOWNTO 0);
	S : BUFFER std_logic_vector(7 DOWNTO 0);
	Cout : BUFFER std_logic
	);
END adder8;

-- Design Ports Information
-- S[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[4]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[5]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[6]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[7]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF adder8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_X : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \stage0|stage0|s~0_combout\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \stage0|stage0|Cout~0_combout\ : std_logic;
SIGNAL \stage0|stage1|s~combout\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \stage0|stage1|Cout~0_combout\ : std_logic;
SIGNAL \stage0|stage2|s~combout\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \stage0|stage2|Cout~0_combout\ : std_logic;
SIGNAL \stage0|stage3|s~combout\ : std_logic;
SIGNAL \X[4]~input_o\ : std_logic;
SIGNAL \Y[4]~input_o\ : std_logic;
SIGNAL \stage0|stage3|Cout~0_combout\ : std_logic;
SIGNAL \stage1|stage0|s~combout\ : std_logic;
SIGNAL \X[5]~input_o\ : std_logic;
SIGNAL \Y[5]~input_o\ : std_logic;
SIGNAL \stage1|stage0|Cout~0_combout\ : std_logic;
SIGNAL \stage1|stage1|s~combout\ : std_logic;
SIGNAL \X[6]~input_o\ : std_logic;
SIGNAL \Y[6]~input_o\ : std_logic;
SIGNAL \stage1|stage1|Cout~0_combout\ : std_logic;
SIGNAL \stage1|stage2|s~combout\ : std_logic;
SIGNAL \Y[7]~input_o\ : std_logic;
SIGNAL \X[7]~input_o\ : std_logic;
SIGNAL \stage1|stage2|Cout~0_combout\ : std_logic;
SIGNAL \stage1|stage3|s~combout\ : std_logic;
SIGNAL \stage1|stage3|Cout~0_combout\ : std_logic;

BEGIN

ww_Cin <= Cin;
ww_X <= X;
ww_Y <= Y;
S <= ww_S;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y49_N2
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage0|stage0|s~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage0|stage1|s~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage0|stage2|s~combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage0|stage3|s~combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|stage0|s~combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|stage1|s~combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|stage2|s~combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|stage3|s~combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|stage3|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOIBUF_X0_Y42_N8
\X[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\Y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X1_Y45_N16
\stage0|stage0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|stage0|s~0_combout\ = \X[0]~input_o\ $ (\Y[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datac => \Y[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \stage0|stage0|s~0_combout\);

-- Location: IOIBUF_X0_Y47_N15
\Y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\X[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: LCCOMB_X1_Y45_N2
\stage0|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|stage0|Cout~0_combout\ = (\X[0]~input_o\ & ((\Y[0]~input_o\) # (\Cin~input_o\))) # (!\X[0]~input_o\ & (\Y[0]~input_o\ & \Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datac => \Y[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \stage0|stage0|Cout~0_combout\);

-- Location: LCCOMB_X1_Y45_N28
\stage0|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|stage1|s~combout\ = \Y[1]~input_o\ $ (\X[1]~input_o\ $ (\stage0|stage0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[1]~input_o\,
	datac => \X[1]~input_o\,
	datad => \stage0|stage0|Cout~0_combout\,
	combout => \stage0|stage1|s~combout\);

-- Location: IOIBUF_X0_Y44_N22
\Y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\X[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: LCCOMB_X1_Y45_N22
\stage0|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|stage1|Cout~0_combout\ = (\Y[1]~input_o\ & ((\X[1]~input_o\) # (\stage0|stage0|Cout~0_combout\))) # (!\Y[1]~input_o\ & (\X[1]~input_o\ & \stage0|stage0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[1]~input_o\,
	datac => \X[1]~input_o\,
	datad => \stage0|stage0|Cout~0_combout\,
	combout => \stage0|stage1|Cout~0_combout\);

-- Location: LCCOMB_X1_Y45_N24
\stage0|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|stage2|s~combout\ = \Y[2]~input_o\ $ (\X[2]~input_o\ $ (\stage0|stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[2]~input_o\,
	datab => \X[2]~input_o\,
	datac => \stage0|stage1|Cout~0_combout\,
	combout => \stage0|stage2|s~combout\);

-- Location: IOIBUF_X0_Y45_N15
\X[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: IOIBUF_X0_Y47_N22
\Y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: LCCOMB_X1_Y45_N10
\stage0|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|stage2|Cout~0_combout\ = (\Y[2]~input_o\ & ((\X[2]~input_o\) # (\stage0|stage1|Cout~0_combout\))) # (!\Y[2]~input_o\ & (\X[2]~input_o\ & \stage0|stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[2]~input_o\,
	datab => \X[2]~input_o\,
	datac => \stage0|stage1|Cout~0_combout\,
	combout => \stage0|stage2|Cout~0_combout\);

-- Location: LCCOMB_X1_Y45_N4
\stage0|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|stage3|s~combout\ = \X[3]~input_o\ $ (\Y[3]~input_o\ $ (\stage0|stage2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[3]~input_o\,
	datac => \Y[3]~input_o\,
	datad => \stage0|stage2|Cout~0_combout\,
	combout => \stage0|stage3|s~combout\);

-- Location: IOIBUF_X0_Y46_N22
\X[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(4),
	o => \X[4]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\Y[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(4),
	o => \Y[4]~input_o\);

-- Location: LCCOMB_X1_Y45_N6
\stage0|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|stage3|Cout~0_combout\ = (\X[3]~input_o\ & ((\Y[3]~input_o\) # (\stage0|stage2|Cout~0_combout\))) # (!\X[3]~input_o\ & (\Y[3]~input_o\ & \stage0|stage2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[3]~input_o\,
	datac => \Y[3]~input_o\,
	datad => \stage0|stage2|Cout~0_combout\,
	combout => \stage0|stage3|Cout~0_combout\);

-- Location: LCCOMB_X1_Y45_N0
\stage1|stage0|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|stage0|s~combout\ = \X[4]~input_o\ $ (\Y[4]~input_o\ $ (\stage0|stage3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[4]~input_o\,
	datac => \Y[4]~input_o\,
	datad => \stage0|stage3|Cout~0_combout\,
	combout => \stage1|stage0|s~combout\);

-- Location: IOIBUF_X0_Y44_N1
\X[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(5),
	o => \X[5]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\Y[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(5),
	o => \Y[5]~input_o\);

-- Location: LCCOMB_X1_Y45_N18
\stage1|stage0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|stage0|Cout~0_combout\ = (\X[4]~input_o\ & ((\Y[4]~input_o\) # (\stage0|stage3|Cout~0_combout\))) # (!\X[4]~input_o\ & (\Y[4]~input_o\ & \stage0|stage3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[4]~input_o\,
	datac => \Y[4]~input_o\,
	datad => \stage0|stage3|Cout~0_combout\,
	combout => \stage1|stage0|Cout~0_combout\);

-- Location: LCCOMB_X1_Y45_N20
\stage1|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|stage1|s~combout\ = \X[5]~input_o\ $ (\Y[5]~input_o\ $ (\stage1|stage0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[5]~input_o\,
	datac => \Y[5]~input_o\,
	datad => \stage1|stage0|Cout~0_combout\,
	combout => \stage1|stage1|s~combout\);

-- Location: IOIBUF_X0_Y45_N22
\X[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(6),
	o => \X[6]~input_o\);

-- Location: IOIBUF_X0_Y50_N15
\Y[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(6),
	o => \Y[6]~input_o\);

-- Location: LCCOMB_X1_Y45_N30
\stage1|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|stage1|Cout~0_combout\ = (\X[5]~input_o\ & ((\Y[5]~input_o\) # (\stage1|stage0|Cout~0_combout\))) # (!\X[5]~input_o\ & (\Y[5]~input_o\ & \stage1|stage0|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[5]~input_o\,
	datac => \Y[5]~input_o\,
	datad => \stage1|stage0|Cout~0_combout\,
	combout => \stage1|stage1|Cout~0_combout\);

-- Location: LCCOMB_X1_Y45_N8
\stage1|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|stage2|s~combout\ = \X[6]~input_o\ $ (\Y[6]~input_o\ $ (\stage1|stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[6]~input_o\,
	datab => \Y[6]~input_o\,
	datac => \stage1|stage1|Cout~0_combout\,
	combout => \stage1|stage2|s~combout\);

-- Location: IOIBUF_X0_Y35_N8
\Y[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(7),
	o => \Y[7]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\X[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(7),
	o => \X[7]~input_o\);

-- Location: LCCOMB_X1_Y45_N26
\stage1|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|stage2|Cout~0_combout\ = (\X[6]~input_o\ & ((\Y[6]~input_o\) # (\stage1|stage1|Cout~0_combout\))) # (!\X[6]~input_o\ & (\Y[6]~input_o\ & \stage1|stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[6]~input_o\,
	datab => \Y[6]~input_o\,
	datac => \stage1|stage1|Cout~0_combout\,
	combout => \stage1|stage2|Cout~0_combout\);

-- Location: LCCOMB_X1_Y45_N12
\stage1|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|stage3|s~combout\ = \Y[7]~input_o\ $ (\X[7]~input_o\ $ (\stage1|stage2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[7]~input_o\,
	datab => \X[7]~input_o\,
	datac => \stage1|stage2|Cout~0_combout\,
	combout => \stage1|stage3|s~combout\);

-- Location: LCCOMB_X1_Y45_N14
\stage1|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|stage3|Cout~0_combout\ = (\Y[7]~input_o\ & ((\X[7]~input_o\) # (\stage1|stage2|Cout~0_combout\))) # (!\Y[7]~input_o\ & (\X[7]~input_o\ & \stage1|stage2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[7]~input_o\,
	datab => \X[7]~input_o\,
	datac => \stage1|stage2|Cout~0_combout\,
	combout => \stage1|stage3|Cout~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_Cout <= \Cout~output_o\;
END structure;


