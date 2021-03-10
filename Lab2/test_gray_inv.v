`default_nettype none
`timescale 1ns/1ns

module test_gray_inv();
    reg [3:0] in;
    wire [3:0] z;

    gray_convert4_inv uut(in, z);

    initial begin

        in = 0;
        #1
        if(z != 0) $display("Err at: in = %d,  out = %b", in, z);

       	in = 1;
        #1
        if(z != 1) $display("Err at: in = %d,  out = %b", in, z);
		
		in = 2;
        #1
        if(z != 3) $display("Err at: in = %d,  out = %b", in, z);

		in = 3;
        #1
        if(z != 2) $display("Err at: in = %d,  out = %b", in, z);

		in = 4;
        #1
        if(z != 7) $display("Err at: in = %d,  out = %b", in, z);

		in = 5;
        #1
        if(z != 6) $display("Err at: in = %d,  out = %b", in, z);

		in = 6;
        #1
        if(z != 4) $display("Err at: in = %d,  out = %b", in, z);

		in = 7;
        #1
        if(z != 5) $display("Err at: in = %d,  out = %b", in, z);

		in = 8;
        #1
        if(z != 12) $display("Err at: in = %d,  out = %b", in, z);

		in = 9;
        #1
        if(z != 13) $display("Err at: in = %d,  out = %b", in, z);

		in = 10;
        #1
        if(z != 12) $display("Err at: in = %d,  out = %b", in, z);

		in = 11;
        #1
        if(z != 13) $display("Err at: in = %d,  out = %b", in, z);

		in = 12;
        #1
        if(z != 8) $display("Err at: in = %d,  out = %b", in, z);

		in = 13;
        #1
        if(z != 9) $display("Err at: in = %d,  out = %b", in, z);

		in = 14;
        #1
        if(z != 11) $display("Err at: in = %d,  out = %b", in, z);

		in = 15;
        #1
        if(z != 10) $display("Err at: in = %d,  out = %b", in, z);

		$display("Test func finished");
        $finish;
    end
endmodule
