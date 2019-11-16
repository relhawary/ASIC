LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY fec_rtl IS
    PORT (
        clk1, clk2, rst, data_in_ready : IN std_logic;
        data_out_valid : OUT std_logic;
        data_in : IN std_logic;
        data_out : OUT std_logic
    );
END fec_rtl;

ARCHITECTURE behav OF fec_rtl IS
    --tailbiting fsm

    TYPE encoderState IS (idle, init, shiftx, shifty);

    -- signals
    SIGNAL data_out_int : std_logic;
    SIGNAL data_out_valid_int : std_logic;
    SIGNAL buff_a : std_logic_vector(0 TO 95);
    SIGNAL buff_b : std_logic_vector(0 TO 95);
    SIGNAL counter : std_logic_vector(7 DOWNTO 0);
    SIGNAL buff_a_full, buff_b_full : std_logic;
    SIGNAL shift_reg : std_logic_vector(5 DOWNTO 0);
    SIGNAL state_reg : encoderState;
    SIGNAL state_counter : std_logic_vector(6 DOWNTO 0);
    SIGNAL buff_temp : std_logic_vector(0 TO 95);
BEGIN
    data_out <= data_out_int;
    data_out_valid <= data_out_valid_int;

    PROCESS (clk1, rst)
    BEGIN
        IF (rst = '1') THEN

            buff_a <= (OTHERS => '0');
            buff_b <= (OTHERS => '0');
            counter <= (OTHERS => '0');
            buff_a_full <= '0';
            buff_b_full <= '0';

        ELSIF (clk1'event AND clk1 = '1') THEN
            IF (data_in_ready = '1') THEN
                -- IF (buff_a_full = '0') THEN
                IF (to_integer(unsigned(counter)) < 95) THEN
                    buff_a(to_integer(unsigned(counter))) <= data_in;
                    counter <= (std_logic_vector(unsigned(counter) + "0001"));
                ELSIF (to_integer(unsigned(counter)) = 95) THEN
                    buff_a(to_integer(unsigned(counter))) <= data_in;
                    counter <= (std_logic_vector(unsigned(counter) + "00000001"));
                    buff_a_full <= '1';
                    buff_b_full <= '0';
                END IF;
                -- ELSIF (buff_a_full = '1') THEN
                IF ((to_integer(unsigned(counter)) > 95) AND (to_integer(unsigned(counter)) < 191)) THEN
                    buff_b(to_integer(unsigned(counter)) - 96) <= data_in;
                    counter <= (std_logic_vector(unsigned(counter) + "00000001"));
                ELSIF (to_integer(unsigned(counter)) = 191) THEN
                    buff_b(to_integer(unsigned(counter)) - 96) <= data_in;
                    counter <= (OTHERS => '0');
                    buff_a_full <= '0';
                    buff_b_full <= '1';
                END IF;
                -- END IF;
            ELSE
                buff_a <= buff_a;
                buff_b <= buff_b;
                counter <= counter;
                buff_b_full <= buff_b_full;
                buff_a_full <= buff_a_full;
            END IF;
        END IF;
    END PROCESS;

    PROCESS (clk2, rst, buff_a_full, buff_b_full)
    BEGIN
        IF (rst = '1') THEN
            data_out_int <= '0';
            data_out_valid_int <= '0';
            state_reg <= idle;
            state_counter <= (OTHERS => '0');
            buff_temp <= (OTHERS => '0');
        ELSIF (clk2'event AND clk2 = '1') THEN
            data_out_int <= '0';
            data_out_valid_int <= '0';
            shift_reg <= shift_reg;
            state_counter <= (OTHERS => '0');
            buff_temp <= buff_temp;
            CASE state_reg IS
                WHEN idle =>
                    IF (buff_a_full = '1' OR buff_b_full = '1') THEN
                        state_reg <= init;
                    ELSE
                        state_reg <= idle;
                    END IF;
                WHEN init =>
                    IF (buff_a_full = '1') THEN
                        shift_reg <= buff_a(90 TO 95);
                        buff_temp <= buff_a;
                        state_reg <= shiftx;
                    ELSIF (buff_b_full = '1') THEN
                        shift_reg <= buff_b(90 TO 95);
                        buff_temp <= buff_b;
                        state_reg <= shiftx;
                    END IF;
                WHEN shiftx =>
                    IF (to_integer(unsigned(state_counter)) < 96) THEN
                        data_out_int <= buff_temp(to_integer(unsigned(state_counter)))XOR shift_reg(0) XOR shift_reg(1) XOR shift_reg(2) XOR shift_reg(5);
                        shift_reg <= shift_reg(4 DOWNTO 0) & buff_temp(to_integer(unsigned(state_counter)));
                        state_counter <= std_logic_vector(unsigned(state_counter) + "0000001");
                        state_reg <= shifty;
                    ELSE
                        state_reg <= init;
                    END IF;
                WHEN shifty =>
                    --state_counter <= std_logic_vector(unsigned(state_counter) + "00000001");
                    state_counter <= state_counter;
                    data_out_int <= buff_temp(to_integer(unsigned(state_counter))) XOR shift_reg(1) XOR shift_reg(2) XOR shift_reg(4) XOR shift_reg(5);
                    state_reg <= shiftx;
            END CASE;

        END IF;
    END PROCESS;
END behav;