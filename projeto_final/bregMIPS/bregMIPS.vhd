-- Bank Registers Module for MIPS
-- Author: Eduardo
-- Since 18/02/2013

library ieee;
use ieee.std_logic_1164.all;

entity bregMIPS is 
	port (
		clk  : in std_logic;
		rd   : in std_logic; -- read signal
		wr   : in std_logic; -- write signal
		add1 : in std_logic_vector(4 downto 0);
	);
end bregMIPS;