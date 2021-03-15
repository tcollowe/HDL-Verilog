`default_nettype none
`timescale 1ns/1ns

module test_sevenseg();
    reg [3:0] bcd_in;
	wire [6:0] sevenseg_out;

    sevenseg uut(bcd_in, sevenseg_out);

    initial begin
        
    end



endmodule