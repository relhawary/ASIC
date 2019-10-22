library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity prbs is
port(
		reset,enable,load,clk,data_in: in std_logic;
		seed: in std_logic_vector(14 downto 0);
		data_out: out std_logic);
		--data_out_shift: out std_logic_vector(14 downto 0)); -- data_out_shift was added to ease inspection of the internal signal "shift_register"
end prbs;

architecture prbs_arch of prbs is
signal shift_register: std_logic_vector(14 downto 0);
--signal first_edge,second_edge: std_logic:='0';
begin
--shift_register<= "011011100010101";  --"101010001110110" 
process(clk,reset)
begin
if(reset='1')then
	shift_register<=(others=>'0');		
elsif(clk'event and clk='1')then
	--if(enable = '1')then
		if(load='1')then
			shift_register<=seed;
		end if;
		if(load='0')then
		shift_register<=shift_register(13 downto 0)&(shift_register(13) xor shift_register(14));
		end if;
	--end if;
end if;
end process;
data_out<=(data_in xor shift_register(13) xor shift_register(14));
end prbs_arch;