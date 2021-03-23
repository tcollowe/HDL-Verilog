`default_nettype none
`timescale 1ns/1ns

module test_udp_dflop();

    reg clk;
    reg d;
    wire q;
    
    dflop uut(q, clk, d);
    
    initial begin
        clk = 0;
        d = 0;
        #1
        if(q != 0) $display("INIT Error when clk=%d, d=%d... q=%d",clk, d, q);
        #1

        clk = (01);
        d = 0;
        // #1
        if(q != 0) $display("#1 Error when clk=%d, d=%d... q=%d",clk, d, q);
        #1

        clk = (01);
        d = 1;
        // #1
        if(q !== 1) $display("#2 Error when clk=%d, d=%d... q=%d",clk, d, q);
        #1

        clk = (01);
        d = 0;
        #1
        if(q !== 0) $display("#3 Error when clk=%d, d=%d... q=%d",clk, d, q);
        #1

        clk = (01);
        d = 1;
        #1
        if(q !== 1) $display("#4 Error when clk=%d, d=%d... q=%d",clk, d, q);
        #1

        clk = (01);
        d = 1;
        #1
        if(q !== 1) $display("#5 Error when clk=%d, d=%d... q=%d",clk, d, q);
        #1
		
        clk = (01);
        d = 0;
        #1
        if(q !== 1) $display("#6 Error when clk=%d, d=%d... q=%d",clk, d, q);
        #1

        clk = (01);
        d = 1;
        #1
        if(q !== 1) $display("#7 Error when clk=%d, d=%d... q=%d",clk, d, q);
        #1
        
        $display("Test udp dflop successful!");
        $finish;
    end
endmodule