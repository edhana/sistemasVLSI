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
  counter_clk : process(clk, reset)
    variable counter : integer := 0;
  begin
    if(reset'event and reset = '1') then
      counter := 0;
      clock_tmp <= '0';
    elsif(clk'event and clk = '0') then
      -- 50Mhz to 60 Hz count until 833333
      if(counter = 833333) then
        counter := 0;
        clock_tmp <= not clock_tmp;
      else
        counter := counter + 1;
      end if;
    end if;
    clk_60Hz <= clock_tmp; -- sets the clock signal on zero
  end process counter_clk;
end behaviour_clk_converter;