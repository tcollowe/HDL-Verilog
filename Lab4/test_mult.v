`default_nettype none
`timescale 1ns/1ns

module test_mult();
    parameter TEST_WIDTH = 4; // also have to change a and b bit counts, those couldn't use this macro
    reg [TEST_WIDTH-1:0] a, b;
    wire [2*TEST_WIDTH-1:0] c;

    multiplier #(.WIDTH(TEST_WIDTH)) uut1(a, b, c);
    initial begin
        a = 4'b1010;
        b = 4'b1100;
        #1;
        $display("\t\tWIDTH = %d\n\t\ta = %b (%d)\n\t\tb = %b (%d)\n\t\tc = %b (%d)\n", TEST_WIDTH, a, a, b, b, c, c);
    end



endmodule