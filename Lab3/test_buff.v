`default_nettype none
`timescale 1ns/1ns

module test_buff();
    reg in;
    reg enable;
	wire out;

    buff uut(in, enable, out);

    initial begin
        
    end



endmodule