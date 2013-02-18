-- clk converter file
-- Its a 10Hz converter multiplied by 6
-- Eduardo Marques
-- 22/01/2012

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clk_converter_60hz is
	port(
		start : in std_logic;
    reset : in std_logic;
    clk : in std_logic;
    clk_60Hz : out std_logic
	);
end clk_converter_60hz;

architecture behaviour_clk_converter of clk_converter_60hz is
  signal clock_tmp : std_logic := '0';
begin -- architecture begin
  clk_60Hz <= clock_tmp;

  counter_clk : process(clk, reset)
    variable counter : integer := 0;
    -- constant counter_cycle : integer := 83333;
    constant counter_cycle : integer := 41666;
    -- constant counter_cycle : integer := 1000;
  begin
    if(reset = '1') then
      counter := 0;
      clock_tmp <= '0';
    elsif(rising_edge(clk)) then
      -- 50Mhz to 60 Hz count until 83333
      if(counter = counter_cycle) then
        counter := 0;
        clock_tmp <= not clock_tmp;
      else
        counter := counter + 1;
      end if;
    end if;    
  end process counter_clk;
end behaviour_clk_converter;