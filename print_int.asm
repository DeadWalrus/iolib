;; Print a signed integer in decimal format ;;
%include "print_char.asm"
print_int:
    ;mov rax, rdi       ;signed number stored in rdi
    cmp rdi, 0          ;see if number is negative
    jge .printpos       
    push rdi            ;print_char changes rdi
    mov rbx, '-'        ;negative character
    call print_char
    pop rdi
    neg rdi             ;negate(make positive) rdi
    xor rdx, rdx        ;clear rdx
    .printpos:
        %include "print_uint1.asm"
