LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ControlUnit IS
	GENERIC (
		floors : INTEGER := 10;
		floors_bits : INTEGER := 4;
		timer_counter_bits : INTEGER := 4;
		timer_counts : INTEGER := 11
	);
	PORT (
		clk, rst : IN std_logic;
		-- up_buttons : OUT std_logic_vector(floors - 2 DOWNTO 0);
		-- down_buttons : OUT std_logic_vector(floors - 2 DOWNTO 0);
		-- elevator_buttons : OUT std_logic_vector(floors - 1 DOWNTO 0);
		up_indicator, down_indicator, door_open : OUT std_logic;
		current_floor : OUT std_logic_vector (floors_bits - 1 DOWNTO 0);
		request : IN std_logic_vector (floors_bits - 1 DOWNTO 0);
		--for V2
		moving_up : OUT std_logic
	);
END ControlUnit;

ARCHITECTURE cuarch OF ControlUnit IS

	-- fsm typedef
	TYPE elevator_fsm IS (up, down, idle);
	SIGNAL elevator_state : elevator_fsm;
	SIGNAL state_reg, state_next : elevator_fsm;
	SIGNAL counter_reg, counter_next : unsigned (timer_counter_bits - 1 DOWNTO 0);
	SIGNAL current_floor_int : std_logic_vector(floors_bits - 1 DOWNTO 0);
	SIGNAL door_open_int : std_logic;
	SIGNAL counter_out : std_logic;

	-- COMPONENT RequestResolver IS
	--     PORT (
	--         clk, rst : IN std_logic;
	--         up_buttons : IN std_logic_vector(floors - 2 DOWNTO 0);
	--         down_buttons : IN std_logic_vector(floors - 2 DOWNTO 0);
	--         elevator_buttons : IN std_logic_vector(floors - 1 DOWNTO 0);
	--         up_indicator, down_indicator, door_open : IN std_logic;
	--         current_floor : IN std_logic_vector (floors_bits - 1 DOWNTO 0);
	--         request : OUT std_logic_vector (floors_bits - 1 DOWNTO 0)
	--     );
	-- END COMPONENT;
BEGIN
	current_floor <= current_floor_int;
	door_open <= door_open_int;
	counter_out <= '1' WHEN (to_integer(counter_reg) >= 0) AND (to_integer(counter_reg) < timer_counts) ELSE
		'0';
	PROCESS (clk, rst)
	BEGIN
		IF (rst = '1') THEN
			state_reg <= idle;
			counter_reg <= (OTHERS => '0');
			moving_up <= '1';
		ELSIF (clk'event AND clk = '1') THEN
			state_reg <= state_next;
			counter_reg <= counter_next;
		END IF;
	END PROCESS;

	PROCESS (state_reg, counter_reg)
	BEGIN
		CASE state_reg IS
			WHEN idle =>
				--doorOpenCounter : FOR k IN 0 TO timer_counts + 1 LOOP
				-- counter_next<="0001";
				up_indicator <= '0';
				down_indicator <= '0';
				counter_next <= counter_reg + 1;
				IF (counter_out = '1') THEN
					door_open_int <= '1';
					--counter_next<=counter_reg + 1;
				ELSE
					door_open_int <= '0';
					counter_next <= (OTHERS => '0');
				END IF;
				--END LOOP; -- doorOpenCounter
				IF ((to_integer(unsigned(request)) > to_integer(unsigned(current_floor_int))) AND (door_open_int = '0')) THEN
					state_next <= up;
				ELSIF ((to_integer(unsigned(request)) < to_integer(unsigned(current_floor_int))) AND (door_open_int = '0')) THEN
					state_next <= down;
				END IF;
			WHEN up =>
				current_floor_int <= request;
				state_next <= idle;
				door_open_int <= '0';
				counter_next <= (OTHERS => '0');
				up_indicator <= '1';
				moving_up <= '1';
			WHEN down =>
				current_floor_int <= request;
				state_next <= idle;
				door_open_int <= '0';
				counter_next <= (OTHERS => '0');
				down_indicator <= '1';
				moving_up <= '0';
		END CASE;
	END PROCESS;
END cuarch;