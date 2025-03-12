create_clock -period 100.000 -name clk -waveform {0.000 50.000} -add [get_ports clk]
set_input_delay -clock [get_clocks *] -add_delay 50.000 [get_ports {BlkIn i_rst {In1[0]} {In1[1]} {In1[2]} {In1[3]} {In1[4]} {In1[5]} {In1[6]} {In1[7]} {In2[0]} {In2[1]} {In2[2]} {In2[3]} {In2[4]} {In2[5]} {In2[6]} {In2[7]} {In3[0]} {In3[1]} {In3[2]} {In3[3]} {In3[4]} {In3[5]} {In3[6]} {In3[7]} {In4[0]} {In4[1]} {In4[2]} {In4[3]} {In4[4]} {In4[5]} {In4[6]} {In4[7]}}]
set_output_delay -clock [get_clocks *] -add_delay 1.000 [get_ports -filter { NAME =~  "*" && DIRECTION == "OUT" }]
