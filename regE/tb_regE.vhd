library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_regE is
end tb_regE;

architecture comportamento of tb_regE IS
	component regE is
	port (
		clock : in std_logic;
		RD1, RD2 : in std_logic_vector (31 downto 0);
		RD1s, RD2s : out std_logic_vector (31 downto 0);
		RsD, RtD, RdD : in std_logic_vector(4 downto 0);
		RsE, RtE, RdE : out std_logic_vector(4 downto 0);
		RegDstD, ALUSrcD, RegWriteD : in std_logic;
		RegDstE, ALUSrcE, RegWriteE : out std_logic;
		ALUControlD : in std_logic_vector(1 downto 0);
		ALUControlE : out std_logic_vector(1 downto 0)
	);
end component;
	
	signal clock : std_logic;
	signal RD1, RD2, RD1s, RD2s : std_logic_vector(31 downto 0);
	signal RsD, RtD, RdD, RsE, RtE, RdE : std_logic_vector(4 downto 0);
	signal RegDstD, ALUSrcD, RegWriteD, RegDstE, ALUSrcE, RegWriteE : std_logic;
	signal ALUControlD, ALUControlE : std_logic_vector(1 downto 0);
	
	
	begin
	instancia_regE : regE port map(clock, RD1, RD2, RD1s, RD2s, RsD, RtD, RdD, RsE, RtE, RdE, RegDstD, ALUSrcD, RegWriteD, RegDstE, ALUSrcE, RegWriteE, ALUControlD, ALUControlE);
	clock <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, '1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '1' after 40 ns;
	RD1 <= x"058acd9e", x"5788ef4a" after 3 ns, x"d8792afe" after 13 ns, x"147895cd" after 23 ns, x"abcdef12" after 33 ns, x"abcdef12" after 43 ns;
	RD2 <= x"05edcd9e", x"5345ef3a" after 3 ns, x"d83452a3" after 13 ns, x"144495ef" after 23 ns, x"efcd3455" after 33 ns, x"efcd3455" after 43 ns;
	RsD <= "01001", "10010" after 3 ns, "11010" after 13 ns, "00001" after 23 ns, "00000" after 33 ns, "00000" after 43 ns;
	RtD <= "01101", "11010" after 3 ns, "11000" after 13 ns, "11001" after 23 ns, "11111" after 33 ns, "11111" after 43 ns;
	RdD <= "01111", "11110" after 3 ns, "11110" after 13 ns, "11011" after 23 ns, "11011" after 33 ns, "11011" after 43 ns;
	RegDstD <= '0', '1' after 3 ns, '1' after 13 ns, '0' after 23 ns, '1' after 33 ns, '1' after 43 ns;
	ALUSrcD <= '1', '0' after 3 ns, '0' after 13 ns, '1' after 23 ns, '0' after 33 ns, '0' after 43 ns;
	RegWriteD <= '1', '1' after 3 ns, '0' after 13 ns, '0' after 23 ns, '1' after 33 ns, '1' after 43 ns;
	ALUControlD <= "11", "10" after 3 ns, "01" after 13 ns, "00" after 23 ns, "01" after 33 ns, "01" after 43 ns;

end comportamento;
