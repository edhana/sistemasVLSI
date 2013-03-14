library ieee;
use ieee.std_logic_1164.all;

entity control is
  port(
      instruction_input : in std_logic_vector(5 downto 0);
      reg_dst    : out std_logic;
      branch     : out std_logic;
      mem_read   : out std_logic;
      mem_to_reg : out std_logic;
      alu_op     : out std_logic;
      mem_write  : out std_logic;
      alu_src    : out std_logic;
      reg_write  : out std_logic
    );
end entity;

architecture control_behaviour of control is
  
  -- todo: Melhorar essa condicional
  -- R format 000000
  alu_op <= '1' when (instruction_input = "000000"
end control_behaviour;