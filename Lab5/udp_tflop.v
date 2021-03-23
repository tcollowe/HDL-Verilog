/*Create a user-defined primitive for a T-flip-flop that implements the following function table:

Clk	    T	Q(t)	Q(t+1)
0	    X	0 or 1	No change
Rising	0	0 or 1	No change
Rising	1	0	      1
Rising	1	1	      0

Your primitive should be called tflop, and should have an output port q, and an input port clk, and an input port t.*/

primitive tflop(q, clk, t);
output q;
input clk, t;
reg q;
initial q = 0;

table
// clk T : q : q'
    0 X : ? : -;
    r 0 : ? : -;
    r 1 : 0 : 1;
    r 1 : 1 : 0;
endtable

endprimitive
