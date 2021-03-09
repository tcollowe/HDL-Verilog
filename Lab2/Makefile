OPTS=-g2001
TESTS=test_disp
TESTS+=test_twos_complement test_twos_complement_inv

all: $(TESTS)

clean:
	rm -f $(TESTS) dump.vcd a.out

test_disp: test_disp.v disp.v
	iverilog $(OPTS) -o $@ -s $@ $^

test_twos_complement: test_twos_complement.v twos_complement.v
	iverilog $(OPTS) -o $@ -s $@ $^

test_twos_complement_inv: test_twos_complement_inv.v twos_complement_inv.v
	iverilog $(OPTS) -o $@ -s $@ $^

test_mtable: test_mtable.v mtable.v
	iverilog $(OPTS) -o $@ -s $@ $^