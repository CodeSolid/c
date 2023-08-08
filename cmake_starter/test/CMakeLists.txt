# test/CMakeLists.txt

target_sources(tests
    PRIVATE
        test.cpp
)


include(FetchContent)
FetchContent_Declare(
  Catch2
  GIT_REPOSITORY git@github.com:catchorg/Catch2.git
  GIT_TAG        4acc51828f7f93f3b2058a63f54d112af4034503 # devel branch v. 3, as of 8/3/2023
)

FetchContent_MakeAvailable(Catch2)

target_link_libraries(tests PUBLIC lib)
target_link_libraries(tests PRIVATE Catch2::Catch2WithMain)
