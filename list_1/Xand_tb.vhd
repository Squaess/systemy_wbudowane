LIBRARY ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std;

entity Xand_tb is
END Xand_tb;

architecture behavior of Xand_tb is
  component Xand is
    generic (width : integer);
    port ( clk : in std_logic;
    A,B : in std_logic_vector(width-1 downto 0);
    C : out std_logic_vector(width-1 downto 0)
    );
  end component;
begin

  uut: Xand generic map ( width => 12)
            port map();

end;
