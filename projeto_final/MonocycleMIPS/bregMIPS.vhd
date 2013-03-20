-- Bank Registers Module for MIPS
-- Author: Eduardo
-- Since 18/02/2013

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.project_constants.all;

entity bregMIPS is 
  generic (
    reg_size : natural := register_width;  
    reg_ammount : natural := 32
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
    r2    : out std_logic_vector(31 downto 0)
	);
end bregMIPS;

architecture main of bregMIPS is
  subtype reg_bank is std_logic_vector(reg_size-1 downto 0);
  type reg_t is array(0 to reg_ammount-1) of reg_bank;

  -- Declare the memory registers
  signal registers : reg_t;

  signal read_addr1 : natural range 0 to 32;
  signal read_addr2 : natural range 0 to 32;
  signal wadd_temp : std_logic_vector(4 downto 0);

begin
  read_addr1 <= to_integer(unsigned(add1));  
  r1 <= x"00000000" when add1 = "00000" else
        registers(read_addr1);

  read_addr2 <= to_integer(unsigned(add2));
  r2 <= x"00000000" when add2 = "00000" else
        registers(read_addr2);

  wadd_temp <= wadd;

  -- main process
  register_process: process(clk)
    variable read_wadd : natural range 0 to 32;
  begin
    if(clk'EVENT and clk = '1') then
      -- Write only in the next clock cycle
      if (wr = '1' and wadd /= "00000") then -- write
        report "Aconteceu, virou manchete.";
        read_wadd := to_integer(unsigned(wadd));
        registers(read_wadd) <= wdata;
      end if;
    end if;
  end process register_process;
end main;