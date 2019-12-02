LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Mux32b is
	port(	
		selection : in std_logic_vector (1 downto 0);
		inA, inB, inC : in std_logic_vector (31 downto 0);
		outMux     : out std_logic_vector (31 downto 0)
	);
end Mux32b;

architecture Logic of Mux32b is
begin

	outMux <=
		inA when selection = "00" else
		inB when selection = "01" else
		inC when selection = "10" else
		(others => '0');

end Logic;