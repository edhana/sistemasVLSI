transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Ricardo/Documents/Altera/mips_uni/mips_uni_pkg.vhd}
vcom -93 -work work {C:/Users/Ricardo/Documents/Altera/mips_uni/reg.vhd}
vcom -93 -work work {C:/Users/Ricardo/Documents/Altera/mips_uni/data_mem.vhd}
vcom -93 -work work {C:/Users/Ricardo/Documents/Altera/mips_uni/clk_div.vhd}
vcom -93 -work work {C:/Users/Ricardo/Documents/Altera/mips_uni/control.vhd}
vcom -93 -work work {C:/Users/Ricardo/Documents/Altera/mips_uni/adder.vhd}
vcom -93 -work work {C:/Users/Ricardo/Documents/Altera/mips_uni/breg.vhd}
vcom -93 -work work {C:/Users/Ricardo/Documents/Altera/mips_uni/mips_uni.vhd}
vcom -93 -work work {C:/Users/Ricardo/Documents/Altera/mips_uni/ulamips.vhd}
vcom -93 -work work {C:/Users/Ricardo/Documents/Altera/mips_uni/inst_mem.vhd}
vcom -93 -work work {C:/Users/Ricardo/Documents/Altera/mips_uni/alu_ctr.vhd}
vcom -93 -work work {C:/Users/Ricardo/Documents/Altera/mips_uni/sig_ext.vhd}
vcom -93 -work work {C:/Users/Ricardo/Documents/Altera/mips_uni/mux_2.vhd}

vcom -93 -work work {C:/Users/Ricardo/Documents/Altera/mips_uni/mips_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  mips_tb

add wave *
view structure
view signals
run 1000 ps
