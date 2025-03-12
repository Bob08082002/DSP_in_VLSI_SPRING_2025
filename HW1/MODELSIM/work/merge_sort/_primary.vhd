library verilog;
use verilog.vl_types.all;
entity merge_sort is
    port(
        i_clk           : in     vl_logic;
        i_rst           : in     vl_logic;
        i_BlkIn         : in     vl_logic;
        i_In1           : in     vl_logic_vector(7 downto 0);
        i_In2           : in     vl_logic_vector(7 downto 0);
        i_In3           : in     vl_logic_vector(7 downto 0);
        i_In4           : in     vl_logic_vector(7 downto 0);
        o_SortOut       : out    vl_logic_vector(7 downto 0);
        o_OutValid      : out    vl_logic
    );
end merge_sort;
