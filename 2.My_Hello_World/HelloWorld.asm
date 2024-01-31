BITS 64

section .data
    stdout equ 1
    hello db 'Hello, World!', 10
    len_hello equ $ - hello

section .text
    global _start

_start:
    mov rax ,4
    mov rdi ,1
    mov rsi ,hello
    mov rdx ,len_hello
    mov ebx ,0
    mov eax ,1
    syscall
    mov rax ,60
    syscall
    
