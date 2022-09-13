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
module uprj_w_const (
`ifdef USE_POWER_PINS
    inout vccd1,
    inout vssd1,
`endif
    output [1:0] io_out_20_19,
    output io_out_22,
    output [1:0] io_oeb_20_19,
    output [2:0] io_oeb_18_16,
    output io_oeb_21,
    output io_oeb_22,
    input cw_dir,
    output [15:0] io_oeb_15_0,

    output [82:0] b0_drv,
    
    output [2:0] la_data_out_97_95,
    output [15:0] la_data_out_77_62, 
    output [1:0] la_data_out_37_36,
    output la_data_out_21,
    output [1:0] la_data_out_16_17,

    output [14:0] io_out,
    output [14:0] oeb_out,
    output cw_dir_o,

    input cw_req_i,
    output cw_req_o,
    input cw_clk_i,
    output cw_clk_o,
    input cw_rst_i,
    output cw_rst_o,
    input cw_dir_b_o,
    output cw_dir_b_oo,

    input [2:0] la_datb_i,
    output [2:0] la_datb_o
);

assign io_out_20_19 = 2'b0;
assign io_out_22 = 1'b0;
assign io_oeb_20_19 = 2'b11;
assign io_oeb_18_16 = 3'b0;
assign io_oeb_21 = 1'b0;
assign io_oeb_22 = 1'b1;
assign io_oeb_15_0 = {16{cw_dir}};
assign b0_drv = 83'b0;

//it should be copy of output signals, no time
assign la_data_out_97_95 ='b0;
assign la_data_out_77_62 = 'b0; 
assign la_data_out_37_36 = 'b0;
assign la_data_out_21 = 'b0;
assign la_data_out_16_17 = 'b0;
assign cw_req_o = cw_req_i;
assign cw_clk_o = cw_clk_i;
assign cw_rst_o = cw_rst_i;
assign cw_dir_b_oo = cw_dir_b_o;

endmodule