`default_nettype none
`timescale 1ns/1ns

module test_priority4();
    reg [3:0] in;
	wire [1:0] out;
	wire valid;

    priority4 uut(in, out, valid);

    initial begin
        in = 4'b0000;
        #1
        if(valid != 1'b0) $display("Err at: in = %b, out = %b, valid = %b", in, out, valid);
		#1

		in = 4'b1000;
        #1
        if((valid != 1'b1) || (out != 2'b00)) $display("Err at: in = %b, out = %b, valid = %b", in, out, valid);
		#1

		in = 4'b0100;
        #1
        if((valid != 1'b1) || (out != 2'b01)) $display("Err at: in = %b, out = %b, valid = %b", in, out, valid);
		#1

		in = 4'b0010;
        #1
        if((valid != 1'b1) || (out != 2'b10)) $display("Err at: in = %b, out = %b, valid = %b", in, out, valid);
		#1

		in = 4'b0001;
        #1
        if((valid != 1'b1) || (out != 2'b11)) $display("Err at: in = %b, out = %b, valid = %b", in, out, valid);
    end



endmodule