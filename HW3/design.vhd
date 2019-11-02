LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design IS
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
END design;

ARCHITECTURE elevatorarch OF design IS

	TYPE elevator_fsm IS(idle, up, down, door);
	SIGNAL state_reg, state_next : elevator_fsm;
	SIGNAL req_reg, req_next : std_logic_vector(floors - 1 DOWNTO 0);
	SIGNAL request, cur_floor : std_logic_vector(floor_bits - 1 DOWNTO 0);
	SIGNAL min_req, max_req : std_logic_vector(floor_bits - 1 DOWNTO 0);
	SIGNAL counter_reg, counter_next : unsigned (timer_counter_bits - 1 DOWNTO 0);
	SIGNAL up_indicator_int, down_indicator_int, door_open_int, counter_out : std_logic;
	SIGNAL temp : INTEGER;

BEGIN
	current_floor <= cur_floor;
	up_indicator <= up_indicator_int;
	down_indicator <= down_indicator_int;
	door_open <= door_open_int;
	counter_out <= '1' WHEN (to_integer(counter_reg) >= 0) AND (to_integer(counter_reg) < timer_counts) ELSE
		'0';

	PROCESS (clk, rst)
	BEGIN
		IF (rst = '1') THEN
			state_reg <= idle;
			req_reg <= B"0000000000";
			cur_floor <= B"0000";
			counter_reg <= B"0000";

		ELSIF (clk'event AND clk = '1') THEN
			state_reg <= state_next;
			req_reg <= req_next;
			counter_reg <= counter_next;
		END IF;
	END PROCESS;

	PROCESS (cur_floor, request)
	BEGIN
		IF (to_integer(unsigned(request)) = to_integer(unsigned(cur_floor))) THEN
			state_next <= door;
		ELSIF (to_integer(unsigned(request)) > to_integer(unsigned(cur_floor)) AND (door_open_int = '0')) THEN
			state_next <= up;
		ELSIF (to_integer(unsigned(request)) < to_integer(unsigned(cur_floor)) AND (door_open_int = '0')) THEN
			state_next <= down;
		END IF;
	END PROCESS;

	PROCESS (clk, state_reg)
	BEGIN
		CASE state_reg IS
			WHEN idle =>
				up_indicator_int <= '0';
				down_indicator_int <= '0';
				door_open_int <= '0';
			WHEN up =>
				up_indicator_int <= '1';
				door_open_int <= '0';
				-- temp <= to_integer(unsigned(cur_floor)) + 1;
				-- cur_floor <= std_logic_vector(to_signed(temp, 4));
			WHEN down =>
				down_indicator_int <= '1';
				door_open_int <= '0';
				-- temp <= to_integer(unsigned(cur_floor)) - 1;
				-- cur_floor <= std_logic_vector(to_signed(temp, 4));
			WHEN door =>
				counter_next <= counter_reg + 1;
				IF (counter_out = '1') THEN
					door_open_int <= '1';
					--counter_next<=counter_reg + 1;
				ELSE
					door_open_int <= '0';
					counter_next <= (OTHERS => '0');
				END IF;
		END CASE;
	END PROCESS;

	--SHOULD BE HAVE CLK HERE ?
	PROCESS (clk, up_buttons, down_buttons, elevator_buttons)
	BEGIN

		req_next <= (elevator_buttons(9) OR down_buttons(8)) & (elevator_buttons(8 DOWNTO 1) OR up_buttons(8 DOWNTO 1) OR down_buttons(7 DOWNTO 0)) & (elevator_buttons(0) OR up_buttons(0));

		testloop : FOR i IN 0 TO floors - 1 LOOP
			--fml ask roeya
			IF (req_reg(i) = '1') THEN
				request <= std_logic_vector(to_signed(i, 4));
			END IF;
		END LOOP;

		templooppsmax : FOR k IN 0 TO floors - 1 LOOP
			IF (req_reg(k) = '1') THEN
				IF (to_integer(unsigned(max_req)) < k) THEN
					max_req <= std_logic_vector(to_signed(k, 4));
					min_req <= std_logic_vector(to_signed(9 - k, 4));

				END IF;
				IF (to_integer(unsigned(min_req)) > k) THEN
					min_req <= std_logic_vector(to_signed(k, 4));
				END IF;
			END IF;
		END LOOP;

		-- templooppsmin : FOR l IN floors - 1 DOWNTO 0 LOOP
		-- 	IF (req_reg(l) = '1') THEN
		-- 		IF (to_integer(unsigned(min_req)) > l) THEN
		-- 			min_req <= std_logic_vector(to_signed(l, 4));
		-- 		END IF;

		-- 	END IF;
		-- END LOOP;
	END PROCESS;

END elevatorarch;