library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC is
  port(
    clk                : in std_logic;
    current_instruction: in std_logic_vector(2 downto 0);
    next_instruction   : out std_logic_vector(2 downto 0)
  );
  
end PC;

architecture behavioral of PC is
  signal next_signal : std_logic_vector(2 downto 0);

begin
  process(clk)
    begin
      if falling_edge(clk) then
        next_signal <= std_logic_vector(unsigned(current_instruction) + to_unsigned(1, 3));
      end if;
  end process;

  next_instruction <= next_signal;

end behavioral;