LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design IS
	GENERIC (
		floors : INTEGER := 10;
		floors_bits : INTEGER := 4;
		clk_delay : INTEGER := 10
	);
	PORT (
		clk, rst : IN std_logic;
		up_buttons, down_buttons : IN std_logic_vector(floors - 1 DOWNTO 0);
		elevator_buttons : std_logic_vector(floors - 1 DOWNTO 0);
		current_floor : OUT std_logic_vector(floor_bits - 1 DOWNTO 0);
		up_indicator, down_indicator, door_open : std_logic

	);
END design;

ARCHITECTURE elevatorarch OF design IS

	--fsm typdef  ???
	TYPE elevator_fsm IS(idle, up, down, door);
	SIGNAL req_reg, req_next : std_logic_vector(floors - 1 DOWNTO 0);
	SIGNAL el_state : elevator_fsm;
	SIGNAL door_timer : unsigned(timer_counter_bsits - 1)
BEGIN
	up_indicator, down_indicator <= 0;
	-- PROCESS (clk, rst)
	-- BEGIN
	-- 	IF (rst = '1') THEN
	-- 		el_state <=idle;

	-- 	END PROCESS
	PROCESS (el_state)
	END elevatorarch;