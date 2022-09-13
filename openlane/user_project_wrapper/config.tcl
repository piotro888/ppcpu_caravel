# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0

# Base Configurations. Don't Touch
# section begin

set ::env(PDK) $::env(PDK)
set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_hd"

# YOU ARE NOT ALLOWED TO CHANGE ANY VARIABLES DEFINED IN THE FIXED WRAPPER CFGS 
source $::env(DESIGN_DIR)/fixed_dont_change/fixed_wrapper_cfgs.tcl

# YOU CAN CHANGE ANY VARIABLES DEFINED IN THE DEFAULT WRAPPER CFGS BY OVERRIDING THEM IN THIS CONFIG.TCL
source $::env(DESIGN_DIR)/fixed_dont_change/default_wrapper_cfgs.tcl

set script_dir [file dirname [file normalize [info script]]]

set ::env(DESIGN_NAME) user_project_wrapper
#section end

# User Configurations

## Source Verilog Files
set ::env(VERILOG_FILES) "\
	$::env(CARAVEL_ROOT)/verilog/rtl/defines.v \
	$script_dir/../../verilog/rtl/user_project_wrapper.v \
	$script_dir/../../verilog/rtl/top_cw.v \
	$script_dir/../../verilog/rtl/upper_core.v"

## Clock configurations
set ::env(CLOCK_PORT) "user_clock2"
set ::env(CLOCK_NET) "user_clock2 top_cw.i_clk top_cw.cw_clk"

set ::env(CLOCK_PERIOD) "10"

## Internal Macros

### Macro Placement
set ::env(MACRO_PLACEMENT_CFG) $script_dir/macro.cfg

### Black-box verilog and views
set ::env(VERILOG_FILES_BLACKBOX) "\
	$::env(CARAVEL_ROOT)/verilog/rtl/defines.v \
	$script_dir/../../verilog/rtl/icache.v \
	$script_dir/../../verilog/rtl/dcache.v \
	$script_dir/../../verilog/rtl/clk_div.v \
	$script_dir/../../verilog/rtl/wb_compressor.v \
	$script_dir/../../verilog/rtl/wb_cross_clk.v \
	$script_dir/../../verilog/rtl/wishbone_arbiter.v \
	$script_dir/../../verilog/rtl/top_cw_logic.v \
	$script_dir/../../verilog/rtl/upper_core_logic.v \
	$script_dir/../../verilog/rtl/uprj_w_const.v \
	$script_dir/../../verilog/rtl/core.v"
	

set ::env(EXTRA_LEFS) "\
	$script_dir/../../lef/icache.lef \
	$script_dir/../../lef/dcache.lef \
	$script_dir/../../lef/clk_div.lef \
	$script_dir/../../lef/wb_compressor.lef \
	$script_dir/../../lef/wb_cross_clk.lef \
	$script_dir/../../lef/wishbone_arbiter.lef \
	$script_dir/../../lef/top_cw_logic.lef \
	$script_dir/../../lef/upper_core_logic.lef \
	$script_dir/../../lef/uprj_w_const.lef \
	$script_dir/../../lef/core.lef"

set ::env(EXTRA_GDS_FILES) "\
	$script_dir/../../gds/icache.gds \
	$script_dir/../../gds/dcache.gds \
	$script_dir/../../gds/clk_div.gds \
	$script_dir/../../gds/wb_compressor.gds \
	$script_dir/../../gds/wb_cross_clk.gds \
	$script_dir/../../gds/wishbone_arbiter.gds \
	$script_dir/../../gds/top_cw_logic.gds \
	$script_dir/../../gds/upper_core_logic.gds \
	$script_dir/../../gds/uprj_w_const.gds \
	$script_dir/../../gds/core.gds"

### Macro PDN Connections
set ::env(FP_PDN_MACRO_HOOKS) "\
	top_cw.upc.icache vccd1 vssd1 vccd1 vssd1, \
	top_cw.upc.dcache vccd1 vssd1 vccd1 vssd1, \
	top_cw.wb_compressor vccd1 vssd1 vccd1 vssd1, \
	top_cw.clk_div vccd1 vssd1 vccd1 vssd1, \
	top_cw.upc.core vccd1 vssd1 vccd1 vssd1, \
	top_cw.wb_cross_clk vccd1 vssd1 vccd1 vssd1, \ 
	top_cw.upc.wb_arbiter vccd1 vssd1 vccd1 vssd1, \
	top_cw.upc.upper_core_logic vccd1 vssd1 vccd1 vssd1, \
	top_cw.top_cw_logic vccd1 vssd1 vccd1 vssd1, \
	uprj_w_const vccd1 vssd1 vccd1 vssd1"

set ::env(SYNTH_MAX_FANOUT) 10
set ::env(CLOCK_BUFFER_FANOUT) 16
set ::env(SYNTH_STRATEGY) {DELAY 0}

# Floor plan tuning
set ::env(FP_TAP_HORIZONTAL_HALO) 20
set ::env(FP_PDN_HORIZONTAL_HALO) 20
set ::env(FP_TAP_VERTICAL_HALO) 10
set ::env(FP_PDN_VERTICAL_HALO) 10

set ::env(RT_MAX_LAYER) {met4}

set ::env(FP_PDN_CHECK_NODES) 1

set ::env(PL_BASIC_PLACEMENT) 0
set ::env(PL_TARGET_DENSITY) 0.3

#set ::env(SYNTH_TOP_LEVEL) 1
set ::env(PL_RANDOM_GLB_PLACEMENT) 1

set ::env(PL_RESIZER_DESIGN_OPTIMIZATIONS) 0
set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS) 0
set ::env(PL_RESIZER_BUFFER_INPUT_PORTS) 0
set ::env(PL_RESIZER_BUFFER_OUTPUT_PORTS) 0

set ::env(FP_PDN_ENABLE_RAILS) 0

set ::env(DIODE_INSERTION_STRATEGY) 0
set ::env(FILL_INSERTION) 0
set ::env(TAP_DECAP_INSERTION) 0
set ::env(CLOCK_TREE_SYNTH) 0

set ::env(RUN_KLAYOUT_XOR) 0

set ::env(FP_PDN_ENABLE_MACROS_GRID) {1}
set ::env(FP_PDN_ENABLE_GLOBAL_CONNECTIONS) "1"
set ::env(FP_PDN_CHECK_NODES) 1
set ::env(FP_PDN_ENABLE_RAILS) 0
set ::env(FP_PDN_IRDROP) "1"