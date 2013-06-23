library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.mips_uni_pkg.all;

entity ulamips is
	generic (
		SIZE : natural := 32;
		NOPR : natural := 4
		);
	port (
		aluctl: 	in  std_logic_vector(3 downto 0);
		A, B:		in  std_logic_vector(SIZE-1 downto 0);
		aluout:	out std_logic_vector(SIZE-1 downto 0);
		zero:		out std_logic
		);
end ulamips;

architecture behavioral of ulamips is

subtype sel_str is std_logic_vector(NOPR-1 downto 0);

signal alusel : sel_str := aluctl;
signal tmp : std_logic_vector(SIZE-1 downto 0); 
signal a32 : std_logic_vector(SIZE-1 downto 0);

begin
	tmp <= A - B;
	
	aluout <= a32;
	
	zero <= '1' when (a32 = ZERO32) else '0';
	
ula: process (A, B, aluctl) 
	begin
		case aluctl is
		when ULA_AND => a32 <= (A and B);
		when ULA_OR  => a32 <= (A or B);
		when ULA_ADD => a32 <= (A + B);
		when ULA_SUB => a32 <=  tmp;
		when ULA_SLT => a32 <= (0=>tmp(SIZE-1), others=>'0');
		when others  => a32 <= (others=>'0');
	end case;
end process;
			   
end architecture behavioral;

