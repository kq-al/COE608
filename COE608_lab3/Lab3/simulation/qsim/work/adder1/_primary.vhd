library verilog;
use verilog.vl_types.all;
entity adder1 is
    port(
        Cin             : in     vl_logic;
        x               : in     vl_logic;
        y               : in     vl_logic;
        s               : out    vl_logic;
        Cout            : out    vl_logic
    );
end adder1;
