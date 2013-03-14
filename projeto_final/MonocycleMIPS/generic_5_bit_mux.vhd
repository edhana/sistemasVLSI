-- Author Eduardo

library ieee;
use ieee.std_logic_1164.all;
use work.project_constants.all;

entity generic_5_bit_mux is
  port(
    data_input_A : in std_logic_vector(address_width-1 downto 0);
    data_input_B : in std_logic_vector(address_width-1 downto 0);
    control_signal :in std_logic;
    data_output : out std_logic_vector(address_width-1 downto 0)
  );
end entity;

architecture main of generic_5_bit_mux is
begin

end main;