###############################################################################
# Created by write_sdc
# Tue Sep 13 12:30:36 2022
###############################################################################
current_design clk_div
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name i_clk -period 10.0000 [get_ports {i_clk}]
set_clock_transition 0.1500 [get_clocks {i_clk}]
set_clock_uncertainty 0.2500 i_clk
set_propagated_clock [get_clocks {i_clk}]
create_generated_clock -name res_clk -source [get_ports {i_clk}] -divide_by 2 [get_pins {_255_/Q}]
set_propagated_clock [get_clocks {res_clk}]
create_generated_clock -name o_clk_i -source [get_ports {i_clk}] -divide_by 1 [get_ports {o_clk}]
set_propagated_clock [get_clocks {o_clk_i}]
set_clock_groups -name group1 -logically_exclusive \
 -group [get_clocks {o_clk_i}]
set_input_delay 1.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {clock_sel}]
set_input_delay 1.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {div[0]}]
set_input_delay 1.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {div[1]}]
set_input_delay 1.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {div[2]}]
set_input_delay 1.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {div[3]}]
set_input_delay 1.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {div_we}]
set_input_delay 1.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_rst}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {o_clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clock_sel}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {div_we}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_rst}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {div[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {div[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {div[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {div[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 10.0000 [current_design]
