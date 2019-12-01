library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity regD is
	port (
		clock : in std_logic;
		RD : in std_logic_vector (31 downto 0);
		InstrD : out std_logic_vector (31 downto 0)
	);
end regD;

architecture comportamento of regD is

begin
	process (clock)
	begin
		if(rising_edge(clock)) then
			InstrD <= RD;
		end if;
	end process;
end comportamento;
