library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_regD is
end tb_regD;

architecture comportamento of tb_regD IS
	component regD is
	port (
		clock : in std_logic;
		RD : in std_logic_vector (31 downto 0);
		InstrD : out std_logic_vector (31 downto 0)
	);
end component;
	
	signal clock : std_logic;
	signal RD, InstrD: std_logic_vector(31 downto 0);
	
	begin
	instancia_regD : regD port map(clock, RD, InstrD);
	clock <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, '1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '1' after 40 ns;
	RD <= x"058acd9e", x"5788ef4a" after 3 ns, x"d8792afe" after 13 ns, x"147895cd" after 23 ns, x"abcdef12" after 33 ns, x"abcdef12" after 43 ns;

end comportamento;
