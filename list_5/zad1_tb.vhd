LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
-- include also the local library for 'str' call


ENTITY zad1_tb IS
END zad1_tb;

ARCHITECTURE behavior OF zad1_tb IS
    COMPONENT zad1
    PORT(
         clk_in : IN  std_logic;
         clk_out : OUT STD_LOGIC
        );
    END COMPONENT;

    COMPONENT zad1_2
    PORT(
         clk_in : IN  std_logic;
         clk_out_2 : OUT STD_LOGIC
        );
    END COMPONENT;

   --Inputs
   signal clk_in : std_logic := '0';

 	--Outputs
   signal clk_out : std_logic := '0';
   signal clk_out_2 : std_logic := '0';
   -- Clock period definitions
   constant clk_period : time := 8 ns;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: zad1 PORT MAP (
          clk_in => clk_in,
          clk_out => clk_out
        );

    uut_2: zad1_2 PORT MAP (
           clk_in => clk_in,
           clk_out_2 => clk_out_2
         );

   -- Clock process definitions
   clk_process :process
	  variable wait_done : natural := 0;
   begin
	   if wait_done = 0
		then
		   wait for clk_period * 0.2;
			wait_done := 1;
	   end if;
		clk_in <= '1';
		wait for clk_period/2;
		clk_in <= '0';
		wait for clk_period/2;
   end process;

END;
