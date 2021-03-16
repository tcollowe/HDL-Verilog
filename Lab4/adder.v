`default_nettype none
module halfadd (a, b, s, c);
    input wire a;
    input wire b;
    output wire s;
    output wire c;

    wire t0, t1, t2, t3, t4, t5;

    xor x1(t0, a, b);
    and a1(t1, a, b);

    assign s = t0;
    assign c = t1;

endmodule

module fulladd (a, b, cin, s, cout);
    input wire a;
    input wire b;
    input wire cin;
    output wire s;
    output wire cout;

    


endmodule

module adder (A, B, S, C);
    parameter WIDTH = 10;
    input wire A;
    input wire B;
    output reg S;
    output reg C;

    


endmodule