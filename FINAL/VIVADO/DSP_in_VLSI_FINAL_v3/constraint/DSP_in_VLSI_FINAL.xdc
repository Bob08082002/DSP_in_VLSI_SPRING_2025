create_clock -period 85.000 -name clk -waveform {0.000 42.500} -add [get_ports Clk]
set_input_delay -clock [get_clocks *] -add_delay 42.500 [get_ports -filter { NAME =~  "*" && DIRECTION == "IN" }]
set_output_delay -clock [get_clocks *] -add_delay 1.000 [get_ports -filter { NAME =~  "*" && DIRECTION == "OUT" }]
