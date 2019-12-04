library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity regW is
	port (
		clock : in std_logic;
		ALUOut : in std_logic_vector (31 downto 0);
		ALUOutW : out std_logic_vector (31 downto 0);
		WriteRegE : in std_logic_vector(4 downto 0);
		WriteRegW : out std_logic_vector(4 downto 0);
		RegWriteE : in std_logic;
		RegWriteW : out std_logic
	);
end regW;

architecture comportamento of regW is

begin
	process (clock)
	begin
		if(rising_edge(clock)) then
			ALUOutW <= ALUOut;
			WriteRegW <= WriteRegE;
			RegWriteW <= RegWriteE;
		end if;
	end process;
end comportamento;
