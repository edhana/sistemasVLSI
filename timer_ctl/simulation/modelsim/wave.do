onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /clk_converter_60hz/start
add wave -noupdate /clk_converter_60hz/reset
add wave -noupdate /clk_converter_60hz/clk_60hz
add wave -noupdate /timer_ctl/start
add wave -noupdate /timer_ctl/reset
add wave -noupdate /timer_ctl/short_interval
add wave -noupdate /timer_ctl/long_interval
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 254
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {892450879007 ps}
view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /clk_converter_60hz/start 
wave create -pattern none -portmode in -language vhdl /clk_converter_60hz/reset 
wave create -pattern none -portmode in -language vhdl /clk_converter_60hz/clk 
wave create -pattern none -portmode out -language vhdl /clk_converter_60hz/clk_60Hz 
wave create -pattern none -portmode in -language vhdl /timer_ctl/start 
wave create -pattern none -portmode in -language vhdl /timer_ctl/reset 
wave create -pattern none -portmode in -language vhdl /timer_ctl/clk 
wave create -pattern none -portmode out -language vhdl /timer_ctl/short_interval 
wave create -pattern none -portmode out -language vhdl /timer_ctl/long_interval 
WaveCollapseAll -1
wave clipboard restore
