-- Lab 1 exercise 3 Testbench
-- VHDL Testbench for the setseg exercise
-- Eduardo Maques
-- 11/01/2013
library ieee;
use ieee.std_logic_1164.all;

entity seteseg_tb is
end seteseg_tb;

architecture seteseg_tb_arch of seteseg_tb is
  -- signals
  signal codigo : std_logic_vector(2 downto 0);
  signal segs : std_logic_vector(6 downto 0);

  -- component
  component seteseg
    port(
      codigo : in std_logic_vector(2 downto 0);
      segs : out std_logic_vector(6 downto 0)
    );
  end component;
begin
  -- port mapping
  setesegmap : seteseg
    port map (
      codigo => codigo,
      segs => segs
    );

  -- process to handle the button trigger
  always: process
    variable i : INTEGER := 0;
  begin
    case i is
      when 0 =>
        codigo <= "000";
        i := 1;
      when 1 =>
        codigo <= "001";
        i := 2;
      when 2 =>
        codigo <= "011";
        i := 3;
      when 3 =>
        codigo <= "111";
        i := 4;
      when others =>
        codigo <= "110";
        i := 0;
    end case;    
    wait for 50ns;
  end process always;
end seteseg_tb_arch;