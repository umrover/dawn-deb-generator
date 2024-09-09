#!/bin/bash

set -xe

# We want a shared library webgpu_dawn.so as the output.
# However we want all dependencies to be compiled in statically.
# The combinatiion of setting BUILD_SHARED_LIBS to off in the cmake list and applying this patch ensures that.
pushd dawn
git apply ../build_shared.patch || true
popd

CC=clang-18 CXX=clang++-18 cmake -B build -G Ninja -D CMAKE_BUILD_TYPE=Release
cmake --build build --target webgpu_dawn -j 16

pushd build
cpack
popd
