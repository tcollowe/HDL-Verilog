module func(sel,
            x,
            y,
            z);
    
    input [3:0] sel;
    input x, y;
    output reg z;
    
    always @ (sel or a or b) begin
        case (sel)
            4'b0000: z <= 0;
            4'b0001: z <= x && y;
            4'b0010: z <= x && !y;
            4'b0011: z <= x;
            4'b0100: z <= !x && y;
            4'b0101: z <= y;
            4'b0110: z <= (x && !y) || (!x && y);
            4'b0111: z <= x || y;
            4'b1000: z <= !(x || y);
            4'b1001: z <= (x && y) || (!x && y);
            4'b1010: z <= !y;
            4'b1011: z <= x || !y;
            4'b1100: z <= !x;
            4'b1101: z <= !x || y;
            4'b1110: z <= !(x && y);
            4'b1111: z <= 1;
        endcase
        
    end
endmodule
