/*
Implement the S-R latch using two NAND gate primitives using the same logic table as before (not the one shown in the text, or here).  Note: because the truth table is *different* than it is from the textbook, you will need to do more than just include just two NAND gates.  
*/

module srlatch(q, s, r);
    input s, r;
    output q;

    wire w1, w2, w3;
    nand n1(w1, s, w2);
    nand n2(w2, r, w1);
    not not1(w3, w1);

    assign q = w3;
endmodule

