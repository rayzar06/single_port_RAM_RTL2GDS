set_clock_latency -source -early -min  1.25 [get_clocks {clk}]
set_clock_latency -source -early -max  1 [get_clocks {clk}]
set_clock_latency -source -late -min  0.75 [get_clocks {clk}]
set_clock_latency -source -late -max  1.25 [get_clocks {clk}]
