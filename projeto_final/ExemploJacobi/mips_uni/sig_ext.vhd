-- Quartus II VHDL Template
-- Signed Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.mips_uni_pkg.all;

entity sig_ext is
	port (
		imm16	: in std_logic_vector(WORD_SIZE/2-1 downto 0);
		ext32 : out std_logic_vector(WORD_SIZE-1 downto 0)
		);
end entity;

architecture rtl of sig_ext is

signal uns   : std_logic_vector(WORD_SIZE/2-1 downto 0) := (others => '1');
signal zeros : std_logic_vector(WORD_SIZE/2-1 downto 0) := (others => '0');


begin
	ext32 <= (uns & imm16) when (imm16(WORD_SIZE/2-1) = '1') else
				(zeros & imm16);
end architecture;
	