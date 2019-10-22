library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity prbs_verify_tb is
end prbs_verify_tb;

architecture prbs_verify_tb_arch of prbs_verify_tb is
component prbs_verify
port(
		pass: out std_logic;
		reset,enable,load,clk: in std_logic); 

end component;

signal pass,reset,enable,load: std_logic;
signal clk: std_logic:='1';
constant period:time:= 20 ns;

begin

clk<= not clk after period/2;

uut:prbs_verify
port map(
	pass=>pass,
	reset=>reset,
	enable=>enable,
	load=>load,
	clk=>clk);

Stimulus:process begin 
wait for (0.5*period); -- falling edge
--Checking reset
reset<='1';
load<='1';
enable<='1';
wait for period;
reset<='0';
wait for period;
load<='0';
wait;
end process Stimulus;

Verifier:process begin
--reset, enable and load will be checked visually
wait until ((reset='0') and (enable='1') and (load='0'));
wait until falling_edge(clk);
--Verify pass
wait for (96*period);
assert(pass='1')
	report("pass failed")
	severity note;
wait;
end process Verifier;
end prbs_verify_tb_arch;