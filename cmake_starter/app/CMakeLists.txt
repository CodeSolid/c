# app/CMakeLists.txt


target_sources(factorial
    PRIVATE
        app.cpp
)

target_link_libraries(factorial PRIVATE lib)

