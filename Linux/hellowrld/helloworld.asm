section .text

global _start

_start:

xor rax,rax
mov al,0x1
mov rdi, 0x1
mov rsi, msg
mov rdx, len
syscall

mov rax,60
syscall

section .data

msg db 'Hello, world!',0xa
len equ $-msg