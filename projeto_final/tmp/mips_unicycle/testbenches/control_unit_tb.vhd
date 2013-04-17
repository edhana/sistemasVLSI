-- countrol_unit_tb.vhd
-- Author Eduardo Marques
library ieee;
use ieee.std_logic_1164.all;
use work.project_constants.all;

entity control_unit_tb is
end entity;

architecture main of control_unit_tb is
  signal instruction_input : std_logic_vector(5 downto 0);
  signal reg_dst    : std_logic;
  signal branch     : std_logic;
  signal jump       : std_logic;
  signal mem_read   : std_logic;
  signal mem_to_reg : std_logic;
  signal op_alu     : std_logic_vector(1 downto 0);
  signal mem_write  : std_logic;
  signal alu_src    : std_logic;
  signal reg_write  : std_logic;
begin
  con_un : entity work.control_unit(main)
    port map (
      instruction_input => instruction_input,
      reg_dst    => reg_dst,
      branch     => branch,
      jump       => jump,
      mem_read   => mem_read,
      mem_to_reg => mem_to_reg,
      op_alu     => op_alu,
      mem_write  => mem_write,
      alu_src    => alu_src,
      reg_write  => reg_write
    );


  always: process
  begin
    -- beq instruction
    instruction_input <= "000000";
    wait for 50ns;

    -- lw and sw instruction
    instruction_input <= "001001";
    wait for 50ns;

    -- type R instruction - SUM
    instruction_input <= "100000";
    wait for 50ns;

    -- type R instruction - SUBTRACTION
    instruction_input <= "100010";
    wait for 50ns;

    -- type R instruction - AND
    instruction_input <= "100100";
    wait for 50ns;

    -- type R instruction - OR
    instruction_input <= "100101";
    wait for 50ns;

    -- type R instruction - Set less Than
    instruction_input <= "101010";
    wait for 50ns;    
    

  end process always;
end main;