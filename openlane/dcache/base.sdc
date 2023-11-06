###############################################################################
# Created by write_sdc
# Sun Nov  5 14:24:42 2023
###############################################################################
current_design dcache
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name i_clk -period 24.0000 [get_ports {i_clk}]
set_clock_transition 0.1500 [get_clocks {i_clk}]
set_clock_uncertainty 0.2500 i_clk
set_propagated_clock [get_clocks {i_clk}]

# X_O - X_I long distance
set_input_delay -min 10.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_ack}]
set_input_delay -min 10.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_err}]
set_input_delay -min 10.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_i_dat*}]
set_output_delay -max 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_4_burst}]
set_output_delay -max 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_adr*}]
set_output_delay -max 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_cyc}]
set_output_delay -max 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_o_dat*}]
set_output_delay -max 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_sel*}]
set_output_delay -max 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_stb}]
set_output_delay -max 2.0000 -clock [get_clocks {i_clk}] -add_delay [get_ports {wb_we}]


set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_rst}]

# core (local)
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[0]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[10]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[11]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[12]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[13]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[14]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[15]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[16]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[17]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[18]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[19]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[1]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[20]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[21]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[22]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[23]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[2]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[3]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[4]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[5]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[6]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[7]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[8]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_addr[9]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_cache_enable}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_i_data[0]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_i_data[10]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_i_data[11]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_i_data[12]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_i_data[13]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_i_data[14]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_i_data[15]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_i_data[1]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_i_data[2]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_i_data[3]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_i_data[4]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_i_data[5]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_i_data[6]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_i_data[7]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_i_data[8]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_i_data[9]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_req}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_sel[0]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_sel[1]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_we}]

set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_ack}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_exception}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_o_data[0]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_o_data[10]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_o_data[11]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_o_data[12]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_o_data[13]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_o_data[14]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_o_data[15]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_o_data[1]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_o_data[2]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_o_data[3]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_o_data[4]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_o_data[5]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_o_data[6]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_o_data[7]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_o_data[8]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {mem_o_data[9]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0729 [get_ports {mem_ack}]
set_load -pin_load 0.0729 [get_ports {mem_exception}]
set_load -pin_load 0.0729 [get_ports {wb_4_burst}]
set_load -pin_load 0.0729 [get_ports {wb_cyc}]
set_load -pin_load 0.0729 [get_ports {wb_stb}]
set_load -pin_load 0.0729 [get_ports {wb_we}]
set_load -pin_load 0.0729 [get_ports {mem_o_data[15]}]
set_load -pin_load 0.0729 [get_ports {mem_o_data[14]}]
set_load -pin_load 0.0729 [get_ports {mem_o_data[13]}]
set_load -pin_load 0.0729 [get_ports {mem_o_data[12]}]
set_load -pin_load 0.0729 [get_ports {mem_o_data[11]}]
set_load -pin_load 0.0729 [get_ports {mem_o_data[10]}]
set_load -pin_load 0.0729 [get_ports {mem_o_data[9]}]
set_load -pin_load 0.0729 [get_ports {mem_o_data[8]}]
set_load -pin_load 0.0729 [get_ports {mem_o_data[7]}]
set_load -pin_load 0.0729 [get_ports {mem_o_data[6]}]
set_load -pin_load 0.0729 [get_ports {mem_o_data[5]}]
set_load -pin_load 0.0729 [get_ports {mem_o_data[4]}]
set_load -pin_load 0.0729 [get_ports {mem_o_data[3]}]
set_load -pin_load 0.0729 [get_ports {mem_o_data[2]}]
set_load -pin_load 0.0729 [get_ports {mem_o_data[1]}]
set_load -pin_load 0.0729 [get_ports {mem_o_data[0]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[23]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[22]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[21]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[20]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[19]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[18]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[17]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[16]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[15]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[14]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[13]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[12]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[11]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[10]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[9]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[8]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[7]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[6]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[5]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[4]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[3]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[2]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[1]}]
set_load -pin_load 0.0729 [get_ports {wb_adr[0]}]
set_load -pin_load 0.0729 [get_ports {wb_o_dat[15]}]
set_load -pin_load 0.0729 [get_ports {wb_o_dat[14]}]
set_load -pin_load 0.0729 [get_ports {wb_o_dat[13]}]
set_load -pin_load 0.0729 [get_ports {wb_o_dat[12]}]
set_load -pin_load 0.0729 [get_ports {wb_o_dat[11]}]
set_load -pin_load 0.0729 [get_ports {wb_o_dat[10]}]
set_load -pin_load 0.0729 [get_ports {wb_o_dat[9]}]
set_load -pin_load 0.0729 [get_ports {wb_o_dat[8]}]
set_load -pin_load 0.0729 [get_ports {wb_o_dat[7]}]
set_load -pin_load 0.0729 [get_ports {wb_o_dat[6]}]
set_load -pin_load 0.0729 [get_ports {wb_o_dat[5]}]
set_load -pin_load 0.0729 [get_ports {wb_o_dat[4]}]
set_load -pin_load 0.0729 [get_ports {wb_o_dat[3]}]
set_load -pin_load 0.0729 [get_ports {wb_o_dat[2]}]
set_load -pin_load 0.0729 [get_ports {wb_o_dat[1]}]
set_load -pin_load 0.0729 [get_ports {wb_o_dat[0]}]
set_load -pin_load 0.0729 [get_ports {wb_sel[1]}]
set_load -pin_load 0.0729 [get_ports {wb_sel[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_4 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_clk}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_rst}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_cache_enable}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_req}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_we}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_ack}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_err}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[23]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[22]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[21]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[20]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[19]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[18]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[17]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[16]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[15]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[14]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[13]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[12]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[11]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[10]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[9]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[8]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[7]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[6]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[5]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[4]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[3]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_addr[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_i_data[15]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_i_data[14]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_i_data[13]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_i_data[12]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_i_data[11]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_i_data[10]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_i_data[9]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_i_data[8]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_i_data[7]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_i_data[6]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_i_data[5]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_i_data[4]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_i_data[3]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_i_data[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_i_data[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_i_data[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_sel[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mem_sel[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[15]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[14]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[13]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[12]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[11]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[10]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[9]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[8]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[7]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[6]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[5]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[4]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[3]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {wb_i_dat[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 3.0000 [current_design]
set_max_fanout 10.0000 [current_design]
