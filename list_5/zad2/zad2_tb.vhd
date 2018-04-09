LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
-- include also the local library for 'str' call


ENTITY zad2_tb IS
END zad2_tb;

ARCHITECTURE behavior OF zad2_tb IS
    COMPONENT zad2
    generic(N : natural);
    PORT(
         clk_in : IN  std_logic;
         clk_out : OUT STD_LOGIC_VECTOR (N-1 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal clk_in : std_logic := '0';

 	--Outputs
   signal clk_out : std_logic_vector (3 downto 0) := (others => '0');

   -- Clock period definitions
   constant clk_period : time := 8 ns;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: zad2 generic map ( N => 4)
    PORT MAP (
          clk_in => clk_in,
          clk_out => clk_out
        );

   -- Clock process definitions
   clk_process :process
	  variable wait_done : natural := 0;
   begin
	   if wait_done = 0
		then
		   wait for clk_period * 0.5;
			wait_done := 1;
	   end if;
		clk_in <= '1';
		wait for clk_period/2;
		clk_in <= '0';
		wait for clk_period/2;
   end process;

END;
