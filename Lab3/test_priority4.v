`default_nettype none
`timescale 1ns/1ns

module test_priority4;
    wire [3:0] in;
	wire [1:0] sel;
	wire out;

    priority4 uut(in, sel, out);

    initial begin
        in = 4'b0000;
        if(valid != 1'b0) $display("Err at: in = %b, sel = %b, output should be = , got ouput = %b", in, sel, in, out);
		#1

		in = 4'b1000;
        if((valid != 1'b1) || (out != 2'b00)) $display("Err at: in = %b, sel = %b, output should be = %b, got ouput = %b", in, sel, in, out);
		#1

		in = 4'b0100;
        if((valid != 1'b1) || (out != 2'b01)) $display("Err at: in = %b, sel = %b, output should be = %b, got ouput = %b", in, sel, in, out);
		#1

		in = 4'b0010;
        if((valid != 1'b1) || (out != 2'b10)) $display("Err at: in = %b, sel = %b, output should be = %b, got ouput = %b", in, sel, in, out);
		#1

		in = 4'b0001;
        if((valid != 1'b1) || (out != 2'b11)) $display("Err at: in = %b, sel = %b, output should be = %b, got ouput = %b", in, sel, in, out);
    end



endmodule