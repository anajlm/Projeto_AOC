library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux3232 is 
port(

Controle: in STD_LOGIC;
Entrada0: in STD_LOGIC_VECTOR(31 downto 0);
Entrada1: in STD_LOGIC_VECTOR(31 downto 0);
Saida: out STD_LOGIC_VECTOR(31 downto 0));

end;

architecture struct of Mux3232 is

signal booleano: boolean;

begin
	process(Controle)
		variable b: boolean;
		begin
			case Controle is
				when '0' => b := false;
				when others => b := true;
			end case;
			booleano <= b ;
	end process;

	Saida <= Entrada1 when booleano else Entrada0;

end;
