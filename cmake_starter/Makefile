# Main project builder

.PHONY: build test clean

build:
	mkdir -p build/Release
	mkdir -p build/Debug
	cd build/Debug && cmake -DCMAKE_BUILD_TYPE=Debug ../.. && cmake --build .
	cd build/Release && cmake -DCMAKE_BUILD_TYPE=Release ../.. && cmake --build .

clean:
	rm -rf build

test: 
	./build/Debug/tests 

test-verbose: 
	./build/Debug/tests -s

