`default_nettype none
`timescale 1ns/1ns

module test_bcd;
    reg [15:0] inp;
	wire [15:0] out;
    bcd_convert16 uut(inp, out);

    initial begin
    //     inp = 63921;
    //     $display("Should be: decimal 63921    hex 00f9b1 octal 174661 binary 1111100110110001");
    //     $write  ("   Output: ");
    end
endmodule