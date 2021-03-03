module inf();
    reg clk = 0;
    initial begin
        clk = 0;
        forever begin
            #5;
            clk = ~clk;
        end
    end
endmodule
