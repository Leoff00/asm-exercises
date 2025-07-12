; ex4: add 2 values in the register and exit with status code 0

BITS 64;


section .text
  global _start
  _start:
    mov rax, 10 ; add 10 to r1
    mov rdi, 20 ; add 20 to r2
    add rax, rdi ; sum 10 + 20
    
    mov rax, 60 ; write code exit
    mov rdi, 0 ; status code to exit (fd)
    syscall ; call

