section .text
    global my_Getnbr

my_Getnbr:
    init_get:
        xor rax, rax
        xor r8, r8
        xor rcx, rcx
        jmp loop_get
    
    loop_get:
    mov r8b, [rdi +rax]
    mov rcx, r8b - r8b
    inc rax
    jne loop_get

    end_loop:
    ret

