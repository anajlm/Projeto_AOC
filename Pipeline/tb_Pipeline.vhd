library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;

 entity tb_Pipeline is
	
 end tb_Pipeline;
 
 
 architecture teste of tb_Pipeline is
 
 component Pipeline is
	port(clk: in std_logic;
		  Instr: in std_logic_vector(31 downto 0);
		  RegWriteW: out std_logic;
		  WriteRegW: out std_logic_vector(4 downto 0);
		  AluOutW: out std_logic_vector(31 downto 0)
	);
end component;


file Banco_Registradores: text open write_mode is "banco_registradores.txt";

signal clk: std_logic;
signal instr: std_logic_vector(31 downto 0);
signal RegWriteW_wire: std_logic;
signal WriteRegW_wire: std_logic_vector(4 downto 0);
signal AluOutW_wire: std_logic_vector(31 downto 0);

begin

Pipeline_1: Pipeline port map(clk=>clk, Instr=>instr, RegWriteW=>RegWriteW_wire, WriteRegW=>WriteRegW_wire, AluOutW=>AluOutW_wire);

escrita: process
variable linea: line;
variable WriteReg: std_logic_vector(4 downto 0);
variable AluOut: std_logic_vector(31 downto 0);


begin

if RegWriteW_wire = '1' then
		WriteReg := WriteRegW_wire;
		write(linea, WriteReg);
		writeline(Banco_Registradores, linea);
		
		
		AluOut := AluOutW_wire;
		write(linea, AluOut);
		writeline(Banco_Registradores, linea);
		
end if;

end process;


clk <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, '1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '0' after 40 ns, '1' after 45 ns, '0' after 50 ns, '1' after 55 ns, '0' after 60 ns, '1' after 65 ns, '0' after 70 ns, '1' after 75 ns, '0' after 80 ns, '1' after 85 ns, '0' after 90 ns, '1' after 95 ns, '0' after 100 ns;
Instr <= x"2011000E";




end teste;