transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/exercises/lab1_exp_3/seteseg.vhd}

vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/exercises/lab1_exp_3/seteseg_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  seteseg_tb

add wave *
view structure
view signals
run 500 ns
