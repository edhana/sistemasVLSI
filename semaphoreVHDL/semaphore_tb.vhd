-- Testbench for the semaphore module
-- Author: Eduardo Marques
-- 27/01/2013

library ieee;
use ieee.std_logic_1164.all;

entity semaphore_tb is
end semaphore_tb;

architecture semaphore_tb_arch of semaphore_tb is
  signal clk, reset       : std_logic := '0';
  signal traffic_sensor   : std_logic := '0'; -- invertido
  signal trafic_light_ctl : std_logic_vector(5 downto 0);

  component semaphore is
    port(
      clk            : in std_logic;
      reset          : in std_logic;
      traffic_sensor : in std_logic;
      trafic_light_ctl : out std_logic_vector(5 downto 0)   
    );
  end component;
begin
  semaphore_port : semaphore
    port map(
      clk => clk,
      reset => reset,
      traffic_sensor => traffic_sensor,
      trafic_light_ctl => trafic_light_ctl
    );

  always : process
    variable clock_tmp : std_logic := '0';
  begin
    clock_tmp := not clock_tmp;
    wait for 20ns;
    clk <= clock_tmp;
  end process always;
end semaphore_tb_arch;