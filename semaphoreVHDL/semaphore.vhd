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
    trafic_light_ctl : out std_logic_vector(5 downto 0)   
  );
end semaphore;

architecture behaviour of semaphore is
  -- fsm control
  constant s0     : std_logic_vector(5 downto 0) := "001100";
  constant s1     : std_logic_vector(5 downto 0) := "010100";
  constant s2     : std_logic_vector(5 downto 0) := "100001";
  constant s3     : std_logic_vector(5 downto 0) := "100010";
  signal state    : std_logic_vector(5 downto 0):= s0;
  signal light_tmp    : std_logic_vector(5 downto 0):= state;
  signal clk_60Hz : std_logic;

  -- timer signal control
  signal start          : std_logic := '1';
  signal timer_reset    : std_logic := '0';
  signal short_interval : std_logic := '0';
  signal long_interval  : std_logic := '0';

  -- component  
  component timer_ctl is
    port(
      start          : in std_logic;
      reset          : in std_logic;
      clk            : in std_logic;
      short_interval : out std_logic;
      long_interval  : out std_logic;
      clk_60Hz       : out std_logic
    );
  end component;

-- architecture core body
begin  
  timer_ctl_ports : timer_ctl
    port map(
      start => start,
      reset => timer_reset,
      clk => clk,
      short_interval => short_interval,
      long_interval => long_interval,
      clk_60Hz => clk_60Hz
    );

  always : process(clk_60Hz, reset)
    variable start_tmp : std_logic := '1';
  begin    
    if(clk_60Hz'event and clk_60Hz = '1') then -- rising edge      
      start <= start_tmp;

      case state is
        when s0 =>
          -- traffic_sensor is inverted
          if(traffic_sensor = '0' and long_interval = '1') then
            -- timer_reset <= '1';
            state <= s1;
          else
            -- timer_reset <= '0';
            state <= s0;
          end if;
        when s1 =>
          if(short_interval = '1') then
            -- timer_reset <= '0';
            state <= s2;
          else
            -- timer_reset <= '0';
            state <= s1;
          end if;
        when s2 =>
          if(long_interval = '1') then
            -- timer_reset <= '1';
            state <= s3;
          else
            -- timer_reset <= '0';
            state <= s2;
          end if;
        when s3 =>
          if(short_interval = '1') then
            -- timer_reset <= '0';
            state <= s0;
          else
            -- timer_reset <= '0';
            state <= s3;
          end if;
        when others =>
          state <= s0;
      end case;
      light_tmp <= state;
    end if;    
  end process always;

  fsm_ctl : process(light_tmp)
  begin
    trafic_light_ctl <= light_tmp;

    if(light_tmp'event) then
      timer_reset <= '1';
    end if;
  end process fsm_ctl;
  -- fsm 1
  -- fsm 2
end behaviour;