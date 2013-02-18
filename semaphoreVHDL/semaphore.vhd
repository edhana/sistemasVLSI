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
    show_state     : out std_logic_vector(1 downto 0) := "00";
    trafic_light_ctl : out std_logic_vector(5 downto 0) := "001100" -- initial state, its lame but I don't have any better idea
  );
end semaphore;

architecture behaviour of semaphore is
  -- fsm control
  constant s0     : std_logic_vector(5 downto 0) := "001100";
  constant s1     : std_logic_vector(5 downto 0) := "010100";
  constant s2     : std_logic_vector(5 downto 0) := "100001";
  constant s3     : std_logic_vector(5 downto 0) := "100010";
  signal state    : std_logic_vector(5 downto 0) := s0;
  signal clk_60Hz : std_logic;

  -- timer signal control
  signal start          : std_logic := '1';
  signal timer_reset    : std_logic := '0';
  signal short_interval : std_logic := '0';
  signal long_interval  : std_logic := '0';

  signal show_state_tmp : std_logic_vector(1 downto 0) := "00";

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

  -- timer_reset <= '1' when (state = s0) and (traffic_sensor = '1') and (long_interval = '1') else
  --               '1' when (state = s1) and (short_interval = '1') else
  --               '1' when (state = s2) and (long_interval = '1') else
  --               '1' when (state = s3) and (short_interval = '1') else
  --               '0';
  start <= '1';          

  always : process(clk_60Hz, reset)
    variable state_holder : std_logic_vector(5 downto 0) := s0;
  begin        
    show_state_tmp <= "11";

      if(rising_edge(clk_60Hz)) then
        trafic_light_ctl <= state;        
        case state is
          when s0 =>
            -- traffic_sensor is inverted
              -- show_state_tmp <= "00";
            if(traffic_sensor = '0' and long_interval = '1') then            
              state_holder := s1;
            end if;
          when s1 =>          
            -- show_state_tmp <= "01";
            if(short_interval = '1') then          
              state_holder := s2;
            end if;
          when s2 =>
            -- show_state_tmp <= "10";
            if(long_interval = '1') then
              state_holder := s3;
            end if;
          when s3 =>
            -- show_state_tmp <= "11";
            if(short_interval = '1') then
              state_holder := s0;
            end if;
          when others =>
            state_holder := s0;
        end case; 

        state <= state_holder;          
        show_state <= show_state_tmp;

        if ((state = s0) and (traffic_sensor = '1') and (long_interval = '1')) or
          ((state = s1) and (short_interval = '1')) or
          ((state = s2) and (long_interval = '1')) or
          ((state = s3) and (short_interval = '1')) then
          timer_reset <= '1';              
        else
          timer_reset <= '0';
        end if;
      end if;   
  end process always;
end behaviour;