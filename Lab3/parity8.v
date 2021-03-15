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
        assign a = in << i;
        end
    endgenerate

    assign a_xor = blk[0].a ^ blk[1].a ^ blk[2].a ^ blk[3].a ^ blk[4].a ^ blk[5].a ^ blk[6].a ^ blk[7].a; 
    // 1 if odd, and 0 if even

    if (EVENP == a_xor) begin
        assign out = 1;
    end
    else begin
        assign out = 0;
    end
	
endmodule