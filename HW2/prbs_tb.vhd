LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY prbs_tb IS
END prbs_tb;

ARCHITECTURE tbarch OF prbs_tb IS
	COMPONENT prbs
		PORT (
			clk, reset, load, en : IN std_logic;
			seed : IN std_logic_vector(14 DOWNTO 0);
			data_in : IN std_logic_vector(95 DOWNTO 0);
			data_out : OUT std_logic_vector(95 DOWNTO 0)
		);
	END COMPONENT;

	SIGNAL clk : std_logic := '0';
	SIGNAL load : std_logic := '0';
	SIGNAL en : std_logic := '1';
	SIGNAL reset : std_logic := '0';

	SIGNAL seed : std_logic_vector (14 DOWNTO 0);
	SIGNAL test_in : std_logic_vector (95 DOWNTO 0) := x"ACBCD2114DAE1577C6DBF4C9";
	SIGNAL data_in : std_logic;
	SIGNAL test_out : std_logic_vector (95 DOWNTO 0) := x"558AC4A53A1724E163AC2BF9";
	SIGNAL data_out : std_logic;
	CONSTANT PERIOD : TIME := 10 ns;
	CONSTANT seed_value : std_logic_vector(14 DOWNTO 0) := '011011100010101';
BEGIN
	uut : prbs
	PORT MAP(
		clk => clk,
		seed => seed,
		load => load,
		en => en,
		reset => reset,
		data_in => data_in,
		data_out => data_out
	);

	clk <= NOT clk AFTER period/2;

	PROCESS
	BEGIN
		reset <= '1';
		data_in <= '0';
		WAIT FOR (2 * period);
		reset <= '0';

		-- check seed load
		WAIT UNTIL falling_edge(clk);
		load <= '1';
		seed <= seed_value;
		WAIT FOR (2 * period);
		load <= '0';
		ASSERT(seed = seed_value)
		REPORT "seed load"
		SEVERITY note;

		--check input/output

		FOR i IN 0 TO 95 LOOP
			data_in <= test_in(i);
			WAIT UNTIL falling_edge(clk);
			ASSERT(data_out = test_out(i))
			REPORT "wrong output"
			SEVERITY failure;
		END LOOP;
		WAIT;
	END PROCESS;
END tbarch