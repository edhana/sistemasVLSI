-- Author Eduardo Marques
-- Testbench for the program counter and the 4 bit adder 
-- connected with it

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.project_constants.all;

entity program_counter_tb is
end entity;

architecture main of program_counter_tb is
  signal clk : std_logic;
  signal zero : std_logic;
  signal read_address : natural range 0 to memory_size-1;
  signal instruction_address : natural range 0 to memory_size-1;

  signal stv_address_bus_value : std_logic_vector(word_length-1 downto 0);
  signal stv_result : std_logic_vector(word_length-1 downto 0) := x"00000000";
begin
  stv_address_bus_value <= conv_std_logic_vector(instruction_address, indexes);
  read_address <= conv_integer(stv_result);

  pc_adder : entity work.ula_mips(main)
    port map(
      data_operator1 => stv_address_bus_value, 
      data_operator2 => x"00000004",
      operation => "0010", -- sum
      zero => zero,
      result => stv_result
    );

  pc : entity work.program_counter(main)
    port map(
      clk => clk,
      read_address => read_address,
      instruction_address => instruction_address
    );

  always : process
    variable clock_tmp : std_logic := '0';
  begin
    clock_tmp := not clock_tmp;
    clk <= clock_tmp;
    wait for 20ns;
  end process always;
end main;