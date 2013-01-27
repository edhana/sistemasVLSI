-- Timer Module to control the long and short intervals for the semaphore
-- It delivers two signals:
-- 1) Short Signal in 15 seconds
-- 2) Long Signal in 45 seconds
-- Author: Eduardo Marques
-- 24/01/2013

library ieee;
use ieee.std_logic_1164.all;

entity timer_ctl is
  port(
    timer_start    : in std_logic;
    timer_reset    : in std_logic;
    clock          : in std_logic;
    short_interval : out std_logic;
    long_interval  : out std_logic
  );
end timer_ctl;

architecture timer_behaviour of timer_ctl is
  -- input signals
  signal clk, clk_60Hz, start, reset : std_logic;

  -- output signals
  signal short_interval_tmp, long_interval_tmp : std_logic;

  -- other signals
  signal internal_counter : std_logic_vector(31 downto 0) := (others => 0);

  -- components
  component clk_converter_60hz is
    port(
      start    : in std_logic;
      reset    : in std_logic;
      clk      : in std_logic;
      clk_60Hz : out std_logic
    );
  end component;

-- architecture begin
begin
  clk_portmap: clk_converter_60hz
    port map (
        start => start,
        reset => reset,
        clk => clk,
        clk_60Hz => clk_60Hz
    );

  -- Module Initialization
  -- init :  process
  -- begin
  --   wait;
  -- end process init;

  -- main process -- with counter
  always : process(timer_reset, timer_start, clk_60Hz)
    -- variable list
  begin
      if(timer_reset'event and timer_reset = '1') then
        short_interval_tmp <= '0';
        long_interval_tmp <= '0';
        internal_counter <= (others => 0);
        start <= '0';
      elsif (timer_start'event and timer_start = '1') then
        start <= '1';
        short_interval_tmp <= '0';
        long_interval_tmp <= '0';
      else
        if(timer_start = '1') then
          if(internal_counter = (unsigned(300)) then -- 300 cycles of 1 hz = 5 sec.
            short_interval_tmp <= '1'
          elsif (internal_counter = (unsigned(600))) then -- 600 cycles of 1 hz = 10 sec.
            long_interval_tmp = '0';
          end if;
          internal_counter = internal_counter + 1;
        end if;
      end if;
      
      short_interval <= short_interval_tmp;
      long_interval <= long_interval_tmp;
  end process always;

end timer_behaviour;