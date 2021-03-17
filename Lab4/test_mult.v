`default_nettype none
`timescale 1ns/1ns

module test_mult();
    parameter TEST_WIDTH = 1; // also have to change a and b bit counts, those couldn't use this macro
    reg [TEST_WIDTH-1:0] a, b;
    wire [2*TEST_WIDTH-1:0] c;

    multiplier #(.WIDTH(TEST_WIDTH)) uut1(a, b, c);
    initial begin
        $display("Starting test.\n");

        a = 1'b1;
        b = 1'b1;
        #1;
        $display("WIDTH = %d\na = %b (%d)\nb = %b (%d)\nc = %b (%d)\n", TEST_WIDTH, a, a, b, b, c, c);

        $display("Test complete.");
    end

endmodule