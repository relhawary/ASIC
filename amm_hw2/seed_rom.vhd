library ieee;
use ieee.std_logic_1164.all;

entity seed_rom is
port(
seed:out std_logic_vector(0 to 14)
);
end seed_rom;

architecture behavioral of seed_rom is
    constant seed_load:std_logic_vector:="011011100010101"; 
    begin
    seed<=seed_load;
end behavioral;