-- to run this script just enter the right directory
-- cd Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/simulation/modelsim/
-- do [pwd]/compile_project.do

transcript on
if {[file exists rtl_work]} {
  vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

-- project libraries
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/project_constants.vhd}

-- program counter
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/program_counter.vhd}

-- ULA
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/ula_mips.vhd}

-- ULA control
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/ula_control.vhd}

-- Instruction Memory ROM
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/instruction_memory.vhd}

-- register bank
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/bregMIPS.vhd}


-- Simple RAM (Data Memory RAM)
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/simple_ram.vhd}

-- Simple RAM (Data Memory RAM)
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/control_unit.vhd}

-- Generic 5 bit mux
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/generic_5_bit_mux.vhd}

-- Generic 32 bit mux
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/generic_32_bit_mux.vhd}

-- Main Project Module
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/mips_unicycle.vhd}


-- Main Projeto Module Testbench
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/testbenches/top_tb.vhd}

vsim -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs=\"+acc\" -t 1ns top_tb 

-- do wave.do
-- do wave_min1.do
do wave_min2.do

run 1000ns
-- view signals




