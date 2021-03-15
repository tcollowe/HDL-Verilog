`default_nettype none
`timescale 1ns/1ns

module test_comp4;
        reg [3:0] a;
        reg [3:0] b;
        wire eq;
        wire lt;
        comp4 uut(a, b, eq, lt);

        initial begin
                $display("Starting test.\n");

                a = 4'b0001;
                b = 4'b0001;
                #1;
                $display("a = %b (%d )\nb = %b (%d )\neq = %b\nlt = %b\n", a, a, b, b, eq, lt);

                a = 4'b0001;
                b = 4'b0010;
                #1;
                $display("a = %b (%d )\nb = %b (%d )\neq = %b\nlt = %b\n", a, a, b, b, eq, lt);

                a = 4'b0010;
                b = 4'b0001;
                #1;
                $display("a = %b (%d )\nb = %b (%d )\neq = %b\nlt = %b\n", a, a, b, b, eq, lt);

                $display("Test complete.");
        end

endmodule