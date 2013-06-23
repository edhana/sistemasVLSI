-- Quartus II VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;
use work.mips_uni_pkg.all;

entity mips_tb is
end entity;

architecture tb of mips_tb is

signal clk 		: std_logic := '0';
signal clk_rom : std_logic := '0';
signal rst 		: std_logic := '1';
signal data		: std_logic_vector(31 downto 0);

begin

rst <= '0' after 200 ps;

genclk: 	process (clk) begin
				clk <= not clk after 100 ps;
			end process;
			
genrclk:	process (clk_rom) begin
				clk_rom <= not clk_rom after 10 ps;
			end process;
		  
uut: 	mips_uni
		port map (	
			clk 		=> clk,
			clk_rom 	=> clk_rom,
			rst 		=> rst,
			data 		=> data
		);
				
end architecture;
				