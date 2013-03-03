-- ULA for MIPS Processor
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use work.project_constants.all;

entity ulaMIPS is
  port (
    data_operator1 : in std_logic_vector(31 downto 0);
    data_operator2 : in std_logic_vector(31 downto 0);
    operation : in std_logic_vector(3 downto 0);
    zero : out std_logic;
    result : BUFFER std_logic_vector(31 downto 0)
  );
end ulaMIPS;

architecture behaviourUlaMips of ulaMIPS is
  signal temp : std_logic_vector(31 downto 0);
begin
  temp <= (data_operator1 - data_operator2);

  MUXOutput : with operation select
    result <= (data_operator1 and data_operator2) when "0000",
              (data_operator1 or data_operator2) when "0001",
              (data_operator1 NOR data_operator2) when "1100",
              (data_operator1 + data_operator2) when "0111",
              (data_operator1 - data_operator2) when others;

  SelectZero: with result select
    zero <= '1' when zero32_bits,
            '0' when others;
end behaviourUlaMips;