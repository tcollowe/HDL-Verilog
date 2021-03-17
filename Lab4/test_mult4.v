`default_nettype none
`timescale 1ns/1ns

module test_mult4();
    reg [3:0] a, b;
    wire [7:0] c;

    multiplier4 uut1(a, b, c);

    initial begin
        $display("Starting test.\n");

        a = 4'b1010;
        b = 4'b1100;
        #1;
        $display("a = %b (%d)\nb = %b (%d)\nc = %b (%d)\n", a, a, b, b, c, c);

        a = 4'b1111;
        b = 4'b1111;
        #1;
        $display("a = %b (%d)\nb = %b (%d)\nc = %b (%d)\n", a, a, b, b, c, c);

        a = 4'b0000;
        b = 4'b0000;
        #1;
        $display("a = %b (%d)\nb = %b (%d)\nc = %b (%d)\n", a, a, b, b, c, c);

        $display("Test complete.");

    end

endmodule