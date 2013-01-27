-- Testbench for the timer_ctl module
-- Author: Eduardo Marques
-- 27/01/2012

library ieee;
use ieee.std_logic_1164.all;

entity timer_ctl_tb is
end timer_ctl_tb;

architecture timer_ctl_tb_arch of timer_ctl_tb is
  -- inputs
  signal start    : std_logic;
  signal reset    : std_logic;
  signal clk            : std_logic;

  -- outputs
  signal short_interval : std_logic;
  signal long_interval  : std_logic;

  component timer_ctl is
    port(
      start    : in std_logic;
      reset    : in std_logic;
      clk            : in std_logic;
      short_interval : out std_logic;
      long_interval  : out std_logic
    );
  end component;

-- architecture begin
begin
  timer_ctl_ports : timer_ctl
    port map(
      start => start,
      reset => reset,
      clk => clk,
      short_interval => short_interval,
      long_interval => long_interval
    );

    -- initialize variables
  init : process
  begin
    start <= '1';
    reset <= '0';
    wait;    
  end process init;

  -- test process
  always : process
    variable clk_tmp : std_logic := '0';
  begin
    clk_tmp := not clk_tmp;
    clk <= clk_tmp;
    wait for (20ns);
  end process always;

end timer_ctl_tb_arch;