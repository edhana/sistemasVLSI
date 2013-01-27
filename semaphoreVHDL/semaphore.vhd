-- FSM Semaphor Model
-- Eduardo marques
-- 22/01/2013

library ieee;
use ieee.std_logic_1164.all;

entity semaphore is
  port(
    clk            : in std_logic;
    reset          : in std_logic;
    traffic_sensor : in std_logic;
    short_interval : in std_logic;
    long_interval  : in std_logic;    
    timer_starter  : out std_logic;
    trafic_light_ctl : out std_logic_vector(5 downto 0)   
  );
end semaphore;

architecture behaviour of semaphore is
  -- signal
  signal start          : std_logic;
  signal short_interval : std_logic;
  signal long_interval  : std_logic;

  -- component  
  component timer_ctl is
    port(
      start          : in std_logic;
      reset          : in std_logic;
      clk            : in std_logic;
      short_interval : out std_logic;
      long_interval  : out std_logic
    );
  end timer_ctl;

begin  
  -- fsm 1
  -- fsm 2
end behaviour;