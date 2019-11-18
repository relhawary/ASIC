LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY modulator_tb IS
END modulator_tb;

ARCHITECTURE tbarch OF modulator_tb IS
    COMPONENT modulator_rtl
        PORT (
            clk, rst, data_in_ready : IN std_logic;
            data_out_valid : OUT std_logic;
            data_in : IN std_logic;
            data_out_I, data_out_Q : OUT std_logic_vector(15 DOWNTO 0)
        );
    END COMPONENT;

    --signals

    SIGNAL clk : std_logic := '0';
    SIGNAL rst : std_logic := '0';
    SIGNAL data_in_ready : std_logic := '0';
    SIGNAL data_in : std_logic := '1';
    SIGNAL data_out_I : std_logic_vector(15 DOWNTO 0);
    SIGNAL data_out_Q : std_logic_vector(15 DOWNTO 0);
    SIGNAL data_out_valid : std_logic;

    --constants
    CONSTANT period : TIME := 10 ns;
    CONSTANT test_in : std_logic_vector(0 TO 191) := x"4B047DFA42F2A5D5F61C021A5851E9A309A24FD58086BD1E";

BEGIN
    uut : modulator_rtl
    PORT MAP(
        clk => clk,
        rst => rst,
        data_in_ready => data_in_ready,
        data_out_valid => data_out_valid,
        data_in => data_in,
        data_out_I => data_out_I,
        data_out_Q => data_out_Q
    );

    clk <= NOT clk AFTER (period/2);

    PROCESS
    BEGIN
        rst <= '1';
        data_in_ready <= '1';
        WAIT FOR (period);
        rst <= '0';
        WAIT FOR (period);

        FOR i IN 0 TO 191 LOOP
            data_in <= test_in(i);
            WAIT FOR period;
        END LOOP;

        WAIT;
    END PROCESS;
END tbarch;