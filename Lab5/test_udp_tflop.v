`default_nettype none
`timescale 1ns/1ns

module test_udp_tflop();

    reg clk;
    reg t;
    wire q;
    
    tflop uut(q, clk, t);
    
    initial begin
        clk = 0;
        t = 0;
        #1
        if(q !== 0) $display("INIT Error when clk=%d, t=%d... q=%d", clk, t, q);
        #1

        clk = (01);
        t = 1;
        #1
        if(q !== 0) $display("#1 Error when clk=%d, t=%d... q=%d", clk, t, q);
        #1

        clk = (01);
        t = 0;
        #1
        if(q !== 0) $display("#2 Error when clk=%d, t=%d... q=%d", clk, t, q);
        #1

        clk = (01);
        t = 1;
        #1
        if(q !== 1) $display("#3 Error when clk=%d, t=%d... q=%d", clk, t, q);
        #1

        clk = (01);
        t = 0;
        #1
        if(q !== 1) $display("#4 Error when clk=%d, t=%d... q=%d", clk, t, q);
        #1

        clk = (01);
        t = 1;
        #1
        if(q !== 0) $display("#5 Error when clk=%d, t=%d... q=%d", clk, t, q);
        #1

        $display("Test udp jkflop successful!");
        $finish;
    end
endmodule