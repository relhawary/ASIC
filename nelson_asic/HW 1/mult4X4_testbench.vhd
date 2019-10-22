--===============================
-- Test bench mult4X4
--===============================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult4X4_testbench is
end mult4X4_testbench;

architecture mult4X4_testbench_arch of mult4X4_testbench is
	component mult4X4
		port(
			a,b: in std_logic_vector(3 downto 0);
			o: out std_logic_vector(7 downto 0)
			);
	end component;
	signal a_in,b_in: std_logic_vector(3 downto 0);
	signal o_out: std_logic_vector(7 downto 0);
	
	begin
	-- instantiate the circuit under test
	uut: mult4X4
		port map( a=>a_in, b=>b_in, o=>o_out);
	-- test 256 cases	
	process
	begin
	for i in 0 to 15 loop
		a_in<=std_logic_vector(to_unsigned(i,a_in'length));
		for j in 0 to 15 loop
			b_in<=std_logic_vector(to_unsigned(j,b_in'length));
			wait for 100 ns;
		end loop;
	end loop;
	wait;
	end process;

--Verifier

process
	variable error_status:boolean;
begin
	wait on a_in;
	wait on b_in;
	wait for 50 ns;
	if((unsigned(o_out)=unsigned(a_in)*unsigned(b_in)))
	then
		error_status:= false;
	else
		error_status:= true;
	end if;
--error reporting
assert not error_status
	report "critical failure."
	severity note;
	wait;
end process;
end mult4X4_testbench_arch;	