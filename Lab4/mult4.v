`default_nettype none
module mult4 (a, b, c);
    input [3:0] a;
    input [3:0] b;
    output [7:0] c;

    wire a0, a1, a2, a3;
    wire b0, b1, b2, b3;

    assign a0 = a [0];
    assign a1 = a [1];
    assign a2 = a [2];
    assign a3 = a [3];

    assign b0 = b [0];
    assign b1 = b [1];
    assign b2 = b [2];
    assign b3 = b [3];
    
    

endmodule