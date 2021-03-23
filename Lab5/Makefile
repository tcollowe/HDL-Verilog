OPTS=-g2001
TESTS=test_udp_srlatch
TESTS+=test_udp_dlatch test_udp_dflop test_udp_jkflop test_udp_tflop

all: $(TESTS)

clean:
	rm -f $(TESTS) *.vcd a.out

test_udp_srlatch: test_udp_srlatch.v udp_srlatch.v
	iverilog $(OPTS) -o $@ -s $@ $^

test_udp_dlatch: test_udp_dlatch.v udp_dlatch.v
	iverilog $(OPTS) -o $@ -s $@ $^

test_udp_dflop: test_udp_dflop.v udp_dflop.v
	iverilog $(OPTS) -o $@ -s $@ $^

test_udp_jkflop: test_udp_jkflop.v udp_jkflop.v
	iverilog $(OPTS) -o $@ -s $@ $^

test_udp_tflop: test_udp_tflop.v udp_tflop.v
	iverilog $(OPTS) -o $@ -s $@ $^
