library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seed_rom is 
port(
	clk   : in std_logic;  
	output_seed: out std_logic_vector(14 downto 0)
   );
end seed_rom; 
 
architecture romarch of seed_rom is 
      signal r_reg : std_logic_vector(14 downto 0);
begin 
    process(clk)
    begin 
	     if(clk'event and clk = '1') then 
		 r_reg <= "011011100010101";
		 output_seed <= r_reg;
	end if; 
    end process; 
end romarch; 