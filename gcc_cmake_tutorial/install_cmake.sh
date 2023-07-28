#!/bin/bash

# Installs CMake

if [ $# -eq 0 ]
then
    echo "No arguments supplied"
    exit 0
fi

CMAKE_VERSION="$1"

if ! command -v cmake &> /dev/null
then
    mkdir /cmake-source
    cd /cmake-source/
    wget https://github.com/Kitware/CMake/archive/refs/tags/v$CMAKE_VERSION.tar.gz
    tar xfvz v$CMAKE_VERSION.tar.gz
    cd CMake-$CMAKE_VERSION/
    ./bootstrap
    make 
    make install
fi
