# source_root/CMakeLists.txt

cmake_minimum_required(VERSION 3.24)
project(Starter VERSION 0.01)


# Add libraries and executables first, 
# before add_subdirectory calls
add_library(lib)
add_executable(tests "")

add_subdirectory(lib)
add_subdirectory(test)

