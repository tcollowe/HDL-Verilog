module bcd_convert16(bcd_in, unsigned_out);
   input [19:0] bcd_in;
   output [15:0] unsigned_out;
   
   wire[19:0] term4, term3, term2, term1, term0;
   
   wire[3:0] bcd0 = bcd_in [3:0];
   wire[3:0] bcd1 = bcd_in [7:4];
   wire[3:0] bcd2 = bcd_in [11:8];
   wire[3:0] bcd3 = bcd_in [15:12];
   wire[3:0] bcd4 = bcd_in [19:16];
   
   assign term4 = (bcd4 == 4'd0) ? 0 :
                  (bcd4 == 4'd1) ? 10000 :
                  (bcd4 == 4'd2) ? 20000 :
                  (bcd4 == 4'd3) ? 30000 :
                  (bcd4 == 4'd4) ? 40000 :
                  (bcd4 == 4'd5) ? 50000 :
                  (bcd4 == 4'd6) ? 60000 :
                  (bcd4 == 4'd7) ? 70000 :
                  (bcd4 == 4'd8) ? 80000 :
                  90000;
    
   assign term3 = (bcd3 == 4'd0) ? 0 :
                  (bcd3 == 4'd1) ? 1000 :
                  (bcd3 == 4'd2) ? 2000 :
                  (bcd3 == 4'd3) ? 3000 :
                  (bcd3 == 4'd4) ? 4000 :
                  (bcd3 == 4'd5) ? 5000 :
                  (bcd3 == 4'd6) ? 6000 :
                  (bcd3 == 4'd7) ? 7000 :
                  (bcd3 == 4'd8) ? 8000 :
                  9000;
    
   assign term2 = (bcd2 == 4'd0) ? 0 :
                  (bcd2 == 4'd1) ? 100 :
                  (bcd2 == 4'd2) ? 200 :
                  (bcd2 == 4'd3) ? 300 :
                  (bcd2 == 4'd4) ? 400 :
                  (bcd2 == 4'd5) ? 500 :
                  (bcd2 == 4'd6) ? 600 :
                  (bcd2 == 4'd7) ? 700 :
                  (bcd2 == 4'd8) ? 800 :
                  900;
    
   assign term1 = (bcd1 == 4'd0) ? 0 :
                  (bcd1 == 4'd1) ? 10 :
                  (bcd1 == 4'd2) ? 20 :
                  (bcd1 == 4'd3) ? 30 :
                  (bcd1 == 4'd4) ? 40 :
                  (bcd1 == 4'd5) ? 50 :
                  (bcd1 == 4'd6) ? 60 :
                  (bcd1 == 4'd7) ? 70 :
                  (bcd1 == 4'd8) ? 80 :
                  90;
   
   assign term0 = (bcd0 == 4'd0) ? 0 :
                  (bcd0 == 4'd1) ? 1 :
                  (bcd0 == 4'd2) ? 2 :
                  (bcd0 == 4'd3) ? 3 :
                  (bcd0 == 4'd4) ? 4 :
                  (bcd0 == 4'd5) ? 5 :
                  (bcd0 == 4'd6) ? 6 :
                  (bcd0 == 4'd7) ? 7 :
                  (bcd0 == 4'd8) ? 8 :
                  9;
    
   assign unsigned_out = term4 + term3 + term2 + term1 + term0;
endmodule
    
module bcd_convert16_inv(unsigned_in, bcd_out);
   input [15:0] unsigned_in;
   output reg [19:0] bcd_out;
   reg [15:0] temp_reg;
   reg[3:0] bcd0, bcd1, bcd2, bcd3, bcd4;
   

   always @(unsigned_in)
      if (unsigned_in > 16'd65535) begin
         $display("ERROR - cannot convert");
      end 
      else begin
         temp_reg = unsigned_in;
         // BIT 0
         if (temp_reg >= 60000) begin
            bcd0 = 4'h6;
            temp_reg = temp_reg - 60000;
         end
         else if(temp_reg >= 50000) begin
            bcd0 = 4'h5;
            temp_reg = temp_reg - 50000;
         end
         else if(temp_reg >= 40000) begin
            bcd0 = 4'h4;
            temp_reg = temp_reg - 40000;
         end
         else if(temp_reg >= 30000) begin
            bcd0 = 4'h3;
            temp_reg = temp_reg - 30000;
         end
         else if(temp_reg >= 20000) begin
            bcd0 = 4'h2;
            temp_reg = temp_reg - 20000;
         end
         else if(temp_reg >= 10000) begin
            bcd0 = 4'h1;
            temp_reg = temp_reg - 10000;
         end
         else begin
            bcd0 = 4'h0;
         end

         // BIT 1
         if (temp_reg >= 9000) begin
            bcd1 = 4'h9;
            temp_reg = temp_reg - 9000;
         end
         else if(temp_reg >= 8000) begin
            bcd1 = 4'h8;
            temp_reg = temp_reg - 8000;
         end
         else if(temp_reg >= 7000) begin
            bcd1 = 4'h7;
            temp_reg = temp_reg - 7000;
         end
         else if(temp_reg >= 6000) begin
            bcd1 = 4'h6;
            temp_reg = temp_reg - 6000;
         end
         else if(temp_reg >= 5000) begin
            bcd1 = 4'h5;
            temp_reg = temp_reg - 5000;
         end
         else if(temp_reg >= 4000) begin
            bcd1 = 4'h4;
            temp_reg = temp_reg - 4000;
         end
         else if(temp_reg >= 3000) begin
            bcd1 = 4'h3;
            temp_reg = temp_reg - 3000;
         end
         else if(temp_reg >= 2000) begin
            bcd1 = 4'h2;
            temp_reg = temp_reg - 2000;
         end
         else if(temp_reg >= 1000) begin
            bcd1 = 4'h1;
            temp_reg = temp_reg - 1000;
         end
         else begin
            bcd1 = 4'h0;
         end

         // BIT 2
         if (temp_reg >= 900) begin
            bcd2 = 4'h9;
            temp_reg = temp_reg - 900;
         end
         else if (temp_reg >= 800) begin
            bcd2 = 4'h8;
            temp_reg = temp_reg - 800;
         end
         else if (temp_reg >= 700) begin
            bcd2 = 4'h7;
            temp_reg = temp_reg - 700;
         end
         else if (temp_reg >= 600) begin
            bcd2 = 4'h6;
            temp_reg = temp_reg - 600;
         end
         else if (temp_reg >= 500) begin
            bcd2 = 4'h5;
            temp_reg = temp_reg - 500;
         end
         else if (temp_reg >= 400) begin
            bcd2 = 4'h4;
            temp_reg = temp_reg - 400;
         end
         else if (temp_reg >= 300) begin
            bcd2 = 4'h3;
            temp_reg = temp_reg - 300;
         end
         else if (temp_reg >= 200) begin
            bcd2 = 4'h2;
            temp_reg = temp_reg - 200;
         end
         else if (temp_reg >= 100) begin
            bcd2 = 4'h1;
            temp_reg = temp_reg - 100;
         end
         else begin
            bcd2 = 4'h0;
         end

         // BIT 3
         if (temp_reg >= 90) begin
            bcd3 = 4'h9;
            temp_reg = temp_reg - 90;
         end
         else if (temp_reg >= 80) begin
            bcd3 = 4'h8;
            temp_reg = temp_reg - 80;
         end
         else if (temp_reg >= 70) begin
            bcd3 = 4'h7;
            temp_reg = temp_reg - 70;
         end
         else if (temp_reg >= 60) begin
            bcd3 = 4'h6;
            temp_reg = temp_reg - 60;
         end
         else if (temp_reg >= 50) begin
            bcd3 = 4'h5;
            temp_reg = temp_reg - 50;
         end
         else if (temp_reg >= 40) begin
            bcd3 = 4'h4;
            temp_reg = temp_reg - 40;
         end
         else if (temp_reg >= 30) begin
            bcd3 = 4'h3;
            temp_reg = temp_reg - 30;
         end
         else if (temp_reg >= 20) begin
            bcd3 = 4'h2;
            temp_reg = temp_reg - 20;
         end
         else if (temp_reg >= 10) begin
            bcd3 = 4'h1;
            temp_reg = temp_reg - 10;
         end         
         else begin
            bcd3 = 4'h0;
         end

         // BIT 4
         if (temp_reg >= 9) begin
            bcd4 = 4'h9;
            temp_reg = temp_reg - 9;
         end
         else if (temp_reg >= 8) begin
            bcd4 = 4'h8;
            temp_reg = temp_reg - 8;
         end
         else if (temp_reg >= 7) begin
            bcd4 = 4'h7;
            temp_reg = temp_reg - 7;
         end
         else if (temp_reg >= 6) begin
            bcd4 = 4'h6;
            temp_reg = temp_reg - 6;
         end
         else if (temp_reg >= 5) begin
            bcd4 = 4'h5;
            temp_reg = temp_reg - 5;
         end
         else if (temp_reg >= 4) begin
            bcd4 = 4'h4;
            temp_reg = temp_reg - 4;
         end
         else if (temp_reg >= 3) begin
            bcd4 = 4'h3;
            temp_reg = temp_reg - 3;
         end
         else if (temp_reg >= 2) begin
            bcd4 = 4'h2;
            temp_reg = temp_reg - 2;
         end
         else if (temp_reg >= 1) begin
            bcd4 = 4'h1;
            temp_reg = temp_reg - 1;
         end
         else begin
            bcd4 = 4'h0;
         end
      bcd_out = {bcd0, bcd1, bcd2, bcd3, bcd4};
      // $display("%b", bcd_out);
      end
endmodule