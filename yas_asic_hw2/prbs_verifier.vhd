library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all;
-----------------------------------------------
entity prbs_verifier is
port (
clk 		: in std_logic; 
reset		: in std_logic;
load 		: in std_logic; 
en 			: in std_logic;
pass 		: out std_logic
);
end prbs_verifier;
------------------------------------------------
architecture verifier_arch of prbs_verifier is
component prbs is
  port (
    reset  		: in  std_logic;
    clk    		: in  std_logic; 
    data_in     : in  std_logic; 
	data_out  	: out std_logic;
	seed 		: in std_logic_vector(14 downto 0);
	load 		: in std_logic;
	en 			: in std_logic	
  );
end component;
----------------------------------------------------
component seed_rom is 
port(clk   		: in std_logic;  
output_seed		: out std_logic_vector(14 downto 0)
   );
end component;
----------------------------------------------------
component in_data_rom is 
port(clk   		 : in std_logic; 
   counter 	 	 : in std_logic_vector(6 downto 0); 
   data_in_output: out std_logic
); 
end component; 
----------------------------------------------------
component out_data_rom is 
port(clk   			: in std_logic; 
   counter  		: in std_logic_vector(6 downto 0); 
   data_out_output	: out std_logic
);
end component; 
----------------------------------------------------
signal seed 	 		: std_logic_vector(14 downto 0);
signal counter   		: std_logic_vector(6 downto 0);
signal data_out  		: std_logic; 
signal data_in_rom_sig  : std_logic; 
signal data_out_rom_sig	: std_logic; 
----------------------------------------------------
begin 
----------------------------------------------------
seed_rom_port_maping : seed_rom port map (
clk 			=> clk,
output_seed 	=> seed
);
----------------------------------------------------
in_data_rom_port_maping : in_data_rom port map (
clk 			=> clk,
counter			=> counter,
data_in_output  => data_in_rom_sig
);
----------------------------------------------------	
out_data_rom_port_maping : out_data_rom port map(
clk 			=> clk,
counter 		=> counter,
data_out_output => data_out_rom_sig 
);
----------------------------------------------------
prbs_port_maping : prbs port map(
clk 		=> clk,
reset 		=> reset,
en 			=> en,
seed 		=> seed, 
load 		=> load,
data_in	 	=> data_in_rom_sig, 
data_out 	=> data_out 
);
----------------------------------------------------	
process(clk,reset)
begin 
if (reset = '1') then 
	counter <= (others => '0');
elsif (clk'event and clk = '1') then
if  (counter < x"60") then 
	counter <= std_logic_vector(unsigned(counter)+1);
	end if;
end if;
end process;
----------------------------------------------------
process(clk,reset)
begin 
if(reset = '1' ) then 
	pass <= '1';
	elsif (clk'event and clk = '1') then
		if ((en = '1')) then 
				if((data_out_rom_sig /= data_out))then
					pass <= '0';
				end if;
			end if;
	end if; 
end process; 
----------------------------------------------------------
end verifier_arch;