library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;

-- Group 13, Sovan Patnayak and Dennis O'Brien
entity Compx1 is 
	port (
				A_in, B_in					: in std_logic;
				AGB, AEB, ALB				: out std_logic 
			);
end Compx1;

architecture Logic of Compx1 is

begin
	AGB	<= A_in AND (Not B_in);
	AEB	<= ((Not A_in) AND (Not B_in)) OR (A_in AND B_in); -- A_in XNOR B_in
	ALB	<= (Not A_in) AND B_in; 
end;