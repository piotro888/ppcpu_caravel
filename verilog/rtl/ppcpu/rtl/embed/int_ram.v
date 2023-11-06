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

// Internal ram for use in embed mode (programmable from outside)
// It maps to address 0x800000 and 0x100000 noncacheable (the same segment, p/m split left to the user)
// In other case maps to 0x7ffe00 cacheable as internal fast memory

module int_ram (
`ifdef USE_POWER_PINS
    inout vccd1,
    inout vssd1,
`endif

    input i_clk,

    input [5:0] i_addr, // 256B -> 128B :(
    input [`RW-1:0] i_data,
    output reg [`RW-1:0] o_data,
    input i_we
);

reg [`RW-1:0] mem [63:0];

always @(posedge i_clk) begin
    if(i_we)
        mem[i_addr] <= i_data;
    o_data <= mem[i_addr];
end

endmodule
