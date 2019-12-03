library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_Hazard is
end tb_Hazard;

architecture comportamento of tb_Hazard IS
	component Hazard is
	port (--clk: in std_logic;
		  FowardAE, FowardBE: out std_logic;
		  RegWriteW: in std_logic;
		  WriteRegW, RsE, RtE: in std_logic_vector(4 downto 0)
		);
end component;
	
	signal clk, FowardAE, FowardBE, RegWriteW: std_logic;
	signal WriteRegW, RsE, RtE: std_logic_vector(4 downto 0);
	
	begin
	instancia_Hazard : Hazard port map(FowardAE, FowardBE, RegWriteW, WriteRegW, RsE, RtE);
	--clk <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, '1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '1' after 40 ns;
	RegWriteW <= '0', '1' after 3 ns, '0' after 13 ns, '1' after 23 ns, '0' after 33 ns, '1' after 39 ns;
	WriteRegW <= "00001", "00010" after 6 ns, "00011" after 9 ns, "00100" after 18 ns, "00101" after 23 ns, "00110" after 31 ns, "00111" after 36 ns;
	RsE <= "00000", "00011" after 8 ns, "10000" after 14 ns, "10110" after 23 ns, "00110" after 32 ns;
	RtE <= "00001", "10000" after 6 ns, "11010" after 23 ns, "00110" after 31 ns;
	
end comportamento;