`default_nettype none
module multiplier(a, b, c);
    parameter WIDTH = 0;
    input wire [WIDTH-1:0] a;
    input wire [WIDTH-1:0] b;
    output wire [2*WIDTH-1:0] c;

    genvar i;
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin:mult
            wire [2*WIDTH-1:0] product;
            if (i == 0) assign product = b [0] ? a : 0;
            else assign product = (b [i]) ? mult[i-1].product + (a << i) : mult[i-1].product;
        end
    endgenerate

    assign c = mult[WIDTH-1].product;
    
endmodule