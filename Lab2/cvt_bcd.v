module bcd_convert16(bcd_in, unsigned_out);
       input [15:0] bcd_in;
       output [15:0] unsigned_out;
    
       wire bcd4, bcd3, bcd2, bcd1, bcd0;
       wire term4, term3, term2, term1, term0;
    
       assign bcd0 = bcd_in [3:0];
       assign bcd1 = bcd_in [5:4];
       assign bcd2 = bcd_in [11:8];
       assign bcd3 = bcd_in [15:12];
       assign bcd4 = bcd_in [19:16];
    
    assign term4 = (bcd4 == 4'd0) ? 0 :
    	    (bcd4 == 4'd1) ? 10000 :
       	    (bcd4 == 4'd2) ? 20000 :
                (bcd4 == 4'd3) ? 30000 :
                (bcd4 == 4'd4) ? 40000 :
                (bcd4 == 4'd5) ? 50000 :
                (bcd4 == 4'd6) ? 60000 :
                (bcd4 == 4'd7) ? 70000 :
                (bcd4 == 4'd8) ? 80000 :
                (bcd4 == 4'd9);
               //   ? 90000 :
    
    assign term3 = (bcd3 == 4'd0) ? 0 :
    	    (bcd3 == 4'd1) ? 1000 :
       	    (bcd3 == 4'd2) ? 2000 :
                (bcd3 == 4'd3) ? 3000 :
                (bcd3 == 4'd4) ? 4000 :
                (bcd3 == 4'd5) ? 5000 :
                (bcd3 == 4'd6) ? 6000 :
                (bcd3 == 4'd7) ? 7000 :
                (bcd3 == 4'd8) ? 8000 :
                (bcd3 == 4'd9); 
               //  ? 9000 :
    
    assign term2 = (bcd2 == 4'd0) ? 0 :
    	    (bcd2 == 4'd1) ? 100 :
       	    (bcd2 == 4'd2) ? 200 :
                (bcd2 == 4'd3) ? 300 :
                (bcd2 == 4'd4) ? 400 :
                (bcd2 == 4'd5) ? 500 :
                (bcd2 == 4'd6) ? 600 :
                (bcd2 == 4'd7) ? 700 :
                (bcd2 == 4'd8) ? 800 :
                (bcd2 == 4'd9);
               //   ? 900 :
    
    assign term1 = (bcd1 == 4'd0) ? 0 :
    	    (bcd1 == 4'd1) ? 10 :
       	    (bcd1 == 4'd2) ? 20 :
                (bcd1 == 4'd3) ? 30 :
                (bcd1 == 4'd4) ? 40 :
                (bcd1 == 4'd5) ? 50 :
                (bcd1 == 4'd6) ? 60 :
                (bcd1 == 4'd7) ? 70 :
                (bcd1 == 4'd8) ? 80 :
                (bcd1 == 4'd9); 
               //  ? 90 :
    
    assign term0 = (bcd0 == 4'd0) ? 0 :
    	    (bcd0 == 4'd1) ? 1 :
       	    (bcd0 == 4'd2) ? 2 :
                (bcd0 == 4'd3) ? 3 :
                (bcd0 == 4'd4) ? 4 :
                (bcd0 == 4'd5) ? 5 :
                (bcd0 == 4'd6) ? 6 :
                (bcd0 == 4'd7) ? 7 :
                (bcd0 == 4'd8) ? 8 :
                (bcd0 == 4'd9);
               //   ? 9 :
    
       assign unsigned_out = term4 + term3 + term2 + term1 + term0;
    endmodule
    
//     module bcd_convert16_inv(unsigned_in, bcd_out);
//        input [15:0] unsigned_in;
//        output [19:0] bcd_out;
    
//        reg deci;
    
//     // convert hex to decimal here
    
//        always @ (unsigned_in) begin
//        bcd_out[3:0]   = deci % 10;            // digit 0, ones place
//        bcd_out[7:4]   = (deci / 10) % 10;     // digit 1, tens place
//        bcd_out[11:8]  = (deci / 100) % 10;   // digit 2, hundreds place
//        bcd_out[15:12] = (deci / 1000) % 10; // digit 3, thousands place
//        end
// endmodule
