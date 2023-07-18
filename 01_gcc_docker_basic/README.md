# Getting started with the gcc Docker image

To run the gcc docker image, we can use the following command:

```docker run -it  -v$(pwd):/source -w /source gcc```

This maps the current directory (on the host) to the /source directory (in the container), and sets it as the working directory.

[JCL To do show all steps in VS code terminal].

We can then create and build a C file straightforwardly. For example, given the file, [/c_hi_docker.c](./c_hi_docker.c), we can build and run it in our running container with the following commands:

```
gcc c_hi_docker.c -o c_hi_docker
./c_hi_docker
```

Doing the same thing in C++ is almost as easy, but we need to tell the linker to add the Standard C++ Library using ```-lstdc++```.  Thus:

```
gcc  cpp_hi_docker.cpp -lstdc++ -o cpp_hi_docker
./cpp_hi_docker
```

