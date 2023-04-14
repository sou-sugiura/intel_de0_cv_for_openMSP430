onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_openMSP430_fpga/dut/reset_n
add wave -noupdate /tb_openMSP430_fpga/dut/puc_rst
add wave -noupdate /tb_openMSP430_fpga/dut/CLOCK_50
add wave -noupdate /tb_openMSP430_fpga/dut/KEY
add wave -noupdate /tb_openMSP430_fpga/dut/LEDR
add wave -noupdate /tb_openMSP430_fpga/dut/per_addr
add wave -noupdate /tb_openMSP430_fpga/dut/per_din
add wave -noupdate /tb_openMSP430_fpga/dut/per_en
add wave -noupdate /tb_openMSP430_fpga/dut/per_we
add wave -noupdate /tb_openMSP430_fpga/dut/per_dout
add wave -noupdate /tb_openMSP430_fpga/dut/irq_ta0
add wave -noupdate /tb_openMSP430_fpga/dut/irq_ta1
add wave -noupdate /tb_openMSP430_fpga/dut/openmsp430_0/wdt_irq
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {659490000 ps} 0} {{Cursor 2} {1309835789 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 338
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
configure wave -timelineunits us
update
WaveRestoreZoom {379450272 ps} {1799604768 ps}
