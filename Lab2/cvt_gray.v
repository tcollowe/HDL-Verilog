`default_nettype none
module gray_convert4 (twos, gray);
	input [3:0] twos;
	output reg[3:0] gray;

	always @ (twos) begin
        case (twos)
            4'b0000: gray <= 4'b0000;	// 0
            4'b0001: gray <= 4'b0001;	// 1
            4'b0010: gray <= 4'b0011;	// 2
            4'b0011: gray <= 4'b0010;	// 3
            4'b0100: gray <= 4'b0110;	// 4
            4'b0101: gray <= 4'b0111;	// 5
            4'b0110: gray <= 4'b0101;	// 6
            4'b0111: gray <= 4'b0100;	// 7
            4'b1000: gray <= 4'b1100;	// 8
            4'b1001: gray <= 4'b1101;	// 9
            4'b1010: gray <= 4'b1111;	// 10
            4'b1011: gray <= 4'b1110;	// 11
            4'b1100: gray <= 4'b1010;	// 12
            4'b1101: gray <= 4'b1011;	// 13
            4'b1110: gray <= 4'b1001;	// 14
            4'b1111: gray <= 4'b1000;	// 15
        endcase
        
    end
	
endmodule