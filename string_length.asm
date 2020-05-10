string_length:
xor rax, rax                ;zero rax
.loop:
    cmp byte[rdi + rax], 0  ;compare char in string with null term
    jz .end                 ;if null, return
    inc rax                 ;if not, inc rax
    jnz .loop
.end:
    ret
