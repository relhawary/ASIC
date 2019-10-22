library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity elevator_ctrl_tb is
end elevator_ctrl_tb;

architecture elevator_ctrl_tb_arch of elevator_ctrl_tb is


component elevator_ctrl is
	generic(	floors: integer:=4;
				i_signal_bits:	integer:=3						--integer(ceil(log2(real(floors-1))))
				);
	port(	up_array,down_array,buttons: in std_logic_vector(0 to (3) );
			clk,reset: in std_logic;
			is_open,is_up,is_down: out std_logic;
			current_floor: out std_logic_vector(6 downto 0)				);
end component;

signal		up_array,down_array,buttons:	std_logic_vector(0 to (3));
signal		reset,is_down,is_open,is_up:	std_logic;
signal		current_floor:	std_logic_vector(6 downto 0);
signal		clk:	std_logic:='1';
constant	period:	time:=	20 ns;
constant	transition: time:= 80 ns;

begin
clk<= not clk after period/2;

uut:elevator_ctrl
port map(
			up_array=>up_array,
			down_array=>down_array,
			buttons=>buttons,
			clk=>clk,
			reset=>reset,
			is_open=>is_open,
			is_down=>is_down,
			is_up=>is_up,
			current_floor=>current_floor
		);
		
stimulus:process

begin
wait for (0.5*period);
reset<='0';
wait for (period);

reset<='1';
buttons<="0001";
wait for (4*transition);
buttons<="1111";
wait for(transition);
buttons<="1110";
wait for (transition);
buttons<="1100";
wait for (transition);
buttons<="1000";
wait for (transition);
buttons<=(others=>'0');

wait;

end process stimulus;

verifier:process
begin
wait for period;
assert(current_floor="1000000")
	report("reset failed")
	severity note;
wait for (transition+period);
assert(current_floor="1111001" and is_up='1' and is_open='0'and is_down='0')
	report("1st floor transition failed")
	severity note;
wait for transition;
assert(current_floor="0100100"and is_up='1' and is_open='0'and is_down='0')
	report("2nd floor transition failed")
	severity note;
wait for transition;
assert(current_floor="0110000"and is_up='0' and is_open='1' and is_down='0')
	report("open door 3rd failed")
	severity note;
wait for 2*transition;
assert(current_floor="0100100"and is_up='0' and is_open='1' and is_down='0')
	report("open door 2nd failed")
	severity note;
wait for 2*transition;
assert(current_floor="1111001"and is_up='0' and is_open='1' and is_down='0')
	report("open door 1st failed")
	severity note;
wait for 2*transition;
assert(current_floor="1000000"and is_up='0' and is_open='1' and is_down='0')
	report("open door ground failed")
	severity note;
wait;
end process verifier;
end elevator_ctrl_tb_arch;

