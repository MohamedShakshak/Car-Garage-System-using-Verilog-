library verilog;
use verilog.vl_types.all;
entity up_counter is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        increment       : in     vl_logic;
        decrement       : in     vl_logic;
        count           : out    vl_logic_vector(5 downto 0)
    );
end up_counter;
