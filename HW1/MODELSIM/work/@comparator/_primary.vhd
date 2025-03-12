library verilog;
use verilog.vl_types.all;
entity Comparator is
    port(
        i_0             : in     vl_logic_vector(7 downto 0);
        i_1             : in     vl_logic_vector(7 downto 0);
        o_Max           : out    vl_logic_vector(7 downto 0);
        o_Min           : out    vl_logic_vector(7 downto 0)
    );
end Comparator;
