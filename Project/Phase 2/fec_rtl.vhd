LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY fec_rtl IS
    PORT (
        clk1, clk2, rst, data_in_ready : IN std_logic;
        data_out_valid : OUT std_logic;
        data_in : IN std_logic_vector(0 DOWNTO 0);
        data_out : OUT std_logic
    );
END fec_rtl;

ARCHITECTURE behav OF fec_rtl IS
    --DPR component
    COMPONENT dpr IS
        PORT (
            address_a : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            address_b : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
            data_a : IN STD_LOGIC_VECTOR (0 DOWNTO 0);
            data_b : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            inclock : IN STD_LOGIC;--:= '1'; -----oppppppppsssssss
            outclock : IN STD_LOGIC;
            wren_a : IN STD_LOGIC := '0';
            wren_b : IN STD_LOGIC := '0';
            q_a : OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
            q_b : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
        );
    END COMPONENT;
    --dpr signals 

    SIGNAL address_a : std_logic_vector(7 DOWNTO 0);
    SIGNAL address_b : std_logic_vector(4 DOWNTO 0) := "00000";
    SIGNAL data_a : std_logic_vector(0 DOWNTO 0);
    SIGNAL data_b : std_logic_vector(7 DOWNTO 0);
    SIGNAL wren_a : STD_LOGIC;
    SIGNAL wren_b : STD_LOGIC := '0';
    SIGNAL q_a : STD_LOGIC_vector(0 DOWNTO 0);
    SIGNAL q_b : STD_LOGIC_vector(7 DOWNTO 0);

    --tailbiting fsm

    TYPE encoderState IS (idle, init, hold, addressb, shiftx, shifty);

    -- signals

    SIGNAL data_out_int : std_logic;
    SIGNAL data_out_valid_int : std_logic;
    SIGNAL shift_reg : std_logic_vector(5 DOWNTO 0);
    SIGNAL state_reg : encoderState;
    SIGNAL state_counter : std_logic_vector(2 DOWNTO 0);
    SIGNAL holdCount : INTEGER;
    SIGNAL holdC : std_logic;

