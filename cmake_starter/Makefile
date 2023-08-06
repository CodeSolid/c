# Main project builder

.PHONY: build test clean

build:
	mkdir -p build/Release
	mkdir -p build/Debug
	cd build/Debug && cmake -DCMAKE_BUILD_TYPE=Debug ../.. && cmake --build .
	cd build/Release && cmake -DCMAKE_BUILD_TYPE=Release ../.. && cmake --build .

# Note this also cleans the third-party libraries we've built.  This could be more fine-grained to improve build times.
clean:
	rm -rf build

# Run the test
test:
	./build/Debug/tests 

# Show tests that pass too
test-verbose: 
	./build/Debug/tests -s
