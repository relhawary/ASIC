LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Interleaver_tb IS
END Interleaver_tb;

ARCHITECTURE tbarch OF Interleaver_tb IS
    COMPONENT Interleaver_rtl_2
        PORT (
            clk, rst, data_in_ready : IN std_logic;
            data_out_valid : OUT std_logic;
            data_in : IN std_logic;
            data_out : OUT std_logic
        );
    END COMPONENT;
    SIGNAL clk : std_logic := '1';
    SIGNAL rst : std_logic := '0';
    SIGNAL data_in_ready : std_logic := '0';
    SIGNAL data_in : std_logic := '0';
    SIGNAL data_out : std_logic;
    SIGNAL data_out_valid : std_logic;

    CONSTANT period : TIME := 10 ns;
    CONSTANT test_in : std_logic_vector(0 TO 191) := x"2833E48D392026D5B6DC5E4AF47ADD29494B6C89151348CA";
    CONSTANT test_in_b : std_logic_vector(0 TO 191) := x"2833E48D392026D5B6DC5E4AF47ADD29494B6C89151348CA";
BEGIN
    uut : Interleaver_rtl_2
    PORT MAP(
        clk => clk,
        data_in_ready => data_in_ready,
        data_in => data_in,
        rst => rst,
        data_out => data_out,
        data_out_valid => data_out_valid
    );

    clk <= NOT clk AFTER (period/2);

    PROCESS
    BEGIN

        rst <= '1';
        data_in_ready <= '0';
        WAIT FOR (period);
        rst <= '0';
        WAIT FOR (period);
        data_in_ready <= '1';
        WAIT FOR (period);

        FOR i IN 0 TO 191 LOOP
            data_in <= test_in(i);
            WAIT FOR period;
        END LOOP;

        FOR j IN 0 TO 191 LOOP
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