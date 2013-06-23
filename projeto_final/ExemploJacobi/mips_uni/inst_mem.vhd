-- Quartus II VHDL Template
-- Single-Port ROM

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_uni_pkg.all;

library altera_mf;
use altera_mf.altera_mf_components.all;

entity inst_mem is
	generic (
		WIDTH : natural := 32;
		WADDR : natural := IMEM_ADDR);
	port (ADDRESS  : in STD_LOGIC_VECTOR (WADDR-1 downto 0);
			clk		: in std_logic;
			Q 			: out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
end entity;

architecture rtl of inst_mem is

component clk_div 
	port (
		clk	  : in std_logic;
		clk64   : out std_logic
	);
end component;

component   LPM_ROM
	generic (LPM_WIDTH 	: natural;    -- MUST be greater than 0
				LPM_WIDTHAD : natural;    -- MUST be greater than 0
				LPM_NUMWORDS: natural := 0;
				LPM_ADDRESS_CONTROL : string := "REGISTERED";
				LPM_OUTDATA : string := "REGISTERED";
				LPM_FILE : string;
				LPM_TYPE : string := "L_ROM";
				INTENDED_DEVICE_FAMILY  : string := "UNUSED";
				LPM_HINT : string := "UNUSED");

	port (ADDRESS 	: in STD_LOGIC_VECTOR(WADDR-1 downto 0);
			INCLOCK 	: in STD_LOGIC := '0';
			OUTCLOCK : in STD_LOGIC := '0';
			Q 			: out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
end component;

signal clk64 : std_logic;

begin

rom : lpm_rom 
	generic map
	(
		LPM_WIDTH => WIDTH,
		LPM_WIDTHAD => WADDR,
		LPM_ADDRESS_CONTROL => "REGISTERED",
		LPM_OUTDATA => "REGISTERED",
		LPM_FILE => "mips_rom.mif"
	)
	port map 
	(
		ADDRESS 	=> ADDRESS,
		INCLOCK 	=> clk64,
		OUTCLOCK => clk64,
		Q => Q
	);
	
clock: clk_div 
		 port map (
			clk=>clk,
			clk64=>clk64
		 );
end rtl;
