`default_nettype none
module twos_complement(unsigned_in, twos_out);
    
    parameter WIDTH=4;
    input wire [WIDTH-1:0] unsigned_in;

    output wire [WIDTH-1:0] twos_out;

    assign twos_out = ~unsigned_in + 1;

endmodule