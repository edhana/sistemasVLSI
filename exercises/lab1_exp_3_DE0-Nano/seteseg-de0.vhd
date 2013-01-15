-- DE0 Nano Seteseg test-file
-- Eduardo Marques
library ieee;
use ieee.std_logic_1164.all;

entity seteseg_de0 is
  port(
    trigger : in std_logic;
    led_out : out std_logic_vector(6 downto 0)
  );  
end seteseg_de0;

architecture behaviour of seteseg_de0 is
  -- signals
  signal codigo : std_logic_vector(2 downto 0);
  -- signal segs : std_logic_vector(6 downto 0);

  -- component seteseg
  component seteseg
    port(
      codigo : in std_logic_vector(2 downto 0);
      segs : out std_logic_vector(6 downto 0)
    );
  end component;

-- start of architecture
begin
  -- port mapping
  componentmap : seteseg
    port map (
      codigo => codigo,
      segs => led_out
    );

  -- main process
  always: process(trigger)
    variable i : INTEGER := 0;
  begin
    if(trigger = '1') then
      case i is
        when 0 =>
          codigo <= "000";
          i := 1;
        when 1 =>
          codigo <= "001";
          i := 2;
        when 2 =>
          codigo <= "011";
          i := 3;
        when 3 =>
          codigo <= "111";
          i := 4;
        when others =>
          codigo <= "110";
          i := 0;
      end case; 
    end if;   
  end process always;
end behaviour;
