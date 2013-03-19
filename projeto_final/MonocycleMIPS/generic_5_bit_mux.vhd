-- Author Eduardo
-- Simple 5bit mux

library ieee;
use ieee.std_logic_1164.all;
use work.project_constants.all;

entity generic_5_bit_mux is
  generic(
    data_size : natural := 5
  );

  port(
    data_input_A : in std_logic_vector(data_size-1 downto 0);
    data_input_B : in std_logic_vector(data_size-1 downto 0);
    control_signal :in std_logic;
    data_output : out std_logic_vector(data_size-1 downto 0)
  );
end entity;

architecture main of generic_5_bit_mux is
begin
  data_output <= data_input_A when (control_signal = '0') else data_input_B;
end main;