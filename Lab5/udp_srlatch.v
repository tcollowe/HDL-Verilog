/*Create a user-defined primitive for an S-R latch that implements the following function table :

S	R	Q(t)	Q(t+1)
0	0	0 or 1	No change
0	1	0 or 1	0
1	0	0 or 1	1
1	1	0 or 1	No change

Your primitive should be called srlatch, have an output port q, and two input ports, s and r.  You should not have a q’ output.
*/
primitive srlatch(q, s, r);

input s, r;
reg q;
output q;
initial q = 0;

table
//  s r : q : q'
	0 0 : ? : -;
	0 1 : ? : 0;
	1 0 : ? : 1;
	1 1 : ? : -;
endtable
endprimitive
