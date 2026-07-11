#!/bin/bash

BUILD_DIR=./build
ARTIFACT_DIR=$BUILD_DIR/artifacts

mkdir -p $BUILD_DIR
mkdir -p $ARTIFACT_DIR
filename=$1
filename="${filename%.*}"

./stuck/tnslc $filename.tnsl 
mv out.asm $ARTIFACT_DIR/$filename.asm

if [ $? -ne 0 ]; then
	exit $?
fi

nasm -g -f elf64 -o $ARTIFACT_DIR/$filename.o $ARTIFACT_DIR/$filename.asm

if [ $? -ne 0 ]; then
	exit $?
fi

gcc -ggdb -o $BUILD_DIR/$filename $ARTIFACT_DIR/$filename.o

