`default_nettype none
module priority4 (in, out, valid);
	input wire[3:0] in;
	output wire[1:0] out;
	output wire valid;

	wire [2:0] result;
	assign out = result[2:1];
	assign valid = result[0];

	assign result = (in[3] == 1) ? 3'b111 : 
					(in[2] == 1) ? 3'b101 :
					(in[1] == 1) ? 3'b011 :
					(in[0] == 1) ? 3'b001 :
					3'b000;

endmodule