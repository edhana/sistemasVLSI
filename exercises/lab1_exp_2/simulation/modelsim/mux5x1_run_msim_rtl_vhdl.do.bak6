transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/exercises/lab1_exp_2/mux5x1.vhd}

vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/exercises/lab1_exp_2/mux5x1_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  mux5x1_tb

add wave *
view structure
view signals
run -all
