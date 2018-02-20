entity zad4 is
  port (a, b, c : in bit; x, y : out bit);
end zad4;

architecture rtl of zad4 is
begin
  x <= (not (a or b)) nor  (not (b nor c));
  y <= (not (a nor c)) and (not (a xor b));
end rtl;
