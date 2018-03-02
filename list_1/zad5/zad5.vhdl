library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity example is
port (
  a,b,c,d : in std_logic;
  x,y     : out std_logic
);
end example;

architecture Synthetic of example is

 component gateOR_T_F
   port (X,Y: in std_logic;
	        Z: out std_logic);
 end component;

 component gateAND
  port(X,Y: in std_logic;
        Z: out std_logic);
 end component;

 component gateXOR
  port(X,Y: in std_logic;
        Z: out std_logic);
 end component;

 component gateAND_NOT
  port(X,Y: in std_logic;
        Z: out std_logic);
 end component;

 signal AND_AND,
        XOR_XOR,
        OR_T_F,
        AND_AND1,
        AND_NOT,
        XOR_XOR1: std_logic;
begin
 G1: gateAND port map (a,b,AND_AND);
 G2: gateXOR port map (b,c,XOR_XOR);
-- alternatywne sposoby opisu mapowania portow
 --G3: gateOR  port map (NOT_OR,OR_OR,OR_NOT);
 G3: gateOR_T_F port map (b,d,OR_T_F);
 G4: gateAND port map (AND_AND,XOR_XOR, AND_AND1);
 x <= AND_AND1;
 G5: gateAND_NOT port map (AND_AND, OR_T_F, AND_NOT);
 G6: gateXOR port map (AND_AND1, AND_NOT, y);

end Synthetic;
