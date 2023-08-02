.PHONY: clean build setup Step1 Step2 Step3 Step4 Step5 Step6 \
	Step7 Step8 Step9 Step10 Step11 Step12


finished = Step1 Step2 Step3
CMAKE_FLAGS = -DCMAKE_BUILD_TYPE=Debug
BUILD_CMD = $(cd $(dir)_build && cmake $(CMAKE_FLAGS) ../$(dir) && cmake --build .)


build:  Step1 Step2 Step3 Step4 Step5 Step6 Step7 Step8 Step9 Step10 Step11 Step12

Step1 : 
	mkdir -p Step1_build
	cd Step1_build && \
	cmake -DCMAKE_BUILD_TYPE=Debug ../Step1 && \
	make

Step2:
	mkdir -p Step2_build
	cd Step2_build && \
	cmake -DCMAKE_BUILD_TYPE=Debug ../Step2 && \
	make

Step3:
	mkdir -p Step3_build && \
	cd Step3_build && \
	cmake -DCMAKE_BUILD_TYPE=Debug ../Step3 && \
	cmake --build .

Step4:
	mkdir -p Step4_build && \
	cd Step4_build && \
	cmake -DCMAKE_BUILD_TYPE=Debug ../Step4 && \
	cmake --build .

Step5:
	mkdir -p Step5_build && \
	cd Step5_build && \
	cmake -DCMAKE_BUILD_TYPE=Debug ../Step5 && \
	cmake --build . && \
	ctest -vv
	

Step6: 
	@mkdir -p Step6_build
	@cd Step6_build && cmake ../Step6 \
		&& cmake --build . \
		&& ctest [-VV] -C Debug -D Experimental \
		&& echo Go to https://my.cdash.org/index.php?project=CMakeTutorial for results

Step7:
	mkdir -p Step7_build && \
	cd Step7_build && \
	cmake -DCMAKE_BUILD_TYPE=Debug ../Step7 && \
	cmake --build . && \
	ctest -vv
	
Step8:
	mkdir -p Step8_build && \
	cd Step8_build && \
	cmake -DCMAKE_BUILD_TYPE=Debug ../Step8 && \
	cmake --build .

Step9:
	mkdir -p Step9_build && \
	cd Step9_build && \
	cmake -DCMAKE_BUILD_TYPE=Release ../Step9 && \
	cmake --build . && \
	cpack

Step10:
	mkdir -p Step10_build && \
	cd Step10_build && \
	cmake -DCMAKE_BUILD_TYPE=Release ../Step10 && \
	cmake --build . 

Step11:
	mkdir -p Step11_build && \
	cd Step11_build && \
	cmake -DCMAKE_BUILD_TYPE=Release ../Step11 && \
	cmake --build . 

Step12:
	mkdir -p Step12/debug && mkdir -p Step12/release
	cd Step12/release && cmake -DCMAKE_BUILD_TYPE=Release .. && cmake --build .
	cd Step12/debug && cmake -DCMAKE_BUILD_TYPE=Debug .. && cmake --build .
	cd Step12 && cpack --config MultiCPackConfig.cmake

delete_dirs = Step1_build Step2_build Step3_build Step4_build Step5/Testing Step5_build Step6_build Step6_build Step7_build \
	Step8_build Step9_build Step10_build Step11_build Step12/debug Step12/release Step12/_CPack_Packages

clean:
	
	$(foreach dir,$(delete_dirs), @rm -rf "$(dir)")
	@rm -f Step12/Tutorial-1.0-Linux.*