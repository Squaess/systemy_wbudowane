LIBRARY ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

ENTITY twoway_tb is
END twoway_tb;

ARCHITECTURE behavior OF twoway_tb IS

  -- UUT
  component twoway is
  generic(NBit : positive);
  port(
      clk: in std_logic;
      q: out STD_LOGIC_VECTOR(NBit-1 downto 0)
  );
end component;

signal clk : std_logic := '0';
signal q : STD_LOGIC_VECTOR(7 downto 0);

constant clk_period : time := 20 ns;

begin
  uut: twoway generic map(NBit => 8)
  port map(
      clk => clk,
      q => q
  );

  clk_process :PROCESS
  BEGIN
   clk <= '0';
   WAIT FOR clk_period/2;
   clk <= '1';
   WAIT FOR clk_period/2;
  END PROCESS;

  stim_proc: PROCESS
  BEGIN
      wait for 100 ns;

      wait;
    end PROCESS;
END;
