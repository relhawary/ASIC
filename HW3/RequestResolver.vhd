LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY RequestResolver IS
	GENERIC (
		floors : INTEGER := 10;
		floors_bits : INTEGER := 4;
		timer_bits : INTEGER := 27
	);
	PORT (

	)