%include "string_length.asm"
;; Prints a string to stdout ;;
print_string:
    call string_length  ;get length of string
    push rax            ;preserve string length
    mov rsi, rdi        ;address of string stored in rdi
    mov rdx, rax        ;move length of string into rdx
    mov rax, 1          ;'write' syscall
    mov rdi, 1          ;stdout file descriptor
    push rcx            ;syscall changes rcx
    syscall             ;write
    pop rcx
    pop rax
    ret
