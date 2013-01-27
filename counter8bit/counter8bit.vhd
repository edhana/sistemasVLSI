library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity counter8bit is
  port (
    clk : in std_logic;
    reset : in std_logic;
    result : out std_logic_vector(7 downto 0)
    );
end counter8bit;

architecture behaviour of counter8bit is
  signal value : std_logic_vector(7 downto 0);
  signal nextvalue : std_logic_vector(7 downto 0);
begin
  sum_p: process(reset, clk)
  begin
    if(reset = '0') then 
      value <= "00000000";      
    elsif(clk'event and clk = '0') then
      value <= value + 1;
    end if;
    result <= value;
  end process sum_p;
end behaviour;

