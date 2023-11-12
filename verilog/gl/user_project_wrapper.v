module user_project_wrapper (user_clock2,
    vdd,
    vss,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input vdd;
 input vss;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [63:0] la_data_in;
 output [63:0] la_data_out;
 input [63:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire \mprj/c0_clk ;
 wire \mprj/c0_dbg_pc[0] ;
 wire \mprj/c0_dbg_pc[10] ;
 wire \mprj/c0_dbg_pc[11] ;
 wire \mprj/c0_dbg_pc[12] ;
 wire \mprj/c0_dbg_pc[13] ;
 wire \mprj/c0_dbg_pc[14] ;
 wire \mprj/c0_dbg_pc[15] ;
 wire \mprj/c0_dbg_pc[1] ;
 wire \mprj/c0_dbg_pc[2] ;
 wire \mprj/c0_dbg_pc[3] ;
 wire \mprj/c0_dbg_pc[4] ;
 wire \mprj/c0_dbg_pc[5] ;
 wire \mprj/c0_dbg_pc[6] ;
 wire \mprj/c0_dbg_pc[7] ;
 wire \mprj/c0_dbg_pc[8] ;
 wire \mprj/c0_dbg_pc[9] ;
 wire \mprj/c0_dbg_r0[0] ;
 wire \mprj/c0_dbg_r0[10] ;
 wire \mprj/c0_dbg_r0[11] ;
 wire \mprj/c0_dbg_r0[12] ;
 wire \mprj/c0_dbg_r0[13] ;
 wire \mprj/c0_dbg_r0[14] ;
 wire \mprj/c0_dbg_r0[15] ;
 wire \mprj/c0_dbg_r0[1] ;
 wire \mprj/c0_dbg_r0[2] ;
 wire \mprj/c0_dbg_r0[3] ;
 wire \mprj/c0_dbg_r0[4] ;
 wire \mprj/c0_dbg_r0[5] ;
 wire \mprj/c0_dbg_r0[6] ;
 wire \mprj/c0_dbg_r0[7] ;
 wire \mprj/c0_dbg_r0[8] ;
 wire \mprj/c0_dbg_r0[9] ;
 wire \mprj/c0_disable ;
 wire \mprj/c0_i_core_int_sreg[0] ;
 wire \mprj/c0_i_core_int_sreg[10] ;
 wire \mprj/c0_i_core_int_sreg[11] ;
 wire \mprj/c0_i_core_int_sreg[12] ;
 wire \mprj/c0_i_core_int_sreg[13] ;
 wire \mprj/c0_i_core_int_sreg[14] ;
 wire \mprj/c0_i_core_int_sreg[15] ;
 wire \mprj/c0_i_core_int_sreg[1] ;
 wire \mprj/c0_i_core_int_sreg[2] ;
 wire \mprj/c0_i_core_int_sreg[3] ;
 wire \mprj/c0_i_core_int_sreg[4] ;
 wire \mprj/c0_i_core_int_sreg[5] ;
 wire \mprj/c0_i_core_int_sreg[6] ;
 wire \mprj/c0_i_core_int_sreg[7] ;
 wire \mprj/c0_i_core_int_sreg[8] ;
 wire \mprj/c0_i_core_int_sreg[9] ;
 wire \mprj/c0_i_irq ;
 wire \mprj/c0_i_mc_core_int ;
 wire \mprj/c0_i_mem_ack ;
 wire \mprj/c0_i_mem_data[0] ;
 wire \mprj/c0_i_mem_data[10] ;
 wire \mprj/c0_i_mem_data[11] ;
 wire \mprj/c0_i_mem_data[12] ;
 wire \mprj/c0_i_mem_data[13] ;
 wire \mprj/c0_i_mem_data[14] ;
 wire \mprj/c0_i_mem_data[15] ;
 wire \mprj/c0_i_mem_data[1] ;
 wire \mprj/c0_i_mem_data[2] ;
 wire \mprj/c0_i_mem_data[3] ;
 wire \mprj/c0_i_mem_data[4] ;
 wire \mprj/c0_i_mem_data[5] ;
 wire \mprj/c0_i_mem_data[6] ;
 wire \mprj/c0_i_mem_data[7] ;
 wire \mprj/c0_i_mem_data[8] ;
 wire \mprj/c0_i_mem_data[9] ;
 wire \mprj/c0_i_mem_exception ;
 wire \mprj/c0_i_req_data[0] ;
 wire \mprj/c0_i_req_data[10] ;
 wire \mprj/c0_i_req_data[11] ;
 wire \mprj/c0_i_req_data[12] ;
 wire \mprj/c0_i_req_data[13] ;
 wire \mprj/c0_i_req_data[14] ;
 wire \mprj/c0_i_req_data[15] ;
 wire \mprj/c0_i_req_data[16] ;
 wire \mprj/c0_i_req_data[17] ;
 wire \mprj/c0_i_req_data[18] ;
 wire \mprj/c0_i_req_data[19] ;
 wire \mprj/c0_i_req_data[1] ;
 wire \mprj/c0_i_req_data[20] ;
 wire \mprj/c0_i_req_data[21] ;
 wire \mprj/c0_i_req_data[22] ;
 wire \mprj/c0_i_req_data[23] ;
 wire \mprj/c0_i_req_data[24] ;
 wire \mprj/c0_i_req_data[25] ;
 wire \mprj/c0_i_req_data[26] ;
 wire \mprj/c0_i_req_data[27] ;
 wire \mprj/c0_i_req_data[28] ;
 wire \mprj/c0_i_req_data[29] ;
 wire \mprj/c0_i_req_data[2] ;
 wire \mprj/c0_i_req_data[30] ;
 wire \mprj/c0_i_req_data[31] ;
 wire \mprj/c0_i_req_data[3] ;
 wire \mprj/c0_i_req_data[4] ;
 wire \mprj/c0_i_req_data[5] ;
 wire \mprj/c0_i_req_data[6] ;
 wire \mprj/c0_i_req_data[7] ;
 wire \mprj/c0_i_req_data[8] ;
 wire \mprj/c0_i_req_data[9] ;
 wire \mprj/c0_i_req_data_valid ;
 wire \mprj/c0_o_c_data_page ;
 wire \mprj/c0_o_c_instr_long ;
 wire \mprj/c0_o_c_instr_page ;
 wire \mprj/c0_o_icache_flush ;
 wire \mprj/c0_o_instr_long_addr[0] ;
 wire \mprj/c0_o_instr_long_addr[1] ;
 wire \mprj/c0_o_instr_long_addr[2] ;
 wire \mprj/c0_o_instr_long_addr[3] ;
 wire \mprj/c0_o_instr_long_addr[4] ;
 wire \mprj/c0_o_instr_long_addr[5] ;
 wire \mprj/c0_o_instr_long_addr[6] ;
 wire \mprj/c0_o_instr_long_addr[7] ;
 wire \mprj/c0_o_mem_addr[0] ;
 wire \mprj/c0_o_mem_addr[10] ;
 wire \mprj/c0_o_mem_addr[11] ;
 wire \mprj/c0_o_mem_addr[12] ;
 wire \mprj/c0_o_mem_addr[13] ;
 wire \mprj/c0_o_mem_addr[14] ;
 wire \mprj/c0_o_mem_addr[15] ;
 wire \mprj/c0_o_mem_addr[1] ;
 wire \mprj/c0_o_mem_addr[2] ;
 wire \mprj/c0_o_mem_addr[3] ;
 wire \mprj/c0_o_mem_addr[4] ;
 wire \mprj/c0_o_mem_addr[5] ;
 wire \mprj/c0_o_mem_addr[6] ;
 wire \mprj/c0_o_mem_addr[7] ;
 wire \mprj/c0_o_mem_addr[8] ;
 wire \mprj/c0_o_mem_addr[9] ;
 wire \mprj/c0_o_mem_addr_high[0] ;
 wire \mprj/c0_o_mem_addr_high[1] ;
 wire \mprj/c0_o_mem_addr_high[2] ;
 wire \mprj/c0_o_mem_addr_high[3] ;
 wire \mprj/c0_o_mem_addr_high[4] ;
 wire \mprj/c0_o_mem_addr_high[5] ;
 wire \mprj/c0_o_mem_addr_high[6] ;
 wire \mprj/c0_o_mem_addr_high[7] ;
 wire \mprj/c0_o_mem_data[0] ;
 wire \mprj/c0_o_mem_data[10] ;
 wire \mprj/c0_o_mem_data[11] ;
 wire \mprj/c0_o_mem_data[12] ;
 wire \mprj/c0_o_mem_data[13] ;
 wire \mprj/c0_o_mem_data[14] ;
 wire \mprj/c0_o_mem_data[15] ;
 wire \mprj/c0_o_mem_data[1] ;
 wire \mprj/c0_o_mem_data[2] ;
 wire \mprj/c0_o_mem_data[3] ;
 wire \mprj/c0_o_mem_data[4] ;
 wire \mprj/c0_o_mem_data[5] ;
 wire \mprj/c0_o_mem_data[6] ;
 wire \mprj/c0_o_mem_data[7] ;
 wire \mprj/c0_o_mem_data[8] ;
 wire \mprj/c0_o_mem_data[9] ;
 wire \mprj/c0_o_mem_long ;
 wire \mprj/c0_o_mem_req ;
 wire \mprj/c0_o_mem_sel[0] ;
 wire \mprj/c0_o_mem_sel[1] ;
 wire \mprj/c0_o_mem_we ;
 wire \mprj/c0_o_req_active ;
 wire \mprj/c0_o_req_addr[0] ;
 wire \mprj/c0_o_req_addr[10] ;
 wire \mprj/c0_o_req_addr[11] ;
 wire \mprj/c0_o_req_addr[12] ;
 wire \mprj/c0_o_req_addr[13] ;
 wire \mprj/c0_o_req_addr[14] ;
 wire \mprj/c0_o_req_addr[15] ;
 wire \mprj/c0_o_req_addr[1] ;
 wire \mprj/c0_o_req_addr[2] ;
 wire \mprj/c0_o_req_addr[3] ;
 wire \mprj/c0_o_req_addr[4] ;
 wire \mprj/c0_o_req_addr[5] ;
 wire \mprj/c0_o_req_addr[6] ;
 wire \mprj/c0_o_req_addr[7] ;
 wire \mprj/c0_o_req_addr[8] ;
 wire \mprj/c0_o_req_addr[9] ;
 wire \mprj/c0_o_req_ppl_submit ;
 wire \mprj/c0_rst ;
 wire \mprj/c0_sr_bus_addr[0] ;
 wire \mprj/c0_sr_bus_addr[10] ;
 wire \mprj/c0_sr_bus_addr[11] ;
 wire \mprj/c0_sr_bus_addr[12] ;
 wire \mprj/c0_sr_bus_addr[13] ;
 wire \mprj/c0_sr_bus_addr[14] ;
 wire \mprj/c0_sr_bus_addr[15] ;
 wire \mprj/c0_sr_bus_addr[1] ;
 wire \mprj/c0_sr_bus_addr[2] ;
 wire \mprj/c0_sr_bus_addr[3] ;
 wire \mprj/c0_sr_bus_addr[4] ;
 wire \mprj/c0_sr_bus_addr[5] ;
 wire \mprj/c0_sr_bus_addr[6] ;
 wire \mprj/c0_sr_bus_addr[7] ;
 wire \mprj/c0_sr_bus_addr[8] ;
 wire \mprj/c0_sr_bus_addr[9] ;
 wire \mprj/c0_sr_bus_data_o[0] ;
 wire \mprj/c0_sr_bus_data_o[10] ;
 wire \mprj/c0_sr_bus_data_o[11] ;
 wire \mprj/c0_sr_bus_data_o[12] ;
 wire \mprj/c0_sr_bus_data_o[13] ;
 wire \mprj/c0_sr_bus_data_o[14] ;
 wire \mprj/c0_sr_bus_data_o[15] ;
 wire \mprj/c0_sr_bus_data_o[1] ;
 wire \mprj/c0_sr_bus_data_o[2] ;
 wire \mprj/c0_sr_bus_data_o[3] ;
 wire \mprj/c0_sr_bus_data_o[4] ;
 wire \mprj/c0_sr_bus_data_o[5] ;
 wire \mprj/c0_sr_bus_data_o[6] ;
 wire \mprj/c0_sr_bus_data_o[7] ;
 wire \mprj/c0_sr_bus_data_o[8] ;
 wire \mprj/c0_sr_bus_data_o[9] ;
 wire \mprj/c0_sr_bus_we ;
 wire \mprj/c1_clk ;
 wire \mprj/c1_dbg_pc[0] ;
 wire \mprj/c1_dbg_pc[10] ;
 wire \mprj/c1_dbg_pc[11] ;
 wire \mprj/c1_dbg_pc[12] ;
 wire \mprj/c1_dbg_pc[13] ;
 wire \mprj/c1_dbg_pc[14] ;
 wire \mprj/c1_dbg_pc[15] ;
 wire \mprj/c1_dbg_pc[1] ;
 wire \mprj/c1_dbg_pc[2] ;
 wire \mprj/c1_dbg_pc[3] ;
 wire \mprj/c1_dbg_pc[4] ;
 wire \mprj/c1_dbg_pc[5] ;
 wire \mprj/c1_dbg_pc[6] ;
 wire \mprj/c1_dbg_pc[7] ;
 wire \mprj/c1_dbg_pc[8] ;
 wire \mprj/c1_dbg_pc[9] ;
 wire \mprj/c1_dbg_r0[0] ;
 wire \mprj/c1_dbg_r0[10] ;
 wire \mprj/c1_dbg_r0[11] ;
 wire \mprj/c1_dbg_r0[12] ;
 wire \mprj/c1_dbg_r0[13] ;
 wire \mprj/c1_dbg_r0[14] ;
 wire \mprj/c1_dbg_r0[15] ;
 wire \mprj/c1_dbg_r0[1] ;
 wire \mprj/c1_dbg_r0[2] ;
 wire \mprj/c1_dbg_r0[3] ;
 wire \mprj/c1_dbg_r0[4] ;
 wire \mprj/c1_dbg_r0[5] ;
 wire \mprj/c1_dbg_r0[6] ;
 wire \mprj/c1_dbg_r0[7] ;
 wire \mprj/c1_dbg_r0[8] ;
 wire \mprj/c1_dbg_r0[9] ;
 wire \mprj/c1_disable ;
 wire \mprj/c1_i_core_int_sreg[0] ;
 wire \mprj/c1_i_core_int_sreg[10] ;
 wire \mprj/c1_i_core_int_sreg[11] ;
 wire \mprj/c1_i_core_int_sreg[12] ;
 wire \mprj/c1_i_core_int_sreg[13] ;
 wire \mprj/c1_i_core_int_sreg[14] ;
 wire \mprj/c1_i_core_int_sreg[15] ;
 wire \mprj/c1_i_core_int_sreg[1] ;
 wire \mprj/c1_i_core_int_sreg[2] ;
 wire \mprj/c1_i_core_int_sreg[3] ;
 wire \mprj/c1_i_core_int_sreg[4] ;
 wire \mprj/c1_i_core_int_sreg[5] ;
 wire \mprj/c1_i_core_int_sreg[6] ;
 wire \mprj/c1_i_core_int_sreg[7] ;
 wire \mprj/c1_i_core_int_sreg[8] ;
 wire \mprj/c1_i_core_int_sreg[9] ;
 wire \mprj/c1_i_irq ;
 wire \mprj/c1_i_mc_core_int ;
 wire \mprj/c1_i_mem_ack ;
 wire \mprj/c1_i_mem_data[0] ;
 wire \mprj/c1_i_mem_data[10] ;
 wire \mprj/c1_i_mem_data[11] ;
 wire \mprj/c1_i_mem_data[12] ;
 wire \mprj/c1_i_mem_data[13] ;
 wire \mprj/c1_i_mem_data[14] ;
 wire \mprj/c1_i_mem_data[15] ;
 wire \mprj/c1_i_mem_data[1] ;
 wire \mprj/c1_i_mem_data[2] ;
 wire \mprj/c1_i_mem_data[3] ;
 wire \mprj/c1_i_mem_data[4] ;
 wire \mprj/c1_i_mem_data[5] ;
 wire \mprj/c1_i_mem_data[6] ;
 wire \mprj/c1_i_mem_data[7] ;
 wire \mprj/c1_i_mem_data[8] ;
 wire \mprj/c1_i_mem_data[9] ;
 wire \mprj/c1_i_mem_exception ;
 wire \mprj/c1_i_req_data[0] ;
 wire \mprj/c1_i_req_data[10] ;
 wire \mprj/c1_i_req_data[11] ;
 wire \mprj/c1_i_req_data[12] ;
 wire \mprj/c1_i_req_data[13] ;
 wire \mprj/c1_i_req_data[14] ;
 wire \mprj/c1_i_req_data[15] ;
 wire \mprj/c1_i_req_data[16] ;
 wire \mprj/c1_i_req_data[17] ;
 wire \mprj/c1_i_req_data[18] ;
 wire \mprj/c1_i_req_data[19] ;
 wire \mprj/c1_i_req_data[1] ;
 wire \mprj/c1_i_req_data[20] ;
 wire \mprj/c1_i_req_data[21] ;
 wire \mprj/c1_i_req_data[22] ;
 wire \mprj/c1_i_req_data[23] ;
 wire \mprj/c1_i_req_data[24] ;
 wire \mprj/c1_i_req_data[25] ;
 wire \mprj/c1_i_req_data[26] ;
 wire \mprj/c1_i_req_data[27] ;
 wire \mprj/c1_i_req_data[28] ;
 wire \mprj/c1_i_req_data[29] ;
 wire \mprj/c1_i_req_data[2] ;
 wire \mprj/c1_i_req_data[30] ;
 wire \mprj/c1_i_req_data[31] ;
 wire \mprj/c1_i_req_data[3] ;
 wire \mprj/c1_i_req_data[4] ;
 wire \mprj/c1_i_req_data[5] ;
 wire \mprj/c1_i_req_data[6] ;
 wire \mprj/c1_i_req_data[7] ;
 wire \mprj/c1_i_req_data[8] ;
 wire \mprj/c1_i_req_data[9] ;
 wire \mprj/c1_i_req_data_valid ;
 wire \mprj/c1_o_c_data_page ;
 wire \mprj/c1_o_c_instr_long ;
 wire \mprj/c1_o_c_instr_page ;
 wire \mprj/c1_o_icache_flush ;
 wire \mprj/c1_o_instr_long_addr[0] ;
 wire \mprj/c1_o_instr_long_addr[1] ;
 wire \mprj/c1_o_instr_long_addr[2] ;
 wire \mprj/c1_o_instr_long_addr[3] ;
 wire \mprj/c1_o_instr_long_addr[4] ;
 wire \mprj/c1_o_instr_long_addr[5] ;
 wire \mprj/c1_o_instr_long_addr[6] ;
 wire \mprj/c1_o_instr_long_addr[7] ;
 wire \mprj/c1_o_mem_addr[0] ;
 wire \mprj/c1_o_mem_addr[10] ;
 wire \mprj/c1_o_mem_addr[11] ;
 wire \mprj/c1_o_mem_addr[12] ;
 wire \mprj/c1_o_mem_addr[13] ;
 wire \mprj/c1_o_mem_addr[14] ;
 wire \mprj/c1_o_mem_addr[15] ;
 wire \mprj/c1_o_mem_addr[1] ;
 wire \mprj/c1_o_mem_addr[2] ;
 wire \mprj/c1_o_mem_addr[3] ;
 wire \mprj/c1_o_mem_addr[4] ;
 wire \mprj/c1_o_mem_addr[5] ;
 wire \mprj/c1_o_mem_addr[6] ;
 wire \mprj/c1_o_mem_addr[7] ;
 wire \mprj/c1_o_mem_addr[8] ;
 wire \mprj/c1_o_mem_addr[9] ;
 wire \mprj/c1_o_mem_addr_high[0] ;
 wire \mprj/c1_o_mem_addr_high[1] ;
 wire \mprj/c1_o_mem_addr_high[2] ;
 wire \mprj/c1_o_mem_addr_high[3] ;
 wire \mprj/c1_o_mem_addr_high[4] ;
 wire \mprj/c1_o_mem_addr_high[5] ;
 wire \mprj/c1_o_mem_addr_high[6] ;
 wire \mprj/c1_o_mem_addr_high[7] ;
 wire \mprj/c1_o_mem_data[0] ;
 wire \mprj/c1_o_mem_data[10] ;
 wire \mprj/c1_o_mem_data[11] ;
 wire \mprj/c1_o_mem_data[12] ;
 wire \mprj/c1_o_mem_data[13] ;
 wire \mprj/c1_o_mem_data[14] ;
 wire \mprj/c1_o_mem_data[15] ;
 wire \mprj/c1_o_mem_data[1] ;
 wire \mprj/c1_o_mem_data[2] ;
 wire \mprj/c1_o_mem_data[3] ;
 wire \mprj/c1_o_mem_data[4] ;
 wire \mprj/c1_o_mem_data[5] ;
 wire \mprj/c1_o_mem_data[6] ;
 wire \mprj/c1_o_mem_data[7] ;
 wire \mprj/c1_o_mem_data[8] ;
 wire \mprj/c1_o_mem_data[9] ;
 wire \mprj/c1_o_mem_long ;
 wire \mprj/c1_o_mem_req ;
 wire \mprj/c1_o_mem_sel[0] ;
 wire \mprj/c1_o_mem_sel[1] ;
 wire \mprj/c1_o_mem_we ;
 wire \mprj/c1_o_req_active ;
 wire \mprj/c1_o_req_addr[0] ;
 wire \mprj/c1_o_req_addr[10] ;
 wire \mprj/c1_o_req_addr[11] ;
 wire \mprj/c1_o_req_addr[12] ;
 wire \mprj/c1_o_req_addr[13] ;
 wire \mprj/c1_o_req_addr[14] ;
 wire \mprj/c1_o_req_addr[15] ;
 wire \mprj/c1_o_req_addr[1] ;
 wire \mprj/c1_o_req_addr[2] ;
 wire \mprj/c1_o_req_addr[3] ;
 wire \mprj/c1_o_req_addr[4] ;
 wire \mprj/c1_o_req_addr[5] ;
 wire \mprj/c1_o_req_addr[6] ;
 wire \mprj/c1_o_req_addr[7] ;
 wire \mprj/c1_o_req_addr[8] ;
 wire \mprj/c1_o_req_addr[9] ;
 wire \mprj/c1_o_req_ppl_submit ;
 wire \mprj/c1_rst ;
 wire \mprj/c1_sr_bus_addr[0] ;
 wire \mprj/c1_sr_bus_addr[10] ;
 wire \mprj/c1_sr_bus_addr[11] ;
 wire \mprj/c1_sr_bus_addr[12] ;
 wire \mprj/c1_sr_bus_addr[13] ;
 wire \mprj/c1_sr_bus_addr[14] ;
 wire \mprj/c1_sr_bus_addr[15] ;
 wire \mprj/c1_sr_bus_addr[1] ;
 wire \mprj/c1_sr_bus_addr[2] ;
 wire \mprj/c1_sr_bus_addr[3] ;
 wire \mprj/c1_sr_bus_addr[4] ;
 wire \mprj/c1_sr_bus_addr[5] ;
 wire \mprj/c1_sr_bus_addr[6] ;
 wire \mprj/c1_sr_bus_addr[7] ;
 wire \mprj/c1_sr_bus_addr[8] ;
 wire \mprj/c1_sr_bus_addr[9] ;
 wire \mprj/c1_sr_bus_data_o[0] ;
 wire \mprj/c1_sr_bus_data_o[10] ;
 wire \mprj/c1_sr_bus_data_o[11] ;
 wire \mprj/c1_sr_bus_data_o[12] ;
 wire \mprj/c1_sr_bus_data_o[13] ;
 wire \mprj/c1_sr_bus_data_o[14] ;
 wire \mprj/c1_sr_bus_data_o[15] ;
 wire \mprj/c1_sr_bus_data_o[1] ;
 wire \mprj/c1_sr_bus_data_o[2] ;
 wire \mprj/c1_sr_bus_data_o[3] ;
 wire \mprj/c1_sr_bus_data_o[4] ;
 wire \mprj/c1_sr_bus_data_o[5] ;
 wire \mprj/c1_sr_bus_data_o[6] ;
 wire \mprj/c1_sr_bus_data_o[7] ;
 wire \mprj/c1_sr_bus_data_o[8] ;
 wire \mprj/c1_sr_bus_data_o[9] ;
 wire \mprj/c1_sr_bus_we ;
 wire \mprj/dcache_clk ;
 wire \mprj/dcache_mem_ack ;
 wire \mprj/dcache_mem_addr[0] ;
 wire \mprj/dcache_mem_addr[10] ;
 wire \mprj/dcache_mem_addr[11] ;
 wire \mprj/dcache_mem_addr[12] ;
 wire \mprj/dcache_mem_addr[13] ;
 wire \mprj/dcache_mem_addr[14] ;
 wire \mprj/dcache_mem_addr[15] ;
 wire \mprj/dcache_mem_addr[16] ;
 wire \mprj/dcache_mem_addr[17] ;
 wire \mprj/dcache_mem_addr[18] ;
 wire \mprj/dcache_mem_addr[19] ;
 wire \mprj/dcache_mem_addr[1] ;
 wire \mprj/dcache_mem_addr[20] ;
 wire \mprj/dcache_mem_addr[21] ;
 wire \mprj/dcache_mem_addr[22] ;
 wire \mprj/dcache_mem_addr[23] ;
 wire \mprj/dcache_mem_addr[2] ;
 wire \mprj/dcache_mem_addr[3] ;
 wire \mprj/dcache_mem_addr[4] ;
 wire \mprj/dcache_mem_addr[5] ;
 wire \mprj/dcache_mem_addr[6] ;
 wire \mprj/dcache_mem_addr[7] ;
 wire \mprj/dcache_mem_addr[8] ;
 wire \mprj/dcache_mem_addr[9] ;
 wire \mprj/dcache_mem_cache_enable ;
 wire \mprj/dcache_mem_exception ;
 wire \mprj/dcache_mem_i_data[0] ;
 wire \mprj/dcache_mem_i_data[10] ;
 wire \mprj/dcache_mem_i_data[11] ;
 wire \mprj/dcache_mem_i_data[12] ;
 wire \mprj/dcache_mem_i_data[13] ;
 wire \mprj/dcache_mem_i_data[14] ;
 wire \mprj/dcache_mem_i_data[15] ;
 wire \mprj/dcache_mem_i_data[1] ;
 wire \mprj/dcache_mem_i_data[2] ;
 wire \mprj/dcache_mem_i_data[3] ;
 wire \mprj/dcache_mem_i_data[4] ;
 wire \mprj/dcache_mem_i_data[5] ;
 wire \mprj/dcache_mem_i_data[6] ;
 wire \mprj/dcache_mem_i_data[7] ;
 wire \mprj/dcache_mem_i_data[8] ;
 wire \mprj/dcache_mem_i_data[9] ;
 wire \mprj/dcache_mem_o_data[0] ;
 wire \mprj/dcache_mem_o_data[10] ;
 wire \mprj/dcache_mem_o_data[11] ;
 wire \mprj/dcache_mem_o_data[12] ;
 wire \mprj/dcache_mem_o_data[13] ;
 wire \mprj/dcache_mem_o_data[14] ;
 wire \mprj/dcache_mem_o_data[15] ;
 wire \mprj/dcache_mem_o_data[1] ;
 wire \mprj/dcache_mem_o_data[2] ;
 wire \mprj/dcache_mem_o_data[3] ;
 wire \mprj/dcache_mem_o_data[4] ;
 wire \mprj/dcache_mem_o_data[5] ;
 wire \mprj/dcache_mem_o_data[6] ;
 wire \mprj/dcache_mem_o_data[7] ;
 wire \mprj/dcache_mem_o_data[8] ;
 wire \mprj/dcache_mem_o_data[9] ;
 wire \mprj/dcache_mem_req ;
 wire \mprj/dcache_mem_sel[0] ;
 wire \mprj/dcache_mem_sel[1] ;
 wire \mprj/dcache_mem_we ;
 wire \mprj/dcache_rst ;
 wire \mprj/dcache_wb_4_burst ;
 wire \mprj/dcache_wb_ack ;
 wire \mprj/dcache_wb_adr[0] ;
 wire \mprj/dcache_wb_adr[10] ;
 wire \mprj/dcache_wb_adr[11] ;
 wire \mprj/dcache_wb_adr[12] ;
 wire \mprj/dcache_wb_adr[13] ;
 wire \mprj/dcache_wb_adr[14] ;
 wire \mprj/dcache_wb_adr[15] ;
 wire \mprj/dcache_wb_adr[16] ;
 wire \mprj/dcache_wb_adr[17] ;
 wire \mprj/dcache_wb_adr[18] ;
 wire \mprj/dcache_wb_adr[19] ;
 wire \mprj/dcache_wb_adr[1] ;
 wire \mprj/dcache_wb_adr[20] ;
 wire \mprj/dcache_wb_adr[21] ;
 wire \mprj/dcache_wb_adr[22] ;
 wire \mprj/dcache_wb_adr[23] ;
 wire \mprj/dcache_wb_adr[2] ;
 wire \mprj/dcache_wb_adr[3] ;
 wire \mprj/dcache_wb_adr[4] ;
 wire \mprj/dcache_wb_adr[5] ;
 wire \mprj/dcache_wb_adr[6] ;
 wire \mprj/dcache_wb_adr[7] ;
 wire \mprj/dcache_wb_adr[8] ;
 wire \mprj/dcache_wb_adr[9] ;
 wire \mprj/dcache_wb_cyc ;
 wire \mprj/dcache_wb_err ;
 wire \mprj/dcache_wb_i_dat[0] ;
 wire \mprj/dcache_wb_i_dat[10] ;
 wire \mprj/dcache_wb_i_dat[11] ;
 wire \mprj/dcache_wb_i_dat[12] ;
 wire \mprj/dcache_wb_i_dat[13] ;
 wire \mprj/dcache_wb_i_dat[14] ;
 wire \mprj/dcache_wb_i_dat[15] ;
 wire \mprj/dcache_wb_i_dat[1] ;
 wire \mprj/dcache_wb_i_dat[2] ;
 wire \mprj/dcache_wb_i_dat[3] ;
 wire \mprj/dcache_wb_i_dat[4] ;
 wire \mprj/dcache_wb_i_dat[5] ;
 wire \mprj/dcache_wb_i_dat[6] ;
 wire \mprj/dcache_wb_i_dat[7] ;
 wire \mprj/dcache_wb_i_dat[8] ;
 wire \mprj/dcache_wb_i_dat[9] ;
 wire \mprj/dcache_wb_o_dat[0] ;
 wire \mprj/dcache_wb_o_dat[10] ;
 wire \mprj/dcache_wb_o_dat[11] ;
 wire \mprj/dcache_wb_o_dat[12] ;
 wire \mprj/dcache_wb_o_dat[13] ;
 wire \mprj/dcache_wb_o_dat[14] ;
 wire \mprj/dcache_wb_o_dat[15] ;
 wire \mprj/dcache_wb_o_dat[1] ;
 wire \mprj/dcache_wb_o_dat[2] ;
 wire \mprj/dcache_wb_o_dat[3] ;
 wire \mprj/dcache_wb_o_dat[4] ;
 wire \mprj/dcache_wb_o_dat[5] ;
 wire \mprj/dcache_wb_o_dat[6] ;
 wire \mprj/dcache_wb_o_dat[7] ;
 wire \mprj/dcache_wb_o_dat[8] ;
 wire \mprj/dcache_wb_o_dat[9] ;
 wire \mprj/dcache_wb_sel[0] ;
 wire \mprj/dcache_wb_sel[1] ;
 wire \mprj/dcache_wb_stb ;
 wire \mprj/dcache_wb_we ;
 wire \mprj/ic0_clk ;
 wire \mprj/ic0_mem_ack ;
 wire \mprj/ic0_mem_addr[0] ;
 wire \mprj/ic0_mem_addr[10] ;
 wire \mprj/ic0_mem_addr[11] ;
 wire \mprj/ic0_mem_addr[12] ;
 wire \mprj/ic0_mem_addr[13] ;
 wire \mprj/ic0_mem_addr[14] ;
 wire \mprj/ic0_mem_addr[15] ;
 wire \mprj/ic0_mem_addr[1] ;
 wire \mprj/ic0_mem_addr[2] ;
 wire \mprj/ic0_mem_addr[3] ;
 wire \mprj/ic0_mem_addr[4] ;
 wire \mprj/ic0_mem_addr[5] ;
 wire \mprj/ic0_mem_addr[6] ;
 wire \mprj/ic0_mem_addr[7] ;
 wire \mprj/ic0_mem_addr[8] ;
 wire \mprj/ic0_mem_addr[9] ;
 wire \mprj/ic0_mem_cache_flush ;
 wire \mprj/ic0_mem_data[0] ;
 wire \mprj/ic0_mem_data[10] ;
 wire \mprj/ic0_mem_data[11] ;
 wire \mprj/ic0_mem_data[12] ;
 wire \mprj/ic0_mem_data[13] ;
 wire \mprj/ic0_mem_data[14] ;
 wire \mprj/ic0_mem_data[15] ;
 wire \mprj/ic0_mem_data[16] ;
 wire \mprj/ic0_mem_data[17] ;
 wire \mprj/ic0_mem_data[18] ;
 wire \mprj/ic0_mem_data[19] ;
 wire \mprj/ic0_mem_data[1] ;
 wire \mprj/ic0_mem_data[20] ;
 wire \mprj/ic0_mem_data[21] ;
 wire \mprj/ic0_mem_data[22] ;
 wire \mprj/ic0_mem_data[23] ;
 wire \mprj/ic0_mem_data[24] ;
 wire \mprj/ic0_mem_data[25] ;
 wire \mprj/ic0_mem_data[26] ;
 wire \mprj/ic0_mem_data[27] ;
 wire \mprj/ic0_mem_data[28] ;
 wire \mprj/ic0_mem_data[29] ;
 wire \mprj/ic0_mem_data[2] ;
 wire \mprj/ic0_mem_data[30] ;
 wire \mprj/ic0_mem_data[31] ;
 wire \mprj/ic0_mem_data[3] ;
 wire \mprj/ic0_mem_data[4] ;
 wire \mprj/ic0_mem_data[5] ;
 wire \mprj/ic0_mem_data[6] ;
 wire \mprj/ic0_mem_data[7] ;
 wire \mprj/ic0_mem_data[8] ;
 wire \mprj/ic0_mem_data[9] ;
 wire \mprj/ic0_mem_ppl_submit ;
 wire \mprj/ic0_mem_req ;
 wire \mprj/ic0_rst ;
 wire \mprj/ic0_wb_ack ;
 wire \mprj/ic0_wb_adr[0] ;
 wire \mprj/ic0_wb_adr[10] ;
 wire \mprj/ic0_wb_adr[11] ;
 wire \mprj/ic0_wb_adr[12] ;
 wire \mprj/ic0_wb_adr[13] ;
 wire \mprj/ic0_wb_adr[14] ;
 wire \mprj/ic0_wb_adr[15] ;
 wire \mprj/ic0_wb_adr[1] ;
 wire \mprj/ic0_wb_adr[2] ;
 wire \mprj/ic0_wb_adr[3] ;
 wire \mprj/ic0_wb_adr[4] ;
 wire \mprj/ic0_wb_adr[5] ;
 wire \mprj/ic0_wb_adr[6] ;
 wire \mprj/ic0_wb_adr[7] ;
 wire \mprj/ic0_wb_adr[8] ;
 wire \mprj/ic0_wb_adr[9] ;
 wire \mprj/ic0_wb_cyc ;
 wire \mprj/ic0_wb_err ;
 wire \mprj/ic0_wb_i_dat[0] ;
 wire \mprj/ic0_wb_i_dat[10] ;
 wire \mprj/ic0_wb_i_dat[11] ;
 wire \mprj/ic0_wb_i_dat[12] ;
 wire \mprj/ic0_wb_i_dat[13] ;
 wire \mprj/ic0_wb_i_dat[14] ;
 wire \mprj/ic0_wb_i_dat[15] ;
 wire \mprj/ic0_wb_i_dat[1] ;
 wire \mprj/ic0_wb_i_dat[2] ;
 wire \mprj/ic0_wb_i_dat[3] ;
 wire \mprj/ic0_wb_i_dat[4] ;
 wire \mprj/ic0_wb_i_dat[5] ;
 wire \mprj/ic0_wb_i_dat[6] ;
 wire \mprj/ic0_wb_i_dat[7] ;
 wire \mprj/ic0_wb_i_dat[8] ;
 wire \mprj/ic0_wb_i_dat[9] ;
 wire \mprj/ic0_wb_sel[0] ;
 wire \mprj/ic0_wb_sel[1] ;
 wire \mprj/ic0_wb_stb ;
 wire \mprj/ic0_wb_we ;
 wire \mprj/ic1_clk ;
 wire \mprj/ic1_mem_ack ;
 wire \mprj/ic1_mem_addr[0] ;
 wire \mprj/ic1_mem_addr[10] ;
 wire \mprj/ic1_mem_addr[11] ;
 wire \mprj/ic1_mem_addr[12] ;
 wire \mprj/ic1_mem_addr[13] ;
 wire \mprj/ic1_mem_addr[14] ;
 wire \mprj/ic1_mem_addr[15] ;
 wire \mprj/ic1_mem_addr[1] ;
 wire \mprj/ic1_mem_addr[2] ;
 wire \mprj/ic1_mem_addr[3] ;
 wire \mprj/ic1_mem_addr[4] ;
 wire \mprj/ic1_mem_addr[5] ;
 wire \mprj/ic1_mem_addr[6] ;
 wire \mprj/ic1_mem_addr[7] ;
 wire \mprj/ic1_mem_addr[8] ;
 wire \mprj/ic1_mem_addr[9] ;
 wire \mprj/ic1_mem_cache_flush ;
 wire \mprj/ic1_mem_data[0] ;
 wire \mprj/ic1_mem_data[10] ;
 wire \mprj/ic1_mem_data[11] ;
 wire \mprj/ic1_mem_data[12] ;
 wire \mprj/ic1_mem_data[13] ;
 wire \mprj/ic1_mem_data[14] ;
 wire \mprj/ic1_mem_data[15] ;
 wire \mprj/ic1_mem_data[16] ;
 wire \mprj/ic1_mem_data[17] ;
 wire \mprj/ic1_mem_data[18] ;
 wire \mprj/ic1_mem_data[19] ;
 wire \mprj/ic1_mem_data[1] ;
 wire \mprj/ic1_mem_data[20] ;
 wire \mprj/ic1_mem_data[21] ;
 wire \mprj/ic1_mem_data[22] ;
 wire \mprj/ic1_mem_data[23] ;
 wire \mprj/ic1_mem_data[24] ;
 wire \mprj/ic1_mem_data[25] ;
 wire \mprj/ic1_mem_data[26] ;
 wire \mprj/ic1_mem_data[27] ;
 wire \mprj/ic1_mem_data[28] ;
 wire \mprj/ic1_mem_data[29] ;
 wire \mprj/ic1_mem_data[2] ;
 wire \mprj/ic1_mem_data[30] ;
 wire \mprj/ic1_mem_data[31] ;
 wire \mprj/ic1_mem_data[3] ;
 wire \mprj/ic1_mem_data[4] ;
 wire \mprj/ic1_mem_data[5] ;
 wire \mprj/ic1_mem_data[6] ;
 wire \mprj/ic1_mem_data[7] ;
 wire \mprj/ic1_mem_data[8] ;
 wire \mprj/ic1_mem_data[9] ;
 wire \mprj/ic1_mem_ppl_submit ;
 wire \mprj/ic1_mem_req ;
 wire \mprj/ic1_rst ;
 wire \mprj/ic1_wb_ack ;
 wire \mprj/ic1_wb_adr[0] ;
 wire \mprj/ic1_wb_adr[10] ;
 wire \mprj/ic1_wb_adr[11] ;
 wire \mprj/ic1_wb_adr[12] ;
 wire \mprj/ic1_wb_adr[13] ;
 wire \mprj/ic1_wb_adr[14] ;
 wire \mprj/ic1_wb_adr[15] ;
 wire \mprj/ic1_wb_adr[1] ;
 wire \mprj/ic1_wb_adr[2] ;
 wire \mprj/ic1_wb_adr[3] ;
 wire \mprj/ic1_wb_adr[4] ;
 wire \mprj/ic1_wb_adr[5] ;
 wire \mprj/ic1_wb_adr[6] ;
 wire \mprj/ic1_wb_adr[7] ;
 wire \mprj/ic1_wb_adr[8] ;
 wire \mprj/ic1_wb_adr[9] ;
 wire \mprj/ic1_wb_cyc ;
 wire \mprj/ic1_wb_err ;
 wire \mprj/ic1_wb_i_dat[0] ;
 wire \mprj/ic1_wb_i_dat[10] ;
 wire \mprj/ic1_wb_i_dat[11] ;
 wire \mprj/ic1_wb_i_dat[12] ;
 wire \mprj/ic1_wb_i_dat[13] ;
 wire \mprj/ic1_wb_i_dat[14] ;
 wire \mprj/ic1_wb_i_dat[15] ;
 wire \mprj/ic1_wb_i_dat[1] ;
 wire \mprj/ic1_wb_i_dat[2] ;
 wire \mprj/ic1_wb_i_dat[3] ;
 wire \mprj/ic1_wb_i_dat[4] ;
 wire \mprj/ic1_wb_i_dat[5] ;
 wire \mprj/ic1_wb_i_dat[6] ;
 wire \mprj/ic1_wb_i_dat[7] ;
 wire \mprj/ic1_wb_i_dat[8] ;
 wire \mprj/ic1_wb_i_dat[9] ;
 wire \mprj/ic1_wb_sel[0] ;
 wire \mprj/ic1_wb_sel[1] ;
 wire \mprj/ic1_wb_stb ;
 wire \mprj/ic1_wb_we ;
 wire \mprj/inner_clock ;
 wire \mprj/inner_disable ;
 wire \mprj/inner_embed_mode ;
 wire \mprj/inner_ext_irq ;
 wire \mprj/inner_reset ;
 wire \mprj/inner_wb_4_burst ;
 wire \mprj/inner_wb_8_burst ;
 wire \mprj/inner_wb_ack ;
 wire \mprj/inner_wb_adr[0] ;
 wire \mprj/inner_wb_adr[10] ;
 wire \mprj/inner_wb_adr[11] ;
 wire \mprj/inner_wb_adr[12] ;
 wire \mprj/inner_wb_adr[13] ;
 wire \mprj/inner_wb_adr[14] ;
 wire \mprj/inner_wb_adr[15] ;
 wire \mprj/inner_wb_adr[16] ;
 wire \mprj/inner_wb_adr[17] ;
 wire \mprj/inner_wb_adr[18] ;
 wire \mprj/inner_wb_adr[19] ;
 wire \mprj/inner_wb_adr[1] ;
 wire \mprj/inner_wb_adr[20] ;
 wire \mprj/inner_wb_adr[21] ;
 wire \mprj/inner_wb_adr[22] ;
 wire \mprj/inner_wb_adr[23] ;
 wire \mprj/inner_wb_adr[2] ;
 wire \mprj/inner_wb_adr[3] ;
 wire \mprj/inner_wb_adr[4] ;
 wire \mprj/inner_wb_adr[5] ;
 wire \mprj/inner_wb_adr[6] ;
 wire \mprj/inner_wb_adr[7] ;
 wire \mprj/inner_wb_adr[8] ;
 wire \mprj/inner_wb_adr[9] ;
 wire \mprj/inner_wb_cyc ;
 wire \mprj/inner_wb_err ;
 wire \mprj/inner_wb_i_dat[0] ;
 wire \mprj/inner_wb_i_dat[10] ;
 wire \mprj/inner_wb_i_dat[11] ;
 wire \mprj/inner_wb_i_dat[12] ;
 wire \mprj/inner_wb_i_dat[13] ;
 wire \mprj/inner_wb_i_dat[14] ;
 wire \mprj/inner_wb_i_dat[15] ;
 wire \mprj/inner_wb_i_dat[1] ;
 wire \mprj/inner_wb_i_dat[2] ;
 wire \mprj/inner_wb_i_dat[3] ;
 wire \mprj/inner_wb_i_dat[4] ;
 wire \mprj/inner_wb_i_dat[5] ;
 wire \mprj/inner_wb_i_dat[6] ;
 wire \mprj/inner_wb_i_dat[7] ;
 wire \mprj/inner_wb_i_dat[8] ;
 wire \mprj/inner_wb_i_dat[9] ;
 wire \mprj/inner_wb_o_dat[0] ;
 wire \mprj/inner_wb_o_dat[10] ;
 wire \mprj/inner_wb_o_dat[11] ;
 wire \mprj/inner_wb_o_dat[12] ;
 wire \mprj/inner_wb_o_dat[13] ;
 wire \mprj/inner_wb_o_dat[14] ;
 wire \mprj/inner_wb_o_dat[15] ;
 wire \mprj/inner_wb_o_dat[1] ;
 wire \mprj/inner_wb_o_dat[2] ;
 wire \mprj/inner_wb_o_dat[3] ;
 wire \mprj/inner_wb_o_dat[4] ;
 wire \mprj/inner_wb_o_dat[5] ;
 wire \mprj/inner_wb_o_dat[6] ;
 wire \mprj/inner_wb_o_dat[7] ;
 wire \mprj/inner_wb_o_dat[8] ;
 wire \mprj/inner_wb_o_dat[9] ;
 wire \mprj/inner_wb_sel[0] ;
 wire \mprj/inner_wb_sel[1] ;
 wire \mprj/inner_wb_stb ;
 wire \mprj/inner_wb_we ;
 wire \mprj/iram_addr[0] ;
 wire \mprj/iram_addr[1] ;
 wire \mprj/iram_addr[2] ;
 wire \mprj/iram_addr[3] ;
 wire \mprj/iram_addr[4] ;
 wire \mprj/iram_addr[5] ;
 wire \mprj/iram_clk ;
 wire \mprj/iram_i_data[0] ;
 wire \mprj/iram_i_data[10] ;
 wire \mprj/iram_i_data[11] ;
 wire \mprj/iram_i_data[12] ;
 wire \mprj/iram_i_data[13] ;
 wire \mprj/iram_i_data[14] ;
 wire \mprj/iram_i_data[15] ;
 wire \mprj/iram_i_data[1] ;
 wire \mprj/iram_i_data[2] ;
 wire \mprj/iram_i_data[3] ;
 wire \mprj/iram_i_data[4] ;
 wire \mprj/iram_i_data[5] ;
 wire \mprj/iram_i_data[6] ;
 wire \mprj/iram_i_data[7] ;
 wire \mprj/iram_i_data[8] ;
 wire \mprj/iram_i_data[9] ;
 wire \mprj/iram_o_data[0] ;
 wire \mprj/iram_o_data[10] ;
 wire \mprj/iram_o_data[11] ;
 wire \mprj/iram_o_data[12] ;
 wire \mprj/iram_o_data[13] ;
 wire \mprj/iram_o_data[14] ;
 wire \mprj/iram_o_data[15] ;
 wire \mprj/iram_o_data[1] ;
 wire \mprj/iram_o_data[2] ;
 wire \mprj/iram_o_data[3] ;
 wire \mprj/iram_o_data[4] ;
 wire \mprj/iram_o_data[5] ;
 wire \mprj/iram_o_data[6] ;
 wire \mprj/iram_o_data[7] ;
 wire \mprj/iram_o_data[8] ;
 wire \mprj/iram_o_data[9] ;
 wire \mprj/iram_we ;

 core0 \mprj/core0  (.i_clk(\mprj/c0_clk ),
    .i_disable(\mprj/c0_disable ),
    .i_irq(\mprj/c0_i_irq ),
    .i_mc_core_int(\mprj/c0_i_mc_core_int ),
    .i_mem_ack(\mprj/c0_i_mem_ack ),
    .i_mem_exception(\mprj/c0_i_mem_exception ),
    .i_req_data_valid(\mprj/c0_i_req_data_valid ),
    .i_rst(\mprj/c0_rst ),
    .o_c_data_page(\mprj/c0_o_c_data_page ),
    .o_c_instr_long(\mprj/c0_o_c_instr_long ),
    .o_c_instr_page(\mprj/c0_o_c_instr_page ),
    .o_icache_flush(\mprj/c0_o_icache_flush ),
    .o_mem_long(\mprj/c0_o_mem_long ),
    .o_mem_req(\mprj/c0_o_mem_req ),
    .o_mem_we(\mprj/c0_o_mem_we ),
    .o_req_active(\mprj/c0_o_req_active ),
    .o_req_ppl_submit(\mprj/c0_o_req_ppl_submit ),
    .sr_bus_we(\mprj/c0_sr_bus_we ),
    .vccd1(vdd),
    .vssd1(vss),
    .dbg_pc({\mprj/c0_dbg_pc[15] ,
    \mprj/c0_dbg_pc[14] ,
    \mprj/c0_dbg_pc[13] ,
    \mprj/c0_dbg_pc[12] ,
    \mprj/c0_dbg_pc[11] ,
    \mprj/c0_dbg_pc[10] ,
    \mprj/c0_dbg_pc[9] ,
    \mprj/c0_dbg_pc[8] ,
    \mprj/c0_dbg_pc[7] ,
    \mprj/c0_dbg_pc[6] ,
    \mprj/c0_dbg_pc[5] ,
    \mprj/c0_dbg_pc[4] ,
    \mprj/c0_dbg_pc[3] ,
    \mprj/c0_dbg_pc[2] ,
    \mprj/c0_dbg_pc[1] ,
    \mprj/c0_dbg_pc[0] }),
    .dbg_r0({\mprj/c0_dbg_r0[15] ,
    \mprj/c0_dbg_r0[14] ,
    \mprj/c0_dbg_r0[13] ,
    \mprj/c0_dbg_r0[12] ,
    \mprj/c0_dbg_r0[11] ,
    \mprj/c0_dbg_r0[10] ,
    \mprj/c0_dbg_r0[9] ,
    \mprj/c0_dbg_r0[8] ,
    \mprj/c0_dbg_r0[7] ,
    \mprj/c0_dbg_r0[6] ,
    \mprj/c0_dbg_r0[5] ,
    \mprj/c0_dbg_r0[4] ,
    \mprj/c0_dbg_r0[3] ,
    \mprj/c0_dbg_r0[2] ,
    \mprj/c0_dbg_r0[1] ,
    \mprj/c0_dbg_r0[0] }),
    .i_core_int_sreg({\mprj/c0_i_core_int_sreg[15] ,
    \mprj/c0_i_core_int_sreg[14] ,
    \mprj/c0_i_core_int_sreg[13] ,
    \mprj/c0_i_core_int_sreg[12] ,
    \mprj/c0_i_core_int_sreg[11] ,
    \mprj/c0_i_core_int_sreg[10] ,
    \mprj/c0_i_core_int_sreg[9] ,
    \mprj/c0_i_core_int_sreg[8] ,
    \mprj/c0_i_core_int_sreg[7] ,
    \mprj/c0_i_core_int_sreg[6] ,
    \mprj/c0_i_core_int_sreg[5] ,
    \mprj/c0_i_core_int_sreg[4] ,
    \mprj/c0_i_core_int_sreg[3] ,
    \mprj/c0_i_core_int_sreg[2] ,
    \mprj/c0_i_core_int_sreg[1] ,
    \mprj/c0_i_core_int_sreg[0] }),
    .i_mem_data({\mprj/c0_i_mem_data[15] ,
    \mprj/c0_i_mem_data[14] ,
    \mprj/c0_i_mem_data[13] ,
    \mprj/c0_i_mem_data[12] ,
    \mprj/c0_i_mem_data[11] ,
    \mprj/c0_i_mem_data[10] ,
    \mprj/c0_i_mem_data[9] ,
    \mprj/c0_i_mem_data[8] ,
    \mprj/c0_i_mem_data[7] ,
    \mprj/c0_i_mem_data[6] ,
    \mprj/c0_i_mem_data[5] ,
    \mprj/c0_i_mem_data[4] ,
    \mprj/c0_i_mem_data[3] ,
    \mprj/c0_i_mem_data[2] ,
    \mprj/c0_i_mem_data[1] ,
    \mprj/c0_i_mem_data[0] }),
    .i_req_data({\mprj/c0_i_req_data[31] ,
    \mprj/c0_i_req_data[30] ,
    \mprj/c0_i_req_data[29] ,
    \mprj/c0_i_req_data[28] ,
    \mprj/c0_i_req_data[27] ,
    \mprj/c0_i_req_data[26] ,
    \mprj/c0_i_req_data[25] ,
    \mprj/c0_i_req_data[24] ,
    \mprj/c0_i_req_data[23] ,
    \mprj/c0_i_req_data[22] ,
    \mprj/c0_i_req_data[21] ,
    \mprj/c0_i_req_data[20] ,
    \mprj/c0_i_req_data[19] ,
    \mprj/c0_i_req_data[18] ,
    \mprj/c0_i_req_data[17] ,
    \mprj/c0_i_req_data[16] ,
    \mprj/c0_i_req_data[15] ,
    \mprj/c0_i_req_data[14] ,
    \mprj/c0_i_req_data[13] ,
    \mprj/c0_i_req_data[12] ,
    \mprj/c0_i_req_data[11] ,
    \mprj/c0_i_req_data[10] ,
    \mprj/c0_i_req_data[9] ,
    \mprj/c0_i_req_data[8] ,
    \mprj/c0_i_req_data[7] ,
    \mprj/c0_i_req_data[6] ,
    \mprj/c0_i_req_data[5] ,
    \mprj/c0_i_req_data[4] ,
    \mprj/c0_i_req_data[3] ,
    \mprj/c0_i_req_data[2] ,
    \mprj/c0_i_req_data[1] ,
    \mprj/c0_i_req_data[0] }),
    .o_instr_long_addr({\mprj/c0_o_instr_long_addr[7] ,
    \mprj/c0_o_instr_long_addr[6] ,
    \mprj/c0_o_instr_long_addr[5] ,
    \mprj/c0_o_instr_long_addr[4] ,
    \mprj/c0_o_instr_long_addr[3] ,
    \mprj/c0_o_instr_long_addr[2] ,
    \mprj/c0_o_instr_long_addr[1] ,
    \mprj/c0_o_instr_long_addr[0] }),
    .o_mem_addr({\mprj/c0_o_mem_addr[15] ,
    \mprj/c0_o_mem_addr[14] ,
    \mprj/c0_o_mem_addr[13] ,
    \mprj/c0_o_mem_addr[12] ,
    \mprj/c0_o_mem_addr[11] ,
    \mprj/c0_o_mem_addr[10] ,
    \mprj/c0_o_mem_addr[9] ,
    \mprj/c0_o_mem_addr[8] ,
    \mprj/c0_o_mem_addr[7] ,
    \mprj/c0_o_mem_addr[6] ,
    \mprj/c0_o_mem_addr[5] ,
    \mprj/c0_o_mem_addr[4] ,
    \mprj/c0_o_mem_addr[3] ,
    \mprj/c0_o_mem_addr[2] ,
    \mprj/c0_o_mem_addr[1] ,
    \mprj/c0_o_mem_addr[0] }),
    .o_mem_addr_high({\mprj/c0_o_mem_addr_high[7] ,
    \mprj/c0_o_mem_addr_high[6] ,
    \mprj/c0_o_mem_addr_high[5] ,
    \mprj/c0_o_mem_addr_high[4] ,
    \mprj/c0_o_mem_addr_high[3] ,
    \mprj/c0_o_mem_addr_high[2] ,
    \mprj/c0_o_mem_addr_high[1] ,
    \mprj/c0_o_mem_addr_high[0] }),
    .o_mem_data({\mprj/c0_o_mem_data[15] ,
    \mprj/c0_o_mem_data[14] ,
    \mprj/c0_o_mem_data[13] ,
    \mprj/c0_o_mem_data[12] ,
    \mprj/c0_o_mem_data[11] ,
    \mprj/c0_o_mem_data[10] ,
    \mprj/c0_o_mem_data[9] ,
    \mprj/c0_o_mem_data[8] ,
    \mprj/c0_o_mem_data[7] ,
    \mprj/c0_o_mem_data[6] ,
    \mprj/c0_o_mem_data[5] ,
    \mprj/c0_o_mem_data[4] ,
    \mprj/c0_o_mem_data[3] ,
    \mprj/c0_o_mem_data[2] ,
    \mprj/c0_o_mem_data[1] ,
    \mprj/c0_o_mem_data[0] }),
    .o_mem_sel({\mprj/c0_o_mem_sel[1] ,
    \mprj/c0_o_mem_sel[0] }),
    .o_req_addr({\mprj/c0_o_req_addr[15] ,
    \mprj/c0_o_req_addr[14] ,
    \mprj/c0_o_req_addr[13] ,
    \mprj/c0_o_req_addr[12] ,
    \mprj/c0_o_req_addr[11] ,
    \mprj/c0_o_req_addr[10] ,
    \mprj/c0_o_req_addr[9] ,
    \mprj/c0_o_req_addr[8] ,
    \mprj/c0_o_req_addr[7] ,
    \mprj/c0_o_req_addr[6] ,
    \mprj/c0_o_req_addr[5] ,
    \mprj/c0_o_req_addr[4] ,
    \mprj/c0_o_req_addr[3] ,
    \mprj/c0_o_req_addr[2] ,
    \mprj/c0_o_req_addr[1] ,
    \mprj/c0_o_req_addr[0] }),
    .sr_bus_addr({\mprj/c0_sr_bus_addr[15] ,
    \mprj/c0_sr_bus_addr[14] ,
    \mprj/c0_sr_bus_addr[13] ,
    \mprj/c0_sr_bus_addr[12] ,
    \mprj/c0_sr_bus_addr[11] ,
    \mprj/c0_sr_bus_addr[10] ,
    \mprj/c0_sr_bus_addr[9] ,
    \mprj/c0_sr_bus_addr[8] ,
    \mprj/c0_sr_bus_addr[7] ,
    \mprj/c0_sr_bus_addr[6] ,
    \mprj/c0_sr_bus_addr[5] ,
    \mprj/c0_sr_bus_addr[4] ,
    \mprj/c0_sr_bus_addr[3] ,
    \mprj/c0_sr_bus_addr[2] ,
    \mprj/c0_sr_bus_addr[1] ,
    \mprj/c0_sr_bus_addr[0] }),
    .sr_bus_data_o({\mprj/c0_sr_bus_data_o[15] ,
    \mprj/c0_sr_bus_data_o[14] ,
    \mprj/c0_sr_bus_data_o[13] ,
    \mprj/c0_sr_bus_data_o[12] ,
    \mprj/c0_sr_bus_data_o[11] ,
    \mprj/c0_sr_bus_data_o[10] ,
    \mprj/c0_sr_bus_data_o[9] ,
    \mprj/c0_sr_bus_data_o[8] ,
    \mprj/c0_sr_bus_data_o[7] ,
    \mprj/c0_sr_bus_data_o[6] ,
    \mprj/c0_sr_bus_data_o[5] ,
    \mprj/c0_sr_bus_data_o[4] ,
    \mprj/c0_sr_bus_data_o[3] ,
    \mprj/c0_sr_bus_data_o[2] ,
    \mprj/c0_sr_bus_data_o[1] ,
    \mprj/c0_sr_bus_data_o[0] }));
 core1 \mprj/core1  (.i_clk(\mprj/c1_clk ),
    .i_disable(\mprj/c1_disable ),
    .i_irq(\mprj/c1_i_irq ),
    .i_mc_core_int(\mprj/c1_i_mc_core_int ),
    .i_mem_ack(\mprj/c1_i_mem_ack ),
    .i_mem_exception(\mprj/c1_i_mem_exception ),
    .i_req_data_valid(\mprj/c1_i_req_data_valid ),
    .i_rst(\mprj/c1_rst ),
    .o_c_data_page(\mprj/c1_o_c_data_page ),
    .o_c_instr_long(\mprj/c1_o_c_instr_long ),
    .o_c_instr_page(\mprj/c1_o_c_instr_page ),
    .o_icache_flush(\mprj/c1_o_icache_flush ),
    .o_mem_long(\mprj/c1_o_mem_long ),
    .o_mem_req(\mprj/c1_o_mem_req ),
    .o_mem_we(\mprj/c1_o_mem_we ),
    .o_req_active(\mprj/c1_o_req_active ),
    .o_req_ppl_submit(\mprj/c1_o_req_ppl_submit ),
    .sr_bus_we(\mprj/c1_sr_bus_we ),
    .vccd1(vdd),
    .vssd1(vss),
    .dbg_pc({\mprj/c1_dbg_pc[15] ,
    \mprj/c1_dbg_pc[14] ,
    \mprj/c1_dbg_pc[13] ,
    \mprj/c1_dbg_pc[12] ,
    \mprj/c1_dbg_pc[11] ,
    \mprj/c1_dbg_pc[10] ,
    \mprj/c1_dbg_pc[9] ,
    \mprj/c1_dbg_pc[8] ,
    \mprj/c1_dbg_pc[7] ,
    \mprj/c1_dbg_pc[6] ,
    \mprj/c1_dbg_pc[5] ,
    \mprj/c1_dbg_pc[4] ,
    \mprj/c1_dbg_pc[3] ,
    \mprj/c1_dbg_pc[2] ,
    \mprj/c1_dbg_pc[1] ,
    \mprj/c1_dbg_pc[0] }),
    .dbg_r0({\mprj/c1_dbg_r0[15] ,
    \mprj/c1_dbg_r0[14] ,
    \mprj/c1_dbg_r0[13] ,
    \mprj/c1_dbg_r0[12] ,
    \mprj/c1_dbg_r0[11] ,
    \mprj/c1_dbg_r0[10] ,
    \mprj/c1_dbg_r0[9] ,
    \mprj/c1_dbg_r0[8] ,
    \mprj/c1_dbg_r0[7] ,
    \mprj/c1_dbg_r0[6] ,
    \mprj/c1_dbg_r0[5] ,
    \mprj/c1_dbg_r0[4] ,
    \mprj/c1_dbg_r0[3] ,
    \mprj/c1_dbg_r0[2] ,
    \mprj/c1_dbg_r0[1] ,
    \mprj/c1_dbg_r0[0] }),
    .i_core_int_sreg({\mprj/c1_i_core_int_sreg[15] ,
    \mprj/c1_i_core_int_sreg[14] ,
    \mprj/c1_i_core_int_sreg[13] ,
    \mprj/c1_i_core_int_sreg[12] ,
    \mprj/c1_i_core_int_sreg[11] ,
    \mprj/c1_i_core_int_sreg[10] ,
    \mprj/c1_i_core_int_sreg[9] ,
    \mprj/c1_i_core_int_sreg[8] ,
    \mprj/c1_i_core_int_sreg[7] ,
    \mprj/c1_i_core_int_sreg[6] ,
    \mprj/c1_i_core_int_sreg[5] ,
    \mprj/c1_i_core_int_sreg[4] ,
    \mprj/c1_i_core_int_sreg[3] ,
    \mprj/c1_i_core_int_sreg[2] ,
    \mprj/c1_i_core_int_sreg[1] ,
    \mprj/c1_i_core_int_sreg[0] }),
    .i_mem_data({\mprj/c1_i_mem_data[15] ,
    \mprj/c1_i_mem_data[14] ,
    \mprj/c1_i_mem_data[13] ,
    \mprj/c1_i_mem_data[12] ,
    \mprj/c1_i_mem_data[11] ,
    \mprj/c1_i_mem_data[10] ,
    \mprj/c1_i_mem_data[9] ,
    \mprj/c1_i_mem_data[8] ,
    \mprj/c1_i_mem_data[7] ,
    \mprj/c1_i_mem_data[6] ,
    \mprj/c1_i_mem_data[5] ,
    \mprj/c1_i_mem_data[4] ,
    \mprj/c1_i_mem_data[3] ,
    \mprj/c1_i_mem_data[2] ,
    \mprj/c1_i_mem_data[1] ,
    \mprj/c1_i_mem_data[0] }),
    .i_req_data({\mprj/c1_i_req_data[31] ,
    \mprj/c1_i_req_data[30] ,
    \mprj/c1_i_req_data[29] ,
    \mprj/c1_i_req_data[28] ,
    \mprj/c1_i_req_data[27] ,
    \mprj/c1_i_req_data[26] ,
    \mprj/c1_i_req_data[25] ,
    \mprj/c1_i_req_data[24] ,
    \mprj/c1_i_req_data[23] ,
    \mprj/c1_i_req_data[22] ,
    \mprj/c1_i_req_data[21] ,
    \mprj/c1_i_req_data[20] ,
    \mprj/c1_i_req_data[19] ,
    \mprj/c1_i_req_data[18] ,
    \mprj/c1_i_req_data[17] ,
    \mprj/c1_i_req_data[16] ,
    \mprj/c1_i_req_data[15] ,
    \mprj/c1_i_req_data[14] ,
    \mprj/c1_i_req_data[13] ,
    \mprj/c1_i_req_data[12] ,
    \mprj/c1_i_req_data[11] ,
    \mprj/c1_i_req_data[10] ,
    \mprj/c1_i_req_data[9] ,
    \mprj/c1_i_req_data[8] ,
    \mprj/c1_i_req_data[7] ,
    \mprj/c1_i_req_data[6] ,
    \mprj/c1_i_req_data[5] ,
    \mprj/c1_i_req_data[4] ,
    \mprj/c1_i_req_data[3] ,
    \mprj/c1_i_req_data[2] ,
    \mprj/c1_i_req_data[1] ,
    \mprj/c1_i_req_data[0] }),
    .o_instr_long_addr({\mprj/c1_o_instr_long_addr[7] ,
    \mprj/c1_o_instr_long_addr[6] ,
    \mprj/c1_o_instr_long_addr[5] ,
    \mprj/c1_o_instr_long_addr[4] ,
    \mprj/c1_o_instr_long_addr[3] ,
    \mprj/c1_o_instr_long_addr[2] ,
    \mprj/c1_o_instr_long_addr[1] ,
    \mprj/c1_o_instr_long_addr[0] }),
    .o_mem_addr({\mprj/c1_o_mem_addr[15] ,
    \mprj/c1_o_mem_addr[14] ,
    \mprj/c1_o_mem_addr[13] ,
    \mprj/c1_o_mem_addr[12] ,
    \mprj/c1_o_mem_addr[11] ,
    \mprj/c1_o_mem_addr[10] ,
    \mprj/c1_o_mem_addr[9] ,
    \mprj/c1_o_mem_addr[8] ,
    \mprj/c1_o_mem_addr[7] ,
    \mprj/c1_o_mem_addr[6] ,
    \mprj/c1_o_mem_addr[5] ,
    \mprj/c1_o_mem_addr[4] ,
    \mprj/c1_o_mem_addr[3] ,
    \mprj/c1_o_mem_addr[2] ,
    \mprj/c1_o_mem_addr[1] ,
    \mprj/c1_o_mem_addr[0] }),
    .o_mem_addr_high({\mprj/c1_o_mem_addr_high[7] ,
    \mprj/c1_o_mem_addr_high[6] ,
    \mprj/c1_o_mem_addr_high[5] ,
    \mprj/c1_o_mem_addr_high[4] ,
    \mprj/c1_o_mem_addr_high[3] ,
    \mprj/c1_o_mem_addr_high[2] ,
    \mprj/c1_o_mem_addr_high[1] ,
    \mprj/c1_o_mem_addr_high[0] }),
    .o_mem_data({\mprj/c1_o_mem_data[15] ,
    \mprj/c1_o_mem_data[14] ,
    \mprj/c1_o_mem_data[13] ,
    \mprj/c1_o_mem_data[12] ,
    \mprj/c1_o_mem_data[11] ,
    \mprj/c1_o_mem_data[10] ,
    \mprj/c1_o_mem_data[9] ,
    \mprj/c1_o_mem_data[8] ,
    \mprj/c1_o_mem_data[7] ,
    \mprj/c1_o_mem_data[6] ,
    \mprj/c1_o_mem_data[5] ,
    \mprj/c1_o_mem_data[4] ,
    \mprj/c1_o_mem_data[3] ,
    \mprj/c1_o_mem_data[2] ,
    \mprj/c1_o_mem_data[1] ,
    \mprj/c1_o_mem_data[0] }),
    .o_mem_sel({\mprj/c1_o_mem_sel[1] ,
    \mprj/c1_o_mem_sel[0] }),
    .o_req_addr({\mprj/c1_o_req_addr[15] ,
    \mprj/c1_o_req_addr[14] ,
    \mprj/c1_o_req_addr[13] ,
    \mprj/c1_o_req_addr[12] ,
    \mprj/c1_o_req_addr[11] ,
    \mprj/c1_o_req_addr[10] ,
    \mprj/c1_o_req_addr[9] ,
    \mprj/c1_o_req_addr[8] ,
    \mprj/c1_o_req_addr[7] ,
    \mprj/c1_o_req_addr[6] ,
    \mprj/c1_o_req_addr[5] ,
    \mprj/c1_o_req_addr[4] ,
    \mprj/c1_o_req_addr[3] ,
    \mprj/c1_o_req_addr[2] ,
    \mprj/c1_o_req_addr[1] ,
    \mprj/c1_o_req_addr[0] }),
    .sr_bus_addr({\mprj/c1_sr_bus_addr[15] ,
    \mprj/c1_sr_bus_addr[14] ,
    \mprj/c1_sr_bus_addr[13] ,
    \mprj/c1_sr_bus_addr[12] ,
    \mprj/c1_sr_bus_addr[11] ,
    \mprj/c1_sr_bus_addr[10] ,
    \mprj/c1_sr_bus_addr[9] ,
    \mprj/c1_sr_bus_addr[8] ,
    \mprj/c1_sr_bus_addr[7] ,
    \mprj/c1_sr_bus_addr[6] ,
    \mprj/c1_sr_bus_addr[5] ,
    \mprj/c1_sr_bus_addr[4] ,
    \mprj/c1_sr_bus_addr[3] ,
    \mprj/c1_sr_bus_addr[2] ,
    \mprj/c1_sr_bus_addr[1] ,
    \mprj/c1_sr_bus_addr[0] }),
    .sr_bus_data_o({\mprj/c1_sr_bus_data_o[15] ,
    \mprj/c1_sr_bus_data_o[14] ,
    \mprj/c1_sr_bus_data_o[13] ,
    \mprj/c1_sr_bus_data_o[12] ,
    \mprj/c1_sr_bus_data_o[11] ,
    \mprj/c1_sr_bus_data_o[10] ,
    \mprj/c1_sr_bus_data_o[9] ,
    \mprj/c1_sr_bus_data_o[8] ,
    \mprj/c1_sr_bus_data_o[7] ,
    \mprj/c1_sr_bus_data_o[6] ,
    \mprj/c1_sr_bus_data_o[5] ,
    \mprj/c1_sr_bus_data_o[4] ,
    \mprj/c1_sr_bus_data_o[3] ,
    \mprj/c1_sr_bus_data_o[2] ,
    \mprj/c1_sr_bus_data_o[1] ,
    \mprj/c1_sr_bus_data_o[0] }));
 dcache \mprj/dcache  (.i_clk(\mprj/dcache_clk ),
    .i_rst(\mprj/dcache_rst ),
    .mem_ack(\mprj/dcache_mem_ack ),
    .mem_cache_enable(\mprj/dcache_mem_cache_enable ),
    .mem_exception(\mprj/dcache_mem_exception ),
    .mem_req(\mprj/dcache_mem_req ),
    .mem_we(\mprj/dcache_mem_we ),
    .vccd1(vdd),
    .vssd1(vss),
    .wb_4_burst(\mprj/dcache_wb_4_burst ),
    .wb_ack(\mprj/dcache_wb_ack ),
    .wb_cyc(\mprj/dcache_wb_cyc ),
    .wb_err(\mprj/dcache_wb_err ),
    .wb_stb(\mprj/dcache_wb_stb ),
    .wb_we(\mprj/dcache_wb_we ),
    .mem_addr({\mprj/dcache_mem_addr[23] ,
    \mprj/dcache_mem_addr[22] ,
    \mprj/dcache_mem_addr[21] ,
    \mprj/dcache_mem_addr[20] ,
    \mprj/dcache_mem_addr[19] ,
    \mprj/dcache_mem_addr[18] ,
    \mprj/dcache_mem_addr[17] ,
    \mprj/dcache_mem_addr[16] ,
    \mprj/dcache_mem_addr[15] ,
    \mprj/dcache_mem_addr[14] ,
    \mprj/dcache_mem_addr[13] ,
    \mprj/dcache_mem_addr[12] ,
    \mprj/dcache_mem_addr[11] ,
    \mprj/dcache_mem_addr[10] ,
    \mprj/dcache_mem_addr[9] ,
    \mprj/dcache_mem_addr[8] ,
    \mprj/dcache_mem_addr[7] ,
    \mprj/dcache_mem_addr[6] ,
    \mprj/dcache_mem_addr[5] ,
    \mprj/dcache_mem_addr[4] ,
    \mprj/dcache_mem_addr[3] ,
    \mprj/dcache_mem_addr[2] ,
    \mprj/dcache_mem_addr[1] ,
    \mprj/dcache_mem_addr[0] }),
    .mem_i_data({\mprj/dcache_mem_i_data[15] ,
    \mprj/dcache_mem_i_data[14] ,
    \mprj/dcache_mem_i_data[13] ,
    \mprj/dcache_mem_i_data[12] ,
    \mprj/dcache_mem_i_data[11] ,
    \mprj/dcache_mem_i_data[10] ,
    \mprj/dcache_mem_i_data[9] ,
    \mprj/dcache_mem_i_data[8] ,
    \mprj/dcache_mem_i_data[7] ,
    \mprj/dcache_mem_i_data[6] ,
    \mprj/dcache_mem_i_data[5] ,
    \mprj/dcache_mem_i_data[4] ,
    \mprj/dcache_mem_i_data[3] ,
    \mprj/dcache_mem_i_data[2] ,
    \mprj/dcache_mem_i_data[1] ,
    \mprj/dcache_mem_i_data[0] }),
    .mem_o_data({\mprj/dcache_mem_o_data[15] ,
    \mprj/dcache_mem_o_data[14] ,
    \mprj/dcache_mem_o_data[13] ,
    \mprj/dcache_mem_o_data[12] ,
    \mprj/dcache_mem_o_data[11] ,
    \mprj/dcache_mem_o_data[10] ,
    \mprj/dcache_mem_o_data[9] ,
    \mprj/dcache_mem_o_data[8] ,
    \mprj/dcache_mem_o_data[7] ,
    \mprj/dcache_mem_o_data[6] ,
    \mprj/dcache_mem_o_data[5] ,
    \mprj/dcache_mem_o_data[4] ,
    \mprj/dcache_mem_o_data[3] ,
    \mprj/dcache_mem_o_data[2] ,
    \mprj/dcache_mem_o_data[1] ,
    \mprj/dcache_mem_o_data[0] }),
    .mem_sel({\mprj/dcache_mem_sel[1] ,
    \mprj/dcache_mem_sel[0] }),
    .wb_adr({\mprj/dcache_wb_adr[23] ,
    \mprj/dcache_wb_adr[22] ,
    \mprj/dcache_wb_adr[21] ,
    \mprj/dcache_wb_adr[20] ,
    \mprj/dcache_wb_adr[19] ,
    \mprj/dcache_wb_adr[18] ,
    \mprj/dcache_wb_adr[17] ,
    \mprj/dcache_wb_adr[16] ,
    \mprj/dcache_wb_adr[15] ,
    \mprj/dcache_wb_adr[14] ,
    \mprj/dcache_wb_adr[13] ,
    \mprj/dcache_wb_adr[12] ,
    \mprj/dcache_wb_adr[11] ,
    \mprj/dcache_wb_adr[10] ,
    \mprj/dcache_wb_adr[9] ,
    \mprj/dcache_wb_adr[8] ,
    \mprj/dcache_wb_adr[7] ,
    \mprj/dcache_wb_adr[6] ,
    \mprj/dcache_wb_adr[5] ,
    \mprj/dcache_wb_adr[4] ,
    \mprj/dcache_wb_adr[3] ,
    \mprj/dcache_wb_adr[2] ,
    \mprj/dcache_wb_adr[1] ,
    \mprj/dcache_wb_adr[0] }),
    .wb_i_dat({\mprj/dcache_wb_i_dat[15] ,
    \mprj/dcache_wb_i_dat[14] ,
    \mprj/dcache_wb_i_dat[13] ,
    \mprj/dcache_wb_i_dat[12] ,
    \mprj/dcache_wb_i_dat[11] ,
    \mprj/dcache_wb_i_dat[10] ,
    \mprj/dcache_wb_i_dat[9] ,
    \mprj/dcache_wb_i_dat[8] ,
    \mprj/dcache_wb_i_dat[7] ,
    \mprj/dcache_wb_i_dat[6] ,
    \mprj/dcache_wb_i_dat[5] ,
    \mprj/dcache_wb_i_dat[4] ,
    \mprj/dcache_wb_i_dat[3] ,
    \mprj/dcache_wb_i_dat[2] ,
    \mprj/dcache_wb_i_dat[1] ,
    \mprj/dcache_wb_i_dat[0] }),
    .wb_o_dat({\mprj/dcache_wb_o_dat[15] ,
    \mprj/dcache_wb_o_dat[14] ,
    \mprj/dcache_wb_o_dat[13] ,
    \mprj/dcache_wb_o_dat[12] ,
    \mprj/dcache_wb_o_dat[11] ,
    \mprj/dcache_wb_o_dat[10] ,
    \mprj/dcache_wb_o_dat[9] ,
    \mprj/dcache_wb_o_dat[8] ,
    \mprj/dcache_wb_o_dat[7] ,
    \mprj/dcache_wb_o_dat[6] ,
    \mprj/dcache_wb_o_dat[5] ,
    \mprj/dcache_wb_o_dat[4] ,
    \mprj/dcache_wb_o_dat[3] ,
    \mprj/dcache_wb_o_dat[2] ,
    \mprj/dcache_wb_o_dat[1] ,
    \mprj/dcache_wb_o_dat[0] }),
    .wb_sel({\mprj/dcache_wb_sel[1] ,
    \mprj/dcache_wb_sel[0] }));
 icache \mprj/icache_0  (.i_clk(\mprj/ic0_clk ),
    .i_rst(\mprj/ic0_rst ),
    .mem_ack(\mprj/ic0_mem_ack ),
    .mem_cache_flush(\mprj/ic0_mem_cache_flush ),
    .mem_ppl_submit(\mprj/ic0_mem_ppl_submit ),
    .mem_req(\mprj/ic0_mem_req ),
    .vccd1(vdd),
    .vssd1(vss),
    .wb_ack(\mprj/ic0_wb_ack ),
    .wb_cyc(\mprj/ic0_wb_cyc ),
    .wb_err(\mprj/ic0_wb_err ),
    .wb_stb(\mprj/ic0_wb_stb ),
    .wb_we(\mprj/ic0_wb_we ),
    .mem_addr({\mprj/ic0_mem_addr[15] ,
    \mprj/ic0_mem_addr[14] ,
    \mprj/ic0_mem_addr[13] ,
    \mprj/ic0_mem_addr[12] ,
    \mprj/ic0_mem_addr[11] ,
    \mprj/ic0_mem_addr[10] ,
    \mprj/ic0_mem_addr[9] ,
    \mprj/ic0_mem_addr[8] ,
    \mprj/ic0_mem_addr[7] ,
    \mprj/ic0_mem_addr[6] ,
    \mprj/ic0_mem_addr[5] ,
    \mprj/ic0_mem_addr[4] ,
    \mprj/ic0_mem_addr[3] ,
    \mprj/ic0_mem_addr[2] ,
    \mprj/ic0_mem_addr[1] ,
    \mprj/ic0_mem_addr[0] }),
    .mem_data({\mprj/ic0_mem_data[31] ,
    \mprj/ic0_mem_data[30] ,
    \mprj/ic0_mem_data[29] ,
    \mprj/ic0_mem_data[28] ,
    \mprj/ic0_mem_data[27] ,
    \mprj/ic0_mem_data[26] ,
    \mprj/ic0_mem_data[25] ,
    \mprj/ic0_mem_data[24] ,
    \mprj/ic0_mem_data[23] ,
    \mprj/ic0_mem_data[22] ,
    \mprj/ic0_mem_data[21] ,
    \mprj/ic0_mem_data[20] ,
    \mprj/ic0_mem_data[19] ,
    \mprj/ic0_mem_data[18] ,
    \mprj/ic0_mem_data[17] ,
    \mprj/ic0_mem_data[16] ,
    \mprj/ic0_mem_data[15] ,
    \mprj/ic0_mem_data[14] ,
    \mprj/ic0_mem_data[13] ,
    \mprj/ic0_mem_data[12] ,
    \mprj/ic0_mem_data[11] ,
    \mprj/ic0_mem_data[10] ,
    \mprj/ic0_mem_data[9] ,
    \mprj/ic0_mem_data[8] ,
    \mprj/ic0_mem_data[7] ,
    \mprj/ic0_mem_data[6] ,
    \mprj/ic0_mem_data[5] ,
    \mprj/ic0_mem_data[4] ,
    \mprj/ic0_mem_data[3] ,
    \mprj/ic0_mem_data[2] ,
    \mprj/ic0_mem_data[1] ,
    \mprj/ic0_mem_data[0] }),
    .wb_adr({\mprj/ic0_wb_adr[15] ,
    \mprj/ic0_wb_adr[14] ,
    \mprj/ic0_wb_adr[13] ,
    \mprj/ic0_wb_adr[12] ,
    \mprj/ic0_wb_adr[11] ,
    \mprj/ic0_wb_adr[10] ,
    \mprj/ic0_wb_adr[9] ,
    \mprj/ic0_wb_adr[8] ,
    \mprj/ic0_wb_adr[7] ,
    \mprj/ic0_wb_adr[6] ,
    \mprj/ic0_wb_adr[5] ,
    \mprj/ic0_wb_adr[4] ,
    \mprj/ic0_wb_adr[3] ,
    \mprj/ic0_wb_adr[2] ,
    \mprj/ic0_wb_adr[1] ,
    \mprj/ic0_wb_adr[0] }),
    .wb_i_dat({\mprj/ic0_wb_i_dat[15] ,
    \mprj/ic0_wb_i_dat[14] ,
    \mprj/ic0_wb_i_dat[13] ,
    \mprj/ic0_wb_i_dat[12] ,
    \mprj/ic0_wb_i_dat[11] ,
    \mprj/ic0_wb_i_dat[10] ,
    \mprj/ic0_wb_i_dat[9] ,
    \mprj/ic0_wb_i_dat[8] ,
    \mprj/ic0_wb_i_dat[7] ,
    \mprj/ic0_wb_i_dat[6] ,
    \mprj/ic0_wb_i_dat[5] ,
    \mprj/ic0_wb_i_dat[4] ,
    \mprj/ic0_wb_i_dat[3] ,
    \mprj/ic0_wb_i_dat[2] ,
    \mprj/ic0_wb_i_dat[1] ,
    \mprj/ic0_wb_i_dat[0] }),
    .wb_sel({\mprj/ic0_wb_sel[1] ,
    \mprj/ic0_wb_sel[0] }));
 icache \mprj/icache_1  (.i_clk(\mprj/ic1_clk ),
    .i_rst(\mprj/ic1_rst ),
    .mem_ack(\mprj/ic1_mem_ack ),
    .mem_cache_flush(\mprj/ic1_mem_cache_flush ),
    .mem_ppl_submit(\mprj/ic1_mem_ppl_submit ),
    .mem_req(\mprj/ic1_mem_req ),
    .vccd1(vdd),
    .vssd1(vss),
    .wb_ack(\mprj/ic1_wb_ack ),
    .wb_cyc(\mprj/ic1_wb_cyc ),
    .wb_err(\mprj/ic1_wb_err ),
    .wb_stb(\mprj/ic1_wb_stb ),
    .wb_we(\mprj/ic1_wb_we ),
    .mem_addr({\mprj/ic1_mem_addr[15] ,
    \mprj/ic1_mem_addr[14] ,
    \mprj/ic1_mem_addr[13] ,
    \mprj/ic1_mem_addr[12] ,
    \mprj/ic1_mem_addr[11] ,
    \mprj/ic1_mem_addr[10] ,
    \mprj/ic1_mem_addr[9] ,
    \mprj/ic1_mem_addr[8] ,
    \mprj/ic1_mem_addr[7] ,
    \mprj/ic1_mem_addr[6] ,
    \mprj/ic1_mem_addr[5] ,
    \mprj/ic1_mem_addr[4] ,
    \mprj/ic1_mem_addr[3] ,
    \mprj/ic1_mem_addr[2] ,
    \mprj/ic1_mem_addr[1] ,
    \mprj/ic1_mem_addr[0] }),
    .mem_data({\mprj/ic1_mem_data[31] ,
    \mprj/ic1_mem_data[30] ,
    \mprj/ic1_mem_data[29] ,
    \mprj/ic1_mem_data[28] ,
    \mprj/ic1_mem_data[27] ,
    \mprj/ic1_mem_data[26] ,
    \mprj/ic1_mem_data[25] ,
    \mprj/ic1_mem_data[24] ,
    \mprj/ic1_mem_data[23] ,
    \mprj/ic1_mem_data[22] ,
    \mprj/ic1_mem_data[21] ,
    \mprj/ic1_mem_data[20] ,
    \mprj/ic1_mem_data[19] ,
    \mprj/ic1_mem_data[18] ,
    \mprj/ic1_mem_data[17] ,
    \mprj/ic1_mem_data[16] ,
    \mprj/ic1_mem_data[15] ,
    \mprj/ic1_mem_data[14] ,
    \mprj/ic1_mem_data[13] ,
    \mprj/ic1_mem_data[12] ,
    \mprj/ic1_mem_data[11] ,
    \mprj/ic1_mem_data[10] ,
    \mprj/ic1_mem_data[9] ,
    \mprj/ic1_mem_data[8] ,
    \mprj/ic1_mem_data[7] ,
    \mprj/ic1_mem_data[6] ,
    \mprj/ic1_mem_data[5] ,
    \mprj/ic1_mem_data[4] ,
    \mprj/ic1_mem_data[3] ,
    \mprj/ic1_mem_data[2] ,
    \mprj/ic1_mem_data[1] ,
    \mprj/ic1_mem_data[0] }),
    .wb_adr({\mprj/ic1_wb_adr[15] ,
    \mprj/ic1_wb_adr[14] ,
    \mprj/ic1_wb_adr[13] ,
    \mprj/ic1_wb_adr[12] ,
    \mprj/ic1_wb_adr[11] ,
    \mprj/ic1_wb_adr[10] ,
    \mprj/ic1_wb_adr[9] ,
    \mprj/ic1_wb_adr[8] ,
    \mprj/ic1_wb_adr[7] ,
    \mprj/ic1_wb_adr[6] ,
    \mprj/ic1_wb_adr[5] ,
    \mprj/ic1_wb_adr[4] ,
    \mprj/ic1_wb_adr[3] ,
    \mprj/ic1_wb_adr[2] ,
    \mprj/ic1_wb_adr[1] ,
    \mprj/ic1_wb_adr[0] }),
    .wb_i_dat({\mprj/ic1_wb_i_dat[15] ,
    \mprj/ic1_wb_i_dat[14] ,
    \mprj/ic1_wb_i_dat[13] ,
    \mprj/ic1_wb_i_dat[12] ,
    \mprj/ic1_wb_i_dat[11] ,
    \mprj/ic1_wb_i_dat[10] ,
    \mprj/ic1_wb_i_dat[9] ,
    \mprj/ic1_wb_i_dat[8] ,
    \mprj/ic1_wb_i_dat[7] ,
    \mprj/ic1_wb_i_dat[6] ,
    \mprj/ic1_wb_i_dat[5] ,
    \mprj/ic1_wb_i_dat[4] ,
    \mprj/ic1_wb_i_dat[3] ,
    \mprj/ic1_wb_i_dat[2] ,
    \mprj/ic1_wb_i_dat[1] ,
    \mprj/ic1_wb_i_dat[0] }),
    .wb_sel({\mprj/ic1_wb_sel[1] ,
    \mprj/ic1_wb_sel[0] }));
 int_ram \mprj/int_ram  (.i_clk(\mprj/iram_clk ),
    .i_we(\mprj/iram_we ),
    .vccd1(vdd),
    .vssd1(vss),
    .i_addr({\mprj/iram_addr[5] ,
    \mprj/iram_addr[4] ,
    \mprj/iram_addr[3] ,
    \mprj/iram_addr[2] ,
    \mprj/iram_addr[1] ,
    \mprj/iram_addr[0] }),
    .i_data({\mprj/iram_i_data[15] ,
    \mprj/iram_i_data[14] ,
    \mprj/iram_i_data[13] ,
    \mprj/iram_i_data[12] ,
    \mprj/iram_i_data[11] ,
    \mprj/iram_i_data[10] ,
    \mprj/iram_i_data[9] ,
    \mprj/iram_i_data[8] ,
    \mprj/iram_i_data[7] ,
    \mprj/iram_i_data[6] ,
    \mprj/iram_i_data[5] ,
    \mprj/iram_i_data[4] ,
    \mprj/iram_i_data[3] ,
    \mprj/iram_i_data[2] ,
    \mprj/iram_i_data[1] ,
    \mprj/iram_i_data[0] }),
    .o_data({\mprj/iram_o_data[15] ,
    \mprj/iram_o_data[14] ,
    \mprj/iram_o_data[13] ,
    \mprj/iram_o_data[12] ,
    \mprj/iram_o_data[11] ,
    \mprj/iram_o_data[10] ,
    \mprj/iram_o_data[9] ,
    \mprj/iram_o_data[8] ,
    \mprj/iram_o_data[7] ,
    \mprj/iram_o_data[6] ,
    \mprj/iram_o_data[5] ,
    \mprj/iram_o_data[4] ,
    \mprj/iram_o_data[3] ,
    \mprj/iram_o_data[2] ,
    \mprj/iram_o_data[1] ,
    \mprj/iram_o_data[0] }));
 interconnect_inner \mprj/interconnect_inner  (.c0_disable(\mprj/c0_disable ),
    .c0_i_irq(\mprj/c0_i_irq ),
    .c0_i_mc_core_int(\mprj/c0_i_mc_core_int ),
    .c0_i_mem_ack(\mprj/c0_i_mem_ack ),
    .c0_i_mem_exception(\mprj/c0_i_mem_exception ),
    .c0_i_req_data_valid(\mprj/c0_i_req_data_valid ),
    .c0_o_c_data_page(\mprj/c0_o_c_data_page ),
    .c0_o_c_instr_long(\mprj/c0_o_c_instr_long ),
    .c0_o_c_instr_page(\mprj/c0_o_c_instr_page ),
    .c0_o_icache_flush(\mprj/c0_o_icache_flush ),
    .c0_o_mem_long_mode(\mprj/c0_o_mem_long ),
    .c0_o_mem_req(\mprj/c0_o_mem_req ),
    .c0_o_mem_we(\mprj/c0_o_mem_we ),
    .c0_o_req_active(\mprj/c0_o_req_active ),
    .c0_o_req_ppl_submit(\mprj/c0_o_req_ppl_submit ),
    .c0_rst(\mprj/c0_rst ),
    .c0_sr_bus_we(\mprj/c0_sr_bus_we ),
    .c1_disable(\mprj/c1_disable ),
    .c1_i_irq(\mprj/c1_i_irq ),
    .c1_i_mc_core_int(\mprj/c1_i_mc_core_int ),
    .c1_i_mem_ack(\mprj/c1_i_mem_ack ),
    .c1_i_mem_exception(\mprj/c1_i_mem_exception ),
    .c1_i_req_data_valid(\mprj/c1_i_req_data_valid ),
    .c1_o_c_data_page(\mprj/c1_o_c_data_page ),
    .c1_o_c_instr_long(\mprj/c1_o_c_instr_long ),
    .c1_o_c_instr_page(\mprj/c1_o_c_instr_page ),
    .c1_o_icache_flush(\mprj/c1_o_icache_flush ),
    .c1_o_mem_long_mode(\mprj/c1_o_mem_long ),
    .c1_o_mem_req(\mprj/c1_o_mem_req ),
    .c1_o_mem_we(\mprj/c1_o_mem_we ),
    .c1_o_req_active(\mprj/c1_o_req_active ),
    .c1_o_req_ppl_submit(\mprj/c1_o_req_ppl_submit ),
    .c1_rst(\mprj/c1_rst ),
    .c1_sr_bus_we(\mprj/c1_sr_bus_we ),
    .core_clock(\mprj/inner_clock ),
    .core_reset(\mprj/inner_reset ),
    .dcache_mem_ack(\mprj/dcache_mem_ack ),
    .dcache_mem_cache_enable(\mprj/dcache_mem_cache_enable ),
    .dcache_mem_exception(\mprj/dcache_mem_exception ),
    .dcache_mem_req(\mprj/dcache_mem_req ),
    .dcache_mem_we(\mprj/dcache_mem_we ),
    .dcache_rst(\mprj/dcache_rst ),
    .dcache_wb_4_burst(\mprj/dcache_wb_4_burst ),
    .dcache_wb_ack(\mprj/dcache_wb_ack ),
    .dcache_wb_cyc(\mprj/dcache_wb_cyc ),
    .dcache_wb_err(\mprj/dcache_wb_err ),
    .dcache_wb_stb(\mprj/dcache_wb_stb ),
    .dcache_wb_we(\mprj/dcache_wb_we ),
    .ic0_mem_ack(\mprj/ic0_mem_ack ),
    .ic0_mem_cache_flush(\mprj/ic0_mem_cache_flush ),
    .ic0_mem_ppl_submit(\mprj/ic0_mem_ppl_submit ),
    .ic0_mem_req(\mprj/ic0_mem_req ),
    .ic0_rst(\mprj/ic0_rst ),
    .ic0_wb_ack(\mprj/ic0_wb_ack ),
    .ic0_wb_cyc(\mprj/ic0_wb_cyc ),
    .ic0_wb_err(\mprj/ic0_wb_err ),
    .ic0_wb_stb(\mprj/ic0_wb_stb ),
    .ic0_wb_we(\mprj/ic0_wb_we ),
    .ic1_mem_ack(\mprj/ic1_mem_ack ),
    .ic1_mem_cache_flush(\mprj/ic1_mem_cache_flush ),
    .ic1_mem_ppl_submit(\mprj/ic1_mem_ppl_submit ),
    .ic1_mem_req(\mprj/ic1_mem_req ),
    .ic1_rst(\mprj/ic1_rst ),
    .ic1_wb_ack(\mprj/ic1_wb_ack ),
    .ic1_wb_cyc(\mprj/ic1_wb_cyc ),
    .ic1_wb_err(\mprj/ic1_wb_err ),
    .ic1_wb_stb(\mprj/ic1_wb_stb ),
    .ic1_wb_we(\mprj/ic1_wb_we ),
    .inner_disable(\mprj/inner_disable ),
    .inner_embed_mode(\mprj/inner_embed_mode ),
    .inner_ext_irq(\mprj/inner_ext_irq ),
    .inner_wb_4_burst(\mprj/inner_wb_4_burst ),
    .inner_wb_8_burst(\mprj/inner_wb_8_burst ),
    .inner_wb_ack(\mprj/inner_wb_ack ),
    .inner_wb_cyc(\mprj/inner_wb_cyc ),
    .inner_wb_err(\mprj/inner_wb_err ),
    .inner_wb_stb(\mprj/inner_wb_stb ),
    .inner_wb_we(\mprj/inner_wb_we ),
    .vccd1(vdd),
    .vssd1(vss),
    .c0_dbg_pc({\mprj/c0_dbg_pc[15] ,
    \mprj/c0_dbg_pc[14] ,
    \mprj/c0_dbg_pc[13] ,
    \mprj/c0_dbg_pc[12] ,
    \mprj/c0_dbg_pc[11] ,
    \mprj/c0_dbg_pc[10] ,
    \mprj/c0_dbg_pc[9] ,
    \mprj/c0_dbg_pc[8] ,
    \mprj/c0_dbg_pc[7] ,
    \mprj/c0_dbg_pc[6] ,
    \mprj/c0_dbg_pc[5] ,
    \mprj/c0_dbg_pc[4] ,
    \mprj/c0_dbg_pc[3] ,
    \mprj/c0_dbg_pc[2] ,
    \mprj/c0_dbg_pc[1] ,
    \mprj/c0_dbg_pc[0] }),
    .c0_dbg_r0({\mprj/c0_dbg_r0[15] ,
    \mprj/c0_dbg_r0[14] ,
    \mprj/c0_dbg_r0[13] ,
    \mprj/c0_dbg_r0[12] ,
    \mprj/c0_dbg_r0[11] ,
    \mprj/c0_dbg_r0[10] ,
    \mprj/c0_dbg_r0[9] ,
    \mprj/c0_dbg_r0[8] ,
    \mprj/c0_dbg_r0[7] ,
    \mprj/c0_dbg_r0[6] ,
    \mprj/c0_dbg_r0[5] ,
    \mprj/c0_dbg_r0[4] ,
    \mprj/c0_dbg_r0[3] ,
    \mprj/c0_dbg_r0[2] ,
    \mprj/c0_dbg_r0[1] ,
    \mprj/c0_dbg_r0[0] }),
    .c0_i_core_int_sreg({\mprj/c0_i_core_int_sreg[15] ,
    \mprj/c0_i_core_int_sreg[14] ,
    \mprj/c0_i_core_int_sreg[13] ,
    \mprj/c0_i_core_int_sreg[12] ,
    \mprj/c0_i_core_int_sreg[11] ,
    \mprj/c0_i_core_int_sreg[10] ,
    \mprj/c0_i_core_int_sreg[9] ,
    \mprj/c0_i_core_int_sreg[8] ,
    \mprj/c0_i_core_int_sreg[7] ,
    \mprj/c0_i_core_int_sreg[6] ,
    \mprj/c0_i_core_int_sreg[5] ,
    \mprj/c0_i_core_int_sreg[4] ,
    \mprj/c0_i_core_int_sreg[3] ,
    \mprj/c0_i_core_int_sreg[2] ,
    \mprj/c0_i_core_int_sreg[1] ,
    \mprj/c0_i_core_int_sreg[0] }),
    .c0_i_mem_data({\mprj/c0_i_mem_data[15] ,
    \mprj/c0_i_mem_data[14] ,
    \mprj/c0_i_mem_data[13] ,
    \mprj/c0_i_mem_data[12] ,
    \mprj/c0_i_mem_data[11] ,
    \mprj/c0_i_mem_data[10] ,
    \mprj/c0_i_mem_data[9] ,
    \mprj/c0_i_mem_data[8] ,
    \mprj/c0_i_mem_data[7] ,
    \mprj/c0_i_mem_data[6] ,
    \mprj/c0_i_mem_data[5] ,
    \mprj/c0_i_mem_data[4] ,
    \mprj/c0_i_mem_data[3] ,
    \mprj/c0_i_mem_data[2] ,
    \mprj/c0_i_mem_data[1] ,
    \mprj/c0_i_mem_data[0] }),
    .c0_i_req_data({\mprj/c0_i_req_data[31] ,
    \mprj/c0_i_req_data[30] ,
    \mprj/c0_i_req_data[29] ,
    \mprj/c0_i_req_data[28] ,
    \mprj/c0_i_req_data[27] ,
    \mprj/c0_i_req_data[26] ,
    \mprj/c0_i_req_data[25] ,
    \mprj/c0_i_req_data[24] ,
    \mprj/c0_i_req_data[23] ,
    \mprj/c0_i_req_data[22] ,
    \mprj/c0_i_req_data[21] ,
    \mprj/c0_i_req_data[20] ,
    \mprj/c0_i_req_data[19] ,
    \mprj/c0_i_req_data[18] ,
    \mprj/c0_i_req_data[17] ,
    \mprj/c0_i_req_data[16] ,
    \mprj/c0_i_req_data[15] ,
    \mprj/c0_i_req_data[14] ,
    \mprj/c0_i_req_data[13] ,
    \mprj/c0_i_req_data[12] ,
    \mprj/c0_i_req_data[11] ,
    \mprj/c0_i_req_data[10] ,
    \mprj/c0_i_req_data[9] ,
    \mprj/c0_i_req_data[8] ,
    \mprj/c0_i_req_data[7] ,
    \mprj/c0_i_req_data[6] ,
    \mprj/c0_i_req_data[5] ,
    \mprj/c0_i_req_data[4] ,
    \mprj/c0_i_req_data[3] ,
    \mprj/c0_i_req_data[2] ,
    \mprj/c0_i_req_data[1] ,
    \mprj/c0_i_req_data[0] }),
    .c0_o_instr_long_addr({\mprj/c0_o_instr_long_addr[7] ,
    \mprj/c0_o_instr_long_addr[6] ,
    \mprj/c0_o_instr_long_addr[5] ,
    \mprj/c0_o_instr_long_addr[4] ,
    \mprj/c0_o_instr_long_addr[3] ,
    \mprj/c0_o_instr_long_addr[2] ,
    \mprj/c0_o_instr_long_addr[1] ,
    \mprj/c0_o_instr_long_addr[0] }),
    .c0_o_mem_addr({\mprj/c0_o_mem_addr[15] ,
    \mprj/c0_o_mem_addr[14] ,
    \mprj/c0_o_mem_addr[13] ,
    \mprj/c0_o_mem_addr[12] ,
    \mprj/c0_o_mem_addr[11] ,
    \mprj/c0_o_mem_addr[10] ,
    \mprj/c0_o_mem_addr[9] ,
    \mprj/c0_o_mem_addr[8] ,
    \mprj/c0_o_mem_addr[7] ,
    \mprj/c0_o_mem_addr[6] ,
    \mprj/c0_o_mem_addr[5] ,
    \mprj/c0_o_mem_addr[4] ,
    \mprj/c0_o_mem_addr[3] ,
    \mprj/c0_o_mem_addr[2] ,
    \mprj/c0_o_mem_addr[1] ,
    \mprj/c0_o_mem_addr[0] }),
    .c0_o_mem_data({\mprj/c0_o_mem_data[15] ,
    \mprj/c0_o_mem_data[14] ,
    \mprj/c0_o_mem_data[13] ,
    \mprj/c0_o_mem_data[12] ,
    \mprj/c0_o_mem_data[11] ,
    \mprj/c0_o_mem_data[10] ,
    \mprj/c0_o_mem_data[9] ,
    \mprj/c0_o_mem_data[8] ,
    \mprj/c0_o_mem_data[7] ,
    \mprj/c0_o_mem_data[6] ,
    \mprj/c0_o_mem_data[5] ,
    \mprj/c0_o_mem_data[4] ,
    \mprj/c0_o_mem_data[3] ,
    \mprj/c0_o_mem_data[2] ,
    \mprj/c0_o_mem_data[1] ,
    \mprj/c0_o_mem_data[0] }),
    .c0_o_mem_high_addr({\mprj/c0_o_mem_addr_high[7] ,
    \mprj/c0_o_mem_addr_high[6] ,
    \mprj/c0_o_mem_addr_high[5] ,
    \mprj/c0_o_mem_addr_high[4] ,
    \mprj/c0_o_mem_addr_high[3] ,
    \mprj/c0_o_mem_addr_high[2] ,
    \mprj/c0_o_mem_addr_high[1] ,
    \mprj/c0_o_mem_addr_high[0] }),
    .c0_o_mem_sel({\mprj/c0_o_mem_sel[1] ,
    \mprj/c0_o_mem_sel[0] }),
    .c0_o_req_addr({\mprj/c0_o_req_addr[15] ,
    \mprj/c0_o_req_addr[14] ,
    \mprj/c0_o_req_addr[13] ,
    \mprj/c0_o_req_addr[12] ,
    \mprj/c0_o_req_addr[11] ,
    \mprj/c0_o_req_addr[10] ,
    \mprj/c0_o_req_addr[9] ,
    \mprj/c0_o_req_addr[8] ,
    \mprj/c0_o_req_addr[7] ,
    \mprj/c0_o_req_addr[6] ,
    \mprj/c0_o_req_addr[5] ,
    \mprj/c0_o_req_addr[4] ,
    \mprj/c0_o_req_addr[3] ,
    \mprj/c0_o_req_addr[2] ,
    \mprj/c0_o_req_addr[1] ,
    \mprj/c0_o_req_addr[0] }),
    .c0_sr_bus_addr({\mprj/c0_sr_bus_addr[15] ,
    \mprj/c0_sr_bus_addr[14] ,
    \mprj/c0_sr_bus_addr[13] ,
    \mprj/c0_sr_bus_addr[12] ,
    \mprj/c0_sr_bus_addr[11] ,
    \mprj/c0_sr_bus_addr[10] ,
    \mprj/c0_sr_bus_addr[9] ,
    \mprj/c0_sr_bus_addr[8] ,
    \mprj/c0_sr_bus_addr[7] ,
    \mprj/c0_sr_bus_addr[6] ,
    \mprj/c0_sr_bus_addr[5] ,
    \mprj/c0_sr_bus_addr[4] ,
    \mprj/c0_sr_bus_addr[3] ,
    \mprj/c0_sr_bus_addr[2] ,
    \mprj/c0_sr_bus_addr[1] ,
    \mprj/c0_sr_bus_addr[0] }),
    .c0_sr_bus_data_o({\mprj/c0_sr_bus_data_o[15] ,
    \mprj/c0_sr_bus_data_o[14] ,
    \mprj/c0_sr_bus_data_o[13] ,
    \mprj/c0_sr_bus_data_o[12] ,
    \mprj/c0_sr_bus_data_o[11] ,
    \mprj/c0_sr_bus_data_o[10] ,
    \mprj/c0_sr_bus_data_o[9] ,
    \mprj/c0_sr_bus_data_o[8] ,
    \mprj/c0_sr_bus_data_o[7] ,
    \mprj/c0_sr_bus_data_o[6] ,
    \mprj/c0_sr_bus_data_o[5] ,
    \mprj/c0_sr_bus_data_o[4] ,
    \mprj/c0_sr_bus_data_o[3] ,
    \mprj/c0_sr_bus_data_o[2] ,
    \mprj/c0_sr_bus_data_o[1] ,
    \mprj/c0_sr_bus_data_o[0] }),
    .c1_dbg_pc({\mprj/c1_dbg_pc[15] ,
    \mprj/c1_dbg_pc[14] ,
    \mprj/c1_dbg_pc[13] ,
    \mprj/c1_dbg_pc[12] ,
    \mprj/c1_dbg_pc[11] ,
    \mprj/c1_dbg_pc[10] ,
    \mprj/c1_dbg_pc[9] ,
    \mprj/c1_dbg_pc[8] ,
    \mprj/c1_dbg_pc[7] ,
    \mprj/c1_dbg_pc[6] ,
    \mprj/c1_dbg_pc[5] ,
    \mprj/c1_dbg_pc[4] ,
    \mprj/c1_dbg_pc[3] ,
    \mprj/c1_dbg_pc[2] ,
    \mprj/c1_dbg_pc[1] ,
    \mprj/c1_dbg_pc[0] }),
    .c1_dbg_r0({\mprj/c1_dbg_r0[15] ,
    \mprj/c1_dbg_r0[14] ,
    \mprj/c1_dbg_r0[13] ,
    \mprj/c1_dbg_r0[12] ,
    \mprj/c1_dbg_r0[11] ,
    \mprj/c1_dbg_r0[10] ,
    \mprj/c1_dbg_r0[9] ,
    \mprj/c1_dbg_r0[8] ,
    \mprj/c1_dbg_r0[7] ,
    \mprj/c1_dbg_r0[6] ,
    \mprj/c1_dbg_r0[5] ,
    \mprj/c1_dbg_r0[4] ,
    \mprj/c1_dbg_r0[3] ,
    \mprj/c1_dbg_r0[2] ,
    \mprj/c1_dbg_r0[1] ,
    \mprj/c1_dbg_r0[0] }),
    .c1_i_core_int_sreg({\mprj/c1_i_core_int_sreg[15] ,
    \mprj/c1_i_core_int_sreg[14] ,
    \mprj/c1_i_core_int_sreg[13] ,
    \mprj/c1_i_core_int_sreg[12] ,
    \mprj/c1_i_core_int_sreg[11] ,
    \mprj/c1_i_core_int_sreg[10] ,
    \mprj/c1_i_core_int_sreg[9] ,
    \mprj/c1_i_core_int_sreg[8] ,
    \mprj/c1_i_core_int_sreg[7] ,
    \mprj/c1_i_core_int_sreg[6] ,
    \mprj/c1_i_core_int_sreg[5] ,
    \mprj/c1_i_core_int_sreg[4] ,
    \mprj/c1_i_core_int_sreg[3] ,
    \mprj/c1_i_core_int_sreg[2] ,
    \mprj/c1_i_core_int_sreg[1] ,
    \mprj/c1_i_core_int_sreg[0] }),
    .c1_i_mem_data({\mprj/c1_i_mem_data[15] ,
    \mprj/c1_i_mem_data[14] ,
    \mprj/c1_i_mem_data[13] ,
    \mprj/c1_i_mem_data[12] ,
    \mprj/c1_i_mem_data[11] ,
    \mprj/c1_i_mem_data[10] ,
    \mprj/c1_i_mem_data[9] ,
    \mprj/c1_i_mem_data[8] ,
    \mprj/c1_i_mem_data[7] ,
    \mprj/c1_i_mem_data[6] ,
    \mprj/c1_i_mem_data[5] ,
    \mprj/c1_i_mem_data[4] ,
    \mprj/c1_i_mem_data[3] ,
    \mprj/c1_i_mem_data[2] ,
    \mprj/c1_i_mem_data[1] ,
    \mprj/c1_i_mem_data[0] }),
    .c1_i_req_data({\mprj/c1_i_req_data[31] ,
    \mprj/c1_i_req_data[30] ,
    \mprj/c1_i_req_data[29] ,
    \mprj/c1_i_req_data[28] ,
    \mprj/c1_i_req_data[27] ,
    \mprj/c1_i_req_data[26] ,
    \mprj/c1_i_req_data[25] ,
    \mprj/c1_i_req_data[24] ,
    \mprj/c1_i_req_data[23] ,
    \mprj/c1_i_req_data[22] ,
    \mprj/c1_i_req_data[21] ,
    \mprj/c1_i_req_data[20] ,
    \mprj/c1_i_req_data[19] ,
    \mprj/c1_i_req_data[18] ,
    \mprj/c1_i_req_data[17] ,
    \mprj/c1_i_req_data[16] ,
    \mprj/c1_i_req_data[15] ,
    \mprj/c1_i_req_data[14] ,
    \mprj/c1_i_req_data[13] ,
    \mprj/c1_i_req_data[12] ,
    \mprj/c1_i_req_data[11] ,
    \mprj/c1_i_req_data[10] ,
    \mprj/c1_i_req_data[9] ,
    \mprj/c1_i_req_data[8] ,
    \mprj/c1_i_req_data[7] ,
    \mprj/c1_i_req_data[6] ,
    \mprj/c1_i_req_data[5] ,
    \mprj/c1_i_req_data[4] ,
    \mprj/c1_i_req_data[3] ,
    \mprj/c1_i_req_data[2] ,
    \mprj/c1_i_req_data[1] ,
    \mprj/c1_i_req_data[0] }),
    .c1_o_instr_long_addr({\mprj/c1_o_instr_long_addr[7] ,
    \mprj/c1_o_instr_long_addr[6] ,
    \mprj/c1_o_instr_long_addr[5] ,
    \mprj/c1_o_instr_long_addr[4] ,
    \mprj/c1_o_instr_long_addr[3] ,
    \mprj/c1_o_instr_long_addr[2] ,
    \mprj/c1_o_instr_long_addr[1] ,
    \mprj/c1_o_instr_long_addr[0] }),
    .c1_o_mem_addr({\mprj/c1_o_mem_addr[15] ,
    \mprj/c1_o_mem_addr[14] ,
    \mprj/c1_o_mem_addr[13] ,
    \mprj/c1_o_mem_addr[12] ,
    \mprj/c1_o_mem_addr[11] ,
    \mprj/c1_o_mem_addr[10] ,
    \mprj/c1_o_mem_addr[9] ,
    \mprj/c1_o_mem_addr[8] ,
    \mprj/c1_o_mem_addr[7] ,
    \mprj/c1_o_mem_addr[6] ,
    \mprj/c1_o_mem_addr[5] ,
    \mprj/c1_o_mem_addr[4] ,
    \mprj/c1_o_mem_addr[3] ,
    \mprj/c1_o_mem_addr[2] ,
    \mprj/c1_o_mem_addr[1] ,
    \mprj/c1_o_mem_addr[0] }),
    .c1_o_mem_data({\mprj/c1_o_mem_data[15] ,
    \mprj/c1_o_mem_data[14] ,
    \mprj/c1_o_mem_data[13] ,
    \mprj/c1_o_mem_data[12] ,
    \mprj/c1_o_mem_data[11] ,
    \mprj/c1_o_mem_data[10] ,
    \mprj/c1_o_mem_data[9] ,
    \mprj/c1_o_mem_data[8] ,
    \mprj/c1_o_mem_data[7] ,
    \mprj/c1_o_mem_data[6] ,
    \mprj/c1_o_mem_data[5] ,
    \mprj/c1_o_mem_data[4] ,
    \mprj/c1_o_mem_data[3] ,
    \mprj/c1_o_mem_data[2] ,
    \mprj/c1_o_mem_data[1] ,
    \mprj/c1_o_mem_data[0] }),
    .c1_o_mem_high_addr({\mprj/c1_o_mem_addr_high[7] ,
    \mprj/c1_o_mem_addr_high[6] ,
    \mprj/c1_o_mem_addr_high[5] ,
    \mprj/c1_o_mem_addr_high[4] ,
    \mprj/c1_o_mem_addr_high[3] ,
    \mprj/c1_o_mem_addr_high[2] ,
    \mprj/c1_o_mem_addr_high[1] ,
    \mprj/c1_o_mem_addr_high[0] }),
    .c1_o_mem_sel({\mprj/c1_o_mem_sel[1] ,
    \mprj/c1_o_mem_sel[0] }),
    .c1_o_req_addr({\mprj/c1_o_req_addr[15] ,
    \mprj/c1_o_req_addr[14] ,
    \mprj/c1_o_req_addr[13] ,
    \mprj/c1_o_req_addr[12] ,
    \mprj/c1_o_req_addr[11] ,
    \mprj/c1_o_req_addr[10] ,
    \mprj/c1_o_req_addr[9] ,
    \mprj/c1_o_req_addr[8] ,
    \mprj/c1_o_req_addr[7] ,
    \mprj/c1_o_req_addr[6] ,
    \mprj/c1_o_req_addr[5] ,
    \mprj/c1_o_req_addr[4] ,
    \mprj/c1_o_req_addr[3] ,
    \mprj/c1_o_req_addr[2] ,
    \mprj/c1_o_req_addr[1] ,
    \mprj/c1_o_req_addr[0] }),
    .c1_sr_bus_addr({\mprj/c1_sr_bus_addr[15] ,
    \mprj/c1_sr_bus_addr[14] ,
    \mprj/c1_sr_bus_addr[13] ,
    \mprj/c1_sr_bus_addr[12] ,
    \mprj/c1_sr_bus_addr[11] ,
    \mprj/c1_sr_bus_addr[10] ,
    \mprj/c1_sr_bus_addr[9] ,
    \mprj/c1_sr_bus_addr[8] ,
    \mprj/c1_sr_bus_addr[7] ,
    \mprj/c1_sr_bus_addr[6] ,
    \mprj/c1_sr_bus_addr[5] ,
    \mprj/c1_sr_bus_addr[4] ,
    \mprj/c1_sr_bus_addr[3] ,
    \mprj/c1_sr_bus_addr[2] ,
    \mprj/c1_sr_bus_addr[1] ,
    \mprj/c1_sr_bus_addr[0] }),
    .c1_sr_bus_data_o({\mprj/c1_sr_bus_data_o[15] ,
    \mprj/c1_sr_bus_data_o[14] ,
    \mprj/c1_sr_bus_data_o[13] ,
    \mprj/c1_sr_bus_data_o[12] ,
    \mprj/c1_sr_bus_data_o[11] ,
    \mprj/c1_sr_bus_data_o[10] ,
    \mprj/c1_sr_bus_data_o[9] ,
    \mprj/c1_sr_bus_data_o[8] ,
    \mprj/c1_sr_bus_data_o[7] ,
    \mprj/c1_sr_bus_data_o[6] ,
    \mprj/c1_sr_bus_data_o[5] ,
    \mprj/c1_sr_bus_data_o[4] ,
    \mprj/c1_sr_bus_data_o[3] ,
    \mprj/c1_sr_bus_data_o[2] ,
    \mprj/c1_sr_bus_data_o[1] ,
    \mprj/c1_sr_bus_data_o[0] }),
    .dcache_mem_addr({\mprj/dcache_mem_addr[23] ,
    \mprj/dcache_mem_addr[22] ,
    \mprj/dcache_mem_addr[21] ,
    \mprj/dcache_mem_addr[20] ,
    \mprj/dcache_mem_addr[19] ,
    \mprj/dcache_mem_addr[18] ,
    \mprj/dcache_mem_addr[17] ,
    \mprj/dcache_mem_addr[16] ,
    \mprj/dcache_mem_addr[15] ,
    \mprj/dcache_mem_addr[14] ,
    \mprj/dcache_mem_addr[13] ,
    \mprj/dcache_mem_addr[12] ,
    \mprj/dcache_mem_addr[11] ,
    \mprj/dcache_mem_addr[10] ,
    \mprj/dcache_mem_addr[9] ,
    \mprj/dcache_mem_addr[8] ,
    \mprj/dcache_mem_addr[7] ,
    \mprj/dcache_mem_addr[6] ,
    \mprj/dcache_mem_addr[5] ,
    \mprj/dcache_mem_addr[4] ,
    \mprj/dcache_mem_addr[3] ,
    \mprj/dcache_mem_addr[2] ,
    \mprj/dcache_mem_addr[1] ,
    \mprj/dcache_mem_addr[0] }),
    .dcache_mem_i_data({\mprj/dcache_mem_i_data[15] ,
    \mprj/dcache_mem_i_data[14] ,
    \mprj/dcache_mem_i_data[13] ,
    \mprj/dcache_mem_i_data[12] ,
    \mprj/dcache_mem_i_data[11] ,
    \mprj/dcache_mem_i_data[10] ,
    \mprj/dcache_mem_i_data[9] ,
    \mprj/dcache_mem_i_data[8] ,
    \mprj/dcache_mem_i_data[7] ,
    \mprj/dcache_mem_i_data[6] ,
    \mprj/dcache_mem_i_data[5] ,
    \mprj/dcache_mem_i_data[4] ,
    \mprj/dcache_mem_i_data[3] ,
    \mprj/dcache_mem_i_data[2] ,
    \mprj/dcache_mem_i_data[1] ,
    \mprj/dcache_mem_i_data[0] }),
    .dcache_mem_o_data({\mprj/dcache_mem_o_data[15] ,
    \mprj/dcache_mem_o_data[14] ,
    \mprj/dcache_mem_o_data[13] ,
    \mprj/dcache_mem_o_data[12] ,
    \mprj/dcache_mem_o_data[11] ,
    \mprj/dcache_mem_o_data[10] ,
    \mprj/dcache_mem_o_data[9] ,
    \mprj/dcache_mem_o_data[8] ,
    \mprj/dcache_mem_o_data[7] ,
    \mprj/dcache_mem_o_data[6] ,
    \mprj/dcache_mem_o_data[5] ,
    \mprj/dcache_mem_o_data[4] ,
    \mprj/dcache_mem_o_data[3] ,
    \mprj/dcache_mem_o_data[2] ,
    \mprj/dcache_mem_o_data[1] ,
    \mprj/dcache_mem_o_data[0] }),
    .dcache_mem_sel({\mprj/dcache_mem_sel[1] ,
    \mprj/dcache_mem_sel[0] }),
    .dcache_wb_adr({\mprj/dcache_wb_adr[23] ,
    \mprj/dcache_wb_adr[22] ,
    \mprj/dcache_wb_adr[21] ,
    \mprj/dcache_wb_adr[20] ,
    \mprj/dcache_wb_adr[19] ,
    \mprj/dcache_wb_adr[18] ,
    \mprj/dcache_wb_adr[17] ,
    \mprj/dcache_wb_adr[16] ,
    \mprj/dcache_wb_adr[15] ,
    \mprj/dcache_wb_adr[14] ,
    \mprj/dcache_wb_adr[13] ,
    \mprj/dcache_wb_adr[12] ,
    \mprj/dcache_wb_adr[11] ,
    \mprj/dcache_wb_adr[10] ,
    \mprj/dcache_wb_adr[9] ,
    \mprj/dcache_wb_adr[8] ,
    \mprj/dcache_wb_adr[7] ,
    \mprj/dcache_wb_adr[6] ,
    \mprj/dcache_wb_adr[5] ,
    \mprj/dcache_wb_adr[4] ,
    \mprj/dcache_wb_adr[3] ,
    \mprj/dcache_wb_adr[2] ,
    \mprj/dcache_wb_adr[1] ,
    \mprj/dcache_wb_adr[0] }),
    .dcache_wb_i_dat({\mprj/dcache_wb_i_dat[15] ,
    \mprj/dcache_wb_i_dat[14] ,
    \mprj/dcache_wb_i_dat[13] ,
    \mprj/dcache_wb_i_dat[12] ,
    \mprj/dcache_wb_i_dat[11] ,
    \mprj/dcache_wb_i_dat[10] ,
    \mprj/dcache_wb_i_dat[9] ,
    \mprj/dcache_wb_i_dat[8] ,
    \mprj/dcache_wb_i_dat[7] ,
    \mprj/dcache_wb_i_dat[6] ,
    \mprj/dcache_wb_i_dat[5] ,
    \mprj/dcache_wb_i_dat[4] ,
    \mprj/dcache_wb_i_dat[3] ,
    \mprj/dcache_wb_i_dat[2] ,
    \mprj/dcache_wb_i_dat[1] ,
    \mprj/dcache_wb_i_dat[0] }),
    .dcache_wb_o_dat({\mprj/dcache_wb_o_dat[15] ,
    \mprj/dcache_wb_o_dat[14] ,
    \mprj/dcache_wb_o_dat[13] ,
    \mprj/dcache_wb_o_dat[12] ,
    \mprj/dcache_wb_o_dat[11] ,
    \mprj/dcache_wb_o_dat[10] ,
    \mprj/dcache_wb_o_dat[9] ,
    \mprj/dcache_wb_o_dat[8] ,
    \mprj/dcache_wb_o_dat[7] ,
    \mprj/dcache_wb_o_dat[6] ,
    \mprj/dcache_wb_o_dat[5] ,
    \mprj/dcache_wb_o_dat[4] ,
    \mprj/dcache_wb_o_dat[3] ,
    \mprj/dcache_wb_o_dat[2] ,
    \mprj/dcache_wb_o_dat[1] ,
    \mprj/dcache_wb_o_dat[0] }),
    .dcache_wb_sel({\mprj/dcache_wb_sel[1] ,
    \mprj/dcache_wb_sel[0] }),
    .ic0_mem_addr({\mprj/ic0_mem_addr[15] ,
    \mprj/ic0_mem_addr[14] ,
    \mprj/ic0_mem_addr[13] ,
    \mprj/ic0_mem_addr[12] ,
    \mprj/ic0_mem_addr[11] ,
    \mprj/ic0_mem_addr[10] ,
    \mprj/ic0_mem_addr[9] ,
    \mprj/ic0_mem_addr[8] ,
    \mprj/ic0_mem_addr[7] ,
    \mprj/ic0_mem_addr[6] ,
    \mprj/ic0_mem_addr[5] ,
    \mprj/ic0_mem_addr[4] ,
    \mprj/ic0_mem_addr[3] ,
    \mprj/ic0_mem_addr[2] ,
    \mprj/ic0_mem_addr[1] ,
    \mprj/ic0_mem_addr[0] }),
    .ic0_mem_data({\mprj/ic0_mem_data[31] ,
    \mprj/ic0_mem_data[30] ,
    \mprj/ic0_mem_data[29] ,
    \mprj/ic0_mem_data[28] ,
    \mprj/ic0_mem_data[27] ,
    \mprj/ic0_mem_data[26] ,
    \mprj/ic0_mem_data[25] ,
    \mprj/ic0_mem_data[24] ,
    \mprj/ic0_mem_data[23] ,
    \mprj/ic0_mem_data[22] ,
    \mprj/ic0_mem_data[21] ,
    \mprj/ic0_mem_data[20] ,
    \mprj/ic0_mem_data[19] ,
    \mprj/ic0_mem_data[18] ,
    \mprj/ic0_mem_data[17] ,
    \mprj/ic0_mem_data[16] ,
    \mprj/ic0_mem_data[15] ,
    \mprj/ic0_mem_data[14] ,
    \mprj/ic0_mem_data[13] ,
    \mprj/ic0_mem_data[12] ,
    \mprj/ic0_mem_data[11] ,
    \mprj/ic0_mem_data[10] ,
    \mprj/ic0_mem_data[9] ,
    \mprj/ic0_mem_data[8] ,
    \mprj/ic0_mem_data[7] ,
    \mprj/ic0_mem_data[6] ,
    \mprj/ic0_mem_data[5] ,
    \mprj/ic0_mem_data[4] ,
    \mprj/ic0_mem_data[3] ,
    \mprj/ic0_mem_data[2] ,
    \mprj/ic0_mem_data[1] ,
    \mprj/ic0_mem_data[0] }),
    .ic0_wb_adr({\mprj/ic0_wb_adr[15] ,
    \mprj/ic0_wb_adr[14] ,
    \mprj/ic0_wb_adr[13] ,
    \mprj/ic0_wb_adr[12] ,
    \mprj/ic0_wb_adr[11] ,
    \mprj/ic0_wb_adr[10] ,
    \mprj/ic0_wb_adr[9] ,
    \mprj/ic0_wb_adr[8] ,
    \mprj/ic0_wb_adr[7] ,
    \mprj/ic0_wb_adr[6] ,
    \mprj/ic0_wb_adr[5] ,
    \mprj/ic0_wb_adr[4] ,
    \mprj/ic0_wb_adr[3] ,
    \mprj/ic0_wb_adr[2] ,
    \mprj/ic0_wb_adr[1] ,
    \mprj/ic0_wb_adr[0] }),
    .ic0_wb_i_dat({\mprj/ic0_wb_i_dat[15] ,
    \mprj/ic0_wb_i_dat[14] ,
    \mprj/ic0_wb_i_dat[13] ,
    \mprj/ic0_wb_i_dat[12] ,
    \mprj/ic0_wb_i_dat[11] ,
    \mprj/ic0_wb_i_dat[10] ,
    \mprj/ic0_wb_i_dat[9] ,
    \mprj/ic0_wb_i_dat[8] ,
    \mprj/ic0_wb_i_dat[7] ,
    \mprj/ic0_wb_i_dat[6] ,
    \mprj/ic0_wb_i_dat[5] ,
    \mprj/ic0_wb_i_dat[4] ,
    \mprj/ic0_wb_i_dat[3] ,
    \mprj/ic0_wb_i_dat[2] ,
    \mprj/ic0_wb_i_dat[1] ,
    \mprj/ic0_wb_i_dat[0] }),
    .ic0_wb_sel({\mprj/ic0_wb_sel[1] ,
    \mprj/ic0_wb_sel[0] }),
    .ic1_mem_addr({\mprj/ic1_mem_addr[15] ,
    \mprj/ic1_mem_addr[14] ,
    \mprj/ic1_mem_addr[13] ,
    \mprj/ic1_mem_addr[12] ,
    \mprj/ic1_mem_addr[11] ,
    \mprj/ic1_mem_addr[10] ,
    \mprj/ic1_mem_addr[9] ,
    \mprj/ic1_mem_addr[8] ,
    \mprj/ic1_mem_addr[7] ,
    \mprj/ic1_mem_addr[6] ,
    \mprj/ic1_mem_addr[5] ,
    \mprj/ic1_mem_addr[4] ,
    \mprj/ic1_mem_addr[3] ,
    \mprj/ic1_mem_addr[2] ,
    \mprj/ic1_mem_addr[1] ,
    \mprj/ic1_mem_addr[0] }),
    .ic1_mem_data({\mprj/ic1_mem_data[31] ,
    \mprj/ic1_mem_data[30] ,
    \mprj/ic1_mem_data[29] ,
    \mprj/ic1_mem_data[28] ,
    \mprj/ic1_mem_data[27] ,
    \mprj/ic1_mem_data[26] ,
    \mprj/ic1_mem_data[25] ,
    \mprj/ic1_mem_data[24] ,
    \mprj/ic1_mem_data[23] ,
    \mprj/ic1_mem_data[22] ,
    \mprj/ic1_mem_data[21] ,
    \mprj/ic1_mem_data[20] ,
    \mprj/ic1_mem_data[19] ,
    \mprj/ic1_mem_data[18] ,
    \mprj/ic1_mem_data[17] ,
    \mprj/ic1_mem_data[16] ,
    \mprj/ic1_mem_data[15] ,
    \mprj/ic1_mem_data[14] ,
    \mprj/ic1_mem_data[13] ,
    \mprj/ic1_mem_data[12] ,
    \mprj/ic1_mem_data[11] ,
    \mprj/ic1_mem_data[10] ,
    \mprj/ic1_mem_data[9] ,
    \mprj/ic1_mem_data[8] ,
    \mprj/ic1_mem_data[7] ,
    \mprj/ic1_mem_data[6] ,
    \mprj/ic1_mem_data[5] ,
    \mprj/ic1_mem_data[4] ,
    \mprj/ic1_mem_data[3] ,
    \mprj/ic1_mem_data[2] ,
    \mprj/ic1_mem_data[1] ,
    \mprj/ic1_mem_data[0] }),
    .ic1_wb_adr({\mprj/ic1_wb_adr[15] ,
    \mprj/ic1_wb_adr[14] ,
    \mprj/ic1_wb_adr[13] ,
    \mprj/ic1_wb_adr[12] ,
    \mprj/ic1_wb_adr[11] ,
    \mprj/ic1_wb_adr[10] ,
    \mprj/ic1_wb_adr[9] ,
    \mprj/ic1_wb_adr[8] ,
    \mprj/ic1_wb_adr[7] ,
    \mprj/ic1_wb_adr[6] ,
    \mprj/ic1_wb_adr[5] ,
    \mprj/ic1_wb_adr[4] ,
    \mprj/ic1_wb_adr[3] ,
    \mprj/ic1_wb_adr[2] ,
    \mprj/ic1_wb_adr[1] ,
    \mprj/ic1_wb_adr[0] }),
    .ic1_wb_i_dat({\mprj/ic1_wb_i_dat[15] ,
    \mprj/ic1_wb_i_dat[14] ,
    \mprj/ic1_wb_i_dat[13] ,
    \mprj/ic1_wb_i_dat[12] ,
    \mprj/ic1_wb_i_dat[11] ,
    \mprj/ic1_wb_i_dat[10] ,
    \mprj/ic1_wb_i_dat[9] ,
    \mprj/ic1_wb_i_dat[8] ,
    \mprj/ic1_wb_i_dat[7] ,
    \mprj/ic1_wb_i_dat[6] ,
    \mprj/ic1_wb_i_dat[5] ,
    \mprj/ic1_wb_i_dat[4] ,
    \mprj/ic1_wb_i_dat[3] ,
    \mprj/ic1_wb_i_dat[2] ,
    \mprj/ic1_wb_i_dat[1] ,
    \mprj/ic1_wb_i_dat[0] }),
    .ic1_wb_sel({\mprj/ic1_wb_sel[1] ,
    \mprj/ic1_wb_sel[0] }),
    .inner_wb_adr({\mprj/inner_wb_adr[23] ,
    \mprj/inner_wb_adr[22] ,
    \mprj/inner_wb_adr[21] ,
    \mprj/inner_wb_adr[20] ,
    \mprj/inner_wb_adr[19] ,
    \mprj/inner_wb_adr[18] ,
    \mprj/inner_wb_adr[17] ,
    \mprj/inner_wb_adr[16] ,
    \mprj/inner_wb_adr[15] ,
    \mprj/inner_wb_adr[14] ,
    \mprj/inner_wb_adr[13] ,
    \mprj/inner_wb_adr[12] ,
    \mprj/inner_wb_adr[11] ,
    \mprj/inner_wb_adr[10] ,
    \mprj/inner_wb_adr[9] ,
    \mprj/inner_wb_adr[8] ,
    \mprj/inner_wb_adr[7] ,
    \mprj/inner_wb_adr[6] ,
    \mprj/inner_wb_adr[5] ,
    \mprj/inner_wb_adr[4] ,
    \mprj/inner_wb_adr[3] ,
    \mprj/inner_wb_adr[2] ,
    \mprj/inner_wb_adr[1] ,
    \mprj/inner_wb_adr[0] }),
    .inner_wb_i_dat({\mprj/inner_wb_i_dat[15] ,
    \mprj/inner_wb_i_dat[14] ,
    \mprj/inner_wb_i_dat[13] ,
    \mprj/inner_wb_i_dat[12] ,
    \mprj/inner_wb_i_dat[11] ,
    \mprj/inner_wb_i_dat[10] ,
    \mprj/inner_wb_i_dat[9] ,
    \mprj/inner_wb_i_dat[8] ,
    \mprj/inner_wb_i_dat[7] ,
    \mprj/inner_wb_i_dat[6] ,
    \mprj/inner_wb_i_dat[5] ,
    \mprj/inner_wb_i_dat[4] ,
    \mprj/inner_wb_i_dat[3] ,
    \mprj/inner_wb_i_dat[2] ,
    \mprj/inner_wb_i_dat[1] ,
    \mprj/inner_wb_i_dat[0] }),
    .inner_wb_o_dat({\mprj/inner_wb_o_dat[15] ,
    \mprj/inner_wb_o_dat[14] ,
    \mprj/inner_wb_o_dat[13] ,
    \mprj/inner_wb_o_dat[12] ,
    \mprj/inner_wb_o_dat[11] ,
    \mprj/inner_wb_o_dat[10] ,
    \mprj/inner_wb_o_dat[9] ,
    \mprj/inner_wb_o_dat[8] ,
    \mprj/inner_wb_o_dat[7] ,
    \mprj/inner_wb_o_dat[6] ,
    \mprj/inner_wb_o_dat[5] ,
    \mprj/inner_wb_o_dat[4] ,
    \mprj/inner_wb_o_dat[3] ,
    \mprj/inner_wb_o_dat[2] ,
    \mprj/inner_wb_o_dat[1] ,
    \mprj/inner_wb_o_dat[0] }),
    .inner_wb_sel({\mprj/inner_wb_sel[1] ,
    \mprj/inner_wb_sel[0] }));
 interconnect_outer \mprj/interconnect_outer  (.c0_clk(\mprj/c0_clk ),
    .c1_clk(\mprj/c1_clk ),
    .dcache_clk(\mprj/dcache_clk ),
    .ic0_clk(\mprj/ic0_clk ),
    .ic1_clk(\mprj/ic1_clk ),
    .inner_clock(\mprj/inner_clock ),
    .inner_disable(\mprj/inner_disable ),
    .inner_embed_mode(\mprj/inner_embed_mode ),
    .inner_ext_irq(\mprj/inner_ext_irq ),
    .inner_reset(\mprj/inner_reset ),
    .inner_wb_4_burst(\mprj/inner_wb_4_burst ),
    .inner_wb_8_burst(\mprj/inner_wb_8_burst ),
    .inner_wb_ack(\mprj/inner_wb_ack ),
    .inner_wb_cyc(\mprj/inner_wb_cyc ),
    .inner_wb_err(\mprj/inner_wb_err ),
    .inner_wb_stb(\mprj/inner_wb_stb ),
    .inner_wb_we(\mprj/inner_wb_we ),
    .iram_clk(\mprj/iram_clk ),
    .iram_we(\mprj/iram_we ),
    .mgt_wb_ack_o(wbs_ack_o),
    .mgt_wb_clk_i(wb_clk_i),
    .mgt_wb_cyc_i(wbs_cyc_i),
    .mgt_wb_rst_i(wb_rst_i),
    .mgt_wb_stb_i(wbs_stb_i),
    .mgt_wb_we_i(wbs_we_i),
    .user_clock2(user_clock2),
    .vccd1(vdd),
    .vssd1(vss),
    .inner_wb_adr({\mprj/inner_wb_adr[23] ,
    \mprj/inner_wb_adr[22] ,
    \mprj/inner_wb_adr[21] ,
    \mprj/inner_wb_adr[20] ,
    \mprj/inner_wb_adr[19] ,
    \mprj/inner_wb_adr[18] ,
    \mprj/inner_wb_adr[17] ,
    \mprj/inner_wb_adr[16] ,
    \mprj/inner_wb_adr[15] ,
    \mprj/inner_wb_adr[14] ,
    \mprj/inner_wb_adr[13] ,
    \mprj/inner_wb_adr[12] ,
    \mprj/inner_wb_adr[11] ,
    \mprj/inner_wb_adr[10] ,
    \mprj/inner_wb_adr[9] ,
    \mprj/inner_wb_adr[8] ,
    \mprj/inner_wb_adr[7] ,
    \mprj/inner_wb_adr[6] ,
    \mprj/inner_wb_adr[5] ,
    \mprj/inner_wb_adr[4] ,
    \mprj/inner_wb_adr[3] ,
    \mprj/inner_wb_adr[2] ,
    \mprj/inner_wb_adr[1] ,
    \mprj/inner_wb_adr[0] }),
    .inner_wb_i_dat({\mprj/inner_wb_i_dat[15] ,
    \mprj/inner_wb_i_dat[14] ,
    \mprj/inner_wb_i_dat[13] ,
    \mprj/inner_wb_i_dat[12] ,
    \mprj/inner_wb_i_dat[11] ,
    \mprj/inner_wb_i_dat[10] ,
    \mprj/inner_wb_i_dat[9] ,
    \mprj/inner_wb_i_dat[8] ,
    \mprj/inner_wb_i_dat[7] ,
    \mprj/inner_wb_i_dat[6] ,
    \mprj/inner_wb_i_dat[5] ,
    \mprj/inner_wb_i_dat[4] ,
    \mprj/inner_wb_i_dat[3] ,
    \mprj/inner_wb_i_dat[2] ,
    \mprj/inner_wb_i_dat[1] ,
    \mprj/inner_wb_i_dat[0] }),
    .inner_wb_o_dat({\mprj/inner_wb_o_dat[15] ,
    \mprj/inner_wb_o_dat[14] ,
    \mprj/inner_wb_o_dat[13] ,
    \mprj/inner_wb_o_dat[12] ,
    \mprj/inner_wb_o_dat[11] ,
    \mprj/inner_wb_o_dat[10] ,
    \mprj/inner_wb_o_dat[9] ,
    \mprj/inner_wb_o_dat[8] ,
    \mprj/inner_wb_o_dat[7] ,
    \mprj/inner_wb_o_dat[6] ,
    \mprj/inner_wb_o_dat[5] ,
    \mprj/inner_wb_o_dat[4] ,
    \mprj/inner_wb_o_dat[3] ,
    \mprj/inner_wb_o_dat[2] ,
    \mprj/inner_wb_o_dat[1] ,
    \mprj/inner_wb_o_dat[0] }),
    .inner_wb_sel({\mprj/inner_wb_sel[1] ,
    \mprj/inner_wb_sel[0] }),
    .iram_addr({\mprj/iram_addr[5] ,
    \mprj/iram_addr[4] ,
    \mprj/iram_addr[3] ,
    \mprj/iram_addr[2] ,
    \mprj/iram_addr[1] ,
    \mprj/iram_addr[0] }),
    .iram_i_data({\mprj/iram_i_data[15] ,
    \mprj/iram_i_data[14] ,
    \mprj/iram_i_data[13] ,
    \mprj/iram_i_data[12] ,
    \mprj/iram_i_data[11] ,
    \mprj/iram_i_data[10] ,
    \mprj/iram_i_data[9] ,
    \mprj/iram_i_data[8] ,
    \mprj/iram_i_data[7] ,
    \mprj/iram_i_data[6] ,
    \mprj/iram_i_data[5] ,
    \mprj/iram_i_data[4] ,
    \mprj/iram_i_data[3] ,
    \mprj/iram_i_data[2] ,
    \mprj/iram_i_data[1] ,
    \mprj/iram_i_data[0] }),
    .iram_o_data({\mprj/iram_o_data[15] ,
    \mprj/iram_o_data[14] ,
    \mprj/iram_o_data[13] ,
    \mprj/iram_o_data[12] ,
    \mprj/iram_o_data[11] ,
    \mprj/iram_o_data[10] ,
    \mprj/iram_o_data[9] ,
    \mprj/iram_o_data[8] ,
    \mprj/iram_o_data[7] ,
    \mprj/iram_o_data[6] ,
    \mprj/iram_o_data[5] ,
    \mprj/iram_o_data[4] ,
    \mprj/iram_o_data[3] ,
    \mprj/iram_o_data[2] ,
    \mprj/iram_o_data[1] ,
    \mprj/iram_o_data[0] }),
    .irq({user_irq[2],
    user_irq[1],
    user_irq[0]}),
    .la_data_in({la_data_in[63],
    la_data_in[62],
    la_data_in[61],
    la_data_in[60],
    la_data_in[59],
    la_data_in[58],
    la_data_in[57],
    la_data_in[56],
    la_data_in[55],
    la_data_in[54],
    la_data_in[53],
    la_data_in[52],
    la_data_in[51],
    la_data_in[50],
    la_data_in[49],
    la_data_in[48],
    la_data_in[47],
    la_data_in[46],
    la_data_in[45],
    la_data_in[44],
    la_data_in[43],
    la_data_in[42],
    la_data_in[41],
    la_data_in[40],
    la_data_in[39],
    la_data_in[38],
    la_data_in[37],
    la_data_in[36],
    la_data_in[35],
    la_data_in[34],
    la_data_in[33],
    la_data_in[32],
    la_data_in[31],
    la_data_in[30],
    la_data_in[29],
    la_data_in[28],
    la_data_in[27],
    la_data_in[26],
    la_data_in[25],
    la_data_in[24],
    la_data_in[23],
    la_data_in[22],
    la_data_in[21],
    la_data_in[20],
    la_data_in[19],
    la_data_in[18],
    la_data_in[17],
    la_data_in[16],
    la_data_in[15],
    la_data_in[14],
    la_data_in[13],
    la_data_in[12],
    la_data_in[11],
    la_data_in[10],
    la_data_in[9],
    la_data_in[8],
    la_data_in[7],
    la_data_in[6],
    la_data_in[5],
    la_data_in[4],
    la_data_in[3],
    la_data_in[2],
    la_data_in[1],
    la_data_in[0]}),
    .la_data_out({la_data_out[63],
    la_data_out[62],
    la_data_out[61],
    la_data_out[60],
    la_data_out[59],
    la_data_out[58],
    la_data_out[57],
    la_data_out[56],
    la_data_out[55],
    la_data_out[54],
    la_data_out[53],
    la_data_out[52],
    la_data_out[51],
    la_data_out[50],
    la_data_out[49],
    la_data_out[48],
    la_data_out[47],
    la_data_out[46],
    la_data_out[45],
    la_data_out[44],
    la_data_out[43],
    la_data_out[42],
    la_data_out[41],
    la_data_out[40],
    la_data_out[39],
    la_data_out[38],
    la_data_out[37],
    la_data_out[36],
    la_data_out[35],
    la_data_out[34],
    la_data_out[33],
    la_data_out[32],
    la_data_out[31],
    la_data_out[30],
    la_data_out[29],
    la_data_out[28],
    la_data_out[27],
    la_data_out[26],
    la_data_out[25],
    la_data_out[24],
    la_data_out[23],
    la_data_out[22],
    la_data_out[21],
    la_data_out[20],
    la_data_out[19],
    la_data_out[18],
    la_data_out[17],
    la_data_out[16],
    la_data_out[15],
    la_data_out[14],
    la_data_out[13],
    la_data_out[12],
    la_data_out[11],
    la_data_out[10],
    la_data_out[9],
    la_data_out[8],
    la_data_out[7],
    la_data_out[6],
    la_data_out[5],
    la_data_out[4],
    la_data_out[3],
    la_data_out[2],
    la_data_out[1],
    la_data_out[0]}),
    .la_oenb({la_oenb[63],
    la_oenb[62],
    la_oenb[61],
    la_oenb[60],
    la_oenb[59],
    la_oenb[58],
    la_oenb[57],
    la_oenb[56],
    la_oenb[55],
    la_oenb[54],
    la_oenb[53],
    la_oenb[52],
    la_oenb[51],
    la_oenb[50],
    la_oenb[49],
    la_oenb[48],
    la_oenb[47],
    la_oenb[46],
    la_oenb[45],
    la_oenb[44],
    la_oenb[43],
    la_oenb[42],
    la_oenb[41],
    la_oenb[40],
    la_oenb[39],
    la_oenb[38],
    la_oenb[37],
    la_oenb[36],
    la_oenb[35],
    la_oenb[34],
    la_oenb[33],
    la_oenb[32],
    la_oenb[31],
    la_oenb[30],
    la_oenb[29],
    la_oenb[28],
    la_oenb[27],
    la_oenb[26],
    la_oenb[25],
    la_oenb[24],
    la_oenb[23],
    la_oenb[22],
    la_oenb[21],
    la_oenb[20],
    la_oenb[19],
    la_oenb[18],
    la_oenb[17],
    la_oenb[16],
    la_oenb[15],
    la_oenb[14],
    la_oenb[13],
    la_oenb[12],
    la_oenb[11],
    la_oenb[10],
    la_oenb[9],
    la_oenb[8],
    la_oenb[7],
    la_oenb[6],
    la_oenb[5],
    la_oenb[4],
    la_oenb[3],
    la_oenb[2],
    la_oenb[1],
    la_oenb[0]}),
    .m_io_in({io_in[37],
    io_in[36],
    io_in[35],
    io_in[34],
    io_in[33],
    io_in[32],
    io_in[31],
    io_in[30],
    io_in[29],
    io_in[28],
    io_in[27],
    io_in[26],
    io_in[25],
    io_in[24],
    io_in[23],
    io_in[22],
    io_in[21],
    io_in[20],
    io_in[19],
    io_in[18],
    io_in[17],
    io_in[16],
    io_in[15],
    io_in[14],
    io_in[13],
    io_in[12],
    io_in[11],
    io_in[10],
    io_in[9],
    io_in[8],
    io_in[7],
    io_in[6],
    io_in[5],
    io_in[4],
    io_in[3],
    io_in[2],
    io_in[1],
    io_in[0]}),
    .m_io_oeb({io_oeb[37],
    io_oeb[36],
    io_oeb[35],
    io_oeb[34],
    io_oeb[33],
    io_oeb[32],
    io_oeb[31],
    io_oeb[30],
    io_oeb[29],
    io_oeb[28],
    io_oeb[27],
    io_oeb[26],
    io_oeb[25],
    io_oeb[24],
    io_oeb[23],
    io_oeb[22],
    io_oeb[21],
    io_oeb[20],
    io_oeb[19],
    io_oeb[18],
    io_oeb[17],
    io_oeb[16],
    io_oeb[15],
    io_oeb[14],
    io_oeb[13],
    io_oeb[12],
    io_oeb[11],
    io_oeb[10],
    io_oeb[9],
    io_oeb[8],
    io_oeb[7],
    io_oeb[6],
    io_oeb[5],
    io_oeb[4],
    io_oeb[3],
    io_oeb[2],
    io_oeb[1],
    io_oeb[0]}),
    .m_io_out({io_out[37],
    io_out[36],
    io_out[35],
    io_out[34],
    io_out[33],
    io_out[32],
    io_out[31],
    io_out[30],
    io_out[29],
    io_out[28],
    io_out[27],
    io_out[26],
    io_out[25],
    io_out[24],
    io_out[23],
    io_out[22],
    io_out[21],
    io_out[20],
    io_out[19],
    io_out[18],
    io_out[17],
    io_out[16],
    io_out[15],
    io_out[14],
    io_out[13],
    io_out[12],
    io_out[11],
    io_out[10],
    io_out[9],
    io_out[8],
    io_out[7],
    io_out[6],
    io_out[5],
    io_out[4],
    io_out[3],
    io_out[2],
    io_out[1],
    io_out[0]}),
    .mgt_wb_adr_i({wbs_adr_i[31],
    wbs_adr_i[30],
    wbs_adr_i[29],
    wbs_adr_i[28],
    wbs_adr_i[27],
    wbs_adr_i[26],
    wbs_adr_i[25],
    wbs_adr_i[24],
    wbs_adr_i[23],
    wbs_adr_i[22],
    wbs_adr_i[21],
    wbs_adr_i[20],
    wbs_adr_i[19],
    wbs_adr_i[18],
    wbs_adr_i[17],
    wbs_adr_i[16],
    wbs_adr_i[15],
    wbs_adr_i[14],
    wbs_adr_i[13],
    wbs_adr_i[12],
    wbs_adr_i[11],
    wbs_adr_i[10],
    wbs_adr_i[9],
    wbs_adr_i[8],
    wbs_adr_i[7],
    wbs_adr_i[6],
    wbs_adr_i[5],
    wbs_adr_i[4],
    wbs_adr_i[3],
    wbs_adr_i[2],
    wbs_adr_i[1],
    wbs_adr_i[0]}),
    .mgt_wb_dat_i({wbs_dat_i[31],
    wbs_dat_i[30],
    wbs_dat_i[29],
    wbs_dat_i[28],
    wbs_dat_i[27],
    wbs_dat_i[26],
    wbs_dat_i[25],
    wbs_dat_i[24],
    wbs_dat_i[23],
    wbs_dat_i[22],
    wbs_dat_i[21],
    wbs_dat_i[20],
    wbs_dat_i[19],
    wbs_dat_i[18],
    wbs_dat_i[17],
    wbs_dat_i[16],
    wbs_dat_i[15],
    wbs_dat_i[14],
    wbs_dat_i[13],
    wbs_dat_i[12],
    wbs_dat_i[11],
    wbs_dat_i[10],
    wbs_dat_i[9],
    wbs_dat_i[8],
    wbs_dat_i[7],
    wbs_dat_i[6],
    wbs_dat_i[5],
    wbs_dat_i[4],
    wbs_dat_i[3],
    wbs_dat_i[2],
    wbs_dat_i[1],
    wbs_dat_i[0]}),
    .mgt_wb_dat_o({wbs_dat_o[31],
    wbs_dat_o[30],
    wbs_dat_o[29],
    wbs_dat_o[28],
    wbs_dat_o[27],
    wbs_dat_o[26],
    wbs_dat_o[25],
    wbs_dat_o[24],
    wbs_dat_o[23],
    wbs_dat_o[22],
    wbs_dat_o[21],
    wbs_dat_o[20],
    wbs_dat_o[19],
    wbs_dat_o[18],
    wbs_dat_o[17],
    wbs_dat_o[16],
    wbs_dat_o[15],
    wbs_dat_o[14],
    wbs_dat_o[13],
    wbs_dat_o[12],
    wbs_dat_o[11],
    wbs_dat_o[10],
    wbs_dat_o[9],
    wbs_dat_o[8],
    wbs_dat_o[7],
    wbs_dat_o[6],
    wbs_dat_o[5],
    wbs_dat_o[4],
    wbs_dat_o[3],
    wbs_dat_o[2],
    wbs_dat_o[1],
    wbs_dat_o[0]}),
    .mgt_wb_sel_i({wbs_sel_i[3],
    wbs_sel_i[2],
    wbs_sel_i[1],
    wbs_sel_i[0]}));
endmodule
