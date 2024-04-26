library verilog;
use verilog.vl_types.all;
entity impartitor is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        cat             : out    vl_logic_vector(31 downto 0);
        rest            : out    vl_logic_vector(31 downto 0)
    );
end impartitor;
