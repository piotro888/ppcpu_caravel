###############################################################################
# Created by write_sdc
# Wed Nov 15 23:58:00 2023
###############################################################################
current_design interconnect_outer
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name user_clock2 -period 24.0000 [get_ports {user_clock2}]
set_clock_transition 0.1500 [get_clocks {user_clock2}]
set_clock_uncertainty 0.2500 user_clock2
set_propagated_clock [get_clocks {user_clock2}]
create_generated_clock -name m_io_out[37] -source [get_ports {user_clock2}] -divide_by 1 [get_ports {m_io_out[37]}]
set_propagated_clock [get_clocks {m_io_out[37]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_4_burst}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_8_burst}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[0]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[10]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[11]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[12]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[13]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[14]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[15]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[16]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[17]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[18]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[19]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[1]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[20]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[21]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[22]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[23]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[2]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[3]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[4]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[5]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[6]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[7]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[8]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_adr[9]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_cyc}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_o_dat[0]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_o_dat[10]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_o_dat[11]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_o_dat[12]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_o_dat[13]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_o_dat[14]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_o_dat[15]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_o_dat[1]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_o_dat[2]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_o_dat[3]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_o_dat[4]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_o_dat[5]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_o_dat[6]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_o_dat[7]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_o_dat[8]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_o_dat[9]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_sel[0]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_sel[1]}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_stb}]
set_input_delay 3.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_we}]
set_input_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_o_data[0]}]
set_input_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_o_data[10]}]
set_input_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_o_data[11]}]
set_input_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_o_data[12]}]
set_input_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_o_data[13]}]
set_input_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_o_data[14]}]
set_input_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_o_data[15]}]
set_input_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_o_data[1]}]
set_input_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_o_data[2]}]
set_input_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_o_data[3]}]
set_input_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_o_data[4]}]
set_input_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_o_data[5]}]
set_input_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_o_data[6]}]
set_input_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_o_data[7]}]
set_input_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_o_data[8]}]
set_input_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_o_data[9]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[0]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[10]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[11]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[12]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[13]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[14]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[15]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[16]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[17]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[18]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[19]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[1]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[20]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[21]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[22]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[23]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[24]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[25]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[26]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[27]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[28]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[29]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[2]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[30]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[31]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[32]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[33]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[34]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[35]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[36]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[37]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[3]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[4]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[5]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[6]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[7]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[8]}]
set_input_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_in[9]}]
set_output_delay 0.5000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {c0_clk}]
set_output_delay 0.5000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {c1_clk}]
set_output_delay 0.5000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {dcache_clk}]
set_output_delay 0.5000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {ic0_clk}]
set_output_delay 0.5000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {ic1_clk}]
set_output_delay 0.5000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_clock}]
set_output_delay 5.0000 -clock [get_clocks {user_clock2}] -rise -min -add_delay [get_ports {inner_disable}]
set_output_delay 5.0000 -clock [get_clocks {user_clock2}] -fall -min -add_delay [get_ports {inner_disable}]
set_output_delay 5.0000 -clock [get_clocks {user_clock2}] -rise -min -add_delay [get_ports {inner_embed_mode}]
set_output_delay 5.0000 -clock [get_clocks {user_clock2}] -fall -min -add_delay [get_ports {inner_embed_mode}]
set_output_delay -4.0000 -clock [get_clocks {user_clock2}] -rise -min -add_delay [get_ports {inner_ext_irq}]
set_output_delay -4.0000 -clock [get_clocks {user_clock2}] -fall -min -add_delay [get_ports {inner_ext_irq}]
set_output_delay -4.0000 -clock [get_clocks {user_clock2}] -rise -min -add_delay [get_ports {inner_reset}]
set_output_delay -4.0000 -clock [get_clocks {user_clock2}] -fall -min -add_delay [get_ports {inner_reset}]
set_output_delay 8.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_ack}]
set_output_delay 8.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_err}]
set_output_delay 8.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_i_dat[0]}]
set_output_delay 8.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_i_dat[10]}]
set_output_delay 8.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_i_dat[11]}]
set_output_delay 8.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_i_dat[12]}]
set_output_delay 8.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_i_dat[13]}]
set_output_delay 8.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_i_dat[14]}]
set_output_delay 8.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_i_dat[15]}]
set_output_delay 8.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_i_dat[1]}]
set_output_delay 8.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_i_dat[2]}]
set_output_delay 8.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_i_dat[3]}]
set_output_delay 8.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_i_dat[4]}]
set_output_delay 8.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_i_dat[5]}]
set_output_delay 8.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_i_dat[6]}]
set_output_delay 8.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_i_dat[7]}]
set_output_delay 8.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_i_dat[8]}]
set_output_delay 8.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {inner_wb_i_dat[9]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_addr[0]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_addr[1]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_addr[2]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_addr[3]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_addr[4]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_addr[5]}]
set_output_delay 0.5000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_clk}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_i_data[0]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_i_data[10]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_i_data[11]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_i_data[12]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_i_data[13]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_i_data[14]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_i_data[15]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_i_data[1]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_i_data[2]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_i_data[3]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_i_data[4]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_i_data[5]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_i_data[6]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_i_data[7]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_i_data[8]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_i_data[9]}]
set_output_delay 10.0000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {iram_we}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[0]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[10]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[11]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[12]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[13]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[14]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[15]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[16]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[17]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[18]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[19]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[1]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[20]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[21]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[22]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[23]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[24]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[25]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[26]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[27]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[28]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[29]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[2]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[30]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[31]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[32]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[33]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[34]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[35]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[36]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[37]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[3]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[4]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[5]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[6]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[7]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[8]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_oeb[9]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[0]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[10]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[11]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[12]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[13]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[14]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[15]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[16]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[17]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[18]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[19]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[1]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[20]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[21]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[22]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[23]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[24]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[25]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[26]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[27]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[28]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[29]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[2]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[30]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[31]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[32]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[33]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[34]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[35]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[36]}]
set_output_delay 0.5000 -rise -max -add_delay [get_ports {m_io_out[37]}]
set_output_delay 0.5000 -fall -max -add_delay [get_ports {m_io_out[37]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[3]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[4]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[5]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[6]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[7]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[8]}]
set_output_delay 4.8000 -clock [get_clocks {user_clock2}] -add_delay [get_ports {m_io_out[9]}]
set_false_path\
    -through [list [get_ports {irq[0]}]\
           [get_ports {irq[1]}]\
           [get_ports {irq[2]}]\
           [get_ports {la_data_in[0]}]\
           [get_ports {la_data_in[10]}]\
           [get_ports {la_data_in[11]}]\
           [get_ports {la_data_in[12]}]\
           [get_ports {la_data_in[13]}]\
           [get_ports {la_data_in[14]}]\
           [get_ports {la_data_in[15]}]\
           [get_ports {la_data_in[16]}]\
           [get_ports {la_data_in[17]}]\
           [get_ports {la_data_in[18]}]\
           [get_ports {la_data_in[19]}]\
           [get_ports {la_data_in[1]}]\
           [get_ports {la_data_in[20]}]\
           [get_ports {la_data_in[21]}]\
           [get_ports {la_data_in[22]}]\
           [get_ports {la_data_in[23]}]\
           [get_ports {la_data_in[24]}]\
           [get_ports {la_data_in[25]}]\
           [get_ports {la_data_in[26]}]\
           [get_ports {la_data_in[27]}]\
           [get_ports {la_data_in[28]}]\
           [get_ports {la_data_in[29]}]\
           [get_ports {la_data_in[2]}]\
           [get_ports {la_data_in[30]}]\
           [get_ports {la_data_in[31]}]\
           [get_ports {la_data_in[32]}]\
           [get_ports {la_data_in[33]}]\
           [get_ports {la_data_in[34]}]\
           [get_ports {la_data_in[35]}]\
           [get_ports {la_data_in[36]}]\
           [get_ports {la_data_in[37]}]\
           [get_ports {la_data_in[38]}]\
           [get_ports {la_data_in[39]}]\
           [get_ports {la_data_in[3]}]\
           [get_ports {la_data_in[40]}]\
           [get_ports {la_data_in[41]}]\
           [get_ports {la_data_in[42]}]\
           [get_ports {la_data_in[43]}]\
           [get_ports {la_data_in[44]}]\
           [get_ports {la_data_in[45]}]\
           [get_ports {la_data_in[46]}]\
           [get_ports {la_data_in[47]}]\
           [get_ports {la_data_in[48]}]\
           [get_ports {la_data_in[49]}]\
           [get_ports {la_data_in[4]}]\
           [get_ports {la_data_in[50]}]\
           [get_ports {la_data_in[51]}]\
           [get_ports {la_data_in[52]}]\
           [get_ports {la_data_in[53]}]\
           [get_ports {la_data_in[54]}]\
           [get_ports {la_data_in[55]}]\
           [get_ports {la_data_in[56]}]\
           [get_ports {la_data_in[57]}]\
           [get_ports {la_data_in[58]}]\
           [get_ports {la_data_in[59]}]\
           [get_ports {la_data_in[5]}]\
           [get_ports {la_data_in[60]}]\
           [get_ports {la_data_in[61]}]\
           [get_ports {la_data_in[62]}]\
           [get_ports {la_data_in[63]}]\
           [get_ports {la_data_in[6]}]\
           [get_ports {la_data_in[7]}]\
           [get_ports {la_data_in[8]}]\
           [get_ports {la_data_in[9]}]\
           [get_ports {la_data_out[0]}]\
           [get_ports {la_data_out[10]}]\
           [get_ports {la_data_out[11]}]\
           [get_ports {la_data_out[12]}]\
           [get_ports {la_data_out[13]}]\
           [get_ports {la_data_out[14]}]\
           [get_ports {la_data_out[15]}]\
           [get_ports {la_data_out[16]}]\
           [get_ports {la_data_out[17]}]\
           [get_ports {la_data_out[18]}]\
           [get_ports {la_data_out[19]}]\
           [get_ports {la_data_out[1]}]\
           [get_ports {la_data_out[20]}]\
           [get_ports {la_data_out[21]}]\
           [get_ports {la_data_out[22]}]\
           [get_ports {la_data_out[23]}]\
           [get_ports {la_data_out[24]}]\
           [get_ports {la_data_out[25]}]\
           [get_ports {la_data_out[26]}]\
           [get_ports {la_data_out[27]}]\
           [get_ports {la_data_out[28]}]\
           [get_ports {la_data_out[29]}]\
           [get_ports {la_data_out[2]}]\
           [get_ports {la_data_out[30]}]\
           [get_ports {la_data_out[31]}]\
           [get_ports {la_data_out[3]}]\
           [get_ports {la_data_out[4]}]\
           [get_ports {la_data_out[5]}]\
           [get_ports {la_data_out[6]}]\
           [get_ports {la_data_out[7]}]\
           [get_ports {la_data_out[8]}]\
           [get_ports {la_data_out[9]}]\
           [get_ports {la_oenb[0]}]\
           [get_ports {la_oenb[10]}]\
           [get_ports {la_oenb[11]}]\
           [get_ports {la_oenb[12]}]\
           [get_ports {la_oenb[13]}]\
           [get_ports {la_oenb[14]}]\
           [get_ports {la_oenb[15]}]\
           [get_ports {la_oenb[16]}]\
           [get_ports {la_oenb[17]}]\
           [get_ports {la_oenb[18]}]\
           [get_ports {la_oenb[19]}]\
           [get_ports {la_oenb[1]}]\
           [get_ports {la_oenb[20]}]\
           [get_ports {la_oenb[21]}]\
           [get_ports {la_oenb[22]}]\
           [get_ports {la_oenb[23]}]\
           [get_ports {la_oenb[24]}]\
           [get_ports {la_oenb[25]}]\
           [get_ports {la_oenb[26]}]\
           [get_ports {la_oenb[27]}]\
           [get_ports {la_oenb[28]}]\
           [get_ports {la_oenb[29]}]\
           [get_ports {la_oenb[2]}]\
           [get_ports {la_oenb[30]}]\
           [get_ports {la_oenb[31]}]\
           [get_ports {la_oenb[32]}]\
           [get_ports {la_oenb[33]}]\
           [get_ports {la_oenb[34]}]\
           [get_ports {la_oenb[35]}]\
           [get_ports {la_oenb[36]}]\
           [get_ports {la_oenb[37]}]\
           [get_ports {la_oenb[38]}]\
           [get_ports {la_oenb[39]}]\
           [get_ports {la_oenb[3]}]\
           [get_ports {la_oenb[40]}]\
           [get_ports {la_oenb[41]}]\
           [get_ports {la_oenb[42]}]\
           [get_ports {la_oenb[43]}]\
           [get_ports {la_oenb[44]}]\
           [get_ports {la_oenb[45]}]\
           [get_ports {la_oenb[46]}]\
           [get_ports {la_oenb[47]}]\
           [get_ports {la_oenb[48]}]\
           [get_ports {la_oenb[49]}]\
           [get_ports {la_oenb[4]}]\
           [get_ports {la_oenb[50]}]\
           [get_ports {la_oenb[51]}]\
           [get_ports {la_oenb[52]}]\
           [get_ports {la_oenb[53]}]\
           [get_ports {la_oenb[54]}]\
           [get_ports {la_oenb[55]}]\
           [get_ports {la_oenb[56]}]\
           [get_ports {la_oenb[57]}]\
           [get_ports {la_oenb[58]}]\
           [get_ports {la_oenb[59]}]\
           [get_ports {la_oenb[5]}]\
           [get_ports {la_oenb[60]}]\
           [get_ports {la_oenb[61]}]\
           [get_ports {la_oenb[62]}]\
           [get_ports {la_oenb[63]}]\
           [get_ports {la_oenb[6]}]\
           [get_ports {la_oenb[7]}]\
           [get_ports {la_oenb[8]}]\
           [get_ports {la_oenb[9]}]\
           [get_ports {mgt_wb_ack_o}]\
           [get_ports {mgt_wb_adr_i[0]}]\
           [get_ports {mgt_wb_adr_i[10]}]\
           [get_ports {mgt_wb_adr_i[11]}]\
           [get_ports {mgt_wb_adr_i[12]}]\
           [get_ports {mgt_wb_adr_i[13]}]\
           [get_ports {mgt_wb_adr_i[14]}]\
           [get_ports {mgt_wb_adr_i[15]}]\
           [get_ports {mgt_wb_adr_i[16]}]\
           [get_ports {mgt_wb_adr_i[17]}]\
           [get_ports {mgt_wb_adr_i[18]}]\
           [get_ports {mgt_wb_adr_i[19]}]\
           [get_ports {mgt_wb_adr_i[1]}]\
           [get_ports {mgt_wb_adr_i[20]}]\
           [get_ports {mgt_wb_adr_i[21]}]\
           [get_ports {mgt_wb_adr_i[22]}]\
           [get_ports {mgt_wb_adr_i[23]}]\
           [get_ports {mgt_wb_adr_i[24]}]\
           [get_ports {mgt_wb_adr_i[25]}]\
           [get_ports {mgt_wb_adr_i[26]}]\
           [get_ports {mgt_wb_adr_i[27]}]\
           [get_ports {mgt_wb_adr_i[28]}]\
           [get_ports {mgt_wb_adr_i[29]}]\
           [get_ports {mgt_wb_adr_i[2]}]\
           [get_ports {mgt_wb_adr_i[30]}]\
           [get_ports {mgt_wb_adr_i[31]}]\
           [get_ports {mgt_wb_adr_i[3]}]\
           [get_ports {mgt_wb_adr_i[4]}]\
           [get_ports {mgt_wb_adr_i[5]}]\
           [get_ports {mgt_wb_adr_i[6]}]\
           [get_ports {mgt_wb_adr_i[7]}]\
           [get_ports {mgt_wb_adr_i[8]}]\
           [get_ports {mgt_wb_adr_i[9]}]\
           [get_ports {mgt_wb_clk_i}]\
           [get_ports {mgt_wb_cyc_i}]\
           [get_ports {mgt_wb_dat_i[0]}]\
           [get_ports {mgt_wb_dat_i[10]}]\
           [get_ports {mgt_wb_dat_i[11]}]\
           [get_ports {mgt_wb_dat_i[12]}]\
           [get_ports {mgt_wb_dat_i[13]}]\
           [get_ports {mgt_wb_dat_i[14]}]\
           [get_ports {mgt_wb_dat_i[15]}]\
           [get_ports {mgt_wb_dat_i[16]}]\
           [get_ports {mgt_wb_dat_i[17]}]\
           [get_ports {mgt_wb_dat_i[18]}]\
           [get_ports {mgt_wb_dat_i[19]}]\
           [get_ports {mgt_wb_dat_i[1]}]\
           [get_ports {mgt_wb_dat_i[20]}]\
           [get_ports {mgt_wb_dat_i[21]}]\
           [get_ports {mgt_wb_dat_i[22]}]\
           [get_ports {mgt_wb_dat_i[23]}]\
           [get_ports {mgt_wb_dat_i[24]}]\
           [get_ports {mgt_wb_dat_i[25]}]\
           [get_ports {mgt_wb_dat_i[26]}]\
           [get_ports {mgt_wb_dat_i[27]}]\
           [get_ports {mgt_wb_dat_i[28]}]\
           [get_ports {mgt_wb_dat_i[29]}]\
           [get_ports {mgt_wb_dat_i[2]}]\
           [get_ports {mgt_wb_dat_i[30]}]\
           [get_ports {mgt_wb_dat_i[31]}]\
           [get_ports {mgt_wb_dat_i[3]}]\
           [get_ports {mgt_wb_dat_i[4]}]\
           [get_ports {mgt_wb_dat_i[5]}]\
           [get_ports {mgt_wb_dat_i[6]}]\
           [get_ports {mgt_wb_dat_i[7]}]\
           [get_ports {mgt_wb_dat_i[8]}]\
           [get_ports {mgt_wb_dat_i[9]}]\
           [get_ports {mgt_wb_dat_o[0]}]\
           [get_ports {mgt_wb_dat_o[10]}]\
           [get_ports {mgt_wb_dat_o[11]}]\
           [get_ports {mgt_wb_dat_o[12]}]\
           [get_ports {mgt_wb_dat_o[13]}]\
           [get_ports {mgt_wb_dat_o[14]}]\
           [get_ports {mgt_wb_dat_o[15]}]\
           [get_ports {mgt_wb_dat_o[16]}]\
           [get_ports {mgt_wb_dat_o[17]}]\
           [get_ports {mgt_wb_dat_o[18]}]\
           [get_ports {mgt_wb_dat_o[19]}]\
           [get_ports {mgt_wb_dat_o[1]}]\
           [get_ports {mgt_wb_dat_o[20]}]\
           [get_ports {mgt_wb_dat_o[21]}]\
           [get_ports {mgt_wb_dat_o[22]}]\
           [get_ports {mgt_wb_dat_o[23]}]\
           [get_ports {mgt_wb_dat_o[24]}]\
           [get_ports {mgt_wb_dat_o[25]}]\
           [get_ports {mgt_wb_dat_o[26]}]\
           [get_ports {mgt_wb_dat_o[27]}]\
           [get_ports {mgt_wb_dat_o[28]}]\
           [get_ports {mgt_wb_dat_o[29]}]\
           [get_ports {mgt_wb_dat_o[2]}]\
           [get_ports {mgt_wb_dat_o[30]}]\
           [get_ports {mgt_wb_dat_o[31]}]\
           [get_ports {mgt_wb_dat_o[3]}]\
           [get_ports {mgt_wb_dat_o[4]}]\
           [get_ports {mgt_wb_dat_o[5]}]\
           [get_ports {mgt_wb_dat_o[6]}]\
           [get_ports {mgt_wb_dat_o[7]}]\
           [get_ports {mgt_wb_dat_o[8]}]\
           [get_ports {mgt_wb_dat_o[9]}]\
           [get_ports {mgt_wb_rst_i}]\
           [get_ports {mgt_wb_sel_i[0]}]\
           [get_ports {mgt_wb_sel_i[1]}]\
           [get_ports {mgt_wb_sel_i[2]}]\
           [get_ports {mgt_wb_sel_i[3]}]\
           [get_ports {mgt_wb_stb_i}]\
           [get_ports {mgt_wb_we_i}]]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0729 [get_ports {c0_clk}]
