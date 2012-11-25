transcript on
if ![file isdirectory vhdl_libs] {
	file mkdir vhdl_libs
}

vlib vhdl_libs/altera
vmap altera ./vhdl_libs/altera
vcom -93 -work altera {c:/developer-apps/altera/12.0sp2/quartus/eda/sim_lib/altera_syn_attributes.vhd}
vcom -93 -work altera {c:/developer-apps/altera/12.0sp2/quartus/eda/sim_lib/altera_standard_functions.vhd}
vcom -93 -work altera {c:/developer-apps/altera/12.0sp2/quartus/eda/sim_lib/alt_dspbuilder_package.vhd}
vcom -93 -work altera {c:/developer-apps/altera/12.0sp2/quartus/eda/sim_lib/altera_europa_support_lib.vhd}
vcom -93 -work altera {c:/developer-apps/altera/12.0sp2/quartus/eda/sim_lib/altera_primitives_components.vhd}
vcom -93 -work altera {c:/developer-apps/altera/12.0sp2/quartus/eda/sim_lib/altera_primitives.vhd}

vlib vhdl_libs/cycloneiii
vmap cycloneiii ./vhdl_libs/cycloneiii
vcom -93 -work cycloneiii {c:/developer-apps/altera/12.0sp2/quartus/eda/sim_lib/cycloneiii_atoms.vhd}
vcom -93 -work cycloneiii {c:/developer-apps/altera/12.0sp2/quartus/eda/sim_lib/cycloneiii_components.vhd}

if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {MUX4X1.vho}

vcom -93 -work work {C:/workspace/sistemasVLSI/Exercicio0/simulation/modelsim/MUX4X1.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=MUX4X1_vhd.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  MUX4X1

add wave *
view structure
view signals
run -all
