`default_nettype none
`timescale 1ns/1ns

module test_mtable();
    reg a, b, c;
    wire z;

    mtable t1(z, a, b, c);

    initial begin
        a = 0; b = 0; c = 0;
        #1
        if(z != 0) $display("Err at: a = %b,  b = %b, c = %b", a, b, c);

        a = 0; b = 0; c = 1;
        #1
        if(z != 1) $display("Err at: a = %b,  b = %b, c = %b", a, b, c);
    
        a = 0; b = 1; c = 0;
        #1
        if(z != 0) $display("Err at: a = %b,  b = %b, c = %b", a, b, c);
    
        a = 0; b = 1; c = 1;
        #1
        if(z != 1) $display("Err at: a = %b,  b = %b, c = %b", a, b, c);
    
        a = 1; b = 0; c = 0;
        #1
        if(z != 1) $display("Err at: a = %b,  b = %b, c = %b", a, b, c);
    
        a = 1; b = 0; c = 1;
        #1
        if(z != 0) $display("Err at: a = %b,  b = %b, c = %b", a, b, c);
    
        a = 1; b = 1; c = 0;
        #1
        if(z != 1) $display("Err at: a = %b,  b = %b, c = %b", a, b, c);
    
        a = 1; b = 1; c = 1;
        #1
        if(z != 0) $display("Err at: a = %b,  b = %b, c = %b", a, b, c);
    
        $display("Test mtable finished");
        $finish;
    end
endmodule
