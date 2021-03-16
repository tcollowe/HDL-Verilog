`default_nettype none
`timescale 1ns/1ns

module test_bcdadd();
    wire a, b, c;

    mult#(.DIGITS(128)) uut1(a, b, c);
    initial begin
        
    end



endmodule