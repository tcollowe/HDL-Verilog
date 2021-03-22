/*Create a user-defined primitive for an S-R latch that implements the following function table :

S	R	Q(t)	Q(t+1)
0	0	0 or 1	No change
0	1	0 or 1	0
1	0	0 or 1	1
1	1	0 or 1	No change

Your primitive should be called srlatch, have an output port q, and two input ports, s and r.  You should not have a q’ output.
*/
primitive srlatch(q, s, r);

output q;
input s, r;

table
//  s   r  	: q
	0	0	: X;
	0	1	: X;
	1	0	: X;
	1 	1	: X;
endtable
endprimitive
