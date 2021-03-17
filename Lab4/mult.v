`default_nettype none
module multiplier(a, b, c);
    parameter WIDTH = 0;
    input wire [WIDTH-1:0] a;
    input wire [WIDTH-1:0] b;
    output wire [2*WIDTH-1:0] c;

    genvar i;
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin:mult
            wire [2*WIDTH-1:0] partial;
            assign partial = (b [i]) ? a << i : 0;
        end
    endgenerate

    wire [2*WIDTH-1:0] product;
    assign product = 0;

    genvar j;
    generate
        for (j = 0; j < WIDTH; j = j + 1) begin:sum
            if (j == 0) assign product = 0;
            assign product = product + mult[j].partial;
        end
    endgenerate

    assign c = product;
    
endmodule