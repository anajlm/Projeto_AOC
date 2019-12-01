library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity regE is
	port (
		clock : in std_logic;
		RD1, RD2 : in std_logic_vector (31 downto 0);
		RD1s, RD2s : out std_logic_vector (31 downto 0);
		RsD, RtD, RdD : in std_logic_vector(4 downto 0);
		RsE, RtE, RdE : out std_logic_vector(4 downto 0);
		RegDstD, ALUSrcD, RegWriteD : in std_logic;
		RegDstE, ALUSrcE, RegWriteE : out std_logic;
		ALUControlD : in std_logic_vector(1 downto 0);
		ALUControlE : out std_logic_vector(1 downto 0)
		--flushE: in std_logic;
	);
end regE;

architecture comportamento of regE is

begin
	process (clock)
	begin
		if(rising_edge(clock)) then
			--if flushE = '0' then
			RD1s <= RD1;
			RD2s <= RD2;
			RsE <= RsD;
			RtE <= RtD;
			RdE <= RdD;
			RegDstE <= RegDstD;
			ALUSrcE <= ALUSrcD;
			RegWriteE <= RegWriteD;
			ALUControlE <= ALUControlD;
			--end if;
		end if;
	end process;
end comportamento;
