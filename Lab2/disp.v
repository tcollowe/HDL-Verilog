module disp(inp);
    input [16:0] inp;

    initial 
        $monitor("decimal %-8d hex %06h octal %o binary %b", inp, inp, inp, inp);
    
endmodule