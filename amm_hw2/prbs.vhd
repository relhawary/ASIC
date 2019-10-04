--=============================
-- Randomizer
--=============================

library ieee;
use ieee.std_logic_1164.all;

Entity prbs is
   port(
      clk, reset, input: in std_logic;
	  output: out std_logic;
	  en: in std_logic;
	  load: in std_logic;
	  initial_value: in std_logic_vector(0 to 14)
   );
end prbs;

Architecture randomizerArch of prbs is
	signal r_reg: std_logic_vector(0 to 14);
	signal r_next: std_logic_vector(0 to 14);
	signal output_next : std_logic;
begin
	ff : process(clk,reset)
	begin
		if (reset='1') then
			r_reg <= (others=>'0');
		elsif (clk'event and clk='1' and en = '1') then
			r_reg <= r_next;
			output <= output_next;
		end if;
	end process ff;
	
	with load select
		r_next <=	(r_reg(13) xor r_reg(14)) & r_reg(0 to 13)	when '0',
					initial_value 								when others;
					
	output_next <= r_reg(13) xor r_reg(14) xor input;
end randomizerArch;