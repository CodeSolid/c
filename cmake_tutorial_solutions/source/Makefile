.PHONY: clean build setup

dirs = Step1 Step2 Step3 Step4 Step5 Step6 Step6 Step7 Step8 Step9 \
	Step10 Step11 Step12

finished = Step1 Step2 Step3
CMAKE_FLAGS = -DCMAKE_BUILD_TYPE=Debug
BUILD_CMD = $(cd $(dir)_build && cmake $(CMAKE_FLAGS) ../$(dir) && cmake --build .)


#	$(foreach dir,$(finished), ${"cd ${dir}_build && cmake ${CMAKE_FLAGS}../${dir} && cmake --build ."})

build: setup 
	cd Step1_build && cmake  ../Step1 \
		&& cmake --build .
	cd Step2_build && cmake -DCMAKE_BUILD_TYPE=Debug ../Step2 \
		&& cmake --build .
	cd Step3_build && cmake -DCMAKE_BUILD_TYPE=Debug ../Step3 \
		&& cmake --build .
	cd Step4_build && cmake -DCMAKE_BUILD_TYPE=Debug ../Step4 \
		&& cmake --build .
	cd Step5_build && cmake ../Step5 \
		&& ctest -vv \
		&& cmake --build .
setup:
	$(foreach dir,$(dirs), @mkdir -p "${dir}_build" )

clean:
	$(foreach dir,$(dirs), @rm -rf "${dir}_build")
	@rm -rf Step5/Testing
	