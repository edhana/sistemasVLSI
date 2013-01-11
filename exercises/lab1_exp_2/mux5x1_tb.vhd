-- Test Bench for the Multiplexer 5 x 1
-- Lab 1 exercise 2
-- Eduardo Marques - 08/01/2013
library ieee;
use ieee.std_logic_1164.all;

entity mux5x1_tb is
end mux5x1_tb;

architecture mux5x1_tb_arch of mux5x1_tb is
  -- constants
  -- signals
  signal a, b, c, d, e: std_logic_vector(2 downto 0);
  signal sel: std_logic_vector(2 downto 0);
  signal sai: std_logic_vector(2 downto 0);  

  component mux5x1
    port (
      a, b, c, d ,e: in std_logic_vector(2 downto 0);
      sel: in std_logic_vector(2 downto 0);
      sai: out std_logic_vector(2 downto 0)
      );
  end component;
begin

  muxmap: mux5x1
  port map (
    a => a,
    b => b,
    c => c,
    d => d,
    e => e,
    sel => sel,
    sai => sai
    );

  -- Module Initialization
  init : process
  begin
    a <= "000";
    b <= "010";
    c <= "001";
    d <= "100";
    e <= "110";
    -- sel <= "000";
    WAIT; -- suspends the process forever, which means this process is only executed once
  end process init;

  -- Module execution loop
  always : process
    variable i : INTEGER := 0;
  begin
    case i is
      when 0 =>
        sel <= "000";
        i := 1;
      when 1 =>   
        sel <= "001";
        i := 2;
      when 2 =>
        sel <= "010";
        i := 3;
		when 3 => 
			sel <= "011";
			i := 4;
      when others => 
        sel <= "100";
        i := 0;
    end case;
    wait for 50ns;
  end process always;
end mux5x1_tb_arch;