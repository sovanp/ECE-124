
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab4_top IS
   PORT
	(
	Clk			: in	std_logic;
	rst_n			: in	std_logic;
	pb				: in	std_logic_vector(2 downto 0);
 	sw   			: in  	std_logic_vector(7 downto 0); 
	leds			: out 	std_logic_vector(21 downto 0)	
	);
END LogicalStep_Lab4_top;

ARCHITECTURE Circuit OF LogicalStep_Lab4_top IS

component Bidir_shift_reg port 
	(
	CLK					: in std_logic := '0';
	RESET_n				: in std_logic := '0';
	CLK_EN				: in std_logic := '0';
	LEFT0_RIGHT1		: in std_logic := '0';
	REG_BITS				: out std_logic_vector(3 downto 0)	
	);
	end component;
	
component U_D_Bin_Counter8bit port 
	(
	CLK				: in std_logic := '0';
	RESET_n			: in std_logic := '0';
	CLK_EN			: in std_logic := '0';
	UP1_DOWN0		: in std_logic := '0';
	COUNTER_BITS	: out std_logic_vector(3 downto 0)
	);
	end component;
	
component XY_Motion port
	(
	 clk_input, X_GT, X_EQ, X_LT, Y_GT, Y_EQ, Y_LT, motion, extender_status, rst_n	: IN std_logic;
	 X_target, Y_target																		: IN std_logic_vector(3 downto 0);
	 clk_en_x, clk_en_y, up_down_x, up_down_y, error, extender_en				: OUT std_logic;
	 X_reg, Y_reg																				: OUT std_logic_vector(3 downto 0)
	 );
end component;

component Extender port
	(
	 clk_input, rst_n, extender_en, extender					: IN std_logic;
	 ext_pos																: IN std_logic_vector(3 downto 0);
	 extender_out, clk_en, left_right, grappler_en			: OUT std_logic
	 );
end component;

component Grappler port
	(
	 clk_input, rst_n, grappler, grappler_en					: IN std_logic;
	 grappler_on														: OUT std_logic
	 );
end component;

component Compx4 port 
	(
	A, B                       : in std_logic_vector (3 downto 0);
	A_gt_B, A_eq_B, A_lt_B     : out std_logic
	);
 end component;
 
signal X_LT : std_logic;
signal X_EQ : std_logic;
signal X_GT : std_logic;
signal clk_en_x : std_logic;
signal up_down_x : std_logic;
signal X_pos : std_logic_vector(3 downto 0);
signal X_reg : std_logic_vector(3 downto 0);
signal error : std_logic;
signal Y_LT : std_logic;
signal Y_EQ : std_logic;
signal Y_GT : std_logic;
signal clk_en_y : std_logic;
signal up_down_y : std_logic;
signal Y_pos : std_logic_vector(3 downto 0);
signal Y_reg : std_logic_vector(3 downto 0);
signal extender_en : std_logic;
signal extender_out : std_logic;
signal ext_pos : std_logic_vector(3 downto 0);
signal clk_en_shift : std_logic;
signal left_right : std_logic;
signal grappler_en : std_logic;

	
BEGIN

leds(13 downto 10) <= X_pos;
leds(21 downto 18) <= X_reg;
leds(0) <= error;
leds(9 downto 6) <= Y_pos;
leds(17 downto 14) <= Y_reg;
leds(5 downto 2) <= ext_pos;

inst_XY : XY_Motion port map
	(
	 Clk, X_GT, X_EQ, X_LT, Y_GT, Y_EQ, Y_LT, pb(2), extender_out, rst_n,
	 sw(7 downto 4), sw(3 downto 0),
	 clk_en_x, clk_en_y, up_down_x, up_down_y, error, extender_en,
	 X_reg, Y_reg
	 );
	 
inst_counter_x : U_D_Bin_Counter8bit port map 
	(
	Clk,
	rst_n,
	clk_en_x,
	up_down_x,
	X_pos
	);
	
inst_counter_y : U_D_Bin_Counter8bit port map
	(
	Clk,
	rst_n,
	clk_en_y,
	up_down_y,
	Y_pos
	);
	
inst_comp_x : Compx4 port map
	(
	X_pos, X_reg,
	X_GT, X_EQ, X_LT
	);
	
inst_comp_y : Compx4 port map
	(
	Y_pos, Y_reg,
	Y_GT, Y_EQ, Y_LT
	);
	
inst_extender : Extender port map
	(
	 Clk, rst_n, extender_en, pb(1),
	 ext_pos,
	 extender_out, clk_en_shift, left_right, grappler_en
	 );
	 
inst_shift : Bidir_shift_reg port map 
	(
	Clk,
	rst_n,
	clk_en_shift,
	left_right,
	ext_pos	
	);
	
inst_grappler : Grappler port map
	(
	 Clk, rst_n, pb(0), grappler_en,
	 leds(1)								
	 );


 
END Circuit;
