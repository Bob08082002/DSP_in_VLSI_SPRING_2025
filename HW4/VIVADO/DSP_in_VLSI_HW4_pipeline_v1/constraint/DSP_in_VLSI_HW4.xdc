create_clock -period 13.000 -name clk -waveform {0.000 6.500} -add [get_ports clk]
set_input_delay -clock [get_clocks *] -add_delay 6.500 [get_ports -filter { NAME =~  "*" && DIRECTION == "IN" }]
set_output_delay -clock [get_clocks *] -add_delay 1.000 [get_ports -filter { NAME =~  "*" && DIRECTION == "OUT" }]
