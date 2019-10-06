LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY prbs IS
	PORT (
		clk, reset : IN std_logic;
		data_input : IN std_logic;
		data_output : OUT std_logic;
		load : IN std_logic;
		en : IN std_logic;
		seed : IN std_logic_vector(14 DOWNTO 0)
	);
END prbs;

ARCHITECTURE randomizer OF prbs IS
	SIGNAL r_reg : std_logic_vector(14 DOWNTO 0);
	SIGNAL r_next : std_logic_vector(14 DOWNTO 0);
BEGIN
	-- register
	PROCESS (clk, reset, en, load)
	BEGIN
		IF (reset = '1') THEN
			r_reg <= (OTHERS => '0');

		ELSIF (clk'event AND clk = '1') THEN

			IF (load = '1') THEN
				r_reg <= seed;

			ELSIF (en = '1') THEN
				r_reg <= r_next;

			END IF;
		END IF;
	END PROCESS;
	-- next-state shifting
	r_next <= (r_reg(1) XOR r_reg(0)) & r_reg(14 DOWNTO 1);
	-- output
	data_output <= (r_reg(1) XOR r_reg(0)) XOR data_input;
END randomizer;