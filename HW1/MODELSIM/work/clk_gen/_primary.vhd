library verilog;
use verilog.vl_types.all;
entity clk_gen is
    port(
        clk             : out    vl_logic;
        rst             : out    vl_logic
    );
end clk_gen;
