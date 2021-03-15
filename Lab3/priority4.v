`default_nettype none
module priority4 (in, out, valid);
	input wire[3:0] in;
	output wire[1:0] out;
	output wire valid;
	
	wire x, y, t3, t4, t5;

	assign x = in[3] || in[2];
	assign y = (in[3] || (in[1] && !in[2]));
	or orv(t3, in[0], in[1], in[2], in[3]);

	assign out = {x, y};
	assign valid = t3;
	
endmodule