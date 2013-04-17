library ieee;
use ieee.std_logic_1164.all;
use work.project_constants.all;

entity control_unit is
  port(
      instruction_input : in std_logic_vector(5 downto 0);
      reg_dst    : out std_logic;
      branch     : out std_logic;
      jump       : out std_logic;
      mem_read   : out std_logic;
      mem_to_reg : out std_logic;
      op_alu     : out std_logic_vector(1 downto 0);
      mem_write  : out std_logic;
      alu_src    : out std_logic;
      reg_write  : out std_logic
    );
end entity;

architecture main of control_unit is
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

  instruction_code_decoder : process(instruction_input)
  begin
    case instruction_input is
      when "100011" =>
        -- lw instruction
        op_alu     <= "00"; 
        reg_dst    <= '0';  
        jump       <= '0';
        alu_src    <= '1';
        mem_to_reg <= '1';
        reg_write  <= '1';
        mem_read   <= '1';
        mem_write  <= '0';
        branch     <= '0';
      when "101011" =>
        -- sw instructions
        op_alu     <= "00"; 
        reg_dst    <= '0';  
        jump       <= '0';
        alu_src    <= '1';
        mem_to_reg <= '0';
        reg_write  <= '0';
        mem_read   <= '0';
        mem_write  <= '1';
        branch     <= '0';
      when "000000" =>
        -- type R instructions
        op_alu     <= "10"; 
        reg_dst    <= '1';  
        jump       <= '0';
        alu_src    <= '0';
        mem_to_reg <= '0';
        reg_write  <= '1';
        mem_read   <= '0';
        mem_write  <= '0';
        branch     <= '0';      
      when "001000" =>
        -- type ADDI instructions
        op_alu     <= "00"; 
        reg_dst    <= '0';  
        jump       <= '0';
        alu_src    <= '1';
        mem_to_reg <= '0';
        reg_write  <= '1';
        mem_read   <= '0';
        mem_write  <= '0';
        branch     <= '0';        
      when "000010" =>
        -- type Jump instruction
        op_alu     <= "00"; 
        reg_dst    <= '0';  
        jump       <= '1';
        alu_src    <= '0';
        mem_to_reg <= '0';
        reg_write  <= '1';
        mem_read   <= '0';
        mem_write  <= '0';
        branch     <= '0';                        
      when "000100" =>
        -- type Beq instruction
        op_alu     <= "01"; 
        reg_dst    <= '0';  
        jump       <= '0';
        alu_src    <= '0';
        mem_to_reg <= '0';
        reg_write  <= '0';
        mem_read   <= '0';
        mem_write  <= '0';
        branch     <= '1';        
      when OTHERS =>
    end case;
  end process instruction_code_decoder;
end main;