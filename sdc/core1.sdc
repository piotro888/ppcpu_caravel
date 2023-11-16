###############################################################################
# Created by write_sdc
# Wed Nov 15 13:20:51 2023
###############################################################################
current_design core1
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name i_clk -period 24.0000 [get_ports {i_clk}]
set_clock_transition 0.1500 [get_clocks {i_clk}]
set_clock_uncertainty 0.2500 i_clk
set_propagated_clock [get_clocks {i_clk}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_core_int_sreg[0]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_core_int_sreg[10]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_core_int_sreg[11]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_core_int_sreg[12]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_core_int_sreg[13]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_core_int_sreg[14]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_core_int_sreg[15]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_core_int_sreg[1]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_core_int_sreg[2]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_core_int_sreg[3]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_core_int_sreg[4]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_core_int_sreg[5]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_core_int_sreg[6]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_core_int_sreg[7]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_core_int_sreg[8]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_core_int_sreg[9]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_disable}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_irq}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_mc_core_int}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_mem_ack}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_mem_data[0]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_mem_data[10]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_mem_data[11]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_mem_data[12]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_mem_data[13]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_mem_data[14]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_mem_data[15]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_mem_data[1]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_mem_data[2]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_mem_data[3]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_mem_data[4]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_mem_data[5]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_mem_data[6]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_mem_data[7]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_mem_data[8]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_mem_data[9]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_mem_exception}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[0]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[10]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[11]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[12]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[13]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[14]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[15]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[16]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[17]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[18]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[19]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[1]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[20]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[21]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[22]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[23]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[24]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[25]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[26]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[27]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[28]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[29]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[2]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[30]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[31]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[3]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[4]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[5]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[6]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[7]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[8]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data[9]}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_req_data_valid}]
set_input_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {i_rst}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_pc[0]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_pc[10]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_pc[11]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_pc[12]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_pc[13]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_pc[14]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_pc[15]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_pc[1]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_pc[2]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_pc[3]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_pc[4]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_pc[5]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_pc[6]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_pc[7]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_pc[8]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_pc[9]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_r0[0]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_r0[10]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_r0[11]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_r0[12]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_r0[13]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_r0[14]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_r0[15]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_r0[1]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_r0[2]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_r0[3]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_r0[4]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_r0[5]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_r0[6]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_r0[7]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_r0[8]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {dbg_r0[9]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_c_data_page}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_c_instr_long}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_c_instr_page}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_icache_flush}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_instr_long_addr[0]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_instr_long_addr[1]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_instr_long_addr[2]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_instr_long_addr[3]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_instr_long_addr[4]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_instr_long_addr[5]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_instr_long_addr[6]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_instr_long_addr[7]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr[0]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr[10]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr[11]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr[12]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr[13]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr[14]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr[15]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr[1]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr[2]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr[3]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr[4]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr[5]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr[6]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr[7]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr[8]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr[9]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr_high[0]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr_high[1]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr_high[2]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr_high[3]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr_high[4]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr_high[5]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr_high[6]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_addr_high[7]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_data[0]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_data[10]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_data[11]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_data[12]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_data[13]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_data[14]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_data[15]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_data[1]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_data[2]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_data[3]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_data[4]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_data[5]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_data[6]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_data[7]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_data[8]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_data[9]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_long}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_req}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_sel[0]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_sel[1]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_mem_we}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_req_active}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_req_addr[0]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_req_addr[10]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_req_addr[11]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_req_addr[12]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_req_addr[13]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_req_addr[14]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_req_addr[15]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_req_addr[1]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_req_addr[2]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_req_addr[3]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_req_addr[4]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_req_addr[5]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_req_addr[6]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_req_addr[7]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_req_addr[8]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_req_addr[9]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {o_req_ppl_submit}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_addr[0]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_addr[10]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_addr[11]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_addr[12]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_addr[13]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_addr[14]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_addr[15]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_addr[1]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_addr[2]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_addr[3]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_addr[4]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_addr[5]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_addr[6]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_addr[7]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_addr[8]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_addr[9]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_data_o[0]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_data_o[10]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_data_o[11]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_data_o[12]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_data_o[13]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_data_o[14]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_data_o[15]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_data_o[1]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_data_o[2]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_data_o[3]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_data_o[4]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_data_o[5]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_data_o[6]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_data_o[7]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_data_o[8]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_data_o[9]}]
set_output_delay 4.8000 -clock [get_clocks {i_clk}] -add_delay [get_ports {sr_bus_we}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0729 [get_ports {o_c_data_page}]
set_load -pin_load 0.0729 [get_ports {o_c_instr_long}]
set_load -pin_load 0.0729 [get_ports {o_c_instr_page}]
set_load -pin_load 0.0729 [get_ports {o_icache_flush}]
set_load -pin_load 0.0729 [get_ports {o_mem_long}]
set_load -pin_load 0.0729 [get_ports {o_mem_req}]
set_load -pin_load 0.0729 [get_ports {o_mem_we}]
set_load -pin_load 0.0729 [get_ports {o_req_active}]
set_load -pin_load 0.0729 [get_ports {o_req_ppl_submit}]
set_load -pin_load 0.0729 [get_ports {sr_bus_we}]
set_load -pin_load 0.0729 [get_ports {dbg_pc[15]}]
set_load -pin_load 0.0729 [get_ports {dbg_pc[14]}]
set_load -pin_load 0.0729 [get_ports {dbg_pc[13]}]
set_load -pin_load 0.0729 [get_ports {dbg_pc[12]}]
set_load -pin_load 0.0729 [get_ports {dbg_pc[11]}]
set_load -pin_load 0.0729 [get_ports {dbg_pc[10]}]
set_load -pin_load 0.0729 [get_ports {dbg_pc[9]}]
set_load -pin_load 0.0729 [get_ports {dbg_pc[8]}]
set_load -pin_load 0.0729 [get_ports {dbg_pc[7]}]
set_load -pin_load 0.0729 [get_ports {dbg_pc[6]}]
set_load -pin_load 0.0729 [get_ports {dbg_pc[5]}]
set_load -pin_load 0.0729 [get_ports {dbg_pc[4]}]
set_load -pin_load 0.0729 [get_ports {dbg_pc[3]}]
set_load -pin_load 0.0729 [get_ports {dbg_pc[2]}]
set_load -pin_load 0.0729 [get_ports {dbg_pc[1]}]
set_load -pin_load 0.0729 [get_ports {dbg_pc[0]}]
set_load -pin_load 0.0729 [get_ports {dbg_r0[15]}]
set_load -pin_load 0.0729 [get_ports {dbg_r0[14]}]
set_load -pin_load 0.0729 [get_ports {dbg_r0[13]}]
set_load -pin_load 0.0729 [get_ports {dbg_r0[12]}]
set_load -pin_load 0.0729 [get_ports {dbg_r0[11]}]
set_load -pin_load 0.0729 [get_ports {dbg_r0[10]}]
set_load -pin_load 0.0729 [get_ports {dbg_r0[9]}]
set_load -pin_load 0.0729 [get_ports {dbg_r0[8]}]
set_load -pin_load 0.0729 [get_ports {dbg_r0[7]}]
set_load -pin_load 0.0729 [get_ports {dbg_r0[6]}]
set_load -pin_load 0.0729 [get_ports {dbg_r0[5]}]
set_load -pin_load 0.0729 [get_ports {dbg_r0[4]}]
set_load -pin_load 0.0729 [get_ports {dbg_r0[3]}]
set_load -pin_load 0.0729 [get_ports {dbg_r0[2]}]
set_load -pin_load 0.0729 [get_ports {dbg_r0[1]}]
set_load -pin_load 0.0729 [get_ports {dbg_r0[0]}]
set_load -pin_load 0.0729 [get_ports {o_instr_long_addr[7]}]
set_load -pin_load 0.0729 [get_ports {o_instr_long_addr[6]}]
set_load -pin_load 0.0729 [get_ports {o_instr_long_addr[5]}]
set_load -pin_load 0.0729 [get_ports {o_instr_long_addr[4]}]
set_load -pin_load 0.0729 [get_ports {o_instr_long_addr[3]}]
set_load -pin_load 0.0729 [get_ports {o_instr_long_addr[2]}]
set_load -pin_load 0.0729 [get_ports {o_instr_long_addr[1]}]
set_load -pin_load 0.0729 [get_ports {o_instr_long_addr[0]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr[15]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr[14]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr[13]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr[12]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr[11]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr[10]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr[9]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr[8]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr[7]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr[6]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr[5]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr[4]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr[3]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr[2]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr[1]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr[0]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr_high[7]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr_high[6]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr_high[5]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr_high[4]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr_high[3]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr_high[2]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr_high[1]}]
set_load -pin_load 0.0729 [get_ports {o_mem_addr_high[0]}]
set_load -pin_load 0.0729 [get_ports {o_mem_data[15]}]
set_load -pin_load 0.0729 [get_ports {o_mem_data[14]}]
set_load -pin_load 0.0729 [get_ports {o_mem_data[13]}]
set_load -pin_load 0.0729 [get_ports {o_mem_data[12]}]
set_load -pin_load 0.0729 [get_ports {o_mem_data[11]}]
set_load -pin_load 0.0729 [get_ports {o_mem_data[10]}]
set_load -pin_load 0.0729 [get_ports {o_mem_data[9]}]
set_load -pin_load 0.0729 [get_ports {o_mem_data[8]}]
set_load -pin_load 0.0729 [get_ports {o_mem_data[7]}]
set_load -pin_load 0.0729 [get_ports {o_mem_data[6]}]
set_load -pin_load 0.0729 [get_ports {o_mem_data[5]}]
set_load -pin_load 0.0729 [get_ports {o_mem_data[4]}]
set_load -pin_load 0.0729 [get_ports {o_mem_data[3]}]
set_load -pin_load 0.0729 [get_ports {o_mem_data[2]}]
set_load -pin_load 0.0729 [get_ports {o_mem_data[1]}]
set_load -pin_load 0.0729 [get_ports {o_mem_data[0]}]
set_load -pin_load 0.0729 [get_ports {o_mem_sel[1]}]
set_load -pin_load 0.0729 [get_ports {o_mem_sel[0]}]
set_load -pin_load 0.0729 [get_ports {o_req_addr[15]}]
set_load -pin_load 0.0729 [get_ports {o_req_addr[14]}]
set_load -pin_load 0.0729 [get_ports {o_req_addr[13]}]
set_load -pin_load 0.0729 [get_ports {o_req_addr[12]}]
set_load -pin_load 0.0729 [get_ports {o_req_addr[11]}]
set_load -pin_load 0.0729 [get_ports {o_req_addr[10]}]
set_load -pin_load 0.0729 [get_ports {o_req_addr[9]}]
set_load -pin_load 0.0729 [get_ports {o_req_addr[8]}]
set_load -pin_load 0.0729 [get_ports {o_req_addr[7]}]
set_load -pin_load 0.0729 [get_ports {o_req_addr[6]}]
set_load -pin_load 0.0729 [get_ports {o_req_addr[5]}]
set_load -pin_load 0.0729 [get_ports {o_req_addr[4]}]
set_load -pin_load 0.0729 [get_ports {o_req_addr[3]}]
set_load -pin_load 0.0729 [get_ports {o_req_addr[2]}]
set_load -pin_load 0.0729 [get_ports {o_req_addr[1]}]
set_load -pin_load 0.0729 [get_ports {o_req_addr[0]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_addr[15]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_addr[14]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_addr[13]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_addr[12]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_addr[11]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_addr[10]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_addr[9]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_addr[8]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_addr[7]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_addr[6]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_addr[5]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_addr[4]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_addr[3]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_addr[2]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_addr[1]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_addr[0]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_data_o[15]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_data_o[14]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_data_o[13]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_data_o[12]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_data_o[11]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_data_o[10]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_data_o[9]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_data_o[8]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_data_o[7]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_data_o[6]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_data_o[5]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_data_o[4]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_data_o[3]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_data_o[2]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_data_o[1]}]
set_load -pin_load 0.0729 [get_ports {sr_bus_data_o[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_4 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_clk}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_disable}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_irq}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_mc_core_int}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_mem_ack}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_mem_exception}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data_valid}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_rst}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_core_int_sreg[15]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_core_int_sreg[14]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_core_int_sreg[13]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_core_int_sreg[12]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_core_int_sreg[11]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_core_int_sreg[10]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_core_int_sreg[9]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_core_int_sreg[8]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_core_int_sreg[7]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_core_int_sreg[6]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_core_int_sreg[5]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_core_int_sreg[4]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_core_int_sreg[3]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_core_int_sreg[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_core_int_sreg[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_core_int_sreg[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_mem_data[15]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_mem_data[14]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_mem_data[13]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_mem_data[12]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_mem_data[11]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_mem_data[10]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_mem_data[9]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_mem_data[8]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_mem_data[7]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_mem_data[6]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_mem_data[5]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_mem_data[4]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_mem_data[3]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_mem_data[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_mem_data[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_mem_data[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[31]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[30]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[29]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[28]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[27]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[26]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[25]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[24]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[23]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[22]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[21]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[20]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[19]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[18]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[17]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[16]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[15]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[14]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[13]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[12]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[11]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[10]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[9]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[8]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[7]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[6]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[5]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[4]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[3]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {i_req_data[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 3.0000 [current_design]
set_max_fanout 10.0000 [current_design]
