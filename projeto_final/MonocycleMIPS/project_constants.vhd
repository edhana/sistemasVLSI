-- package library for MIPS Project
-- Since: 28/02/2013
-- Author: Eduardo Marques

library ieee;
use ieee.std_logic_1164.all;

package project_constants is      
    constant indexes :  natural := 32;
    constant register_width  : INTEGER := 32;
    constant words : INTEGER := 32;
    constant address_width : natural := 5;
    constant zero5_bits : std_logic_vector :=  "00000";
    constant zero32_bits : std_logic_vector(31 downto 0) := "00000000000000000000000000000000"; -- TODO: Alterar para others
    
    type mem_type is array  (indexes-1 downto 0) of std_logic_vector(register_width-1 downto 0);
end project_constants;
