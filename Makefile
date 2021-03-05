OPTS=-g2001
TESTS=test_logic
TESTS+=test_func1 test_mtable1

all: $(TESTS)

clean:
	rm -f $(TESTS) dump.vcd a.out
	
test_logic: test_logic.v structure.v behave.v
	iverilog $(OPTS) -o $@ -s $@ $^
	
test_func1: test_func1.v func.v
	iverilog $(OPTS) -o $@ -s $@ $^
	
test_mtable1: test_mtable1.v mtable.v
	iverilog $(OPTS) -o $@ -s $@ $^