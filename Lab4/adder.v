`default_nettype none
module halfadd (a, b, s, c);
    input wire a;
    input wire b;
    output wire s;
    output wire c;

    wire t0, t1;

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

    wire s1, c1, t1;

    halfadd add1(a, b, s1, c1);
    halfadd add2(s, cin, s, t1);

    assign cout = c1 || t1;

endmodule

module adder (a, b, s, c);
    parameter WIDTH = 10;
    input [WIDTH-1:0] a;
    input [WIDTH-1:0] b;
    output [WIDTH-1:0] s;
    output c;

    wire [WIDTH:0] t;

    assign t = a + b;
    assign s = t [WIDTH-1:0];
    assign c = t [WIDTH];

endmodule