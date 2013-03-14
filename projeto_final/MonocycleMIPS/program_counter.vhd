-- Author Eduardo Marques
-- MIPS Program Counter

library ieee;
use ieee.std_logic_1164.all;
use work.project_constants.all;

entity program_counter is
  port(
      clk : in std_logic;
      read_address : in natural range 0 to 2**ADDR_WIDTH - 1;
      instruction_address : out natural range 0 to 2**ADDR_WIDTH - 1
    );
end entity;

architecture main of program_counter is 
begin
  always_on_clock : process(clk)
  begin
    if(rising_edge(clk)) then
      instruction_address <= read_address;
    end if;
  end process always_on_clock;
end main;