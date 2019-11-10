LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY elev_cnt_tb IS
END elev_cnt_tb;

ARCHITECTURE tbarch OF elev_cnt_tb IS
    COMPONENT elev_cnt
        PORT (
            clk, rst : IN std_logic;
            up_buttons, down_buttons : IN std_logic_vector(floors - 2 DOWNTO 0);
            elevator_buttons : IN std_logic_vector(floors - 1 DOWNTO 0);
            current_floor : OUT std_logic_vector(floors_bits - 1 DOWNTO 0);
            up_indicator, down_indicator, door_open : OUT std_logic
        );
    END COMPONENT;

    SIGNAL clk : std_logic := '0';
    SIGNAL reset : std_logic := '0';
    CONSTANT period : TIME := 20 ns;