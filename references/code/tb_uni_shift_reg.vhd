--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb_uni_shift_reg IS
END tb_uni_shift_reg;

ARCHITECTURE behav OF tb_uni_shift_reg IS
   COMPONENT shift_register
      PORT (
         clk, reset : IN std_logic;
         ctrl : IN std_logic_vector(1 DOWNTO 0);
         d : IN std_logic_vector(3 DOWNTO 0);
         q : OUT std_logic_vector(3 DOWNTO 0)
      );
   END COMPONENT;

   SIGNAL clk : std_logic := '0';
   SIGNAL reset : std_logic := '0';
   SIGNAL ctrl : std_logic_vector(1 DOWNTO 0);
   SIGNAL d : std_logic_vector(3 DOWNTO 0);
   SIGNAL q : std_logic_vector(3 DOWNTO 0);
   CONSTANT PERIOD : TIME := 10 ns;
BEGIN
   dut : shift_register
   PORT MAP(
      ctrl => ctrl,
      clk => clk,
      d => d,
      q => q,
      reset => reset);

   clk <= NOT clk AFTER PERIOD/2;

   stimulus : PROCESS
   BEGIN
      reset <= '1';
      d <= (OTHERS => '0');
      ctrl <= (OTHERS => '0');

      WAIT FOR (3.5 * PERIOD);
      reset <= '0';
      --check parallel load
      WAIT UNTIL falling_edge(clk);
      d <= "1111";
      ctrl <= "11";
      WAIT FOR (2 * PERIOD);
      --check shift left
      d <= "1010";
      ctrl <= "01";
      WAIT FOR (3 * PERIOD);
      --check no op
      d <= "1100";
      ctrl <= "00";
      WAIT FOR (2 * PERIOD);
      --check shift right
      WAIT FOR (3 * PERIOD);
      d <= "1010";
      ctrl <= "10";
      WAIT;
   END PROCESS stimulus;

   --verifier
   PROCESS
      VARIABLE tmp : unsigned(3 DOWNTO 0) := (OTHERS => '0');
   BEGIN
      -- check reset
      WAIT UNTIL (reset = '1');
      WAIT UNTIL falling_edge(clk);
      ASSERT (q = "0000")
      REPORT "reset failed"
      SEVERITY note;
      -- check parallel load
      WAIT UNTIL (reset = '0' AND ctrl = "11");
      WAIT UNTIL falling_edge (clk);
      ASSERT (unsigned(q) = unsigned(d))
      REPORT "parallel load failed"
      SEVERITY note;
      -- check shift left
      WAIT UNTIL (reset = '0' AND ctrl = "01");
      tmp := shift_left(unsigned(q), 1);
      tmp(0) := d(0);
      WAIT UNTIL falling_edge (clk);
      ASSERT (unsigned(q) = tmp)
      REPORT "shift left failed"
      SEVERITY note;
      -- check shift right
      WAIT UNTIL (reset = '0' AND ctrl = "10");
      tmp := shift_right(unsigned(q), 1);
      tmp(3) := d(3);
      WAIT UNTIL falling_edge (clk);
      ASSERT (unsigned(q) = tmp)
      REPORT "shift right failed"
      SEVERITY note;
   END PROCESS;
END behav;