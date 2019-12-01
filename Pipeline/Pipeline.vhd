----------------------------------------DATAPATH-----------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity datapath is
 port ( clk: in std_logic;
			RegDstD, ALUSrcD: in std_logic; --sinal de seleçao
			Reg WriteD: in std_logic; --sinal de controle
			Op, Funct: out std_logic_vector(5 downto 0);
			--PCPlus4F: out std_logic_vector(31 downto 0);
			AlUControlD: in std_logic_vector(1 downto 0);
			FowardAE, FowardBE: in std_logic_vecto
			--StallF, StallD, FlushE: in std_logic;
			--Zero: out std_logic;
			--MemWriteD: in std_logic;
 );
 
 end datapath;
 
 architecture struct of datapath is
 
component regPC is
	port (
		clock: in std_logic;
		entrada: in std_logic_vector (31 downto 0);
		saida: out std_logic_vector (31 downto 0)
		--stallF: in std_logic
	);
end component;

component regD is
	port (
		clock : in std_logic;
		RD : in std_logic_vector (31 downto 0);
		InstrD : out std_logic_vector (31 downto 0)
		--stallD: in std_logic;
	);
end component;

component regE is
	port (
		clock : in std_logic;
		RD1, RD2 : in std_logic_vector (31 downto 0);
		RD1s, RD2s : out std_logic_vector (31 downto 0);
		RsD, RtD, RdD : in std_logic_vector(4 downto 0);
		RsE, RtE, RdE : out std_logic_vector(4 downto 0);
		RegDstD, ALUSrcD, RegWriteD : in std_logic;
		RegDstE, ALUSrcE, RegWriteE : out std_logic;
		ALUControlD : in std_logic_vector(1 downto 0);
		ALUControlE : out std_logic_vector(1 downto 0);
		SignImmD: in std_logic_vector(31 downto 0); --MUDANÇA
		SignImmE: out std_logic_vector(31 downto 0) --MUDANÇA
		
		--flushE: in std_logic;
	);
end component;

component regW is
port (
		clock : in std_logic;
		ALUOut : in std_logic_vector (31 downto 0);
		ALUOutW : out std_logic_vector (31 downto 0);
		WriteRegE : in std_logic_vector(4 downto 0);
		WriteRegW : out std_logic_vector(4 downto 0);
		RegWriteE : in std_logic;
		RegWriteW : out std_logic
	);
end component;
 
component divisor_sinal is
	port(
		InstrD	: in std_logic_vector(31 downto 0);
		Op			: out std_logic_vector(5 downto 0);
		Funct		: out std_logic_vector(5 downto 0);
		RsA1		: out std_logic_vector(4 downto 0);
		RtA2		: out std_logic_vector(4 downto 0);
		RsD		: out std_logic_vector(4 downto 0);
		RtD		: out std_logic_vector(4 downto 0);
		RdD		: out std_logic_vector(4 downto 0);
		Imm		: out std_logic_vector(15 downto 0)
	);
end component;
 
 
component Mux2x1_32bits is
	port(
		selection: in STD_LOGIC;
		inA, inB: in STD_LOGIC_VECTOR(31 downto 0);
		outMux: out STD_LOGIC_VECTOR(31 downto 0)
	);
end component;

component Mux3x1_32bits is
	port(	
		selection : in std_logic_vector (1 downto 0);
		inA, inB, inC : in std_logic_vector (31 downto 0);
		outMux     : out std_logic_vector (31 downto 0)
	);
end component;

component Mux2x1_5bits is
	port(	
		selection : in std_logic;
		inA, inB : in std_logic_vector (4 downto 0);
		outMux     : out std_logic_vector (4 downto 0)
	);
end component;

 
 component Somador is 
	port(
		in1, in2 	: in std_logic_vector(31 downto 0);
		result		: out std_logic_vector(31 downto 0)
	);
end component;

component Register_File is 
	port( A1, A2, A3: in std_logic_vector(4 downto 0);
			WD3: in std_logic_vector(31 downto 0);
			RD1, RD2: out std_logic_vector(31 downto 0);
			WE3: in std_logic
	);

end component;
 
component SignExtend is 
	port(
		Imm: in STD_LOGIC_VECTOR(15 downto 0);
		SignImmD: out STD_LOGIC_VECTOR(31 downto 0)
	);
end component;

component ALU is
	port(
		SrcA, SrcB 	: in std_logic_vector(31 downto 0);
		ALUOut		: out std_logic_vector(31 downto 0);
		ALUControl	: in std_logic_vector(1 downto 0)
	);
end component;


signal clk: std_logic;
signal PC_atual, PC_next: std_logic_vector(31 downto 0);
signal RD: std_logic_vector(31 downto 0);
signal RD1, RD2: std_logic_vector(31 downto 0);
signal RD1s, RD2s: std_logic_vector(31 downto 0);
signal InstrD: std_logic_vector(31 downto 0);
signal RsA1, RtA2, RsD, RtD, RdD: std_logic_vector(4 downto 0);
signal imm: std_logic_vector(15 downto 0);
signal SignImmD, SignImmE: std_logic_vector(31 downto 0);
signal RsE, RtE, RdE: std_logic_vector(4 downto 0);
signal RegWriteE, RegWriteW: std_logic;
signal WriteRegE, WriteRegW: std_logic_vector(4 downto 0);
signal SrcAE, SrcBE: std_logic_vector(31 downto 0);
signal WriteDataE: std_logic_vector(31 downto 0);
signal: AluOutE, AluOutW: std_logic_vector(31 downto 0);


