-- Test bench for the clock converter module
-- Author: Eduardo Marques
-- 24/01/2013

library ieee;
use ieee.std_logic_1164.all;

entity clk_converter_60hz_tb is
end clk_converter_60hz_tb;

architecture clk_converter_60hz_tb_arch of clk_converter_60hz_tb is
  -- inputs
  signal start, reset, clk : std_logic; 

  -- outputs
  signal clk_60Hz : std_logic; 

-- components
  component clk_converter_60hz
    port(
      start, reset, clk : in std_logic;
      clk_60Hz : out std_logic
      );
  end component;

-- architecture begin
begin
  clk_portmap: clk_converter_60hz
    port map (
        start => start,
        reset => reset,
        clk => clk,
        clk_60Hz => clk_60Hz
    );

  -- Module Initialization
  init :  process
  begin
    start <= '1';
    reset <= '0';
    wait;
  end process init;

  -- Module execution loop simulation
  always : process
    variable clk_tmp : std_logic := '1';
  begin
    clk_tmp := not clk_tmp;
    clk <= clk_tmp;
    wait for 20ns;
  end process always;
end clk_converter_60hz_tb_arch;
