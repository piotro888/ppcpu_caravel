// SPDX-FileCopyrightText: 2020 Piotr Wegrzyn
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

/*
	CW BOOT TEST

	Boots core in CW mode, monitors CW bus pins and inserts fixed instruction to see if CW outside
	communication works correctly

*/

`default_nettype none

`timescale 1 ns / 1 ps

module boot_cw_tb;
	reg clock;
    reg RSTB;
	reg CSB;

	reg power1, power2;

	wire gpio;
	wire [37:0] mprj_io_in;
	wire [37:0] mprj_io_out;
	wire [37:0] mprj_io_oeb;

	always #12.5 clock <= (clock === 1'b0);

	initial begin
		clock = 0;
	end


	// CW PINS
	reg [15:0] cw_io_i;
	wire [15:0] cw_io_o;
	wire cw_req;
	wire cw_dir;
	reg cw_ack;
	reg cw_err;
	wire cw_clk;
	wire cw_rst;

	localparam CW_PIN_OFF=8;
	assign cw_req = mprj_io_out[CW_PIN_OFF+0];
	assign cw_dir = mprj_io_out[CW_PIN_OFF+1];
	assign cw_io_o = mprj_io_out[CW_PIN_OFF+17:CW_PIN_OFF+2];
	assign mprj_io_in[CW_PIN_OFF+17:CW_PIN_OFF+2] = (cw_dir ? cw_io_i : 16'hZZZZ);
	assign mprj_io_in[CW_PIN_OFF+18] = cw_ack;
	assign mprj_io_in[CW_PIN_OFF+19] = cw_err;
	assign cw_clk = mprj_io_out[CW_PIN_OFF+29];
	assign cw_rst = mprj_io_out[CW_PIN_OFF+21];

	reg ext_irq, split_clk, core_disable, embed_mode;
	reg spi_clk, spi_mosi;
	wire spi_miso;
	assign mprj_io_in[CW_PIN_OFF+22] = ext_irq;
	assign mprj_io_in[CW_PIN_OFF+23] = split_clk;
	assign mprj_io_in[CW_PIN_OFF+24] = core_disable;
	assign mprj_io_in[CW_PIN_OFF+25] = embed_mode;
	assign mprj_io_in[CW_PIN_OFF+26] = spi_clk;
	assign mprj_io_in[CW_PIN_OFF+27] = spi_mosi;
	assign spi_miso = mprj_io_out[CW_PIN_OFF+28];

	initial begin
		cw_ack <= 0;
		cw_err <= 0;
		ext_irq <= 0;
		split_clk <= 0;
		core_disable <= 0;
		embed_mode <= 0;
		spi_clk <= 1;
		spi_mosi <= 0;
		cw_io_i <= 0;
	end

	/*
	 *	THE TEST
	 */
	initial begin
		$display("Start test");
		$display("Waiting for CW request");
		wait(cw_req);
		wait(cw_io_o == 16'hff17); // 0xff addr high part + read req with 4 burst
		wait(cw_io_o == 16'he000); // addr low part
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		// respond with jump to 0x0100
		$display("Waiting for direction");
		wait(cw_dir == 1'b1);
		cw_io_i <= 16'h000e;
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		@(posedge clock);
		cw_io_i <= 16'h0100;
		cw_ack <= 1'b1;
		// nops
		@(posedge clock);
		cw_ack <= 1'b0;
		@(posedge clock);
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		@(posedge clock);
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		@(posedge clock);
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		@(posedge clock);
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		@(posedge clock);
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		@(posedge clock);
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		$display("first instr fetched");

		// simulate memory write instruction
		wait(cw_req == 1'b1);
		wait(cw_io_o == 16'hff17);
		wait(cw_io_o == 16'he200); // assert addr after jump
		$display("addr verified");
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		@(posedge clock);
		@(posedge clock);
		wait(cw_dir);
		// Submit fake jump to address 0x1000
		cw_io_i <= 16'h0005;
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		@(posedge clock);
		cw_io_i <= 16'h0100;
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		@(posedge clock);
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		@(posedge clock);
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		@(posedge clock);
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		@(posedge clock);
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		@(posedge clock);
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		@(posedge clock);
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		$display("fetched store instr");

		wait(cw_req == 1'b1);
		wait(cw_io_o == 16'h1027);
		wait(cw_io_o == 16'h0080); // virt addr 0x100
		$display("store addr req checked");
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		@(posedge clock);
		cw_ack <= 1'b1;
		cw_io_i <= 16'ha0a0;
		@(posedge clock);
		cw_ack <= 1'b0;
		@(posedge clock);
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		@(posedge clock);
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		@(posedge clock);
		cw_ack <= 1'b1;
		@(posedge clock);
		cw_ack <= 1'b0;
		wait(cw_dir == 1'b0);

		wait(cw_req == 1'b1);
		cw_io_i <=  16'b0; //noop
		$display("nop fetch");
		cw_ack <= 1'b1;
		@(posedge clock); // ack hdr
		cw_ack <= 1'b0;
		wait(cw_dir == 1'b1);
		wait(cw_dir == 1'b0);
		@(posedge clock);
		@(posedge clock);
		@(posedge clock);
		@(posedge clock);
		$finish;
	end
	
	/*
	 *	TB INIT STUFF by Efabless
	 */

	`ifdef ENABLE_SDF
		initial begin
			$sdf_annotate("../../../sdf/user_proj_example.sdf", uut.mprj) ;
			$sdf_annotate("../../../sdf/user_project_wrapper.sdf", uut.mprj.mprj) ;
			$sdf_annotate("../../../mgmt_core_wrapper/sdf/DFFRAM.sdf", uut.soc.DFFRAM_0) ;
			$sdf_annotate("../../../mgmt_core_wrapper/sdf/mgmt_core.sdf", uut.soc.core) ;
			$sdf_annotate("../../../caravel/sdf/housekeeping.sdf", uut.housekeeping) ;
			$sdf_annotate("../../../caravel/sdf/chip_io.sdf", uut.padframe) ;
			$sdf_annotate("../../../caravel/sdf/mprj_logic_high.sdf", uut.mgmt_buffers.mprj_logic_high_inst) ;
			$sdf_annotate("../../../caravel/sdf/mprj2_logic_high.sdf", uut.mgmt_buffers.mprj2_logic_high_inst) ;
			$sdf_annotate("../../../caravel/sdf/mgmt_protect_hv.sdf", uut.mgmt_buffers.powergood_check) ;
			$sdf_annotate("../../../caravel/sdf/mgmt_protect.sdf", uut.mgmt_buffers) ;
			$sdf_annotate("../../../caravel/sdf/caravel_clocking.sdf", uut.clocking) ;
			$sdf_annotate("../../../caravel/sdf/digital_pll.sdf", uut.pll) ;
			$sdf_annotate("../../../caravel/sdf/xres_buf.sdf", uut.rstb_level) ;
			$sdf_annotate("../../../caravel/sdf/user_id_programming.sdf", uut.user_id_value) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_bidir_1[0] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_bidir_1[1] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_bidir_2[0] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_bidir_2[1] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_bidir_2[2] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_1[0] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_1[1] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_1[2] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_1[3] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_1[4] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_1[5] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_1[6] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_1[7] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_1[8] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_1[9] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_1[10] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_1a[0] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_1a[1] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_1a[2] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_1a[3] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_1a[4] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_1a[5] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_2[0] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_2[1] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_2[2] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_2[3] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_2[4] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_2[5] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_2[6] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_2[7] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_2[8] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_2[9] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_2[10] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_2[11] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_2[12] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_2[13] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_2[14] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_control_block.sdf", uut.\gpio_control_in_2[15] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.\gpio_defaults_block_0[0] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.\gpio_defaults_block_0[1] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.\gpio_defaults_block_2[0] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.\gpio_defaults_block_2[1] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.\gpio_defaults_block_2[2] ) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_5) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_6) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_7) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_8) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_9) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_10) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_11) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_12) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_13) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_14) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_15) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_16) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_17) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_18) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_19) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_20) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_21) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_22) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_23) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_24) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_25) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_26) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_27) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_28) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_29) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_30) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_31) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_32) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_33) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_34) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_35) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_36) ;
			$sdf_annotate("../../../caravel/sdf/gpio_defaults_block.sdf", uut.gpio_defaults_block_37) ;
		end
	`endif 

	// assign mprj_io[3] = 1'b1;

	initial begin
		$dumpfile("boot_cw_reduced.vcd");
		$dumpvars(2, boot_cw_tb.uwp);
		// Repeat cycles of 1000 clock edges as needed to complete testbench
		repeat (2) begin 
			repeat (1000) @(posedge clock);
			$display("+1000 cycles");
		end
		
		$display("%c[1;31m",27);
		`ifdef GL
			$display ("Monitor: Timeout, Test LA (GL) Failed");
		`else
			$display ("Monitor: Timeout, Test LA (RTL) Failed");
		`endif
		$display("%c[0m",27);
		$finish;
	end

	always @(mprj_io_out[36:8]) begin //exclude clk
		#1 $display("MPRJ-IO state = %b ", mprj_io_out[37:8]);
	end

	initial begin
		RSTB <= 1'b0;
		CSB  <= 1'b1;		// Force CSB high
		#2000;
		RSTB <= 1'b1;	    	// Release reset
		#170000;
		CSB = 1'b0;		// CSB can be released
	end

	initial begin		// Power-up sequence
		power1 <= 1'b0;
		power2 <= 1'b0;
		#200;
		power1 <= 1'b1;
		#200;
		power2 <= 1'b1;
	end

	wire VDD1V8;
	wire VDD3V3;
	wire VSS;
    
	assign VDD3V3 = power1;
	assign VDD1V8 = power2;
	assign VSS = 1'b0;
	wire dmy;
	wire aio;
	wire lai, rq, wbd;

	user_project_wrapper uwp (
		.user_clock2(clock),
		.wb_clk_i(clock),
		.wb_rst_i(~RSTB),
		.wbs_ack_o(dmy),
		.wbs_cyc_i(1'b0),
		.wbs_stb_i(1'b0),
		.wbs_we_i(1'b0),
		.vdda1    (VDD3V3),
		.vdda2    (VDD3V3),
		.vssa1	  (VSS),
		.vssa2	  (VSS),
		.vccd1	  (VDD1V8),
		.vccd2	  (VDD1V8),
		.vssd1	  (VSS),
		.vssd2	  (VSS),
		.analog_io(aio),
		.io_in(mprj_io_in),
		.io_oeb(mprj_io_oeb),
		.io_out(mprj_io_out),
		.la_data_in(~RSTB),
		.la_data_out(lai),
		.la_oenb(1'b0),
		.user_irq(rq),
		.wbs_adr_i(1'b0),
		.wbs_dat_i(1'b0),
		.wbs_dat_o(wbd),
		.wbs_sel_i(1'b0)
	);

endmodule
`default_nettype wire
