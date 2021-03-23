/*
Use the XOR primitive and your D-flip-flop to implement the T flipflop:
*/

module tflop(q, clk, t);
    input clk, t;
    output q;

    wire w1, w2, w3;
    xor x1(w1, q, t);
    dflop d1(w2, clk, w1);

    assign q = w2;

endmodule
