library verilog;
use verilog.vl_types.all;
entity SelectTopK is
    port(
        clk             : in     vl_logic;
        i_rst           : in     vl_logic;
        BlkIn           : in     vl_logic;
        In1             : in     vl_logic_vector(7 downto 0);
        In2             : in     vl_logic_vector(7 downto 0);
        In3             : in     vl_logic_vector(7 downto 0);
        In4             : in     vl_logic_vector(7 downto 0);
        SortOut         : out    vl_logic_vector(7 downto 0);
        OutValid        : out    vl_logic
    );
end SelectTopK;
