library verilog;
use verilog.vl_types.all;
entity comparator_tree is
    port(
        i_0             : in     vl_logic_vector(7 downto 0);
        i_1             : in     vl_logic_vector(7 downto 0);
        i_2             : in     vl_logic_vector(7 downto 0);
        i_3             : in     vl_logic_vector(7 downto 0);
        i_4             : in     vl_logic_vector(7 downto 0);
        i_5             : in     vl_logic_vector(7 downto 0);
        i_6             : in     vl_logic_vector(7 downto 0);
        i_7             : in     vl_logic_vector(7 downto 0);
        i_valid_0       : in     vl_logic;
        i_valid_1       : in     vl_logic;
        i_valid_2       : in     vl_logic;
        i_valid_3       : in     vl_logic;
        i_valid_4       : in     vl_logic;
        i_valid_5       : in     vl_logic;
        i_valid_6       : in     vl_logic;
        i_valid_7       : in     vl_logic;
        o_Max           : out    vl_logic_vector(7 downto 0);
        o_Max_idx       : out    vl_logic_vector(2 downto 0)
    );
end comparator_tree;
