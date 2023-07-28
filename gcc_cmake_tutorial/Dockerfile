# Build/install CMake as before
FROM gcc:latest AS gcc_cmake
ENV CMAKE_VERSION=3.27.0
COPY ./install_cmake.sh .
RUN chmod u+x ./install_cmake.sh 
RUN ./install_cmake.sh ${CMAKE_VERSION}

# Copy the source to a more convenient directory
FROM gcc_cmake AS gcc_cmake_tutorial
WORKDIR /source
RUN cp -R /cmake-source/CMake-${CMAKE_VERSION}/Help/guide/tutorial/* /source

# Clean up source and install gdb so it's available.
RUN rm -rf /cmake-source
RUN apt-get update && apt-get install gdb -y
