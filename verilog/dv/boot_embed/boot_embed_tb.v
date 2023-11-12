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

/*
	EMBED MODE BOOT TEST
*/
// NOTE: this test is failing on GL (RTL variant passes), probably because of some bug in Caravel testing.
// At fixed time regerdles of timing of start of any operations in testbench, caravel turns many of
// its signals to X, including reset, that breaks everything.

`default_nettype none

`timescale 1 ns / 1 ps

module boot_embed_tb;
	reg clock;

	reg power1;

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

	wire [1:0] const_gpio_in = 2'b10;
	assign mprj_io[5:4] = const_gpio_in;
	localparam CW_PIN_OFF=8;
	assign cw_req = mprj_io[CW_PIN_OFF+0];
	assign cw_dir = mprj_io[CW_PIN_OFF+1];
	assign cw_io_o = mprj_io[CW_PIN_OFF+17:CW_PIN_OFF+2];
	assign mprj_io[CW_PIN_OFF+17:CW_PIN_OFF+2] = (cw_dir ? cw_io_i : 16'hZZZZ);
	assign mprj_io[CW_PIN_OFF+18] = cw_ack;
	assign mprj_io[CW_PIN_OFF+19] = cw_err;
	assign cw_clk = mprj_io[CW_PIN_OFF+29];
	assign cw_rst = mprj_io[CW_PIN_OFF+21];

	reg irq, split_clk, core_disable, embed_mode;
	reg spi_clk, spi_mosi;
	wire spi_miso;
	assign mprj_io[CW_PIN_OFF+22] = irq;
	assign mprj_io[CW_PIN_OFF+23] = split_clk;
	assign mprj_io[CW_PIN_OFF+24] = core_disable;
	assign mprj_io[CW_PIN_OFF+25] = embed_mode;
	assign mprj_io[CW_PIN_OFF+26] = spi_clk;
	assign mprj_io[CW_PIN_OFF+27] = spi_mosi;
	assign spi_miso = mprj_io[CW_PIN_OFF+28];

	reg spi_load = 0;
	reg gpio_release = 0;

	initial begin
		cw_ack <= 0;
		cw_err <= 0;
		irq <= 0;
		split_clk <= 0;
		core_disable <= 1;
		embed_mode <= 1;
		spi_clk <= 1;
		spi_mosi <= 1;
		cw_io_i <= 0;
	end

	/*
	 *	THE TEST
	 */
	initial begin
		$display("Start test");
		$dumpfile("boot_embed.vcd");
		//$dumpvars(2, boot_embed_tb.uut.chip_core.mprj);
		// wait for gpio init
		//$dumpvars(0, boot_embed_tb);
		#10 @(posedge cw_rst);
`ifdef GL
		#10 @(posedge cw_rst);
		$display("GL ONLY - SKIP FIRST REQUEST (preMGMT)");
`endif
		wait(~cw_rst);
		//$dumpvars(2, boot_embed_tb.uut);
		$dumpvars(2, boot_embed_tb.uut.chip_core.mprj);

		$display("cw_rst: start spi load");
		gpio_release <= 1'b1;

		// init cycles
		spi_clk <= 1'b1; @(posedge clock); @(posedge clock); spi_clk <= 1'b0; @(posedge clock); @(posedge clock);
		spi_clk <= 1'b1; @(posedge clock); @(posedge clock); spi_clk <= 1'b0; @(posedge clock); @(posedge clock);
		spi_clk <= 1'b1;
		#100;
		// load program from test.s file
		// explained there
		spi_tx(24'h800000, 16'h000e);
		spi_tx(24'h800001, 16'h0008);		
		spi_tx(24'h800002, 16'h000e);
		spi_tx(24'h800003, 16'h0019);
		spi_tx(24'h800004, 16'h000e);
		spi_tx(24'h800005, 16'h0002);

		spi_tx(24'h800010, 16'h0004);
		spi_tx(24'h800011, 16'h3888);
		spi_tx(24'h800012, 16'h0005);
		spi_tx(24'h800013, 16'h0400);

		spi_tx(24'h800014, 16'h0004);
		spi_tx(24'h800015, 16'h0003);
		spi_tx(24'h800016, 16'h0011);
		spi_tx(24'h800017, 16'h0001);
		spi_tx(24'h800018, 16'h0004);
		spi_tx(24'h800019, 16'h0002);
		spi_tx(24'h80001a, 16'h0011);
		spi_tx(24'h80001b, 16'h0200);

		spi_tx(24'h80001c, 16'h0004);
		spi_tx(24'h80001d, 16'h00f8);
		spi_tx(24'h80001e, 16'h0005);
		spi_tx(24'h80001f, 16'h0024);
		spi_tx(24'h800020, 16'h0004);
		spi_tx(24'h800021, 16'h0005);
		spi_tx(24'h800022, 16'h0005);
		spi_tx(24'h800023, 16'h0022);
		spi_tx(24'h800024, 16'h0002);
		spi_tx(24'h800025, 16'h0020);
		spi_tx(24'h800026, 16'h0024);
		spi_tx(24'h800027, 16'h0004);
		spi_tx(24'h800028, 16'h0005);
		spi_tx(24'h800029, 16'h0022);

		spi_tx(24'h80002a, 16'h0004);
		spi_tx(24'h80002b, 16'h0007);
		spi_tx(24'h80002c, 16'h0011);
		spi_tx(24'h80002d, 16'h0001);

		spi_tx(24'h80002e, 16'h0005);
		spi_tx(24'h80002f, 16'h0022);
		spi_tx(24'h800030, 16'h000e);
		spi_tx(24'h800031, 16'h0017);

		spi_tx(24'h800032, 16'h0201);
		spi_tx(24'h800033, 16'h0000);
		spi_tx(24'h800034, 16'h0488);
		spi_tx(24'h800035, 16'h0011);
		spi_tx(24'h800036, 16'h0004);
		spi_tx(24'h800037, 16'h0003);
		spi_tx(24'h800038, 16'h0011);
		spi_tx(24'h800039, 16'h0001);
		spi_tx(24'h80003a, 16'h0405);
		spi_tx(24'h80003b, 16'h0022);
		spi_tx(24'h80003c, 16'h1001);
		spi_tx(24'h80003d, 16'h0000);
		spi_tx(24'h80003e, 16'h001e);
		spi_tx(24'h80003f, 16'h0000);

		$display("spi_load_finished");
		spi_load <= 1;
		//$dumpvars(2, boot_embed_tb.uut.chip_core.mprj);

		// enable the core
		core_disable <= 0;

		// wait for gpio state
		wait(mprj_io[2:0] == 3'b101);
		$display("gpio pass 1");
		wait(mprj_io[1:0] == 2'b10); // shifted input [5:4]
		$display("gpio pass 2");

		wait(mprj_io[2:0] == 3'b111);
		$display("gpio in loop");
		@(posedge cw_clk);
		irq<=1;
		@(posedge cw_clk);
		@(posedge cw_clk);
		irq<=0;
		wait(mprj_io[2:0] == 3'b001); 		
		$display("interrupt gpio");
		wait(mprj_io[2:0] == 3'b111); 		
		$display("gpio restored");
		#200
		@(posedge cw_clk);
		irq<=1;
		@(posedge cw_clk);
		@(posedge cw_clk);
		irq<=0;
		wait(mprj_io[2:0] == 3'b010); 		
		$display("interrupt gpio2");

		@(posedge clock); @(posedge clock);
		@(posedge clock); @(posedge clock);
		$display(">> PASS");
		$finish;
	end

	// assign mprj_io[3] = 1'b1;

	initial begin
		

		// Repeat cycles of 1000 clock edges as needed to complete testbench
		repeat (33) begin // core sets up gpio at ~ 38k cycles
			repeat (1000) @(posedge clock);
			$display("+1000 cycles");
		end
		repeat (10) begin // core sets up gpio at ~ 38k cycles
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
		if (spi_load) 
			#1 $display("MPRJ-IO state = %b ", mprj_io[37:8]);
	end

	always @(mprj_io[7:0]) begin
		#1 $display("GPIO state = %b ", mprj_io[7:0]);
	end

	assign mprj_io[0] = gpio_release ? 1'bz : 1'b0;  //debug mode
	assign mprj_io[3] = gpio_release ? 1'bz : 1'b1;  // CSB 

	wire flash_csb;
	wire flash_clk;
	wire flash_io0;
	wire flash_io1;

	reg RSTB;

	initial begin
		RSTB <= 1'b0;
		#100;
		RSTB <= 1'b1;	    // Release reset
	end

	initial begin			// Power-up
		power1 <= 1'b0; // por.v in caravel nedded to be pathed because of inout port that is always one in RTL. Remove wait for posedge VDD
		#50;
		power1 <= 1'b1;
	end
		

	wire VDD;
	wire VSS;

	assign VDD = power1;
	assign VSS = 1'b0;

	// These are the mappings of mprj_io GPIO pads that are set to
	// specific functions on startup:
	//
	// JTAG      = mgmt_gpio_io[0]              (inout)
	// SDO       = mgmt_gpio_io[1]              (output)
	// SDI       = mgmt_gpio_io[2]              (input)
	// CSB       = mgmt_gpio_io[3]              (input)
	// SCK       = mgmt_gpio_io[4]              (input)
	// ser_rx    = mgmt_gpio_io[5]              (input)
	// ser_tx    = mgmt_gpio_io[6]              (output)
	// irq       = mgmt_gpio_io[7]              (input)

	caravel uut (
		.VDD 	  (VDD),
		.VSS	  (VSS),
		.clock	  (clock),
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

endmodule
`default_nettype wire
