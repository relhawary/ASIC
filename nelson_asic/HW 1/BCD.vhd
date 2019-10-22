Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BCD is
	port(	
			input_BCD: in std_logic_vector( 7 downto 0);
			output_u,output_t,output_h: out std_logic_vector(3 downto 0)
			);
	end BCD;
	
architecture BCD_arch of BCD is
	component add3
	port(	
			b: in std_logic_vector(3 downto 0);
			o: out std_logic_vector(3 downto 0)
			);
	end component;
	signal c1_in: std_logic_vector(3 downto 0);
	signal c1_out: std_logic_vector(3 downto 0);
	
	signal c2_in: std_logic_vector(3 downto 0);
	signal c2_out: std_logic_vector(3 downto 0);
	
	signal c3_in: std_logic_vector(3 downto 0);
	signal c3_out: std_logic_vector(3 downto 0);
	
	signal c4_in: std_logic_vector(3 downto 0);
	signal c4_out: std_logic_vector(3 downto 0);
	
	signal c5_in: std_logic_vector(3 downto 0);
	signal c5_out: std_logic_vector(3 downto 0);
	
	signal c6_in: std_logic_vector(3 downto 0);
	signal c6_out: std_logic_vector(3 downto 0);
	
	signal c7_in: std_logic_vector(3 downto 0);
	signal c7_out: std_logic_vector(3 downto 0);
	
	begin
	
	c1_in<='0'&input_BCD(7 downto 5);
	c2_in<=c1_out(2 downto 0)&input_BCD(4);
	c3_in<=c2_out(2 downto 0)&input_BCD(3);
	c4_in<=c3_out(2 downto 0)&input_BCD(2);
	c5_in<=c4_out(2 downto 0)&input_BCD(1);
	c6_in<='0'&c1_out(3)&c2_out(3)&c3_out(3);
	c7_in<=c6_out(2 downto 0)&c4_out(3);
	u1t: add3
	port map (c1_in,c1_out);
	u2t: add3
	port map (c2_in,c2_out);
	u3t: add3
	port map (c3_in,c3_out);
	u4t: add3
	port map (c4_in,c4_out);
	u5t: add3
	port map (c5_in,c5_out);
	u6t: add3
	port map (c6_in,c6_out);
	u7t: add3
	port map (c7_in,c7_out);
	
	output_h<='0'&'0'&c6_out(3)&c7_out(3);
	output_t<= c7_out(2 downto 0)&c5_out(3); 
	output_u<= c5_out(2 downto 0)&input_BCD(0);	
	end BCD_arch;