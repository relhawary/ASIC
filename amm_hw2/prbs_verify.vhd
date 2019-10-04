library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity prbs_verify is
	port ( 
		clk, reset: in std_logic;
		pass: out std_logic;
		en: in std_logic;
		load: in std_logic
	);
end prbs_verify;

Architecture randomizerVerifyArch of prbs_verify is
	component in_data_rom 
		port ( 
			clk : in std_logic;
			address : in std_logic_vector(0 to 6);
			data : out std_logic
		);
	end component;
	component out_data_rom 
		port ( 
			clk : in std_logic;
			address : in std_logic_vector(0 to 6);
			data : out std_logic
		);
	end component;
	component seed_rom 
		port ( 
			seed : out std_logic_vector(0 to 14)
		);
	end component;
	component prbs 
		port(
			clk, reset, input: in std_logic;
			output: out std_logic;
			en: in std_logic;
			load: in std_logic;
			initial_value: in std_logic_vector(0 to 14)
		);
	end component;

signal address : std_logic_vector(0 to 6);
signal in_data : std_logic;
signal out_data : std_logic;
signal seed : std_logic_vector(0 to 14);
signal rand_input : std_logic;
signal rand_output : std_logic;
signal rand_initial_value : std_logic_vector(0 to 14);
signal dumy_pass : std_logic;
begin
	rand : prbs 
		port map (
			clk => clk,
			initial_value => rand_initial_value,
			input => rand_input,
			output => rand_output,
			reset => reset,
			en => en,
			load => load
		);
	in_rom : in_data_rom 
		port map (
			clk => clk,
			address => address,
			data => in_data
		);	
	out_rom : out_data_rom 
		port map (
			clk => clk,
			address => address,
			data => out_data
		);	
	seed_r : seed_rom 
		port map (
			seed => seed
		);	
	rand_initial_value <= seed;
	rand_input <= in_data;
	process (clk,reset)
	begin
		if(reset = '1') then
			address <= (others=>'0');
			pass <= '0';
			dumy_pass <= '1';
		elsif(en = '0') then
			pass <= '0';
		elsif (falling_edge(clk)) then
			if (address = "1011111") then
				pass <= dumy_pass;
			else 
				address <= std_logic_vector(unsigned(address) + 1);
				if (rand_output /= out_data) then
					dumy_pass <= '0';
				end if;
			end if;
			
		end if;
	end process;
end architecture randomizerVerifyArch;