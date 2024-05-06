library ieee;
use ieee.std_logic_1164.all;

entity adder4 is
port(
	Cin	:	in		std_logic;
	X,Y	:	in		std_logic_vector(3	downto	0);
	S		:	out	std_logic_vector(3	downto	0);
	Cout	:	out	std_logic
);
end	adder4;

architecture	Behavior	of	adder4	is
	component	adder1
	port(
	Cin,	x,	y	:	in		std_logic;
	s,	Cout		:	out	std_logic
	);
	end	component;
	
	signal	C	:	std_logic_vector(1	to	3);
begin
	stage0: adder1 port map(Cin,	 X(0), Y(0), S(0), C(1));
	stage1: adder1 port map(C(1), X(1), Y(1), S(1), C(2));
	stage2: adder1 port map(C(2), X(2), Y(2), S(2), C(3));
	stage3: adder1 port map(C(3), X(3), Y(3), S(3), Cout);
end Behavior;