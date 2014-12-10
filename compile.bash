#!/usr/bin/env bash

if [ -d build ]; then
cd build

export CC=gcc48
export CXX=g++48
export CPP=cpp48

#export LIBS="-lexecinfo -lkvm"
#export LDFLAGS="-lexecinfo -lkvm"
#export CPPFLAGS="-I/usr/local/include"
#export CFLAGS="-I/usr/local/include"
#export CXXFLAGS="-lexecinfo -lkvm"
gmake -j 4 package
fi
