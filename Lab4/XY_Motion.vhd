library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity XY_Motion IS Port
(
 clk_input, X_GT, X_EQ, X_LT, Y_GT, Y_EQ, Y_LT, motion, extender_status, rst_n	: IN std_logic;
 X_target, Y_target																		: IN std_logic_vector(3 downto 0);
 clk_en_x, clk_en_y, up_down_x, up_down_y, error, extender_en				: OUT std_logic;
 X_reg, Y_reg																				: OUT std_logic_vector(3 downto 0)
 );
END ENTITY;
 

 Architecture SM of XY_Motion is
 
  
 TYPE STATE_NAMES IS (still_after_reset, still, motion_bttn_pressed, motion_bttn_released_moving, motion_attempt_error);   -- list all the STATE_NAMES values

 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES


 BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, rst_n)  -- this process synchronizes the activity to a clock
BEGIN
	IF (rst_n = '0') THEN
		current_state <= still_after_reset;
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_State;
	END IF;
END PROCESS;	


-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (X_GT, X_EQ, X_LT, Y_GT, Y_EQ, Y_LT, motion, extender_status, current_state, X_target, Y_target) 

BEGIN
     CASE current_state IS
			 WHEN still_after_reset =>
				IF(motion='1' AND extender_status='0') THEN
					next_state <= motion_bttn_pressed;
				ELSIF(motion='1' AND extender_status='1') THEN
					next_state <= motion_attempt_error;
				ELSE
					next_state <= still;
				END IF;
	  
          WHEN still =>		
				IF(motion='1' AND extender_status='0') THEN
					next_state <= motion_bttn_pressed;
				ELSIF(motion='1' AND extender_status='1') THEN
					next_state <= motion_attempt_error;
				ELSE
					next_state <= still;
				END IF;

         WHEN motion_bttn_pressed =>							
					IF (motion = '0') THEN
						next_state <= motion_bttn_released_moving;
					ELSE 
						next_state <= motion_bttn_pressed;
					END IF;

         WHEN motion_bttn_released_moving =>		
				IF (X_EQ='1' AND (Y_EQ='1')) THEN
					next_state <= still;
				ELSE 
					next_state <= motion_bttn_released_moving;
				END IF;
				
         WHEN motion_attempt_error =>
				IF (extender_status='0') THEN
					next_state <= still;
				ELSE
					next_state <= motion_attempt_error;
				END IF;
				

	WHEN OTHERS =>
               next_state <= still;
 	END CASE;

 END PROCESS;

-- DECODER SECTION PROCESS (Mealy Form)

Decoder_Section: PROCESS (current_state) 

BEGIN
     CASE current_state IS
			WHEN still_after_reset =>
				X_reg <= "0000";
				Y_reg <= "0000";
				clk_en_x <= '0'; 
				clk_en_y <= '0';
				up_down_x <= '0'; 
				up_down_y <= '0'; 
				error	 <= '0';
				extender_en <= '1';
	  
         WHEN still =>		
				clk_en_x <= '0'; 
				clk_en_y <= '0';
				up_down_x <= '0'; 
				up_down_y <= '0'; 
				error	 <= '0';
				extender_en <= '1';
			
         WHEN motion_bttn_pressed =>		
				clk_en_x <= '0'; 
				clk_en_y <= '0';
				up_down_x <= '0'; 
				up_down_y <= '0'; 
				error	 <= '0';
            extender_en <= '0';				
				X_reg <= X_target; 
				Y_reg  <= Y_target; 

         WHEN motion_bttn_released_moving =>		
				IF (X_GT = '1') THEN
					clk_en_x <= '1';
					up_down_x <= '0';
				ELSIF (X_LT = '1') THEN
					clk_en_x <= '1';
					up_down_x <= '1';
				ELSIF (X_EQ = '1') THEN
					clk_en_x <= '0';
					up_down_x <= '0';
				END IF;
					
				IF (Y_GT = '1') THEN
					clk_en_y <= '1';
					up_down_y <= '0';
				ELSIF (Y_LT = '1') THEN
					clk_en_y <= '1';
					up_down_y <= '1';
				ELSIF (Y_EQ = '1') THEN
					clk_en_y <= '0';
					up_down_y <= '0';
				END IF;
				
				error	 <= '0'; 
				extender_en <= '0';	
			
         WHEN motion_attempt_error =>		
				clk_en_x <= '0'; 
				clk_en_y <= '0';
				up_down_x <= '0'; 
				up_down_y <= '0';
				extender_en <= '0';		
				error	 <= '1';
				
         WHEN others =>		
				clk_en_x <= '0'; 
				clk_en_y <= '0';
				up_down_x <= '0'; 
				up_down_y <= '0'; 
				error	 <= '0';
  END CASE;
 END PROCESS;

 END ARCHITECTURE SM;
