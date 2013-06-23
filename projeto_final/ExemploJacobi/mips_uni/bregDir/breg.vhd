-- Quartus II VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity breg is
	generic (
		SIZE : natural := 32;
		ADDR : natural := 5
	);
	port 
	(
		clk		: in  std_logic;
		enable	: in  std_logic;
		iregA		: in  std_logic_vector(ADDR-1 downto 0);
		iregB		: in  std_logic_vector(ADDR-1 downto 0);
		iwr		: in  std_logic_vector(ADDR-1 downto 0);
		data_in	: in  std_logic_vector(SIZE-1 downto 0);
		regA 		: out std_logic_vector(SIZE-1 downto 0);
		regB 		: out std_logic_vector(SIZE-1 downto 0)
	);
end entity;

architecture rtl of breg is

type banco is array (31 downto 0) of std_logic_vector(31 downto 0);
constant ZERO32 : std_logic_vector(31 downto 0) := X"00000000";
signal breg32: banco;

begin
	regA <= ZERO32 when (iregA="00000") else breg32(conv_integer(iregA));
	regB <= ZERO32 when (iregB="00000") else breg32(conv_integer(iregB));
	process (clk)
	begin
		if (rising_edge(clk)) then
			if (enable = '1') then
				breg32(conv_integer(iwr)) <= data_in;
			end if;
		end if;
	end process;
end rtl;
