--=============================
-- Randomizer Verifire Testbench
--=============================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity randomizerVerify_tb is
end randomizerVerify_tb;

Architecture tb_arch of randomizerVerify_tb is
	component randomizerVerifyEntity 
		port(
			clk, reset: in std_logic;
			pass: out std_logic;
			en: in std_logic;
			load: in std_logic
		);
	end component;
	
	signal clk   : std_logic := '0';
	signal reset : std_logic := '1';
	signal en : std_logic := '0';
	signal load : std_logic := '1';
	signal pass:  std_logic;
	constant PERIOD: time := 10 ns;
begin
	uut : randomizerVerifyEntity 
		port map (
			clk => clk,
			reset => reset,
			pass => pass,
			en => en,
			load => load
		);

	clk <= not clk after (PERIOD/2);

	stimulus : process
	begin
		reset <= '1';
		en <= '0';
		load <= '0';
		wait until falling_edge (clk);
		reset <= '0';
		
		load <= '1';
		wait until falling_edge (clk);
		load <= '0';
		en <= '1';
		
		for i in 0 to 100 loop
			wait until falling_edge (clk);
		end loop;
		assert (pass = '1')
				report "There is a Problem!!"
				severity note;
		wait;
	end process stimulus;
end tb_arch;