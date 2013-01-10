library ieee;
use ieee.std_logic_1164.all;

entity exp_1 is
	port(
		SW: in std_logic_vector(17 downto 0);
		LEDR: out std_logic_vector(17 downto 0)
	);
end exp_1;

architecture behaviour of exp_1 is
begin
	LEDR <= SW;
end behaviour;