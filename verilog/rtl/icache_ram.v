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
module icache_ram (
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    input i_clk,
    input i_rst,

    input [4:0] i_addr,
    input [137:0] i_data,
    output reg [137:0] o_data,
    input i_we
);

reg [137:0] mem [31:0];

always @(posedge i_clk) begin
    if (i_rst) begin
        for (integer row = 0; row < 32; row = row+1) begin
            mem[row][0] <= 1'b0;
        end
    end else begin
        if(i_we)
            mem[i_addr] <= i_data;
        o_data <= mem[i_addr];
    end
end

endmodule
