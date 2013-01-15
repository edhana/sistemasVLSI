-- seteseg digital display test
-- Lab 1 exercise 3
-- Eduardo Marques
-- 10/01/2013

-- Letters chart ( Update: The signals are inverted! 0 - turned on, 1 - turned off)
--             6543210
-- letter F = "1110001" - "0001110"
-- letter A = "1110111" - "0001000"
-- letter C = "0111001" - "1000110"
-- letter I = "0000110" - "1111001"
-- letter L = "0111000" - "1000111"

library ieee;
use ieee.std_logic_1164.all;

entity seteseg is
  port(
      codigo : in std_logic_vector(2 downto 0);
      segs : out std_logic_vector(6 downto 0);
      dot : out std_logic
    );
end seteseg;

architecture behaviour of seteseg is
  signal seg_tmp : std_logic_vector(6 downto 0);
  signal code_select : std_logic_vector(2 downto 0);
  signal dot_tmp :  std_logic;
begin
  -- I'm using the inverted values
  seteseg_selection: with codigo select
  seg_tmp <= "0001110" when "000", -- F
        "0001000" when "001",      -- A
        "1000110" when "011",      -- C
        "1111001" when "111",      -- I
        "1000111" when "110",      -- L
        "1111111" when others; -- show the point
  segs <= seg_tmp;

  dot_selection: with codigo select
    dot_tmp <= '0' when "010",
      '0' when "100",
      '0' when "101",
      '1' when others;
  dot <= dot_tmp;
end behaviour;

