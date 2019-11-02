LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY testbench IS
END testbench;
ARCHITECTURE tbarch OF testbench IS
	COMPONENT design
		GENERIC (
			floors : INTEGER := 10;
			floor_bits : INTEGER := 4;
			clk_delay : INTEGER := 10;
			timer_counter_bits : INTEGER := 4;
			timer_counts : INTEGER := 11
		);

		PORT (
			clk, rst : IN std_logic;
			up_buttons, down_buttons : IN std_logic_vector(floors - 2 DOWNTO 0);
			elevator_buttons : IN std_logic_vector(floors - 1 DOWNTO 0);
			current_floor : OUT std_logic_vector(floor_bits - 1 DOWNTO 0);
			up_indicator, down_indicator, door_open : OUT std_logic

		);

	END COMPONENT;

	SIGNAL clk : std_logic := '0';
	SIGNAL reset : std_logic := '1';
	SIGNAL up_buttons_tb, down_buttons_tb : std_logic_vector(8 DOWNTO 0);
	SIGNAL elevator_buttons_tb : std_logic_vector(9 DOWNTO 0);
	SIGNAL up_indicator_tb, down_indicator_tb, door_open_tb : std_logic;
	CONSTANT period : TIME := 30 ns;
BEGIN
	uut : design
	PORT MAP(
		clk => clk,
		rst => reset,
		up_buttons => up_buttons_tb,
		down_buttons => down_buttons_tb,
		elevator_buttons => elevator_buttons_tb,
		up_indicator => up_indicator_tb,
		down_indicator => down_indicator_tb,
		door_open => door_open_tb
	);

	clk <= NOT clk AFTER period/2;

	PROCESS
	BEGIN

		WAIT FOR (1 * period);
		reset <= '0';
		WAIT FOR (1 * period);
		up_buttons_tb <= B"000010010";
		down_buttons_tb <= B"000100010";
		WAIT FOR (1 * period);
		elevator_buttons_tb <= B"0010000001";

	END PROCESS;

END tbarch;