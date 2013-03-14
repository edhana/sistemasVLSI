-- Bank Registers Module for MIPS
-- Author: Eduardo
-- Since 18/02/2013

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.project_constants.all;
-- use ieee.std_logic_arith.all;

entity bregMIPS is 
	port (
		clk   : in std_logic;
		rd    : in std_logic; -- read signal
		wr    : in std_logic; -- write signal
    add1  : in std_logic_vector(4 downto 0); -- first read register address
    add2  : in std_logic_vector(4 downto 0); -- second read register address
		wadd  : in std_logic_vector(4 downto 0); -- 32 bit output register address
    wdata : in std_logic_vector(31 downto 0); -- value to write into the wadd 32 bit register address
    r1    : out std_logic_vector(31 downto 0);
    r2    : out std_logic_vector(31 downto 0)
	);
end bregMIPS;

architecture behaviour of bregMIPS is
  type register_bank is array (words-1 downto 0) of std_logic_vector(register_width-1 downto 0);
  signal registers : register_bank := (others => (others => '0'));
  signal iaddr1 : INTEGER;
begin
  
  r1 <= registers(to_integer(signed(add1)));

  r2 <= registers(to_integer(signed(add2)));       

  -- read write process
  register_process: process(clk)
    variable iaddr1 : integer range 0 to 31  := 0;
  begin
    if(clk'EVENT and clk = '1') then
      -- Write only in the next clock cycle
      if ((wr = '1') and (wadd /= zero5_bits) ) then -- write
        registers(to_integer(signed(wadd))) <= wdata;
      end if;
    end if;
  end process register_process;
end behaviour;