library verilog;
use verilog.vl_types.all;
entity testbench is
    generic(
        DATA_W          : integer := 8
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_W : constant is 1;
end testbench;
