.PHONY: clean build

build:
	cd Step1_build && cmake -DCMAKE_BUILD_TYPE=Debug ../Step1 \
		&& cmake --build .
	cd Step2_build && cmake -DCMAKE_BUILD_TYPE=Debug ../Step2 \
		&& cmake --build .
	cd Step3_build && cmake -DCMAKE_BUILD_TYPE=Debug ../Step3 \
		&& cmake --build .
clean:
	rm -rf Step1_build/*
	rm -rf Step2_build/*
	rm -rf Step3_build/*
	