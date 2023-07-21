docker run --rm -it --name tutorial \
    --mount type=volume,src=gcc_make_tutorial_source,target=/source \
    codesolid/gcc_cmake_tutorial /bin/bash