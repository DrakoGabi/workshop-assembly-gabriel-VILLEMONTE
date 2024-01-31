BITS 64

section .text
    global my_Strlen

my_Strlen:
    xor rcx, rcx

looping:
    cmp byte[rdi + rcx], 0
    je end_strlen
    inc rcx
    jmp looping

end_strlen:
    mov rax, rcx
    ret
