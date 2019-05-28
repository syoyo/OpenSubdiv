#!/bin/bash

CMAKE_BIN=cmake

rm -rf build

$CMAKE_BIN \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DCMAKE_INSTALL_PREFIX=$HOME/local/opensubdiv \
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
  -Bbuild -H.
