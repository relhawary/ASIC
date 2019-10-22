library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult4X4 is
	port(
		a,b: in std_logic_vector(3 downto 0);
		o: out std_logic_vector(7 downto 0)
		);
end mult4X4;

architecture mult4X4_arch of mult4X4 is
begin
	o <=std_logic_vector(unsigned(a)*unsigned(b));
end mult4X4_arch;