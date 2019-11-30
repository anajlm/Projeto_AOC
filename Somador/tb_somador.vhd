library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_somador is
end tb_somador;

architecture comportamento of tb_somador is
	component somador is
		port(
			in1, in2 	: in std_logic_vector(31 downto 0);
			result		: out std_logic_vector(31 downto 0)
		);
	end component;
	
	signal in1, in2, result : std_logic_vector(31 downto 0);
	
	begin
		instancia_somador : somador port map(in1, in2, result);
		in1 <= x"1afd1123", x"1afd1123" after 10 ns;
		in2 <= x"1cb58daf", x"00000004" after 10 ns, x"00000004" after 15 ns;
		
end comportamento;