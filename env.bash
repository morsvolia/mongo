#!/usr/bin/env bash

if [ -d build ]; then
  rm -rf build;
fi

mkdir build
cd build

export CC=gcc48
export CXX=g++48
export CPP=cpp48


export LDFLAGS="-lexecinfo -lkvm"
export CXXFLAGS="-lexecinfo -lkvm"

cmake -Wno-dev -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_EXE_LINKER_FLAGS='-lexecinfo -lkvm' \
        -DCMAKE_AR=/usr/local/bin/gcc-ar48 \
	-DCMAKE_RANLIB=/usr/local/bin/gcc-ranlib48 \
	-DTOKU_DEBUG_PARANOID=OFF \
	-DUSE_VALGRIND=OFF \
	-DUSE_BDB=OFF \
	-DUSE_SSL=OFF \
	-DUSE_SYSTEM_BOOST=ON \
	-DUSE_SYSTEM_PCRE=ON \
	-DUSE_SYSTEM_V8=ON \
	-DUSE_CTAGS=OFF \
	-DUSE_ETAGS=OFF \
	-DUSE_GTAGS=OFF \
	-DUSE_CSCOPE=OFF \
	-DBUILD_TESTING=OFF \
	-DTOKUMX_DISTNAME=2.0.0 ..

