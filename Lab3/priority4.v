`default_nettype none
module priority4 (in, out, valid);
	input wire[3:0] in;
	output wire[1:0] out;
	output wire valid;

	wire t1, t2, t3, t4;
	and a1(t1, in[2], in[1]);
	or o1(t2, t1, in[3]);
	or o2(t3, in[3], in[2]);
	or o3(t4, t3, in[1], in[0]);

	assign out = {t3, t2};
	// assign out[1] <= t4;
	assign valid = t4;
	
endmodule