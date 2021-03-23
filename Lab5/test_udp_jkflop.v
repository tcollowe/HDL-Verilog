`default_nettype none
`timescale 1ns/1ns

module test_udp_jkflop();

    reg clk;
    reg j;
    reg k;
    wire q;
    
    jkflop uut(q, clk, j, k);
    
    initial begin
        clk = 0;
        j = 0;
        k = 0;
        #1
        if(q !== 0) $display("INIT Error when clk=%d, j=%d, k=%d... q=%d",clk, j, k, q);
        #1

        clk = 0;
        j = 1;
        k = 0;
        #1
        if(q !== 0) $display("INIT Error when clk=%d, j=%d, k=%d... q=%d",clk, j, k, q);
        #1

        clk = 0;
        j = 0;
        k = 1;
        #1
        if(q !== 0) $display("INIT Error when clk=%d, j=%d, k=%d... q=%d",clk, j, k, q);
        #1

        clk = 0;
        j = 1;
        k = 1;
        #1
        if(q !== 0) $display("INIT Error when clk=%d, j=%d, k=%d... q=%d",clk, j, k, q);
        #1

        clk = (01);
        j = 0;
        k = 0;
        #1
        if(q !== 0) $display("#1 Error when clk=%d, j=%d, k=%d... q=%d",clk, j, k, q);
        #1

        clk = (01);
        j = 1;
        k = 0;
        #1
        if(q !== 1) $display("#2 Error when clk=%d, j=%d, k=%d... q=%d",clk, j, k, q);
        #1

        clk = (01);
        j = 0;
        k = 1;
        #1
        if(q !== 0) $display("#3 Error when clk=%d, j=%d, k=%d... q=%d",clk, j, k, q);
        #1

        clk = (01);
        j = 1;
        k = 1;
        #1
        if(q !== 1) $display("#4 Error when clk=%d, j=%d, k=%d... q=%d",clk, j, k, q);
        #1

        clk = (01);
        j = 1;
        k = 1;
        #1
        if(q !== 0) $display("#5 Error when clk=%d, j=%d, k=%d... q=%d",clk, j, k, q);
        #1

        $display("Test udp jkflop successful!");
        $finish;
    end
endmodule