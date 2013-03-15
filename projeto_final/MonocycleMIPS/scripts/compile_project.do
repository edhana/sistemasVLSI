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
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/ulaMIPS.vhd}

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

-- Main Project Module
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/mips_unicycle.vhd}


-- Main Projeto Module Testbench
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/testbenches/top_tb.vhd}

vsim -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs=\"+acc\" -t 1ns top_tb 

add wave *

-- Adicionando Sinais dos outros modulos
-- Program Counter
add wave -position insertpoint sim:/top_tb/uni_mips/pc/read_address
add wave -position insertpoint sim:/top_tb/uni_mips/pc/instruction_address

-- Counter Adder
add wave -position end  sim:/top_tb/uni_mips/stv_address_bus_value

run 1000ns
-- view signals




