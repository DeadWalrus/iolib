;; Exits program with exit code passed in rdi ;;

exit:
mov rax, 60
syscall