BEGIN

    RAM_2port : dpr
    PORT MAP
    (
        address_a => address_a,
        address_b => address_b,
        inclock => clk1,
        outclock => clk2,
        data_a => data_in,
        data_b => data_b,
        wren_a => wren_a,
        wren_b => wren_b,
        q_a => q_a,
        q_b => q_b
    );

    data_out <= data_out_int;
    data_out_valid <= data_out_valid_int;

    PROCESS (clk1, rst)
    BEGIN
        IF (rst = '1') THEN
            wren_a <= '0';
            wren_b <= '0';
            data_a <= (OTHERS => '0');
            address_a <= (OTHERS => '0');
            -- address_b<=(others=>'0');
        ELSIF (clk1'event AND clk1 = '1') THEN
            wren_b <= '0';
            -- address_b<=address_b;
            IF (data_in_ready = '1') THEN
                wren_a <= '1';
                data_a <= data_in;
                IF (to_integer(unsigned(address_a)) < 191) THEN
                    address_a <= (std_logic_vector(unsigned(address_a) + "00000001"));
                ELSE
                    address_a <= (OTHERS => '0');
                END IF;
            ELSE
                wren_a <= '0';
                data_a <= data_a;
            END IF;
        END IF;
    END PROCESS;

    PROCESS (clk2, rst)
    BEGIN
        IF (rst = '1') THEN
            data_out_int <= '0';
            data_out_valid_int <= '0';
            state_reg <= idle;
            state_counter <= (OTHERS => '0');
            --buff_temp <= (OTHERS => '0');
            address_b <= (OTHERS => '0');
            holdCount <= 0;
        ELSIF (clk2'event AND clk2 = '1') THEN
            --default conditions
            data_out_int <= '0';
            data_out_valid_int <= '0';
            shift_reg <= shift_reg;
            state_counter <= state_counter;
            address_b <= address_b;
            holdCount <= holdCount;
            holdC <= holdC;
            --state machine switch case
            CASE state_reg IS

                WHEN idle =>
                    --state_reg <= hold;
                    IF (to_integer(unsigned(address_a)) > 96) THEN
                        --address_b <= "01011";

                        -- ELSIF (to_integer(unsigned(address_a))<96) THEN
                        -- state_reg <= init;
                        state_reg <= addressb;
                        --     address_b <= "11011";
                    ELSE
                        state_reg <= idle;
                    END IF;

                WHEN addressb =>
                    state_reg <= hold;
                    --holdCount <= 0;
                    holdC <= '0';
                    IF (to_integer(unsigned(address_a)) > 96) THEN
                        address_b <= "01011";
                    ELSE
                        address_b <= "10111";
                    END IF;
                WHEN hold =>
                    --     IF (address_b = "01011") THEN
                    --     address_b <= (OTHERS => '0');
                    -- ELSIF (address_b = "11011") THEN
                    --     address_b <= "01100";
                    -- END IF;  
                    IF (holdCount = 1) THEN
                        -- holdCount <= 0;
                        IF (holdC = '0') THEN
                            state_reg <= init;
                        ELSIF (holdC = '1') THEN
                            state_reg <= shiftx;
                        END IF;
                    ELSE
                        state_reg <= hold;
                        holdCount <= holdCount + 1;
                    END IF;

                WHEN init =>
                    holdC <= '1';
                    state_reg <= hold;
                    shift_reg <= q_b(7 DOWNTO 2);
                    holdCount <= 0;
                    state_counter <= (OTHERS => '0');

                    IF (address_b = "01011") THEN
                        address_b <= (OTHERS => '0');
                    ELSIF (address_b = "10111") THEN
                        address_b <= "01100";
                    END IF;

                WHEN shiftx =>
                    -- IF (to_integer(unsigned(address_b)) = 12) THEN
                    --     -- state_reg <= addressb;
                    --     state_reg <= init;
                    --     -- address_b <= "11011";
                    -- ELSIF (to_integer(unsigned(address_b)) = 24) THEN
                    --     state_reg <= addressb;
                    --     --address_b <= "01011";
                    -- ELSE
                    data_out_int <= q_b(to_integer(unsigned(state_counter)))XOR shift_reg(5) XOR shift_reg(4) XOR shift_reg(3) XOR shift_reg(0);
                    address_b <= address_b;
                    state_reg <= shifty;
                    data_out_valid_int <= '1';
                    --END IF;
                    IF (to_integer(unsigned(state_counter)) = 7 AND (to_integer(unsigned(address_b)) /= 11 AND to_integer(unsigned(address_b)) /= 23)) THEN
                        address_b <= std_logic_vector(unsigned(address_b) + "00001");
                    ELSE
                        address_b <= address_b;
                    END IF;

                WHEN shifty =>
                    shift_reg <= q_b(to_integer(unsigned(state_counter))) & shift_reg(5 DOWNTO 1);
                    data_out_int <= q_b(to_integer(unsigned(state_counter))) XOR shift_reg(4) XOR shift_reg(3) XOR shift_reg(1) XOR shift_reg(0);
                    data_out_valid_int <= '1';
                    IF (to_integer(unsigned(address_b)) = 11 AND to_integer(unsigned(state_counter)) = 7 AND to_integer(unsigned(address_a)) < 96) THEN
                        -- state_reg <= addressb;
                        state_reg <= hold;
                        holdC <= '0';
                        -- holdCount <= 1;
                        address_b <= "10111";
                    ELSIF (to_integer(unsigned(address_b)) = 23 AND to_integer(unsigned(state_counter)) = 7 AND to_integer(unsigned(address_a)) > 96) THEN
                        --state_reg <= addressb;
                        state_reg <= hold;
                        holdC <= '0';
                        -- holdCount <= 1;
                        address_b <= "01011";
                    ELSE
                        -- shift_reg <= q_b(to_integer(unsigned(state_counter))) & shift_reg(5 DOWNTO 1);
                        -- data_out_int <= q_b(to_integer(unsigned(state_counter))) XOR shift_reg(4) XOR shift_reg(3) XOR shift_reg(1) XOR shift_reg(0);
                        -- data_out_valid_int <= '1';
                        state_reg <= shiftx;
                        IF (to_integer(unsigned(state_counter)) = 7) THEN
                            state_counter <= (OTHERS => '0');
                            -- address_b <= std_logic_vector(unsigned(address_b) + "00001");
                        ELSE
                            state_counter <= std_logic_vector(unsigned(state_counter) + "001");
                        END IF;
                    END IF;
            END CASE;

        END IF;
    END PROCESS;
END behav;