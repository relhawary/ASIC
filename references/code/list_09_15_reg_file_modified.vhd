--=============================
-- Listing 9.15 register file
--=============================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity reg_file is
   port(
      clk, reset: in std_logic;
      wr_en: in std_logic;
      w_addr: in std_logic_vector(1 downto 0);
      w_data: in std_logic_vector(15 downto 0);
      r_addr0, r_addr1: in std_logic_vector(1 downto 0);
      r_data0, r_data1: out std_logic_vector(15 downto 0)
   );
end reg_file; 

architecture loop_arch of reg_file is
   constant W: natural:=2; -- number of bits in address
   constant B: natural:=16; -- number of bits in data
   type reg_file_type is array (2**W-1 downto 0) of
        std_logic_vector(B-1 downto 0);
   signal array_reg: reg_file_type;
   signal array_next: reg_file_type;
   signal en: std_logic_vector(2**W-1 downto 0);
begin
   -- register
   process(clk,reset)
   begin
      if (reset='1') then
         array_reg <= (others=>(others=>'0'));
      elsif (clk'event and clk='1') then
       for i in 0 to 3 loop 
         array_reg(i) <=  array_next(i);
		   end loop;
      end if;
   end process;
   -- enable logic for register
   process(array_reg,en,w_data)
   begin
      for i in 0 to 3 loop
        array_next(i) <= array_reg(i);
     end loop;
      for i in 0 to 3 loop
      	if (en(i) = '1') then  
      		array_next(i) <= w_data;
      	end if;
      end loop;
   end process;
   -- decoding for write address
   process(wr_en,w_addr)
   begin
      if (wr_en='0') then
         en <= (others=>'0');
      else
         case w_addr  is
            when "00" =>   en <= "0001";
            when "01" =>   en <= "0010";
            when "10" =>   en <= "0100";
            when others => en <= "1000";
         end case;
      end if;
   end process;
   -- read multiplexing
   r_data0 <= array_reg(to_integer(unsigned(r_addr0)));
   r_data1 <= array_reg(to_integer(unsigned(r_addr1)));   
end loop_arch;