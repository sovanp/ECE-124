library ieee;
use ieee.std_logic_1164.all;
library work;

entity Compx4 is
 	port (
			A, B                       : in std_logic_vector (3 downto 0);
			A_gt_B, A_eq_B, A_lt_B     : out std_logic
			);

 end Compx4;

 architecture Compx4_logic of Compx4 is
 
 component Compx1 
 port (
			A_in, B_in                 : in std_logic;
			A_gt_B, A_eq_B, A_lt_B     : out std_logic
			);

 end component;
 
 signal A3GTB3, A3EQB3, A3LTB3     : std_logic;
 signal A2GTB2, A2EQB2, A2LTB2     : std_logic;
 signal A1GTB1, A1EQB1, A1LTB1     : std_logic;
 signal A0GTB0, A0EQB0, A0LTB0     : std_logic;
 
 begin

 inst1 : Compx1 port map (
								   A(3), B(3),
									A3GTB3, A3EQB3, A3LTB3
								 );
								 
 inst2 : Compx1 port map (
								   A(2), B(2),
									A2GTB2, A2EQB2, A2LTB2
								 );
								 
 inst3 : Compx1 port map (
								   A(1), B(1),
									A1GTB1, A1EQB1, A1LTB1
								 );
								 
 inst4 : Compx1 port map (
								   A(0), B(0),
									A0GTB0, A0EQB0, A0LTB0
								 );
								 
 A_gt_B <= (A3GTB3) or (A3EQB3 and A2GTB2) or (A3EQB3 and A2EQB2 and A1GTB1) or (A3EQB3 and A2EQB2 and A1EQB1 and A0GTB0);
 A_eq_B <= A3EQB3 and A2EQB2 and A1EQB1 and A0EQB0;
 A_lt_B <= (A3LTB3) or (A3EQB3 and A2LTB2) or (A3EQB3 and A2EQB2 and A1LTB1) or (A3EQB3 and A2EQB2 and A1EQB1 and A0LTB0);
									
 
 
 end Compx4_logic;