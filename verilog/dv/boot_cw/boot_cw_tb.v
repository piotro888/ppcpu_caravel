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
	
		$display("Waiting for CW cw_clk start");
		@(posedge cw_clk);
		$display("Waiting for CW request");
		@(posedge cw_clk);
		`ifdef GL
		wait(cw_req);
		$display("GL ONLY - SKIP FIRST REQUEST (preMGMT)");
		@(posedge cw_clk);
		`endif
		wait(cw_req);
		wait(cw_io_o == 16'hff17); // 0xff addr high part + read req with 4 burst
		wait(cw_io_o == 16'he000); // addr low part
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		// respond with jump to 0x0100
		$display("Waiting for direction");
		wait(cw_dir == 1'b1);
		cw_io_i <= 16'h000e;
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_io_i <= 16'h0100;
		cw_ack <= 1'b1;
		// nops
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		$display("first instr fetched");

		// simulate memory write instruction
		wait(cw_req == 1'b1);
		wait(cw_io_o == 16'hff17);
		wait(cw_io_o == 16'he200); // assert addr after jump
		$display("addr verified");
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		@(posedge cw_clk);
		wait(cw_dir);
		// Submit write to address 0x1000
		cw_io_i <= 16'h0005;
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_io_i <= 16'h0100;
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_io_i <= 16'h0004; // ldi r0, f8e2
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_io_i <= 16'hf8e2;
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_io_i <= 16'h0005; // sto r0, 0x102
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_io_i <= 16'h0102;
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_io_i <= 16'h0005; // sto r0, 0x202
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_io_i <= 16'h0202; 
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		$display("fetched store instr");

		wait(cw_req == 1'b1);
		wait(cw_io_o == 16'h1027);
		wait(cw_io_o == 16'h0080); // virt addr 0x100 - cache fetches line
		$display("store addr req checked");
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		wait(cw_dir);
		cw_ack <= 1'b1;
		cw_io_i <= 16'ha0a0;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		wait(cw_dir == 1'b0);
		
		wait(cw_req);
		wait(cw_io_o == 16'hff17); // 0xff addr high part + read req with 4 burst
		wait(cw_io_o == 16'he208); // addr low part
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		// respond with jump to 0x0100
		$display("Waiting for direction");
		wait(cw_dir == 1'b1);
		cw_io_i <= 16'h0002; // ldd r0, 0x104 (read from cache line fill a0a0)
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_io_i <= 16'h0104;
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_io_i <= 16'h0002; // ldd r0, 0x102 (read after write)
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_io_i <= 16'h0102;
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		$display("third instr set fetched");

		wait(cw_req == 1'b1);
		wait(cw_io_o == 16'h1027);
		wait(cw_io_o == 16'h0100); // virt addr 0x202 - cache fetches line
		$display("store3 addr req checked");
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		wait(cw_dir);
		cw_ack <= 1'b1;
		cw_io_i <= 16'hb0b0;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		@(posedge cw_clk);
		cw_ack <= 1'b1;
		@(posedge cw_clk);
		cw_ack <= 1'b0;
		wait(cw_dir == 1'b0);
		`ifndef GL
		$display("waiting for register changes");
		wait( boot_cw_tb.uut.chip_core.mprj.mprj.c0_dbg_r0 == 16'ha0a0);	
		wait( boot_cw_tb.uut.chip_core.mprj.mprj.c0_dbg_r0 == 16'hf8e2);
	`else
		$display("skip checking register state");
	`endif
		$display("PASSED");
		$finish;
	end
	
	initial begin
	//	$dumpfile("boot_cw.vcd");
		//$dumpvars(3, boot_cw_tb.uut);

	//	$dumpvars(4, boot_cw_tb.uut.chip_core.mprj);
		
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
		#1 $display("MPRJ-IO state = %b ", mprj_io[37:8]);
		$display("cw_req=%b cw_dir=%b cw_ack=%b cw_io_o = %h i=%h ", cw_req, cw_dir, cw_ack, cw_io_o, cw_io_i);
	end

	assign mprj_io[0] = 0;  // Disable debug mode
	assign mprj_io[3] = 1'b1;       // Force CSB high.

	wire flash_csb;
	wire flash_clk;
	wire flash_io0;
	wire flash_io1;

	reg RSTB;

	initial begin
		RSTB <= 1'b0;
		
		#1000;
		RSTB <= 1'b1;	    // Release reset
		#2000;
	end

	initial begin			// Power-up
		power1 <= 1'b0; // por.v in caravel nedded to be pathed because of inout port that is always one. Remove wait for posedge VDD
		#200;
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
		.FILENAME("boot_cw.hex")
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
