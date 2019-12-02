LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY interleaver_rtl IS
    PORT (
        clk, rst, data_in_ready : IN std_logic;
        data_out_valid : OUT std_logic;
        data_in : IN std_logic;
        data_out : OUT std_logic
    );
END interleaver_rtl;

ARCHITECTURE behav OF interleaver_rtl IS

    --interleaver fsm
    TYPE interleaver IS (idle, fill_buffer_A, fill_buffer_b);

    -- signals
    SIGNAL data_out_int : std_logic;
    SIGNAL data_out_valid_int : std_logic;
    SIGNAL buff_a : std_logic_vector(0 TO 191);
    SIGNAL buff_b : std_logic_vector(0 TO 191);
    SIGNAL counter : std_logic_vector(7 DOWNTO 0);
    SIGNAL buff_a_full, buff_b_full : std_logic;
    SIGNAL state_reg : interleaver;
    SIGNAL index : INTEGER; -- (7 DOWNTO 0);

BEGIN
    data_out <= data_out_int;
    data_out_valid <= data_out_valid_int;
    index <= 12 * (to_integer(unsigned(counter) MOD "10000")) + to_integer(unsigned(counter)/"10000");

    PROCESS (clk, rst)
    BEGIN
        IF (rst = '1') THEN
            buff_a <= (OTHERS => '0');
            buff_b <= (OTHERS => '0');
            counter <= (OTHERS => '0');
            buff_a_full <= '0';
            buff_b_full <= '0';
            state_reg <= idle;
            --index <= 0;
        ELSIF (clk'event AND clk = '1') THEN
            data_out_int <= '1';
            data_out_valid_int <= '0';
            --index <= 0;
            buff_b_full <= buff_b_full;
            buff_a_full <= buff_a_full;
            buff_a <= buff_a;
            buff_b <= buff_b;
            counter <= counter;

            CASE state_reg IS
                WHEN idle =>
                    counter <= (OTHERS => '0');
                    IF (data_in_ready = '1') THEN
                        -- IF (buff_a_full = '1') THEN
                        --     state_reg <= fill_buffer_B;
                        -- ELSIF (buff_b_full = '1') THEN
                        --     state_reg <= fill_buffer_A;
                        -- END IF;
                        state_reg <= fill_buffer_A;
                    ELSE
                        state_reg <= idle;
                    END IF;
                WHEN fill_buffer_A =>
                    IF (data_in_ready = '1') THEN
                        IF ((to_integer(unsigned(counter)) < 192)) THEN
                            IF (buff_b_full = '1') THEN
                                --index <= 12 * (to_integer(unsigned(counter) MOD "10000")) + to_integer(unsigned(counter)/"10000");
                                counter <= std_logic_vector(unsigned(counter) + "00000001");
                                buff_a(index) <= data_in;
                                state_reg <= fill_buffer_A;
                                --data_out_int <= buff_b(to_integer(index));
                                data_out_int <= buff_b(to_integer(unsigned(counter)));
                                data_out_valid_int <= '1';
                            ELSE
                                --index <= 12 * (to_integer(unsigned(counter) MOD "10000")) + to_integer(unsigned(counter)/"10000");
                                counter <= std_logic_vector(unsigned(counter) + "00000001");
                                buff_a(index) <= data_in;
                                state_reg <= fill_buffer_A;
                                data_out_valid_int <= '0';
                            END IF;
                        ELSE
                            --index <= 0;
                            counter <= (OTHERS => '0');
                            buff_a_full <= '1';
                            buff_b_full <= '0';
                            state_reg <= fill_buffer_b;
                        END IF;
                    ELSE
                        state_reg <= idle;
                    END IF;
                WHEN fill_buffer_b =>
                    IF (data_in_ready = '1') THEN
                        IF (to_integer(unsigned(counter)) < 192) THEN
                            IF (buff_a_full = '1') THEN
                                --  index <= 12 * (to_integer(unsigned(counter) MOD "10000")) + to_integer(unsigned(counter)/"10000");
                                counter <= std_logic_vector(unsigned(counter) + "00000001");
                                buff_b(index) <= data_in;
                                state_reg <= fill_buffer_B;
                                --data_out_int <= buff_a(to_integer(index));
                                data_out_int <= buff_a(to_integer(unsigned(counter)));
                                --buff_a(index) <= data_in
                                data_out_valid_int <= '1';
                            ELSE
                                --  index <= 12 * (to_integer(unsigned(counter) MOD "10000")) + to_integer(unsigned(counter)/"10000");
                                counter <= std_logic_vector(unsigned(counter) + "00000001");
                                buff_b(index) <= data_in;
                                state_reg <= fill_buffer_B;
                                data_out_valid_int <= '0';
                            END IF;
                        ELSE
                            -- index <= 0;
                            counter <= (OTHERS => '0');
                            buff_a_full <= '0';
                            buff_b_full <= '1';
                            state_reg <= fill_buffer_A;
                        END IF;
                    ELSE
                        state_reg <= idle;
                    END IF;
            END CASE;
        END IF;
    END PROCESS;
END behav;