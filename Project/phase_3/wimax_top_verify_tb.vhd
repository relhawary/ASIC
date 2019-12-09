LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY wimax_top_verify_tb IS
END wimax_top_verify_tb;

ARCHITECTURE tbarch OF wimax_top_verify_tb IS
    COMPONENT wimax_top_verify
        PORT (
            clk, reset : IN std_logic;
            pass_mod, pass_prbs, pass_inlv, pass_fec : OUT std_logic
        );
    END COMPONENT;

    SIGNAL clk : std_logic := '1';
    SIGNAL reset : std_logic := '0';
    SIGNAL pass_mod, pass_prbs, pass_inlv, pass_fec : std_logic := '0';
    CONSTANT period : TIME := 20 ns;
BEGIN
    uut : wimax_top_verify
    PORT MAP(
        clk => clk,
        reset => reset,
        pass_mod => pass_mod,
        pass_prbs => pass_prbs,
        pass_inlv => pass_inlv,
        pass_fec => pass_fec
    );

    clk <= NOT clk AFTER (period/2);

    PROCESS
    BEGIN
        reset <= '1';
        WAIT FOR (period);
        reset <= '0';
        WAIT FOR (period);
        WAIT;
    END PROCESS;
END tbarch;