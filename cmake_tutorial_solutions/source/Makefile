.PHONY: clean build setup Step1 Step2 Step3 Step4 Step5 Step6 \
	Step7 Step8 Step9 Step10 Step11 Step12

dirs = Step1 Step2 Step3 Step4 Step5 Step6 Step6 Step7 Step8 Step9 \
	Step10 Step11 Step12

finished = Step1 Step2 Step3
CMAKE_FLAGS = -DCMAKE_BUILD_TYPE=Debug
BUILD_CMD = $(cd $(dir)_build && cmake $(CMAKE_FLAGS) ../$(dir) && cmake --build .)


build:  Step1 Step2 Step3 Step4 Step5 Step6 Step7 Step8 Step9 Step10 Step11 

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
	mkdir -p Step12_build && \
	cd Step12_build && \
	cmake -DCMAKE_BUILD_TYPE=Release ../Step12 && \
	cmake --build . 



# No longer used at this point
setup:
	$(foreach dir,$(dirs), @mkdir -p "${dir}_build" )


clean:
	$(foreach dir,$(dirs), @rm -rf "${dir}_build")
	@rm -rf Step5/Testing
	