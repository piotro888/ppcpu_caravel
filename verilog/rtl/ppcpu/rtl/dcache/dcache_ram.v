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

module dcache_ram (
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    input i_clk,
    input i_rst,

    input [4:0] i_addr,
    input [81:0] i_data,
    output [81:0] o_data,
    input i_we
);

reg [79:0] mem [31:0];
reg [1:0] statmem [31:0];

reg [79:0] ram_data;
reg [1:0] stat_data;

assign o_data = {ram_data, stat_data};

always @(posedge i_clk) begin
        if(i_we)
            mem[i_addr] <= i_data[81:2];
        ram_data <= mem[i_addr];
end

always @(posedge i_clk) begin
	if (i_rst) begin
		for (integer i=0; i<32; i=i+1) begin
			statmem[i] <= 2'b0;
		end
	end else begin
	if(i_we)
            statmem[i_addr] <= i_data[1:0];
         stat_data <= statmem[i_addr];
	end
 end

endmodule
