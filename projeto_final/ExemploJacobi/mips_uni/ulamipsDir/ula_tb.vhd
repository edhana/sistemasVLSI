library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

entity ula_tb is 
end entity;

architecture tb of ula_tb is

component ulamips
port (
		aluctl: 	in  std_logic_vector(3 downto 0);
		A, B:		in  std_logic_vector(31 downto 0);
		aluout:	out std_logic_vector(31 downto 0);
		zero:		out std_logic
		);
end component;

signal aluctl: std_logic_vector(3 downto 0);
signal A, B:	std_logic_vector(31 downto 0);
signal aluout:	std_logic_vector(31 downto 0);
signal zero:	std_logic;

begin

uut: 	ulamips	
		port map (aluctl=>aluctl, A=>A, B=>B, aluout=>aluout, zero=>zero);
		
driver: process 
		begin	
			A <= conv_std_logic_vector(33, 32);
			B <= conv_std_logic_vector(1024, 32);
			aluctl <= "0010";
			wait for 10 ps;
			aluctl <= "0110";
			wait for 10 ps;
			aluctl <= "0111";
			wait for 10 ps;
			A <= X"0000FFFF";
			B <= X"0F0F0F0F";
			aluctl <= "0000";
			wait for 10 ps;
			aluctl <= "0001";
			wait for 10 ps;
			aluctl <= "1100";
			wait for 10 ps;
		end process;
end architecture;
