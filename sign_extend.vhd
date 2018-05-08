library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sign_extend is
  port(
    a: in std_logic_vector(1 downto 0);
	 b: out std_logic_vector(7 downto 0)
  );

end sign_extend;

architecture behavior of sign_extend is
begin
  b <= "000000" & a;

end behavior;