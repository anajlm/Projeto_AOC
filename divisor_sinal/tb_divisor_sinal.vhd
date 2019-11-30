library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_divisor_sinal is
end tb_divisor_sinal;

architecture comportamento of tb_divisor_sinal is
component divisor_sinal is
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
end component;

signal InstrD : std_logic_vector(31 downto 0);
signal Op, Funct : std_logic_vector(5 downto 0);
signal RsA1, RtA2, RsD, RtD, RdD : std_logic_vector(4 downto 0);
signal Imm: std_logic_vector(15 downto 0);

begin

instacia_divisor_sinal : divisor_sinal port map(InstrD, Op, Funct, RsA1, RtA2, RsD, RtD, RdD, Imm);
InstrD <= x"02328020", x"016D4022" after 10 ns, x"22300005" after 20 ns, x"2268FFF4" after 30 ns, x"2268FFF4" after 40 ns;

end comportamento;