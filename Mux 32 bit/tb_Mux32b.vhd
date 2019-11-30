LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity tb_Mux32b is
end tb_Mux32b;

architecture test of tb_Mux32b is
component Mux32b is
	port(
		selection : in std_logic_vector (1 downto 0);
		inA, inB, inC : in std_logic_vector (31 downto 0);
		outMux     : out std_logic_vector (31 downto 0)
	);
end component;

signal A, B, C, O : std_logic_vector(31 downto 0); 
signal Sel : std_logic_vector(1 downto 0);

begin
	inst_Mux32b: Mux32b port map (selection => sel, inA => A, inB => B, inC => C, outMux => O);
sel <= "00", "01" after 1 ns, "10" after 2 ns, "00" after 4 ns, "10" after 5 ns, "01" after 6 ns;
A <= "00000000000000000000000000000000", "00000000000000000111111111111111" after 3 ns;
B <= "11111111111111111111111111111111", "11111111111111111000000000000000" after 3 ns;
C <= "11111111111111110000000000000000", "00100010000100000000000100100000" after 3 ns;
end test;