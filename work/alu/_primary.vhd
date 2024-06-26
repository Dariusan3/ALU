library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        operatie        : in     vl_logic_vector(3 downto 0);
        rezultat        : out    vl_logic_vector(31 downto 0);
        rest_rezultat   : out    vl_logic_vector(31 downto 0);
        zero            : out    vl_logic
    );
end alu;
