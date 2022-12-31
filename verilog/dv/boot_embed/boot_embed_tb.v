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

module boot_embed_tb;
	reg clock;
    reg RSTB;
	reg CSB;

	reg power1, power2;

	wire gpio;
	wire [37:0] mprj_io;

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
	wire [1:0] gpio2in = 2'b10;

	assign mprj_io[5:4] = gpio2in;
	localparam CW_PIN_OFF=8;
	assign cw_req = mprj_io[CW_PIN_OFF+0];
	assign cw_dir = mprj_io[CW_PIN_OFF+1];
	assign cw_io_o = mprj_io[CW_PIN_OFF+17:CW_PIN_OFF+2];
	assign mprj_io[CW_PIN_OFF+17:CW_PIN_OFF+2] = (cw_dir ? cw_io_i : 16'hZZZZ);
	assign mprj_io[CW_PIN_OFF+18] = cw_ack;
	assign mprj_io[CW_PIN_OFF+19] = cw_err;
	assign cw_clk = mprj_io[CW_PIN_OFF+29];
	assign cw_rst = mprj_io[CW_PIN_OFF+21];

	reg ext_irq, split_clk, core_disable, embed_mode;
	reg spi_clk, spi_mosi;
	wire spi_miso;
	assign mprj_io[CW_PIN_OFF+22] = ext_irq;
	assign mprj_io[CW_PIN_OFF+23] = split_clk;
	assign mprj_io[CW_PIN_OFF+24] = core_disable;
	assign mprj_io[CW_PIN_OFF+25] = embed_mode;
	assign mprj_io[CW_PIN_OFF+26] = spi_clk;
	assign mprj_io[CW_PIN_OFF+27] = spi_mosi;
	assign spi_miso = mprj_io[CW_PIN_OFF+28];

	initial begin
		cw_ack <= 0;
		cw_err <= 0;
		ext_irq <= 0;
		split_clk <= 0;
		core_disable <= 1;
		embed_mode <= 1;
		spi_clk <= 1;
		spi_mosi <= 1;
		cw_io_i <= 0;
		
	end
	integer i;
	task spi_tx (input [23:0] addr, input [15:0] data);
		begin
			$display("spi_tx: addr=%h data=%h", addr, data);
			spi_mosi <= 1'b0;
			spi_clk <= 1'b1; @(posedge clock); @(posedge clock); spi_clk <= 1'b0; @(posedge clock); @(posedge clock);
			
			for (i=0; i<24; i=i+1) begin
				spi_mosi <= addr[i];
				spi_clk <= 1'b1; @(posedge clock); @(posedge clock); spi_clk <= 1'b0; @(posedge clock); @(posedge clock);			end
			spi_mosi <= 1'b1; // we
			spi_clk <= 1'b1; @(posedge clock); @(posedge clock); spi_clk <= 1'b0; @(posedge clock); @(posedge clock);
			for (i=0; i<16; i=i+1) begin
				spi_mosi <= data[i];
				spi_clk <= 1'b1; @(posedge clock); @(posedge clock); spi_clk <= 1'b0; @(posedge clock); @(posedge clock);
			end
			spi_mosi <= 1'b1; // idle

			while (spi_miso) begin // wait for end
				spi_clk <= 1'b1; @(posedge clock); @(posedge clock); spi_clk <= 1'b0; @(posedge clock); @(posedge clock);
			end
			spi_clk <= 1'b1; @(posedge clock); @(posedge clock); spi_clk <= 1'b0; @(posedge clock); @(posedge clock);
		end
	endtask

	reg gpio_release = 0;

	/*
	 *	THE TEST
	 */
	initial begin
		$display("Start test");
		$dumpfile("boot_embed.vcd");
		// wait for gpio init
		wait(cw_rst);
		wait(~cw_rst);
		$dumpvars(0, boot_embed_tb);
		$display("cw_rst: start spi load");
		gpio_release <= 1'b1;

		// init cycles
		spi_clk <= 1'b1; @(posedge clock); @(posedge clock); spi_clk <= 1'b0; @(posedge clock); @(posedge clock);
		spi_clk <= 1'b1; @(posedge clock); @(posedge clock); spi_clk <= 1'b0; @(posedge clock); @(posedge clock);
		
		// load program from test.s file
		// explained there
		spi_tx(24'h800000, 16'h000e);
		spi_tx(24'h800001, 16'h0010);
		spi_tx(24'h800002, 16'h000e);
		spi_tx(24'h800003, 16'h0001);

		spi_tx(24'h800020, 16'h0004);
		spi_tx(24'h800021, 16'h3888);
		spi_tx(24'h800022, 16'h0005);
		spi_tx(24'h800023, 16'h0400);

		spi_tx(24'h800024, 16'h0004);
		spi_tx(24'h800025, 16'h0003);
		spi_tx(24'h800026, 16'h0011);
		spi_tx(24'h800027, 16'h0001);
		spi_tx(24'h800028, 16'h0004);
		spi_tx(24'h800029, 16'h0002);
		spi_tx(24'h80002a, 16'h0011);
		spi_tx(24'h80002b, 16'h0200);

		spi_tx(24'h80002c, 16'h0004);
		spi_tx(24'h80002d, 16'h00f8);
		spi_tx(24'h80002e, 16'h0005);
		spi_tx(24'h80002f, 16'h0024);
		spi_tx(24'h800030, 16'h0004);
		spi_tx(24'h800031, 16'h0005);
		spi_tx(24'h800032, 16'h0005);
		spi_tx(24'h800033, 16'h0022);
		spi_tx(24'h800034, 16'h0002);
		spi_tx(24'h800035, 16'h0020);
		spi_tx(24'h800036, 16'h0024);
		spi_tx(24'h800037, 16'h0004);
		spi_tx(24'h800038, 16'h0005);
		spi_tx(24'h800039, 16'h0022);
		// noops to not break gl, when fetch requests next before memwb starts write req
		spi_tx(24'h80003a, 16'h0000);
		spi_tx(24'h80003b, 16'h0000);
		spi_tx(24'h80003c, 16'h0000);
		spi_tx(24'h80003d, 16'h0000);
		$display("spi_load_finished");

		// enable the core
		core_disable <= 0;

		// wait for gpio state
		wait(mprj_io[2:0] == 3'b101);
		$display("gpio pass 1");
		wait(mprj_io[1:0] == 2'b10); // shifted input [5:4]
		$display("gpio pass 2");
		// todo: check spi load
		@(posedge clock); @(posedge clock);
		@(posedge clock); @(posedge clock);

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
		

		// Repeat cycles of 1000 clock edges as needed to complete testbench
		repeat (50) begin // mgmt core sets up gpio at ~ 38k cycles
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

	always @(mprj_io[36:8]) begin //exclude clk
		#1 $display("MPRJ-IO state = %b ", mprj_io[37:8]);
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

	wire flash_csb;
	wire flash_clk;
	wire flash_io0;
	wire flash_io1;

	wire VDD1V8;
	wire VDD3V3;
	wire VSS;
    
	assign VDD3V3 = power1;
	assign VDD1V8 = power2;
	assign VSS = 1'b0;

	assign mprj_io[3] = (gpio_release ? 1'bz : 1);  // Force CSB high.
	assign mprj_io[0] = (gpio_release ? 1'bz : 0);  // Disable debug mode

	caravel uut (
		.vddio	  (VDD3V3),
		.vddio_2  (VDD3V3),
		.vssio	  (VSS),
		.vssio_2  (VSS),
		.vdda	  (VDD3V3),
		.vssa	  (VSS),
		.vccd	  (VDD1V8),
		.vssd	  (VSS),
		.vdda1    (VDD3V3),
		.vdda1_2  (VDD3V3),
		.vdda2    (VDD3V3),
		.vssa1	  (VSS),
		.vssa1_2  (VSS),
		.vssa2	  (VSS),
		.vccd1	  (VDD1V8),
		.vccd2	  (VDD1V8),
		.vssd1	  (VSS),
		.vssd2	  (VSS),
		.clock    (clock),
		.gpio     (gpio),
		.mprj_io  (mprj_io),
		.flash_csb(flash_csb),
		.flash_clk(flash_clk),
		.flash_io0(flash_io0),
		.flash_io1(flash_io1),
		.resetb	  (RSTB)
	);

	spiflash #(
		.FILENAME("boot_embed.hex")
	) spiflash (
		.csb(flash_csb),
		.clk(flash_clk),
		.io0(flash_io0),
		.io1(flash_io1),
		.io2(),			// not used
		.io3()			// not used
	);

endmodule
`default_nettype wire
