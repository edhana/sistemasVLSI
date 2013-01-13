-- seteseg digital display test
-- Lab 1 exercise 3
-- Eduardo Marques
-- 10/01/2013

-- Letters chart
--             6543210
-- letter F = "1110001"
-- letter A = "1110111"
-- letter C = "0111001"
-- letter I = "0000110"
-- letter L = "0111000"

library ieee;
use ieee.std_logic_1164.all;

entity seteseg is
  port(
      codigo : in std_logic_vector(2 downto 0);
      segs : out std_logic_vector(6 downto 0)      
    );
end seteseg;

architecture behaviour of seteseg is
  signal seg_tmp : std_logic_vector(6 downto 0);
  signal code_select : std_logic_vector(2 downto 0);
begin
  seteseg_selection: with codigo select
  seg_tmp <= "1110001" when "000", -- F
        "1110111" when "001",      -- A
        "0111001" when "011",      -- C
        "0000110" when "111",      -- I
        "0111000" when "110",      -- L
        "0000000" when others; -- show the point
  segs <= seg_tmp;
end behaviour;

