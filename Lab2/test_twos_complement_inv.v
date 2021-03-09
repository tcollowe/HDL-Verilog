`default_nettype none
`timescale 1ns/1ns

module test_twos_complement_inv;
    reg [3:0] inp;
    wire [3:0] out;

    twos_complement_inv #(.WIDTH(4)) uut(inp, out);

    initial begin
        // inp = 0001;
        // #1
        // if(out != 4'b0001) $display("Expecting %b, got %b", inp, out);

		inp = 1111;
        #1
        if(out != 4'b0001) $display("Expecting %b, got %b", inp, out);
    
    $display("Test Two's Invert finished");
    $finish;
    end
endmodule