LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Mux1b is
	port(	
		selection : in std_logic;
		inA, inB : in std_logic_vector (4 downto 0);
		outMux     : out std_logic_vector (4 downto 0)
	);
end Mux1b;

architecture Logic of Mux1b is
begin

	outMux <=
		inA when selection = '0' else
		inB when selection = '1' else
		(others => '0');

end Logic;