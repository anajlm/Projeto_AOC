library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity somador is --somador do PC
	port(
		in1, in2 	: in std_logic_vector(31 downto 0);
		result		: out std_logic_vector(31 downto 0)
	);
end somador;

architecture comportamento of somador is

begin
result <= (std_logic_vector(signed(in1)+signed(in2)));

end comportamento;