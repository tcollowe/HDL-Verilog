OPTS=-g2001
TESTS=test_priority4
TESTS+=test_mux4 test_comp4 test_buff test_sevenseg

all: $(TESTS)

clean:
	rm -f $(TESTS) dump.vcd a.out

test_priority4: test_priority4.v priority4.v
	iverilog $(OPTS) -o $@ -s $@ $^

test_mux4: test_mux4.v mux4.v
	iverilog $(OPTS) -o $@ -s $@ $^

test_comp4: test_comp4.v comp4.v
	iverilog $(OPTS) -o $@ -s $@ $^

test_buff: test_buff.v buff.v
	iverilog $(OPTS) -o $@ -s $@ $^

test_sevenseg: test_sevenseg.v sevenseg.v
	iverilog $(OPTS) -o $@ -s $@ $^
