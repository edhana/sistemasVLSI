-- Timer Module to control the long and short intervals for the semaphore
-- It delivers two signals:
-- 1) Short Signal in 15 seconds
-- 2) Long Signal in 45 seconds
-- Author: Eduardo Marques
-- 24/01/2013

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity timer_ctl is
  port(
    start          : in std_logic;
    reset          : in std_logic;
    clk            : in std_logic;
    short_interval : out std_logic;
    long_interval  : out std_logic
  );
end timer_ctl;

architecture timer_behaviour of timer_ctl is
  -- input signal
  signal clk_60Hz : std_logic;

  -- output signals
  signal short_interval_tmp, long_interval_tmp : std_logic := '0';

  -- other signals
  signal internal_counter : std_logic_vector(31 downto 0) := (others => '0');

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
  clk_converter_ports : clk_converter_60hz
    port map (
        start => start,
        reset => reset,
        clk => clk,
        clk_60Hz => clk_60Hz
    );

  -- main process -- with counter
  always : process(clk_60Hz)
    -- variable list
  begin
    if(clk_60Hz'event and clk_60Hz = '0') then -- clock rising
      internal_counter <= internal_counter + 1;
    end if;
  end process always;

  -- clk_60Hz_process : process(clk_60Hz)
    -- if (clk_60Hz'event and clk_60Hz = '1') then
        -- verify the counter ammount
        -- if(internal_counter = conv_std_logic_vector(short_counter, 32)) then -- 300 cycles of 1 hz = 5 sec.
        --   short_interval_tmp <= '1';
        -- elsif (internal_counter = conv_std_logic_vector(long_counter, 32)) then -- 600 cycles of 1 hz = 10 sec.
        --   long_interval_tmp <= '1';
        -- end if;        

        -- increase the counter
  --       if(start = '1') then
  --         internal_counter <= internal_counter + 1;
  --       end if;
  -- end process clk_60Hz_process;

end timer_behaviour;