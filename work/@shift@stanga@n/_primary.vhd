library verilog;
use verilog.vl_types.all;
entity ShiftStangaN is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        N               : in     vl_logic_vector(31 downto 0);
        rezultat        : out    vl_logic_vector(31 downto 0)
    );
end ShiftStangaN;
