transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/semaphoreVHDL/semaphore.vhd}
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/timer_ctl/timer_ctl.vhd}
vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/clk_converter/clk_converter_60hz.vhd}

vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/semaphoreVHDL/semaphore_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  semaphore_tb

add wave *
view structure
view signals
run -all
