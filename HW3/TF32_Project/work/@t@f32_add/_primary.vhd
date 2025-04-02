library verilog;
use verilog.vl_types.all;
entity TF32_add is
    port(
        result          : out    vl_logic_vector(18 downto 0);
        operand_A       : in     vl_logic_vector(18 downto 0);
        operand_B       : in     vl_logic_vector(18 downto 0)
    );
end TF32_add;
