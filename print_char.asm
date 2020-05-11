;char: db 0
print_char:
    dec rsp
    mov byte[rsp], bl
    mov rax, 1
    mov rsi, rsp
    mov rdx, 1
    mov rdi, 1
    push rcx
    syscall 
    pop rcx
    inc rsp
    ret
