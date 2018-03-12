LIBRARY ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity lfsr_tb is
end lfsr_tb;

ARCHITECTURE behavior of lfsr_tb is

    --UUT
    component lfsr is
      port(
              clk : in  STD_LOGIC;
              q : inout  STD_LOGIC_VECTOR(15 downto 0) := (others => '0')
      );
    end component;

    signal clk : std_logic := '0';
    signal q : STD_LOGIC_VECTOR(15 downto 0);

    constant clk_period : time := 20 ns;

    BEGIN
        uut: lfsr port map(
            clk => clk,
            q => q
        );

        clk_process: PROCESS
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
