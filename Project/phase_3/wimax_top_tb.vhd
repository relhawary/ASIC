LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY wimax_top_tb IS
END wimax_top_tb;

ARCHITECTURE tbarch OF wimax_top_tb IS

    COMPONENT wimax_top IS
        PORT (
            clk, rset, data_in_ready : IN std_logic;
            data_in : IN std_logic;
            data_out_I, data_out_Q : OUT std_logic_vector(15 DOWNTO 0);
            data_out_valid : OUT std_logic
        );
    END COMPONENT;

    SIGNAL clk : std_logic := '1';
    SIGNAL rset : std_logic := '0';
    SIGNAL data_in_ready : std_logic := '0';
    SIGNAL data_in : std_logic := '0';
    SIGNAL data_out_I, data_out_Q : std_logic_vector(15 DOWNTO 0);
    SIGNAL data_out_valid : std_logic;

    CONSTANT period : TIME := 20 ns;
    CONSTANT test_in : std_logic_vector(0 TO 95) := x"ACBCD2114DAE1577C6DBF4C9";

BEGIN
    uut : wimax_top
    PORT MAP
    (
        clk => clk,
        rset => rset,
        data_in_ready => data_in_ready,
        data_in => data_in,
        data_out_I => data_out_I,
        data_out_Q => data_out_Q,
        data_out_valid => data_out_valid
    );

    clk <= NOT clk AFTER (period/2);

    PROCESS
    BEGIN
        rset <= '1';
        data_in_ready <= '0';
        WAIT FOR (1.5 * period);
        rset <= '0';
        WAIT FOR (0.5 * period);
        data_in_ready <= '1';
        --WAIT FOR (period);
        FOR i IN 0 TO 95 LOOP
            data_in <= test_in(i);
            WAIT FOR period;
        END LOOP;
        FOR j IN 0 TO 95 LOOP
            data_in <= test_in(j);
            WAIT FOR period;
        END LOOP;
        WAIT;
    END PROCESS;
END tbarch;