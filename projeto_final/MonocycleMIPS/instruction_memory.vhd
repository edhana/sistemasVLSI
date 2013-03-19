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

  -- open the instructions file
  file datainfile  : text open read_mode is "datain.txt";

  -----------------------------------------------------------------------------
  -- Convertion Procedures
  -----------------------------------------------------------------------------
  procedure hexstr_to_dec(hex_str : string; num : out integer) is
     variable base : integer := 16;
     variable int  : integer;
     variable sum  : integer :=0;
  begin
    for i in hex_str'range loop
      if (hex_str(i to i) = "0") THEN
        int := 0;
      elsif (hex_str(i to i) = "1") THEN
        int := 1;
      elsif (hex_str(i to i) = "2") THEN
        int := 2;
      elsif (hex_str(i to i) = "3") THEN
        int := 3;
      elsif (hex_str(i to i) = "4") THEN
        int := 4;
      elsif (hex_str(i to i) = "5") THEN
        int := 5;
      elsif (hex_str(i to i) = "6") THEN
        int := 6;
      elsif (hex_str(i to i) = "7") THEN
        int := 7;
      elsif (hex_str(i to i) = "8") THEN
        int := 8;
      elsif (hex_str(i to i) = "9") THEN
        int := 9;
      elsif (hex_str(i to i) = "A") THEN
        int := 10;
      elsif (hex_str(i to i) = "B") THEN
        int := 11;
      elsif (hex_str(i to i) = "C") THEN
        int := 12;
      elsif (hex_str(i to i) = "D") THEN
        int := 13;
      elsif (hex_str(i to i) = "E") THEN
        int := 14;
      elsif (hex_str(i to i) = "F") THEN
        int := 15;
      end if;
      sum := sum + (int*(base**(hex_str'high-i)));
      
    end loop;
    num := sum;
  end;

  procedure dec_to_bin(int : integer; o : out std_logic_vector(31 downto 0)) is
     variable output : std_logic_vector(31 downto 0) := X"00000000";
     variable count : integer := 0;
     variable input : integer := int;
     
  begin
    while input >= 1 loop
       if (input mod 2 = 1) then
          --add 1 into output
          input := (input- 1) /2;
      output(count) := '1';
          --save(count) <= '1';
       else
          --add 0 into output
          input := input / 2;
       end if;
       count := count + 1;
    end loop;
    o := output;
  end;

  procedure hexstr_to_bin(hex_str : string ; o : out std_logic_vector(31 downto 0)) is
    variable int : integer;
    variable bin : std_logic_vector(31 downto 0);
  begin
    hexstr_to_dec(hex_str, int);
    dec_to_bin(int, bin);
    o := bin;
  end;  

  -----------------------------------------------------------------------------
  -- MAIN init module
  -----------------------------------------------------------------------------
  impure function init_rom(file ifile : text)
    return memory_t is 
    variable tmp : memory_t := (others => (others => '0'));
    variable tmp_read_reg : std_logic_vector(31 downto 0);
    variable addr_pos : natural range 0 to memory_size-1;    
    variable iline : line;
    variable str : string(1 to 8);
  begin 
    addr_pos := 0;

    while not endfile(ifile) loop
      readline(ifile, iline);
      read(iline, str);
      hexstr_to_bin(str, tmp_read_reg);
      tmp(addr_pos) := tmp_read_reg;
      addr_pos := addr_pos + 1;
    end loop;

    return tmp;
  end init_rom;  


  -- Declare the ROM signal and specify a default value.  Quartus II
  -- will create a memory initialization file (.mif) based on the 
  -- default value.
  signal rom : memory_t := init_rom(datainfile);

begin

  main: process(clk)
  begin
  if(rising_edge(clk)) then
    report "Cheguei aqui mas e ai?";
    q <= rom(addr);
  end if;
  end process main;

end main;
