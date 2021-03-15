`default_nettype none
module buff(in, enable, out);
	input wire in;
	input wire enable;
	output wire out;

	assign out = enable ? in : 1'bz;
	
endmodule