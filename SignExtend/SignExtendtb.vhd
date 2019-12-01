library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity SignExtendtb is 
end;

architecture teste of SignExtendtb is

component SignExtend port(
	
	Imm: in STD_LOGIC_VECTOR(15 downto 0);
	SignImmD: out STD_LOGIC_VECTOR(31 downto 0));

end component;

signal Imm: STD_LOGIC_VECTOR(15 downto 0);
signal SignImmD: STD_LOGIC_VECTOR(31 downto 0);

begin

SignExtend1: SignExtend port map(Imm,SignImmD);

process
	begin 
		
		Imm <= "0000000000000001","1110000000000001" after 20 ns,"1111000000000001" after  40 ns,"0111000000000001" after 60 ns, "0000000111000001" after 80 ns, "1000000000011111" after 100 ns;
wait;
end process;
end;