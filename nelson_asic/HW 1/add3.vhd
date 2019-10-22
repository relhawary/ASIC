Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity add3 is
	port(	
			b: in std_logic_vector(3 downto 0);
			o: out std_logic_vector(3 downto 0)
			);
	end add3;
	
architecture add3_arch of add3 is
	begin
	
	with b select
		o<= "0000" when "0000",
			"0001" when "0001",
			"0010" when "0010",
			"0011" when "0011",
			"0100" when "0100",
			"1000" when "0101",
			"1001" when "0110",
			"1010" when "0111",
			"1011" when "1000",
			"1100" when "1001",
			"XXXX" when others;	
	end add3_arch;