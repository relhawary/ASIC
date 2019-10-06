LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY prbs_verify IS
	PORT (
		clk, en, load, reset : IN std_logic;
		pass_out : OUT std_logic
	);
END prbs_verify;

ARCHITECTURE prbs_verify_arch OF prbs_verify IS
	COMPONENT prbs
		PORT (
			clk, en, load, reset, data_in : IN std_logic;
			data_out : OUT std_logic;
			seed : std_logic_vector(14 DOWNTO 0)
		);
	END COMPONENT;

	--signals
	SIGNAL seed_rom : std_logic_vector(14 DOWNTO 0) := "011011100010101";
	CONSTANT in_data_rom : std_logic_vector(95 DOWNTO 0) := x"ACBCD2114DAE1577C6DBF4C9";
	CONSTANT out_data_rom : std_logic_vector(95 DOWNTO 0) := x"558AC4A53A1724E163AC2BF9";

	SIGNAL counter : unsigned(6 DOWNTO 0);-- := "0000000";
	SIGNAL data_in_bit, data_out_bit : std_logic;
	SIGNAL data_out_vector : std_logic_vector(95 DOWNTO 0);
	--signal pass_out: std_logic:='0';
BEGIN
	prbsUnit : prbs
	PORT MAP(
		clk => clk,
		reset => reset,
		en => en,
		load => load,
		seed => seed_rom,
		data_in => data_in_bit,
		data_out => data_out_bit
	);

	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
			counter <= "1011111";
			pass_out <= '0';
			ELSIF (clk'event AND clk = '1') THEN
			IF ((to_integer(counter) < 96) AND en = '1') THEN
				--data_in_bit <= in_data_rom(to_integer(unsigned((counter))));
				data_out_vector(to_integer(counter)) <= data_out_bit;
				counter <= (counter - "0001");
				--counter<= std_logic_vector(unsigned(counter)+ 1);
				ELSIF ((to_integer(counter)) >= 95 AND en = '1') THEN
				IF (data_out_vector = out_data_rom) THEN
					pass_out <= '1';
					ELSIF (data_out_vector /= out_data_rom) THEN
					pass_out <= '0';
				END IF;
			END IF;
		END IF;
	END PROCESS;
	data_in_bit <= in_data_rom(to_integer(counter)) WHEN((to_integer(counter) >= 0) AND (to_integer(counter)) < 96)ELSE
	'0';
END prbs_verify_arch;