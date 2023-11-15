// SPDX-FileCopyrightText: 2022 Piotr Wegrzyn
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`include "config.v"

module core #(parameter CORENO = 0, INT_VEC = 1) (
`ifdef USE_POWER_PINS
    inout vccd1,
    inout vssd1,
`endif

    input i_clk,
    input i_rst,
    input i_disable,

    // fetch input singals
    output [`RW-1:0] o_req_addr,
    output o_req_active, o_req_ppl_submit,
    input [`I_SIZE-1:0] i_req_data,
    input i_req_data_valid,

    output [`RW-1:0] dbg_r0, dbg_pc,

    // data memory connections
    output [`RW-1:0] o_mem_addr, o_mem_data,
    input [`RW-1:0] i_mem_data,
    output o_mem_req, o_mem_we,
    input i_mem_ack,
    output [`ADDR_BYTES-1:0] o_mem_sel,
    output o_mem_long,
    output [7:0] o_mem_addr_high,

    input i_irq,
    output o_c_instr_page, o_c_data_page,
    output [`RW-1:0] sr_bus_addr, sr_bus_data_o,
    output sr_bus_we,
    output o_icache_flush,
    input i_mem_exception,
    input i_mc_core_int,
    input [`RW-1:0] i_core_int_sreg,
    output o_c_instr_long,
    output [7:0] o_instr_long_addr
);

// --- CPU INTERNAL CONNECTIONS ---

wire fetch_decode_next_ready;
wire fetch_decode_submit;
wire [`I_SIZE-1:0] fetch_decode_d_instr;
wire fetch_decode_jmp_pred;
wire execute_fetch_pc_update;
wire [`RW-1:0] execute_fetch_pc;
wire fde_pipeline_flush;

// Pipeline stage 0 - FETCH
fetch fetch (
`ifdef USE_POWER_PINS
    .vccd1(vccd1), .vssd1(vssd1),
`endif
    .i_clk(i_clk), .i_rst(i_rst), .mem_addr(o_req_addr), .mem_submit(o_req_ppl_submit),
    .mem_data(i_req_data), .mem_ack(i_req_data_valid), .i_next_ready(fetch_decode_next_ready),
    .o_submit(fetch_decode_submit), .o_instr(fetch_decode_d_instr), .o_jmp_predict(fetch_decode_jmp_pred),
    .i_exec_pc(execute_fetch_pc), .i_flush(fde_pipeline_flush));
assign o_req_active = ~i_disable;

wire decode_execute_next_ready;
wire decode_execute_submit;
wire [`I_SIZE-17:0] de_imm_pass;
wire de_jmp_pred;

wire dec_pc_inc, dec_pc_ie;
wire dec_r_bus_imm;
wire [`ALU_MODE_W-1:0] dec_alu_mode;
wire dec_alu_carry_en, dec_alu_flags_ie;
wire [`REGNO_LOG-1:0] dec_l_reg_sel, dec_r_reg_sel; 
wire [`REGNO-1:0] dec_rf_ie;
wire [`JUMP_CODE_W-1:0] dec_jump_cond_code;
wire dec_mem_access, dec_mem_we, dec_mem_width;
wire [1:0] dec_used_operands;
wire dec_sreg_load, dec_sreg_store, dec_sreg_jal_over, dec_sreg_irt, dec_sys, dec_mem_long, dec_wfi;

