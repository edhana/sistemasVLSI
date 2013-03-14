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

-- Instruction Memory ROM
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/instruction_memory.vhd}


-- register bank
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/bregMIPS.vhd}

-- ULA
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/ulaMIPS.vhd}

-- Main Project Module
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/MipsUnicycle.vhd}


-- Main Projeto Module Testbench
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/projeto_final/MonocycleMIPS/top_tb.vhd}

vsim -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs=\"+acc\" -t 1ns top_tb 

add wave *
run 1000ns
-- view signals



