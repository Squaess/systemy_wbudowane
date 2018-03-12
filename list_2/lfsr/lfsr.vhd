library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity lfsr is
    Port ( clk : in  STD_LOGIC;
            rst : in  STD_LOGIC;
           q : inout  STD_LOGIC_VECTOR(15 downto 0) := ('0','0','0','0',others => '0')
			);
end lfsr;

ARCHITECTURE Behavioral OF lfsr IS
BEGIN
  PROCESS
  BEGIN
  if rst = '0' then
	     q(15 downto 1) <= q(14 downto 0);
	     q(0) <= not(q(15) XOR q(14) XOR q(13) XOR q(4));
  end if;
	WAIT UNTIL clk'event AND clk='1';
  END PROCESS;
END Behavioral;
