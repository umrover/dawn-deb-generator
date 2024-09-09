#!/bin/bash

set -xe

pushd dawn
git apply ../build_shared.patch || true
popd

CC=clang-18 CXX=clang++-18 cmake -B build -G Ninja -D CMAKE_BUILD_TYPE=Release
cmake --build build --target webgpu_dawn -j 16

pushd build
cpack
popd
