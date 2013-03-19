-- ULA for MIPS Processor
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_signed.all;
use work.project_constants.all;

entity ula_mips is
  port (
    data_operator1 : in std_logic_vector(word_length-1 downto 0);
    data_operator2 : in std_logic_vector(word_length-1 downto 0);
    operation : in std_logic_vector(3 downto 0);
    zero : out std_logic;
    result : BUFFER std_logic_vector(word_length-1 downto 0)
  );
end ula_mips;

architecture main of ula_mips is
  signal difference : std_logic_vector(word_length-1 downto 0);
  signal bit_vector_31 : std_logic_vector(word_length-2 downto 0);
begin
  difference <= std_logic_vector(signed(data_operator1) - signed(data_operator2));
  bit_vector_31 <= zero32_bits(30 downto 0);

  -- TODO: Estao faltando algumas operacoes
  MUXOutput : with operation select
    result <= (data_operator1 and data_operator2) when "0000",
              (data_operator1 or data_operator2) when "0001",              
              (data_operator1 + data_operator2) when "0010",
              (data_operator1 - data_operator2) when "0110",
              bit_vector_31&difference(31) when "0111", -- Select on Less Than
              (data_operator1 NOR data_operator2) when "1100",
              x"00000000" when others;

  select_zero: with difference select
    zero <= '1' when zero32_bits,
            '0' when others;
end main;