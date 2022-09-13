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
module reset_sync (
`ifdef USE_POWER_PINS
    inout vccd1,
    inout vssd1,
`endif

    input i_rst,
    output o_rst,
    input i_clk
);

assign o_rst = reset_sync_ff[1];
reg [1:0] reset_sync_ff;
always @(posedge i_clk or posedge i_rst) begin
    if (i_rst) begin
        reset_sync_ff[0] <= 1'b1;
        reset_sync_ff[1] <= 1'b1;
    end else begin
        reset_sync_ff[0] <= 1'b0;
        reset_sync_ff[1] <= reset_sync_ff[0];
    end
end

endmodule