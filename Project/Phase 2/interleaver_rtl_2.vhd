LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY interleaver_rtl_2 IS
    PORT (
        clk2, rst, data_in_ready_inlv : IN std_logic;
        data_out_valid_inlv : OUT std_logic;
        data_in_inlv : IN std_logic;
        data_out_inlv : OUT std_logic
    );
END interleaver_rtl_2;

ARCHITECTURE behav OF interleaver_rtl_2 IS

    --DPR component 
    COMPONENT dpr_interleaver IS
        PORT (
            address_a : IN STD_LOGIC_VECTOR (8 DOWNTO 0);
            address_b : IN STD_LOGIC_VECTOR (8 DOWNTO 0);
            clock : IN STD_LOGIC := '1';
            data_a : IN STD_LOGIC_VECTOR (0 DOWNTO 0);
            data_b : IN STD_LOGIC_VECTOR (0 DOWNTO 0);
            wren_a : IN STD_LOGIC := '0';
            wren_b : IN STD_LOGIC := '0';
            q_a : OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
            q_b : OUT STD_LOGIC_VECTOR (0 DOWNTO 0)
        );
    END COMPONENT;

    --dpr Signals
    SIGNAL address_a : std_logic_vector(8 DOWNTO 0);
    SIGNAL address_b : STD_LOGIC_VECTOR (8 DOWNTO 0);
    SIGNAL data_a : STD_LOGIC_VECTOR (0 DOWNTO 0);
    SIGNAL data_b : STD_LOGIC_VECTOR (0 DOWNTO 0);
    SIGNAL wren_a : STD_LOGIC := '0';
    SIGNAL wren_b : STD_LOGIC := '0';
    SIGNAL q_a : STD_LOGIC_VECTOR (0 DOWNTO 0);
    SIGNAL q_b : STD_LOGIC_VECTOR (0 DOWNTO 0);

    --interleaver FSM
    TYPE interleaver IS (idle, input_a, input_output);
    SIGNAL state_reg : interleaver;

    --signals
    SIGNAL data_out_int : std_logic;
    SIGNAL data_out_valid_int : std_logic;
    SIGNAL counter_a : std_logic_vector(7 DOWNTO 0);
    SIGNAL counter_b : std_logic_vector(8 DOWNTO 0);
BEGIN
    --dpr inst
    RAM_interleaver : dpr_interleaver
    PORT MAP
    (
        address_a => address_a,
        address_b => address_b,
        clock => clk2,
        data_a => data_a,
        data_b => data_b,
        wren_a => wren_a,
        wren_b => wren_b,
        q_a => q_a,
        q_b => q_b
    );
    --output logic
    data_out_valid_inlv <= data_out_valid_int;
    data_out_inlv <= data_out_int;

    --FSM
    PROCESS (clk2, rst)
    BEGIN
        IF (rst = '0') THEN

            counter_a <= (OTHERS => '0');
            counter_b <= (OTHERS => '0');
            data_out_int <= '0';
            data_out_valid_int <= '0';
            wren_a <= '1';
            wren_b <= '0';
            address_a <= (OTHERS => '0');
            address_b <= (OTHERS => '0');

        ELSIF (clk2'event AND clk2 = '1') THEN

            data_out_int <= '0';
            data_out_valid_int <= '0';
            counter_a <= counter_a;
            counter_b <= counter_b;
            address_b <= address_b;
            address_a <= address_a;
            wren_a <= wren_a;
            wren_b <= wren_b;

            CASE state_reg IS
                WHEN idle =>
                    IF (data_in_ready_inlv = '1') THEN
                        state_reg <= input_a;
                        --address_a <= std_logic_vector(to_unsigned(12 * (to_integer(unsigned(counter_a) MOD "10000")) + to_integer(unsigned(counter_a)/"10000"), 9));
                        --counter_a <= std_logic_vector(unsigned(counter_a) + "00000001");
                        data_a(0) <= data_in_inlv;
                    ELSE
                        state_reg <= idle;
                    END IF;

                WHEN input_a =>

                    IF (to_integer(unsigned(counter_a)) < 191) THEN
                        data_a(0) <= data_in_inlv;
                        address_a <= std_logic_vector(to_unsigned(12 * (to_integer(unsigned(counter_a) MOD "10000")) + to_integer(unsigned(counter_a)/"10000"), 9));
                        counter_a <= std_logic_vector(unsigned(counter_a) + "00000001");
                        counter_b <= std_logic_vector(unsigned(counter_b) + "00000001");
                        state_reg <= input_a;
                    ELSE
                        data_a(0) <= data_in_inlv;
                        address_a <= std_logic_vector(to_unsigned(12 * (to_integer(unsigned(counter_a) MOD "10000")) + to_integer(unsigned(counter_a)/"10000"), 9));
                        counter_a <= (OTHERS => '0');
                        counter_b <= std_logic_vector(unsigned(counter_b) + "00000001");
                        address_b <= "000000001";
                        state_reg <= input_output;
                    END IF;

                WHEN input_output =>

                    data_out_int <= q_b(0);
                    state_reg <= input_output;
                    IF (to_integer(unsigned(address_b)) < 384) THEN
                        address_b <= std_logic_vector(unsigned(address_b) + "00000001");
                        data_out_valid_int <= '1';
                    ELSE
                        address_b <= "000000001";
                        data_out_valid_int <= '1';
                    END IF;

                    IF (data_in_ready_inlv = '1') THEN
                        data_a(0) <= data_in_inlv;
                        IF (to_integer(unsigned(counter_b)) >= 0 AND to_integer(unsigned(counter_b)) < 192) THEN
                            counter_b <= std_logic_vector(unsigned(counter_b) + "00000001");
                            address_a <= std_logic_vector(to_unsigned(12 * (to_integer(unsigned(counter_a) MOD "10000")) + to_integer(unsigned(counter_a)/"10000"), 9));
                            IF (to_integer(unsigned(counter_a)) < 192) THEN
                                counter_a <= std_logic_vector(unsigned(counter_a) + "00000001");
                            ELSE
                                counter_a <= (OTHERS => '0');
                            END IF;
                        ELSIF (to_integer(unsigned(counter_b)) >= 192 AND to_integer(unsigned(counter_b)) < 383) THEN
                            counter_b <= std_logic_vector(unsigned(counter_b) + "00000001");
                            address_a <= std_logic_vector(to_unsigned(12 * (to_integer(unsigned(counter_a) MOD "10000")) + to_integer(unsigned(counter_a)/"10000") + 192, 9));
                            IF (to_integer(unsigned(counter_a)) < 192) THEN
                                counter_a <= std_logic_vector(unsigned(counter_a) + "00000001");
                            ELSE
                                counter_a <= (OTHERS => '0');
                            END IF;
                        ELSIF (to_integer(unsigned(counter_b)) = 383) THEN
                            counter_b <= (OTHERS => '0');
                            counter_a <= (OTHERS => '0');
                            address_a <= std_logic_vector(to_unsigned(12 * (to_integer(unsigned(counter_a) MOD "10000")) + to_integer(unsigned(counter_a)/"10000") + 192, 9));
                        END IF;
                    END IF;
            END CASE;
        END IF;
    END PROCESS;
END behav;