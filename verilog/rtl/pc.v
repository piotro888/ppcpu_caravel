//  SPDX-FileCopyrightText: 2022 Piotr Wegrzyn
// 
//  Copyright 2022 Piotr Wegrzyn
// 
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
// 
//      http://www.apache.org/licenses/LICENSE-2.0
// 
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//  SPDX-License-Identifier: Apache-2.0
`include "config.v"
module pc (
`ifdef USE_POWER_PINS
    inout vccd1,
    inout vssd1,
`endif

    input i_clk,
    input i_rst,

    output reg [`RW-1:0] o_pc,
    input [`RW-1:0] i_bus,

    input i_c_pc_inc,
    input i_c_pc_ie,
    input i_c_pc_irq
);

always @(posedge i_clk) begin
    if (i_rst) begin
        o_pc <= `RW'b0;
    end else if (i_c_pc_irq) begin
        o_pc <= `RW'b1;
    end else if (i_c_pc_ie) begin
        o_pc <= i_bus;
    end else if (i_c_pc_inc) begin
        o_pc <= o_pc + `RW'b1;
    end
end

endmodule