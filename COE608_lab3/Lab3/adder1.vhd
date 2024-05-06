library ieee;
use ieee.std_logic_1164.all;

entity adder1 is
port(
	Cin,	x,	y	:	in	std_logic;
	s, Cout		:	out	std_logic
	);
end	adder1;

architecture	Behavior	of	adder1	is
begin
	s	<=	x	xor	y	xor	Cin;
	Cout	<=	(x	and	y)	or	(Cin	and	x)	or	(Cin	and	y);
end	behavior;
	