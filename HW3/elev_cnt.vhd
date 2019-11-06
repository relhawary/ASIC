LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY elev_cnt IS
    GENERIC (
        floors : INTEGER := 10;
        floors_bits : INTEGER := 4;
        clk_delay : INTEGER := 10
    );
    PORT (
        clk, rst : IN std_logic;
        up_buttons, down_buttons : IN std_logic_vector(floors - 2 DOWNTO 0);
        elevator_buttons : IN std_logic_vector(floors - 1 DOWNTO 0);
        current_floor : OUT std_logic_vector(floors_bits - 1 DOWNTO 0);
        up_indicator, down_indicator, door_open : OUT std_logic
    );
END elev_cnt;

ARCHITECTURE behavioural OF elev_cnt IS
    TYPE elevator_fsm IS (moving_up, moving_down, idle, open_door);
    SIGNAL state_reg, state_next : elevator_fsm;
    SIGNAL current_floor_internal : std_logic_vector(floors_bits - 1 DOWNTO 0);
    SIGNAL current_floor_next : std_logic_vector(floors_bits - 1 DOWNTO 0) := b"0000";
    SIGNAL current_floor_reg : std_logic_vector(floors_bits - 1 DOWNTO 0);
    SIGNAL up_indicator_internal, down_indicator_internal, door_open_internal : std_logic;
    SIGNAL req_reg : std_logic_vector(floors - 1 DOWNTO 0);
    SIGNAL req_reg_shift_l, req_reg_shift_r : unsigned(floors - 1 DOWNTO 0);
    SIGNAL floor_num : unsigned(floors_bits - 1 DOWNTO 0);
    --SIGNAL int_floor_num : INTEGER RANGE 0 TO 9;

BEGIN
    current_floor <= current_floor_reg;
    door_open <= door_open_internal;
    up_indicator <= up_indicator_internal;
    down_indicator <= down_indicator_internal;

    -- format request register------------------------
    req_reg <= (elevator_buttons(9) OR down_buttons(8)) &
        (elevator_buttons(8 DOWNTO 1) OR down_buttons(7 DOWNTO 0) OR up_buttons(8 DOWNTO 1)) &
        (elevator_buttons(0) OR up_buttons(0));
    --shift to check if floors above/below have requests--------------
    -- PROCESS (req_reg)
    --BEGIN
    req_reg_shift_l <= shift_left(unsigned(req_reg), floors - to_integer(unsigned(current_floor_reg)));
    req_reg_shift_r <= shift_right(unsigned(req_reg), to_integer(unsigned(current_floor_reg)) + 1);
    --END PROCESS;

    PROCESS (clk, rst)
    BEGIN
        IF (rst = '1') THEN
            state_reg <= idle;
            current_floor_reg <= (OTHERS => '0');
        ELSIF (clk'event AND clk = '1') THEN
            state_reg <= state_next;
            -- current_floor_reg <= current_floor_next;
        END IF;
    END PROCESS;

    PROCESS (state_reg, current_floor_reg, req_reg, req_reg_shift_l, req_reg_shift_r)
    BEGIN
        CASE state_reg IS
            WHEN idle =>
                up_indicator_internal <= '0';
                down_indicator_internal <= '0';
                door_open_internal <= '0';

                IF (to_integer(req_reg_shift_l) > 0) THEN
                    state_next <= moving_down;
                ELSIF (to_integer(req_reg_shift_r) > 0) THEN
                    state_next <= moving_up;
                END IF;

            WHEN moving_up =>
                -- IF (to_integer(req_reg_shift_r) > 0) THEN
                door_open_internal <= '0';
                up_indicator_internal <= '1';
                current_floor_reg <= std_logic_vector(unsigned(current_floor_reg) + 1);
                IF (req_reg(to_integer(unsigned(current_floor_reg))) = '1') THEN
                    -- current_floor_internal <= std_logic_vector(floor_num);
                    state_next <= open_door;
                ELSIF (req_reg(to_integer(unsigned(current_floor_reg))) = '0') THEN
                    state_next <= moving_up;
                END IF;
                --ELSIF (to_integer(req_reg_shift_r) > 0) THEN
                --ELSE
                --  state_next <= idle;
                --END IF;
            WHEN moving_down =>
                --  IF (to_integer(req_reg_shift_l) > 0) THEN
                door_open_internal <= '0';
                down_indicator_internal <= '1';
                current_floor_reg <= std_logic_vector(unsigned(current_floor_reg) - 1);
                IF (req_reg(to_integer(unsigned(current_floor_reg))) = '1') THEN
                    -- current_floor_internal <= std_logic_vector(to_signed(int_floor_num, floors_bits));
                    state_next <= open_door;
                ELSIF (req_reg(to_integer(unsigned(current_floor_reg))) = '0') THEN
                    state_next <= moving_down;
                END IF;
                -- ELSIF (to_integer(req_reg_shift_l) > 0) THEN
                --ELSE
                --   state_next <= idle;
                --END IF;
            WHEN open_door =>
                door_open_internal <= '1';
                --counter
        END CASE;
    END PROCESS;
END behavioural;