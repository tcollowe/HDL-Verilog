`default_nettype none
`timescale 1ns/1ns

module test_bcd;
    reg [15:0] inp;
	wire [19:0] out;
    bcd_convert16_inv uut(inp, out);

    initial begin
    inp = 65535;
    #10
    $display("%b", out);
    end
endmodule