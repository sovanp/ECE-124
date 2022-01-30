--Dennis O'Brien and Sovan Patnayak

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Grappler IS Port
(
 clk_input, rst_n, grappler, grappler_en					: IN std_logic;
 grappler_on														: OUT std_logic
 );
END ENTITY;
 

 Architecture SM of Grappler is
 
  
 TYPE STATE_NAMES IS (grappler_off, button_press_1, grappler_on_state, button_press_2);   -- list all the STATE_NAMES values

 --State summary:
	--grappler_off: grappler is open (this is it's default state)
	--button_press_1: button has been pressed and held after being open
	--grappler_on_state: button has been released, grappler closes
	--button_press_2: button has been pressed and held after being closed, opens when released
 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES


 BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, rst_n)  -- this process synchronizes the activity to a clock
BEGIN
	IF (rst_n = '0') THEN
		current_state <= grappler_off;
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_State;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (grappler, grappler_en) 

BEGIN
     CASE current_state IS
	  
			 --goes to button_press_1 if button is pressed and grappler is enabled
          WHEN grappler_off =>		
				IF(grappler = '1' AND grappler_en = '1') THEN
					next_state <= button_press_1;
				ELSE
					next_state <= grappler_off;
				END IF;

			--goes to grappler_on_state if button is released
         WHEN button_press_1 =>		
				IF (grappler = '0') THEN
					next_state <= grappler_on_state;
				ELSE
					next_state <= button_press_1;
				END IF;

			--goes to button_press_2 if button is pressed and grappler is enabled
         WHEN grappler_on_state =>		
				IF(grappler = '1' AND grappler_en = '1') THEN
					next_state <= button_press_2;
				ELSE
					next_state <= grappler_on_state;
				END IF;
				
			--goes to grappler_off if button is released
         WHEN button_press_2 =>		
				IF(grappler = '0') THEN
					next_state <= grappler_off;
				ELSE
					next_state <= button_press_2;
				END IF;


	WHEN OTHERS =>
               next_state <= grappler_off;
 	END CASE;

 END PROCESS;

-- DECODER SECTION PROCESS (Moore Form)

Decoder_Section: PROCESS (current_state) 

BEGIN
     CASE current_state IS
	  
			--grappler_on is given a 1, which means closed, when in grappler_off state
         WHEN grappler_off =>		
				grappler_on <= '0';
			
			--same as grappler_off outputs
         WHEN button_press_1 =>		
				grappler_on <= '0';
				
			--0 output is given when grappler is on (open)
         WHEN grappler_on_state =>		
				grappler_on <= '1';
			
			--same as grappler_on_state outputs
         WHEN button_press_2 =>		
				grappler_on <= '1';
			
				
         WHEN others =>		
				grappler_on <= '0';
				
  END CASE;
 END PROCESS;

 END ARCHITECTURE SM;