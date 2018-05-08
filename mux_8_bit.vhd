library ieee;
use ieee.std_logic_1164.all;

entity mux_8_bit is
	port(	I0, I1: in std_logic_vector(7 downto 0);
			S     : in std_logic;
			O     : out std_logic_vector(7 downto 0)
	);
			
end mux_8_bit;

architecture DATAFLOW of mux_8_bit is
begin
	O <= I0 when (S= '0') else I1;
	
end DATAFLOW;