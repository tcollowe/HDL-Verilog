module structure (A,
                  B,
                  C,
                  Q);
    input A, B, C;
    output Q;
    wire w1, w2, w3, w4;
    and and1(w1, A, B);
    or or1(w2, B, C);
    and and2(w3, C, B);
    and and3(w4, w2, w3);
    or or2(Q, w1, w4);
endmodule
