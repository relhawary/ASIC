Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BCD_tb is
end BCD_tb;

architecture BCD_tb_arch of BCD_tb is
component BCD
	port( 	input_BCD: in std_logic_vector( 7 downto 0);
			output_u,output_t,output_h: out std_logic_vector(3 downto 0)
			);
	end component;
signal input_in: std_logic_vector(7 downto 0);
signal output_unit,output_tens,output_hundreds: std_logic_vector(3 downto 0);
signal unit,tens,hundreds:std_logic_vector(3 downto 0); --temporary signals
begin
uut: BCD
port map(input_BCD=>input_in,output_u=>output_unit,output_t=>output_tens,output_h=>output_hundreds);


process
variable error_status:boolean;

begin
-- generate test vectors
for i in 0 to 255 loop
	input_in<=std_logic_vector(to_unsigned(i,input_in'length));
	unit<=std_logic_vector(to_unsigned((i mod 10),4));
	tens<=std_logic_vector(to_unsigned(((i/10)mod 10),4));
	hundreds<=std_logic_vector(to_unsigned((i/100),4));
	
	wait for 200 ns;
	-- Verifier	
	wait for 100 ns;
	
	if((unit = output_unit) and (tens = output_tens)  and (hundreds = output_hundreds))
	then
		error_status:= false;
	else
		error_status:= true;
	end if;
	--error reporting
	assert not error_status
		report "critical failure."
		severity note;
end loop;


	wait;
end process;
end BCD_tb_arch;
