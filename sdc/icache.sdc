###############################################################################
# Created by write_sdc
# Tue Sep 13 11:59:36 2022
###############################################################################
current_design icache
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name i_clk -period 10.0000 [get_ports {i_clk}]
set_clock_transition 0.1500 [get_clocks {i_clk}]
set_clock_uncertainty 0.2500 i_clk
set_propagated_clock [get_clocks {i_clk}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_rst}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[0]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[10]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[11]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[12]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[13]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[14]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[15]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[1]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[2]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[3]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[4]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[5]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[6]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[7]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[8]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[9]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_cache_flush}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_ppl_submit}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_req}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_ack}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_err}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_i_dat[0]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_i_dat[10]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_i_dat[11]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_i_dat[12]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_i_dat[13]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_i_dat[14]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_i_dat[15]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_i_dat[1]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_i_dat[2]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_i_dat[3]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_i_dat[4]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_i_dat[5]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_i_dat[6]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_i_dat[7]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_i_dat[8]}]
set_input_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_i_dat[9]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_ack}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[0]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[10]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[11]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[12]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[13]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[14]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[15]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[16]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[17]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[18]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[19]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[1]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[20]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[21]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[22]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[23]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[24]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[25]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[26]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[27]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[28]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[29]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[2]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[30]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[31]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[3]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[4]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[5]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[6]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[7]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[8]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_data[9]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_adr[0]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_adr[10]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_adr[11]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_adr[12]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_adr[13]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_adr[14]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_adr[15]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_adr[1]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_adr[2]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_adr[3]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_adr[4]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_adr[5]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_adr[6]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_adr[7]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_adr[8]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_adr[9]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_cyc}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_sel[0]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_sel[1]}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_stb}]
set_output_delay 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_we}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {mem_ack}]
set_load -pin_load 0.0334 [get_ports {wb_cyc}]
set_load -pin_load 0.0334 [get_ports {wb_stb}]
set_load -pin_load 0.0334 [get_ports {wb_we}]
set_load -pin_load 0.0334 [get_ports {mem_data[31]}]
set_load -pin_load 0.0334 [get_ports {mem_data[30]}]
set_load -pin_load 0.0334 [get_ports {mem_data[29]}]
set_load -pin_load 0.0334 [get_ports {mem_data[28]}]
set_load -pin_load 0.0334 [get_ports {mem_data[27]}]
set_load -pin_load 0.0334 [get_ports {mem_data[26]}]
set_load -pin_load 0.0334 [get_ports {mem_data[25]}]
set_load -pin_load 0.0334 [get_ports {mem_data[24]}]
set_load -pin_load 0.0334 [get_ports {mem_data[23]}]
set_load -pin_load 0.0334 [get_ports {mem_data[22]}]
set_load -pin_load 0.0334 [get_ports {mem_data[21]}]
set_load -pin_load 0.0334 [get_ports {mem_data[20]}]
set_load -pin_load 0.0334 [get_ports {mem_data[19]}]
set_load -pin_load 0.0334 [get_ports {mem_data[18]}]
set_load -pin_load 0.0334 [get_ports {mem_data[17]}]
set_load -pin_load 0.0334 [get_ports {mem_data[16]}]
set_load -pin_load 0.0334 [get_ports {mem_data[15]}]
set_load -pin_load 0.0334 [get_ports {mem_data[14]}]
set_load -pin_load 0.0334 [get_ports {mem_data[13]}]
set_load -pin_load 0.0334 [get_ports {mem_data[12]}]
set_load -pin_load 0.0334 [get_ports {mem_data[11]}]
set_load -pin_load 0.0334 [get_ports {mem_data[10]}]
set_load -pin_load 0.0334 [get_ports {mem_data[9]}]
set_load -pin_load 0.0334 [get_ports {mem_data[8]}]
set_load -pin_load 0.0334 [get_ports {mem_data[7]}]
set_load -pin_load 0.0334 [get_ports {mem_data[6]}]
set_load -pin_load 0.0334 [get_ports {mem_data[5]}]
set_load -pin_load 0.0334 [get_ports {mem_data[4]}]
set_load -pin_load 0.0334 [get_ports {mem_data[3]}]
set_load -pin_load 0.0334 [get_ports {mem_data[2]}]
set_load -pin_load 0.0334 [get_ports {mem_data[1]}]
set_load -pin_load 0.0334 [get_ports {mem_data[0]}]
set_load -pin_load 0.0334 [get_ports {wb_adr[15]}]
set_load -pin_load 0.0334 [get_ports {wb_adr[14]}]
set_load -pin_load 0.0334 [get_ports {wb_adr[13]}]
set_load -pin_load 0.0334 [get_ports {wb_adr[12]}]
set_load -pin_load 0.0334 [get_ports {wb_adr[11]}]
set_load -pin_load 0.0334 [get_ports {wb_adr[10]}]
set_load -pin_load 0.0334 [get_ports {wb_adr[9]}]
set_load -pin_load 0.0334 [get_ports {wb_adr[8]}]
set_load -pin_load 0.0334 [get_ports {wb_adr[7]}]
set_load -pin_load 0.0334 [get_ports {wb_adr[6]}]
set_load -pin_load 0.0334 [get_ports {wb_adr[5]}]
set_load -pin_load 0.0334 [get_ports {wb_adr[4]}]
set_load -pin_load 0.0334 [get_ports {wb_adr[3]}]
set_load -pin_load 0.0334 [get_ports {wb_adr[2]}]
set_load -pin_load 0.0334 [get_ports {wb_adr[1]}]
set_load -pin_load 0.0334 [get_ports {wb_adr[0]}]
set_load -pin_load 0.0334 [get_ports {wb_sel[1]}]
set_load -pin_load 0.0334 [get_ports {wb_sel[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_rst}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_cache_flush}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_ppl_submit}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_req}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_ack}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_err}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 10.0000 [current_design]
