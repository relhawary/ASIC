--=============================
-- Randomizer Testbench
--=============================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity randomizer_tb is
end randomizer_tb;

Architecture tb_arch of randomizer_tb is
	component randomizerEntity 
		port(
			clk, reset, input: in std_logic;
			output: out std_logic;
			en: in std_logic;
			load: in std_logic;
			initial_value: in std_logic_vector(0 to 14)
		);
	end component;
	
	signal clk   : std_logic := '0';
	signal reset : std_logic := '1';
	signal input : std_logic := '1';
	signal en : std_logic := '1';
	signal load : std_logic := '1';
	signal initial_value: std_logic_vector(0 to 14) := "011011100010101";
	signal output:  std_logic;
	signal testinput: std_logic_vector(0 to 95)  := x"ACBCD2114DAE1577C6DBF4C9";
	signal testoutput: std_logic_vector(0 to 95) := x"558AC4A53A1724E163AC2BF9";
	constant PERIOD: time := 10 ns;
begin
	uut : randomizerEntity 
		port map (
			clk => clk,
			initial_value => initial_value,
			input => input,
			output => output,
			reset => reset,
			en => en,
			load => load
		);

	clk <= not clk after (PERIOD/2);

	stimulus : process
	begin
		wait until falling_edge (clk);
		reset <= '0';
		
		wait until falling_edge (clk);
		
		load <= '0';

		for i in 0 to 95 loop
			input <= testinput(i);
			wait until falling_edge (clk);
			assert (output = testoutput(i))
				report "There is a Problem!!"
				severity failure;
		end loop;
		report "There is no Problem!!"
		severity failure;
		wait;
	end process stimulus;
end tb_arch;