library verilog;
use verilog.vl_types.all;
entity adder8 is
    port(
        Cin             : in     vl_logic;
        X               : in     vl_logic_vector(7 downto 0);
        Y               : in     vl_logic_vector(7 downto 0);
        S               : out    vl_logic_vector(7 downto 0);
        Cout            : out    vl_logic
    );
end adder8;
