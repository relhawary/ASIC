--=============================
-- Randomizer Testbench
--=============================

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY randomizer_tb IS
END randomizer_tb;

ARCHITECTURE tb_arch OF randomizer_tb IS
	COMPONENT randomizerEntity
		PORT (
			clk, reset, input : IN std_logic;
			output : OUT std_logic;
			en : IN std_logic;
			load : IN std_logic;
			initial_value : IN std_logic_vector(0 TO 14)
		);
	END COMPONENT;

	SIGNAL clk : std_logic := '0';
	SIGNAL reset : std_logic := '1';
	SIGNAL input : std_logic := '1';
	SIGNAL en : std_logic := '1';
	SIGNAL load : std_logic := '1';
	SIGNAL initial_value : std_logic_vector(0 TO 14) := "011011100010101";
	SIGNAL output : std_logic;
	SIGNAL testinput : std_logic_vector(0 TO 95) := x"ACBCD2114DAE1577C6DBF4C9";
	SIGNAL testoutput : std_logic_vector(0 TO 95) := x"558AC4A53A1724E163AC2BF9";
	CONSTANT PERIOD : TIME := 10 ns;
BEGIN
	uut : randomizerEntity
	PORT MAP(
		clk => clk,
		initial_value => initial_value,
		input => input,
		output => output,
		reset => reset,
		en => en,
		load => load
	);

	clk <= NOT clk AFTER (PERIOD/2);

	stimulus : PROCESS
	BEGIN
		WAIT UNTIL falling_edge (clk);
		reset <= '0';

		WAIT UNTIL falling_edge (clk);

		load <= '0';

		FOR i IN 0 TO 95 LOOP
			input <= testinput(i);
			WAIT UNTIL falling_edge (clk);
			ASSERT (output = testoutput(i))
			REPORT "There is a Problem!!"
				SEVERITY failure;
		END LOOP;
		REPORT "There is no Problem!!"
			SEVERITY failure;
		WAIT;
	END PROCESS stimulus;
END tb_arch;