/*
Use your D-Latch to implement the D-Flip-Flop:
*/

module dflop(q, clk, d);
    input clk, d;
    output q;

    wire y = q;

    wire clkn;
    not nt1(clkn, clk);
    dlatch dl(y, clk, d);
    dlatch d2(q, clkn, y);

endmodule