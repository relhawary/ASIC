library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity prbs_tb is
end prbs_tb;

architecture prbs_tb_arch of prbs_tb is

component prbs
port( 
		reset,enable,load,clk: in std_logic;
		data_in: in std_logic;
		seed: in std_logic_vector(14 downto 0);
		data_out: out std_logic);
end component;

signal reset,enable,load: std_logic;
signal clk: std_logic:='1';
signal data_out: std_logic;
signal seed: std_logic_vector(14 downto 0):="101010001110110";
--signal data_out_shift: std_logic_vector(14 downto 0);
signal data_in: std_logic;
constant data_input:std_logic_vector(95 downto 0):=X"ACBCD2114DAE1577C6DBF4C9";				--X"9C4FBD6C7751EAD4112DCBCA"; --X"ACBCD2114DAE1577C6DBF4C9";
constant data_output: std_logic_vector(95 downto 0):= X"558AC4A53A1724E163AC2BF9";			--X"9FB2CA361E4271A35A4CA855"; --X"558AC4A53A1724E163AC2BF9";
constant period: time := 20 ns;
signal test_out: std_logic_vector(95 downto 0);
begin

clk<= not clk after period/2;

uut: prbs
port map(
			data_in=>data_in,
			reset=> reset,
			enable=> enable,
			load=> load,
			clk=> clk,
			seed=> seed,
			data_out=>data_out
			);

			
--Stimulus			data_in ACBCD2114DAE1577C6DBF4C9
process 
begin

--checking reset
wait for (0.5*period); --falling edge
reset<= '1';
wait for (period);
reset<='0';
enable<='1';
--loading seed
load<='1';
wait for period;
load<='0';

--checking data_out after 2 periods
for i in 95 downto 0 loop
data_in<=data_input(i);
wait for (period);
end loop;
wait;
end process;

--Verifier      data_out 558AC4A53A1724E163AC2BF9
process begin
wait for (2*period);
wait until ((reset='0') and (enable='1') and (load='0')); 	--and (data_in=data_input(95-i))  and falling_edge(clk) 
for i in 95 downto 0 loop
wait until(rising_edge(clk));
test_out(i)<=data_out;
assert(data_output(i)=data_out)
	report("prbs failed")
	severity note;
end loop;


wait;
end process;
end prbs_tb_arch;