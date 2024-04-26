library verilog;
use verilog.vl_types.all;
entity inmultitor is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        produs          : out    vl_logic_vector(63 downto 0)
    );
end inmultitor;
