# A Docker container with CMake installed

Note, building CMake from source takes a few minutes, so please be patient.

In the example below, I use "codesolid/gcc_cmake" for the container name.

```
# Build the container
docker build -t codesolid/gcc_cmake . 

# Run it and test
docker run -it codesolid/gcc_cmake /bin/bash
cmake --version
```


