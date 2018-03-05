LIBRARY ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std;

entity Xand_tb is
END Xand_tb;

architecture behavior of Xand_tb is

  -- deklaracja komponentu Unit Under Test (UUT)

  component Xand is
    generic (width : integer);
    port ( clk : in std_logic;
    A,B : in std_logic_vector(width-1 downto 0);
    C : out std_logic_vector(width-1 downto 0)
    );
  end component;

  -- inputs

  signal clk : std_logic := '0';
  signal A : std_logic_vector(2 downto 0) := (others => '0');
  signal B : std_logic_vector(2 downto 0) := (others => '0');


  -- Outputs
  signal C : std_logic_vector(2 downto 0) := (others => '0');
begin

  uut: Xand generic map ( width => 3)
            port map(
              clk => clk,
              A => A,
              B => B,
              C => C
            );

  process
  begin
    wait for 100 ns;

    A <= "001";
    B <= "100";
    wait for 1 ns;
    assert c = "000"
      report "wrong c value" severity error;

    A <= "001";
    B <= "101";
    wait for 1 ns;
    assert c = "001"
      report "wrong c value" severity error;

    A <= "111";
    B <= "111";
    wait for 1 ns;
    assert c ="111"
      report "wrong c value" severity error;

    wait;
  end process;
end behavior;
