library ieee;
use ieee.std_logic_1164.all;

entity top_tb is
end top_tb;

architecture behaviour of top_tb is
  signal clk : std_logic;
  signal rst : std_logic;

  component mips_unicycle is
    port(
      clk : in std_logic;
      rst : in std_logic -- ainda não sei se e necessario
    );
  end component;
begin
  uni_mips : mips_unicycle 
    port map (
      clk => clk,
      rst => rst
  );

  always : process
    variable  clock_tmp : std_logic := '1';
  begin
    rst <= '0';
    clock_tmp := not clock_tmp;
    clk <= clock_tmp;
    wait for 20ns;
  end process always;

end behaviour;