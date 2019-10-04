LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

entity prbs_verifier_tb is
end prbs_verifier_tb;

architecture prbs_verifier_tb_arch of prbs_verifier_tb is
-------------------------------------------
component prbs_verifier is
port (
clk 		: in std_logic; 
reset		: in std_logic;
load 		: in std_logic; 
en 			: in std_logic;
pass 		: out std_logic;
active_sig 	: out std_logic 
);
end component; 
-------------------------------------------
signal clk 			: std_logic := '0';
signal reset 		: std_logic := '0';
signal load 		: std_logic := '0';
signal en 			: std_logic := '0';
signal pass 		: std_logic := '0';
signal active_sig 	: std_logic := '0';
constant PERIOD 	: time 		:= 10 ns;
-------------------------------------------
begin 
uut : prbs_verifier port map(
	clk			=> clk,
	reset		=> reset,
	load		=> load, 
	en			=> en,
	pass		=> pass,
	active_sig	=> active_sig
	);
-------------------------------------------	
clk <= not clk after PERIOD/2;
Process
begin 
	reset 	<= '1'; 
	load  	<= '0';
	en 		<= '0';
wait for (3.5 * PERIOD);
	reset	<= '0';
	load	<= '1';
wait for (3.5 * PERIOD);
	load	<= '0';
	en		<= '1';
wait for (3.5 * PERIOD);

assert(pass = '0')
report "Failed" 
severity failure;
report "Passed"
severity note;
end process; 
end prbs_verifier_tb_arch;
	