library ieee;
use ieee.std_logic_1164.all;
use work.project_constants.all;

entity control_unit is
  port(
      instruction_input : in std_logic_vector(5 downto 0);
      operation_output : out std_logic_vector(op_sig_control-1 downto 0)
      -- reg_dst    : out std_logic;
      -- branch     : out std_logic;
      -- mem_read   : out std_logic;
      -- mem_to_reg : out std_logic;
      -- alu_op     : out std_logic;
      -- mem_write  : out std_logic;
      -- alu_src    : out std_logic;
      -- reg_write  : out std_logic
    );
end entity;

architecture control_behaviour of control_unit is
begin
  -----------------------------
  -- Output Format:
  -- RegDST 
  -- Jump
  -- Branch
  -- MemRead
  -- MemtoReg
  -- ALUOp
  -- MemWrite
  -- ALUScr
  -- RegWrite
  -----------------------------

  -- R input format = 000000 -- TODO: Revisar as saidas
  -- operation_output_bus <= "000000000" when (instruction_input = "000000" else

  -- lw input format = 100011 -- TODO: Revisar as saidas

  -- sw input format = 101011 -- TODO: Revisar as saidas

  -- beq input format = 000100 -- TODO: Revisar as saidas
end control_behaviour;