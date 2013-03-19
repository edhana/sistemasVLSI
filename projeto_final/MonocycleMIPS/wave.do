onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /top_tb/clk
add wave -noupdate -radix hexadecimal /top_tb/rst
add wave -noupdate -divider Buses
add wave -noupdate /top_tb/uni_mips/stv_address_bus_value
add wave -noupdate /top_tb/uni_mips/shift_left_bus
add wave -noupdate /top_tb/uni_mips/sign_extend_output_bus
add wave -noupdate /top_tb/uni_mips/shift_left_ula_result_bus
add wave -noupdate /top_tb/uni_mips/stv_address_bus_value
add wave -noupdate /top_tb/uni_mips/stv_data_memory_bus
add wave -noupdate /top_tb/uni_mips/instruction_bus
add wave -noupdate -divider {Program Counter}
add wave -noupdate /top_tb/uni_mips/pc/read_address
add wave -noupdate /top_tb/uni_mips/pc/instruction_address
add wave -noupdate -divider {Control Unit}
add wave -noupdate /top_tb/uni_mips/cu/op_alu
add wave -noupdate /top_tb/uni_mips/ula_c_unit/op_code
add wave -noupdate /top_tb/uni_mips/ula_c_unit/op_ula_type
add wave -noupdate /top_tb/uni_mips/ula_c_unit/alu_operation
add wave -noupdate -divider {Instruction Memory}
add wave -noupdate /top_tb/uni_mips/im/addr
add wave -noupdate /top_tb/uni_mips/im/q
add wave -noupdate -divider {ULA MIPS}
add wave -noupdate /top_tb/uni_mips/ula/data_operator1
add wave -noupdate /top_tb/uni_mips/ula/data_operator2
add wave -noupdate /top_tb/uni_mips/ula/result
add wave -noupdate /top_tb/uni_mips/ula/zero
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {73 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 262
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 100
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {264 ns}
