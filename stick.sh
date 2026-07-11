
rm stuck/*

cp build/artifacts/tnslc.asm stuck/tnslc.asm
nasm -f elf64 -g -o stuck/tnslc.o stuck/tnslc.asm
gcc -g -o stuck/tnslc stuck/tnslc.o

