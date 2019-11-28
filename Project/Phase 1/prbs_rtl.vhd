LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY prbs_rtl IS
    PORT (
        clk, reset, load, data_in_ready : IN std_logic;
        --seed : IN std_logic_vector(14 DOWNTO 0);
        data_in : IN std_logic;
        data_out : OUT std_logic;
        data_out_valid : OUT std_logic
    );
END prbs_rtl;

ARCHITECTURE prbs_arch OF prbs_rtl IS
    SIGNAL r_reg, r_next : std_logic_vector(14 DOWNTO 0);
    SIGNAL data_out_valid_int : std_logic;
    CONSTANT seed : std_logic_vector(14 DOWNTO 0) := "011011100010101";

BEGIN
    PROCESS (clk, reset)
    BEGIN
        IF (reset = '1') THEN
            r_reg <= (OTHERS => '0');
            data_out_valid_int <= '0';
        ELSIF (clk'event AND clk = '1') THEN
            IF (load = '1') THEN
                r_reg <= seed;
            ELSIF (data_in_ready = '1') THEN
                r_reg <= r_next;
                data_out_valid_int <= '1';
            END IF;
        END IF;
    END PROCESS;

    data_out_valid <= data_out_valid_int;
    r_next <= (r_reg(1) XOR r_reg(0)) & r_reg(14 DOWNTO 1);
    data_out <= (r_reg(1) XOR r_reg(0)) XOR data_in;

END prbs_arch;