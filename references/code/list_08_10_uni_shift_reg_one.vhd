--=============================
-- Listing 8.10 universal shift register
--=============================
library ieee;
use ieee.std_logic_1164.all;
entity shift_register is
   port(
      clk, reset: in std_logic;
      ctrl: in std_logic_vector(1 downto 0);
      d: in std_logic_vector(3 downto 0);
      q: out std_logic_vector(3 downto 0)
   );
end shift_register;

architecture one_seg_arch of shift_register is
   signal r_reg: std_logic_vector(3 downto 0);
begin
   -- register
   process(clk,reset)
   begin
      if (reset='1') then
         r_reg <= (others=>'0');
      elsif (clk'event and clk='1') then
          case ctrl is 
             when "00" =>
                 r_reg <= r_reg;                    --no op
             when "01" =>
                 r_reg <= r_reg(2 downto 0) & d(0); --shift left
             when "10" =>
                 r_reg <= d(3) & r_reg(3 downto 1); --shift right
             when others =>
                 r_reg <= d;                        --parallel load 
           end case;   
      end if;
   end process;
   -- output
   q <= r_reg;
end one_seg_arch;
