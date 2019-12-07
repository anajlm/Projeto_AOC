library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;
use ieee.numeric_std.all;

entity tb_processador is
end tb_processador;

architecture comportamento of tb_processador is
component processador is 
	port(
		clock				: in std_logic;
		PC_atual_out 	: out std_logic_vector(31 downto 0);
		RD 				: in std_logic_vector(31 downto 0);
		--RsA1, RtA2		: out std_logic_vector(4 downto 0);
		--RD1, RD2			: in std_logic_vector(31 downto 0);
		ALUOutW_out		: out std_logic_vector(31 downto 0);
		WriteRegW_out	: out std_logic_vector(4 downto 0);
		RegWriteW_out	: out std_logic
	);
end component;

signal clock : std_logic := '0';
signal PC_atual_out 	: std_logic_vector(31 downto 0);
signal RD 				: std_logic_vector(31 downto 0);
signal ALUOutW_out	: std_logic_vector(31 downto 0);
signal WriteRegW_out	: std_logic_vector(4 downto 0);
signal RegWriteW_out	: std_logic;

--file   reg  	: text open write_mode is "registradores.txt";

begin
	instancia_processador: processador port map(clock, PC_atual_out, RD, ALUOutW_out, WriteRegW_out, RegWriteW_out);
	clock<=not(clock) after 5 ns;
	
	process(PC_atual_out)
	begin
		if (PC_atual_out=x"00000000") then
			RD<=x"2011000e";
		elsif (PC_atual_out=x"00000004") then
			RD<=x"02319020";
		elsif (PC_atual_out=x"00000008") then
			RD<=x"02519825";
		elsif (PC_atual_out=x"0000000c") then
			RD<=x"0233a024";
		elsif (PC_atual_out=x"00000010") then
			RD<=x"0234a822";
		else 
			RD<=x"f0000000";
		end if;
	end process;
	

--	write_reg:process
--	variable linha1 : line;
----	variable linha2 : line;
--	variable output1 : std_logic_vector(4 downto 0);
----	variable output2 : std_logic_vector(31 downto 0);
--	begin
--	while true loop
--	wait for 3 ns;
--		if(RegWriteW_out='1') then
--			output1 := WriteRegW_out;
--			write(linha1, to_integer(unsigned(output1)));
--			writeline(reg, linha1);
--			--output2 := ALUOutW_out;
--			--write(linha2, output2);
--			--writeline(reg, linha2);
--		end if;
--		wait for 3 ns;
--	end loop;
--	end process write_reg;
end comportamento;