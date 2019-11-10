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
        up_buttons, down_buttons : INOUT std_logic_vector(floors - 1 DOWNTO 0);
        elevator_buttons : INOUT std_logic_vector(floors - 1 DOWNTO 0);
        current_floor : OUT std_logic_vector(floors_bits - 1 DOWNTO 0);
        up_indicator, down_indicator, door_open : OUT std_logic
    );
END elev_cnt;

ARCHITECTURE behavioural OF elev_cnt IS
    TYPE elevator_fsm IS (moving_up, moving_down, idle, open_door);
    SIGNAL state_reg, state_next : elevator_fsm;
    SIGNAL current_floor_internal : std_logic_vector(floors_bits - 1 DOWNTO 0);
    SIGNAL current_floor_next : std_logic_vector(floors_bits - 1 DOWNTO 0);
    SIGNAL current_floor_reg : std_logic_vector(floors_bits - 1 DOWNTO 0);
    SIGNAL up_indicator_internal, down_indicator_internal, door_open_internal : std_logic;
    SIGNAL req_reg, req_next : std_logic_vector(floors - 1 DOWNTO 0);
    SIGNAL req_reg_shift_l, req_reg_shift_r : unsigned(floors - 1 DOWNTO 0);
    -- SIGNAL floor_num : unsigned(floors_bits - 1 DOWNTO 0);
    SIGNAL count : std_logic;
    SIGNAL sys_en : std_logic;
    SIGNAL counter_reg, counter_next : unsigned (3 DOWNTO 0);
    SIGNAL req_nd : std_logic_vector (floors - 1 DOWNTO 0) := "1111111111";
BEGIN

    --outpu logic--
    current_floor <= current_floor_reg;
    door_open <= door_open_internal;
    up_indicator <= up_indicator_internal;
    down_indicator <= down_indicator_internal;
    count <= '0' WHEN (to_integer(counter_reg) < 10 AND to_integer(counter_reg) >= 0) ELSE
        '1';
    -- format request register------------------------
    -----------------------------------------------------------------------------------------------------------------------------------------------------------

    req_reg <= ((elevator_buttons(9) OR down_buttons(8)) &
        (elevator_buttons(8 DOWNTO 1) OR down_buttons(7 DOWNTO 0) OR up_buttons(8 DOWNTO 1)) &
        (elevator_buttons(0) OR up_buttons(0))) AND req_nd;

    -----------------------------------------------------------------------------------------------------------------------------------------------------------
    PROCESS (clk, rst, counter_reg)
    BEGIN
        IF (rst = '1') THEN
            sys_en <= '0';
            counter_reg <= (OTHERS => '0');
        ELSIF (clk'event AND clk = '1') THEN
            --
            IF (to_integer(counter_reg) < 10) THEN
                sys_en <= '0';
                counter_reg <= counter_reg + 1;
            ELSIF (to_integer(counter_reg) = 10) THEN
                sys_en <= '1';
                counter_reg <= (OTHERS => '0');
            END IF;
            --
        END IF;
    END PROCESS;

    PROCESS (sys_en, rst)
    BEGIN
        IF (rst = '1') THEN
            state_reg <= idle;
            current_floor_reg <= (OTHERS => '0');
            req_reg_shift_l <= (OTHERS => '0');
            req_reg_shift_r <= (OTHERS => '0');
            -- req_reg <= (OTHERS => '0');

        ELSIF (sys_en'event AND sys_en = '1') THEN
            state_reg <= state_next;
            current_floor_reg <= current_floor_next;
            -- req_reg <= req_next;
            --     counter_reg<=counter_next;
            req_reg_shift_l <= shift_left(unsigned(req_reg), floors - to_integer(unsigned(current_floor_reg)));
            req_reg_shift_r <= shift_right(unsigned(req_reg), to_integer(unsigned(current_floor_reg)) + 1);
        END IF;
    END PROCESS;

    PROCESS (state_reg, current_floor_reg, req_reg_shift_l, req_reg_shift_r, req_reg)
    BEGIN
        current_floor_next <= current_floor_reg;
        --req_next <= req_reg;
        -- req_next <= (elevator_buttons(9) OR down_buttons(8)) &
        -- (elevator_buttons(8 DOWNTO 1) OR down_buttons(7 DOWNTO 0) OR up_buttons(8 DOWNTO 1)) &
        -- (elevator_buttons(0) OR up_buttons(0));

        -- counter_next<= counter_reg+1;

        CASE state_reg IS

            WHEN idle =>

                --     counter_next<= (others<='0');
                -- req_next <= (elevator_buttons(9) OR down_buttons(8)) &
                --     (elevator_buttons(8 DOWNTO 1) OR down_buttons(7 DOWNTO 0) OR up_buttons(8 DOWNTO 1)) &
                --     (elevator_buttons(0) OR up_buttons(0));

                req_nd <= "1111111111";
                up_indicator_internal <= '0';
                down_indicator_internal <= '0';
                door_open_internal <= '0';

                IF (to_integer(req_reg_shift_l) > 0) THEN
                    state_next <= moving_down;
                ELSIF (to_integer(req_reg_shift_r) > 0) THEN
                    state_next <= moving_up;
                END IF;

            WHEN moving_up =>
                --  counter_next<= (others<='0');
                door_open_internal <= '0';
                up_indicator_internal <= '1';
                --  req_next<=req_reg;

                IF (req_reg(to_integer(unsigned(current_floor_reg))) = '1') THEN
                    state_next <= open_door;

                ELSIF (req_reg(to_integer(unsigned(current_floor_reg))) = '0') THEN

                    current_floor_next <= std_logic_vector(unsigned(current_floor_reg) + 1);
                    state_next <= moving_up;

                END IF;

            WHEN moving_down =>

                --   counter_next<= (others<='0');
                door_open_internal <= '0';
                down_indicator_internal <= '1';
                -- req_next<=req_reg;

                IF (req_reg(to_integer(unsigned(current_floor_reg))) = '1') THEN
                    state_next <= open_door;
                ELSIF (req_reg(to_integer(unsigned(current_floor_reg))) = '0') THEN
                    current_floor_next <= std_logic_vector(unsigned(current_floor_reg) - 1);
                    state_next <= moving_down;
                END IF;

            WHEN open_door =>
                door_open_internal <= '1';
                down_indicator_internal <= '0';
                up_indicator_internal <= '0';

                -- req_next <= (elevator_buttons(9) OR down_buttons(8)) &
                --     (elevator_buttons(8 DOWNTO 1) OR down_buttons(7 DOWNTO 0) OR up_buttons(8 DOWNTO 1)) &
                --     (elevator_buttons(0) OR up_buttons(0));

                req_nd(to_integer(unsigned(current_floor_reg))) <= '0';
                -- elevator_buttons(to_integer(unsigned(current_floor_reg))) <= '0';
                -- up_buttons(to_integer(unsigned(current_floor_reg))) <= '0';
                -- down_buttons(to_integer(unsigned(current_floor_reg))) <= '0';

                --IF (count= '1') then
                IF (to_integer(req_reg_shift_l) > 0) THEN
                    current_floor_next <= std_logic_vector(unsigned(current_floor_reg) - 1);
                    state_next <= moving_down;
                ELSIF (to_integer(req_reg_shift_r) > 0) THEN
                    current_floor_next <= std_logic_vector(unsigned(current_floor_reg) + 1);
                    state_next <= moving_up;
                    -- END IF;
                ELSE
                    state_next <= idle;
                END IF;
                --counter
        END CASE;
    END PROCESS;
END behavioural;