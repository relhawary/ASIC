LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY prbs_verify_tb IS
END prbs_verify_tb;

ARCHITECTURE tbarch OF prbs_verify_tb IS
	COMPONENT prbs_verify
		PORT (
			clk, reset, en, load : IN std_logic;
			pass_out : OUT std_logic
		);
	END COMPONENT;

	SIGNAL clk : std_logic := '0';
	SIGNAL reset : std_logic := '0';
	SIGNAL en : std_logic := '0';
	SIGNAL load : std_logic := '0';
	SIGNAL pass_out : std_logic;
	CONSTANT period : TIME := 20 ns;

BEGIN
	uut : prbs_verify
	PORT MAP(
		clk => clk,
		en => en,
		load => load,
		reset => reset,
		pass_out => pass_out
	);

	clk <= NOT clk AFTER (period/2);

	PROCESS
	BEGIN
		---WAIT FOR (1.5 * period);
		reset <= '1';
		en <= '0';
		load <= '0';
		WAIT FOR (1.5 * period);
		reset <= '0';
		WAIT FOR (1.5 * period);
		load <= '1';
		WAIT FOR (1.5 * period);
		load <= '0';
		WAIT FOR (1.5 * period);
		en <= '1';

		WAIT FOR (100 * period);

		ASSERT (pass_out = '1')
		REPORT "problem"
		SEVERITY note;
		WAIT;
	END PROCESS;
END tbarch;