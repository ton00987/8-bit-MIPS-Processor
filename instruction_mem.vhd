library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity instruction_mem is
  port(
    read_addr  : in std_logic_vector(2 downto 0);
    instruction: out std_logic_vector(7 downto 0)
  );
  
end instruction_mem;

architecture behavioral of instruction_mem is
  type instruction_set is array(0 to 7) of std_logic_vector(7 downto 0);
  constant instr : instruction_set := (
    "00000000",
    "00011000",  -- AND $s0, $s1, $s2
    "01011010",  -- OR $s1, $s2, $s2
    "00000000",
    "00000000",
    "00000000",
    "00000000",
    "00000000"
  );

begin
  instruction <= instr(to_integer(unsigned(read_addr)));

end behavioral;