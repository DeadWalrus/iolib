section .data
readin: db 0, 0
section .text
read_char:
    mov rax, 0
    mov rdi, 0
    mov rsi, readin
    mov rdx, 1
    syscall 
    mov byte al, [readin]
    ret
