library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SignExtend is 
port(

Imm: in STD_LOGIC_VECTOR(15 downto 0);
SignImmD: out STD_LOGIC_VECTOR(31 downto 0));

end;

architecture struct of SignExtend is

signal booleano: boolean;

begin
	process(Imm(15))
		variable b: boolean;
		begin
			case Imm(15) is
				when '0' => b := false;
				when others => b := true;
			end case;
			booleano <= b ;
	end process;

	SignImmD <= X"ffff" & Imm when booleano else X"0000" & Imm;

end;
