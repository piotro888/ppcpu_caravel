module ff_mb_sync #(parameter DATA_W = 1) (
`ifdef USE_POWER_PINS
    inout vccd1,
    inout vssd1,
`endif

    input src_clk,
    input dst_clk,

    input src_rst,
    input dst_rst,

    input [DATA_W-1:0] i_data,
    output [DATA_W-1:0] o_data,

    input i_xfer_req // transfer is possible only one time per 3 cycles
);

reg [DATA_W-1:0] s_data_ff;
always @(posedge src_clk) begin
    if (i_xfer_req)
        s_data_ff <= i_data;
end

reg s_xfer_xor_flag;
always @(posedge src_clk) begin
    if(src_rst)
        s_xfer_xor_flag <= 1'b0;
    else if (i_xfer_req)
        s_xfer_xor_flag <= ~s_xfer_xor_flag;
end

reg [2:0] d_xfer_xor_sync;
always @(posedge dst_clk) begin
    if(dst_rst) begin
        d_xfer_xor_sync[2:0] <= 3'b0;
    end else begin
        d_xfer_xor_sync[0] <= s_xfer_xor_flag;
        d_xfer_xor_sync[1] <= d_xfer_xor_sync[0];
        d_xfer_xor_sync[2] <= d_xfer_xor_sync[1];
    end
end

wire d_xfer_flag = d_xfer_xor_sync[1] ^ d_xfer_xor_sync[2];

reg [DATA_W-1:0] d_data;
always @(posedge dst_clk) begin
    if(dst_rst)
        d_data <= 'b0;
    else if(d_xfer_flag)
        d_data <= s_data_ff;
end

assign o_data = d_data;


endmodule