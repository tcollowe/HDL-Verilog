/* Implement your module using the seven-segment display above (found in the textbook).
 *
 * Create a module, sevenseg, that will decode a BCD number into its seven-segment display and has the following ports:
 * •	A 4-bit input bcd_in, and
 * •	A 7-bit output sevenseg_out.
 *
 *
 * My module used seven assign statements, one for each of the segments
 * For each segment, decide if it its shorter to encode when it should be on or when it should be off.  For example, For segment A, there are 8 times it is on, but only 2 times it is off.
 * Don’t forget about the Verilog concatenation operator
 */
// A = Σ(0,2,3,5,6,7,8,9) : !(1,4)
// B = Σ(0,1,2,3,4,7,8,9) : !(5,6)
// C = Σ(0,1,3,4,5,6,7,8,9) : !(2)
// D = Σ(0,2,3,5,6,8,9) : !(1,4,7)
// E = Σ(0,2,6,8) : !(1,3,4,5,7,9)
// F = Σ(0,4,5,6,8,9) : !(1,2,3,7)
// G = Σ(2,3,4,5,6,8,9) : !(0,1,7)
`default_nettype none

module sevenseg(bcd_in, sevenseg_out);
    input wire [3:0] bcd_in;
    output wire [6:0] sevenseg_out;

    reg A, B, C, D, E, F, G;

    always @(bcd_in) begin
        if (bcd_in > 4'd9) begin
             A = 0;
             B = 0;
             C = 0;
             D = 0;
             E = 0;
             F = 0;
             G = 0;
        end
        else begin
             A = (bcd_in != 1) && (bcd_in != 4);
             B = (bcd_in != 5) && (bcd_in != 6);
             C = (bcd_in != 2);
             D = (bcd_in != 1) && (bcd_in != 4) && (bcd_in != 7);
             E = (bcd_in == 0) || (bcd_in == 2) || (bcd_in == 6) || (bcd_in == 8);
             F = (bcd_in != 1) && (bcd_in != 2) && (bcd_in != 3) && (bcd_in != 7);
             G = (bcd_in != 0) && (bcd_in != 1) && (bcd_in != 7);
        end
    end

    assign sevenseg_out = {G, F, E, D, C, B, A};

endmodule
