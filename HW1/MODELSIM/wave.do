onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/SelectTopK_u0/i_clk
add wave -noupdate /testbench/SelectTopK_u0/i_rst
add wave -noupdate /testbench/SelectTopK_u0/i_BlkIn
add wave -noupdate /testbench/SelectTopK_u0/cnt_r
add wave -noupdate /testbench/SelectTopK_u0/i_In1
add wave -noupdate /testbench/SelectTopK_u0/i_In2
add wave -noupdate /testbench/SelectTopK_u0/i_In3
add wave -noupdate /testbench/SelectTopK_u0/i_In4
add wave -noupdate /testbench/pattern_idx_out
add wave -noupdate /testbench/SelectTopK_u0/o_SortOut
add wave -noupdate /testbench/SelectTopK_u0/o_OutValid
add wave -noupdate /testbench/SelectTopK_u0/Sort4_A
add wave -noupdate /testbench/SelectTopK_u0/Sort4_B
add wave -noupdate /testbench/SelectTopK_u0/Sort4_C
add wave -noupdate /testbench/SelectTopK_u0/Sort4_D
add wave -noupdate /testbench/SelectTopK_u0/Max_idx
add wave -noupdate /testbench/topk_idx
add wave -noupdate -radix unsigned -childformat {{{/testbench/SelectTopK_u0/group_idx_r[7]} -radix unsigned} {{/testbench/SelectTopK_u0/group_idx_r[6]} -radix unsigned} {{/testbench/SelectTopK_u0/group_idx_r[5]} -radix unsigned} {{/testbench/SelectTopK_u0/group_idx_r[4]} -radix unsigned} {{/testbench/SelectTopK_u0/group_idx_r[3]} -radix unsigned} {{/testbench/SelectTopK_u0/group_idx_r[2]} -radix unsigned} {{/testbench/SelectTopK_u0/group_idx_r[1]} -radix unsigned} {{/testbench/SelectTopK_u0/group_idx_r[0]} -radix unsigned}} -expand -subitemconfig {{/testbench/SelectTopK_u0/group_idx_r[7]} {-radix unsigned} {/testbench/SelectTopK_u0/group_idx_r[6]} {-radix unsigned} {/testbench/SelectTopK_u0/group_idx_r[5]} {-radix unsigned} {/testbench/SelectTopK_u0/group_idx_r[4]} {-radix unsigned} {/testbench/SelectTopK_u0/group_idx_r[3]} {-radix unsigned} {/testbench/SelectTopK_u0/group_idx_r[2]} {-radix unsigned} {/testbench/SelectTopK_u0/group_idx_r[1]} {-radix unsigned} {/testbench/SelectTopK_u0/group_idx_r[0]} {-radix unsigned}} /testbench/SelectTopK_u0/group_idx_r
add wave -noupdate -expand /testbench/SelectTopK_u0/group_reg_r
add wave -noupdate -expand /testbench/SelectTopK_u0/group_valid_r
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {49115000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 273
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
WaveRestoreZoom {49053360 ps} {49219060 ps}
