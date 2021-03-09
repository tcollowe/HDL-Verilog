`default_nettype none
`timescale 1ns/1ns

module test_func();
    reg [3:0] sel;
    reg a, b;
    wire z;

    func fun(sel, a, b, z);

    initial begin
////////////--0--///////////
        sel = 0; a = 0; b = 0;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 0; a = 0; b = 1;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 0; a = 1; b = 0;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 0; a = 1; b = 1;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);


////////////--1--///////////
        sel = 1; a = 0; b = 0;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 1; a = 0; b = 1;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 1; a = 1; b = 0;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 1; a = 1; b = 1;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

////////////--2--///////////
        sel = 2; a = 0; b = 0;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 2; a = 0; b = 1;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 2; a = 1; b = 0;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 2; a = 1; b = 1;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);


////////////--3--///////////
        sel = 3; a = 0; b = 0;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 3; a = 0; b = 1;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 3; a = 1; b = 0;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 3; a = 1; b = 1;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);


////////////--4--///////////
        sel = 4; a = 0; b = 0;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 4; a = 0; b = 1;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 4; a = 1; b = 0;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 4; a = 1; b = 1;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);


////////////--5--///////////
        sel = 5; a = 0; b = 0;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 5; a = 0; b = 1;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 5; a = 1; b = 0;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 5; a = 1; b = 1;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);


////////////--6--///////////
        sel = 6; a = 0; b = 0;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 6; a = 0; b = 1;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 6; a = 1; b = 0;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 6; a = 1; b = 1;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);


////////////--7--///////////
        sel = 7; a = 0; b = 0;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 7; a = 0; b = 1;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 7; a = 1; b = 0;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 7; a = 1; b = 1;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

////////////--8--///////////
        sel = 8; a = 0; b = 0;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 8; a = 0; b = 1;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 8; a = 1; b = 0;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 8; a = 1; b = 1;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

////////////--9--///////////
        sel = 9; a = 0; b = 0;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 9; a = 0; b = 1;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 9; a = 1; b = 0;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 9; a = 1; b = 1;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

////////////--10--///////////
        sel = 10; a = 0; b = 0;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 10; a = 0; b = 1;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 10; a = 1; b = 0;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 10; a = 1; b = 1;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

////////////--11--///////////
        sel = 11; a = 0; b = 0;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 11; a = 0; b = 1;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 11; a = 1; b = 0;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 11; a = 1; b = 1;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

////////////--12--///////////
        sel = 12; a = 0; b = 0;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 12; a = 0; b = 1;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 12; a = 1; b = 0;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 12; a = 1; b = 1;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

////////////--13--///////////
        sel = 13; a = 0; b = 0;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 13; a = 0; b = 1;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 13; a = 1; b = 0;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 13; a = 1; b = 1;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

////////////--14--///////////
        sel = 14; a = 0; b = 0;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 14; a = 0; b = 1;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 14; a = 1; b = 0;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 14; a = 1; b = 1;
        #1
        if(z != 0) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

////////////--15--///////////
        sel = 15; a = 0; b = 0;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 15; a = 0; b = 1;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 15; a = 1; b = 0;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        sel = 15; a = 1; b = 1;
        #1
        if(z != 1) $display("Err at: sel = %d,  b = %b, c = %b", sel, a, b);

        $display("Test func finished");
        $finish;
    end
endmodule
