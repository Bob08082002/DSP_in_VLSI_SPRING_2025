create_clock -period 12.000 -name clk -waveform {0.000 6.00} -add [get_ports Clk]
set_input_delay -clock [get_clocks *] -add_delay 6.00 [get_ports -filter { NAME =~  "*" && DIRECTION == "IN" }]
set_output_delay -clock [get_clocks *] -add_delay 1.000 [get_ports -filter { NAME =~  "*" && DIRECTION == "OUT" }]
