module user_project_wrapper (user_clock2,
    vccd1,
    vccd2,
    vdda1,
    vdda2,
    vssa1,
    vssa2,
    vssd1,
    vssd2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
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
 input vccd1;
 input vccd2;
 input vdda1;
 input vdda2;
 input vssa1;
 input vssa2;
 input vssd1;
 input vssd2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire cw_dir_o;
 wire \top_cw.c_wb_4_burst ;
 wire \top_cw.c_wb_8_burst ;
 wire \top_cw.c_wb_ack_cmp ;
 wire \top_cw.c_wb_adr[0] ;
 wire \top_cw.c_wb_adr[10] ;
 wire \top_cw.c_wb_adr[11] ;
 wire \top_cw.c_wb_adr[12] ;
 wire \top_cw.c_wb_adr[13] ;
 wire \top_cw.c_wb_adr[14] ;
 wire \top_cw.c_wb_adr[15] ;
 wire \top_cw.c_wb_adr[16] ;
 wire \top_cw.c_wb_adr[17] ;
 wire \top_cw.c_wb_adr[18] ;
 wire \top_cw.c_wb_adr[19] ;
 wire \top_cw.c_wb_adr[1] ;
 wire \top_cw.c_wb_adr[20] ;
 wire \top_cw.c_wb_adr[21] ;
 wire \top_cw.c_wb_adr[22] ;
 wire \top_cw.c_wb_adr[23] ;
 wire \top_cw.c_wb_adr[2] ;
 wire \top_cw.c_wb_adr[3] ;
 wire \top_cw.c_wb_adr[4] ;
 wire \top_cw.c_wb_adr[5] ;
 wire \top_cw.c_wb_adr[6] ;
 wire \top_cw.c_wb_adr[7] ;
 wire \top_cw.c_wb_adr[8] ;
 wire \top_cw.c_wb_adr[9] ;
 wire \top_cw.c_wb_cyc ;
 wire \top_cw.c_wb_err_cmp ;
 wire \top_cw.c_wb_i_dat_cmp[0] ;
 wire \top_cw.c_wb_i_dat_cmp[10] ;
 wire \top_cw.c_wb_i_dat_cmp[11] ;
 wire \top_cw.c_wb_i_dat_cmp[12] ;
 wire \top_cw.c_wb_i_dat_cmp[13] ;
 wire \top_cw.c_wb_i_dat_cmp[14] ;
 wire \top_cw.c_wb_i_dat_cmp[15] ;
 wire \top_cw.c_wb_i_dat_cmp[1] ;
 wire \top_cw.c_wb_i_dat_cmp[2] ;
 wire \top_cw.c_wb_i_dat_cmp[3] ;
 wire \top_cw.c_wb_i_dat_cmp[4] ;
 wire \top_cw.c_wb_i_dat_cmp[5] ;
 wire \top_cw.c_wb_i_dat_cmp[6] ;
 wire \top_cw.c_wb_i_dat_cmp[7] ;
 wire \top_cw.c_wb_i_dat_cmp[8] ;
 wire \top_cw.c_wb_i_dat_cmp[9] ;
 wire \top_cw.c_wb_o_dat[0] ;
 wire \top_cw.c_wb_o_dat[10] ;
 wire \top_cw.c_wb_o_dat[11] ;
 wire \top_cw.c_wb_o_dat[12] ;
 wire \top_cw.c_wb_o_dat[13] ;
 wire \top_cw.c_wb_o_dat[14] ;
 wire \top_cw.c_wb_o_dat[15] ;
 wire \top_cw.c_wb_o_dat[1] ;
 wire \top_cw.c_wb_o_dat[2] ;
 wire \top_cw.c_wb_o_dat[3] ;
 wire \top_cw.c_wb_o_dat[4] ;
 wire \top_cw.c_wb_o_dat[5] ;
 wire \top_cw.c_wb_o_dat[6] ;
 wire \top_cw.c_wb_o_dat[7] ;
 wire \top_cw.c_wb_o_dat[8] ;
 wire \top_cw.c_wb_o_dat[9] ;
 wire \top_cw.c_wb_sel[0] ;
 wire \top_cw.c_wb_sel[1] ;
 wire \top_cw.c_wb_stb ;
 wire \top_cw.c_wb_we ;
 wire \top_cw.cc_wb_4_burst ;
 wire \top_cw.cc_wb_8_burst ;
 wire \top_cw.cc_wb_adr[0] ;
 wire \top_cw.cc_wb_adr[10] ;
 wire \top_cw.cc_wb_adr[11] ;
 wire \top_cw.cc_wb_adr[12] ;
 wire \top_cw.cc_wb_adr[13] ;
 wire \top_cw.cc_wb_adr[14] ;
 wire \top_cw.cc_wb_adr[15] ;
 wire \top_cw.cc_wb_adr[16] ;
 wire \top_cw.cc_wb_adr[17] ;
 wire \top_cw.cc_wb_adr[18] ;
 wire \top_cw.cc_wb_adr[19] ;
 wire \top_cw.cc_wb_adr[1] ;
 wire \top_cw.cc_wb_adr[20] ;
 wire \top_cw.cc_wb_adr[21] ;
 wire \top_cw.cc_wb_adr[22] ;
 wire \top_cw.cc_wb_adr[23] ;
 wire \top_cw.cc_wb_adr[2] ;
 wire \top_cw.cc_wb_adr[3] ;
 wire \top_cw.cc_wb_adr[4] ;
 wire \top_cw.cc_wb_adr[5] ;
 wire \top_cw.cc_wb_adr[6] ;
 wire \top_cw.cc_wb_adr[7] ;
 wire \top_cw.cc_wb_adr[8] ;
 wire \top_cw.cc_wb_adr[9] ;
 wire \top_cw.cc_wb_cyc ;
 wire \top_cw.cc_wb_o_dat[0] ;
 wire \top_cw.cc_wb_o_dat[10] ;
 wire \top_cw.cc_wb_o_dat[11] ;
 wire \top_cw.cc_wb_o_dat[12] ;
 wire \top_cw.cc_wb_o_dat[13] ;
 wire \top_cw.cc_wb_o_dat[14] ;
 wire \top_cw.cc_wb_o_dat[15] ;
 wire \top_cw.cc_wb_o_dat[1] ;
 wire \top_cw.cc_wb_o_dat[2] ;
 wire \top_cw.cc_wb_o_dat[3] ;
 wire \top_cw.cc_wb_o_dat[4] ;
 wire \top_cw.cc_wb_o_dat[5] ;
 wire \top_cw.cc_wb_o_dat[6] ;
 wire \top_cw.cc_wb_o_dat[7] ;
 wire \top_cw.cc_wb_o_dat[8] ;
 wire \top_cw.cc_wb_o_dat[9] ;
 wire \top_cw.cc_wb_sel[0] ;
 wire \top_cw.cc_wb_sel[1] ;
 wire \top_cw.cc_wb_stb ;
 wire \top_cw.cc_wb_we ;
 wire \top_cw.cmp_clk ;
 wire \top_cw.cw_dir ;
 wire \top_cw.cw_req ;
 wire \top_cw.cw_rst ;
 wire \top_cw.cw_rst_z ;
 wire \top_cw.dbg_r0[0] ;
 wire \top_cw.dbg_r0[10] ;
 wire \top_cw.dbg_r0[11] ;
 wire \top_cw.dbg_r0[12] ;
 wire \top_cw.dbg_r0[13] ;
 wire \top_cw.dbg_r0[14] ;
 wire \top_cw.dbg_r0[15] ;
 wire \top_cw.dbg_r0[1] ;
 wire \top_cw.dbg_r0[2] ;
 wire \top_cw.dbg_r0[3] ;
 wire \top_cw.dbg_r0[4] ;
 wire \top_cw.dbg_r0[5] ;
 wire \top_cw.dbg_r0[6] ;
 wire \top_cw.dbg_r0[7] ;
 wire \top_cw.dbg_r0[8] ;
 wire \top_cw.dbg_r0[9] ;
 wire \top_cw.i_rst ;
 wire \top_cw.ignore_dbg_pc[0] ;
 wire \top_cw.ignore_dbg_pc[10] ;
 wire \top_cw.ignore_dbg_pc[11] ;
 wire \top_cw.ignore_dbg_pc[12] ;
 wire \top_cw.ignore_dbg_pc[13] ;
 wire \top_cw.ignore_dbg_pc[14] ;
 wire \top_cw.ignore_dbg_pc[15] ;
 wire \top_cw.ignore_dbg_pc[1] ;
 wire \top_cw.ignore_dbg_pc[2] ;
 wire \top_cw.ignore_dbg_pc[3] ;
 wire \top_cw.ignore_dbg_pc[4] ;
 wire \top_cw.ignore_dbg_pc[5] ;
 wire \top_cw.ignore_dbg_pc[6] ;
 wire \top_cw.ignore_dbg_pc[7] ;
 wire \top_cw.ignore_dbg_pc[8] ;
 wire \top_cw.ignore_dbg_pc[9] ;
 wire \top_cw.irq_s ;
 wire \top_cw.m_cw_ack ;
 wire \top_cw.m_cw_err ;
 wire \top_cw.m_cw_io_i[0] ;
 wire \top_cw.m_cw_io_i[10] ;
 wire \top_cw.m_cw_io_i[11] ;
 wire \top_cw.m_cw_io_i[12] ;
 wire \top_cw.m_cw_io_i[13] ;
 wire \top_cw.m_cw_io_i[14] ;
 wire \top_cw.m_cw_io_i[15] ;
 wire \top_cw.m_cw_io_i[1] ;
 wire \top_cw.m_cw_io_i[2] ;
 wire \top_cw.m_cw_io_i[3] ;
 wire \top_cw.m_cw_io_i[4] ;
 wire \top_cw.m_cw_io_i[5] ;
 wire \top_cw.m_cw_io_i[6] ;
 wire \top_cw.m_cw_io_i[7] ;
 wire \top_cw.m_cw_io_i[8] ;
 wire \top_cw.m_cw_io_i[9] ;
 wire \top_cw.s_rst ;
 wire \top_cw.u_wb_4_burst ;
 wire \top_cw.u_wb_8_burst ;
 wire \top_cw.u_wb_ack ;
 wire \top_cw.u_wb_ack_cc ;
 wire \top_cw.u_wb_ack_clk ;
 wire \top_cw.u_wb_ack_mxed ;
 wire \top_cw.u_wb_cyc ;
 wire \top_cw.u_wb_err ;
 wire \top_cw.u_wb_err_cc ;
 wire \top_cw.u_wb_i_dat[0] ;
 wire \top_cw.u_wb_i_dat[10] ;
 wire \top_cw.u_wb_i_dat[11] ;
 wire \top_cw.u_wb_i_dat[12] ;
 wire \top_cw.u_wb_i_dat[13] ;
 wire \top_cw.u_wb_i_dat[14] ;
 wire \top_cw.u_wb_i_dat[15] ;
 wire \top_cw.u_wb_i_dat[1] ;
 wire \top_cw.u_wb_i_dat[2] ;
 wire \top_cw.u_wb_i_dat[3] ;
 wire \top_cw.u_wb_i_dat[4] ;
 wire \top_cw.u_wb_i_dat[5] ;
 wire \top_cw.u_wb_i_dat[6] ;
 wire \top_cw.u_wb_i_dat[7] ;
 wire \top_cw.u_wb_i_dat[8] ;
 wire \top_cw.u_wb_i_dat[9] ;
 wire \top_cw.u_wb_i_dat_cc[0] ;
 wire \top_cw.u_wb_i_dat_cc[10] ;
 wire \top_cw.u_wb_i_dat_cc[11] ;
 wire \top_cw.u_wb_i_dat_cc[12] ;
 wire \top_cw.u_wb_i_dat_cc[13] ;
 wire \top_cw.u_wb_i_dat_cc[14] ;
 wire \top_cw.u_wb_i_dat_cc[15] ;
 wire \top_cw.u_wb_i_dat_cc[1] ;
 wire \top_cw.u_wb_i_dat_cc[2] ;
 wire \top_cw.u_wb_i_dat_cc[3] ;
 wire \top_cw.u_wb_i_dat_cc[4] ;
 wire \top_cw.u_wb_i_dat_cc[5] ;
 wire \top_cw.u_wb_i_dat_cc[6] ;
 wire \top_cw.u_wb_i_dat_cc[7] ;
 wire \top_cw.u_wb_i_dat_cc[8] ;
 wire \top_cw.u_wb_i_dat_cc[9] ;
 wire \top_cw.u_wb_o_dat[0] ;
 wire \top_cw.u_wb_o_dat[10] ;
 wire \top_cw.u_wb_o_dat[11] ;
 wire \top_cw.u_wb_o_dat[12] ;
 wire \top_cw.u_wb_o_dat[13] ;
 wire \top_cw.u_wb_o_dat[14] ;
 wire \top_cw.u_wb_o_dat[15] ;
 wire \top_cw.u_wb_o_dat[1] ;
 wire \top_cw.u_wb_o_dat[2] ;
 wire \top_cw.u_wb_o_dat[3] ;
 wire \top_cw.u_wb_o_dat[4] ;
 wire \top_cw.u_wb_o_dat[5] ;
 wire \top_cw.u_wb_o_dat[6] ;
 wire \top_cw.u_wb_o_dat[7] ;
 wire \top_cw.u_wb_o_dat[8] ;
 wire \top_cw.u_wb_o_dat[9] ;
 wire \top_cw.u_wb_sel[0] ;
 wire \top_cw.u_wb_sel[1] ;
 wire \top_cw.u_wb_stb ;
 wire \top_cw.u_wb_we ;
 wire \top_cw.upc.arb_sel ;
 wire \top_cw.upc.cc_data_page ;
 wire \top_cw.upc.cc_instr_page ;
 wire \top_cw.upc.data_cacheable ;
 wire \top_cw.upc.data_i_mem_data[0] ;
 wire \top_cw.upc.data_i_mem_data[10] ;
 wire \top_cw.upc.data_i_mem_data[11] ;
 wire \top_cw.upc.data_i_mem_data[12] ;
 wire \top_cw.upc.data_i_mem_data[13] ;
 wire \top_cw.upc.data_i_mem_data[14] ;
 wire \top_cw.upc.data_i_mem_data[15] ;
 wire \top_cw.upc.data_i_mem_data[1] ;
 wire \top_cw.upc.data_i_mem_data[2] ;
 wire \top_cw.upc.data_i_mem_data[3] ;
 wire \top_cw.upc.data_i_mem_data[4] ;
 wire \top_cw.upc.data_i_mem_data[5] ;
 wire \top_cw.upc.data_i_mem_data[6] ;
 wire \top_cw.upc.data_i_mem_data[7] ;
 wire \top_cw.upc.data_i_mem_data[8] ;
 wire \top_cw.upc.data_i_mem_data[9] ;
 wire \top_cw.upc.data_mem_ack ;
 wire \top_cw.upc.data_mem_addr[0] ;
 wire \top_cw.upc.data_mem_addr[10] ;
 wire \top_cw.upc.data_mem_addr[11] ;
 wire \top_cw.upc.data_mem_addr[12] ;
 wire \top_cw.upc.data_mem_addr[13] ;
 wire \top_cw.upc.data_mem_addr[14] ;
 wire \top_cw.upc.data_mem_addr[15] ;
 wire \top_cw.upc.data_mem_addr[1] ;
 wire \top_cw.upc.data_mem_addr[2] ;
 wire \top_cw.upc.data_mem_addr[3] ;
 wire \top_cw.upc.data_mem_addr[4] ;
 wire \top_cw.upc.data_mem_addr[5] ;
 wire \top_cw.upc.data_mem_addr[6] ;
 wire \top_cw.upc.data_mem_addr[7] ;
 wire \top_cw.upc.data_mem_addr[8] ;
 wire \top_cw.upc.data_mem_addr[9] ;
 wire \top_cw.upc.data_mem_addr_paged[0] ;
 wire \top_cw.upc.data_mem_addr_paged[10] ;
 wire \top_cw.upc.data_mem_addr_paged[11] ;
 wire \top_cw.upc.data_mem_addr_paged[12] ;
 wire \top_cw.upc.data_mem_addr_paged[13] ;
 wire \top_cw.upc.data_mem_addr_paged[14] ;
 wire \top_cw.upc.data_mem_addr_paged[15] ;
 wire \top_cw.upc.data_mem_addr_paged[16] ;
 wire \top_cw.upc.data_mem_addr_paged[17] ;
 wire \top_cw.upc.data_mem_addr_paged[18] ;
 wire \top_cw.upc.data_mem_addr_paged[19] ;
 wire \top_cw.upc.data_mem_addr_paged[1] ;
 wire \top_cw.upc.data_mem_addr_paged[20] ;
 wire \top_cw.upc.data_mem_addr_paged[21] ;
 wire \top_cw.upc.data_mem_addr_paged[22] ;
 wire \top_cw.upc.data_mem_addr_paged[23] ;
 wire \top_cw.upc.data_mem_addr_paged[2] ;
 wire \top_cw.upc.data_mem_addr_paged[3] ;
 wire \top_cw.upc.data_mem_addr_paged[4] ;
 wire \top_cw.upc.data_mem_addr_paged[5] ;
 wire \top_cw.upc.data_mem_addr_paged[6] ;
 wire \top_cw.upc.data_mem_addr_paged[7] ;
 wire \top_cw.upc.data_mem_addr_paged[8] ;
 wire \top_cw.upc.data_mem_addr_paged[9] ;
 wire \top_cw.upc.data_mem_req ;
 wire \top_cw.upc.data_mem_sel[0] ;
 wire \top_cw.upc.data_mem_sel[1] ;
 wire \top_cw.upc.data_mem_we ;
 wire \top_cw.upc.data_o_mem_data[0] ;
 wire \top_cw.upc.data_o_mem_data[10] ;
 wire \top_cw.upc.data_o_mem_data[11] ;
 wire \top_cw.upc.data_o_mem_data[12] ;
 wire \top_cw.upc.data_o_mem_data[13] ;
 wire \top_cw.upc.data_o_mem_data[14] ;
 wire \top_cw.upc.data_o_mem_data[15] ;
 wire \top_cw.upc.data_o_mem_data[1] ;
 wire \top_cw.upc.data_o_mem_data[2] ;
 wire \top_cw.upc.data_o_mem_data[3] ;
 wire \top_cw.upc.data_o_mem_data[4] ;
 wire \top_cw.upc.data_o_mem_data[5] ;
 wire \top_cw.upc.data_o_mem_data[6] ;
 wire \top_cw.upc.data_o_mem_data[7] ;
 wire \top_cw.upc.data_o_mem_data[8] ;
 wire \top_cw.upc.data_o_mem_data[9] ;
 wire \top_cw.upc.data_wb_4_burst ;
 wire \top_cw.upc.data_wb_ack ;
 wire \top_cw.upc.data_wb_adr[0] ;
 wire \top_cw.upc.data_wb_adr[10] ;
 wire \top_cw.upc.data_wb_adr[11] ;
 wire \top_cw.upc.data_wb_adr[12] ;
 wire \top_cw.upc.data_wb_adr[13] ;
 wire \top_cw.upc.data_wb_adr[14] ;
 wire \top_cw.upc.data_wb_adr[15] ;
 wire \top_cw.upc.data_wb_adr[16] ;
 wire \top_cw.upc.data_wb_adr[17] ;
 wire \top_cw.upc.data_wb_adr[18] ;
 wire \top_cw.upc.data_wb_adr[19] ;
 wire \top_cw.upc.data_wb_adr[1] ;
 wire \top_cw.upc.data_wb_adr[20] ;
 wire \top_cw.upc.data_wb_adr[21] ;
 wire \top_cw.upc.data_wb_adr[22] ;
 wire \top_cw.upc.data_wb_adr[23] ;
 wire \top_cw.upc.data_wb_adr[2] ;
 wire \top_cw.upc.data_wb_adr[3] ;
 wire \top_cw.upc.data_wb_adr[4] ;
 wire \top_cw.upc.data_wb_adr[5] ;
 wire \top_cw.upc.data_wb_adr[6] ;
 wire \top_cw.upc.data_wb_adr[7] ;
 wire \top_cw.upc.data_wb_adr[8] ;
 wire \top_cw.upc.data_wb_adr[9] ;
 wire \top_cw.upc.data_wb_cyc ;
 wire \top_cw.upc.data_wb_err ;
 wire \top_cw.upc.data_wb_o_dat[0] ;
 wire \top_cw.upc.data_wb_o_dat[10] ;
 wire \top_cw.upc.data_wb_o_dat[11] ;
 wire \top_cw.upc.data_wb_o_dat[12] ;
 wire \top_cw.upc.data_wb_o_dat[13] ;
 wire \top_cw.upc.data_wb_o_dat[14] ;
 wire \top_cw.upc.data_wb_o_dat[15] ;
 wire \top_cw.upc.data_wb_o_dat[1] ;
 wire \top_cw.upc.data_wb_o_dat[2] ;
 wire \top_cw.upc.data_wb_o_dat[3] ;
 wire \top_cw.upc.data_wb_o_dat[4] ;
 wire \top_cw.upc.data_wb_o_dat[5] ;
 wire \top_cw.upc.data_wb_o_dat[6] ;
 wire \top_cw.upc.data_wb_o_dat[7] ;
 wire \top_cw.upc.data_wb_o_dat[8] ;
 wire \top_cw.upc.data_wb_o_dat[9] ;
 wire \top_cw.upc.data_wb_sel[0] ;
 wire \top_cw.upc.data_wb_sel[1] ;
 wire \top_cw.upc.data_wb_stb ;
 wire \top_cw.upc.data_wb_we ;
 wire \top_cw.upc.dbg_out_core[21] ;
 wire \top_cw.upc.dcache_exception ;
 wire \top_cw.upc.fetch_ppl_submit ;
 wire \top_cw.upc.fetch_req_ack ;
 wire \top_cw.upc.fetch_req_active ;
 wire \top_cw.upc.fetch_req_addr[0] ;
 wire \top_cw.upc.fetch_req_addr[10] ;
 wire \top_cw.upc.fetch_req_addr[11] ;
 wire \top_cw.upc.fetch_req_addr[12] ;
 wire \top_cw.upc.fetch_req_addr[13] ;
 wire \top_cw.upc.fetch_req_addr[14] ;
 wire \top_cw.upc.fetch_req_addr[15] ;
 wire \top_cw.upc.fetch_req_addr[1] ;
 wire \top_cw.upc.fetch_req_addr[2] ;
 wire \top_cw.upc.fetch_req_addr[3] ;
 wire \top_cw.upc.fetch_req_addr[4] ;
 wire \top_cw.upc.fetch_req_addr[5] ;
 wire \top_cw.upc.fetch_req_addr[6] ;
 wire \top_cw.upc.fetch_req_addr[7] ;
 wire \top_cw.upc.fetch_req_addr[8] ;
 wire \top_cw.upc.fetch_req_addr[9] ;
 wire \top_cw.upc.fetch_req_data[0] ;
 wire \top_cw.upc.fetch_req_data[10] ;
 wire \top_cw.upc.fetch_req_data[11] ;
 wire \top_cw.upc.fetch_req_data[12] ;
 wire \top_cw.upc.fetch_req_data[13] ;
 wire \top_cw.upc.fetch_req_data[14] ;
 wire \top_cw.upc.fetch_req_data[15] ;
 wire \top_cw.upc.fetch_req_data[16] ;
 wire \top_cw.upc.fetch_req_data[17] ;
 wire \top_cw.upc.fetch_req_data[18] ;
 wire \top_cw.upc.fetch_req_data[19] ;
 wire \top_cw.upc.fetch_req_data[1] ;
 wire \top_cw.upc.fetch_req_data[20] ;
 wire \top_cw.upc.fetch_req_data[21] ;
 wire \top_cw.upc.fetch_req_data[22] ;
 wire \top_cw.upc.fetch_req_data[23] ;
 wire \top_cw.upc.fetch_req_data[24] ;
 wire \top_cw.upc.fetch_req_data[25] ;
 wire \top_cw.upc.fetch_req_data[26] ;
 wire \top_cw.upc.fetch_req_data[27] ;
 wire \top_cw.upc.fetch_req_data[28] ;
 wire \top_cw.upc.fetch_req_data[29] ;
 wire \top_cw.upc.fetch_req_data[2] ;
 wire \top_cw.upc.fetch_req_data[30] ;
 wire \top_cw.upc.fetch_req_data[31] ;
 wire \top_cw.upc.fetch_req_data[3] ;
 wire \top_cw.upc.fetch_req_data[4] ;
 wire \top_cw.upc.fetch_req_data[5] ;
 wire \top_cw.upc.fetch_req_data[6] ;
 wire \top_cw.upc.fetch_req_data[7] ;
 wire \top_cw.upc.fetch_req_data[8] ;
 wire \top_cw.upc.fetch_req_data[9] ;
 wire \top_cw.upc.fetch_wb_ack ;
 wire \top_cw.upc.fetch_wb_adr[0] ;
 wire \top_cw.upc.fetch_wb_adr[10] ;
 wire \top_cw.upc.fetch_wb_adr[11] ;
 wire \top_cw.upc.fetch_wb_adr[12] ;
 wire \top_cw.upc.fetch_wb_adr[13] ;
 wire \top_cw.upc.fetch_wb_adr[14] ;
 wire \top_cw.upc.fetch_wb_adr[15] ;
 wire \top_cw.upc.fetch_wb_adr[1] ;
 wire \top_cw.upc.fetch_wb_adr[2] ;
 wire \top_cw.upc.fetch_wb_adr[3] ;
 wire \top_cw.upc.fetch_wb_adr[4] ;
 wire \top_cw.upc.fetch_wb_adr[5] ;
 wire \top_cw.upc.fetch_wb_adr[6] ;
 wire \top_cw.upc.fetch_wb_adr[7] ;
 wire \top_cw.upc.fetch_wb_adr[8] ;
 wire \top_cw.upc.fetch_wb_adr[9] ;
 wire \top_cw.upc.fetch_wb_adr_paged[0] ;
 wire \top_cw.upc.fetch_wb_adr_paged[10] ;
 wire \top_cw.upc.fetch_wb_adr_paged[11] ;
 wire \top_cw.upc.fetch_wb_adr_paged[12] ;
 wire \top_cw.upc.fetch_wb_adr_paged[13] ;
 wire \top_cw.upc.fetch_wb_adr_paged[14] ;
 wire \top_cw.upc.fetch_wb_adr_paged[15] ;
 wire \top_cw.upc.fetch_wb_adr_paged[16] ;
 wire \top_cw.upc.fetch_wb_adr_paged[17] ;
 wire \top_cw.upc.fetch_wb_adr_paged[18] ;
 wire \top_cw.upc.fetch_wb_adr_paged[19] ;
 wire \top_cw.upc.fetch_wb_adr_paged[1] ;
 wire \top_cw.upc.fetch_wb_adr_paged[20] ;
 wire \top_cw.upc.fetch_wb_adr_paged[21] ;
 wire \top_cw.upc.fetch_wb_adr_paged[22] ;
 wire \top_cw.upc.fetch_wb_adr_paged[23] ;
 wire \top_cw.upc.fetch_wb_adr_paged[2] ;
 wire \top_cw.upc.fetch_wb_adr_paged[3] ;
 wire \top_cw.upc.fetch_wb_adr_paged[4] ;
 wire \top_cw.upc.fetch_wb_adr_paged[5] ;
 wire \top_cw.upc.fetch_wb_adr_paged[6] ;
 wire \top_cw.upc.fetch_wb_adr_paged[7] ;
 wire \top_cw.upc.fetch_wb_adr_paged[8] ;
 wire \top_cw.upc.fetch_wb_adr_paged[9] ;
 wire \top_cw.upc.fetch_wb_cyc ;
 wire \top_cw.upc.fetch_wb_err ;
 wire \top_cw.upc.fetch_wb_o_dat[0] ;
 wire \top_cw.upc.fetch_wb_o_dat[10] ;
 wire \top_cw.upc.fetch_wb_o_dat[11] ;
 wire \top_cw.upc.fetch_wb_o_dat[12] ;
 wire \top_cw.upc.fetch_wb_o_dat[13] ;
 wire \top_cw.upc.fetch_wb_o_dat[14] ;
 wire \top_cw.upc.fetch_wb_o_dat[15] ;
 wire \top_cw.upc.fetch_wb_o_dat[1] ;
 wire \top_cw.upc.fetch_wb_o_dat[2] ;
 wire \top_cw.upc.fetch_wb_o_dat[3] ;
 wire \top_cw.upc.fetch_wb_o_dat[4] ;
 wire \top_cw.upc.fetch_wb_o_dat[5] ;
 wire \top_cw.upc.fetch_wb_o_dat[6] ;
 wire \top_cw.upc.fetch_wb_o_dat[7] ;
 wire \top_cw.upc.fetch_wb_o_dat[8] ;
 wire \top_cw.upc.fetch_wb_o_dat[9] ;
 wire \top_cw.upc.fetch_wb_sel[0] ;
 wire \top_cw.upc.fetch_wb_sel[1] ;
 wire \top_cw.upc.fetch_wb_stb ;
 wire \top_cw.upc.fetch_wb_we ;
 wire \top_cw.upc.icache_flush ;
 wire \top_cw.upc.sr_bus_addr[0] ;
 wire \top_cw.upc.sr_bus_addr[10] ;
 wire \top_cw.upc.sr_bus_addr[11] ;
 wire \top_cw.upc.sr_bus_addr[12] ;
 wire \top_cw.upc.sr_bus_addr[13] ;
 wire \top_cw.upc.sr_bus_addr[14] ;
 wire \top_cw.upc.sr_bus_addr[15] ;
 wire \top_cw.upc.sr_bus_addr[1] ;
 wire \top_cw.upc.sr_bus_addr[2] ;
 wire \top_cw.upc.sr_bus_addr[3] ;
 wire \top_cw.upc.sr_bus_addr[4] ;
 wire \top_cw.upc.sr_bus_addr[5] ;
 wire \top_cw.upc.sr_bus_addr[6] ;
 wire \top_cw.upc.sr_bus_addr[7] ;
 wire \top_cw.upc.sr_bus_addr[8] ;
 wire \top_cw.upc.sr_bus_addr[9] ;
 wire \top_cw.upc.sr_bus_data_o[0] ;
 wire \top_cw.upc.sr_bus_data_o[10] ;
 wire \top_cw.upc.sr_bus_data_o[11] ;
 wire \top_cw.upc.sr_bus_data_o[12] ;
 wire \top_cw.upc.sr_bus_data_o[13] ;
 wire \top_cw.upc.sr_bus_data_o[14] ;
 wire \top_cw.upc.sr_bus_data_o[15] ;
 wire \top_cw.upc.sr_bus_data_o[1] ;
 wire \top_cw.upc.sr_bus_data_o[2] ;
 wire \top_cw.upc.sr_bus_data_o[3] ;
 wire \top_cw.upc.sr_bus_data_o[4] ;
 wire \top_cw.upc.sr_bus_data_o[5] ;
 wire \top_cw.upc.sr_bus_data_o[6] ;
 wire \top_cw.upc.sr_bus_data_o[7] ;
 wire \top_cw.upc.sr_bus_data_o[8] ;
 wire \top_cw.upc.sr_bus_data_o[9] ;
 wire \top_cw.upc.sr_bus_we ;
 wire \top_cw.upc.wb0_8_burst ;
 wire \top_cw.upc.wb1_4_burst ;
 wire \top_cw.upc.wb1_8_burst ;

 clk_div \top_cw.clk_div  (.clock_sel(la_data_in[104]),
    .div_we(\top_cw.u_wb_ack_clk ),
    .i_clk(user_clock2),
    .i_rst(\top_cw.s_rst ),
    .o_clk(\top_cw.cmp_clk ),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .div({\top_cw.u_wb_o_dat[3] ,
    \top_cw.u_wb_o_dat[2] ,
    \top_cw.u_wb_o_dat[1] ,
    \top_cw.u_wb_o_dat[0] }));
 top_cw_logic \top_cw.top_cw_logic  (.c_wb_4_burst(\top_cw.c_wb_4_burst ),
    .c_wb_8_burst(\top_cw.c_wb_8_burst ),
    .c_wb_ack_cmp(\top_cw.c_wb_ack_cmp ),
    .c_wb_cyc(\top_cw.c_wb_cyc ),
    .c_wb_err_cmp(\top_cw.c_wb_err_cmp ),
    .c_wb_stb(\top_cw.c_wb_stb ),
    .c_wb_we(\top_cw.c_wb_we ),
    .cc_wb_4_burst(\top_cw.cc_wb_4_burst ),
    .cc_wb_8_burst(\top_cw.cc_wb_8_burst ),
    .cc_wb_cyc(\top_cw.cc_wb_cyc ),
    .cc_wb_stb(\top_cw.cc_wb_stb ),
    .cc_wb_we(\top_cw.cc_wb_we ),
    .cw_ack(io_in[19]),
    .cw_clk(\top_cw.cmp_clk ),
    .cw_err(io_in[20]),
    .cw_rst(\top_cw.cw_rst ),
    .cw_rst_z(\top_cw.cw_rst_z ),
    .i_clk(user_clock2),
    .i_irq(io_in[22]),
    .i_rst(\top_cw.i_rst ),
    .ic_split_clock(la_data_in[104]),
    .irq_s(\top_cw.irq_s ),
    .la_cw_ack(la_data_in[94]),
    .la_cw_ovr(la_data_in[98]),
    .m_cw_ack(\top_cw.m_cw_ack ),
    .m_cw_err(\top_cw.m_cw_err ),
    .s_rst(\top_cw.s_rst ),
    .u_wb_4_burst(\top_cw.u_wb_4_burst ),
    .u_wb_8_burst(\top_cw.u_wb_8_burst ),
    .u_wb_ack(\top_cw.u_wb_ack ),
    .u_wb_ack_cc(\top_cw.u_wb_ack_cc ),
    .u_wb_ack_clk(\top_cw.u_wb_ack_clk ),
    .u_wb_ack_mxed(\top_cw.u_wb_ack_mxed ),
    .u_wb_cyc(\top_cw.u_wb_cyc ),
    .u_wb_err(\top_cw.u_wb_err ),
    .u_wb_err_cc(\top_cw.u_wb_err_cc ),
    .u_wb_stb(\top_cw.u_wb_stb ),
    .u_wb_we(\top_cw.u_wb_we ),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .c_wb_adr({\top_cw.c_wb_adr[23] ,
    \top_cw.c_wb_adr[22] ,
    \top_cw.c_wb_adr[21] ,
    \top_cw.c_wb_adr[20] ,
    \top_cw.c_wb_adr[19] ,
    \top_cw.c_wb_adr[18] ,
    \top_cw.c_wb_adr[17] ,
    \top_cw.c_wb_adr[16] ,
    \top_cw.c_wb_adr[15] ,
    \top_cw.c_wb_adr[14] ,
    \top_cw.c_wb_adr[13] ,
    \top_cw.c_wb_adr[12] ,
    \top_cw.c_wb_adr[11] ,
    \top_cw.c_wb_adr[10] ,
    \top_cw.c_wb_adr[9] ,
    \top_cw.c_wb_adr[8] ,
    \top_cw.c_wb_adr[7] ,
    \top_cw.c_wb_adr[6] ,
    \top_cw.c_wb_adr[5] ,
    \top_cw.c_wb_adr[4] ,
    \top_cw.c_wb_adr[3] ,
    \top_cw.c_wb_adr[2] ,
    \top_cw.c_wb_adr[1] ,
    \top_cw.c_wb_adr[0] }),
    .c_wb_i_dat_cmp({\top_cw.c_wb_i_dat_cmp[15] ,
    \top_cw.c_wb_i_dat_cmp[14] ,
    \top_cw.c_wb_i_dat_cmp[13] ,
    \top_cw.c_wb_i_dat_cmp[12] ,
    \top_cw.c_wb_i_dat_cmp[11] ,
    \top_cw.c_wb_i_dat_cmp[10] ,
    \top_cw.c_wb_i_dat_cmp[9] ,
    \top_cw.c_wb_i_dat_cmp[8] ,
    \top_cw.c_wb_i_dat_cmp[7] ,
    \top_cw.c_wb_i_dat_cmp[6] ,
    \top_cw.c_wb_i_dat_cmp[5] ,
    \top_cw.c_wb_i_dat_cmp[4] ,
    \top_cw.c_wb_i_dat_cmp[3] ,
    \top_cw.c_wb_i_dat_cmp[2] ,
    \top_cw.c_wb_i_dat_cmp[1] ,
    \top_cw.c_wb_i_dat_cmp[0] }),
    .c_wb_o_dat({\top_cw.c_wb_o_dat[15] ,
    \top_cw.c_wb_o_dat[14] ,
    \top_cw.c_wb_o_dat[13] ,
    \top_cw.c_wb_o_dat[12] ,
    \top_cw.c_wb_o_dat[11] ,
    \top_cw.c_wb_o_dat[10] ,
    \top_cw.c_wb_o_dat[9] ,
    \top_cw.c_wb_o_dat[8] ,
    \top_cw.c_wb_o_dat[7] ,
    \top_cw.c_wb_o_dat[6] ,
    \top_cw.c_wb_o_dat[5] ,
    \top_cw.c_wb_o_dat[4] ,
    \top_cw.c_wb_o_dat[3] ,
    \top_cw.c_wb_o_dat[2] ,
    \top_cw.c_wb_o_dat[1] ,
    \top_cw.c_wb_o_dat[0] }),
    .c_wb_sel({\top_cw.c_wb_sel[1] ,
    \top_cw.c_wb_sel[0] }),
    .cc_wb_adr({\top_cw.cc_wb_adr[23] ,
    \top_cw.cc_wb_adr[22] ,
    \top_cw.cc_wb_adr[21] ,
    \top_cw.cc_wb_adr[20] ,
    \top_cw.cc_wb_adr[19] ,
    \top_cw.cc_wb_adr[18] ,
    \top_cw.cc_wb_adr[17] ,
    \top_cw.cc_wb_adr[16] ,
    \top_cw.cc_wb_adr[15] ,
    \top_cw.cc_wb_adr[14] ,
    \top_cw.cc_wb_adr[13] ,
    \top_cw.cc_wb_adr[12] ,
    \top_cw.cc_wb_adr[11] ,
    \top_cw.cc_wb_adr[10] ,
    \top_cw.cc_wb_adr[9] ,
    \top_cw.cc_wb_adr[8] ,
    \top_cw.cc_wb_adr[7] ,
    \top_cw.cc_wb_adr[6] ,
    \top_cw.cc_wb_adr[5] ,
    \top_cw.cc_wb_adr[4] ,
    \top_cw.cc_wb_adr[3] ,
    \top_cw.cc_wb_adr[2] ,
    \top_cw.cc_wb_adr[1] ,
    \top_cw.cc_wb_adr[0] }),
    .cc_wb_o_dat({\top_cw.cc_wb_o_dat[15] ,
    \top_cw.cc_wb_o_dat[14] ,
    \top_cw.cc_wb_o_dat[13] ,
    \top_cw.cc_wb_o_dat[12] ,
    \top_cw.cc_wb_o_dat[11] ,
    \top_cw.cc_wb_o_dat[10] ,
    \top_cw.cc_wb_o_dat[9] ,
    \top_cw.cc_wb_o_dat[8] ,
    \top_cw.cc_wb_o_dat[7] ,
    \top_cw.cc_wb_o_dat[6] ,
    \top_cw.cc_wb_o_dat[5] ,
    \top_cw.cc_wb_o_dat[4] ,
    \top_cw.cc_wb_o_dat[3] ,
    \top_cw.cc_wb_o_dat[2] ,
    \top_cw.cc_wb_o_dat[1] ,
    \top_cw.cc_wb_o_dat[0] }),
    .cc_wb_sel({\top_cw.cc_wb_sel[1] ,
    \top_cw.cc_wb_sel[0] }),
    .cw_io_i({io_in[15],
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
    .la_cw_io_i({la_data_in[93],
    la_data_in[92],
    la_data_in[91],
    la_data_in[90],
    la_data_in[89],
    la_data_in[88],
    la_data_in[87],
    la_data_in[86],
    la_data_in[85],
    la_data_in[84],
    la_data_in[83],
    la_data_in[82],
    la_data_in[81],
    la_data_in[80],
    la_data_in[79],
    la_data_in[78]}),
    .m_cw_io_i({\top_cw.m_cw_io_i[15] ,
    \top_cw.m_cw_io_i[14] ,
    \top_cw.m_cw_io_i[13] ,
    \top_cw.m_cw_io_i[12] ,
    \top_cw.m_cw_io_i[11] ,
    \top_cw.m_cw_io_i[10] ,
    \top_cw.m_cw_io_i[9] ,
    \top_cw.m_cw_io_i[8] ,
    \top_cw.m_cw_io_i[7] ,
    \top_cw.m_cw_io_i[6] ,
    \top_cw.m_cw_io_i[5] ,
    \top_cw.m_cw_io_i[4] ,
    \top_cw.m_cw_io_i[3] ,
    \top_cw.m_cw_io_i[2] ,
    \top_cw.m_cw_io_i[1] ,
    \top_cw.m_cw_io_i[0] }),
    .u_wb_adr({la_data_out[61],
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
    la_data_out[38]}),
    .u_wb_i_dat({\top_cw.u_wb_i_dat[15] ,
    \top_cw.u_wb_i_dat[14] ,
    \top_cw.u_wb_i_dat[13] ,
    \top_cw.u_wb_i_dat[12] ,
    \top_cw.u_wb_i_dat[11] ,
    \top_cw.u_wb_i_dat[10] ,
    \top_cw.u_wb_i_dat[9] ,
    \top_cw.u_wb_i_dat[8] ,
    \top_cw.u_wb_i_dat[7] ,
    \top_cw.u_wb_i_dat[6] ,
    \top_cw.u_wb_i_dat[5] ,
    \top_cw.u_wb_i_dat[4] ,
    \top_cw.u_wb_i_dat[3] ,
    \top_cw.u_wb_i_dat[2] ,
    \top_cw.u_wb_i_dat[1] ,
    \top_cw.u_wb_i_dat[0] }),
    .u_wb_i_dat_cc({\top_cw.u_wb_i_dat_cc[15] ,
    \top_cw.u_wb_i_dat_cc[14] ,
    \top_cw.u_wb_i_dat_cc[13] ,
    \top_cw.u_wb_i_dat_cc[12] ,
    \top_cw.u_wb_i_dat_cc[11] ,
    \top_cw.u_wb_i_dat_cc[10] ,
    \top_cw.u_wb_i_dat_cc[9] ,
    \top_cw.u_wb_i_dat_cc[8] ,
    \top_cw.u_wb_i_dat_cc[7] ,
    \top_cw.u_wb_i_dat_cc[6] ,
    \top_cw.u_wb_i_dat_cc[5] ,
    \top_cw.u_wb_i_dat_cc[4] ,
    \top_cw.u_wb_i_dat_cc[3] ,
    \top_cw.u_wb_i_dat_cc[2] ,
    \top_cw.u_wb_i_dat_cc[1] ,
    \top_cw.u_wb_i_dat_cc[0] }),
    .u_wb_o_dat({\top_cw.u_wb_o_dat[15] ,
    \top_cw.u_wb_o_dat[14] ,
    \top_cw.u_wb_o_dat[13] ,
    \top_cw.u_wb_o_dat[12] ,
    \top_cw.u_wb_o_dat[11] ,
    \top_cw.u_wb_o_dat[10] ,
    \top_cw.u_wb_o_dat[9] ,
    \top_cw.u_wb_o_dat[8] ,
    \top_cw.u_wb_o_dat[7] ,
    \top_cw.u_wb_o_dat[6] ,
    \top_cw.u_wb_o_dat[5] ,
    \top_cw.u_wb_o_dat[4] ,
    \top_cw.u_wb_o_dat[3] ,
    \top_cw.u_wb_o_dat[2] ,
    \top_cw.u_wb_o_dat[1] ,
    \top_cw.u_wb_o_dat[0] }),
    .u_wb_sel({\top_cw.u_wb_sel[1] ,
    \top_cw.u_wb_sel[0] }));
 core \top_cw.upc.core  (.i_clk(user_clock2),
    .i_irq(\top_cw.irq_s ),
    .i_mem_ack(\top_cw.upc.data_mem_ack ),
    .i_mem_exception(\top_cw.upc.dcache_exception ),
    .i_req_data_valid(\top_cw.upc.fetch_req_ack ),
    .i_rst(\top_cw.s_rst ),
    .o_c_data_page(\top_cw.upc.cc_data_page ),
    .o_c_instr_page(\top_cw.upc.cc_instr_page ),
    .o_icache_flush(\top_cw.upc.icache_flush ),
    .o_mem_req(\top_cw.upc.data_mem_req ),
    .o_mem_we(\top_cw.upc.data_mem_we ),
    .o_req_active(\top_cw.upc.fetch_req_active ),
    .o_req_ppl_submit(\top_cw.upc.fetch_ppl_submit ),
    .sr_bus_we(\top_cw.upc.sr_bus_we ),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .dbg_in({la_data_in[103],
    la_data_in[102],
    la_data_in[101],
    la_data_in[100]}),
    .dbg_out({la_data_out[35],
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
    \top_cw.upc.dbg_out_core[21] ,
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
    .dbg_pc({\top_cw.ignore_dbg_pc[15] ,
    \top_cw.ignore_dbg_pc[14] ,
    \top_cw.ignore_dbg_pc[13] ,
    \top_cw.ignore_dbg_pc[12] ,
    \top_cw.ignore_dbg_pc[11] ,
    \top_cw.ignore_dbg_pc[10] ,
    \top_cw.ignore_dbg_pc[9] ,
    \top_cw.ignore_dbg_pc[8] ,
    \top_cw.ignore_dbg_pc[7] ,
    \top_cw.ignore_dbg_pc[6] ,
    \top_cw.ignore_dbg_pc[5] ,
    \top_cw.ignore_dbg_pc[4] ,
    \top_cw.ignore_dbg_pc[3] ,
    \top_cw.ignore_dbg_pc[2] ,
    \top_cw.ignore_dbg_pc[1] ,
    \top_cw.ignore_dbg_pc[0] }),
    .dbg_r0({\top_cw.dbg_r0[15] ,
    \top_cw.dbg_r0[14] ,
    \top_cw.dbg_r0[13] ,
    \top_cw.dbg_r0[12] ,
    \top_cw.dbg_r0[11] ,
    \top_cw.dbg_r0[10] ,
    \top_cw.dbg_r0[9] ,
    \top_cw.dbg_r0[8] ,
    \top_cw.dbg_r0[7] ,
    \top_cw.dbg_r0[6] ,
    \top_cw.dbg_r0[5] ,
    \top_cw.dbg_r0[4] ,
    \top_cw.dbg_r0[3] ,
    \top_cw.dbg_r0[2] ,
    \top_cw.dbg_r0[1] ,
    \top_cw.dbg_r0[0] }),
    .i_mem_data({\top_cw.upc.data_i_mem_data[15] ,
    \top_cw.upc.data_i_mem_data[14] ,
    \top_cw.upc.data_i_mem_data[13] ,
    \top_cw.upc.data_i_mem_data[12] ,
    \top_cw.upc.data_i_mem_data[11] ,
    \top_cw.upc.data_i_mem_data[10] ,
    \top_cw.upc.data_i_mem_data[9] ,
    \top_cw.upc.data_i_mem_data[8] ,
    \top_cw.upc.data_i_mem_data[7] ,
    \top_cw.upc.data_i_mem_data[6] ,
    \top_cw.upc.data_i_mem_data[5] ,
    \top_cw.upc.data_i_mem_data[4] ,
    \top_cw.upc.data_i_mem_data[3] ,
    \top_cw.upc.data_i_mem_data[2] ,
    \top_cw.upc.data_i_mem_data[1] ,
    \top_cw.upc.data_i_mem_data[0] }),
    .i_req_data({\top_cw.upc.fetch_req_data[31] ,
    \top_cw.upc.fetch_req_data[30] ,
    \top_cw.upc.fetch_req_data[29] ,
    \top_cw.upc.fetch_req_data[28] ,
    \top_cw.upc.fetch_req_data[27] ,
    \top_cw.upc.fetch_req_data[26] ,
    \top_cw.upc.fetch_req_data[25] ,
    \top_cw.upc.fetch_req_data[24] ,
    \top_cw.upc.fetch_req_data[23] ,
    \top_cw.upc.fetch_req_data[22] ,
    \top_cw.upc.fetch_req_data[21] ,
    \top_cw.upc.fetch_req_data[20] ,
    \top_cw.upc.fetch_req_data[19] ,
    \top_cw.upc.fetch_req_data[18] ,
    \top_cw.upc.fetch_req_data[17] ,
    \top_cw.upc.fetch_req_data[16] ,
    \top_cw.upc.fetch_req_data[15] ,
    \top_cw.upc.fetch_req_data[14] ,
    \top_cw.upc.fetch_req_data[13] ,
    \top_cw.upc.fetch_req_data[12] ,
    \top_cw.upc.fetch_req_data[11] ,
    \top_cw.upc.fetch_req_data[10] ,
    \top_cw.upc.fetch_req_data[9] ,
    \top_cw.upc.fetch_req_data[8] ,
    \top_cw.upc.fetch_req_data[7] ,
    \top_cw.upc.fetch_req_data[6] ,
    \top_cw.upc.fetch_req_data[5] ,
    \top_cw.upc.fetch_req_data[4] ,
    \top_cw.upc.fetch_req_data[3] ,
    \top_cw.upc.fetch_req_data[2] ,
    \top_cw.upc.fetch_req_data[1] ,
    \top_cw.upc.fetch_req_data[0] }),
    .o_mem_addr({\top_cw.upc.data_mem_addr[15] ,
    \top_cw.upc.data_mem_addr[14] ,
    \top_cw.upc.data_mem_addr[13] ,
    \top_cw.upc.data_mem_addr[12] ,
    \top_cw.upc.data_mem_addr[11] ,
    \top_cw.upc.data_mem_addr[10] ,
    \top_cw.upc.data_mem_addr[9] ,
    \top_cw.upc.data_mem_addr[8] ,
    \top_cw.upc.data_mem_addr[7] ,
    \top_cw.upc.data_mem_addr[6] ,
    \top_cw.upc.data_mem_addr[5] ,
    \top_cw.upc.data_mem_addr[4] ,
    \top_cw.upc.data_mem_addr[3] ,
    \top_cw.upc.data_mem_addr[2] ,
    \top_cw.upc.data_mem_addr[1] ,
    \top_cw.upc.data_mem_addr[0] }),
    .o_mem_data({\top_cw.upc.data_o_mem_data[15] ,
    \top_cw.upc.data_o_mem_data[14] ,
    \top_cw.upc.data_o_mem_data[13] ,
    \top_cw.upc.data_o_mem_data[12] ,
    \top_cw.upc.data_o_mem_data[11] ,
    \top_cw.upc.data_o_mem_data[10] ,
    \top_cw.upc.data_o_mem_data[9] ,
    \top_cw.upc.data_o_mem_data[8] ,
    \top_cw.upc.data_o_mem_data[7] ,
    \top_cw.upc.data_o_mem_data[6] ,
    \top_cw.upc.data_o_mem_data[5] ,
    \top_cw.upc.data_o_mem_data[4] ,
    \top_cw.upc.data_o_mem_data[3] ,
    \top_cw.upc.data_o_mem_data[2] ,
    \top_cw.upc.data_o_mem_data[1] ,
    \top_cw.upc.data_o_mem_data[0] }),
    .o_mem_sel({\top_cw.upc.data_mem_sel[1] ,
    \top_cw.upc.data_mem_sel[0] }),
    .o_req_addr({\top_cw.upc.fetch_req_addr[15] ,
    \top_cw.upc.fetch_req_addr[14] ,
    \top_cw.upc.fetch_req_addr[13] ,
    \top_cw.upc.fetch_req_addr[12] ,
    \top_cw.upc.fetch_req_addr[11] ,
    \top_cw.upc.fetch_req_addr[10] ,
    \top_cw.upc.fetch_req_addr[9] ,
    \top_cw.upc.fetch_req_addr[8] ,
    \top_cw.upc.fetch_req_addr[7] ,
    \top_cw.upc.fetch_req_addr[6] ,
    \top_cw.upc.fetch_req_addr[5] ,
    \top_cw.upc.fetch_req_addr[4] ,
    \top_cw.upc.fetch_req_addr[3] ,
    \top_cw.upc.fetch_req_addr[2] ,
    \top_cw.upc.fetch_req_addr[1] ,
    \top_cw.upc.fetch_req_addr[0] }),
    .sr_bus_addr({\top_cw.upc.sr_bus_addr[15] ,
    \top_cw.upc.sr_bus_addr[14] ,
    \top_cw.upc.sr_bus_addr[13] ,
    \top_cw.upc.sr_bus_addr[12] ,
    \top_cw.upc.sr_bus_addr[11] ,
    \top_cw.upc.sr_bus_addr[10] ,
    \top_cw.upc.sr_bus_addr[9] ,
    \top_cw.upc.sr_bus_addr[8] ,
    \top_cw.upc.sr_bus_addr[7] ,
    \top_cw.upc.sr_bus_addr[6] ,
    \top_cw.upc.sr_bus_addr[5] ,
    \top_cw.upc.sr_bus_addr[4] ,
    \top_cw.upc.sr_bus_addr[3] ,
    \top_cw.upc.sr_bus_addr[2] ,
    \top_cw.upc.sr_bus_addr[1] ,
    \top_cw.upc.sr_bus_addr[0] }),
    .sr_bus_data_o({\top_cw.upc.sr_bus_data_o[15] ,
    \top_cw.upc.sr_bus_data_o[14] ,
    \top_cw.upc.sr_bus_data_o[13] ,
    \top_cw.upc.sr_bus_data_o[12] ,
    \top_cw.upc.sr_bus_data_o[11] ,
    \top_cw.upc.sr_bus_data_o[10] ,
    \top_cw.upc.sr_bus_data_o[9] ,
    \top_cw.upc.sr_bus_data_o[8] ,
    \top_cw.upc.sr_bus_data_o[7] ,
    \top_cw.upc.sr_bus_data_o[6] ,
    \top_cw.upc.sr_bus_data_o[5] ,
    \top_cw.upc.sr_bus_data_o[4] ,
    \top_cw.upc.sr_bus_data_o[3] ,
    \top_cw.upc.sr_bus_data_o[2] ,
    \top_cw.upc.sr_bus_data_o[1] ,
    \top_cw.upc.sr_bus_data_o[0] }));
 dcache \top_cw.upc.dcache  (.i_clk(user_clock2),
    .i_rst(\top_cw.s_rst ),
    .mem_ack(\top_cw.upc.data_mem_ack ),
    .mem_cache_enable(\top_cw.upc.data_cacheable ),
    .mem_exception(\top_cw.upc.dcache_exception ),
    .mem_req(\top_cw.upc.data_mem_req ),
    .mem_we(\top_cw.upc.data_mem_we ),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wb_4_burst(\top_cw.upc.data_wb_4_burst ),
    .wb_ack(\top_cw.upc.data_wb_ack ),
    .wb_cyc(\top_cw.upc.data_wb_cyc ),
    .wb_err(\top_cw.upc.data_wb_err ),
    .wb_stb(\top_cw.upc.data_wb_stb ),
    .wb_we(\top_cw.upc.data_wb_we ),
    .mem_addr({\top_cw.upc.data_mem_addr_paged[23] ,
    \top_cw.upc.data_mem_addr_paged[22] ,
    \top_cw.upc.data_mem_addr_paged[21] ,
    \top_cw.upc.data_mem_addr_paged[20] ,
    \top_cw.upc.data_mem_addr_paged[19] ,
    \top_cw.upc.data_mem_addr_paged[18] ,
    \top_cw.upc.data_mem_addr_paged[17] ,
    \top_cw.upc.data_mem_addr_paged[16] ,
    \top_cw.upc.data_mem_addr_paged[15] ,
    \top_cw.upc.data_mem_addr_paged[14] ,
    \top_cw.upc.data_mem_addr_paged[13] ,
    \top_cw.upc.data_mem_addr_paged[12] ,
    \top_cw.upc.data_mem_addr_paged[11] ,
    \top_cw.upc.data_mem_addr_paged[10] ,
    \top_cw.upc.data_mem_addr_paged[9] ,
    \top_cw.upc.data_mem_addr_paged[8] ,
    \top_cw.upc.data_mem_addr_paged[7] ,
    \top_cw.upc.data_mem_addr_paged[6] ,
    \top_cw.upc.data_mem_addr_paged[5] ,
    \top_cw.upc.data_mem_addr_paged[4] ,
    \top_cw.upc.data_mem_addr_paged[3] ,
    \top_cw.upc.data_mem_addr_paged[2] ,
    \top_cw.upc.data_mem_addr_paged[1] ,
    \top_cw.upc.data_mem_addr_paged[0] }),
    .mem_i_data({\top_cw.upc.data_o_mem_data[15] ,
    \top_cw.upc.data_o_mem_data[14] ,
    \top_cw.upc.data_o_mem_data[13] ,
    \top_cw.upc.data_o_mem_data[12] ,
    \top_cw.upc.data_o_mem_data[11] ,
    \top_cw.upc.data_o_mem_data[10] ,
    \top_cw.upc.data_o_mem_data[9] ,
    \top_cw.upc.data_o_mem_data[8] ,
    \top_cw.upc.data_o_mem_data[7] ,
    \top_cw.upc.data_o_mem_data[6] ,
    \top_cw.upc.data_o_mem_data[5] ,
    \top_cw.upc.data_o_mem_data[4] ,
    \top_cw.upc.data_o_mem_data[3] ,
    \top_cw.upc.data_o_mem_data[2] ,
    \top_cw.upc.data_o_mem_data[1] ,
    \top_cw.upc.data_o_mem_data[0] }),
    .mem_o_data({\top_cw.upc.data_i_mem_data[15] ,
    \top_cw.upc.data_i_mem_data[14] ,
    \top_cw.upc.data_i_mem_data[13] ,
    \top_cw.upc.data_i_mem_data[12] ,
    \top_cw.upc.data_i_mem_data[11] ,
    \top_cw.upc.data_i_mem_data[10] ,
    \top_cw.upc.data_i_mem_data[9] ,
    \top_cw.upc.data_i_mem_data[8] ,
    \top_cw.upc.data_i_mem_data[7] ,
    \top_cw.upc.data_i_mem_data[6] ,
    \top_cw.upc.data_i_mem_data[5] ,
    \top_cw.upc.data_i_mem_data[4] ,
    \top_cw.upc.data_i_mem_data[3] ,
    \top_cw.upc.data_i_mem_data[2] ,
    \top_cw.upc.data_i_mem_data[1] ,
    \top_cw.upc.data_i_mem_data[0] }),
    .mem_sel({\top_cw.upc.data_mem_sel[1] ,
    \top_cw.upc.data_mem_sel[0] }),
    .wb_adr({\top_cw.upc.data_wb_adr[23] ,
    \top_cw.upc.data_wb_adr[22] ,
    \top_cw.upc.data_wb_adr[21] ,
    \top_cw.upc.data_wb_adr[20] ,
    \top_cw.upc.data_wb_adr[19] ,
    \top_cw.upc.data_wb_adr[18] ,
    \top_cw.upc.data_wb_adr[17] ,
    \top_cw.upc.data_wb_adr[16] ,
    \top_cw.upc.data_wb_adr[15] ,
    \top_cw.upc.data_wb_adr[14] ,
    \top_cw.upc.data_wb_adr[13] ,
    \top_cw.upc.data_wb_adr[12] ,
    \top_cw.upc.data_wb_adr[11] ,
    \top_cw.upc.data_wb_adr[10] ,
    \top_cw.upc.data_wb_adr[9] ,
    \top_cw.upc.data_wb_adr[8] ,
    \top_cw.upc.data_wb_adr[7] ,
    \top_cw.upc.data_wb_adr[6] ,
    \top_cw.upc.data_wb_adr[5] ,
    \top_cw.upc.data_wb_adr[4] ,
    \top_cw.upc.data_wb_adr[3] ,
    \top_cw.upc.data_wb_adr[2] ,
    \top_cw.upc.data_wb_adr[1] ,
    \top_cw.upc.data_wb_adr[0] }),
    .wb_i_dat({\top_cw.u_wb_i_dat[15] ,
    \top_cw.u_wb_i_dat[14] ,
    \top_cw.u_wb_i_dat[13] ,
    \top_cw.u_wb_i_dat[12] ,
    \top_cw.u_wb_i_dat[11] ,
    \top_cw.u_wb_i_dat[10] ,
    \top_cw.u_wb_i_dat[9] ,
    \top_cw.u_wb_i_dat[8] ,
    \top_cw.u_wb_i_dat[7] ,
    \top_cw.u_wb_i_dat[6] ,
    \top_cw.u_wb_i_dat[5] ,
    \top_cw.u_wb_i_dat[4] ,
    \top_cw.u_wb_i_dat[3] ,
    \top_cw.u_wb_i_dat[2] ,
    \top_cw.u_wb_i_dat[1] ,
    \top_cw.u_wb_i_dat[0] }),
    .wb_o_dat({\top_cw.upc.data_wb_o_dat[15] ,
    \top_cw.upc.data_wb_o_dat[14] ,
    \top_cw.upc.data_wb_o_dat[13] ,
    \top_cw.upc.data_wb_o_dat[12] ,
    \top_cw.upc.data_wb_o_dat[11] ,
    \top_cw.upc.data_wb_o_dat[10] ,
    \top_cw.upc.data_wb_o_dat[9] ,
    \top_cw.upc.data_wb_o_dat[8] ,
    \top_cw.upc.data_wb_o_dat[7] ,
    \top_cw.upc.data_wb_o_dat[6] ,
    \top_cw.upc.data_wb_o_dat[5] ,
    \top_cw.upc.data_wb_o_dat[4] ,
    \top_cw.upc.data_wb_o_dat[3] ,
    \top_cw.upc.data_wb_o_dat[2] ,
    \top_cw.upc.data_wb_o_dat[1] ,
    \top_cw.upc.data_wb_o_dat[0] }),
    .wb_sel({\top_cw.upc.data_wb_sel[1] ,
    \top_cw.upc.data_wb_sel[0] }));
 icache \top_cw.upc.icache  (.i_clk(user_clock2),
    .i_rst(\top_cw.s_rst ),
    .mem_ack(\top_cw.upc.fetch_req_ack ),
    .mem_cache_flush(\top_cw.upc.icache_flush ),
    .mem_ppl_submit(\top_cw.upc.fetch_ppl_submit ),
    .mem_req(\top_cw.upc.fetch_req_active ),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wb_ack(\top_cw.upc.fetch_wb_ack ),
    .wb_cyc(\top_cw.upc.fetch_wb_cyc ),
    .wb_err(\top_cw.upc.fetch_wb_err ),
    .wb_stb(\top_cw.upc.fetch_wb_stb ),
    .wb_we(\top_cw.upc.fetch_wb_we ),
    .mem_addr({\top_cw.upc.fetch_req_addr[15] ,
    \top_cw.upc.fetch_req_addr[14] ,
    \top_cw.upc.fetch_req_addr[13] ,
    \top_cw.upc.fetch_req_addr[12] ,
    \top_cw.upc.fetch_req_addr[11] ,
    \top_cw.upc.fetch_req_addr[10] ,
    \top_cw.upc.fetch_req_addr[9] ,
    \top_cw.upc.fetch_req_addr[8] ,
    \top_cw.upc.fetch_req_addr[7] ,
    \top_cw.upc.fetch_req_addr[6] ,
    \top_cw.upc.fetch_req_addr[5] ,
    \top_cw.upc.fetch_req_addr[4] ,
    \top_cw.upc.fetch_req_addr[3] ,
    \top_cw.upc.fetch_req_addr[2] ,
    \top_cw.upc.fetch_req_addr[1] ,
    \top_cw.upc.fetch_req_addr[0] }),
    .mem_data({\top_cw.upc.fetch_req_data[31] ,
    \top_cw.upc.fetch_req_data[30] ,
    \top_cw.upc.fetch_req_data[29] ,
    \top_cw.upc.fetch_req_data[28] ,
    \top_cw.upc.fetch_req_data[27] ,
    \top_cw.upc.fetch_req_data[26] ,
    \top_cw.upc.fetch_req_data[25] ,
    \top_cw.upc.fetch_req_data[24] ,
    \top_cw.upc.fetch_req_data[23] ,
    \top_cw.upc.fetch_req_data[22] ,
    \top_cw.upc.fetch_req_data[21] ,
    \top_cw.upc.fetch_req_data[20] ,
    \top_cw.upc.fetch_req_data[19] ,
    \top_cw.upc.fetch_req_data[18] ,
    \top_cw.upc.fetch_req_data[17] ,
    \top_cw.upc.fetch_req_data[16] ,
    \top_cw.upc.fetch_req_data[15] ,
    \top_cw.upc.fetch_req_data[14] ,
    \top_cw.upc.fetch_req_data[13] ,
    \top_cw.upc.fetch_req_data[12] ,
    \top_cw.upc.fetch_req_data[11] ,
    \top_cw.upc.fetch_req_data[10] ,
    \top_cw.upc.fetch_req_data[9] ,
    \top_cw.upc.fetch_req_data[8] ,
    \top_cw.upc.fetch_req_data[7] ,
    \top_cw.upc.fetch_req_data[6] ,
    \top_cw.upc.fetch_req_data[5] ,
    \top_cw.upc.fetch_req_data[4] ,
    \top_cw.upc.fetch_req_data[3] ,
    \top_cw.upc.fetch_req_data[2] ,
    \top_cw.upc.fetch_req_data[1] ,
    \top_cw.upc.fetch_req_data[0] }),
    .wb_adr({\top_cw.upc.fetch_wb_adr[15] ,
    \top_cw.upc.fetch_wb_adr[14] ,
    \top_cw.upc.fetch_wb_adr[13] ,
    \top_cw.upc.fetch_wb_adr[12] ,
    \top_cw.upc.fetch_wb_adr[11] ,
    \top_cw.upc.fetch_wb_adr[10] ,
    \top_cw.upc.fetch_wb_adr[9] ,
    \top_cw.upc.fetch_wb_adr[8] ,
    \top_cw.upc.fetch_wb_adr[7] ,
    \top_cw.upc.fetch_wb_adr[6] ,
    \top_cw.upc.fetch_wb_adr[5] ,
    \top_cw.upc.fetch_wb_adr[4] ,
    \top_cw.upc.fetch_wb_adr[3] ,
    \top_cw.upc.fetch_wb_adr[2] ,
    \top_cw.upc.fetch_wb_adr[1] ,
    \top_cw.upc.fetch_wb_adr[0] }),
    .wb_i_dat({\top_cw.u_wb_i_dat[15] ,
    \top_cw.u_wb_i_dat[14] ,
    \top_cw.u_wb_i_dat[13] ,
    \top_cw.u_wb_i_dat[12] ,
    \top_cw.u_wb_i_dat[11] ,
    \top_cw.u_wb_i_dat[10] ,
    \top_cw.u_wb_i_dat[9] ,
    \top_cw.u_wb_i_dat[8] ,
    \top_cw.u_wb_i_dat[7] ,
    \top_cw.u_wb_i_dat[6] ,
    \top_cw.u_wb_i_dat[5] ,
    \top_cw.u_wb_i_dat[4] ,
    \top_cw.u_wb_i_dat[3] ,
    \top_cw.u_wb_i_dat[2] ,
    \top_cw.u_wb_i_dat[1] ,
    \top_cw.u_wb_i_dat[0] }),
    .wb_sel({\top_cw.upc.fetch_wb_sel[1] ,
    \top_cw.upc.fetch_wb_sel[0] }));
 upper_core_logic \top_cw.upc.upper_core_logic  (.cc_data_page(\top_cw.upc.cc_data_page ),
    .cc_instr_page(\top_cw.upc.cc_instr_page ),
    .data_cacheable(\top_cw.upc.data_cacheable ),
    .i_clk(user_clock2),
    .i_rst(\top_cw.s_rst ),
    .sr_bus_we(\top_cw.upc.sr_bus_we ),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wb0_8_burst(\top_cw.upc.wb0_8_burst ),
    .wb1_4_burst(\top_cw.upc.wb1_4_burst ),
    .wb1_8_burst(\top_cw.upc.wb1_8_burst ),
    .data_mem_addr({\top_cw.upc.data_mem_addr[15] ,
    \top_cw.upc.data_mem_addr[14] ,
    \top_cw.upc.data_mem_addr[13] ,
    \top_cw.upc.data_mem_addr[12] ,
    \top_cw.upc.data_mem_addr[11] ,
    \top_cw.upc.data_mem_addr[10] ,
    \top_cw.upc.data_mem_addr[9] ,
    \top_cw.upc.data_mem_addr[8] ,
    \top_cw.upc.data_mem_addr[7] ,
    \top_cw.upc.data_mem_addr[6] ,
    \top_cw.upc.data_mem_addr[5] ,
    \top_cw.upc.data_mem_addr[4] ,
    \top_cw.upc.data_mem_addr[3] ,
    \top_cw.upc.data_mem_addr[2] ,
    \top_cw.upc.data_mem_addr[1] ,
    \top_cw.upc.data_mem_addr[0] }),
    .data_mem_addr_paged({\top_cw.upc.data_mem_addr_paged[23] ,
    \top_cw.upc.data_mem_addr_paged[22] ,
    \top_cw.upc.data_mem_addr_paged[21] ,
    \top_cw.upc.data_mem_addr_paged[20] ,
    \top_cw.upc.data_mem_addr_paged[19] ,
    \top_cw.upc.data_mem_addr_paged[18] ,
    \top_cw.upc.data_mem_addr_paged[17] ,
    \top_cw.upc.data_mem_addr_paged[16] ,
    \top_cw.upc.data_mem_addr_paged[15] ,
    \top_cw.upc.data_mem_addr_paged[14] ,
    \top_cw.upc.data_mem_addr_paged[13] ,
    \top_cw.upc.data_mem_addr_paged[12] ,
    \top_cw.upc.data_mem_addr_paged[11] ,
    \top_cw.upc.data_mem_addr_paged[10] ,
    \top_cw.upc.data_mem_addr_paged[9] ,
    \top_cw.upc.data_mem_addr_paged[8] ,
    \top_cw.upc.data_mem_addr_paged[7] ,
    \top_cw.upc.data_mem_addr_paged[6] ,
    \top_cw.upc.data_mem_addr_paged[5] ,
    \top_cw.upc.data_mem_addr_paged[4] ,
    \top_cw.upc.data_mem_addr_paged[3] ,
    \top_cw.upc.data_mem_addr_paged[2] ,
    \top_cw.upc.data_mem_addr_paged[1] ,
    \top_cw.upc.data_mem_addr_paged[0] }),
    .fetch_wb_adr({\top_cw.upc.fetch_wb_adr[15] ,
    \top_cw.upc.fetch_wb_adr[14] ,
    \top_cw.upc.fetch_wb_adr[13] ,
    \top_cw.upc.fetch_wb_adr[12] ,
    \top_cw.upc.fetch_wb_adr[11] ,
    \top_cw.upc.fetch_wb_adr[10] ,
    \top_cw.upc.fetch_wb_adr[9] ,
    \top_cw.upc.fetch_wb_adr[8] ,
    \top_cw.upc.fetch_wb_adr[7] ,
    \top_cw.upc.fetch_wb_adr[6] ,
    \top_cw.upc.fetch_wb_adr[5] ,
    \top_cw.upc.fetch_wb_adr[4] ,
    \top_cw.upc.fetch_wb_adr[3] ,
    \top_cw.upc.fetch_wb_adr[2] ,
    \top_cw.upc.fetch_wb_adr[1] ,
    \top_cw.upc.fetch_wb_adr[0] }),
    .fetch_wb_adr_paged({\top_cw.upc.fetch_wb_adr_paged[23] ,
    \top_cw.upc.fetch_wb_adr_paged[22] ,
    \top_cw.upc.fetch_wb_adr_paged[21] ,
    \top_cw.upc.fetch_wb_adr_paged[20] ,
    \top_cw.upc.fetch_wb_adr_paged[19] ,
    \top_cw.upc.fetch_wb_adr_paged[18] ,
    \top_cw.upc.fetch_wb_adr_paged[17] ,
    \top_cw.upc.fetch_wb_adr_paged[16] ,
    \top_cw.upc.fetch_wb_adr_paged[15] ,
    \top_cw.upc.fetch_wb_adr_paged[14] ,
    \top_cw.upc.fetch_wb_adr_paged[13] ,
    \top_cw.upc.fetch_wb_adr_paged[12] ,
    \top_cw.upc.fetch_wb_adr_paged[11] ,
    \top_cw.upc.fetch_wb_adr_paged[10] ,
    \top_cw.upc.fetch_wb_adr_paged[9] ,
    \top_cw.upc.fetch_wb_adr_paged[8] ,
    \top_cw.upc.fetch_wb_adr_paged[7] ,
    \top_cw.upc.fetch_wb_adr_paged[6] ,
    \top_cw.upc.fetch_wb_adr_paged[5] ,
    \top_cw.upc.fetch_wb_adr_paged[4] ,
    \top_cw.upc.fetch_wb_adr_paged[3] ,
    \top_cw.upc.fetch_wb_adr_paged[2] ,
    \top_cw.upc.fetch_wb_adr_paged[1] ,
    \top_cw.upc.fetch_wb_adr_paged[0] }),
    .fetch_wb_o_dat({\top_cw.upc.fetch_wb_o_dat[15] ,
    \top_cw.upc.fetch_wb_o_dat[14] ,
    \top_cw.upc.fetch_wb_o_dat[13] ,
    \top_cw.upc.fetch_wb_o_dat[12] ,
    \top_cw.upc.fetch_wb_o_dat[11] ,
    \top_cw.upc.fetch_wb_o_dat[10] ,
    \top_cw.upc.fetch_wb_o_dat[9] ,
    \top_cw.upc.fetch_wb_o_dat[8] ,
    \top_cw.upc.fetch_wb_o_dat[7] ,
    \top_cw.upc.fetch_wb_o_dat[6] ,
    \top_cw.upc.fetch_wb_o_dat[5] ,
    \top_cw.upc.fetch_wb_o_dat[4] ,
    \top_cw.upc.fetch_wb_o_dat[3] ,
    \top_cw.upc.fetch_wb_o_dat[2] ,
    \top_cw.upc.fetch_wb_o_dat[1] ,
    \top_cw.upc.fetch_wb_o_dat[0] }),
    .sr_bus_addr({\top_cw.upc.sr_bus_addr[15] ,
    \top_cw.upc.sr_bus_addr[14] ,
    \top_cw.upc.sr_bus_addr[13] ,
    \top_cw.upc.sr_bus_addr[12] ,
    \top_cw.upc.sr_bus_addr[11] ,
    \top_cw.upc.sr_bus_addr[10] ,
    \top_cw.upc.sr_bus_addr[9] ,
    \top_cw.upc.sr_bus_addr[8] ,
    \top_cw.upc.sr_bus_addr[7] ,
    \top_cw.upc.sr_bus_addr[6] ,
    \top_cw.upc.sr_bus_addr[5] ,
    \top_cw.upc.sr_bus_addr[4] ,
    \top_cw.upc.sr_bus_addr[3] ,
    \top_cw.upc.sr_bus_addr[2] ,
    \top_cw.upc.sr_bus_addr[1] ,
    \top_cw.upc.sr_bus_addr[0] }),
    .sr_bus_data_o({\top_cw.upc.sr_bus_data_o[15] ,
    \top_cw.upc.sr_bus_data_o[14] ,
    \top_cw.upc.sr_bus_data_o[13] ,
    \top_cw.upc.sr_bus_data_o[12] ,
    \top_cw.upc.sr_bus_data_o[11] ,
    \top_cw.upc.sr_bus_data_o[10] ,
    \top_cw.upc.sr_bus_data_o[9] ,
    \top_cw.upc.sr_bus_data_o[8] ,
    \top_cw.upc.sr_bus_data_o[7] ,
    \top_cw.upc.sr_bus_data_o[6] ,
    \top_cw.upc.sr_bus_data_o[5] ,
    \top_cw.upc.sr_bus_data_o[4] ,
    \top_cw.upc.sr_bus_data_o[3] ,
    \top_cw.upc.sr_bus_data_o[2] ,
    \top_cw.upc.sr_bus_data_o[1] ,
    \top_cw.upc.sr_bus_data_o[0] }));
 wishbone_arbiter \top_cw.upc.wb_arbiter  (.i_clk(user_clock2),
    .i_rst(\top_cw.s_rst ),
    .i_wb0_cyc(\top_cw.upc.data_wb_cyc ),
    .i_wb1_cyc(\top_cw.upc.fetch_wb_cyc ),
    .o_sel_sig(\top_cw.upc.arb_sel ),
    .o_wb_cyc(\top_cw.u_wb_cyc ),
    .owb_4_burst(\top_cw.u_wb_4_burst ),
    .owb_8_burst(\top_cw.u_wb_8_burst ),
    .owb_ack(\top_cw.u_wb_ack ),
    .owb_err(\top_cw.u_wb_err ),
    .owb_stb(\top_cw.u_wb_stb ),
    .owb_we(\top_cw.u_wb_we ),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wb0_4_burst(\top_cw.upc.data_wb_4_burst ),
    .wb0_8_burst(\top_cw.upc.wb0_8_burst ),
    .wb0_ack(\top_cw.upc.data_wb_ack ),
    .wb0_err(\top_cw.upc.data_wb_err ),
    .wb0_stb(\top_cw.upc.data_wb_stb ),
    .wb0_we(\top_cw.upc.data_wb_we ),
    .wb1_4_burst(\top_cw.upc.wb1_4_burst ),
    .wb1_8_burst(\top_cw.upc.wb1_8_burst ),
    .wb1_ack(\top_cw.upc.fetch_wb_ack ),
    .wb1_err(\top_cw.upc.fetch_wb_err ),
    .wb1_stb(\top_cw.upc.fetch_wb_stb ),
    .wb1_we(\top_cw.upc.fetch_wb_we ),
    .owb_adr({la_data_out[61],
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
    la_data_out[38]}),
    .owb_o_dat({\top_cw.u_wb_o_dat[15] ,
    \top_cw.u_wb_o_dat[14] ,
    \top_cw.u_wb_o_dat[13] ,
    \top_cw.u_wb_o_dat[12] ,
    \top_cw.u_wb_o_dat[11] ,
    \top_cw.u_wb_o_dat[10] ,
    \top_cw.u_wb_o_dat[9] ,
    \top_cw.u_wb_o_dat[8] ,
    \top_cw.u_wb_o_dat[7] ,
    \top_cw.u_wb_o_dat[6] ,
    \top_cw.u_wb_o_dat[5] ,
    \top_cw.u_wb_o_dat[4] ,
    \top_cw.u_wb_o_dat[3] ,
    \top_cw.u_wb_o_dat[2] ,
    \top_cw.u_wb_o_dat[1] ,
    \top_cw.u_wb_o_dat[0] }),
    .owb_sel({\top_cw.u_wb_sel[1] ,
    \top_cw.u_wb_sel[0] }),
    .wb0_adr({\top_cw.upc.data_wb_adr[23] ,
    \top_cw.upc.data_wb_adr[22] ,
    \top_cw.upc.data_wb_adr[21] ,
    \top_cw.upc.data_wb_adr[20] ,
    \top_cw.upc.data_wb_adr[19] ,
    \top_cw.upc.data_wb_adr[18] ,
    \top_cw.upc.data_wb_adr[17] ,
    \top_cw.upc.data_wb_adr[16] ,
    \top_cw.upc.data_wb_adr[15] ,
    \top_cw.upc.data_wb_adr[14] ,
    \top_cw.upc.data_wb_adr[13] ,
    \top_cw.upc.data_wb_adr[12] ,
    \top_cw.upc.data_wb_adr[11] ,
    \top_cw.upc.data_wb_adr[10] ,
    \top_cw.upc.data_wb_adr[9] ,
    \top_cw.upc.data_wb_adr[8] ,
    \top_cw.upc.data_wb_adr[7] ,
    \top_cw.upc.data_wb_adr[6] ,
    \top_cw.upc.data_wb_adr[5] ,
    \top_cw.upc.data_wb_adr[4] ,
    \top_cw.upc.data_wb_adr[3] ,
    \top_cw.upc.data_wb_adr[2] ,
    \top_cw.upc.data_wb_adr[1] ,
    \top_cw.upc.data_wb_adr[0] }),
    .wb0_o_dat({\top_cw.upc.data_wb_o_dat[15] ,
    \top_cw.upc.data_wb_o_dat[14] ,
    \top_cw.upc.data_wb_o_dat[13] ,
    \top_cw.upc.data_wb_o_dat[12] ,
    \top_cw.upc.data_wb_o_dat[11] ,
    \top_cw.upc.data_wb_o_dat[10] ,
    \top_cw.upc.data_wb_o_dat[9] ,
    \top_cw.upc.data_wb_o_dat[8] ,
    \top_cw.upc.data_wb_o_dat[7] ,
    \top_cw.upc.data_wb_o_dat[6] ,
    \top_cw.upc.data_wb_o_dat[5] ,
    \top_cw.upc.data_wb_o_dat[4] ,
    \top_cw.upc.data_wb_o_dat[3] ,
    \top_cw.upc.data_wb_o_dat[2] ,
    \top_cw.upc.data_wb_o_dat[1] ,
    \top_cw.upc.data_wb_o_dat[0] }),
    .wb0_sel({\top_cw.upc.data_wb_sel[1] ,
    \top_cw.upc.data_wb_sel[0] }),
    .wb1_adr({\top_cw.upc.fetch_wb_adr_paged[23] ,
    \top_cw.upc.fetch_wb_adr_paged[22] ,
    \top_cw.upc.fetch_wb_adr_paged[21] ,
    \top_cw.upc.fetch_wb_adr_paged[20] ,
    \top_cw.upc.fetch_wb_adr_paged[19] ,
    \top_cw.upc.fetch_wb_adr_paged[18] ,
    \top_cw.upc.fetch_wb_adr_paged[17] ,
    \top_cw.upc.fetch_wb_adr_paged[16] ,
    \top_cw.upc.fetch_wb_adr_paged[15] ,
    \top_cw.upc.fetch_wb_adr_paged[14] ,
    \top_cw.upc.fetch_wb_adr_paged[13] ,
    \top_cw.upc.fetch_wb_adr_paged[12] ,
    \top_cw.upc.fetch_wb_adr_paged[11] ,
    \top_cw.upc.fetch_wb_adr_paged[10] ,
    \top_cw.upc.fetch_wb_adr_paged[9] ,
    \top_cw.upc.fetch_wb_adr_paged[8] ,
    \top_cw.upc.fetch_wb_adr_paged[7] ,
    \top_cw.upc.fetch_wb_adr_paged[6] ,
    \top_cw.upc.fetch_wb_adr_paged[5] ,
    \top_cw.upc.fetch_wb_adr_paged[4] ,
    \top_cw.upc.fetch_wb_adr_paged[3] ,
    \top_cw.upc.fetch_wb_adr_paged[2] ,
    \top_cw.upc.fetch_wb_adr_paged[1] ,
    \top_cw.upc.fetch_wb_adr_paged[0] }),
    .wb1_o_dat({\top_cw.upc.fetch_wb_o_dat[15] ,
    \top_cw.upc.fetch_wb_o_dat[14] ,
    \top_cw.upc.fetch_wb_o_dat[13] ,
    \top_cw.upc.fetch_wb_o_dat[12] ,
    \top_cw.upc.fetch_wb_o_dat[11] ,
    \top_cw.upc.fetch_wb_o_dat[10] ,
    \top_cw.upc.fetch_wb_o_dat[9] ,
    \top_cw.upc.fetch_wb_o_dat[8] ,
    \top_cw.upc.fetch_wb_o_dat[7] ,
    \top_cw.upc.fetch_wb_o_dat[6] ,
    \top_cw.upc.fetch_wb_o_dat[5] ,
    \top_cw.upc.fetch_wb_o_dat[4] ,
    \top_cw.upc.fetch_wb_o_dat[3] ,
    \top_cw.upc.fetch_wb_o_dat[2] ,
    \top_cw.upc.fetch_wb_o_dat[1] ,
    \top_cw.upc.fetch_wb_o_dat[0] }),
    .wb1_sel({\top_cw.upc.fetch_wb_sel[1] ,
    \top_cw.upc.fetch_wb_sel[0] }));
 wb_compressor \top_cw.wb_compressor  (.cw_ack(\top_cw.m_cw_ack ),
    .cw_dir(\top_cw.cw_dir ),
    .cw_err(\top_cw.m_cw_err ),
    .cw_req(\top_cw.cw_req ),
    .i_clk(\top_cw.cmp_clk ),
    .i_rst(\top_cw.cw_rst ),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wb_4_burst(\top_cw.c_wb_4_burst ),
    .wb_8_burst(\top_cw.c_wb_8_burst ),
    .wb_ack(\top_cw.c_wb_ack_cmp ),
    .wb_cyc(\top_cw.c_wb_cyc ),
    .wb_err(\top_cw.c_wb_err_cmp ),
    .wb_stb(\top_cw.c_wb_stb ),
    .wb_we(\top_cw.c_wb_we ),
    .cw_io_i({\top_cw.m_cw_io_i[15] ,
    \top_cw.m_cw_io_i[14] ,
    \top_cw.m_cw_io_i[13] ,
    \top_cw.m_cw_io_i[12] ,
    \top_cw.m_cw_io_i[11] ,
    \top_cw.m_cw_io_i[10] ,
    \top_cw.m_cw_io_i[9] ,
    \top_cw.m_cw_io_i[8] ,
    \top_cw.m_cw_io_i[7] ,
    \top_cw.m_cw_io_i[6] ,
    \top_cw.m_cw_io_i[5] ,
    \top_cw.m_cw_io_i[4] ,
    \top_cw.m_cw_io_i[3] ,
    \top_cw.m_cw_io_i[2] ,
    \top_cw.m_cw_io_i[1] ,
    \top_cw.m_cw_io_i[0] }),
    .cw_io_o({io_out[15],
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
    .wb_adr({\top_cw.c_wb_adr[23] ,
    \top_cw.c_wb_adr[22] ,
    \top_cw.c_wb_adr[21] ,
    \top_cw.c_wb_adr[20] ,
    \top_cw.c_wb_adr[19] ,
    \top_cw.c_wb_adr[18] ,
    \top_cw.c_wb_adr[17] ,
    \top_cw.c_wb_adr[16] ,
    \top_cw.c_wb_adr[15] ,
    \top_cw.c_wb_adr[14] ,
    \top_cw.c_wb_adr[13] ,
    \top_cw.c_wb_adr[12] ,
    \top_cw.c_wb_adr[11] ,
    \top_cw.c_wb_adr[10] ,
    \top_cw.c_wb_adr[9] ,
    \top_cw.c_wb_adr[8] ,
    \top_cw.c_wb_adr[7] ,
    \top_cw.c_wb_adr[6] ,
    \top_cw.c_wb_adr[5] ,
    \top_cw.c_wb_adr[4] ,
    \top_cw.c_wb_adr[3] ,
    \top_cw.c_wb_adr[2] ,
    \top_cw.c_wb_adr[1] ,
    \top_cw.c_wb_adr[0] }),
    .wb_i_dat({\top_cw.c_wb_i_dat_cmp[15] ,
    \top_cw.c_wb_i_dat_cmp[14] ,
    \top_cw.c_wb_i_dat_cmp[13] ,
    \top_cw.c_wb_i_dat_cmp[12] ,
    \top_cw.c_wb_i_dat_cmp[11] ,
    \top_cw.c_wb_i_dat_cmp[10] ,
    \top_cw.c_wb_i_dat_cmp[9] ,
    \top_cw.c_wb_i_dat_cmp[8] ,
    \top_cw.c_wb_i_dat_cmp[7] ,
    \top_cw.c_wb_i_dat_cmp[6] ,
    \top_cw.c_wb_i_dat_cmp[5] ,
    \top_cw.c_wb_i_dat_cmp[4] ,
    \top_cw.c_wb_i_dat_cmp[3] ,
    \top_cw.c_wb_i_dat_cmp[2] ,
    \top_cw.c_wb_i_dat_cmp[1] ,
    \top_cw.c_wb_i_dat_cmp[0] }),
    .wb_o_dat({\top_cw.c_wb_o_dat[15] ,
    \top_cw.c_wb_o_dat[14] ,
    \top_cw.c_wb_o_dat[13] ,
    \top_cw.c_wb_o_dat[12] ,
    \top_cw.c_wb_o_dat[11] ,
    \top_cw.c_wb_o_dat[10] ,
    \top_cw.c_wb_o_dat[9] ,
    \top_cw.c_wb_o_dat[8] ,
    \top_cw.c_wb_o_dat[7] ,
    \top_cw.c_wb_o_dat[6] ,
    \top_cw.c_wb_o_dat[5] ,
    \top_cw.c_wb_o_dat[4] ,
    \top_cw.c_wb_o_dat[3] ,
    \top_cw.c_wb_o_dat[2] ,
    \top_cw.c_wb_o_dat[1] ,
    \top_cw.c_wb_o_dat[0] }),
    .wb_sel({\top_cw.c_wb_sel[1] ,
    \top_cw.c_wb_sel[0] }));
 wb_cross_clk \top_cw.wb_cross_clk  (.clk_m(user_clock2),
    .clk_s(\top_cw.cmp_clk ),
    .m_rst(\top_cw.s_rst ),
    .m_wb_4_burst(\top_cw.u_wb_4_burst ),
    .m_wb_8_burst(\top_cw.u_wb_8_burst ),
    .m_wb_ack(\top_cw.u_wb_ack_cc ),
    .m_wb_cyc(\top_cw.u_wb_cyc ),
    .m_wb_err(\top_cw.u_wb_err_cc ),
    .m_wb_stb(\top_cw.u_wb_stb ),
    .m_wb_we(\top_cw.u_wb_we ),
    .s_rst(\top_cw.cw_rst ),
    .s_wb_4_burst(\top_cw.cc_wb_4_burst ),
    .s_wb_8_burst(\top_cw.cc_wb_8_burst ),
    .s_wb_ack(\top_cw.c_wb_ack_cmp ),
    .s_wb_cyc(\top_cw.cc_wb_cyc ),
    .s_wb_err(\top_cw.c_wb_err_cmp ),
    .s_wb_stb(\top_cw.cc_wb_stb ),
    .s_wb_we(\top_cw.cc_wb_we ),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .m_wb_adr({la_data_out[61],
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
    la_data_out[38]}),
    .m_wb_i_dat({\top_cw.u_wb_i_dat_cc[15] ,
    \top_cw.u_wb_i_dat_cc[14] ,
    \top_cw.u_wb_i_dat_cc[13] ,
    \top_cw.u_wb_i_dat_cc[12] ,
    \top_cw.u_wb_i_dat_cc[11] ,
    \top_cw.u_wb_i_dat_cc[10] ,
    \top_cw.u_wb_i_dat_cc[9] ,
    \top_cw.u_wb_i_dat_cc[8] ,
    \top_cw.u_wb_i_dat_cc[7] ,
    \top_cw.u_wb_i_dat_cc[6] ,
    \top_cw.u_wb_i_dat_cc[5] ,
    \top_cw.u_wb_i_dat_cc[4] ,
    \top_cw.u_wb_i_dat_cc[3] ,
    \top_cw.u_wb_i_dat_cc[2] ,
    \top_cw.u_wb_i_dat_cc[1] ,
    \top_cw.u_wb_i_dat_cc[0] }),
    .m_wb_o_dat({\top_cw.u_wb_o_dat[15] ,
    \top_cw.u_wb_o_dat[14] ,
    \top_cw.u_wb_o_dat[13] ,
    \top_cw.u_wb_o_dat[12] ,
    \top_cw.u_wb_o_dat[11] ,
    \top_cw.u_wb_o_dat[10] ,
    \top_cw.u_wb_o_dat[9] ,
    \top_cw.u_wb_o_dat[8] ,
    \top_cw.u_wb_o_dat[7] ,
    \top_cw.u_wb_o_dat[6] ,
    \top_cw.u_wb_o_dat[5] ,
    \top_cw.u_wb_o_dat[4] ,
    \top_cw.u_wb_o_dat[3] ,
    \top_cw.u_wb_o_dat[2] ,
    \top_cw.u_wb_o_dat[1] ,
    \top_cw.u_wb_o_dat[0] }),
    .m_wb_sel({\top_cw.u_wb_sel[1] ,
    \top_cw.u_wb_sel[0] }),
    .s_wb_adr({\top_cw.cc_wb_adr[23] ,
    \top_cw.cc_wb_adr[22] ,
    \top_cw.cc_wb_adr[21] ,
    \top_cw.cc_wb_adr[20] ,
    \top_cw.cc_wb_adr[19] ,
    \top_cw.cc_wb_adr[18] ,
    \top_cw.cc_wb_adr[17] ,
    \top_cw.cc_wb_adr[16] ,
    \top_cw.cc_wb_adr[15] ,
    \top_cw.cc_wb_adr[14] ,
    \top_cw.cc_wb_adr[13] ,
    \top_cw.cc_wb_adr[12] ,
    \top_cw.cc_wb_adr[11] ,
    \top_cw.cc_wb_adr[10] ,
    \top_cw.cc_wb_adr[9] ,
    \top_cw.cc_wb_adr[8] ,
    \top_cw.cc_wb_adr[7] ,
    \top_cw.cc_wb_adr[6] ,
    \top_cw.cc_wb_adr[5] ,
    \top_cw.cc_wb_adr[4] ,
    \top_cw.cc_wb_adr[3] ,
    \top_cw.cc_wb_adr[2] ,
    \top_cw.cc_wb_adr[1] ,
    \top_cw.cc_wb_adr[0] }),
    .s_wb_i_dat({\top_cw.c_wb_i_dat_cmp[15] ,
    \top_cw.c_wb_i_dat_cmp[14] ,
    \top_cw.c_wb_i_dat_cmp[13] ,
    \top_cw.c_wb_i_dat_cmp[12] ,
    \top_cw.c_wb_i_dat_cmp[11] ,
    \top_cw.c_wb_i_dat_cmp[10] ,
    \top_cw.c_wb_i_dat_cmp[9] ,
    \top_cw.c_wb_i_dat_cmp[8] ,
    \top_cw.c_wb_i_dat_cmp[7] ,
    \top_cw.c_wb_i_dat_cmp[6] ,
    \top_cw.c_wb_i_dat_cmp[5] ,
    \top_cw.c_wb_i_dat_cmp[4] ,
    \top_cw.c_wb_i_dat_cmp[3] ,
    \top_cw.c_wb_i_dat_cmp[2] ,
    \top_cw.c_wb_i_dat_cmp[1] ,
    \top_cw.c_wb_i_dat_cmp[0] }),
    .s_wb_o_dat({\top_cw.cc_wb_o_dat[15] ,
    \top_cw.cc_wb_o_dat[14] ,
    \top_cw.cc_wb_o_dat[13] ,
    \top_cw.cc_wb_o_dat[12] ,
    \top_cw.cc_wb_o_dat[11] ,
    \top_cw.cc_wb_o_dat[10] ,
    \top_cw.cc_wb_o_dat[9] ,
    \top_cw.cc_wb_o_dat[8] ,
    \top_cw.cc_wb_o_dat[7] ,
    \top_cw.cc_wb_o_dat[6] ,
    \top_cw.cc_wb_o_dat[5] ,
    \top_cw.cc_wb_o_dat[4] ,
    \top_cw.cc_wb_o_dat[3] ,
    \top_cw.cc_wb_o_dat[2] ,
    \top_cw.cc_wb_o_dat[1] ,
    \top_cw.cc_wb_o_dat[0] }),
    .s_wb_sel({\top_cw.cc_wb_sel[1] ,
    \top_cw.cc_wb_sel[0] }));
 uprj_w_const uprj_w_const (.cw_clk_i(\top_cw.cmp_clk ),
    .cw_clk_o(io_out[16]),
    .cw_dir(\top_cw.cw_dir ),
    .cw_dir_b_o(cw_dir_o),
    .cw_dir_b_oo(io_out[18]),
    .cw_dir_o(cw_dir_o),
    .cw_req_i(\top_cw.cw_req ),
    .cw_req_o(io_out[17]),
    .cw_rst_i(\top_cw.cw_rst ),
    .cw_rst_o(io_out[21]),
    .i_pin_rst(io_in[23]),
    .i_wb_rst(wb_rst_i),
    .io_oeb_21(io_oeb[21]),
    .io_oeb_22(io_oeb[22]),
    .io_out_22(io_out[22]),
    .la_data_out_21(la_data_out[21]),
    .o_s_rst(\top_cw.i_rst ),
    .soft_rst(la_data_in[105]),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .b0_drv({wbs_dat_o[31],
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
    wbs_dat_o[0],
    wbs_ack_o,
    user_irq[2],
    user_irq[1],
    user_irq[0],
    la_data_out[94],
    la_data_out[93],
    la_data_out[92],
    la_data_out[91],
    la_data_out[90],
    la_data_out[89],
    la_data_out[88],
    la_data_out[87],
    la_data_out[86],
    la_data_out[85],
    la_data_out[84],
    la_data_out[83],
    la_data_out[82],
    la_data_out[81],
    la_data_out[80],
    la_data_out[79],
    la_data_out[78],
    la_data_out[127],
    la_data_out[126],
    la_data_out[125],
    la_data_out[124],
    la_data_out[123],
    la_data_out[122],
    la_data_out[121],
    la_data_out[120],
    la_data_out[119],
    la_data_out[118],
    la_data_out[117],
    la_data_out[116],
    la_data_out[115],
    la_data_out[114],
    la_data_out[113],
    la_data_out[112],
    la_data_out[111],
    la_data_out[110],
    la_data_out[109],
    la_data_out[108],
    la_data_out[107],
    la_data_out[106],
    la_data_out[105],
    la_data_out[104],
    la_data_out[103],
    la_data_out[102],
    la_data_out[101],
    la_data_out[100],
    la_data_out[99],
    la_data_out[98]}),
    .io_oeb_15_0({io_oeb[15],
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
    .io_oeb_18_16({io_oeb[18],
    io_oeb[17],
    io_oeb[16]}),
    .io_oeb_20_19({io_oeb[20],
    io_oeb[19]}),
    .io_out({io_out[37],
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
    io_out[23]}),
    .io_out_20_19({io_out[20],
    io_out[19]}),
    .la_data_out_16_17({la_data_out[17],
    la_data_out[16]}),
    .la_data_out_37_36({la_data_out[37],
    la_data_out[36]}),
    .la_data_out_77_62({la_data_out[77],
    la_data_out[76],
    la_data_out[75],
    la_data_out[74],
    la_data_out[73],
    la_data_out[72],
    la_data_out[71],
    la_data_out[70],
    la_data_out[69],
    la_data_out[68],
    la_data_out[67],
    la_data_out[66],
    la_data_out[65],
    la_data_out[64],
    la_data_out[63],
    la_data_out[62]}),
    .la_data_out_97_95({la_data_out[97],
    la_data_out[96],
    la_data_out[95]}),
    .la_datb_i({\top_cw.upc.dbg_out_core[21] ,
    \top_cw.u_wb_we ,
    \top_cw.u_wb_stb }),
    .la_datb_o({la_data_out[21],
    la_data_out[37],
    la_data_out[36]}),
    .oeb_out({io_oeb[37],
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
    io_oeb[23]}));
endmodule
