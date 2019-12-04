library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity regPC is
	port (
		clock : in std_logic;
		entrada : in std_logic_vector (31 downto 0);
		saida : out std_logic_vector (31 downto 0):=x"00000000"
	);
end regPC;

architecture comportamento of regPC is

begin
	process (clock)
	begin
		if(rising_edge(clock)) then
			saida <= entrada;
		end if;
	end process;
end comportamento;
