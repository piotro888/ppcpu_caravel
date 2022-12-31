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

module rf (
`ifdef USE_POWER_PINS
    inout vccd1,
    inout vssd1,
`endif

    input i_clk,
    input i_rst,

    input i_gie,
    input [`REGNO-1:0] i_ie,
    input [`REGNO_LOG-1:0] i_lout_sel,
    input [`REGNO_LOG-1:0] i_rout_sel,
    
    input [`RW-1:0] i_d,
    output [`RW-1:0] o_lout,
    output [`RW-1:0] o_rout,
    output [`RW-1:0] o_l_high_out,

    output [`RW-1:0] dbg_r0,
    input [`REGNO_LOG-1:0] dbg_sel,
    output [`RW-1:0] dbg_reg
);

wire [`RW-1:0] reg_outputs [`REGNO-1:0];

assign o_lout = reg_outputs[i_lout_sel];
assign o_rout = reg_outputs[i_rout_sel];
assign o_l_high_out = reg_outputs[(i_lout_sel&3'b110) | 3'b1];

assign dbg_r0 = reg_outputs[0];
assign dbg_reg = reg_outputs[dbg_sel];

genvar i;
generate
    for (i=0; i<`REGNO; i=i+1) begin : rf_regs
        register rf_reg(
`ifdef USE_POWER_PINS
            .vccd1(vccd1), .vssd1(vssd1),
`endif
            .i_clk(i_clk),
            .i_rst(i_rst),
            .i_d(i_d),
            .i_ie(i_ie[i] & i_gie),
            .o_d(reg_outputs[i])
        );
    end
endgenerate

endmodule

module register #(parameter N = `RW, parameter RESET_VAL = 0) (
`ifdef USE_POWER_PINS
    inout vccd1,
    inout vssd1,
`endif
    input i_clk,
    input i_rst,

    input [N-1:0] i_d,
    output reg [N-1:0] o_d,
    input i_ie 
);

always @(posedge i_clk) begin
    if (i_rst)
        o_d <= RESET_VAL;
    else if (i_ie)
        o_d <= i_d;
end

    
endmodule