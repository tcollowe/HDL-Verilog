module srlatch(q, e, s, r);
    input e, s, r;
    output q;
    
    always @* begin
    if (e == 0) begin 
        assign q = q;
    end
    else begin
        if (s == 0 && r == 0) begin
            assign q = q;
        end
        else if (s == 0 && r == 1) begin
            assign q = 0;
        end
        else if (s == 1 && r == 0) begin
            assign q = 1;
        end
        else if (s == 1 && r == 1) begin
            assign q = x;
        end
    end
    end



endmodule
