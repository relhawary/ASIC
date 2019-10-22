--integration test bench
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity integration_tb is
end integration_tb;

architecture integration_tb_arch of integration_tb is


component integration
	port(	
		mul_in_1,mul_in_2: in std_logic_vector(3 downto 0);
		ss_u,ss_t,ss_h: out std_logic_vector(6 downto 0)
		);
end component;

signal in_1,in_2,unit_temp,ten_temp,hundred_temp: std_logic_vector(3 downto 0);
signal temp1: std_logic_vector(11 downto 0);
signal unit,ten,hundred:std_logic_vector(6 downto 0); --SSD output signals


begin

uut: integration
port map(mul_in_1=>in_1,mul_in_2=>in_2,ss_u=>unit,ss_t=>ten,ss_h=>hundred);


-- Test 
process
variable error_status:boolean;
begin

for i in 0 to 15 loop
		in_1<=std_logic_vector(to_unsigned(i,4));
		for j in 0 to 15 loop
			in_2<=std_logic_vector(to_unsigned(j,4));
			wait for 100 ns;
			-- Verifier
			temp1<=std_logic_vector(to_unsigned(i*j,12));
			--if((unit=temp1(3 downto 0)) and (ten=temp1(7 downto 4)) and (hundred=temp1(11 downto 8)))
			unit_temp<=(temp1(3 downto 0));
			ten_temp<=(temp1(7 downto 4));
			hundred_temp<=(temp1(11 downto 8));
			if(((unsigned(unit_temp) = 0)and(unit="1000000"))or 
				((unsigned(unit_temp) = 1)and(unit="1111001"))or 
				((unsigned(unit_temp) = 2)and(unit="0100100"))or 
				((unsigned(unit_temp) = 3)and(unit="0110000"))or 
				((unsigned(unit_temp) = 4)and(unit="0011001"))or
				((unsigned(unit_temp) = 5)and(unit="0010010"))or
				((unsigned(unit_temp) = 6)and(unit="0000010"))or 
				((unsigned(unit_temp) = 7)and(unit="1111000"))or
				((unsigned(unit_temp) = 8)and(unit="0000000"))or
				((unsigned(unit_temp) = 9)and(unit="0010000"))or
				((unsigned(ten_temp) = 0)and(ten="1000000"))or 
				((unsigned(ten_temp) = 1)and(ten="1111001"))or 
				((unsigned(ten_temp) = 2)and(ten="0100100"))or 
				((unsigned(ten_temp) = 3)and(ten="0110000"))or 
				((unsigned(ten_temp) = 4)and(ten="0011001"))or
				((unsigned(ten_temp) = 5)and(ten="0010010"))or
				((unsigned(ten_temp) = 6)and(ten="0000010"))or 
				((unsigned(ten_temp) = 7)and(ten="1111000"))or
				((unsigned(ten_temp) = 8)and(ten="0000000"))or
				((unsigned(ten_temp) = 9)and(ten="0010000"))or		
				((unsigned(hundred_temp) = 0)and(hundred="1000000"))or 
				((unsigned(hundred_temp) = 1)and(hundred="1111001"))or 
				((unsigned(hundred_temp) = 2)and(hundred="0100100")))
			then
				error_status:= false;
			else
				error_status:= true;
			end if;
			--error reporting
			assert not error_status
				report "critical failure."
				severity note;
		end loop;
	end loop;
	wait;
end process;
end integration_tb_arch;
