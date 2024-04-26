library verilog;
use verilog.vl_types.all;
entity car_garage is
    generic(
        Max_cars        : integer := 50;
        IDLE            : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        \OPEN\          : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        CLOSE           : vl_logic_vector(0 to 1) := (Hi1, Hi0)
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        car_enter       : in     vl_logic;
        car_out         : in     vl_logic;
        car_count       : out    vl_logic_vector(5 downto 0);
        garage_full     : out    vl_logic;
        leds1           : out    vl_logic_vector(6 downto 0);
        leds2           : out    vl_logic_vector(6 downto 0);
        current_state   : out    vl_logic_vector(1 downto 0);
        next_state      : out    vl_logic_vector(1 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Max_cars : constant is 1;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of \OPEN\ : constant is 1;
    attribute mti_svvh_generic_type of CLOSE : constant is 1;
end car_garage;
