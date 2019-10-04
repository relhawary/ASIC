library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity in_data_rom is
	port ( 
		clk : in std_logic;
		address : in std_logic_vector(0 to 6);
		data : out std_logic
	);
end in_data_rom;

Architecture in_data_romArch of in_data_rom is
constant theData : std_logic_vector := "101011001011110011010010000100010100110110101110000101010111011111000110110110111111010011001001";
begin
	process (clk)
	begin
		data<=theData(to_integer(unsigned(address)));
	end process;
end in_data_romArch;