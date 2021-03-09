OPTS=-g2001
TESTS=test_disp
# TESTS+=test_func test_mtable

all: $(TESTS)

clean:
	rm -f $(TESTS) dump.vcd a.out
	
test_disp: test_disp.v disp.v
	iverilog $(OPTS) -o $@ -s $@ $^
	
test_func: test_func.v func.v
	iverilog $(OPTS) -o $@ -s $@ $^
	
test_mtable: test_mtable.v mtable.v
	iverilog $(OPTS) -o $@ -s $@ $^