# source_root/CMakeLists.txt

cmake_minimum_required(VERSION 3.24)
project(Starter VERSION 0.1)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add libraries and executables first, 
# before add_subdirectory calls
add_library(lib "")
add_executable(tests "")
add_executable(factorial "")

add_subdirectory(lib)
add_subdirectory(test)
add_subdirectory(app)

