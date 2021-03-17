`default_nettype none
module bcdadd (A, B, sum);
    parameter DIGITS = 128;
    input wire[(DIGITS*4-1):0] A;
    input wire[(DIGITS*4-1):0] B;
    output wire[(DIGITS*4-1):0] sum;
    
    genvar i;
    generate
        // Break down each digit from input A and assign to temporary wires 0:3
        for (i = 0; i < DIGITS; i = i + 1) begin:addLeft
            wire [3:0] tempLeft;
            assign tempLeft = {A[i*4+3], A[i*4+2], A[i*4+1], A[i*4+0]};
        end
        // Break down each digit from input B and assign to temporary wires 0:3
        for (i = 0; i < DIGITS; i = i + 1) begin:addRight
            wire [3:0] tempRight;
            assign tempRight = {B[i*4+3], B[i*4+2], B[i*4+1], B[i*4+0]};
        end
        // Sum the two bcd numbers and carry out if necessary "in blocks"
        for(i = 0; i < DIGITS; i = i + 1) begin:addTogether
            wire [3:0] sumPart;
            wire carryOut;

            // if this i'th digit is the first digit, do not need to take into account carryout from previous
            if (i == 0) begin
                // if the sumPart is <=9 cool, sum is set. else need to find what the number would be -10
                assign sumPart = ((addLeft[i].tempLeft + addRight[i].tempRight) <= 9) ? (addLeft[i].tempLeft + addRight[i].tempRight) : ((addLeft[i].tempLeft + addRight[i].tempRight) % 10);
                assign carryOut = ((addLeft[i].tempLeft + addRight[i].tempRight) > 9) ? 1 : 0;
            end else begin
                // need to take into account the carry of the previous
                assign sumPart = ((addLeft[i].tempLeft + addRight[i].tempRight + addTogether[i-1].carryOut) <= 9) ? (addLeft[i].tempLeft + addRight[i].tempRight + addTogether[i-1].carryOut) : ((addLeft[i].tempLeft + addRight[i].tempRight + addTogether[i-1].carryOut) % 10);
                assign carryOut = ((addLeft[i].tempLeft + addRight[i].tempRight) > 9) ? 1 : 0;
            end
        end
        // now to concatenate all of the "blocks" of bcd numbers into single string
        for (i = 0; i < DIGITS; i = i + 1) begin:finalSum
            wire [(DIGITS * 4+3):0] togetherbcd;
            // if this is the first number "block" in the bcd string, nothing fancy
            if (i == 0) begin
                assign togetherbcd = addTogether[i].sumPart;
            end else begin
                // yikes, this is not the first. need to shift and add
                assign togetherbcd = (togetherbcd[i-1] << 4) + addTogether[i].sumPart;
            end            
        end
    endgenerate

    // finally, assign sum the value of the bcd result
    assign sum = finalSum[DIGITS-1].togetherbcd;

endmodule