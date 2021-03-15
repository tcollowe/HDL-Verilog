`default_nettype none
module mux4 (in, sel, out);
	input wire[3:0] in;
	input wire[1:0] sel;
	output wire out;

	wire t1, t2, t3, t4, t5;

    and a1(t1, in[0], !sel[1], !sel[0]);
    and a2(t2, in[1], !sel[1], sel[0]);
    and a3(t3, in[2], sel[1], !sel[0]);
    and a4(t4, in[3], sel[1], sel[0]);
    or or1(t5, t1, t2, t3, t4);

	assign out = t5;
	
endmodule