`default_nettype none
module priority4 (in, out, valid);
	input wire[3:0] in;
	output reg[1:0] out;
	output reg valid;

	always @(in) begin
	casex (in)
		4'bxxx1 : begin
			assign out = 2'b11;
			assign valid = 1;
		end
		4'bxx10 : begin
			assign out = 2'b10;
			assign valid = 1;
		end 
		4'bx100 : begin
			assign out = 2'b01;
			assign valid = 1;
		end
		4'b1000 : begin
			assign out = 2'b00;
			assign valid = 1;
		end
		4'b0000: begin
			assign out = 2'b00;
			assign valid = 0;
		end 		 
		default: begin
			assign out = 2'b00;
			assign valid = 0;
		end 
	endcase

	end
	
endmodule