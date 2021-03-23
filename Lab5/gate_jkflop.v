/*
Use your D-Flip Flop, two AND gates, and one OR gate to implement the JK Flop:
*/

module jkflop(q, clk, j, k);
    input clk, j, k;
    output q;

    wire qn, kn, jqn, knq, oring;

    not nt1(kn, k);
    not nt2(qn, q);
    and a1(jqn, j, qn);
    and a2(knq, kn, q);
    or o1(oring, jqn, knq);

    dflop d1(q, clk, oring);

endmodule
