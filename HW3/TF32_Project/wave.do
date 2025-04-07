onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary /testbench/TF32_add_u0/sign_mantissa_A_prec
add wave -noupdate -radix binary /testbench/TF32_add_u0/sign_mantissa_B_prec
add wave -noupdate /testbench/TF32_add_u0/Shifted_sign_mantissa_A_prec
add wave -noupdate /testbench/TF32_add_u0/Shifted_sign_mantissa_B_prec
add wave -noupdate /testbench/TF32_add_u0/sign_sum
add wave -noupdate /testbench/TF32_add_u0/sign_bit
add wave -noupdate /testbench/TF32_add_u0/unsign_sum
add wave -noupdate /testbench/TF32_add_u0/leading_zero
add wave -noupdate /testbench/TF32_add_u0/normalized_unsign_sum
add wave -noupdate /testbench/TF32_add_u0/Gaurd_bit
add wave -noupdate /testbench/TF32_add_u0/Round_bit
add wave -noupdate /testbench/TF32_add_u0/Sticky_bit
add wave -noupdate /testbench/TF32_add_u0/round_mantissa
add wave -noupdate /testbench/TF32_add_u0/result_exp_bias255
add wave -noupdate -radix unsigned /testbench/TF32_add_u0/exp_A_bias255
add wave -noupdate -radix unsigned /testbench/TF32_add_u0/exp_B_bias255
add wave -noupdate /testbench/TF32_add_u0/final_round_mantissa
add wave -noupdate -radix unsigned /testbench/TF32_add_u0/final_result_exp_bias255
add wave -noupdate /testbench/TF32_add_u0/result_s
add wave -noupdate /testbench/TF32_add_u0/result_m
add wave -noupdate /testbench/TF32_add_u0/result_e
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {42800 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 344
configure wave -valuecolwidth 249
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
WaveRestoreZoom {25620 ps} {51280 ps}
