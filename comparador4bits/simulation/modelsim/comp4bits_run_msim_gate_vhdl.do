transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {comp4bits.vho}

vcom -93 -work work {Z:/workspace/mestrado/sistemasVLSI/comparador4bits/comp4bits_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /comp4bit-comportamental=comp4bits_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  comp4bits

add wave *
view structure
view signals
run -all
