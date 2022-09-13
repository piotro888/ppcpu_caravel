## INPUT CLOCK
create_clock [get_ports {"i_clk"} ] -name "i_clk" -period 10

## GENERATED CLOCK
# get_pins _255_/Q - res_clk source
create_generated_clock -name res_clk -source [get_ports {"i_clk"}]  -divide_by 2 [get_pins _255_/Q] 

# clock mux
create_generated_clock -name o_clk -source [get_pins _255_/Q] -divide_by 1 [get_ports o_clk]
create_generated_clock -name o_clk_i -source [get_ports i_clk] -divide_by 1 [get_ports o_clk] 

set_clock_groups -logically_exclusive -group o_clk -group o_clk_i

set i_clk_input_delay_value 1
set i_clk_output_delay_value [expr 10 * $::env(IO_PCT)]

set_input_delay $i_clk_input_delay_value  -clock [get_clocks {i_clk}] -add_delay [get_ports {div[3]}]
set_input_delay $i_clk_input_delay_value  -clock [get_clocks {i_clk}] -add_delay [get_ports {div[2]}]
set_input_delay $i_clk_input_delay_value  -clock [get_clocks {i_clk}] -add_delay [get_ports {div[1]}]
set_input_delay $i_clk_input_delay_value  -clock [get_clocks {i_clk}] -add_delay [get_ports {div[0]}]
set_input_delay $i_clk_input_delay_value  -clock [get_clocks {i_clk}] -add_delay [get_ports {div_we}]
set_input_delay $i_clk_input_delay_value  -clock [get_clocks {i_clk}] -add_delay [get_ports {clock_sel}]
set_input_delay $i_clk_input_delay_value  -clock [get_clocks {i_clk}] -add_delay [get_ports {i_rst}]


set_max_fanout $::env(SYNTH_MAX_FANOUT) [current_design]

set_driving_cell -lib_cell $::env(SYNTH_DRIVING_CELL) -pin $::env(SYNTH_DRIVING_CELL_PIN) [all_inputs]
set cap_load [expr $::env(SYNTH_CAP_LOAD) / 1000.0]
puts "\[INFO\]: Setting load to: $cap_load"
set_load  $cap_load [all_outputs]

set_timing_derate -early [expr {1-$::env(SYNTH_TIMING_DERATE)}]
set_timing_derate -late [expr {1+$::env(SYNTH_TIMING_DERATE)}]
set_clock_uncertainty $::env(SYNTH_CLOCK_UNCERTAINITY) [get_clocks {i_clk}]
set_clock_transition $::env(SYNTH_CLOCK_TRANSITION) [get_clocks {i_clk}]
