-- Testbench para o mux 32 bits
library ieee;
use ieee.std_logic_1164.all;

entity mux_32_tb is
end entity;

architecture main of mux_32_tb is 
  signal data_input_A : std_logic_vector(31 downto 0) := x"00000000";
  signal data_input_B : std_logic_vector(31 downto 0) := x"FFFFFFFF";
  signal control_signal : std_logic := '0';
  signal data_output : std_logic_vector(31 downto 0);
begin
  mux_32 : entity work.generic_32_bit_mux(main)
    port map(
      data_input_A => data_input_A,
      data_input_B => data_input_B,
      control_signal => control_signal,
      data_output => data_output
    );
end main;