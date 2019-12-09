LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY prbs_tb IS
END prbs_tb;

ARCHITECTURE tbarch OF prbs_tb IS
    COMPONENT prbs_rtl
        PORT (
            clk, reset, load, data_in_ready : IN std_logic;
            -- seed : IN std_logic_vector(14 DOWNTO 0);
            data_in : IN std_logic;
            data_out : OUT std_logic;
            data_out_valid : OUT std_logic
        );
    END COMPONENT;

    SIGNAL clk : std_logic := '0';
    SIGNAL load : std_logic := '0';
    SIGNAL data_in_ready : std_logic := '0';
    SIGNAL reset : std_logic := '0';

    --SIGNAL seed : std_logic_vector (14 DOWNTO 0) := "000000000000000";
    SIGNAL test_in : std_logic_vector (95 DOWNTO 0) := x"ACBCD2114DAE1577C6DBF4C9";
    SIGNAL data_in : std_logic := '0';
    SIGNAL test_out : std_logic_vector (95 DOWNTO 0) := x"558AC4A53A1724E163AC2BF9";
    SIGNAL data_out_valid : std_logic := '0';
    SIGNAL data_out : std_logic := '0';

    SIGNAL fulld : std_logic_vector(95 DOWNTO 0);
    --SIGNAL fulld : std_logic_vector(23 DOWNTO 0);
    SIGNAL bitd : std_logic;
    CONSTANT PERIOD : TIME := 20 ns;
    --CONSTANT seed_value : std_logic_vector(14 DOWNTO 0) := "011011100010101";
BEGIN
    uut : prbs_rtl
    PORT MAP(
        clk => clk,
        --seed => seed,
        load => load,
        data_in_ready => data_in_ready,
        reset => reset,
        data_in => data_in,
        data_out => data_out,
        data_out_valid => data_out_valid
    );

    clk <= NOT clk AFTER PERIOD/2;

    PROCESS
    BEGIN
        reset <= '1';
        --data_in <= '0';
        WAIT FOR (1.5 * PERIOD);
        reset <= '0';
        WAIT FOR (1.5 * PERIOD);
        -- check seed load
        --WAIT UNTIL falling_edge(clk);
        load <= '1';
        --seed <= seed_value;
        WAIT FOR (2.5 * period);
        --WAIT UNTIL falling_edge(clk);
        load <= '0';
        data_in_ready <= '1';
        -- ASSERT(seed = seed_value)
        -- REPORT "seed load"
        --     SEVERITY note;
        --check input/output
        -- WAIT FOR (0.5 * PERIOD);
        FOR i IN 95 DOWNTO 0 LOOP
            --WAIT UNTIL RISING_edge(clk);
            data_in <= test_in(i);
            bitd <= test_out(i);
            fulld(i) <= data_out;
            WAIT FOR (PERIOD);
            ASSERT(data_out = test_out(i))
            REPORT "wrong output"
                SEVERITY note;
        END LOOP;
        WAIT;
    END PROCESS;
END tbarch;