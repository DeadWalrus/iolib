%include "print_string.asm"
;; Print an unsigned integer to stdout ;;
print_uint:
    mov rax, rdi                ;argument passed in rdi
    dec rsp                     ;allocate stack space for null term
    mov byte[rsp], 0            ;put null term on stack 
    mov rdi, 10                 ;mov 10 into rdi to isolate valued in rax

    .loop:
        test rax, rax           ;if rax stores 0
        jz .break               ;break out of loop
        div rdi                 ;isolate last digit in rax
        dec rsp                 ;allocate stack space for digit
        add dl, 0x30            ;transform to ASCII code
        mov byte[rsp], dl       ;move character to stack
        mov rdx, 0              ;zero rdx, was *fixed floating point exception error
        jmp .loop               ;jump to loop

    .break:
        mov rdi, rsp            ;print_string takes address to string in rdi
        call print_string       ;print the string stored on stack
        inc rax                 ;inc rax
        add rsp, rax            ;deallocate space on stack using string length
        ret
