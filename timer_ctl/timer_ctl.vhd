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
    short_interval : out std_logic; -- its the oposite signal of long
    long_interval  : out std_logic; -- its the oposite signal of long
    clk_60Hz       : out std_logic
  );
end timer_ctl;

architecture timer_behaviour of timer_ctl is
  -- input signal
  signal clk_60Hz_signal : std_logic;
  signal clk_converter_reset : std_logic := '0';

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
  clk_60Hz <= clk_60Hz_signal;
  clk_converter_reset <= '0';
  
  clk_converter_ports : clk_converter_60hz
    port map (
        start => start,
        reset => clk_converter_reset,
        clk => clk,
        clk_60Hz => clk_60Hz_signal
    );

  -- main process -- with counter
  always : process(clk_60Hz_signal, reset)
    -- variable list
    variable short_interval_tmp : std_logic := '0';
    variable long_interval_tmp : std_logic := '0';
    variable internal_counter : std_logic_vector(31 downto 0) := (others => '0');
    constant short_counter : integer := 60;
    constant long_counter  : integer := 120;  
    -- constant short_counter : integer := 1;
    -- constant long_counter  : integer := 2;      
  begin
    if(rising_edge(clk_60Hz_signal)) then -- clock rising
      if(reset = '1') then
        internal_counter := (others => '0');
        short_interval_tmp := '0';
        long_interval_tmp  := '0';
      else

        -- Remove a necessidade do reset
        if(internal_counter < conv_std_logic_vector(long_counter+1, 32)) then
          if(internal_counter = conv_std_logic_vector(short_counter, 32)) then -- 300 cycles of 1 hz = 5 sec.
            short_interval_tmp := '1';
          elsif (internal_counter = conv_std_logic_vector(long_counter, 32)) then -- 600 cycles of 1 hz = 10 sec.
            long_interval_tmp := '1';
          end if; 

          -- increase the counter
          internal_counter := internal_counter + 1;    
        -- else       
        --   long_interval_tmp := '0';
        --   short_interval_tmp := '0';
        --   internal_counter := (others => '0');
        end if;
                
      end if;
    end if;
    
    short_interval <= short_interval_tmp;
    long_interval <= long_interval_tmp;

  end process always;
end timer_behaviour;