LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Control is
	port(	op, funct : in std_logic_vector(5 downto 0);
		   RegDst, ALUSrc : out std_logic;
			ALUControlID     : out std_logic_vector(1 downto 0);
			RegWrite: out std_logic
	    );
end Control;

architecture Logic of Control is
begin
	RegWrite <= 
		'1' when (op = "000000" or op = "001000") else
		'0';
	RegDst <=
		'1' when (op = "000000") else
		'0';
	AluSrc <=
		'1' when (op = "001000") else
		'0';	
		
	ALUControlID<=
		"00" when (funct = "100100") else
		"01" when (funct = "100101") else
		"10" when (funct = "100000") else
		"11" when (funct = "100010") else
		"10" when (op = "001000") else -- caso do addi nao tem funct
		"00";
end Logic;