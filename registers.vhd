library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registers is
  port(
    clk       : in std_logic;
    reg_write : in std_logic;
    read_reg1 : in std_logic_vector(1 downto 0);
    read_reg2 : in std_logic_vector(1 downto 0);
	 write_reg : in std_logic_vector(1 downto 0);
    write_data: in std_logic_vector(7 downto 0);
    read_data1: out std_logic_vector(7 downto 0);
    read_data2: out std_logic_vector(7 downto 0)
  );
  
end registers;

architecture behavioral of registers is
  type reg_mem is array(0 to 3) of std_logic_vector(7 downto 0);
  signal reg: reg_mem;
  
begin
  process(clk)
    begin
	   if (rising_edge(clk) and reg_write = '1') then
		  reg(to_integer(unsigned(write_reg))) <= write_data;
		end if;
  
  end process;
  
  read_data1 <= reg(to_integer(unsigned(read_reg1)));
  read_data2 <= reg(to_integer(unsigned(read_reg2)));

end behavioral;