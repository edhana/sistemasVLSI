-- Instruction Memory Module where all the instructions are stored
-- Quartus II VHDL Template 
-- Single-Port ROM
-- Author: Eduardo Marques

library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use work.project_constants.all;

entity instruction_memory is

  port 
  (
    clk   : in std_logic;
    addr  : in natural range 0 to memory_size - 1;
    q   : out std_logic_vector((data_width -1) downto 0)
  );

end entity;

architecture main of instruction_memory is

  -- Build a 2-D array type for the RoM
  subtype word_t is std_logic_vector((data_width-1) downto 0);
  type memory_t is array(memory_size-1 downto 0) of word_t;

  -----------------------------------------------------------------------------
  -- MAIN init module
  -----------------------------------------------------------------------------
  impure function init_rom
    return memory_t is 
    variable tmp : memory_t := (others => (others => '0'));
    variable tmp_read_reg : std_logic_vector(31 downto 0);
    variable addr_pos : natural range 0 to memory_size-1;    
    variable str : string(1 to 8);
  begin 
    
    -- Loading program instruction
    tmp(0) := x"20082000";
    tmp(4) := x"200d2030";
    tmp(8) := x"8dad0000";
    tmp(12) := x"240a0001";
    tmp(16) := x"46241000";
    tmp(20) := x"ad0a0000";
    tmp(24) := x"ad0a0004";
    tmp(28) := x"21a9fffe";
    tmp(32) := x"8d0b0000";
    tmp(36) := x"8d0c0004";
    tmp(40) := x"016c5020";
    tmp(44) := x"ad0a0008";
    tmp(48) := x"21080004";
    tmp(52) := x"2129ffff";
    tmp(56) := x"1d20fff9";
    tmp(60) := x"20042000";
    tmp(64) := x"000d2820";
    tmp(68) := x"0c000014";
    tmp(72) := x"2402000a";
    tmp(76) := x"0000000c";
    tmp(80) := x"00044020";
    tmp(84) := x"00054820";
    tmp(88) := x"20042036";
    tmp(92) := x"24020004";
    tmp(96) := x"0000000c";
    tmp(100) := x"8d040000";
    tmp(104) := x"24020001";
    tmp(108) := x"0000000c";
    tmp(112) := x"20042034";
    tmp(116) := x"24020004";
    tmp(120) := x"0000000c";
    tmp(124) := x"21080004";
    tmp(128) := x"2129ffff";
    tmp(132) := x"1d20fff7";
    tmp(136) := x"03e00008";

    return tmp;
  end init_rom;  


  -- Declare the ROM signal and specify a default value.  Quartus II
  -- will create a memory initialization file (.mif) based on the 
  -- default value.
  signal rom : memory_t := init_rom;

begin

  main: process(clk)
  begin
  if(rising_edge(clk)) then
    q <= rom(addr);
  end if;
  end process main;

end main;
