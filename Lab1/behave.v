module behave (A,
               B,
               C,
               Q);
    input A, B, C;
    output Q;
    
    assign Q = ((A && B) || ((B || C) && (B && C)));
endmodule
