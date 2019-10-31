LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY RequestResolver IS
    GENERIC (
        floors : INTEGER := 10;
        floors_bits : INTEGER := 4
    );
    PORT (
        clk, rst : IN std_logic;
        up_buttons : IN std_logic_vector(floors - 2 DOWNTO 0);
        down_buttons : IN std_logic_vector(floors - 2 DOWNTO 0);
        elevator_buttons : IN std_logic_vector(floors - 1 DOWNTO 0);
        up_indicator, down_indicator : IN std_logic;
        current_floor : IN std_logic_vector (floors_bits - 1 DOWNTO 0);
        request : OUT std_logic_vector (floors_bits - 1 DOWNTO 0)
    );
END RequestResolver;

ARCHITECTURE resolver_arch OF RequestResolver IS
    --signal declaration
    --CONSTANT zeros : std_logic_vector(9 DOWNTO 0);
    TYPE state_definition IS (state_up, state_down, neither);
    SIGNAL state_previous : state_definition;
    SIGNAL going_up, going_down, going_up_current, going_down_current : std_logic_vector(9 DOWNTO 0);
    SIGNAL request_vector : std_logic_vector(9 DOWNTO 0);
    SIGNAL req_reg, req_next : std_logic_vector(9 DOWNTO 0);
BEGIN
    -- PROCESS (clk, rst)
    -- BEGIN
    --     IF (rst = '1') THEN
    --         <= (OTHERS => '0');  
    --     ELSIF (clk'event AND clk = '1') THEN

    --         req_reg <= req_next;
    --     END IF;
    -- END PROCESS;
    logic : PROCESS (state_previous, going_up, going_down, current_floor)
    BEGIN
       -- IF (state_previous = state_up or to_integer(unsigned(current_floor))=0) THEN
            goingUpLoop : FOR i IN floors-1 DOWNTO 0 LOOP
                IF (i > to_integer(unsigned(current_floor)) AND going_up(i) = '1') THEN
                    request <= std_logic_vector(to_unsigned(i, 4));
                ELSIF (i > to_integer(unsigned(current_floor)) AND (going_up(i) = '0' AND going_down(i) = '1')) THEN
                    request <= std_logic_vector(to_unsigned(i, 4));
                END IF;
            END LOOP; -- goingUpLoop
        --ELSIF (state_previous = state_down or to_integer(unsigned(current_floor))=floors-1) THEN
            goingDownLoop : FOR j IN 0 TO floors-1 LOOP
                IF (j < to_integer(unsigned(current_floor)) AND going_down(j) = '1') THEN
                    request <= std_logic_vector(to_unsigned(j, 4));
                ELSIF (j < to_integer(unsigned(current_floor)) AND (going_down(j) = '0' AND going_up(j) = '1')) THEN
                    request <= std_logic_vector(to_unsigned(j, 4));
                END IF;
            END LOOP; -- goingDownLoop
        --END IF;
    END PROCESS; -- logic
    going_up <= elevator_buttons(9) & (up_buttons(8 DOWNTO 0) OR elevator_buttons(8 DOWNTO 0));
    going_down <= (down_buttons(8 DOWNTO 0) OR elevator_buttons(9 DOWNTO 1)) & elevator_buttons(0);
        -- going_up_current <=
        -- request_vector <= going_up OR going_down;
        state_previous <= state_up WHEN (up_indicator = '1') ELSE
        state_down WHEN (down_indicator = '1') ELSE
        neither;
    --will infer latch
END resolver_arch;

--going up we loop from 9 to 0 
--going down we loop from 0 to 9

-----------------------------------using registers
