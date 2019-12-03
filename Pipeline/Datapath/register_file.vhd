library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity register_file is   
    port
    (
    RD1		: out std_logic_vector(31 downto 0);
    RD2  	: out std_logic_vector(31 downto 0);
    WD3		: in  std_logic_vector(31 downto 0);
    WE3  	: in std_logic;
    A1   	: in std_logic_vector(4 downto 0);
    A2   	: in std_logic_vector(4 downto 0);
    A3   	: in std_logic_vector(4 downto 0);
    clock 	: in std_logic
    );
end register_file;

architecture behavioral of register_file is
type registerFile is array(0 to 31) of std_logic_vector(31 downto 0);
signal registers : registerFile := (others => (others => '0'));
begin
    regFile: process(clock)
    begin
		if (falling_edge(clock) and WE3='1') then
			registers(to_integer(unsigned(A3))) <= WD3;
		end if;
    end process;
	 RD1<=registers(to_integer(unsigned(A1)));
	 RD2<=registers(to_integer(unsigned(A2)));
	 
end behavioral;