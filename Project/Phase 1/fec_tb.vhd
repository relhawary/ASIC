LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY fec_tb IS
END fec_tb;

ARCHITECTURE tbarch OF fec_tb IS
    COMPONENT fec_rtl
        PORT (
            clk1, clk2, rst, data_in_ready : IN std_logic;
            data_out_valid : OUT std_logic;
            data_in : IN std_logic;
            data_out : OUT std_logic
        );
    END COMPONENT;

    SIGNAL clk1 : std_logic := '0';
    SIGNAL clk2 : std_logic := '0';
    SIGNAL rst : std_logic := '0';
    SIGNAL data_in_ready : std_logic := '0';
    SIGNAL data_in : std_logic := '0';
    SIGNAL data_out : std_logic;
    SIGNAL data_out_valid : std_logic;
    SIGNAL out_vector : std_logic_vector(0 TO 191);
    CONSTANT period : TIME := 20 ns;
    CONSTANT test_in : std_logic_vector(0 TO 95) := x"558AC4A53A1724E163AC2BF9";
    CONSTANT test_in_b : std_logic_vector(0 TO 95) := x"558AC4A53A1724E163AC2BF9";
    CONSTANT test_out : std_logic_vector(0 TO 191) := x"2833E48D392026D5B6DC5E4AF47ADD29494B6C89151348CA";
BEGIN
    uut : fec_rtl
    PORT MAP(
        clk1 => clk1,
        clk2 => clk2,
        data_in_ready => data_in_ready,
        data_in => data_in,
        rst => rst,
        data_out => data_out,
        data_out_valid => data_out_valid
    );

    clk1 <= NOT clk1 AFTER (period/2);
    clk2 <= NOT clk2 AFTER (period/4);

    PROCESS
    BEGIN

        rst <= '1';
        data_in_ready <= '1';
        WAIT FOR (1.5 * period);
        rst <= '0';
        WAIT FOR (0.5 * period);

        FOR i IN 0 TO 95 LOOP
            data_in <= test_in(i);
            WAIT FOR period;
        END LOOP;

        FOR j IN 0 TO 95 LOOP
            data_in <= test_in_b(j);
            WAIT FOR period;
        END LOOP;

        -- WAIT FOR (period/2);

        -- FOR k IN 0 TO 191 LOOP
        --     out_vector(k) <= data_out;
        --     WAIT FOR (period/2);
        -- END LOOP;

        WAIT;

    END PROCESS;
END tbarch;