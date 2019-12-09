LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY modulator_rtl IS
    PORT (
        clk, rst, data_in_ready_mod : IN std_logic;
        data_out_valid_mod : OUT std_logic;
        data_in_mod : IN std_logic;
        data_out_I, data_out_Q : OUT std_logic_vector(15 DOWNTO 0)
    );
END modulator_rtl;

ARCHITECTURE behav OF modulator_rtl IS
    --signals

    SIGNAL data_out_valid_int : std_logic;
    SIGNAL data_out_I_int : std_logic_vector(15 DOWNTO 0);
    SIGNAL data_out_Q_int : std_logic_vector(15 DOWNTO 0);

    CONSTANT out_positive : std_logic_vector(15 DOWNTO 0) := x"5A7F";
    CONSTANT out_negative : std_logic_vector(15 DOWNTO 0) := x"A581";

    --modulator fsm

    TYPE modulator IS(idle, out_I, out_Q);
    SIGNAL state_reg : modulator;

BEGIN

    data_out_valid_mod <= data_out_valid_int;
    data_out_I <= data_out_I_int;
    data_out_Q <= data_out_Q_int;
    PROCESS (clk, rst)
    BEGIN
        IF (rst = '0') THEN
            data_out_I_int <= (OTHERS => '0');
            data_out_Q_int <= (OTHERS => '0');
            data_out_valid_int <= '0';
            state_reg <= idle;

        ELSIF (clk'event AND clk = '1') THEN
            data_out_I_int <= data_out_I_int;
            data_out_Q_int <= data_out_Q_int;
            data_out_valid_int <= '0';
            CASE state_reg IS

                WHEN idle =>

                    IF (data_in_ready_mod = '1') THEN
                        state_reg <= out_I;

                    ELSE
                        state_reg <= idle;
                    END IF;
                WHEN out_I =>

                    data_out_valid_int <= '1';

                    IF (data_in_mod = '0') THEN
                        data_out_I_int <= out_positive;
                        state_reg <= out_Q;
                    ELSIF (data_in_mod = '1') THEN
                        data_out_I_int <= out_negative;
                        state_reg <= out_Q;
                    END IF;

                WHEN out_Q =>

                    data_out_valid_int <= '1';

                    IF (data_in_mod = '0') THEN
                        data_out_Q_int <= out_positive;
                        state_reg <= out_I;
                    ELSIF (data_in_mod = '1') THEN
                        data_out_Q_int <= out_negative;
                        state_reg <= out_I;
                    END IF;

            END CASE;
        END IF;
    END PROCESS;
END behav;