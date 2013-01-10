-- Exercicio do Livro da materia Sistemas VLSI
-- Paginas 22 e 23 do Livro Circuit Design With VHDL

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mux_arith_logic is
	generic (
		DATA_WIDTH: natural := 8
	);
	
	port(
		a, b: IN std_logic_vector((DATA_WIDTH - 1) downto 0);
		sel: IN std_logic_vector(3 downto 0);
		c: OUT std_logic_vector((DATA_WIDTH - 1) downto 0)
	);
end mux_arith_logic;

architecture 




