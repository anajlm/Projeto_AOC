LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity tb_Control is
end tb_Control;

architecture test of tb_Control is
component Control is
	port(
		op, funct : in std_logic_vector(5 downto 0);
		RegDst, ALUSrc : out std_logic;
		ALUControlID     : out std_logic_vector(1 downto 0);
		RegWrite: out std_logic
	);
end component;

signal iop, ifunct : std_logic_vector(5 downto 0); 
signal dst, src, writ : std_logic;
signal id : std_logic_vector(1 downto 0);

begin
	inst_Control: Control port map (op => iop, funct => ifunct, RegDst => dst, ALUSrc => src,
												ALUControlID => id, RegWrite => writ);
iop <= "000000", "001000" after 12 ns, "001000" after 15 ns;
ifunct <= "000000", "100000" after 3 ns, "100010" after 5 ns, "100100" after 7 ns, "100101" after 9 ns, "100101" after 12 ns; 									
	
end test;