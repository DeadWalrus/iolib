;char: db 0
print_char:
    mov rax, 1
    mov rdx, 1
    lea rsi, [rsp+8]
    mov rdi, 1
    push rcx
    syscall 
    pop rcx
    ret
