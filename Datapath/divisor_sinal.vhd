library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divisor_sinal is
	port(
		InstrD	: in std_logic_vector(31 downto 0);
		Op			: out std_logic_vector(5 downto 0);
		Funct		: out std_logic_vector(5 downto 0);
		RsA1		: out std_logic_vector(4 downto 0);
		RtA2		: out std_logic_vector(4 downto 0);
		RsD		: out std_logic_vector(4 downto 0);
		RtD		: out std_logic_vector(4 downto 0);
		RdD		: out std_logic_vector(4 downto 0);
		Imm		: out std_logic_vector(15 downto 0)
	);
end divisor_sinal;

architecture comportamento of divisor_sinal is

begin
	Op <= InstrD(31 downto 26);
	Funct <= InstrD(5 downto 0);
	RsA1 <= InstrD(25 downto 21);
	RtA2 <= InstrD(20 downto 16);
	RsD <= InstrD(25 downto 21);
	RtD <= InstrD(20 downto 16);
	RdD <= InstrD(15 downto 11);
	Imm <= InstrD(15 downto 0);
	

end comportamento;
	