/*
Use your D-Latch to implement the D-Flip-Flop:
*/

module dflop(clk, d, q);
    input clk, d;
    inout q;

    wire y = q;

    wire clkn;
    not nt1(clkn, clk);
    gate_dlatch dl(clk, d, y);
    gate_dlatch d2(clkn, y, q);

endmodule