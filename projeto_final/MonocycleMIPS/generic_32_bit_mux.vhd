-- Author: Eduardo Marques

library ieee;
use ieee.std_logic_1164.all;

entity generic_32_bit_mux is
  generic(
    data_size : natural := 32
  );

  port(
    data_input_A : in std_logic_vector(data_size-1 downto 0);
    data_input_B : in std_logic_vector(data_size-1 downto 0);
    control_signal :in std_logic;
    data_output : out std_logic_vector(data_size-1 downto 0)
  );
end entity;

architecture main of generic_32_bit_mux is
begin
  mux_p : process(control_signal)
  begin
    if(control_signal = '0') then
      data_output <= data_input_A;
    elsif(control_signal = '1') then
      data_output <= data_input_B;    
    end if;
  end process mux_p;
end main;