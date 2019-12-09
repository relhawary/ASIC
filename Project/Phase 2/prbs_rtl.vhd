LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY prbs_rtl IS
    PORT (
        clk1, reset, data_in_ready_prbs : IN std_logic;
        data_in_prbs : IN std_logic;
        data_out_prbs : OUT std_logic;
        data_out_valid_prbs : OUT std_logic
    );
END prbs_rtl;

ARCHITECTURE prbs_arch OF prbs_rtl IS
    SIGNAL r_reg, r_next : std_logic_vector(14 DOWNTO 0);
    SIGNAL data_out_valid_int : std_logic;
    CONSTANT seed : std_logic_vector(14 DOWNTO 0) := "011011100010101";

BEGIN
    PROCESS (clk1, reset)
    BEGIN
        IF (reset = '0') THEN
            r_reg <= seed;
            data_out_valid_int <= '0';
        ELSIF (clk1'event AND clk1 = '1') THEN
            IF (data_in_ready_prbs = '0') THEN
                r_reg <= r_reg;
            ELSIF (data_in_ready_prbs = '1') THEN
                r_reg <= r_next;
                data_out_valid_int <= '1';
            END IF;
        END IF;
    END PROCESS;

    data_out_valid_prbs <= data_out_valid_int;
    r_next <= (r_reg(1) XOR r_reg(0)) & r_reg(14 DOWNTO 1);
    data_out_prbs <= (r_reg(1) XOR r_reg(0)) XOR data_in_prbs;

END prbs_arch;