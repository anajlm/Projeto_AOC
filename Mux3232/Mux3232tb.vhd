library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity Mux3232tb is 
end;

architecture teste of Mux3232tb is

component Mux3232 port(
	
	Controle: in STD_LOGIC;
	Entrada0: in STD_LOGIC_VECTOR(31 downto 0);
	Entrada1: in STD_LOGIC_VECTOR(31 downto 0);
	Saida: out STD_LOGIC_VECTOR(31 downto 0));

end component;

signal Controle: STD_LOGIC;
signal Entrada0: STD_LOGIC_VECTOR(31 downto 0);
signal Entrada1: STD_LOGIC_VECTOR(31 downto 0);
signal Saida: STD_LOGIC_VECTOR(31 downto 0);

begin

instacia_Mux3232: Mux3232 port map(Controle=>Controle,Entrada0=>Entrada0,Entrada1=>Entrada1,Saida=>Saida);

process
begin
Controle <= '0','1' after  20 ns,'0' after 40 ns, '1' after  60 ns, '0' after 80 ns, '1' after  100 ns;
Entrada0 <= x"00000000",x"00000000" after 20 ns,x"10101010" after 40 ns,x"ffffffff" after 60 ns,x"00000000" after 80 ns,x"00001111" after 100 ns;
Entrada1 <= x"ffffffff",x"ffffffff" after 25 ns,x"00000000" after 45 ns,x"0000ffff" after 65 ns,x"11111111" after 85 ns,x"11111111" after 100 ns;
wait;
end process;
end;
