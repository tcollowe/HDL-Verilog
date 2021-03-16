module comp4(
        input [3:0] a,
        input [3:0] b,
        output eq,
        output lt
);

        wire e0, e1, e2, e3;

        assign e0 = (a [0] && b [0]) || (!a [0] && !b [0]);
        assign e1 = (a [1] && b [1]) || (!a [1] && !b [1]);
        assign e2 = (a [2] && b [2]) || (!a [2] && !b [2]);
        assign e3 = (a [3] && b [3]) || (!a [3] && !b [3]);

        assign eq = e0 && e1 && e2 && e3;

        assign lt = (eq == 1'b1) ? 0 : !((a [3] && !b [3]) + (e3 && a [2] && !b [2]) + (e3 && e2 && a [1] && !b [1]) + (e3 && e2 && e1 && a [0] && !b [0]));

endmodule