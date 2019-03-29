#!/bin/bash

CMAKE_BIN=cmake

rm -rf build-aarch64-cross

$CMAKE_BIN \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DCMAKE_INSTALL_PREFIX=$HOME/local/opensubdiv-aarch64 \
  -DCMAKE_C_COMPILER=aarch64-linux-gnu-gcc-5 \
  -DCMAKE_CXX_COMPILER=aarch64-linux-gnu-g++-5 \
  -DNO_TUTORIALS=On \
  -DNO_EXAMPLES=On \
  -DNO_REGRESSION=On \
  -DNO_DOC=On \
  -DNO_OMP=On \
  -DNO_TBB=On \
  -DNO_CUDA=On \
  -DNO_OPENCL=On \
  -DNO_OPENGL=On \
  -DNO_TESTS=On \
  -DNO_GLTESTS=On \
  -DNO_GLFW=On \
  -DNO_PTEX=On \
  -Bbuild-aarch64-cross -H.
