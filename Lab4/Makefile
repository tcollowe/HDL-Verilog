OPTS=-g2001
TESTS=test_adder
TESTS+=test_mult4 test_mult

all: $(TESTS)

clean:
	rm -f $(TESTS) dump.vcd a.out

test_adder: test_adder.v adder.v
	iverilog $(OPTS) -o $@ -s $@ $^

test_mult4: test_mult4.v mult4.v
	iverilog $(OPTS) -o $@ -s $@ $^

test_mult: test_mult.v mult.v
	iverilog $(OPTS) -o $@ -s $@ $^

test_bcdadd: test_bcdadd.v bcdadd.v
	iverilog $(OPTS) -o $@ -s $@ $^