begin 
 
 Registrador_PC: regPC port map(clock=>clk, entrada=>PC_next, saida=>PC_atual);
 PC_incremento: Somador port map(in1=>PC_atual, in2=>x"00000004", result=>PC_next);
 Registrador_D: regD port map(RD=>RD, InstrD=>InstrD, clock=>clk);
 Divisor: divisor_sinal port map(InstrD=>InstrD, Op=>Op, Funct=>Funct, RsA1=>RsA1, RtA2=>RtA2, RsD=>RsD, RtD=>RtD, RdD=>RdD, Imm=>imm);
 Extensao_de_sinal: SignExtend port map(Imm=>imm, SignImmD=>SignImmD);
 Registrador_E: regE port map(RD1=>RD1, RD2=>RD2, RD1s=>RD1s, RD2s=>RD2s, SignImmD=>SignImmD, SignImmE=>SignImmE, RsD=>RsD, RtD=>RtD, RdD=RdD, RsE=>RsE, RtE=>RtE, RdE=>RdE, RegDstE=>RegDstD, MemtoRegE=>MemtoRegD, RegWriteE=>RegWriteD, AluControlE=>AluControlD);  
 --RF: Register_File port map(A1=>RsA1, A2=>RtA2, A3=>WriteRegW, WD3=>ResultW, RD1=>RD1, RD2=>RD2, WE3=>RegWriteW);
 Mux1: Mux2x1_5bits: port map(selection=>RegDstE, inA=>RtE, inB=>RdE, outMux=>WriteRegE);
 Mux2: Mux2x1_32bits: port map(selection=>FowardAE, inA=>RD1s, inB=>ResultW, ouMux=>SrcAE);
 Mux3: Mux2x1_32bits: port map(selection=>FowardBE, inA=>RD2s, inB=>ResultW, outMux=>WriteDataE);
 Mux4: Mux2x1_32bits: port map(selection=>AluSrcE, inA=>WriteDataE, inB=>SignImmE, outMux=>SrcBE);
 ALU_1: ALU port map(AluControl=>AluControlE, SrcA=>SrcAE, SrcB=>SrcBE, AluOut=>AluOutE);
 Registrador_W: regW port map(clock=>clk, WriteRegE=>WriteRegE, RegWriteE=>RegWriteE, WriteRegW=>WriteRegW, RegWriteW=>RegWriteW, ALUOut=>AluOutE, AluOutW=>AluOutW);
 
 
 
 end struct;
 
 
 
 ------------------------------------------CONTROLADORA---------------------------------------------
 
LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Control is
	port(	op, funct : in std_logic_vector(5 downto 0);
		   RegDst, ALUSrc : out std_logic;
			ALUControlID     : out std_logic_vector(1 downto 0);
			RegWrite: out std_logic
	    );
end Control;

architecture Logic of Control is
begin
	RegWrite <= 
		'1' when (op = "000000" or op = "001000") else
		'0';
	RegDst <=
		'1' when (op = "000000") else
		'0';
	AluSrc <=
		'1' when (op = "001000") else
		'0';	
		
	ALUControlID<=
		"00" when (funct = "100100") else
		"01" when (funct = "100101") else
		"10" when (funct = "100000") else
		"11" when (funct = "100010") else
		"10" when (op = "001000") else -- caso do addi nao tem funct
		"00";
end Logic;
 
 
 ------------------------------------------PIPELINE-----------------------------------------------
 
 entity Pipeline is
 
 end Pipeline;
 
 
 architecture struct of Pipeline is
 
 component datapath is
		port ( clk: in std_logic;
				RegDstD, ALUSrcD: in std_logic;
				RegWriteD: in std_logic;
				Op, Funct: out std_logic_vector(5 downto 0);
				AlUControlD: in std_logic_vector(1 downto 0);
				FowardAE, FowardBE: in std_logic_vecto
				--StallF, StallD, FlushE: in std_logic;
				--Zero: out std_logic;
				--MemWriteD: in std_logic;
 	);
 
 end component;
 
 
 component controladora is
 	port(	op, funct : in std_logic_vector(5 downto 0);
				RegDst, ALUSrc : out std_logic;
				ALUControlID     : out std_logic_vector(1 downto 0);
				RegWrite: out std_logic
	    );
 end component;
 
signal RegDst, ALUSrc, RegWrrite: std_logic;
signal ALUControl: std_logic_vector(1 downto 0);
signal op, funct: std_logic_vector(5 downto 0);

begin
Caminho_de_dados: datapath port map(RegDstD=>RegDst, ALUSrcD=>ALUSrc, RegWriteD=>RegWrite, ALUControlD=>ALUControl, Op=>op, Funct=>funct);
Controladora: Control port map(op=>op, funct=>funct, ALUControlID=>ALUControl, RegDst=>RegDst, RegWrite=>RegWrite, ALUSrc=>ALUSrc);

end struct;