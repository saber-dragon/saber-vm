#!/bin/bash

set -e 

WD="/tmp"
mkdir -p $WD
cd $WD
VERSION_PROBTOBUF="3.6.0"
echo "Download protobuf-$VERSION_PROBTOBUF"
curl -L -O "https://github.com/google/protobuf/releases/download/v$VERSION_PROBTOBUF/protobuf-cpp-$VERSION_PROBTOBUF.tar.gz"
tar -zxvf protobuf-cpp-$VERSION_PROBTOBUF.tar.gz
cd protobuf-$VERSION_PROBTOBUF
echo "Compile & Install protobuf-$VERSION_PROBTOBUF"
./autogen.sh && ./configure && make && make install
cd $WD
echo "Clean protobuf-$VERSION_PROBTOBUF source codes"
rm -rf protobuf-$VERSION_PROBTOBUF protobuf-cpp-$VERSION_PROBTOBUF.tar.gz
ldconfig

echo "Cloning grpc"
git clone -b $(curl -L https://grpc.io/release) https://github.com/grpc/grpc
cd grpc
git submodule update --init
echo "Compile & Install"
make && make install 
echo "Clean grpc source codes"
cd $WD
rm -rf grpc


