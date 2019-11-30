LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity tb_Mux1b is
end tb_Mux1b;

architecture test of tb_Mux1b is
component Mux1b is
	port(
		selection : in std_logic;
		inA, inB : in std_logic_vector (4 downto 0);
		outMux     : out std_logic_vector (4 downto 0)
	);
end component;

signal A, B, O : std_logic_vector(4 downto 0); 
signal Sel : std_logic;

begin
	inst_Mux1b: Mux1b port map (selection => sel, inA => A, inB => B, outMux => O);
sel <= '0', '1' after 6 ns;
A <= "00000", "10000" after 3 ns, "10001" after 5 ns, "10010" after 7 ns, "10010" after 9 ns, "10010" after 12 ns; 									
B <= "11111", "01111" after 3 ns, "01110" after 5 ns, "01101" after 7 ns, "01101" after 9 ns, "01101" after 12 ns; 										
end test;