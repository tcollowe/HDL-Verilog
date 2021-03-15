`default_nettype none
`timescale 1ns/1ns

module test_parity8();
    reg [7:0] in;
	wire out;


    parity8 #(.EVENP(1)) uut (in, out);

    initial begin
        
    end



endmodule