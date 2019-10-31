LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY yaraberhamny IS
    GENERIC (
        floors : INTEGER := 10;
        floors_bits : INTEGER := 4;
        clk_delay : INTEGER := 10
    );
    PORT (
        clk, rst : IN std_logic;
        up_buttons, down_buttons : IN std_logic_vector(floors - 2 DOWNTO 0);
        elevator_buttons : std_logic_vector(floors - 1 DOWNTO 0);
        current_floor : OUT std_logic_vector(floor_bits - 1 DOWNTO 0);
        up_indicator, down_indicator, door_open : std_logic
    );
END yaraberhamny;

ARCHITECTURE fml_behavioural OF yaraberhamny IS

END fml_behavioural;