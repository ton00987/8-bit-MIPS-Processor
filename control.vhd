library ieee;
use ieee.std_logic_1164.all;

entity control is
  port(
    instruction: in std_logic_vector(1 downto 0);
    reg_dst    : out std_logic;
	 alu_src    : out std_logic;
	 alu_op     : out std_logic_vector(1 downto 0)
  );

end control;

architecture dataflow of control is
begin
  with instruction select
    reg_dst <= '0' when "11", -- addi
	            '1' when others;
					
  with instruction select
    alu_src <= '1' when "11", -- addi
	            '0' when others;
	
  alu_op <= instruction;

end dataflow;