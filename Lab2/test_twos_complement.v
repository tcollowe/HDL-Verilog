`default_nettype none
`timescale 1ns/1ns

module test_twos_complement;
    reg [3:0] inp;
    wire [3:0] out;

    twos_complement #(.WIDTH(4)) uut(inp, out);

    initial begin
        inp = 0001;
        #1
        if(out != 4'b1111) $display("Expecting 1111, got %b", out);
    
    $display("Test Two's finished");
    $finish;
    end
endmodule