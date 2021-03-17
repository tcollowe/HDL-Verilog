module multiplier4(a, b, c);
    input [3:0] a, b;
    output [7:0] c;

    wire [6:0] p0, p1, p2, p3;
    
    assign p0 = (b [0]) ? a : 0;
    assign p1 = (b [1]) ? a << 1 : 0;
    assign p2 = (b [2]) ? a << 2 : 0;
    assign p3 = (b [3]) ? a << 3 : 0;

    assign c = p0 + p1 + p2 + p3;

endmodule