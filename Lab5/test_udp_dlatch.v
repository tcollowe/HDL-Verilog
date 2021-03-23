`default_nettype none
`timescale 1ns/1ns

module test_udp_dlatch();

    reg clk;
    reg d;
    wire q;
    
    dlatch uut(q, clk, d);
    
    initial begin
        clk = 0;
        d = 0;
        #1
        if(q != 0) $display("INIT Error when clk=%d, d=%d... q=%d",clk, d, q);
        #1

        clk = 1;
        d = 0;
        #1
        if(q != 0) $display("#1 Error when clk=%d, d=%d... q=%d",clk, d, q);
        #1

        clk = 1;
        d = 1;
        #1
        if(q !== 1) $display("#2 Error when clk=%d, d=%d... q=%d",clk, d, q);
        #1

        clk = 1;
        d = 0;
        #1
        if(q !== 0) $display("#3 Error when clk=%d, d=%d... q=%d",clk, d, q);
        #1

        clk = 1;
        d = 1;
        #1
        if(q !== 1) $display("#4 Error when clk=%d, d=%d... q=%d",clk, d, q);
        #1

        clk = 0;
        d = 1;
        #1
        if(q !== 1) $display("#5 Error when clk=%d, d=%d... q=%d",clk, d, q);
        #1
		
        clk = 0;
        d = 0;
        #1
        if(q !== 1) $display("#6 Error when clk=%d, d=%d... q=%d",clk, d, q);
        #1

        clk = 1;
        d = 1;
        #1
        if(q !== 1) $display("#7 Error when clk=%d, d=%d... q=%d",clk, d, q);
        #1
        
        $display("Test udp dlatch successful!");
        $finish;
    end
endmodule