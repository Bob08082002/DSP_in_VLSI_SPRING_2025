create_clock -period 8.000 -name clk -waveform {0.000 4.000} -add [get_ports clk]
set_input_delay -clock [get_clocks *] -add_delay 4.000 [get_ports -filter { NAME =~  "*" && DIRECTION == "IN" }]
set_output_delay -clock [get_clocks *] -add_delay 1.000 [get_ports -filter { NAME =~  "*" && DIRECTION == "OUT" }]
