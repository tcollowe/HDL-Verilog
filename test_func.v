`default_nettype none
`timescale 1ns/1ns

module test_mtable();
    reg [3:0] sel;
    reg a, b;
    wire z;

    func fun(sel, a, b, z);

    initial begin
////////////--1--///////////
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

////////////--2--///////////
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


////////////--3--///////////
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


////////////--4--///////////
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


////////////--5--///////////
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


////////////--6--///////////
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


////////////--7--///////////
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

////////////--8--///////////
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

////////////--9--///////////
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

////////////--10--///////////
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

////////////--11--///////////
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

////////////--12--///////////
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

////////////--13--///////////
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

////////////--14--///////////
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

////////////--15--///////////
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

        $display("Test func finished");
        $finish;
    end
endmodule
