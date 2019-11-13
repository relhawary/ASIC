LIBRARY Ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ssd IS
	PORT (
		ssd_in : IN std_logic_vector(3 DOWNTO 0);
		ssd_out : OUT std_logic_vector(6 DOWNTO 0)
	);
END ssd;
ARCHITECTURE ssd_arch OF ssd IS
BEGIN
	WITH ssd_in SELECT
		ssd_out <= B"1000000" WHEN B"0000",
		B"1111001" WHEN B"0001",
		B"0100100"WHEN B"0010",
		B"0110000"WHEN B"0011",
		B"0011001"WHEN B"0100",
		B"0010010"WHEN B"0101",
		B"0000010"WHEN B"0110",
		B"1111000"WHEN B"0111",
		B"0000000"WHEN B"1000",
		B"0010000" WHEN B"1001",
		B"1111111"WHEN OTHERS;
END ssd_arch;