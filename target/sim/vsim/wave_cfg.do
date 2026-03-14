onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -subitemconfig {{/tb_cheshire_soc/fix/dut/axi_ext_slv_rsp_i[0]} -expand} /tb_cheshire_soc/fix/dut/axi_ext_slv_rsp_i
add wave -noupdate -expand -subitemconfig {{/tb_cheshire_soc/fix/dut/axi_ext_slv_req_o[0]} -expand {/tb_cheshire_soc/fix/dut/axi_ext_slv_req_o[0].aw} -expand} /tb_cheshire_soc/fix/dut/axi_ext_slv_req_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 179
configure wave -valuecolwidth 40
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
WaveRestoreZoom {494991 ps} {498946 ps}
