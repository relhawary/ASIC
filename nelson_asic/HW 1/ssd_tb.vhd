Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SSD_tb is
end SSD_tb;

architecture SSD_tb_arch of SSD_tb is
component SSD
port(
		input: in std_logic_vector(3 downto 0);
		output: out std_logic_vector(6 downto 0)
	);
end component;

signal input_in: std_logic_vector(3 downto 0);
signal output_out: std_logic_vector(6 downto 0);

begin

uut:SSD
port map (input=>input_in,output=>output_out);

process 
variable error_status:boolean;
begin
-- Test vectors generation
for i in 0 to 9 loop
	input_in<=std_logic_vector(to_unsigned(i,input_in'length));
	wait for 100 ns;
	-- Verifier
	wait for 25 ns;
	if(((i = 0)and(output_out="1000000"))or 
	((i = 1)and(output_out="1111001"))or 
	((i = 2)and(output_out="0100100"))or 
	((i = 3)and(output_out="0110000"))or 
	((i = 4)and(output_out="0011001"))or
	((i = 5)and(output_out="0010010"))or
	((i = 6)and(output_out="0000010"))or 
	((i = 7)and(output_out="1111000"))or
	((i = 8)and(output_out="0000000"))or
	((i = 9)and(output_out="0010000")))
	then
		error_status:= false;
	else
		error_status:= true;
	end if;
	--error reporting
	assert not error_status
		report "critical failure."
		severity note;
end loop;
	wait;
end process;
end SSD_tb_arch;