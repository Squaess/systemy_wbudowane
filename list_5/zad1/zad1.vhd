
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity zad1 is
    Port ( clk_in : in  STD_LOGIC;
           clk_out : out  STD_LOGIC);
end zad1;

architecture Behavioral of zad1 is
begin
  process (clk_in)
  variable clk_prev_value : std_logic := '1';
  begin
    if (clk_in'event and clk_in = '1' )
	 then
	    clk_out <= clk_prev_value;
      clk_prev_value := clk_prev_value xor '1';
	 end if;
  end process;

end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
-- include also the local library for 'str' call
USE work.txt_util.ALL;

entity zad1_2 is
    Port ( clk_in : in STD_LOGIC;
                clk_out_2 : out STD_LOGIC := '0');
end zad1_2;

architecture Behavioral of zad1_2 is
  BEGIN
  process(clk_in)
  variable counter : integer := 0;
  variable clk_prev_value : std_logic := '0';
  begin
  if( clk_in'event and clk_in = '1') then
    counter := counter + 1;
    -- print(str(counter));
    if counter = 625000 then
      clk_out_2 <= clk_prev_value xor '1';
      clk_prev_value := clk_prev_value xor '1';
      counter := 0;
    end if;
  end if;
end process;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
-- include also the local library for 'str' call
USE work.txt_util.ALL;

entity zad1_3 is
    Port ( clk_in : in STD_LOGIC;
                clk_out_3 : out STD_LOGIC := '0');
end zad1_3;

architecture Behavioral of zad1_3 is
  BEGIN
  process(clk_in)
  variable counter : integer := 0;
  variable clk_prev_value : std_logic := '0';
  begin
  if( clk_in'event and clk_in = '1') then
    counter := counter + 1;
    -- print(str(counter));
    if counter = 56818 then
      clk_out_3 <= clk_prev_value xor '1';
      clk_prev_value := clk_prev_value xor '1';
      counter := 0;
    end if;
  end if;
end process;
end Behavioral;
