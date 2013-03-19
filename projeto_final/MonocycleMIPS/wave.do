onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /top_tb/clk
add wave -noupdate -radix hexadecimal /top_tb/rst
add wave -noupdate -divider Buses
add wave -noupdate /top_tb/uni_mips/stv_address_bus_value
add wave -noupdate /top_tb/uni_mips/sign_extend_output_bus
add wave -noupdate /top_tb/uni_mips/shift_left_ula_result_bus
add wave -noupdate /top_tb/uni_mips/stv_data_memory_bus
add wave -noupdate /top_tb/uni_mips/instruction_bus
add wave -noupdate /top_tb/uni_mips/jump_address
add wave -noupdate /top_tb/uni_mips/mux_extend_output_data
add wave -noupdate /top_tb/uni_mips/mux_jump_output
add wave -noupdate -divider {Program Counter}
add wave -noupdate /top_tb/uni_mips/pc/read_address
add wave -noupdate /top_tb/uni_mips/pc/instruction_address
add wave -noupdate /top_tb/uni_mips/instruction_address_bus
add wave -noupdate /top_tb/uni_mips/pc_adder/result
add wave -noupdate /top_tb/uni_mips/stv_address_bus_value
add wave -noupdate /top_tb/uni_mips/pc_next_address
add wave -noupdate -divider {Control Unit}
add wave -noupdate /top_tb/uni_mips/cu/alu_src
add wave -noupdate /top_tb/uni_mips/cu/branch
add wave -noupdate /top_tb/uni_mips/cu/jump
add wave -noupdate /top_tb/uni_mips/cu/mem_read
add wave -noupdate /top_tb/uni_mips/cu/mem_to_reg
add wave -noupdate /top_tb/uni_mips/cu/mem_write
add wave -noupdate /top_tb/uni_mips/cu/op_alu
add wave -noupdate /top_tb/uni_mips/cu/reg_dst
add wave -noupdate /top_tb/uni_mips/cu/reg_write
add wave -noupdate /top_tb/uni_mips/ula_c_unit/op_code
add wave -noupdate /top_tb/uni_mips/ula_c_unit/op_ula_type
add wave -noupdate /top_tb/uni_mips/ula_c_unit/alu_operation
add wave -noupdate -divider {Instruction Memory}
add wave -noupdate /top_tb/uni_mips/im/addr
add wave -noupdate /top_tb/uni_mips/im/q
add wave -noupdate -divider {ULA MIPS}
add wave -noupdate /top_tb/uni_mips/ula/data_operator1
add wave -noupdate /top_tb/uni_mips/ula/data_operator2
add wave -noupdate /top_tb/uni_mips/ula/operation
add wave -noupdate /top_tb/uni_mips/ula/result
add wave -noupdate /top_tb/uni_mips/ula/zero
add wave -noupdate -divider {Signal Extend MUX}
add wave -noupdate /top_tb/uni_mips/signal_extend_mux/control_signal
add wave -noupdate /top_tb/uni_mips/signal_extend_mux/data_input_A
add wave -noupdate /top_tb/uni_mips/signal_extend_mux/data_input_B
add wave -noupdate /top_tb/uni_mips/signal_extend_mux/data_output
add wave -noupdate -divider {Register Bank}
add wave -noupdate /top_tb/uni_mips/rb/add1
add wave -noupdate /top_tb/uni_mips/rb/add2
add wave -noupdate /top_tb/uni_mips/rb/clk
add wave -noupdate /top_tb/uni_mips/rb/rd
add wave -noupdate /top_tb/uni_mips/rb/wadd
add wave -noupdate /top_tb/uni_mips/rb/wdata
add wave -noupdate /top_tb/uni_mips/rb/wr
add wave -noupdate /top_tb/uni_mips/rb/r1
add wave -noupdate /top_tb/uni_mips/rb/r2
add wave -noupdate /top_tb/uni_mips/rb/iaddr1
add wave -noupdate /top_tb/uni_mips/rb/registers
add wave -noupdate -divider {Data Memory}
add wave -noupdate /top_tb/uni_mips/dm/addr
add wave -noupdate /top_tb/uni_mips/dm/data
add wave -noupdate /top_tb/uni_mips/dm/we
add wave -noupdate /top_tb/uni_mips/dm/q
add wave -noupdate /top_tb/uni_mips/dm/addr_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {62 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 307
configure wave -valuecolwidth 70
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
WaveRestoreZoom {0 ns} {86 ns}
