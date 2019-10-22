library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity prbs_verify  is
port(
		pass: out std_logic;
		reset,enable,load,clk: in std_logic); 
end prbs_verify;

architecture prbs_verify_arch of prbs_verify is
component prbs
port(
		reset,enable,load,clk,data_in: in std_logic;
		seed: in std_logic_vector(14 downto 0);
		data_out: out std_logic);
end component;

--Internal signal declaration
signal verify_in,data_in: std_logic;
constant in_data_ROM: std_logic_vector(95 downto 0):=X"ACBCD2114DAE1577C6DBF4C9";
constant out_data_ROM: std_logic_vector(95 downto 0):=X"558AC4A53A1724E163AC2BF9";  
constant seed_ROM: std_logic_vector(14 downto 0):="101010001110110";

--signal temp: std_logic;
signal output: std_logic_vector(95 downto 0);
signal counter: std_logic_vector(6 downto 0):="1011111";
--input clock has a period of 20 ns
constant period: time:= 20 ns;

begin
--Instantiation
uut: prbs
port map(
	clk=>clk,
	data_in=>data_in,			-- link local signal data_in to the data_in of prbs
	reset=>reset,
	enable=>enable,
	load=>load,
	seed=>seed_ROM,
	data_out=>verify_in			-- link local signal verify_in to data_out of prbs
);

process(clk,reset,enable,load)
--variable counter: integer:=0;
begin
if((to_integer(unsigned(counter))>=0)and (to_integer(unsigned(counter))<96))then
	if(reset = '0' and rising_edge(clk) and enable='1' and load='0' and to_integer(unsigned(counter))>=0 )then
		output(to_integer(unsigned(counter)))<=verify_in;
	end if;
	if(reset = '0' and rising_edge(clk) and enable='1' and load='0')then --and to_integer(unsigned(counter))>0
	counter<= std_logic_vector(unsigned(counter)- 1);
	end if;
end if;
if(reset='1')then
counter<="1011111";
output<=(others=>'0');
end if;
end process;
pass <= '1' when (output=out_data_ROM) and (reset='0') else '0';
data_in<=in_data_ROM(to_integer(unsigned(counter)))when(to_integer(unsigned(counter))>=0)and (to_integer(unsigned(counter))<96)else in_data_ROM(0);
end prbs_verify_arch;