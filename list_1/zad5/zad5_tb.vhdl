LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- jesli mozliwe, nie uzywac std_logic_unsigned -- nie wspiera standardow
--USE ieee.std_logic_unsigned.ALL;
-- numeric_std i owszem
use ieee.numeric_std.all;


ENTITY zad5_tb IS
END zad5_tb;

ARCHITECTURE behavior OF zad5_tb IS

    -- deklaracja komponentu Unit Under Test (UUT)

    COMPONENT example
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN std_logic;
         x : OUT  std_logic;
         y : OUT std_logic
        );
    END COMPONENT;

   -- inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';

-- sprawdz dzialanie obu ponizszych, alternatywnych deklaracji
--   signal abc : std_logic_vector(2 downto 0) := (others => '0');
    signal abc : unsigned(3 downto 0) := (others => '0');

   --Outputs
   signal x : std_logic;
   signal y : std_logic;

   -- okres zegara
   constant period : time := 10 ns;

BEGIN

	-- instantiate the Unit Under Test (UUT)
   uut: example PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          x => x,
          y => y
        );

   -- Stimulus process
   stim_proc: process
   begin
      -- hold reset state for 100 ns.
      wait for 100 ns;

      wait for period*10;

	-- silly way to test all states...
	a <= '0';
	b <= '0';
	c <= '1';
  d <= '0';

	wait for period;
  assert x = '0'
    report "wrong x value" severity error;

	wait for 10*period;

	-- another way to do this...
	for i in 0 to 6 loop
-- w zaleznosci od tego, jak zadeklarowano sygnal 'abc',
--     mozna go zwiekszyc na rozne sposoby
-- sprawdz, ktory pasuje do ktorej deklaracji
--  ten:
    -- abc <= std_logic_vector( unsigned(abc) + 1 );
--  i ten:
    abc <= abc + 1;

	  a <= abc(3);
	  b <= abc(2);
	  c <= abc(1);
    d <= abc(0);

	  wait for period;


	end loop;



      wait;
   end process;

END;
