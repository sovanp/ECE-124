library ieee;
use ieee.std_logic_1164.all;
library work;

-- Group 13, Sovan Patnayak and Dennis O'Brien
entity mux is
 	port (
			desired_temp, vacation_temp 				: in std_logic_vector(3 downto 0);
			vacation_mode 									: in std_logic; 
			mux_temp				 							: out std_logic_vector(3 downto 0)
			);

 end mux;

architecture mux_logic of mux is
 
begin

	with vacation_mode select
	mux_temp <=	desired_temp when '0',
					vacation_temp when '1'; 
 
end mux_logic;
 