OPTS=-g2001
TESTS=test_udp_srlatch
 TESTS+=test_udp_dlatch 

all: $(TESTS)

clean:
	rm -f $(TESTS) *.vcd a.out

test_udp_srlatch: test_udp_srlatch.v udp_srlatch.v
	iverilog $(OPTS) -o $@ -s $@ $^

test_udp_dlatch: test_udp_dlatch.v udp_dlatch.v
	iverilog $(OPTS) -o $@ -s $@ $^
