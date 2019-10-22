--integration
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity integration is
port(	
		mul_in_1,mul_in_2:in std_logic_vector(3 downto 0);
		ss_u,ss_t,ss_h:out std_logic_vector(6 downto 0)
		);
end integration;



architecture integration_arch of integration is
-- identify the components

component mult4X4 
	port(
		a,b: in std_logic_vector(3 downto 0);
		o: out std_logic_vector(7 downto 0)
		);
end component;
signal output_mul4X4: std_logic_vector(7 downto 0);

-- initiate devices and map I/O ports



component BCD 
	port(	
		input_BCD: in std_logic_vector( 7 downto 0);
		output_u,output_t,output_h: out std_logic_vector(3 downto 0)
		);
end component;
signal output_units,output_ten,output_hundred: std_logic_vector(3 downto 0);


component SSD 
	port(
		input_SSD: in std_logic_vector(3 downto 0);
		output: out std_logic_vector(6 downto 0)
	);
end component;

begin
u1t: mult4X4
port map(a=>mul_in_1,b=>mul_in_2,o=>output_mul4X4);

u2t: BCD
port map(input_BCD=>output_mul4X4,output_u=>output_units,output_t=>output_ten,output_h=>output_hundred);

u3t: SSD   --units SSD
port map(input_SSD=>output_units,output=>ss_u);

u4t: SSD   -- tens SSD
port map(input_SSD=>output_ten,output=>ss_t);

u5t: SSD   -- hundreds SSD
port map(input_SSD=>output_hundred, output=>ss_h);

end integration_arch;

