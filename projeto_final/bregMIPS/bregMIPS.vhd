-- Bank Registers Module for MIPS
-- Author: Eduardo
-- Since 18/02/2013

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- use ieee.std_logic_arith.all;

entity bregMIPS is 
  generic(
     bits  : INTEGER := 32;
     words : INTEGER := 32
    );

	port (
		clk   : in std_logic;
		rd    : in std_logic; -- read signal
		wr    : in std_logic; -- write signal
    add1  : in std_logic_vector(4 downto 0); -- first read register address
    add2  : in std_logic_vector(4 downto 0); -- second read register address
		wadd  : in std_logic_vector(4 downto 0); -- 32 bit output register address
    wdata : in std_logic_vector(31 downto 0); -- value to write into the wadd 32 bit register address
    r1    : out std_logic_vector(31 downto 0);
    r2    : out std_logic_vector(32 downto 0)
	);
end bregMIPS;

architecture behaviour of bregMIPS is
  type register_bank is array (words-1 downto 0) of std_logic_vector(bits-1 downto 0);
  signal registers : register_bank;
begin
  register_process: process(clk, rd, wr)
    variable iaddr1 : integer range 0 to 31  := 0;
  begin
    if(clk'EVENT and clk = '1') then
      if (rd = '1') then -- read
        r1 <= registers(to_integer(signed(add1)));        
      elsif (wr = '1') then -- write

      end if;
    end if;
  end process register_process;
end behaviour;