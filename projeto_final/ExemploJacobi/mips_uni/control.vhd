library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.mips_uni_pkg.all;

entity control is
	port (
		opcode : in std_logic_vector(5 downto 0);
		op_ula :	out std_logic_vector(1 downto 0);
		reg_dst,
		rd_mem,
		branch,
		jump,
		mem2reg,
		mem_wr,
		alu_src,
		breg_wr:	out std_logic
		);
end control;

architecture rtl of control is
begin
	with opcode select
	reg_dst 	<= '1' when iRTYPE,
				   '0' when others;
	with opcode select
	breg_wr 	<= '1' when iRTYPE | iLW | iADDI | iORI,
				   '0' when others;
	rd_mem 	<= '1' when (opcode = iLW) else '0';
	branch   <= '1' when (opcode = iBEQ) or (opcode = iBNE) else '0';
	jump		<= '1' when (opcode = iJ) else '0';
	mem2reg 	<= '1' when (opcode = iLW)else '0';
	with opcode select
	op_ula	<= "00" when iLW | iSW | iADDI,
					"01" when iBNE | iBEQ,
					"10" when others;
	mem_wr	<= '1' when (opcode = iSW) else '0';
	alu_src	<= '1' when (opcode = iADDI) or
								(opcode = iSW) or
								(opcode = iLW) or
								(opcode = iORI) else '0';
					
end architecture;