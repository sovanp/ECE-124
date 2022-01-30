-- Group 13, Sovan Patnayak and Dennis O'Brien

library ieee;
use ieee.std_logic_1164.all;
library work;

entity logic_proc is
 	port (
			logic_in1, logic_in0  							: in std_logic_vector(3 downto 0);
		-- take two 4-bit inputs
			logic_select					 					: in std_logic_vector(1 downto 0); 
		-- take one 2-bit control input (two control ports)
			logic_result				 						: out std_logic_vector(3 downto 0)
			);

end logic_proc;


architecture proc_logic of logic_proc is
 
begin
 
with logic_select(1 downto 0) select
logic_result <=	(logic_in0 AND  logic_in1) when "00", 
					-- when the control input is "00", processor is selected to AND
					(logic_in0 OR 	 logic_in1) when "01", 
					-- when the control input is "01", processor is selected to OR
					(logic_in0 XOR  logic_in1) when "10", 
					-- when the control input is "10", processor is selected to XOR
					(logic_in0 XNOR logic_in1) when "11"; 
					-- when the control input is "11", processor is selected to XNOR
 
 
 end proc_logic;