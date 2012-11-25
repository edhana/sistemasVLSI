library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX4X1 is
	port(
		SEL:                in std_logic_vector(1 downto 0);
		in0, in1, in2, in3: in std_logic_vector(7 downto 0);
		outMux:             out std_logic_vector(7 downto 0)
	);
end MUX4X1;
	
architecture concurr of MUX4X1 is
begin
	-- arquitetura conconrrente de multiplexador
	outMUX <= in0 when (sel = "00") else
		in1 when (sel = "01") else
		in2 when (sel = "10") else in3;
end concurr;

-- architecture proc of Multiplexer is
-- begin
	-- arquitetura de processo do multiplexador
-- end proc;
