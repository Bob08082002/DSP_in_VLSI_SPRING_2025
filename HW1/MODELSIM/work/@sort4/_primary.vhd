library verilog;
use verilog.vl_types.all;
entity Sort4 is
    port(
        i_A             : in     vl_logic_vector(7 downto 0);
        i_B             : in     vl_logic_vector(7 downto 0);
        i_C             : in     vl_logic_vector(7 downto 0);
        i_D             : in     vl_logic_vector(7 downto 0);
        o_A             : out    vl_logic_vector(7 downto 0);
        o_B             : out    vl_logic_vector(7 downto 0);
        o_C             : out    vl_logic_vector(7 downto 0);
        o_D             : out    vl_logic_vector(7 downto 0)
    );
end Sort4;
