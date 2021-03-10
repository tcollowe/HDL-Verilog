`default_nettype none
module twos_complement(unsigned_in, twos_out);
    
    parameter WIDTH = 4;
    input wire [WIDTH-1:0] unsigned_in;
    
    output wire [WIDTH-1:0] twos_out;
    
    assign twos_out = ~unsigned_in + 1;
    
endmodule
    
module twos_complement_inv(twos_in, inverse_out);
    
    parameter WIDTH = 4;
    input wire [WIDTH-1:0] twos_in;
    wire [WIDTH-1:0] temporary;
    output wire [WIDTH-1:0] inverse_out;
    
    assign temporary = twos_in - 1;
    assign inverse_out = twos_in[WIDTH - 1] ? ~temporary : twos_in;

    always @*
    if (twos_in == inverse_out) begin
        $display("*** ERROR *** Cannot convert a positive number");
    end
    
endmodule
