library verilog;
use verilog.vl_types.all;
entity find_max is
    port(
        i_0             : in     vl_logic_vector(7 downto 0);
        i_1             : in     vl_logic_vector(7 downto 0);
        i_max_idx0      : in     vl_logic_vector(2 downto 0);
        i_max_idx1      : in     vl_logic_vector(2 downto 0);
        i_valid0        : in     vl_logic;
        i_valid1        : in     vl_logic;
        o_Max           : out    vl_logic_vector(7 downto 0);
        o_Max_idx       : out    vl_logic_vector(2 downto 0);
        o_valid         : out    vl_logic
    );
end find_max;
