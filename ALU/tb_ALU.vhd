library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_ALU is
end tb_ALU;


architecture comportamento of tb_ALU is
component ALU is
	port(
		SrcA, SrcB 	: in std_logic_vector(31 downto 0);
		ALUOut		: out std_logic_vector(31 downto 0);
		ALUControl	: in std_logic_vector(1 downto 0)
	);
end component;

signal SrcA, SrcB, ALUOut : std_logic_vector(31 downto 0);
signal ALUControl : std_logic_vector(1 downto 0);

begin
instancia_ALU : ALU port map(SrcA=>SrcA, SrcB=>SrcB, ALUOut=>ALUOut, ALUControl=>ALUControl);
ALUControl <= "00", "01" after 10 ns, "10" after 20 ns, "10" after 30 ns, "11" after 40 ns, "11" after 50 ns;
SrcA <= x"1afd1123";
SrcB <= x"1cb58daf";
end architecture;
