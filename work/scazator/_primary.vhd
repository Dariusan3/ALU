library verilog;
use verilog.vl_types.all;
entity scazator is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        diferenta       : out    vl_logic_vector(31 downto 0)
    );
end scazator;
