onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /timer_ctl_tb/timer_start
add wave -noupdate /timer_ctl_tb/timer_reset
add wave -noupdate /timer_ctl_tb/short_interval
add wave -noupdate /timer_ctl_tb/long_interval
add wave -noupdate /timer_ctl_tb/timer_ctl_ports/timer_start
add wave -noupdate /timer_ctl_tb/timer_ctl_ports/timer_reset
add wave -noupdate /timer_ctl_tb/timer_ctl_ports/short_interval
add wave -noupdate /timer_ctl_tb/timer_ctl_ports/long_interval
add wave -noupdate /timer_ctl_tb/timer_ctl_ports/clk_60Hz
add wave -noupdate /timer_ctl_tb/timer_ctl_ports/start
add wave -noupdate /timer_ctl_tb/timer_ctl_ports/reset
add wave -noupdate /timer_ctl_tb/timer_ctl_ports/internal_counter
add wave -noupdate /timer_ctl_tb/timer_ctl_ports/clk_converter_ports/start
add wave -noupdate /timer_ctl_tb/timer_ctl_ports/clk_converter_ports/reset
add wave -noupdate /timer_ctl_tb/timer_ctl_ports/clk_converter_ports/clk_60Hz
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1350001080000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 349
configure wave -valuecolwidth 119
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 10000000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits sec
update
WaveRestoreZoom {1229301900 ns} {1470700260 ns}
