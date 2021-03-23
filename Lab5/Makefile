OPTS=-g2001
TESTS=test_udp_srlatch
# TESTS+=test_mux4 test_comp4 test_buff test_parity8 test_sevenseg

all: $(TESTS)

clean:
	rm -f $(TESTS) *.vcd a.out

test_udp_srlatch: test_udp_srlatch.v udp_srlatch.v
	iverilog $(OPTS) -o $@ -s $@ $^

