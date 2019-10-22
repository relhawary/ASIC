library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity elevator_ctrl is
	generic(	floors: integer:=4;
				i_signal_bits:	integer:=3						--integer(ceil(log2(real(floors-1))))
				);
	port(	up_array,down_array,buttons: in std_logic_vector(0 to (floors-1) );
			clk,reset: in std_logic;
			is_open,is_up,is_down: out std_logic;
			current_floor: out std_logic_vector(6 downto 0)				);
end elevator_ctrl;

architecture elevator_ctrl_arch of elevator_ctrl is
--	components 
component SSD
	port(
		input_SSD: in std_logic_vector(3 downto 0);
		output: out std_logic_vector(6 downto 0));
end component;
--	types
type state is (idle,up,down,door_open);
type door_state is (opened,closed);
--	signals
signal		number_of_floors_to_move_reg,number_of_floors_to_move_next: std_logic_vector(3 downto 0);
signal		state_reg,state_next,previous_state_reg,previous_state_next:	state;
signal		counter_reg,counter_next:	std_logic_vector(25 downto 0):=	(others=>'0');	-- counter for clock enable is initialized by zeros
signal		enable,up_internal,down_internal,request,enable_door,up_temp,down_temp:	std_logic:='0';
--signal		half_floor_transition: std_logic_vector(1 downto 0):="00";
signal		door: door_state:=closed;
signal		door_timer_reg,door_timer_next,half_floor_transition_next,half_floor_transition_reg: std_logic_vector(1 downto 0):=(others=>'0');
signal		temp_reg,temp_next:	std_logic_vector(0 to i_signal_bits):="0000";	-- initialized at floor zero
signal		timer_reg,timer_next:	std_logic_vector(10 downto 0):=(others=>'0');	-- global seconds timer 
signal		i_signal:	std_logic_vector(0 to i_signal_bits);

--	begin, components instantiation and output logic
begin
u2:SSD
port map(	input_SSD=>temp_reg,
			output=>current_floor);

--	main process containing state changes
main_clock:process(clk,reset)
begin
if(reset='0')then					-- reset is always active low and is usually used with a push button interface
	state_reg<=idle;
	counter_reg<=(others=>'0');
	number_of_floors_to_move_reg<=(others=>'0');
	timer_reg<=(others=>'0');
	temp_reg<=(others=>'0');
	door_timer_reg<=(others=>'0');
	half_floor_transition_reg<=(others=>'0');
	--previous_state_reg<=idle;
elsif(rising_edge(clk))then
	counter_reg<=counter_next;
	if(enable='1')then
		state_reg<=state_next;																	-- State machine
		timer_reg<=timer_next;																	-- global timer in seconds
		number_of_floors_to_move_reg<=number_of_floors_to_move_next;							-- no. of floors to be moved
		temp_reg<=temp_next;																	-- Current floor	
		--previous_state_reg<=previous_state_next;												-- State before door_open
		door_timer_reg<=door_timer_next;
		half_floor_transition_reg<=half_floor_transition_next;
	end if;
end if;
end process main_clock;

