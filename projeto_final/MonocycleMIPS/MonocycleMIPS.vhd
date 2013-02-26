-- MIPS Module
library ieee;
use ieee.std_logic_1164.all;

entity MonocycleMIPS is
  port(
      clk : in std_logic;
      rst : in std_logic
    );
end MonocycleMIPS;

architecture behaviour of MonocycleMIPS is
  signal operation : std_logic_vector(31 downto 0); -- This is a mock, just to have something in the design
begin
  operational: process(clk)
  begin
    if(clk'event and clk = '1') then
      if(rst = '1') then
        operation <= (others => '0');
      end if;
    end if;
  end process operational;
end behaviour;