`default_nettype none
`timescale 1ns/1ns

module test_mux4();
    reg [3:0] in;
    reg [1:0] sel;
	wire out;

    mux4 uut(in, sel, out);

    initial begin
        
    end



endmodule