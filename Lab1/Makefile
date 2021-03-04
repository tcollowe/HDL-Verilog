all: clean build

build: test_logic.v structure.v behave.v
	iverilog  -o test_logic *.v

clean:
	rm -f test_logic
