transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Ricardo/Documents/Altera/mips_uni/bregDir/breg.vhd}

vcom -93 -work work {C:/Users/Ricardo/Documents/Altera/mips_uni/bregDir/breg_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  breg_tb

add wave *
view structure
view signals
run 100 ps
