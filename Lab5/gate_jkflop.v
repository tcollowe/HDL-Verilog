/*
Use your D-Flip Flop, two AND gates, and one OR gate to implement the JK Flop:
*/

module jkflop(clk, j, k, q);
    input clk, j, k;
    inout q;

    wire qn, kn, jqn, knq, oring;

    not nt1(kn, k);
    not nt2(qn, q);
    and a1(jqn, j, qn);
    and a2(knq, kn, q);
    or o1(oring, a1, a2);

    gate_dflop d1(clk, oring, q);

endmodule
