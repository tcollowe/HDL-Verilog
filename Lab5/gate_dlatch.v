/*
Implement the D-latch using 4 NAND gates, following the same truth table as before, not the one shown from the text:
// clk  d  	: q
	0	X	: X;
	1	0	: 0;
	1 	1	: 1;
*/
`default_nettype none
module dlatch(clk, d, q);
    input wire clk, d;
    inout wire q;

	wire dn, qn, de, dne, w1;

	not nt1(dn, d);
	//not nt2(qn, q);
	nand nd1(de, clk, d);
	nand nd2(dne, dn, clk);
	nand nd4(qn, dne, q);
	nand nd3(w1, de, qn);

	assign q = w1;
	

endmodule