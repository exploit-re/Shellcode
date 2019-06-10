#!/bin/bash

echo '[+] Compiling .asm file in elf64 format'
nasm -f elf64 $1.asm -o $1.o
echo '[+] Creating elf64 executable'
ld $1.o -o $1
echo '[+] Elf executable created'