-- Instruction Memory Module where all the instructions are stored
-- Author: Eduardo Marques
library ieee;
use ieee.std_logic_1164.all;
use work.project_constants.all;

entity instructionMemory is
  port(
      read_address :in std_logic_vector(address_width-1 downto 0);
      output_data : out std_logic_vector(register_width-1 downto 0);
    );
end instructionMemory;

architecture behaviour of instructionMemory is  
  signal instruction_memory : mem_type;
begin
  output_data <= instruction_memory(unsigned(read_address));
end behaviour;