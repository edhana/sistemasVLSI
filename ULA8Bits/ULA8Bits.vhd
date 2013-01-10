library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

ENTITY ULA8Bits IS
  PORT(
    a, b: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    op: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    zero: OUT STD_LOGIC;
		res: BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0));
END ULA8Bits;

ARCHITECTURE ULABehaviour OF ULA8Bits IS
	signal temp: STD_LOGIC_VECTOR(3 downto 0);
	
BEGIN
	t <= a-b;
	MUXSaida: with op select
	res <=  (a and b) when "0000",
			    (a or b)  when "0001",
			    (a NOR b) when "1100", 
			    (a + b)   when "0010",			  
			    "000"&temp(3) when ("0111"),
			    (a - b)   when others;
			  
	SelectZero: with res select
	zero <= '1' when "0000",
			  '0' when others;
			 		
END ULABehaviour;