library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity regPC is
	port (
		clock : in std_logic;
		entrada : in std_logic_vector (31 downto 0);
		saida : out std_logic_vector (31 downto 0)
		--stallF: in std_logic
	);
end regPC;

architecture comportamento of regPC is

begin
	process (clock)
	begin
		if(rising_edge(clock)) then
		--if stallF = '0' then
			saida <= entrada;
		end if;
		--end  if;
	end process;
end comportamento;
