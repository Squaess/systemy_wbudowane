LIBRARY STD;
use std.textio.all;
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
              rst : in  STD_LOGIC;
              q : inout  STD_LOGIC_VECTOR(15 downto 0) := (others => '0')
      );
    end component;

    signal clk : std_logic := '0';
    signal rst : std_logic :='1';
    signal q : STD_LOGIC_VECTOR(15 downto 0);

    constant clk_period : time := 20 ns;

    BEGIN
        uut: lfsr port map(
            clk => clk,
            rst => rst,
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
            variable l : line;
            variable inte : integer;
        BEGIN
            wait for 10 ns;
            rst <= '0';

            wait for 1000 ns;

            rst <= '1';
            wait for 100 ns;
            for i in 0 to q'LENGTH loop
              inte := TO_INTEGER(q);
              writeline( output, l);

            end loop;
            wait;
        end PROCESS;
      END;
