# A Docker container with CMake and the tutorial installed


```
# Build the container

I have pushed this container tod DockerHub using
the tag "codesolid/gcc_cmake_tutorial", so you don't really need to build it.

Note, building CMake from source takes a few minutes, so please be patient.

```
docker build -t codesolid/gcc_cmake_tutorial . 


# Create a persistent volume (Do once)

```
mkdir -p ./source
docker volume create --driver local \
      --opt type=none \
      --opt device=$(pwd)/source \
      --opt o=bind \
      gcc_make_tutorial_source

```

# Run it
```
docker run --rm -it --name tutorial \
    --mount type=volume,src=gcc_make_tutorial_source,target=/source \
    codesolid/gcc_cmake_tutorial /bin/bash
```


