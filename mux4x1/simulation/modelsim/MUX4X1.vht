-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/22/2012 13:07:40"
                                                            
-- Vhdl Test Bench template for design  :  MUX4X1
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MUX4X1_vhd_tst IS
END MUX4X1_vhd_tst;
ARCHITECTURE MUX4X1_arch OF MUX4X1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL in0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL in1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL in2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL in3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL outMux : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SEL : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT MUX4X1
	PORT (
	in0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	in1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	in2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	in3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	outMux : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SEL : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MUX4X1
	PORT MAP (
-- list connections between master ports and signals
	in0 => in0,
	in1 => in1,
	in2 => in2,
	in3 => in3,
	outMux => outMux,
	SEL => SEL
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END MUX4X1_arch;
