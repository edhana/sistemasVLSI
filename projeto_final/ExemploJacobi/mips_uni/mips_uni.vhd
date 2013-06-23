-- Quartus II VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;
use work.mips_uni_pkg.all;

entity mips_uni is
	port 
	(
		clk		: in std_logic;
		clk_rom	: in std_logic;
		rst	   : in std_logic;
		data  	: out std_logic_vector(WORD_SIZE-1 downto 0)
	);
end entity;

architecture rtl of mips_uni is

signal 	pcin, 		-- entrada PC
			pcout,  		-- saida PC
			pcplus4, 	-- PC incrementado de 4
			pccond,		-- PC somado ao offset
			pcbranch,	-- Saida primeiro mux PC
			pcjump,  	-- Endereco de Jump
			regdata,		-- entrada de dados BREG
			dmout,		-- saida da memoria de dados
			dmadd,		-- endereco da memoria de dados
			regA,			-- saida A do BREG
			regB,			-- saida B do BREG
			aluB,			-- entrada B da ULA
			alu_out,		-- saida ULA
			instruction,-- saida da memoria de instrucoes
			imm32			-- imediato extendido a 32 bits
			: std_logic_vector(WORD_SIZE-1 downto 0);
			
signal addsht2 : std_logic_vector(WORD_SIZE-1 downto 0) := imm32(WORD_SIZE-3 downto 0) & "00";
			
signal rset, clock : std_logic;

signal iwreg 	: std_logic_vector(4 downto 0); -- indice registador escrito

signal alu_sel : std_logic_vector(3 downto 0); -- indice registador escrito

signal alu_op 	: std_logic_vector(1 downto 0);		-- codigo op ula

signal 	reg_dst,		-- controle endereo reg
			jump,			-- instrucao jump
			branch,		-- beq ou bne
			mem_read,	-- leitura memoria
			mem_reg,		-- controle dado breG
			mem_wr,		-- escrita na memoria
			alu_src,		-- entrada B da ula
			zero,			-- sinal zero da ula
			sel_jmp,		-- selecao da ula 
			reg_wr		-- escreve breG
			: std_logic;
			

alias    func_field 	: std_logic_vector(5 downto 0) is instruction(5 downto 0);
alias    rs_field 	: std_logic_vector(4 downto 0) is instruction(25 downto 21);
alias    rt_field 	: std_logic_vector(4 downto 0) is instruction(20 downto 16);
alias    rd_field 	: std_logic_vector(4 downto 0) is instruction(15 downto 11);
alias    imm16_field : std_logic_vector(15 downto 0) is instruction(15 downto 0);
alias 	imm26_field : std_logic_vector(25 downto 0) is instruction(25 downto 0);
alias 	sht_field	: std_logic_vector(4 downto 0) is instruction(10 downto 6);
alias    op_field		: std_logic_vector(5 downto 0) is instruction(31 downto 26);

	
begin

data <= pcout;

pc:	reg 
		generic map (SIZE => 32)
		port map (sr_in => pcin, sr_out => pcout, rst => rst, clk => clk, enable => '1');
		
imem: inst_mem
		port map (address => pcout(9 downto 2), clk => clk_rom, Q => instruction);
		
add4: adder
		port map (a => pcout, b => INC_PC, res => pcplus4);
		
pcjump <= pcplus4(31 downto 28) & imm26_field & "00";

ctr_mips: control
		port map (	opcode  => op_field,
						op_ula  => alu_op,
						reg_dst => reg_dst,
						rd_mem  => mem_read,
						branch  => branch,
						jump	  => jump,
						mem2reg => mem_reg,
						mem_wr  => mem_wr,
						alu_src => alu_src,
						breg_wr => reg_wr
						);
						
mux_ireg: mux_2 
		generic map (SIZE => 5)
		port map (in0 => rt_field,
					 in1 => rd_field,
					 sel => reg_dst,
					 m_out => iwreg);
		
bcoreg: breg 
		port map (
			clk		=> clk,
			enable	=> reg_wr,
			idxA		=> rs_field,
			idxB		=> rt_field,
			idxwr		=> iwreg,
			data_in	=> regdata,
			regA 		=> regA,
			regB 		=> regB
			);
			
sgnx:	sig_ext
		port map (
			imm16 => imm16_field, ext32 => imm32
		);
		
mux_ula: mux_2
		port map (
			in0 	=> regB, 
			in1 	=> imm32,
			sel 	=> alu_src,
			m_out => aluB
		);
		
alu:	ulamips 
		port map (
			aluctl => alu_sel,
			A 		 => regA,
			B		 => aluB,
			aluout => alu_out,
			zero	 => zero
		);
		
addpc: adder
		port map (
			a => pcplus4, 
			b => addsht2, 
			res => pccond
		);
					 
mux_branch: mux_2
		port map (
			in0 	=> pcplus4,
			in1 	=> pccond,
			sel 	=> sel_jmp,
			m_out => pcbranch
			);

mux_pc: mux_2
		port map (
			in0 	=> pcbranch,
			in1 	=> pcjump,
			sel 	=> jump,
			m_out => pcin
			);
			
mux_reg: mux_2
		port map (
			in0 	=> alu_out,
			in1 	=> dmout,
			sel 	=> mem_reg,
			m_out => regdata
			);
			
sel_jmp <= branch and zero;

mem_d: data_mem
		port map (
			address	=> alu_out (9 downto 2),
			clock		=> clk_rom,
			data		=> regB,
			wren		=> mem_wr,
			q			=> dmout
		);
		
actr: alu_ctr
			port map (
				op_alu 	=> alu_op,
				funct	 	=> func_field,
				alu_ctr	=> alu_sel
			);
end architecture;