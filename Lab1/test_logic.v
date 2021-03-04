`default_nettype none
`timescale 1ns/1ns

module test_logic ();


reg a, b, c;
wire q1, q2;

structure s1(a, b, c, q1);

behave b1(a, b, c, q2);

initial begin
    a = 0;
    b = 0;
    c = 0;
    #1;
    if(q1 != q2) $display("Err: %b %b %b", a,b,c);

    a = 0;
    b = 0;
    c = 1;
    #1;
    if(q1 != q2) $display("Err: %b %b %b", a,b,c);
    
    ////////////////////////////////////////////
    a = 0;
    b = 1;
    c = 0;
    #1;
    if(q1 != q2) $display("Err: %b %b %b", a,b,c);

    a = 0;
    b = 1;
    c = 1;
    #1;
    if(q1 != q2) $display("Err: %b %b %b", a,b,c);
    ////////////////////////////////////////////
    a = 1;
    b = 0;
    c = 0;
    #1;
    if(q1 != q2) $display("Err: %b %b %b", a,b,c);

    a = 1;
    b = 0;
    c = 1;
    #1;
    if(q1 != q2) $display("Err: %b %b %b", a,b,c);
    ////////////////////////////////////////////
    a = 1;
    b = 1;
    c = 0;
    #1;
    if(q1 != q2) $display("Err: %b %b %b", a,b,c);

    a = 1;
    b = 1;
    c = 1;
    #1;
    if(q1 != q2) $display("Err: %b %b %b", a,b,c);

    $display("Test finished.");
    $finish;
end


endmodule