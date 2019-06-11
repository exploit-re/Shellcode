; Write system call takes length value as an argument and not pointer to the length value
; this program adds 0x to 0x28 and prints the resulting value as string
; System call implemented: Write (01 x64)

section .text

global _start

_start:

mov rax,1
mov rdx, 1

xor rbx,rbx
mov rbx,0x28
add rbx,0x1
push rbx
mov rsi,rsp

mov rdi,1

syscall

mov rax,60
syscall

