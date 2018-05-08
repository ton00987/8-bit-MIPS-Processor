library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity instruction_mem is
  port(
    read_addr  : in std_logic_vector(2 downto 0);
    instruction: out std_logic_vector(7 downto 0)
  );
  
end instruction_mem;

  -- a = 6 = 00000110 use addi 2 times
  -- b = 2 = 00000010
  -- c = a - b = 4 = 00000100
  -- d = a + b = 8 = 00001000
  -- b = a and c = 4 = 00000100
  -- a in $s0, b in $s1, c in $s2, d in $s4
  
architecture behavioral of instruction_mem is
  type instruction_set is array(0 to 7) of std_logic_vector(7 downto 0);
  constant instr : instruction_set := (
    "11000011",  -- addi $s0, $s0, 3
    "11000011",  -- addi $s0, $s0, 3
    "11010110",  -- addi $s1, $s1, 2
    "01000110",  -- sub  $s2, $s0, $s1
    "10000111",  -- add  $s3, $s0, $s1
    "00001001",  -- and  $s1, $s0, $s2
    "00000000",  
    "00000000"
  );

begin
  instruction <= instr(to_integer(unsigned(read_addr)));

end behavioral;