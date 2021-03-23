/*Create a user-defined primitive for a JK-flip-flop that implements the following function table:

Clk	    J	K	Q(t)	Q(t+1)
0	    X		0 or 1	No change
Rising	0	0	0 or 1	No change
Rising	0	1	1	       0
Rising	1	0	0 or 1	   1
Rising	1	1	0	       1
Rising	1	1	1	       0

Your primitive should be called jkflop and should have an output port q, and an input port clk, and input ports j and k.
*/

primitive jkflop(q, clk, j, k);

output q;
reg q;
input clk, j, k;
initial q = 0;
table
// clk  j   k : q : q'
	0 X ? : ? : -;
	r 0	0 : ? : -;
	r 0	1 : 1 : 0;
	r 1	0 : ? : 1;
	r 1	1 : 0 : 1;
	r 1	1 : 1 : 0;
endtable
endprimitive
