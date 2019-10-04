library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity out_data_rom is 
port(
   clk   		  : in std_logic; 
   counter  	  : in std_logic_vector(6 downto 0); 
   data_out_output: out std_logic
);
end out_data_rom ; 
 
architecture out_data_rom_arch of out_data_rom is 
      signal r_reg : std_logic_vector(95 downto 0);
begin 
    process(clk)
    begin 
	     if(clk'event and clk = '1') then 
         data_out_output <= r_reg(to_integer(unsigned(counter)));
		 r_reg <= X"558AC4A53A1724E163AC2BF9";
    end if; 
end process; 
end out_data_rom_arch; 

