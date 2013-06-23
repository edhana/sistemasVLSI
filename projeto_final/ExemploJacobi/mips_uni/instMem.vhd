LIBRARY ieee;
USE ieee.std_logic_1164.all;
use work.mips_uni_pkg.all;

ENTITY instMem IS

PORT (
	addr: 				IN integer range 0 to IMEM_SIZE - 1;
	instruction: 		OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
);
END instMem;

ARCHITECTURE rtl OF instMem IS
BEGIN
ROM: with addr select
	instruction <= X"200801f4" when 0,
						X"8d090064" when 4,
						X"00095020" when 8,
						X"08000004" when 12,
						X"00000000" when others;
END rtl;