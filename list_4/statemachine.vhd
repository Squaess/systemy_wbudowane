
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity statemachine is
  port(
	clk:     in std_logic;
	pusher:  in std_logic;
  rst: in std_logic;
	driver : out std_logic_vector(2 downto 0) := "000"
  );

end statemachine;

architecture Flow of statemachine is
  type stan is (S0, S1, S2, S3, S4, S5, S6, S7);
  signal stan_teraz : stan := S0;
  signal stan_potem : stan := S0;
begin

state_advance: process(clk, rst)
begin
  if rst = '1'  then
    stan_teraz <= S0;
  else  if rising_edge(clk) then
    if pusher = '1' then
     stan_teraz <= stan_potem;
	 end if;
  end if;
end if;
end process;

next_state: process(stan_teraz)
begin

   case stan_teraz is
     when S0 =>
				stan_potem <= S1;
				driver <= "000";
	  when S1 =>
				stan_potem <= S2;
				driver <= "001";
	  when S2 =>
				stan_potem <= S3;
				driver <= "010";
	  when S3 =>
				stan_potem <= S4;
				driver <= "011";
    when S4 =>
        stan_potem <= S5;
        driver <= "100";
    when S5 =>
        stan_potem <= S6;
        driver <= "101";
    when S6 =>
        stan_potem <= S7;
        driver <= "110";
    when S7 =>
        stan_potem <= S0;
        driver <= "111";
   end case;
end process;

end Flow;
