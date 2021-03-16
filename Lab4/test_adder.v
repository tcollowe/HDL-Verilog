`default_nettype none
`timescale 1ns/1ns

module test_adder;
    parameter TEST_WIDTH = 128; // also have to change a2 and b2 bit counts, those couldn't use this macro
    wire a, b, s, c, cin, cout, c2;
    wire [TEST_WIDTH-1:0] s2;
    reg [TEST_WIDTH-1:0] a2, b2;

    halfadd uut1(a, b, s, c);
    fulladd uut2(a, b, cin, s, cout);
    adder #(.WIDTH(TEST_WIDTH)) uut3(a2, b2, s2, c2);

    initial begin
        $display("Starting test.");

        $display("\n\tHalfadd:");
        // halfadd test?

        $display("\n\tFulladd:");
        // fulladd test?

        $display("\n\tAdder:");
            a2 = 128'b10101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010;
            b2 = 128'b11001100110011001100110011001100110011001100110011001100110011001100110011001100110011001100110011001100110011001100110011001100;
            #1;
            $display("\t\tWIDTH = %d\n\t\ta = %b (%d)\n\t\tb = %b (%d)\n\t\ts = %b (%d)\n\t\tc = %b", TEST_WIDTH, a2, a2, b2, b2, s2, s2, c2);

        $display("\nTest complete.");
    end

endmodule