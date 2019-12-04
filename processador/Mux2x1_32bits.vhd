LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Mux2x1_32bits is
	port(	
		selection : in std_logic;
		inA, inB : in std_logic_vector (31 downto 0);
		outMux     : out std_logic_vector (31 downto 0)
	);
end Mux2x1_32bits;

architecture Logic of Mux2x1_32bits is
begin

	outMux <=
		inA when selection = '0' else
		inB when selection = '1' else
		(others => '0');

end Logic;