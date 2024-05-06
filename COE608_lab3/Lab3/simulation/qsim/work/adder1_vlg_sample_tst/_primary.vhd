library verilog;
use verilog.vl_types.all;
entity adder1_vlg_sample_tst is
    port(
        Cin             : in     vl_logic;
        x               : in     vl_logic;
        y               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end adder1_vlg_sample_tst;
