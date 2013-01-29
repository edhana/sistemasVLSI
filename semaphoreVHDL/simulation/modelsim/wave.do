onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /semaphore_tb/reset
add wave -noupdate /semaphore_tb/traffic_sensor
add wave -noupdate /semaphore_tb/trafic_light_ctl
add wave -noupdate /semaphore_tb/semaphore_port/timer_ctl_ports/clk_converter_ports/start
add wave -noupdate /semaphore_tb/semaphore_port/timer_ctl_ports/clk_converter_ports/reset
add wave -noupdate /semaphore_tb/semaphore_port/timer_ctl_ports/clk_converter_ports/clk
add wave -noupdate /semaphore_tb/semaphore_port/timer_ctl_ports/clk_converter_ports/clk_60Hz
add wave -noupdate /semaphore_tb/semaphore_port/timer_ctl_ports/clk_converter_ports/clock_tmp
add wave -noupdate /semaphore_tb/semaphore_port/timer_ctl_ports/start
add wave -noupdate /semaphore_tb/semaphore_port/timer_ctl_ports/reset
add wave -noupdate /semaphore_tb/semaphore_port/timer_ctl_ports/clk
add wave -noupdate /semaphore_tb/semaphore_port/timer_ctl_ports/short_interval
add wave -noupdate /semaphore_tb/semaphore_port/timer_ctl_ports/long_interval
add wave -noupdate /semaphore_tb/semaphore_port/timer_ctl_ports/clk_60Hz
add wave -noupdate /semaphore_tb/semaphore_port/timer_ctl_ports/clk_60Hz_signal
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {480000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 435
configure wave -valuecolwidth 81
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
WaveRestoreZoom {0 ps} {1447680 ps}
