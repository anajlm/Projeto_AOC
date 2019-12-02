


------------------------------------------PIPELINE-----------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

 entity Pipeline is
 
 end Pipeline;
 
 
 architecture struct of Pipeline is
 
 component datapath is
		port ( clk: in std_logic;
				RegDst, ALUSrc: in std_logic;
				RegWrite: in std_logic;
				Op, Funct: out std_logic_vector(5 downto 0);
				AlUControl: in std_logic_vector(1 downto 0);
				FowardAE, FowardBE: in std_logic;
				RegWriteW: out std_logic;
				WriteRegW, RsE, RtE: in std_logic_vector(4 downto 0)
				--StallF, StallD, FlushE: in std_logic;
				--Zero: out std_logic;
				--MemWriteD: in std_logic;
				);
 
 end component;
 
 
 component Control is
 	port(	op, funct : in std_logic_vector(5 downto 0);
				RegDst, ALUSrc : out std_logic;
				ALUControlID: out std_logic_vector(1 downto 0);
				RegWrite: out std_logic
	    );
 end component;
 
 component Hazard is
	port (clk: in std_logic;
		   FowardAE, FowardBE: out std_logic;
		   RegWriteW: in std_logic;
		   WriteRegW, RsE, RtE: in std_logic_vector(4 downto 0)
		  );
 end component;

signal clk: std_logic;
signal RegDst, ALUSrc, RegWrite, RegWriteW: std_logic;
signal ALUControl: std_logic_vector(1 downto 0);
signal op, funct: std_logic_vector(5 downto 0);
signal FowardAE, FowardBE: std_logic;
signal WriteRegW, RsE, RtE: std_logic_vector(4 downto 0);

begin
Caminho_de_dados: datapath port map(clk=>clk, Op=>op, Funct=>funct, RegDst=>RegDst, ALUSrc=>ALUSrc, RegWrite=>RegWrite, ALUControl=>ALUControl, FowardAE=>FowardAE, FowardBE=>FowardBE, RegWriteW=>RegWriteW, WriteRegW=>WriteRegW, RsE=>RsE, RtE=>RtE);
Controladora: Control port map(op=>op, funct=>funct, ALUControlID=>ALUControl, RegDst=>RegDst, RegWrite=>RegWrite, ALUSrc=>ALUSrc);
Unidade_de_Hazard: Hazard port map(clk=>clk, FowardAE=>FowardAE, FowardBE=>FowardBE, RegWriteW=>RegWriteW, WriteRegW=>WriteRegW, RsE=>RsE, RtE=>RtE);


end struct;