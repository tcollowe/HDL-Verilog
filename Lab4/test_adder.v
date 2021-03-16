`default_nettype none
`timescale 1ns/1ns

module test_adder();
   wire a, b, s, c, cin, cout, A, B, S;

   halfadd uut1(a, b, s, c);
   fulladd uut2(a, b, cin, s, cout);
//    adder #(.EVENP(128)) uut3(A, B, S, c);

    initial begin
        
    end



endmodule