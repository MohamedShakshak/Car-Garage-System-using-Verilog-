library verilog;
use verilog.vl_types.all;
entity counter_to_decoder is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        count           : out    vl_logic_vector(5 downto 0);
        leds1           : out    vl_logic_vector(6 downto 0);
        leds2           : out    vl_logic_vector(6 downto 0)
    );
end counter_to_decoder;
