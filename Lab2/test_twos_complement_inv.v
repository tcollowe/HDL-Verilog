`default_nettype none
`timescale 1ns/1ns

module test_twos_complement_inv;
    reg [3:0] inp;
    wire [3:0] out;

    twos_complement_inv #(.WIDTH(4)) uut(inp, out);

    initial begin
        inp = 0011;
        #1
        if(out != 4'b0001) begin
            $display("Expecting %b, got %b", inp, out);
        end
        

		inp = 1111;
        #1
        if(out != 4'b0001) begin
            $display("Expecting %b, got %b", inp, out);
        end
    
    $display("Test Two's Invert finished");
    $finish;
    end
endmodule