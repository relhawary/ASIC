library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all;

entity in_data_rom is 
port(clk   : in std_logic; 
   counter  : in std_logic_vector(6 downto 0); 
   data_in_output: out std_logic
   );
end in_data_rom; 
 
architecture in_data_rom_arch of in_data_rom is 
      signal r_reg : std_logic_vector(95 downto 0);
begin 
    process(clk)
    begin 
	     if(clk'event and clk = '1') then 
         data_in_output <= r_reg(to_integer(unsigned(counter)));
		 r_reg 		   <= X"ACBCD2114DAE1577C6DBF4C9";
	end if;
    end process; 
end in_data_rom_arch; 

