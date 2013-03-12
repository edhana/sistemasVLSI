library ieee;
use ieee.std_logic_1164.all;

entity top_tb is
end top_tb;

architecture behaviour of top_tb is
  signal clk : std_logic;
begin
  clock_process : process
    variable  clock_tmp : std_logic := '1';
  begin
    clock_tmp := not clock_tmp;
    clk <= clock_tmp;
    wait for 20ns;
  end process clock_process;
end behaviour;