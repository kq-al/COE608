library verilog;
use verilog.vl_types.all;
entity adder8_vlg_check_tst is
    port(
        Cout            : in     vl_logic;
        S               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end adder8_vlg_check_tst;
