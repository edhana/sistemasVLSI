-- Author Eduardo Marques
-- ULA contro module
library ieee;
use ieee.std_logic_1164.all;

entity ula_control is
  port(
    op_inst : in std_logic_vector(5 downto 0); -- ALU CTL Instruction part
    op_code : in std_logic_vector(1 downto 0); -- operation code
    alu_operation : out std_logic_vector(3 downto 0)
    );
end entity;

architecture main of ula_control is
  signal fbody : std_logic_vector(3 downto 0);
  signal aluop : std_logic_vector(3 downto 0);
begin
  -- fbody <= op_code(3 downto 0);

  -- aluop <= "0010" when fbody = "0000" else
  --          "0110" when fbody = "0010" else
  --          "0000" when fbody = "0100" else
  --          "0001" when fbody = "0101" else
  --          "0111" when fbody = "1010" else
  --          "1100" when fobody;


  -- with op_ula_type select
    -- alu_operation <= "0110" when "01",


  -- decode : process(op_code)
  --   variable fbody : std_logic_vector(3 downto 0) := "0000";
  -- begin
  --   fbody := op_code(3 downto 0);

  --   if(op_ula_type = "01") then -- beq
  --     alu_operation <= "0110"; -- SUB
  --   elsif(op_ula_type = "10") then -- type R
  --     case fbody is
  --       when "0000" => alu_operation <= "0010"; -- SUM
  --       when "0010" => alu_operation <= "0110"; -- SUB
  --       when "0100" => alu_operation <= "0000"; -- AND
  --       when "0101" => alu_operation <= "0001"; -- OR
  --       when "1010" => alu_operation <= "0111"; -- SLT
  --       when "0111" => alu_operation <= "1100"; -- SLT
  --       when others =>
  --     end case;
  --   elsif(op_ula_type = "00") then -- lw and sw
  --     alu_operation <= "0010"; -- SUM
  --   end if;
  -- end process decode;
end main;