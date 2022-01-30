library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Extender IS Port
(
 clk_input, rst_n, extender_en, extender					: IN std_logic;
 ext_pos																: IN std_logic_vector(3 downto 0);
 extender_out, clk_en, left_right, grappler_en			: OUT std_logic
 );
END ENTITY;
 

 Architecture SM of Extender is
 
  
 TYPE STATE_NAMES IS (retracted, button_press_1, extending, extended, button_press_2, retracting);   -- list all the STATE_NAMES values

 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES


 BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, rst_n)  -- this process synchronizes the activity to a clock
BEGIN
	IF (rst_n = '0') THEN
		current_state <= retracted;
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_State;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (extender_en, extender, ext_pos) 

BEGIN
     CASE current_state IS
          WHEN retracted =>		
				IF(extender = '1' AND extender_en = '1') THEN
					next_state <= button_press_1;
				ELSE
					next_state <= retracted;
				END IF;

         WHEN button_press_1 =>		
				IF (extender = '0') THEN
					next_state <= extending;
				ELSE
					next_state <= button_press_1;
				END IF;

         WHEN extending =>		
				IF(ext_pos = "1111") THEN
					next_state <= extended;
				ELSE
					next_state <= extending;
				END IF;
				
         WHEN extended =>		
				IF(extender = '1') THEN
					next_state <= button_press_2;
				ELSE
					next_state <= extended;
				END IF;

         WHEN button_press_2 =>		
				IF(extender = '0') THEN
					next_state <= retracting;
				ELSE
					next_state <= button_press_2;
				END IF;

         WHEN retracting =>		
				IF(ext_pos = "0000") THEN
					next_state <= retracted;
				ELSE
					next_state <= retracting;
				END IF;

	WHEN OTHERS =>
               next_state <= retracted;
 	END CASE;

 END PROCESS;

-- DECODER SECTION PROCESS (Moore Form)

Decoder_Section: PROCESS (current_state) 

BEGIN
     CASE current_state IS
         WHEN retracted =>		
				extender_out <= '0';
				clk_en <= '0';
				left_right <= '0';
				grappler_en <= '0';
			
         WHEN button_press_1 =>		
				extender_out <= '0';
				clk_en <= '0';
				left_right <= '0';
				grappler_en <= '0';

         WHEN extending =>		
				extender_out <= '1';
				clk_en <= '1';
				left_right <= '1';
				grappler_en <= '0';
			
         WHEN extended =>		
				extender_out <= '1';
				clk_en <= '0';
				left_right <= '0';
				grappler_en <= '1';

         WHEN button_press_2 =>		
				extender_out <= '1';
				clk_en <= '0';
				left_right <= '0';
				grappler_en <= '0';
				
			
         WHEN retracting =>		
				extender_out <= '1';
				clk_en <= '1';
				left_right <= '0';
				grappler_en <= '0';
			
				
         WHEN others =>		
				extender_out <= '0';
				clk_en <= '0';
				left_right <= '0';
				grappler_en <= '0';
				
  END CASE;
 END PROCESS;

 END ARCHITECTURE SM;
