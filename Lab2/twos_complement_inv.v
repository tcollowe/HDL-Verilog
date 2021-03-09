`default_nettype none
module twos_complement_inv(twos_in, inverse_out);
    
    parameter WIDTH=4;
    input wire [WIDTH-1:0] twos_in;
	reg [WIDTH-1:0] temporary;
    output wire [WIDTH-1:0] inverse_out;


	always @* begin
		if (twos_in[WIDTH-1] == 0) begin
			$display("*** ERROR *** Cannot convert a positive number");
			temporary = twos_in;
		end	else begin
			temporary = ~(twos_in - 1);
		end
	end
	assign inverse_out = temporary;
endmodule