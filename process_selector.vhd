-- Group 13, Sovan Patnayak and Dennis O'Brien

library ieee;
use ieee.std_logic_1164.all;
library work;

entity process_selector is
 	port (
			adder_result, proc_result					: in std_logic_vector(3 downto 0);
			selector 										: in std_logic; 
			final_out				 						: out std_logic_vector(3 downto 0);
			Output_indicator								: out std_logic
			);

 end process_selector;

 architecture selector_logic of process_selector is
 
 
 
 begin
 -- 2-to-1 mux selection using 1bit input
with selector select
final_out <=	adder_result when '0',
					proc_result	 when '1';

output_indicator <= selector; 
 
 end selector_logic;