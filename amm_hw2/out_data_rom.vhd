library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity out_data_rom is
	port ( 
		clk : in std_logic;
		address : in std_logic_vector(0 to 6);
		data : out std_logic
	);
end entity out_data_rom;

Architecture out_data_romArch of out_data_rom is
constant theData : std_logic_vector := "010101011000101011000100101001010011101000010111001001001110000101100011101011000010101111111001";
begin
	process (clk)
	begin
		data<=theData(to_integer(unsigned(address)));
	end process;
end architecture out_data_romArch;