--	request resolver
request_resolver:process(up_array,down_array,buttons,clk,temp_reg)
begin
i_signal<=temp_reg;
for i in 0 to (floors-1) loop				--	floors-1
	if( (up_array(i) = '1' or down_array(i)='1' or buttons(i)='1') and (temp_reg>std_logic_vector(to_unsigned(i,temp_reg'length))))then
		i_signal<=std_logic_vector(to_unsigned(i, i_signal'length));
	end if;
end loop;
for i in (floors-1) downto 0 loop
	if( (up_array(i) = '1' or down_array(i)='1' or buttons(i)='1') and (temp_reg<std_logic_vector(to_unsigned(i,temp_reg'length))))then
		i_signal<=std_logic_vector(to_unsigned(i, i_signal'length));
	end if;
end loop;
end process request_resolver;

resolver_supplement:process(i_signal,temp_reg,down_internal,up_internal,request)
begin
	up_internal<='0';
	down_internal<='0';
	if(temp_reg<i_signal and request='0')then
		up_internal<='1';
	elsif(temp_reg<i_signal and request='1')then
		up_internal<='0';
	elsif(temp_reg>i_signal and request='0')then
		down_internal<='1';
	elsif(temp_reg>i_signal and request='1')then
		down_internal<='0';
	end if;
end process resolver_supplement;

--	next state logic
next_state_logic:process(state_reg,up_internal,down_internal,request,enable_door,door)--,previous_state_reg
begin
state_next<= idle;
	case state_reg is
		when idle=>
			if(up_internal='1' and door=closed)then
				state_next<=up;
			elsif(down_internal='1' and door=closed)then
				state_next<=down;
			end if;
		when up=>
			if(up_internal='1' and request='0' and door=closed)then
				state_next<=up;
			else	
				state_next<=door_open;
			end if;
		when down=>
			if(down_internal='1' and request='0' and door=closed)then
				state_next<=down;
			else	
				state_next<=door_open;
			end if;
		when door_open=>
			if(enable_door='0')then
				state_next<=door_open;
			end if;
		when others=>
	end case;
end process next_state_logic;

--	Moore output logic
Moore:process(state_reg,i_signal,temp_reg,timer_reg,number_of_floors_to_move_reg,half_floor_transition_reg,request)
begin
	--number_of_floors_to_move_next<=number_of_floors_to_move_reg;
	number_of_floors_to_move_next<=std_logic_vector(abs(signed(temp_reg)-signed(i_signal)));
	temp_next<=temp_reg;
	timer_next<=timer_reg;
	door<=closed;
	request<='0';
	case state_reg is
		when	up=>
					number_of_floors_to_move_next<=std_logic_vector((unsigned(i_signal)-unsigned(temp_reg)));
					if(number_of_floors_to_move_reg>"0000")then
						if(temp_reg<i_signal and half_floor_transition_reg = "00" )then
							timer_next<=std_logic_vector(unsigned(timer_reg)+1);
							else
							timer_next<=std_logic_vector(unsigned(timer_reg)+1);
							number_of_floors_to_move_next<=std_logic_vector(unsigned(number_of_floors_to_move_reg)-1);
							temp_next<=std_logic_vector(unsigned(temp_reg)+1);
						end if;
					else
						request<='1';
						door<=opened;
					end if;

		when	down=>
					number_of_floors_to_move_next<=std_logic_vector((unsigned(temp_reg)-unsigned(i_signal)));
					if(number_of_floors_to_move_reg>"0000")then
						if(temp_reg>i_signal and half_floor_transition_reg = "00")then
							timer_next<=std_logic_vector(unsigned(timer_reg)+1);
						else
							timer_next<=std_logic_vector(unsigned(timer_reg)+1);
							number_of_floors_to_move_next<=std_logic_vector(unsigned(number_of_floors_to_move_reg)-1);
							temp_next<=std_logic_vector(unsigned(temp_reg)-1);
						end if;
					else
						request<='1';
						door<=opened;
					end if;
					
		when	door_open=>
					
					door<=opened;
					timer_next<=std_logic_vector(unsigned(timer_reg)+1);
		when	idle=>
					request<='0';
		when	others=>

	end case;
end process Moore;

--10111110101111000010000001 (50 000 001)				10111110101111000010000000 (50 000 000) 		10111110101111000001111111 (49 999 999)

--	output logic
enable<='1' when (counter_reg ="00000000000000000000000001") else '0';					-- 00000000000000000000000001
enable_door<='1' when (door_timer_reg ="01") else '0';
is_up<=up_internal when (door=closed) else '0';
is_down<=down_internal when (door=closed) else '0';
is_open<='1' when (door=opened) else '0';	--and up_internal='0' and down_internal='0'
counter_next<=std_logic_vector(unsigned(counter_reg)+1) when (counter_reg<"00000000000000000000000001") else (others=>'0');
door_timer_next<=std_logic_vector(unsigned(door_timer_reg)+1) when (door_timer_reg<"01") else (others=>'0');
half_floor_transition_next<=std_logic_vector(unsigned(half_floor_transition_reg)+1) when (half_floor_transition_reg<"01") else (others=>'0');
--previous_state_next<=state_reg when ((state_next=door_open) and (state_reg/=door_open));
end elevator_ctrl_arch;