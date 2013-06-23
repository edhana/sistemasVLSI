library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity breg_tb is
end entity;

architecture tb of breg_tb is 

signal clk		: std_logic := '0';
signal enable	: std_logic;
signal iregA	: std_logic_vector(4 downto 0);
signal iregB	: std_logic_vector(4 downto 0);
signal iwr		: std_logic_vector(4 downto 0);
signal data_in	: std_logic_vector(31 downto 0);
signal regA 	: std_logic_vector(31 downto 0);
signal regB 	: std_logic_vector(31 downto 0);


component breg is
	generic (
		SIZE : natural := 32;
		ADDR : natural := 5
	);
	port (
		clk		: in  std_logic;
		enable	: in  std_logic;
		iregA		: in  std_logic_vector(ADDR-1 downto 0);
		iregB		: in  std_logic_vector(ADDR-1 downto 0);
		iwr		: in  std_logic_vector(ADDR-1 downto 0);
		data_in	: in  std_logic_vector(SIZE-1 downto 0);
		regA 		: out std_logic_vector(SIZE-1 downto 0);
		regB 		: out std_logic_vector(SIZE-1 downto 0)
	);
end component;


begin

clkgen: process (clk)
		  begin
		    clk <= not clk after 5 ps; 
		  end process;
		  
uut:	breg
		port map (	clk=>clk, enable=>enable, iregA=>iregA, iregB=>iregB, 
						iwr=>iwr, data_in=>data_in, regA=>regA, regB=>regB);

drive: 	process
			begin
				enable <= '1'; iwr <= "00101"; 
				iregA <= "00000"; iregB <= "00000"; 
				data_in<=conv_std_logic_vector(44, 32);
				wait for 20 ps;
				enable <= '1'; iwr <= "10101"; iregA <= "00000"; 
				iregB <= "00000"; data_in<=conv_std_logic_vector(45032, 32);
				wait for 20 ps;
				enable <= '0'; iregA <= "00101"; iregB <= "10101"; 
				wait for 20 ps;
			end process;
end architecture;
				
