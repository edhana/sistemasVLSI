onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mips_tb/clk
add wave -noupdate /mips_tb/clk_rom
add wave -noupdate /mips_tb/rst
add wave -noupdate -radix unsigned /mips_tb/data
add wave -noupdate /mips_tb/clk
add wave -noupdate /mips_tb/clk_rom
add wave -noupdate /mips_tb/rst
add wave -noupdate -radix unsigned /mips_tb/data
add wave -noupdate -radix decimal /mips_tb/uut/dmout
add wave -noupdate /mips_tb/uut/dmadd
add wave -noupdate -radix decimal /mips_tb/uut/regA
add wave -noupdate -radix decimal /mips_tb/uut/regB
add wave -noupdate -radix decimal /mips_tb/uut/aluB
add wave -noupdate -radix decimal /mips_tb/uut/alu_out
add wave -noupdate -radix hexadecimal /mips_tb/uut/instruction
add wave -noupdate -radix decimal /mips_tb/uut/imm32
add wave -noupdate /mips_tb/uut/addsht2
add wave -noupdate /mips_tb/uut/rset
add wave -noupdate /mips_tb/uut/clock
add wave -noupdate -radix decimal /mips_tb/uut/regdata
add wave -noupdate -radix unsigned /mips_tb/uut/iwreg
add wave -noupdate /mips_tb/uut/reg_wr
add wave -noupdate /mips_tb/uut/alu_sel
add wave -noupdate /mips_tb/uut/alu_op
add wave -noupdate /mips_tb/uut/reg_dst
add wave -noupdate /mips_tb/uut/jump
add wave -noupdate /mips_tb/uut/branch
add wave -noupdate /mips_tb/uut/mem_read
add wave -noupdate /mips_tb/uut/mem_reg
add wave -noupdate /mips_tb/uut/mem_wr
add wave -noupdate /mips_tb/uut/alu_src
add wave -noupdate /mips_tb/uut/zero
add wave -noupdate /mips_tb/uut/sel_jmp
add wave -noupdate /mips_tb/uut/op_field
add wave -noupdate /mips_tb/uut/sht_field
add wave -noupdate /mips_tb/uut/imm26_field
add wave -noupdate /mips_tb/uut/imm16_field
add wave -noupdate -radix unsigned /mips_tb/uut/rd_field
add wave -noupdate -radix unsigned /mips_tb/uut/rt_field
add wave -noupdate -radix unsigned /mips_tb/uut/rs_field
add wave -noupdate /mips_tb/uut/func_field
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {109 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 178
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {486 ps}