// Pipeline stage 1 - DECODE
decode decode (
`ifdef USE_POWER_PINS
    .vccd1(vccd1), .vssd1(vssd1),
`endif
    .i_clk(i_clk), .i_rst(i_rst), .o_ready(fetch_decode_next_ready), .o_submit(decode_execute_submit),
    .i_next_ready(decode_execute_next_ready), .i_instr_l(fetch_decode_d_instr[19:0]), .i_imm_pass(fetch_decode_d_instr[`I_SIZE-1:16]),
    .o_imm_pass(de_imm_pass), .oc_pc_inc(dec_pc_inc), .oc_pc_ie(dec_pc_ie), .oc_r_bus_imm(dec_r_bus_imm), .oc_alu_mode(dec_alu_mode),
    .oc_alu_flags_ie(dec_alu_flags_ie), .oc_alu_carry_en(dec_alu_carry_en), .oc_l_reg_sel(dec_l_reg_sel), .oc_r_reg_sel(dec_r_reg_sel),
    .oc_rf_ie(dec_rf_ie), .i_submit(fetch_decode_submit), .oc_jump_cond_code(dec_jump_cond_code), .i_jmp_pred_pass(fetch_decode_jmp_pred),
    .o_jmp_pred_pass(de_jmp_pred), .i_flush(fde_pipeline_flush), .oc_mem_access(dec_mem_access), .oc_mem_we(dec_mem_we),
    .oc_used_operands(dec_used_operands), .oc_sreg_load(dec_sreg_load), .oc_sreg_store(dec_sreg_store), .oc_sreg_jal_over(dec_sreg_jal_over),
    .oc_sreg_irt(dec_sreg_irt), .oc_sys(dec_sys), .oc_mem_width(dec_mem_width), .oc_mem_long(dec_mem_long), .oc_wfi(dec_wfi));

wire [`RW-1:0] ew_data;
wire [`RW-1:0] ew_addr;
wire [`REGNO-1:0] ew_reg_ie;
wire ew_mem_access, ew_mem_we, ew_mem_width;
wire [`REGNO-1:0] we_reg_ie;
wire [`RW-1:0] we_reg_data;
wire ew_submit;
wire ew_next_ready;
wire ew_long_mode;
wire [7:0] ew_addr_high;

// Pipeline stage 2 - EXECUTE
execute #(.CORENO(CORENO), .INT_VEC(INT_VEC)) execute(
`ifdef USE_POWER_PINS
    .vccd1(vccd1), .vssd1(vssd1),
`endif
    .i_clk(i_clk), .i_rst(i_rst), .o_ready(decode_execute_next_ready), .i_imm(de_imm_pass), .c_pc_inc(dec_pc_inc),
    .c_pc_ie(dec_pc_ie), .c_r_bus_imm(dec_r_bus_imm), .c_alu_mode(dec_alu_mode), .c_alu_flags_ie(dec_alu_flags_ie), 
    .c_alu_carry_en(dec_alu_carry_en), .c_l_reg_sel(dec_l_reg_sel), .c_r_reg_sel(dec_r_reg_sel), .c_rf_ie(dec_rf_ie), 
    .dbg_pc(dbg_pc), .dbg_r0(dbg_r0), .i_submit(decode_execute_submit), .c_jump_cond_code(dec_jump_cond_code), .o_pc_update(execute_fetch_pc_update),
    .o_exec_pc(execute_fetch_pc), .i_jmp_predict(de_jmp_pred), .i_flush(fde_pipeline_flush), .o_flush(fde_pipeline_flush), .c_mem_access(dec_mem_access),
    .c_mem_we(dec_mem_we), .o_data(ew_data), .o_addr(ew_addr), .o_reg_ie(ew_reg_ie), .o_mem_access(ew_mem_access), .o_mem_we(ew_mem_we), .o_submit(ew_submit),
    .i_next_ready(ew_next_ready), .i_reg_ie(we_reg_ie), .i_reg_data(we_reg_data), .c_used_operands(dec_used_operands), .c_sreg_load(dec_sreg_load),
    .c_sreg_store(dec_sreg_store), .c_sreg_jal_over(dec_sreg_jal_over), .i_irq(i_irq), .c_sreg_irt(dec_sreg_irt), .o_c_instr_page(o_c_instr_page),
    .sr_bus_addr(sr_bus_addr), .sr_bus_data_o(sr_bus_data_o), .sr_bus_we(sr_bus_we), .o_icache_flush(o_icache_flush), .c_sys(dec_sys), .c_mem_width(dec_mem_width),
    .o_mem_width(ew_mem_width), .o_c_data_page(o_c_data_page), .i_mem_exception(i_mem_exception),
    .i_core_int(i_mc_core_int), .i_core_int_sreg(i_core_int_sreg), .o_c_instr_long_mode(o_c_instr_long), .o_instr_addr_high(o_instr_long_addr), .c_mem_long(dec_mem_long),
    .o_mem_long_mode(ew_long_mode), .o_mem_addr_high(ew_addr_high), .c_wfi(dec_wfi));

// Pipeline stage 3 - MEM&WB
memwb memwb(
`ifdef USE_POWER_PINS
    .vccd1(vccd1), .vssd1(vssd1),
`endif
    .i_clk(i_clk), .i_rst(i_rst), .i_data(ew_data), .i_addr(ew_addr), .i_reg_ie(ew_reg_ie), .i_mem_access(ew_mem_access), .i_mem_we(ew_mem_we),
    .o_reg_ie(we_reg_ie), .o_reg_data(we_reg_data), .i_submit(ew_submit), .o_ready(ew_next_ready), .o_mem_req(o_mem_req), .o_mem_addr(o_mem_addr),
    .o_mem_data(o_mem_data), .o_mem_we(o_mem_we), .i_mem_data(i_mem_data), .i_mem_ack(i_mem_ack), .i_mem_width(ew_mem_width), .o_mem_sel(o_mem_sel),
    .o_mem_exception(i_mem_exception), .i_addr_high(ew_addr_high), .i_mem_long(ew_long_mode), .o_mem_long(o_mem_long), .o_mem_addr_high(o_mem_addr_high));

endmodule

module core0 (
`ifdef USE_POWER_PINS
    inout vccd1,
    inout vssd1,
`endif

    input i_clk,
    input i_rst,
    input i_disable,

    // fetch input singals
    output [`RW-1:0] o_req_addr,
    output o_req_active, o_req_ppl_submit,
    input [`I_SIZE-1:0] i_req_data,
    input i_req_data_valid,

    output [`RW-1:0] dbg_r0, dbg_pc,

    // data memory connections
    output [`RW-1:0] o_mem_addr, o_mem_data,
    input [`RW-1:0] i_mem_data,
    output o_mem_req, o_mem_we,
    input i_mem_ack,
    output [`ADDR_BYTES-1:0] o_mem_sel,
    output o_mem_long,
    output [7:0] o_mem_addr_high,

    input i_irq,
    output o_c_instr_page, o_c_data_page,
    output [`RW-1:0] sr_bus_addr, sr_bus_data_o,
    output sr_bus_we,
    output o_icache_flush,
    input i_mem_exception,
    input i_mc_core_int,
    input [`RW-1:0] i_core_int_sreg,
    output o_c_instr_long,
    output [7:0] o_instr_long_addr
);

core #(.CORENO(0), .INT_VEC(1)) core_0 (
    .i_clk(i_clk),
    .i_rst(i_rst),
    .i_disable(i_disable),
    .o_req_addr(o_req_addr),
    .o_req_active(o_req_active),
    .o_req_ppl_submit(o_req_ppl_submit),
    .i_req_data(i_req_data),
    .i_req_data_valid(i_req_data_valid),
    .dbg_r0(dbg_r0), 
    .dbg_pc(dbg_pc),
    .o_mem_addr(o_mem_addr),
    .o_mem_data(o_mem_data),
    .i_mem_data(i_mem_data),
    .o_mem_req(o_mem_req),
    .o_mem_we(o_mem_we),
    .i_mem_ack(i_mem_ack),
    .o_mem_sel(o_mem_sel),
    .o_mem_long(o_mem_long),
    .o_mem_addr_high(o_mem_addr_high),
    .i_irq(i_irq),
    .o_c_instr_page(o_c_instr_page),
    .o_c_data_page(o_c_data_page),
    .sr_bus_addr(sr_bus_addr),
    .sr_bus_data_o(sr_bus_data_o),
    .sr_bus_we(sr_bus_we),
    .o_icache_flush(o_icache_flush),
    .i_mem_exception(i_mem_exception),
    .i_mc_core_int(i_mc_core_int),
    .i_core_int_sreg(i_core_int_sreg),
    .o_c_instr_long(o_c_instr_long),
    .o_instr_long_addr(o_instr_long_addr)
);

