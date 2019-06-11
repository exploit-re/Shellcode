; System call implemented: Read (00 x64)
; System call implemented: Write (01 x64)
; System call implemented: Exit (60 x64)
; Takes an input and prints it
section .text

global _start

_start:

xor rax, rax
mov rdi, 0x1
push rax
mov rsi, rsp
mov rdx, 5
syscall

mov rax, 0x1
syscall

mov rax, 60
syscall


