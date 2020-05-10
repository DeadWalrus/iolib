;; Print a signed integer in decimal format ;;

print_int:
    ;mov rax, rdi    ;signed number stored in rdi
    cmp rdi, 0
    jge .printpos
    

    .printpos:
        %include "print_uint1.asm"
