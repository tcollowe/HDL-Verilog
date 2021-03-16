`default_nettype none
module parity8 (in, out);
    parameter EVENP = 0;
	input wire[7:0] in;
	output wire out;

	wire a_xor;

	
    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin:blk
			wire [7:0] a;
		// always @* begin
        	assign a = in << i;
		// end
        
        end
    endgenerate

    assign a_xor = blk[0].a ^ blk[1].a ^ blk[2].a ^ blk[3].a ^ blk[4].a ^ blk[5].a ^ blk[6].a ^ blk[7].a; 
    // 1 if odd, and 0 if even
	
	case (EVENP)
		0 : assign out = (a_xor == 0) ? 1'b1 : 1'b0;
		1 : assign out = (a_xor == 0) ? 1'b0 : 1'b1;
		default: assign out = 0;
	endcase
    // assign out = (EVENP == a_xor) ? 1'b1 : 1'b0;
endmodule