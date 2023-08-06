# lib/CMakeLists.txt

target_sources(lib
    PUBLIC
      lib.h
    PRIVATE
      lib.cpp
)

target_include_directories(lib INTERFACE "${CMAKE_CURRENT_SOURCE_DIR}")