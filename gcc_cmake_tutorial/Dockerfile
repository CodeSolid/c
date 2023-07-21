FROM gcc:latest AS gcc_cmake
ENV CMAKE_VERSION=3.27.0
COPY ./install_cmake.sh .
RUN chmod u+x ./install_cmake.sh 
RUN ./install_cmake.sh ${CMAKE_VERSION}

FROM gcc_cmake AS gcc_cmake_tutorial
WORKDIR /source
RUN cp -R /cmake-source/CMake-${CMAKE_VERSION}/Help/guide/tutorial/* /source


