Linux:

OS: Ubuntu 19.04

Tools required:

NASM  - sudo apt-get install nasm
Objdump - pre-installed
ld - pre-installed

- Syscall reference:
-- https://github.com/torvalds/linux/blob/master/arch/x86/entry/syscalls/syscall_64.tbl
-- In Ubuntu 19.04 check /usr/include/x86_64-linux-gnu/asm/unistd_64.h for system call numbers

- In x64, syscall instruction is used to initiate syscalls. If 32-bit syscall numbers are to be used then use int 0x80
- To move a decimal value use the number only, eg. mov rax, 60. To move it's hex notation use 0x format, eg. 0x3C
- Write system call takes length value as an argument and not pointer to the length value
- Arguments are passed via registers (right to left manner) - rdi, rsi, rdx. Syscall number goes in rax