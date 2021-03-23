`default_nettype none
`timescale 1ns/1ns

module test_udp_srlatch();

    reg s;
    reg r;
    wire q;
    
    srlatch uut(q, s, r);
    
    initial begin
        s = 0;
        r = 0;
        #1
        if(q != 0) $display("INIT Error when s=0, r=0... q=%d", q);
        #1

		s = 0;
        r = 0;
        #1
        if(q != 0) $display("#1Error when s=0, r=0... q=%d", q);
        #1
        
        s = 1;
        r = 0;
        #1
        if(q !== 1) $display("#2Error when s=1, r=0... q=%d", q);
        #1
    
        s = 0;
        r = 0;
        #1
        if(q !== 1) $display("#3Error when s=0, r=0... q=%d", q);
        #1
        
        s = 0;
        r = 1;
        #1
        if(q !== 0) $display("#4Error when s=0, r=1... q=%d", q);
        #1
        
        s = 1;
        r = 0;
        #1
        if(q !== 1) $display("#5Error when s=1, r=0... q=%d", q);
        #1
        
        s = 1;
        r = 1;
        #1
        if(q !== 1) $display("#6Error when s=0, r=0... q=%d", q);
        #1
        
        $display("Test udp srlatch successful!");
        $finish;
    end
endmodule