set_load -pin_load 0.0729 [get_ports {c1_clk}]
set_load -pin_load 0.0729 [get_ports {dcache_clk}]
set_load -pin_load 0.0729 [get_ports {ic0_clk}]
set_load -pin_load 0.0729 [get_ports {ic1_clk}]
set_load -pin_load 0.0729 [get_ports {inner_clock}]
set_load -pin_load 0.0729 [get_ports {inner_disable}]
set_load -pin_load 0.0729 [get_ports {inner_embed_mode}]
set_load -pin_load 0.0729 [get_ports {inner_ext_irq}]
set_load -pin_load 0.0729 [get_ports {inner_reset}]
set_load -pin_load 0.0729 [get_ports {inner_wb_ack}]
set_load -pin_load 0.0729 [get_ports {inner_wb_err}]
set_load -pin_load 0.0729 [get_ports {iram_clk}]
set_load -pin_load 0.0729 [get_ports {iram_we}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_ack_o}]
set_load -pin_load 0.0729 [get_ports {inner_wb_i_dat[15]}]
set_load -pin_load 0.0729 [get_ports {inner_wb_i_dat[14]}]
set_load -pin_load 0.0729 [get_ports {inner_wb_i_dat[13]}]
set_load -pin_load 0.0729 [get_ports {inner_wb_i_dat[12]}]
set_load -pin_load 0.0729 [get_ports {inner_wb_i_dat[11]}]
set_load -pin_load 0.0729 [get_ports {inner_wb_i_dat[10]}]
set_load -pin_load 0.0729 [get_ports {inner_wb_i_dat[9]}]
set_load -pin_load 0.0729 [get_ports {inner_wb_i_dat[8]}]
set_load -pin_load 0.0729 [get_ports {inner_wb_i_dat[7]}]
set_load -pin_load 0.0729 [get_ports {inner_wb_i_dat[6]}]
set_load -pin_load 0.0729 [get_ports {inner_wb_i_dat[5]}]
set_load -pin_load 0.0729 [get_ports {inner_wb_i_dat[4]}]
set_load -pin_load 0.0729 [get_ports {inner_wb_i_dat[3]}]
set_load -pin_load 0.0729 [get_ports {inner_wb_i_dat[2]}]
set_load -pin_load 0.0729 [get_ports {inner_wb_i_dat[1]}]
set_load -pin_load 0.0729 [get_ports {inner_wb_i_dat[0]}]
set_load -pin_load 0.0729 [get_ports {iram_addr[5]}]
set_load -pin_load 0.0729 [get_ports {iram_addr[4]}]
set_load -pin_load 0.0729 [get_ports {iram_addr[3]}]
set_load -pin_load 0.0729 [get_ports {iram_addr[2]}]
set_load -pin_load 0.0729 [get_ports {iram_addr[1]}]
set_load -pin_load 0.0729 [get_ports {iram_addr[0]}]
set_load -pin_load 0.0729 [get_ports {iram_i_data[15]}]
set_load -pin_load 0.0729 [get_ports {iram_i_data[14]}]
set_load -pin_load 0.0729 [get_ports {iram_i_data[13]}]
set_load -pin_load 0.0729 [get_ports {iram_i_data[12]}]
set_load -pin_load 0.0729 [get_ports {iram_i_data[11]}]
set_load -pin_load 0.0729 [get_ports {iram_i_data[10]}]
set_load -pin_load 0.0729 [get_ports {iram_i_data[9]}]
set_load -pin_load 0.0729 [get_ports {iram_i_data[8]}]
set_load -pin_load 0.0729 [get_ports {iram_i_data[7]}]
set_load -pin_load 0.0729 [get_ports {iram_i_data[6]}]
set_load -pin_load 0.0729 [get_ports {iram_i_data[5]}]
set_load -pin_load 0.0729 [get_ports {iram_i_data[4]}]
set_load -pin_load 0.0729 [get_ports {iram_i_data[3]}]
set_load -pin_load 0.0729 [get_ports {iram_i_data[2]}]
set_load -pin_load 0.0729 [get_ports {iram_i_data[1]}]
set_load -pin_load 0.0729 [get_ports {iram_i_data[0]}]
set_load -pin_load 0.0729 [get_ports {iram_o_data[15]}]
set_load -pin_load 0.0729 [get_ports {iram_o_data[14]}]
set_load -pin_load 0.0729 [get_ports {iram_o_data[13]}]
set_load -pin_load 0.0729 [get_ports {iram_o_data[12]}]
set_load -pin_load 0.0729 [get_ports {iram_o_data[11]}]
set_load -pin_load 0.0729 [get_ports {iram_o_data[10]}]
set_load -pin_load 0.0729 [get_ports {iram_o_data[9]}]
set_load -pin_load 0.0729 [get_ports {iram_o_data[8]}]
set_load -pin_load 0.0729 [get_ports {iram_o_data[7]}]
set_load -pin_load 0.0729 [get_ports {iram_o_data[6]}]
set_load -pin_load 0.0729 [get_ports {iram_o_data[5]}]
set_load -pin_load 0.0729 [get_ports {iram_o_data[4]}]
set_load -pin_load 0.0729 [get_ports {iram_o_data[3]}]
set_load -pin_load 0.0729 [get_ports {iram_o_data[2]}]
set_load -pin_load 0.0729 [get_ports {iram_o_data[1]}]
set_load -pin_load 0.0729 [get_ports {iram_o_data[0]}]
set_load -pin_load 0.0729 [get_ports {irq[2]}]
set_load -pin_load 0.0729 [get_ports {irq[1]}]
set_load -pin_load 0.0729 [get_ports {irq[0]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[31]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[30]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[29]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[28]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[27]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[26]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[25]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[24]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[23]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[22]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[21]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[20]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[19]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[18]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[17]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[16]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[15]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[14]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[13]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[12]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[11]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[10]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[9]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[8]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[7]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[6]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[5]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[4]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[3]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[2]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[1]}]
set_load -pin_load 0.0729 [get_ports {la_data_out[0]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[37]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[36]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[35]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[34]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[33]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[32]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[31]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[30]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[29]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[28]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[27]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[26]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[25]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[24]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[23]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[22]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[21]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[20]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[19]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[18]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[17]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[16]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[15]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[14]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[13]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[12]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[11]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[10]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[9]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[8]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[7]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[6]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[5]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[4]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[3]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[2]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[1]}]
set_load -pin_load 0.0729 [get_ports {m_io_oeb[0]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[37]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[36]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[35]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[34]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[33]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[32]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[31]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[30]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[29]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[28]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[27]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[26]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[25]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[24]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[23]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[22]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[21]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[20]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[19]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[18]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[17]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[16]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[15]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[14]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[13]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[12]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[11]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[10]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[9]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[8]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[7]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[6]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[5]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[4]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[3]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[2]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[1]}]
set_load -pin_load 0.0729 [get_ports {m_io_out[0]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[31]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[30]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[29]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[28]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[27]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[26]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[25]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[24]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[23]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[22]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[21]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[20]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[19]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[18]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[17]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[16]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[15]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[14]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[13]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[12]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[11]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[10]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[9]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[8]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[7]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[6]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[5]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[4]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[3]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[2]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[1]}]
set_load -pin_load 0.0729 [get_ports {mgt_wb_dat_o[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_4_burst}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_8_burst}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_cyc}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_stb}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_we}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_clk_i}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_cyc_i}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_rst_i}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_stb_i}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_we_i}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_4 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {user_clock2}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[23]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[22]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[21]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[20]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[19]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[18]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[17]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[16]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[15]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[14]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[13]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[12]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[11]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[10]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[9]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[8]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[7]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[6]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[5]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[4]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[3]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_adr[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_o_dat[15]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_o_dat[14]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_o_dat[13]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_o_dat[12]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_o_dat[11]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_o_dat[10]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_o_dat[9]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_o_dat[8]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_o_dat[7]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_o_dat[6]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_o_dat[5]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_o_dat[4]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_o_dat[3]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_o_dat[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_o_dat[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_o_dat[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_sel[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {inner_wb_sel[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[63]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[62]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[61]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[60]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[59]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[58]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[57]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[56]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[55]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[54]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[53]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[52]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[51]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[50]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[49]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[48]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[47]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[46]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[45]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[44]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[43]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[42]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[41]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[40]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[39]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[38]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[37]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[36]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[35]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[34]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[33]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[32]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[31]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[30]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[29]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[28]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[27]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[26]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[25]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[24]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[23]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[22]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[21]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[20]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[19]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[18]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[17]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[16]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[15]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[14]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[13]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[12]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[11]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[10]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[9]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[8]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[7]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[6]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[5]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[4]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[3]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_data_in[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[63]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[62]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[61]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[60]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[59]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[58]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[57]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[56]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[55]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[54]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[53]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[52]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[51]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[50]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[49]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[48]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[47]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[46]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[45]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[44]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[43]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[42]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[41]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[40]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[39]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[38]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[37]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[36]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[35]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[34]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[33]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[32]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[31]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[30]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[29]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[28]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[27]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[26]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[25]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[24]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[23]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[22]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[21]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[20]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[19]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[18]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[17]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[16]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[15]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[14]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[13]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[12]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[11]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[10]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[9]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[8]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[7]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[6]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[5]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[4]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[3]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {la_oenb[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[37]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[36]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[35]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[34]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[33]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[32]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[31]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[30]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[29]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[28]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[27]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[26]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[25]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[24]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[23]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[22]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[21]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[20]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[19]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[18]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[17]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[16]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[15]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[14]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[13]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[12]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[11]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[10]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[9]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[8]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[7]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[6]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[5]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[4]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[3]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {m_io_in[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[31]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[30]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[29]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[28]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[27]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[26]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[25]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[24]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[23]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[22]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[21]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[20]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[19]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[18]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[17]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[16]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[15]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[14]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[13]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[12]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[11]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[10]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[9]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[8]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[7]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[6]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[5]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[4]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[3]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_adr_i[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[31]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[30]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[29]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[28]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[27]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[26]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[25]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[24]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[23]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[22]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[21]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[20]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[19]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[18]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[17]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[16]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[15]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[14]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[13]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[12]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[11]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[10]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[9]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[8]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[7]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[6]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[5]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[4]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[3]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_dat_i[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_sel_i[3]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_sel_i[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_sel_i[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgt_wb_sel_i[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 3.0000 [current_design]
set_max_fanout 10.0000 [current_design]
