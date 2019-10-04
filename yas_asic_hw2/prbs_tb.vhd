library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity prbs_tb is 
end prbs_tb;

architecture prb_testbench of prbs_tb is 
component prbs
port(
      clk, reset : in std_logic;
      data_input : in std_logic;
      data_output: out std_logic;
      load 		 : in std_logic;
      en		 : in std_logic;
	  seed 		 : in std_logic_vector(14 downto 0)
 
	);
end component;

------------------------------------------------------------
	signal data_input	: std_logic;
	signal data_output	: std_logic;
	signal reset 		: std_logic;
	signal load			: std_logic :='0';
	signal clk			: std_logic :='0';
	signal en			: std_logic := '0';
	constant PERIOD		: time:= 20 ns;
	signal input_test	: std_logic_vector(95 downto 0) := X"ACBCD2114DAE1577C6DBF4C9";
	signal output_test	: std_logic_vector(95 downto 0) := X"558AC4A53A1724E163AC2BF9";
	signal seed 		: std_logic_vector(14 downto 0); 
------------------------------------------------------------
begin 
		uut: prbs 
			port map(
						data_input => data_input,
						data_output=> data_output,
						clk=>clk,
						reset=>reset, 
						en=>en, 
						load => load,
						seed=> seed
					);
------------------------------------------------------------	
		clk <= not clk after PERIOD/2;

			process 
			begin 
			reset <='1'; 
			wait for (PERIOD);
			reset <='0'; 
			load <= '1'; 
			seed <= "011011100010101";
			wait for (1.5*PERIOD); 
			en<='1';
			load <='0'; 
				--wait for (6*PERIOD);
				for i in 95 downto 0 loop
				--wait for (2*PERIOD);
				data_input<= input_test(i); 
				wait for (PERIOD);
				assert(data_output = output_test(i)) 
				report "Error occurred" 
				severity note;
				end loop;
				wait;
			end process;
------------------------------------------------------------
end prb_testbench;				