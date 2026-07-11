#!/bin/bash

nasm -f elf64 -g -o stuck/tnslc.o stuck/tnslc.asm
gcc -g -o stuck/tnslc stuck/tnslc.o

