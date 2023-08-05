# source_root/CMakeLists.txt
cmake_policy(SET CMP0048 NEW)
cmake_minimum_required(VERSION 3.24)

project(Starter VERSION 0.01)

# Test first
add_executable(tests "")

add_subdirectory(test)