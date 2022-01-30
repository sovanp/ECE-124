library ieee;
use ieee.std_logic_1164.all;

-- Group 13, Sovan Patnayak and Dennis O'Brien
entity LogicalStep_Lab3_top is port (
	clk_in		: in 	std_logic;
	pb				: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); 	
   leds			: out std_logic_vector(11 downto 0)		
	
); 
end LogicalStep_Lab3_top;

architecture design of LogicalStep_Lab3_top is
--
-- Provided Project Components Used
------------------------------------------------------------------- 
	
component Tester port (
 MC_TESTMODE				: in  std_logic;
 I1EQI2,I1GTI2,I1LTI2	: in	std_logic;
	input1					: in  std_logic_vector(3 downto 0);
	input2					: in  std_logic_vector(3 downto 0);
	TEST_PASS  				: out	std_logic							 
	); 
end component;
	
component HVAC 	port (
	clk						: in std_logic; 
	run_n		   			: in std_logic;
	increase, decrease	: in std_logic;
	temp						: out std_logic_vector (3 downto 0)
	);
end component;

------------------------------------------------------------------
-- Add Other Components here

component Compx4
	port (
		hex_val_A, hex_val_B 			: in std_logic_vector(3 downto 0);
		AGTB, AEQB, ALTB			   	: out std_logic 
	);
end component;

component mux
	port (
		desired_temp, vacation_temp 				: in std_logic_vector(3 downto 0);
		vacation_mode 									: in std_logic; 
		mux_temp				 							: out std_logic_vector(3 downto 0)
	);
end component;

component Energy_Monitor_Control_Block 
	port (
		AGTB, AEQB, ALTB, vacation_mode, MC_test_mode, window_open, door_open 								: in std_logic;
		increase, decrease, run_n																							: out std_logic;
		furnace_ON, at_temp_ON, AC_ON, blower_ON, vacation_mode_LED, door_open_LED, window_open_LED	: out std_logic 
	);	
end component;

------------------------------------------------------------------	
-- Create any signals to be used

signal desired_temp_sig, vacation_temp_sig 			: std_logic_vector(3 downto 0);
signal mux_temp_sig, current_temp_sig					: std_logic_vector(3 downto 0); 
signal increase_sig, decrease_sig, run_n_sig			: std_logic; 
signal AGTB_sig, AEQB_sig, ALTB_sig			   		: std_logic;   

------------------------------------------------------------------- 
	
-- Here the circuit begins

begin

--Part A 
--comp: Compx4 port map (sw(3 downto 0), sw(7 downto 4), leds(2), leds(1), leds(0));

--Part B
desired_temp_sig <= sw(3 downto 0);
vacation_temp_sig <= sw(7 downto 4); 


comp1: mux port map (
							 desired_temp_sig, vacation_temp_sig, 
							 pb(3), 
							 mux_temp_sig
							);
							
comp2: HVAC port map (
							  clk_in, 
							  run_n_sig, 
							  increase_sig, decrease_sig, 
							  current_temp_sig
							 ); 
							 
comp3: Compx4 port map (
								 mux_temp_sig, current_temp_sig, 
								 AGTB_sig, AEQB_sig, ALTB_sig
								);
								
comp4: Tester port map (
								 pb(2), 
								 AGTB_sig, AEQB_sig, ALTB_sig, 
								 desired_temp_sig, 
								 current_temp_sig, 
								 leds(6)
								); 

comp5: Energy_Monitor_Control_Block port map (
															 AGTB_sig, AEQB_sig, ALTB_sig, pb(3), pb(2), pb(1), pb(0), 
															 increase_sig, decrease_sig, run_n_sig, 
															 leds(0), leds(1), leds(2), leds(3), leds(7), leds(5), leds(4)
															 ); 

leds(11 downto 8) <= current_temp_sig; 
	
end design;