-- Testbench for the timer_ctl module
-- Author: Eduardo Marques
-- 27/01/2012

library ieee;
use ieee.std_logic_1164.all;

entity timer_clt_tb is
end entity;

architecture timer_clt_tb_arch of timer_clt_tb is
  -- inputs
  signal timer_start    : std_logic;
  signal timer_reset    : std_logic;
  signal clock          : std_logic := '0';

  -- outputs
  signal short_interval : std_logic;
  signal long_interval  : std_logic;

  component timer_ctl is
    port(
      timer_start    : in std_logic;
      timer_reset    : in std_logic;
      clock          : in std_logic;
      short_interval : out std_logic;
      long_interval  : out std_logic
    );
  end component;
begin
  timer_ctl_portmat : timer_ctl
    port map(
      timer_start => timer_start,
      timer_reset => timer_reset,
      clock => clock,
      short_interval => short_interval,
      long_interval => long_interval
    );

  always : process
    variable clk_tmp : std_logic := '0';
  begin
    clk_tmp := not clk_tmp;
    clock <= clk_tmp;
  wait for 20ns;
  end process always;
end timer_clt_tb_arch;