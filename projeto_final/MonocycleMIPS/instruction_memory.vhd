-- Instruction Memory Module where all the instructions are stored
-- Quartus II VHDL Template 
-- Single-Port ROM
-- Author: Eduardo Marques

library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.project_constants.all;

entity instruction_memory is

  generic 
  (
    DATA_WIDTH : natural := 32;
    ADDR_WIDTH : natural := 6  -- meaning 64 instructions as the limit
  );

  port 
  (
    clk   : in std_logic;
    addr  : in natural range 0 to 2**ADDR_WIDTH - 1;
    q   : out std_logic_vector((DATA_WIDTH -1) downto 0)
  );

end entity;

architecture main of instruction_memory is

  -- Build a 2-D array type for the RoM
  subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
  type memory_t is array(2**ADDR_WIDTH-1 downto 0) of word_t;

  function init_rom
    return memory_t is 
    variable tmp : memory_t := (others => (others => '0'));
  begin 
    for addr_pos in 0 to 2**ADDR_WIDTH - 1 loop 
      -- Initialize each address with the address itself
      tmp(addr_pos) := std_logic_vector(to_unsigned(addr_pos, DATA_WIDTH));
    end loop;
    return tmp;
  end init_rom;  

  -- Declare the ROM signal and specify a default value.  Quartus II
  -- will create a memory initialization file (.mif) based on the 
  -- default value.
  signal rom : memory_t := init_rom;

begin

  process(clk)
  begin
  if(rising_edge(clk)) then
    q <= rom(addr);
  end if;
  end process;

end main;
