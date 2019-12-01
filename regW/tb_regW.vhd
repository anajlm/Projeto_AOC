library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_regW is
end tb_regW;

architecture comportamento of tb_regW is
	component regW is
	port (
		clock : in std_logic;
		ALUOut : in std_logic_vector (31 downto 0);
		ALUOutW : out std_logic_vector (31 downto 0);
		WriteRegE : in std_logic_vector(4 downto 0);
		WriteRegW : out std_logic_vector(4 downto 0);
		RegWriteE : in std_logic;
		RegWriteW : out std_logic
	);
end component;
	
	signal clock : std_logic;
	signal ALUOut, ALUOutW : std_logic_vector(31 downto 0);
	signal WriteRegE, WriteRegW : std_logic_vector(4 downto 0);
	signal RegWriteE, RegWriteW : std_logic;
	
	
	begin
	instancia_regW : regW port map(clock, ALUOut, ALUOutW, WriteRegE, WriteRegW, RegWriteE, RegWriteW);
	clock <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, '1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '1' after 40 ns;
	ALUOut <= x"058acd9e", x"5788ef4a" after 3 ns, x"d8792afe" after 13 ns, x"147895cd" after 23 ns, x"abcdef12" after 33 ns, x"abcdef12" after 43 ns;
	WriteRegE <= "01001", "10010" after 3 ns, "11010" after 13 ns, "00001" after 23 ns, "00000" after 33 ns, "00000" after 43 ns;
	RegWriteE <= '0', '1' after 3 ns, '1' after 13 ns, '0' after 23 ns, '1' after 33 ns, '1' after 43 ns;
end comportamento;
