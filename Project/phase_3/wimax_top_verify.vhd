LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY wimax_top_verify IS
    PORT (
        clk, reset : IN std_logic;
        pass_mod, pass_prbs, pass_fec, pass_inlv : OUT std_logic
    );
END wimax_top_verify;

ARCHITECTURE wimaxbehav OF wimax_top_verify IS
    --components

    COMPONENT pll IS
        PORT (
            refclk : IN std_logic; --  refclk.clk
            rst : IN std_logic; --   reset.reset
            outclk_0 : OUT std_logic; -- outclk0.clk
            outclk_1 : OUT std_logic; -- outclk1.clk
            locked : OUT std_logic --  locked.export
        );
    END COMPONENT;

    COMPONENT wimax_top IS
        PORT (
            clk1, clk2, rset, data_in_ready : IN std_logic;
            data_in : IN std_logic;
            prbs_out, prbs_out_valid : OUT std_logic;
            fec_out, fec_out_valid : OUT std_logic;
            inlv_out, inlv_out_valid : OUT std_logic;
            data_out_I, data_out_Q : OUT std_logic_vector(15 DOWNTO 0);
            data_out_valid : OUT std_logic
        );
    END COMPONENT;

    --signals
    SIGNAL clk1, clk2, res, data_in, data_in_ready : std_logic;
    SIGNAL prbs_out, prbs_out_valid : std_logic;
    SIGNAL fec_out, fec_out_valid : std_logic;
    SIGNAL inlv_out, inlv_out_valid : std_logic;
    SIGNAL data_out_I, data_out_Q : std_logic_vector(15 DOWNTO 0);
    SIGNAL data_out_valid : std_logic;
    -- SIGNAL pass_prbs, pass_fec, pass_inlv, pass_mod : std_logic;

    --counters
    SIGNAL counter_prbs : std_logic_vector(6 DOWNTO 0);
    SIGNAL counter_fec : std_logic_vector(7 DOWNTO 0);
    SIGNAL counter_inlv : std_logic_vector(7 DOWNTO 0);

    --rom
    CONSTANT rom_prbs_in : std_logic_vector(0 TO 95) := x"ACBCD2114DAE1577C6DBF4C9";
    CONSTANT rom_fec_in : std_logic_vector(0 TO 95) := x"558AC4A53A1724E163AC2BF9";
    CONSTANT rom_inlv_in : std_logic_vector(0 TO 191) := x"2833E48D392026D5B6DC5E4AF47ADD29494B6C89151348CA";
    CONSTANT rom_mod_in : std_logic_vector(0 TO 191) := x"4B047DFA42F2A5D5F61C021A5851E9A309A24FD58086BD1E";
BEGIN
    pll_inst : pll
    PORT MAP
    (
        refclk => clk,
        rst => reset,
        outclk_0 => clk2,
        outclk_1 => clk1,
        locked => res
    );

    wimax : wimax_top
    PORT MAP
    (
        clk1 => clk1,
        clk2 => clk2,
        rset => res,
        data_in => data_in,
        data_in_ready => data_in_ready,
        prbs_out => prbs_out,
        prbs_out_valid => prbs_out_valid,
        fec_out => fec_out,
        fec_out_valid => fec_out_valid,
        inlv_out => inlv_out,
        inlv_out_valid => inlv_out_valid,
        data_out_I => data_out_I,
        data_out_Q => data_out_Q,
        data_out_valid => data_out_valid
    );

    PROCESS (clk1, res)
    BEGIN
        IF (res = '0') THEN
            pass_prbs <= '0';
            --pass_mod <= '0';
            --pass_fec <= '0';
            --pass_inlv <= '0';
            counter_prbs <= (OTHERS => '0');
            -- counter_fec <= (OTHERS => '0');
            -- counter_inlv <= (OTHERS => '0');
            data_in_ready <= '0';
            data_in <= '0';
        ELSIF (clk1'event AND clk1 = '1') THEN
            IF (to_integer(unsigned(counter_prbs)) < 95) THEN
                counter_prbs <= std_logic_vector(unsigned(counter_prbs) + "0000001");
                data_in <= rom_prbs_in(to_integer(unsigned(counter_prbs)));
                data_in_ready <= '1';
                -- IF (prbs_out_valid = '1' AND prbs_out = rom_fec_in(to_integer(unsigned(counter_prbs)))) THEN
                --     pass_prbs <= '1';
                -- ELSE
                --     pass_prbs <= '0';
                -- END IF;
            ELSE
                counter_prbs <= (OTHERS => '0');
                data_in <= rom_prbs_in(to_integer(unsigned(counter_prbs)));
                data_in_ready <= '1';
                -- IF (prbs_out_valid = '1' AND prbs_out = rom_fec_in(to_integer(unsigned(counter_prbs)))) THEN
                --     pass_prbs <= '1';
                -- ELSE
                --     pass_prbs <= '0';
                -- END IF;
            END IF;
            IF (prbs_out_valid = '1' AND prbs_out = rom_fec_in(to_integer(unsigned(counter_prbs)))) THEN
                pass_prbs <= '1';
            ELSE
                pass_prbs <= '0';
            END IF;
        END IF;
    END PROCESS;
    PROCESS (clk2, res)
    BEGIN
        IF (res = '0') THEN
            pass_mod <= '0';
            pass_fec <= '0';
            pass_inlv <= '0';
        ELSIF (clk2'event AND clk2 = '1') THEN
            IF (to_integer(unsigned(counter_fec)) < 191) THEN
                counter_fec <= std_logic_vector(unsigned(counter_fec) + "00000001");
            ELSE
                counter_fec <= (OTHERS => '0');
            END IF;
            IF (fec_out_valid = '1' AND fec_out = rom_inlv_in(to_integer(unsigned(counter_fec)))) THEN
                pass_fec <= '1';
            ELSE
                pass_fec <= '0';
            END IF;
            IF (inlv_out_valid = '1' AND inlv_out = rom_mod_in(to_integer(unsigned(counter_fec)))) THEN
                pass_inlv <= '1';
            ELSE
                pass_inlv <= '0';
            END IF;
            IF (data_out_valid = '1' AND (data_out_I(0) = rom_mod_in(to_integer(unsigned(counter_fec))) OR data_out_Q(0) = rom_mod_in(to_integer(unsigned(counter_fec))))) THEN
                pass_mod <= '1';
            ELSE
                pass_mod <= '0';
            END IF;
        END IF;
    END PROCESS;
END wimaxbehav;