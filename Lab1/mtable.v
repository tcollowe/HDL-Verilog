primitive mtable(z, a, b, c);

input a, b, c;
output z;

table
    0 ? 0 : 0;
    0 ? 1 : 1;
    1 ? 0 : 1;
    1 ? 1 : 0;
endtable

endprimitive
