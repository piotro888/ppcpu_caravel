// SPDX-FileCopyrightText: 2020 Efabless Corporation
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

`default_nettype none

//`define MPRJ_IO_PADS 24
/*
 *-------------------------------------------------------------
 *
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 *-------------------------------------------------------------
 */

module user_project_wrapper (
`ifdef USE_POWER_PINS
    inout vdda1,	// User area 1 3.3V supply
    inout vdda2,	// User area 2 3.3V supply
    inout vssa1,	// User area 1 analog ground
    inout vssa2,	// User area 2 analog ground
    inout vccd1,	// User area 1 1.8V supply
    inout vccd2,	// User area 2 1.8v supply
    inout vssd1,	// User area 1 digital ground
    inout vssd2,	// User area 2 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
    inout [`MPRJ_IO_PADS-10:0] analog_io,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);

/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/

// MODULE PINS AND LA ASSIGNMENTS

wire soft_rst = la_data_in[105];

wire i_clk = user_clock2;
wire i_rst = soft_rst;
wire i_irq;

wire cw_clk;
wire [15:0] cw_io_i;
wire [15:0] cw_io_o;
wire cw_req;
wire cw_dir;
wire cw_ack;
wire cw_err;

wire [4:0] dbg_in = la_data_in[104:100];
wire [61:0] dbg_out;
assign la_data_out[20:0] = dbg_out[20:0];
assign la_data_out[35:22] = dbg_out[35:22];
assign la_data_out[61:38] = dbg_out[61:38];

//assign la_data_out[77:62] = cw_io_o;
wire [15:0] la_cw_i = la_data_in[93:78];
wire la_cw_ack = la_data_in[94];
//assign la_data_out[97:95] = {cw_dir, cw_req, cw_clk};
wire la_cw_ovr = la_data_in[98];

// assign wbs_dat_o[31:0] = 32'b0;
// assign wbs_ack_o = 1'b0;
// assign user_irq = 3'b0;
// assign la_data_out[94:78] = 'b0;
// assign la_data_out[127:98] = 'b0;

// GPIO CONFIG

assign io_out[15:0] = cw_io_o[15:0];
assign cw_io_i[15:0] = io_in[15:0];

//assign io_out[18:16] = {cw_dir_o, cw_req, cw_clk};
//assign io_out[18] = cw_dir_o;
//assign io_out[17] = cw_req;
//assign io_out[16] = cw_clk;
assign {cw_err, cw_ack} = io_in[20:19];

//assign io_out[21] = cw_rst;

assign i_irq = io_in[22];

wire cw_rst, cw_dir_o;

// constant driver and buffers not allowed in wrapper
uprj_w_const uprj_w_const (
`ifdef USE_POWER_PINS
    .vccd1(vccd1), .vssd1(vssd1),
`endif
    .io_out_20_19(io_out[20:19]),
    .io_out_22(io_out[22]),
    .io_oeb_20_19(io_oeb[20:19]),
    .io_oeb_18_16(io_oeb[18:16]),
    .io_oeb_21(io_oeb[21]),
    .io_oeb_22(io_oeb[22]),

    .cw_dir(cw_dir),
    .io_oeb_15_0(io_oeb[15:0]),

    .b0_drv({wbs_dat_o[31:0],wbs_ack_o,user_irq,la_data_out[94:78],la_data_out[127:98]}),
    
    .la_data_out_97_95(la_data_out[97:95]),
    .la_data_out_77_62(la_data_out[77:62]),
    .la_data_out_37_36(la_data_out[37:36]),
    .la_data_out_21(la_data_out[21]),
    .la_data_out_16_17(la_data_out[17:16]),

    .io_out(io_out[37:23]),
    .oeb_out(io_oeb[37:23]),

    .cw_dir_o(cw_dir_o),

    .cw_req_i(cw_req),
    .cw_req_o(io_out[17]),
    .cw_clk_i(cw_clk), .cw_clk_o(io_out[16]),
    .cw_rst_i(cw_rst), .cw_rst_o(io_out[21]),
    .cw_dir_b_o(cw_dir_o), .cw_dir_b_oo(io_out[18]),
    .la_datb_i({dbg_out[21], dbg_out[37:36]}),
    .la_datb_o({la_data_out[21], la_data_out[37:36]})
);

// MODULES

top_cw top_cw (
`ifdef USE_POWER_PINS
    .vccd1(vccd1), .vssd1(vssd1),
`endif
    .i_clk(i_clk),
    .i_rst(i_rst),
    .cw_clk(cw_clk),

    .cw_io_i(cw_io_i),
    .cw_io_o(cw_io_o),
    .cw_req(cw_req),
    .cw_dir(cw_dir),
    .cw_ack(cw_ack),
    .cw_err(cw_err),
    .cw_rst(cw_rst),
    .i_irq(i_irq),

    .dbg_in(dbg_in),
    .dbg_out(dbg_out),

    .la_cw_io_i(la_cw_i),
    .la_cw_ack(la_cw_ack),
    .la_cw_ovr(la_cw_ovr)
);

endmodule	// user_project_wrapper

`default_nettype wire
