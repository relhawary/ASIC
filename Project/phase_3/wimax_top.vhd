LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY wimax_top IS
    PORT (
        clk, rset, data_in_ready : IN std_logic;
        data_in : IN std_logic;
        data_out_I, data_out_Q : OUT std_logic_vector(15 DOWNTO 0);
        data_out_valid : OUT std_logic
    );
END wimax_top;

ARCHITECTURE wimax OF wimax_top IS
    --signals
    SIGNAL clk1, clk2, reset : std_logic;
    SIGNAL mid_1, mid_1_valid : std_logic;
    SIGNAL mid_2, mid_2_valid : std_logic;
    SIGNAL mid_3, mid_3_valid : std_logic;

    --component declarations 
    COMPONENT pll IS
        PORT (
            refclk : IN std_logic; --  refclk.clk
            rst : IN std_logic; --   reset.reset
            outclk_0 : OUT std_logic; -- outclk0.clk
            outclk_1 : OUT std_logic; -- outclk1.clk
            locked : OUT std_logic --  locked.export
        );
    END COMPONENT;
    COMPONENT prbs_rtl IS
        PORT (
            clk1, reset, data_in_ready_prbs : IN std_logic;
            data_in_prbs : IN std_logic;
            data_out_prbs : OUT std_logic;
            data_out_valid_prbs : OUT std_logic
        );
    END COMPONENT;

    COMPONENT fec_rtl IS
        PORT (
            clk1, clk2, rst, data_in_ready_fec : IN std_logic;
            data_out_valid_fec : OUT std_logic;
            data_in_fec : IN std_logic;
            data_out_fec : OUT std_logic
        );
    END COMPONENT;

    COMPONENT interleaver_rtl_2 IS
        PORT (
            clk2, rst, data_in_ready_inlv : IN std_logic;
            data_out_valid_inlv : OUT std_logic;
            data_in_inlv : IN std_logic;
            data_out_inlv : OUT std_logic
        );
    END COMPONENT;

    COMPONENT modulator_rtl IS
        PORT (
            clk, rst, data_in_ready_mod : IN std_logic;
            data_out_valid_mod : OUT std_logic;
            data_in_mod : IN std_logic;
            data_out_I, data_out_Q : OUT std_logic_vector(15 DOWNTO 0)
        );
    END COMPONENT;
BEGIN
    prbs : prbs_rtl
    PORT MAP
    (
        clk1 => clk1,
        reset => reset,
        data_in_ready_prbs => data_in_ready,
        data_in_prbs => data_in,
        data_out_prbs => mid_1,
        data_out_valid_prbs => mid_1_valid
    );

    fec : fec_rtl
    PORT MAP
    (
        clk1 => clk1, --pll
        clk2 => clk2, --pll
        rst => reset,
        data_in_ready_fec => mid_1_valid,
        data_in_fec => mid_1,
        data_out_fec => mid_2,
        data_out_valid_fec => mid_2_valid
    );

    interleaver : interleaver_rtl_2
    PORT MAP
    (
        clk2 => clk2,
        rst => reset,
        data_in_ready_inlv => mid_2_valid,
        data_in_inlv => mid_2,
        data_out_inlv => mid_3,
        data_out_valid_inlv => mid_3_valid
    );

    modulator : modulator_rtl
    PORT MAP
    (
        clk => clk2,
        rst => reset,
        data_in_mod => mid_3,
        data_in_ready_mod => mid_3_valid,
        data_out_I => data_out_I,
        data_out_Q => data_out_Q,
        data_out_valid_mod => data_out_valid
    );
    pll_clk : pll
    PORT MAP
    (
        refclk => clk,
        rst => rset,
        outclk_0 => clk2,
        outclk_1 => clk1,
        locked => reset
    );

END wimax;