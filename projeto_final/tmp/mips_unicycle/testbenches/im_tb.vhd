-- Instruction Memory Testbench

library ieee;
use ieee.std_logic_1164.all;
use work.project_constants.all;

entity im_tb is
end entity;

architecture main of im_tb is
  signal addr : natural range 0 to 255 := 0;
  signal clk  : std_logic;
  signal q    : std_logic_vector((data_width -1) downto 0);
begin
    im_tb_a : entity work.instruction_memory(main)
      port map(
        addr => addr,
        clk => clk,
        q => q
      );

    init: process    
    begin
      addr <= 4;
      wait;
    end process init;

    clk_p : process
      variable clk_tmp : std_logic := '1';
    begin
      clk_tmp := not clk_tmp;
      clk <= clk_tmp;
      wait for 20ns;
    end process clk_p;

end main;