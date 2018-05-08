library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity ALU is
  port( a, b: in std_logic_vector(7 downto 0);
        op  : in std_logic_vector(1 downto 0);
        y   : out std_logic_vector(7 downto 0)
  );

end ALU;

architecture data_flow of ALU is
  signal result: std_logic_vector(7 downto 0);
begin
  process(op, a, b)
    begin
  	   if (op = "00") then      -- AND Gate
        result <= a and b;
      elsif (op = "01") then   -- OR Gate
        result <= a or b;
      elsif (op = "10") then   -- ADD
        result <= a + b;
      elsif (op = "11") then   -- SUB
        result <= a - b;
      end if;
		
  end process;
  
  y <= result;
  
end data_flow;