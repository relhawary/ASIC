LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE tbarch OF testbench IS
	COMPONENT prbs_verify
		PORT (
			clk, reset : IN std_logic;
			pass_out : OUT std_logic;
			en : IN std_logic;
			load : IN std_logic
		);
	END COMPONENT;

	SIGNAL clk : std_logic := '0';
	SIGNAL reset : std_logic := '0';
	SIGNAL en : std_logic := '0';
	SIGNAL load : std_logic := '0';
	SIGNAL pass_out : std_logic := '0';
	CONSTANT period : TIME := 10 ns;

BEGIN
	uut : prbs_verify
	PORT MAP(
		clk => clk,
		reset => reset,
		en => en,
		load => load,
		pass_out => pass_out
	);

	clk <= NOT clk AFTER period/2;

	PROCESS
	BEGIN
		reset <= '1';
		WAIT FOR (1.5 * period);
		reset <= '0';
		load <= '1';
		WAIT FOR (1.5 * period);
		load <= '0';
		en <= '1';
		WAIT FOR (1.5 * period);

		ASSERT(pass_out = '1')
		REPORT "Verifier Failed"
			SEVERITY note;
		WAIT;
	END PROCESS;
END tbarch;