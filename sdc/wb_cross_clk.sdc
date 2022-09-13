###############################################################################
# Created by write_sdc
# Tue Sep 13 12:05:43 2022
###############################################################################
current_design wb_cross_clk
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk_m -period 10.0000 [get_ports {clk_m}]
set_clock_transition 0.1500 [get_clocks {clk_m}]
set_clock_uncertainty 0.2500 clk_m
set_propagated_clock [get_clocks {clk_m}]
create_clock -name clk_s -period 10.0000 [get_ports {clk_s}]
set_clock_transition 0.1500 [get_clocks {clk_s}]
set_clock_uncertainty 0.2500 clk_s
set_propagated_clock [get_clocks {clk_s}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_rst}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_4_burst}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_8_burst}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[10]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[11]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[12]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[13]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[14]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[15]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[16]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[17]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[18]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[19]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[20]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[21]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[22]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[23]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[2]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[3]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[4]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[5]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[6]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[7]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[8]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_adr[9]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_cyc}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_o_dat[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_o_dat[10]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_o_dat[11]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_o_dat[12]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_o_dat[13]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_o_dat[14]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_o_dat[15]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_o_dat[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_o_dat[2]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_o_dat[3]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_o_dat[4]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_o_dat[5]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_o_dat[6]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_o_dat[7]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_o_dat[8]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_o_dat[9]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_sel[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_sel[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_stb}]
set_input_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_we}]
set_input_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_rst}]
set_input_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_ack}]
set_input_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_err}]
set_input_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_i_dat[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_i_dat[10]}]
set_input_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_i_dat[11]}]
set_input_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_i_dat[12]}]
set_input_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_i_dat[13]}]
set_input_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_i_dat[14]}]
set_input_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_i_dat[15]}]
set_input_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_i_dat[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_i_dat[2]}]
set_input_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_i_dat[3]}]
set_input_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_i_dat[4]}]
set_input_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_i_dat[5]}]
set_input_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_i_dat[6]}]
set_input_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_i_dat[7]}]
set_input_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_i_dat[8]}]
set_input_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_i_dat[9]}]
set_output_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_ack}]
set_output_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_err}]
set_output_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_i_dat[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_i_dat[10]}]
set_output_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_i_dat[11]}]
set_output_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_i_dat[12]}]
set_output_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_i_dat[13]}]
set_output_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_i_dat[14]}]
set_output_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_i_dat[15]}]
set_output_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_i_dat[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_i_dat[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_i_dat[3]}]
set_output_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_i_dat[4]}]
set_output_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_i_dat[5]}]
set_output_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_i_dat[6]}]
set_output_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_i_dat[7]}]
set_output_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_i_dat[8]}]
set_output_delay 2.0000 -clock [get_clocks {clk_m}] -add_delay [get_ports {m_wb_i_dat[9]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_4_burst}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_8_burst}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[10]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[11]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[12]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[13]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[14]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[15]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[16]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[17]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[18]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[19]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[20]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[21]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[22]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[23]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[3]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[4]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[5]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[6]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[7]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[8]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_adr[9]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_cyc}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_o_dat[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_o_dat[10]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_o_dat[11]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_o_dat[12]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_o_dat[13]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_o_dat[14]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_o_dat[15]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_o_dat[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_o_dat[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_o_dat[3]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_o_dat[4]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_o_dat[5]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_o_dat[6]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_o_dat[7]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_o_dat[8]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_o_dat[9]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_sel[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_sel[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_stb}]
set_output_delay 2.0000 -clock [get_clocks {clk_s}] -add_delay [get_ports {s_wb_we}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {m_wb_ack}]
set_load -pin_load 0.0334 [get_ports {m_wb_err}]
set_load -pin_load 0.0334 [get_ports {s_wb_4_burst}]
set_load -pin_load 0.0334 [get_ports {s_wb_8_burst}]
set_load -pin_load 0.0334 [get_ports {s_wb_cyc}]
set_load -pin_load 0.0334 [get_ports {s_wb_stb}]
set_load -pin_load 0.0334 [get_ports {s_wb_we}]
set_load -pin_load 0.0334 [get_ports {m_wb_i_dat[15]}]
set_load -pin_load 0.0334 [get_ports {m_wb_i_dat[14]}]
set_load -pin_load 0.0334 [get_ports {m_wb_i_dat[13]}]
set_load -pin_load 0.0334 [get_ports {m_wb_i_dat[12]}]
set_load -pin_load 0.0334 [get_ports {m_wb_i_dat[11]}]
set_load -pin_load 0.0334 [get_ports {m_wb_i_dat[10]}]
set_load -pin_load 0.0334 [get_ports {m_wb_i_dat[9]}]
set_load -pin_load 0.0334 [get_ports {m_wb_i_dat[8]}]
set_load -pin_load 0.0334 [get_ports {m_wb_i_dat[7]}]
set_load -pin_load 0.0334 [get_ports {m_wb_i_dat[6]}]
set_load -pin_load 0.0334 [get_ports {m_wb_i_dat[5]}]
set_load -pin_load 0.0334 [get_ports {m_wb_i_dat[4]}]
set_load -pin_load 0.0334 [get_ports {m_wb_i_dat[3]}]
set_load -pin_load 0.0334 [get_ports {m_wb_i_dat[2]}]
set_load -pin_load 0.0334 [get_ports {m_wb_i_dat[1]}]
set_load -pin_load 0.0334 [get_ports {m_wb_i_dat[0]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[23]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[22]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[21]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[20]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[19]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[18]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[17]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[16]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[15]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[14]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[13]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[12]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[11]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[10]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[9]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[8]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[7]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[6]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[5]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[4]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[3]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[2]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[1]}]
set_load -pin_load 0.0334 [get_ports {s_wb_adr[0]}]
set_load -pin_load 0.0334 [get_ports {s_wb_o_dat[15]}]
set_load -pin_load 0.0334 [get_ports {s_wb_o_dat[14]}]
set_load -pin_load 0.0334 [get_ports {s_wb_o_dat[13]}]
set_load -pin_load 0.0334 [get_ports {s_wb_o_dat[12]}]
set_load -pin_load 0.0334 [get_ports {s_wb_o_dat[11]}]
set_load -pin_load 0.0334 [get_ports {s_wb_o_dat[10]}]
set_load -pin_load 0.0334 [get_ports {s_wb_o_dat[9]}]
set_load -pin_load 0.0334 [get_ports {s_wb_o_dat[8]}]
set_load -pin_load 0.0334 [get_ports {s_wb_o_dat[7]}]
set_load -pin_load 0.0334 [get_ports {s_wb_o_dat[6]}]
set_load -pin_load 0.0334 [get_ports {s_wb_o_dat[5]}]
set_load -pin_load 0.0334 [get_ports {s_wb_o_dat[4]}]
set_load -pin_load 0.0334 [get_ports {s_wb_o_dat[3]}]
set_load -pin_load 0.0334 [get_ports {s_wb_o_dat[2]}]
set_load -pin_load 0.0334 [get_ports {s_wb_o_dat[1]}]
set_load -pin_load 0.0334 [get_ports {s_wb_o_dat[0]}]
set_load -pin_load 0.0334 [get_ports {s_wb_sel[1]}]
set_load -pin_load 0.0334 [get_ports {s_wb_sel[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk_m}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk_s}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_rst}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_4_burst}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_8_burst}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_cyc}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_stb}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_we}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_rst}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_wb_ack}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_wb_err}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[23]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[22]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[21]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[20]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[19]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[18]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[17]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[16]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_adr[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_o_dat[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_o_dat[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_o_dat[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_o_dat[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_o_dat[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_o_dat[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_o_dat[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_o_dat[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_o_dat[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_o_dat[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_o_dat[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_o_dat[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_o_dat[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_o_dat[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_o_dat[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_o_dat[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_sel[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_wb_sel[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_wb_i_dat[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_wb_i_dat[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_wb_i_dat[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_wb_i_dat[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_wb_i_dat[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_wb_i_dat[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_wb_i_dat[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_wb_i_dat[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_wb_i_dat[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_wb_i_dat[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_wb_i_dat[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_wb_i_dat[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_wb_i_dat[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_wb_i_dat[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_wb_i_dat[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_wb_i_dat[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 10.0000 [current_design]