endmodule

module core1 (
`ifdef USE_POWER_PINS
    inout vccd1,
    inout vssd1,
`endif

    input i_clk,
    input i_rst,
    input i_disable,

    // fetch input singals
    output [`RW-1:0] o_req_addr,
    output o_req_active, o_req_ppl_submit,
    input [`I_SIZE-1:0] i_req_data,
    input i_req_data_valid,

    output [`RW-1:0] dbg_r0, dbg_pc,

    // data memory connections
    output [`RW-1:0] o_mem_addr, o_mem_data,
    input [`RW-1:0] i_mem_data,
    output o_mem_req, o_mem_we,
    input i_mem_ack,
    output [`ADDR_BYTES-1:0] o_mem_sel,
    output o_mem_long,
    output [7:0] o_mem_addr_high,

    input i_irq,
    output o_c_instr_page, o_c_data_page,
    output [`RW-1:0] sr_bus_addr, sr_bus_data_o,
    output sr_bus_we,
    output o_icache_flush,
    input i_mem_exception,
    input i_mc_core_int,
    input [`RW-1:0] i_core_int_sreg,
    output o_c_instr_long,
    output [7:0] o_instr_long_addr
);

core #(.CORENO(1), .INT_VEC(2)) core_1 (
    .i_clk(i_clk),
    .i_rst(i_rst),
    .i_disable(i_disable),
    .o_req_addr(o_req_addr),
    .o_req_active(o_req_active),
    .o_req_ppl_submit(o_req_ppl_submit),
    .i_req_data(i_req_data),
    .i_req_data_valid(i_req_data_valid),
    .dbg_r0(dbg_r0), 
    .dbg_pc(dbg_pc),
    .o_mem_addr(o_mem_addr),
    .o_mem_data(o_mem_data),
    .i_mem_data(i_mem_data),
    .o_mem_req(o_mem_req),
    .o_mem_we(o_mem_we),
    .i_mem_ack(i_mem_ack),
    .o_mem_sel(o_mem_sel),
    .o_mem_long(o_mem_long),
    .o_mem_addr_high(o_mem_addr_high),
    .i_irq(i_irq),
    .o_c_instr_page(o_c_instr_page),
    .o_c_data_page(o_c_data_page),
    .sr_bus_addr(sr_bus_addr),
    .sr_bus_data_o(sr_bus_data_o),
    .sr_bus_we(sr_bus_we),
    .o_icache_flush(o_icache_flush),
    .i_mem_exception(i_mem_exception),
    .i_mc_core_int(i_mc_core_int),
    .i_core_int_sreg(i_core_int_sreg),
    .o_c_instr_long(o_c_instr_long),
    .o_instr_long_addr(o_instr_long_addr)
);

endmodule
