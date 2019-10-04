-- Company: AUC EENG 414
-- Author: Ahmed Abou-Auf
-- Date: 22 Feb. 2014
-- Description: Testbench for register file
library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;


entity reg_file_tb is
end reg_file_tb;    

architecture behav of reg_file_tb is
-- component declaration
component reg_file is
   port(
      clk, reset: in std_logic;
      wr_en: in std_logic;
      w_addr: in std_logic_vector(1 downto 0);
      w_data: in std_logic_vector(15 downto 0);
      r_addr0, r_addr1: in std_logic_vector(1 downto 0);
      r_data0, r_data1: out std_logic_vector(15 downto 0)
   );
end component; 

-- constants
constant W: natural := 2;
constant B: natural := 16;

signal clk: 	std_logic :='0';
signal reset: 	std_logic :='0';
signal wr_en: 	std_logic :='0';
signal w_addr: 	std_logic_vector  (W-1 downto 0);
signal w_data: 	std_logic_vector  (B-1 downto 0);
signal r_addr0: std_logic_vector (W-1 downto 0);
signal r_data0: std_logic_vector (B-1 downto 0);
signal r_addr1: std_logic_vector (W-1 downto 0);
signal r_data1: std_logic_vector (B-1 downto 0);

-- clock period
constant PERIOD: time := 10 ns;

begin
-- unit under test    
uut: reg_file 
     port map (
    clk => clk ,
    reset => reset ,    
    wr_en => wr_en ,   
    w_addr => w_addr , 
    w_data => w_data , 
    r_addr0 => r_addr0 ,
    r_data0 => r_data0 ,
    r_addr1 => r_addr1 ,
    r_data1 => r_data1 
    );
	
    clk <= not clk after (PERIOD/2);
process 
	begin

    -- initial values of input signals
--    clk     <= '1';
    reset   <= '1';
    w_addr  <= (others=>'0');
    w_data  <= (others=>'0');    
    r_addr0 <= (others=>'0');
    r_addr1 <= (others=>'0');  
    wr_en    <= '0'; 

    wait for (3*PERIOD); reset <= '0';   
    -- write to register file    
    wait for (1*PERIOD); wr_en  <= '1'; 
    for i in 0 to 3 loop   
    	w_addr  <= std_logic_vector(to_unsigned(i,W));  
    	w_data  <= std_logic_vector(to_unsigned(2*i,B));      
		wait for (1*PERIOD);
    end loop;   
    --read from register file
    wait for (1*PERIOD); r_addr0 <= std_logic_vector(to_unsigned(0,W));                 
    wait for (1*PERIOD); r_addr0 <= std_logic_vector(to_unsigned(1,W));                 
    wait for (1*PERIOD); r_addr0 <= std_logic_vector(to_unsigned(2,W));                 
    wait for (1*PERIOD); r_addr0 <= std_logic_vector(to_unsigned(3,W));       
    wait for (1*PERIOD); r_addr1 <= std_logic_vector(to_unsigned(0,W));                 
    wait for (1*PERIOD); r_addr1 <= std_logic_vector(to_unsigned(1,W));                 
    wait for (1*PERIOD); r_addr1 <= std_logic_vector(to_unsigned(2,W));                 
    wait for (1*PERIOD); r_addr1 <= std_logic_vector(to_unsigned(3,W));       
    wait;
end  process;
end behav;                                                    