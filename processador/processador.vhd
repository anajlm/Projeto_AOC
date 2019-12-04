library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity processador is 
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
end processador;

architecture comportamento of processador is
	component regPC is
	port (
		clock : in std_logic;
		entrada : in std_logic_vector (31 downto 0);
		saida : out std_logic_vector (31 downto 0):=x"00000000"
	);
	end component;
	
	component somador is --somador do PC
	port(
		in1, in2 	: in std_logic_vector(31 downto 0);
		result		: out std_logic_vector(31 downto 0)
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
	
	component register_file is   
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
	end component;
	
	component Control is
	port(	op, funct : in std_logic_vector(5 downto 0);
		   RegDst, ALUSrc : out std_logic;
			ALUControlID     : out std_logic_vector(1 downto 0);
			RegWrite: out std_logic
	    );
	end component;
	
	component SignExtend is 
	port(
		Imm: in STD_LOGIC_VECTOR(15 downto 0);	
		SignImmD: out STD_LOGIC_VECTOR(31 downto 0)
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
		SignImmD: in std_logic_vector(31 downto 0); 
		SignImmE: out std_logic_vector(31 downto 0) 
		--flushE: in std_logic;
	);
	end component;
	
	component Mux2x1_5bits is
	port(	
		selection : in std_logic;
		inA, inB : in std_logic_vector (4 downto 0);
		outMux     : out std_logic_vector (4 downto 0)
	);
	end component;
	
	component Mux2x1_32bits is
	port(	
		selection : in std_logic;
		inA, inB : in std_logic_vector (31 downto 0);
		outMux     : out std_logic_vector (31 downto 0)
	);
	end component;
	
	component ALU is
	port(
		SrcA, SrcB 	: in std_logic_vector(31 downto 0);
		ALUOut		: out std_logic_vector(31 downto 0);
		ALUControl	: in std_logic_vector(1 downto 0)
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
	
	component Hazard is
	port (
		  FowardAE, FowardBE: out std_logic;
		  RegWriteW: in std_logic;
		  WriteRegW, RsE, RtE: in std_logic_vector(4 downto 0)
		);
	end component;
	
	
	signal PC_atual : std_logic_vector(31 downto 0);--PCs
	signal PC_next : std_logic_vector(31 downto 0);
	
	signal InstrD : std_logic_vector(31 downto 0);--regD
	
	signal Op, Funct : std_logic_vector(5 downto 0);--Divisor de sinal
	signal RsD, RtD, RdD : std_logic_vector(4 downto 0);
	signal Imm : std_logic_vector(15 downto 0);
	signal RsA1, RtA2 : std_logic_vector(4 downto 0);--Divisor de Sinal - Reg File
	
	signal RD1, RD2 : std_logic_vector(31 downto 0);--Register File
	
	signal RegDstD, ALUSrcD, RegWriteD : std_logic;--Controladora
	signal ALUControlD : std_logic_vector(1 downto 0);
	
	signal SignImmD : std_logic_vector(31 downto 0);--SingExt.
	
	signal RD1s, RD2s : std_logic_vector (31 downto 0);--regE
	signal RsE, RtE, RdE : std_logic_vector(4 downto 0);
	signal RegDstE, ALUSrcE, RegWriteE : std_logic;
	signal ALUControlE : std_logic_vector(1 downto 0);
	signal SignImmE: std_logic_vector(31 downto 0);
	
	signal WriteRegE: std_logic_vector(4 downto 0);--mux dos registradores 5bits
	
	signal FowardAE: std_logic;--Hazard-MuxA
	signal SrcAE: std_logic_vector(31 downto 0);--muxA
	
	--signal ALUOutW: std_logic_vector(31 downto 0);--fio de encaminhamento
	
	signal FowardBE: std_logic;--Hazard-MuxB
	signal outMuxB: std_logic_vector(31 downto 0);--muxB
	
	signal SrcBE: std_logic_vector(31 downto 0);--muxImm
	
	signal ALUOut: std_logic_vector(31 downto 0); --ALU
	
	signal ALUOutW: std_logic_vector(31 downto 0);--regW
	signal WriteRegW: std_logic_vector(4 downto 0);
	signal RegWriteW: std_logic;

	
	begin
	instancia_regPC: regPC port map(clock, saida=>PC_atual, entrada=>PC_next);
	instancia_soamador: somador port map(in1=>PC_atual, in2=>x"00000004", result=>PC_next);
	instancia_regD: regD port map(clock, RD, InstrD);
	instancia_div_sinal: divisor_sinal port map(InstrD, Op, Funct, RsA1, RtA2, RsD, RtD, RdD, Imm);
	instancia_reg_file: register_file port map(A1=>RsA1, A2=>RtA2, A3=>WriteRegW, clock=>clock, WE3=>RegWriteW, WD3=>ALUOutW, RD1=>RD1, RD2=>RD2);
	instancia_control: Control port map(op, funct, RegDst=>RegDstD, ALUsrc=>ALUSrcD, ALUControlID=>ALUControlD ,RegWrite=>RegWriteD);
	instancia_SignExtend: SignExtend port map(Imm, SignImmD);
	instancia_regE: regE port map(clock, RD1, RD2, RD1s, RD2s, RsD, RtD, RdD, RsE, RtE, RdE, RegDstD, ALUSrcD, RegWriteD, RegDstE, ALUSrcE, RegWriteE, ALUControlD, ALUControlE, SignImmD, SignImmE);
	instancia_mux5bits: Mux2x1_5bits port map(selection=>RegDstE, inA=>RtE, inB=>RdE, outMux=>WriteRegE);
	instancia_mux_ForwardA: Mux2x1_32bits port map(selection=>FowardAE, inA=>RD1s, inB=>ALUOutW, outMux=>SrcAE);
	instancia_mux_ForwardB: Mux2x1_32bits port map(selection=>FowardBE, inA=>RD2s, inB=>ALUOutW, outMux=>outMuxB);
	instancia_mux_imm: Mux2x1_32bits port map(selection=>ALUSrcE, inA=>outMuxB, inB=>SignImmE, outMux=>SrcBE);
	instancia_ALU: ALU port map(SrcA=>SrcAE, SrcB=>SrcBE, ALUOut=>ALUOut, ALUControl=>ALUControlE);
	instancia_regW: regW port map(clock, ALUOut, ALUOutW, WriteRegE, WriteRegW, RegWriteE, RegWriteW);
	instancia_Hazard: Hazard port map(FowardAE, FowardBE, RegWriteW, WriteRegW, RsE, RtE);
	
	
	PC_atual_out<=PC_atual;
	ALUOutW_out<=ALUOutW;
	WriteRegW_out<=WriteRegW;
	RegWriteW_out<=RegWriteW;
	
end comportamento;
	