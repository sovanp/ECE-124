library ieee;
use ieee.std_logic_1164.all;
library work;

entity Compx1 is
 	port (
			A_in, B_in                 : in std_logic;
			A_gt_B, A_eq_B, A_lt_B     : out std_logic
			);

 end Compx1;

 architecture Compx1_logic of Compx1 is
 
 
 begin

A_eq_B <= ((not A_in) and (not B_in)) or (A_in and B_in);
A_gt_B <= A_in and (not B_in);
A_lt_B <= (not A_in) and B_in;
 
 
 end Compx1_logic;