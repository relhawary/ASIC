LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY prbs IS
	PORT (
		clk, en, reset, load : IN std_logic;
		seed : IN std_logic_vector(14 DOWNTO 0);
		data_in : IN std_logic;
		data_out : OUT std_logic
	);
END prbs;

ARCHITECTURE prbs_arch OF prbs IS
	SIGNAL r_reg, r_next : std_logic_vector(14 DOWNTO 0);
BEGIN
	PROCESS (clk, reset, en, load)
	BEGIN
		IF (reset = '1') THEN
			r_reg <= (OTHERS => '0');
		ELSIF (rising_edge(clk)) THEN
			IF (load = '1') THEN
				r_reg <= seed;
			ELSIF (en = '1') THEN
				r_reg <= r_next;
			END IF;
		END IF;
	END PROCESS;

	r_next <= (r_reg(1) XOR r_reg(0)) & r_reg(14 DOWNTO 1);
	data_out <= (r_reg(1) XOR r_reg(0)) XOR data_in;

END prbs_arch;