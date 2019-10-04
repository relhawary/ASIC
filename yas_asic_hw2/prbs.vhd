library ieee;
use ieee.std_logic_1164.all;


entity prbs is
   port(
      clk, reset : in std_logic;
      data_input : in std_logic;
      data_output: out std_logic;
      load 		 : in std_logic;
      en		 : in std_logic;
	  seed 		 : in std_logic_vector(14 downto 0)
   );
end prbs;

architecture randomizer of prbs is
   signal r_reg: std_logic_vector( 14 downto 0 ) ;
   signal r_next: std_logic_vector( 14 downto 0 );
begin
   -- register
   process(clk,reset)
   begin
      if (reset='1') then
         r_reg <= (others=>'0');

      elsif (clk'event and clk='1') then

        if (load = '1') then
         r_reg <= seed;

       elsif (en = '1') then
       r_reg <= r_next ;

    end if;
    end if;
   end process;
   -- next-state shifting
   r_next <= (r_reg(1) xor r_reg(0)) & r_reg(14 downto 1);
   -- output
   data_output <= (r_reg(1) xor r_reg(0)) xor data_input;
end randomizer;