`default_nettype none
module bcdadd (A, B, sum);
    parameter DIGITS = 128;
    input wire[(DIGITS*4-1):0] A;
    input wire[(DIGITS*4-1):0] B;
    output wire[(DIGITS*4-1):0] sum;
    
endmodule