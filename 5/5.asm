; ex5: sub 2 values in the register and exit with status code 0
BITS 64;

section .text
  global _start
  _start:
    mov rax, 10
    mov rdi, 4
    sub rax, rdi

    mov rax, 60 ; write code exit
    mov rdi, 0 ; status code to exit (fd)
    syscall ; call