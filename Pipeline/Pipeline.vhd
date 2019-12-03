------------------------------------------PIPELINE-----------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

 entity Pipeline is
	port(clk: in std_logic;
		  Instr: in std_logic_vector(31 downto 0);
		  RegWriteW: out std_logic;
		  WriteRegW: out std_logic_vector(4 downto 0);
		  AluOutW: out std_logic_vector(31 downto 0)
	);
 end Pipeline;
 
 
 architecture struct of Pipeline is
 
 component datapath is
		port (clk: in std_logic;
				Instr: in std_logic_vector(31 downto 0);
				RegDst, ALUSrc: in std_logic;
				RegWrite: in std_logic;
				Op, Funct: out std_logic_vector(5 downto 0);
				ALUControl: in std_logic_vector(1 downto 0);
				FowardAE, FowardBE: in std_logic;
				RegWriteW: out std_logic;
				WriteRegW, RsE, RtE: out std_logic_vector(4 downto 0);
				AluOutW: out std_logic_vector(31 downto 0)
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
	port (--clk: in std_logic;
		   FowardAE, FowardBE: out std_logic;
		   RegWriteW: in std_logic;
		   WriteRegW, RsE, RtE: in std_logic_vector(4 downto 0)
		  );
 end component;

signal RegDst, ALUSrc, RegWrite_wire, RegWriteW_wire: std_logic;
signal ALUControl: std_logic_vector(1 downto 0);
signal op, funct: std_logic_vector(5 downto 0);
signal FowardAE, FowardBE: std_logic;
signal WriteRegW_wire, RsE_wire, RtE_wire: std_logic_vector(4 downto 0);
signal AluOutW_wire: std_logic_vector(31 downto 0);

begin
Caminho_de_dados: datapath port map(clk=>clk, Instr=>Instr, Op=>op, Funct=>funct, RegDst=>RegDst, ALUSrc=>ALUSrc, RegWrite=>RegWrite_wire, ALUControl=>ALUControl, FowardAE=>FowardAE, FowardBE=>FowardBE, RegWriteW=>RegWriteW_wire, WriteRegW=>WriteRegW_wire, RsE=>RsE_wire, RtE=>RtE_wire, AluOutW=>AluOutW_wire);
Controladora: Control port map(op=>op, funct=>funct, ALUControlID=>ALUControl, RegDst=>RegDst, RegWrite=>RegWrite_wire, ALUSrc=>ALUSrc);
Unidade_de_Hazard: Hazard port map(FowardAE=>FowardAE, FowardBE=>FowardBE, RegWriteW=>RegWriteW_wire, WriteRegW=>WriteRegW_wire, RsE=>RsE_wire, RtE=>RtE_wire);


RegWriteW <= RegWriteW_wire;
WriteRegW <= WriteRegW_wire;
AluOutW <= AluOutW_wire;


end struct;