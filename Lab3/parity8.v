`default_nettype none
module parity8 (in, out);
    parameter EVENP = 0;
	input wire[7:0] in;
	output wire out;

	wire a_xor;


    assign a_xor = ^in; 
    // 1 if odd, and 0 if even
	
    assign out = (EVENP) ? a_xor : ~a_xor;
endmodule