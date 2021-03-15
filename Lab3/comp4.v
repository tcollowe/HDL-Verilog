module comp4(
        input [3:0] a,
        input [3:0] b,
        output eq,
        output lt
);

        wire a0, a1, a2, a3;
        wire b0, b1, b2, b3;
        wire e0, e1, e2, e3;

        assign a0 = a [0];
        assign a1 = a [1];
        assign a2 = a [2];
        assign a3 = a [3];

        assign b0 = b [0];
        assign b1 = b [1];
        assign b2 = b [2];
        assign b3 = b [3];
        
        assign e0 = (a0 && b0) || (!a0 && !b0);
        assign e1 = (a1 && b1) || (!a1 && !b1);
        assign e2 = (a2 && b2) || (!a2 && !b2);
        assign e3 = (a3 && b3) || (!a3 && !b3);

        assign eq = e0 && e1 && e2 && e3;

        assign lt = (eq == 1'b1) ? 0 : !((a3 && !b3) + (e3 && a2 && !b2) + (e3 && e2 && a1 && !b1) + (e3 && e2 && e1 && a0 && !b0));

endmodule