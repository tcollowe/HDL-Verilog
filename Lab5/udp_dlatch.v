/*Create a user-defined primitive for a D-latch that implements the following function table:

En / Clk	D	Q(t)	Q(t+1)
0	        X	0 or 1	No change
1	        0	0	    No change
1	        0	1	       0
1	        1	0	       1
1	        1	1	    No change

Your primitive should be called dlatch, have an output port q, and two input ports: a clk  and a d.
*/

primitive dlatch(q, clk, d);

output q;
input clk, d;

table
// clk  d  	: q
	0	X	: X;
	1	0	: 0;
	1	0	: 0;
	1 	1	: 1;
	1 	1	: 1;
endtable
endprimitive
