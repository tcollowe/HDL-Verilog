/*Create a user-defined primitive for a D-flip-flop that implements the following function table:

Clk	D	Q(t)	Q(t+1)
0	X	0 or 1	No change
Rising	0	0	No change
Rising	0	1	0
Rising	1	0	1
Rising	1	1	No change

Your primitive should be called dflop and should have an output port q, and an input port clk, and an input port d.
*/
primitive dflop(q, clk, d);

output q;
reg q;
input clk, d;

initial q = 0;
table
// clk  d : q : q'
	0	? : ? : -;
	r	0 : 0 : -;
	r	0 : 1 : 0;
	r 	1 : 0 : 1;
	r 	1 : 1 : -;
endtable
endprimitive
